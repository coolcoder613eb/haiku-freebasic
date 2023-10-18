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
typedef int32 $8FB_TOKEN;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $9FB_ERRMSG;
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirkzgfx( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWIDX( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLOAD( struct $7ASTNODE*, int32, int32 );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCHIDORKW( uint8*, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $15FB_CMPSTMT_MASK;
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int32 );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
struct $7ASTNODE* RTLPAGESET( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLGFXPSET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* RTLGFXPOINT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLGFXLINE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
int32 RTLGFXCIRCLE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLGFXPAINT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLGFXDRAW( struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLGFXDRAWSTRING( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLGFXVIEW( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLGFXWINDOW( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLGFXPALETTE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLGFXPALETTEUSING( struct $7ASTNODE*, int32, int32 );
int32 RTLGFXPUT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLGFXGET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, struct $7ASTNODE* );
int32 RTLGFXSCREENSET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLGFXSCREENSETQB( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLGFXIMAGECREATE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static struct $7ASTNODE* HMAYBEUDT2PTR( struct $7ASTNODE* );
static struct $7ASTNODE* HNIDXARRAY2ARRAYACCESS( struct $7ASTNODE* );
static struct $7ASTNODE* HMAYBEARRAYACCESS2PTR( struct $7ASTNODE*, struct $7ASTNODE** );
static struct $7ASTNODE* HCHECKFBIMAGEEXPR( struct $7ASTNODE*, int32, struct $7ASTNODE** );
static struct $7ASTNODE* HFBIMAGEEXPR( int32, struct $7ASTNODE** );
static struct $7ASTNODE* HFBIMAGEEXPRINFRONTOFCOORD( int32 );
static int32 HGETMODE( int32*, struct $7ASTNODE**, struct $7ASTNODE**, struct $7ASTNODE** );
int32 CGFXPSET( int32 );
int32 CGFXLINE( void );
int32 CGFXCIRCLE( void );
int32 CGFXPAINT( void );
int32 CGFXDRAWSTRING( void );
int32 CGFXDRAW( void );
int32 CGFXVIEW( int32 );
int32 CGFXPALETTE( void );
int32 CGFXPUT( void );
int32 CGFXGET( void );
int32 CGFXSCREEN( int32 );
int32 CGFXPOINT( struct $7ASTNODE** );
int32 CGFXIMAGECREATE( struct $7ASTNODE** );
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

int32 CGFXPSET( int32 ISPRESET$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$119:;
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 4 );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 4 );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	fb$result$1 = 0;
	struct $7ASTNODE* vr$6 = HFBIMAGEEXPRINFRONTOFCOORD( 0 );
	TEXPR$1 = vr$6;
	int32 vr$7 = HMATCH( 282, 2048 );
	if( vr$7 == 0 ) goto label$122;
	{
		FLAGS$1 = 5;
	}
	goto label$121;
	label$122:;
	{
		FLAGS$1 = 4;
	}
	label$121:;
	int32 vr$8 = LEXGETTOKEN( 0 );
	if( vr$8 == 40 ) goto label$124;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$123;
	label$124:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$123:;
	struct $7ASTNODE* vr$9 = HMATCHEXPR( -1 );
	XEXPR$1 = vr$9;
	if( XEXPR$1 != (struct $7ASTNODE*)0u ) goto label$126;
	{
		goto label$120;
	}
	label$126:;
	label$125:;
	int32 vr$10 = LEXGETTOKEN( 0 );
	if( vr$10 == 44 ) goto label$128;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$127;
	label$128:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$127:;
	struct $7ASTNODE* vr$11 = HMATCHEXPR( -1 );
	YEXPR$1 = vr$11;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$130;
	{
		goto label$120;
	}
	label$130:;
	label$129:;
	int32 vr$12 = LEXGETTOKEN( 0 );
	if( vr$12 == 41 ) goto label$132;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$131;
	label$132:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$131:;
	int32 vr$13 = HMATCH( 44, 0 );
	if( vr$13 == 0 ) goto label$134;
	{
		struct $7ASTNODE* vr$14 = HMATCHEXPR( -1 );
		CEXPR$1 = vr$14;
		if( CEXPR$1 != (struct $7ASTNODE*)0u ) goto label$136;
		{
			goto label$120;
		}
		label$136:;
		label$135:;
	}
	goto label$133;
	label$134:;
	{
		struct $7ASTNODE* vr$15 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		CEXPR$1 = vr$15;
		FLAGS$1 = FLAGS$1 | -2147483648u;
	}
	label$133:;
	int32 vr$17 = RTLGFXPSET( TEXPR$1, XEXPR$1, YEXPR$1, CEXPR$1, FLAGS$1, ISPRESET$1 );
	fb$result$1 = vr$17;
	label$120:;
	return fb$result$1;
}

int32 CGFXLINE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$137:;
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	int32 LINETYPE$1;
	__builtin_memset( &LINETYPE$1, 0, 4 );
	struct $7ASTNODE* STYLEEXPR$1;
	__builtin_memset( &STYLEEXPR$1, 0, 4 );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 4 );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 4 );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 4 );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 4 );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	fb$result$1 = 0;
	int32 vr$10 = HMATCH( 45, 0 );
	if( vr$10 == 0 ) goto label$140;
	{
		FLAGS$1 = 5;
		struct $7ASTNODE* vr$11 = ASTNEWCONSTF( 0x0p+0, 15 );
		X1EXPR$1 = vr$11;
		struct $7ASTNODE* vr$12 = ASTNEWCONSTF( 0x0p+0, 15 );
		Y1EXPR$1 = vr$12;
	}
	goto label$139;
	label$140:;
	{
		struct $7ASTNODE* vr$13 = HFBIMAGEEXPRINFRONTOFCOORD( 0 );
		TEXPR$1 = vr$13;
		int32 vr$14 = HMATCH( 282, 2048 );
		if( vr$14 == 0 ) goto label$142;
		{
			FLAGS$1 = 5;
		}
		goto label$141;
		label$142:;
		{
			FLAGS$1 = 4;
		}
		label$141:;
		int32 vr$15 = HMATCH( 40, 0 );
		if( vr$15 == 0 ) goto label$144;
		{
			struct $7ASTNODE* vr$16 = HMATCHEXPR( -1 );
			X1EXPR$1 = vr$16;
			if( X1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$146;
			{
				goto label$138;
			}
			label$146:;
			label$145:;
			int32 vr$17 = LEXGETTOKEN( 0 );
			if( vr$17 == 44 ) goto label$148;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$147;
			label$148:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$147:;
			struct $7ASTNODE* vr$18 = HMATCHEXPR( -1 );
			Y1EXPR$1 = vr$18;
			if( Y1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$150;
			{
				goto label$138;
			}
			label$150:;
			label$149:;
			int32 vr$19 = LEXGETTOKEN( 0 );
			if( vr$19 == 41 ) goto label$152;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$151;
			label$152:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$151:;
		}
		goto label$143;
		label$144:;
		{
			FLAGS$1 = 5;
			struct $7ASTNODE* vr$20 = ASTNEWCONSTF( 0x0p+0, 15 );
			X1EXPR$1 = vr$20;
			struct $7ASTNODE* vr$21 = ASTNEWCONSTF( 0x0p+0, 15 );
			Y1EXPR$1 = vr$21;
		}
		label$143:;
		int32 vr$22 = HMATCH( 45, 0 );
		if( vr$22 != 0 ) goto label$154;
		{
			ERRREPORT( 15, 0, (uint8*)0u );
			goto label$138;
		}
		label$154:;
		label$153:;
	}
	label$139:;
	int32 vr$23 = HMATCH( 282, 2048 );
	if( vr$23 == 0 ) goto label$156;
	{
		if( FLAGS$1 != 5 ) goto label$158;
		{
			FLAGS$1 = 3;
		}
		goto label$157;
		label$158:;
		{
			FLAGS$1 = 1;
		}
		label$157:;
	}
	goto label$155;
	label$156:;
	{
		if( FLAGS$1 != 5 ) goto label$160;
		{
			FLAGS$1 = 2;
		}
		goto label$159;
		label$160:;
		{
			FLAGS$1 = 0;
		}
		label$159:;
	}
	label$155:;
	int32 vr$24 = LEXGETTOKEN( 0 );
	if( vr$24 == 40 ) goto label$162;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$161;
	label$162:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$161:;
	struct $7ASTNODE* vr$25 = HMATCHEXPR( -1 );
	X2EXPR$1 = vr$25;
	if( X2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$164;
	{
		goto label$138;
	}
	label$164:;
	label$163:;
	int32 vr$26 = LEXGETTOKEN( 0 );
	if( vr$26 == 44 ) goto label$166;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$165;
	label$166:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$165:;
	struct $7ASTNODE* vr$27 = HMATCHEXPR( -1 );
	Y2EXPR$1 = vr$27;
	if( Y2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$168;
	{
		goto label$138;
	}
	label$168:;
	label$167:;
	int32 vr$28 = LEXGETTOKEN( 0 );
	if( vr$28 == 41 ) goto label$170;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$169;
	label$170:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$169:;
	LINETYPE$1 = 0;
	STYLEEXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$29 = HMATCH( 44, 0 );
	if( vr$29 == 0 ) goto label$172;
	{
		struct $7ASTNODE* vr$30 = CEXPRESSION(  );
		CEXPR$1 = vr$30;
		if( CEXPR$1 != (struct $7ASTNODE*)0u ) goto label$174;
		{
			struct $7ASTNODE* vr$31 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
			CEXPR$1 = vr$31;
			FLAGS$1 = FLAGS$1 | -2147483648u;
		}
		label$174:;
		label$173:;
		int32 vr$33 = HMATCH( 44, 0 );
		if( vr$33 == 0 ) goto label$176;
		{
			{
				FBSTRING TMP$109$4;
				uint8* vr$34 = LEXGETTEXT(  );
				FBSTRING* vr$35 = fb_StrAllocTempDescZ( (uint8*)vr$34 );
				FBSTRING* vr$36 = fb_StrUcase2( (FBSTRING*)vr$35, 0 );
				fb_StrInit( (void*)&TMP$109$4, -1, (void*)vr$36, -1, 0 );
				int32 vr$39 = fb_StrCompare( (void*)&TMP$109$4, -1, (void*)"B", 2 );
				if( vr$39 != 0 ) goto label$178;
				label$179:;
				{
					LEXSKIPTOKEN( 2048 );
					LINETYPE$1 = 1;
				}
				goto label$177;
				label$178:;
				int32 vr$41 = fb_StrCompare( (void*)&TMP$109$4, -1, (void*)"BF", 3 );
				if( vr$41 != 0 ) goto label$180;
				label$181:;
				{
					LEXSKIPTOKEN( 2048 );
					LINETYPE$1 = 2;
				}
				label$180:;
				label$177:;
				fb_StrDelete( (FBSTRING*)&TMP$109$4 );
			}
			int32 vr$43 = HMATCH( 44, 0 );
			if( vr$43 == 0 ) goto label$183;
			{
				struct $7ASTNODE* vr$44 = HMATCHEXPR( -1 );
				STYLEEXPR$1 = vr$44;
				if( STYLEEXPR$1 != (struct $7ASTNODE*)0u ) goto label$185;
				{
					goto label$138;
				}
				label$185:;
				label$184:;
			}
			label$183:;
			label$182:;
		}
		label$176:;
		label$175:;
	}
	goto label$171;
	label$172:;
	{
		struct $7ASTNODE* vr$45 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		CEXPR$1 = vr$45;
		FLAGS$1 = FLAGS$1 | -2147483648u;
	}
	label$171:;
	int32 vr$47 = RTLGFXLINE( TEXPR$1, X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, CEXPR$1, LINETYPE$1, STYLEEXPR$1, FLAGS$1 );
	fb$result$1 = vr$47;
	label$138:;
	return fb$result$1;
}

int32 CGFXCIRCLE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$186:;
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	int32 FILLFLAG$1;
	__builtin_memset( &FILLFLAG$1, 0, 4 );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 4 );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 4 );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 4 );
	struct $7ASTNODE* RADEXPR$1;
	__builtin_memset( &RADEXPR$1, 0, 4 );
	struct $7ASTNODE* INIEXPR$1;
	__builtin_memset( &INIEXPR$1, 0, 4 );
	struct $7ASTNODE* ENDEXPR$1;
	__builtin_memset( &ENDEXPR$1, 0, 4 );
	struct $7ASTNODE* ASPEXPR$1;
	__builtin_memset( &ASPEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	fb$result$1 = 0;
	struct $7ASTNODE* vr$11 = HFBIMAGEEXPRINFRONTOFCOORD( 0 );
	TEXPR$1 = vr$11;
	int32 vr$12 = HMATCH( 282, 2048 );
	if( vr$12 == 0 ) goto label$189;
	{
		FLAGS$1 = 5;
	}
	goto label$188;
	label$189:;
	{
		FLAGS$1 = 4;
	}
	label$188:;
	int32 vr$13 = LEXGETTOKEN( 0 );
	if( vr$13 == 40 ) goto label$191;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$190;
	label$191:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$190:;
	struct $7ASTNODE* vr$14 = HMATCHEXPR( -1 );
	XEXPR$1 = vr$14;
	if( XEXPR$1 != (struct $7ASTNODE*)0u ) goto label$193;
	{
		goto label$187;
	}
	label$193:;
	label$192:;
	int32 vr$15 = LEXGETTOKEN( 0 );
	if( vr$15 == 44 ) goto label$195;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$194;
	label$195:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$194:;
	struct $7ASTNODE* vr$16 = HMATCHEXPR( -1 );
	YEXPR$1 = vr$16;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$197;
	{
		goto label$187;
	}
	label$197:;
	label$196:;
	int32 vr$17 = LEXGETTOKEN( 0 );
	if( vr$17 == 41 ) goto label$199;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$198;
	label$199:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$198:;
	int32 vr$18 = LEXGETTOKEN( 0 );
	if( vr$18 == 44 ) goto label$201;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$200;
	label$201:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$200:;
	struct $7ASTNODE* vr$19 = HMATCHEXPR( -1 );
	RADEXPR$1 = vr$19;
	if( RADEXPR$1 != (struct $7ASTNODE*)0u ) goto label$203;
	{
		goto label$187;
	}
	label$203:;
	label$202:;
	ASPEXPR$1 = (struct $7ASTNODE*)0u;
	INIEXPR$1 = (struct $7ASTNODE*)0u;
	ENDEXPR$1 = (struct $7ASTNODE*)0u;
	FILLFLAG$1 = 0;
	int32 vr$20 = HMATCH( 44, 0 );
	if( vr$20 == 0 ) goto label$205;
	{
		struct $7ASTNODE* vr$21 = CEXPRESSION(  );
		CEXPR$1 = vr$21;
		if( CEXPR$1 != (struct $7ASTNODE*)0u ) goto label$207;
		{
			struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
			CEXPR$1 = vr$22;
			FLAGS$1 = FLAGS$1 | -2147483648u;
		}
		label$207:;
		label$206:;
		int32 vr$24 = HMATCH( 44, 0 );
		if( vr$24 == 0 ) goto label$209;
		{
			struct $7ASTNODE* vr$25 = CEXPRESSION(  );
			INIEXPR$1 = vr$25;
			int32 vr$26 = HMATCH( 44, 0 );
			if( vr$26 == 0 ) goto label$211;
			{
				struct $7ASTNODE* vr$27 = CEXPRESSION(  );
				ENDEXPR$1 = vr$27;
				int32 vr$28 = HMATCH( 44, 0 );
				if( vr$28 == 0 ) goto label$213;
				{
					struct $7ASTNODE* vr$29 = CEXPRESSION(  );
					ASPEXPR$1 = vr$29;
					int32 vr$30 = HMATCH( 44, 0 );
					if( vr$30 == 0 ) goto label$215;
					{
						uint8* vr$31 = LEXGETTEXT(  );
						FBSTRING* vr$32 = fb_StrAllocTempDescZ( (uint8*)vr$31 );
						FBSTRING* vr$33 = fb_StrUcase2( (FBSTRING*)vr$32, 0 );
						int32 vr$34 = fb_StrCompare( (void*)vr$33, -1, (void*)"F", 2 );
						if( vr$34 == 0 ) goto label$217;
						{
							ERRREPORT( 9, 0, (uint8*)0u );
							goto label$187;
						}
						label$217:;
						label$216:;
						LEXSKIPTOKEN( 2048 );
						FILLFLAG$1 = -1;
					}
					label$215:;
					label$214:;
				}
				label$213:;
				label$212:;
			}
			label$211:;
			label$210:;
		}
		label$209:;
		label$208:;
	}
	goto label$204;
	label$205:;
	{
		struct $7ASTNODE* vr$35 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		CEXPR$1 = vr$35;
		FLAGS$1 = FLAGS$1 | -2147483648u;
	}
	label$204:;
	int32 vr$37 = RTLGFXCIRCLE( TEXPR$1, XEXPR$1, YEXPR$1, RADEXPR$1, CEXPR$1, ASPEXPR$1, INIEXPR$1, ENDEXPR$1, FILLFLAG$1, FLAGS$1 );
	fb$result$1 = vr$37;
	label$187:;
	return fb$result$1;
}

int32 CGFXPAINT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$218:;
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 4 );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 4 );
	struct $7ASTNODE* PEXPR$1;
	__builtin_memset( &PEXPR$1, 0, 4 );
	struct $7ASTNODE* BEXPR$1;
	__builtin_memset( &BEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	fb$result$1 = 0;
	struct $7ASTNODE* vr$7 = HFBIMAGEEXPRINFRONTOFCOORD( 0 );
	TEXPR$1 = vr$7;
	int32 vr$8 = HMATCH( 282, 2048 );
	if( vr$8 == 0 ) goto label$221;
	{
		FLAGS$1 = 5;
	}
	goto label$220;
	label$221:;
	{
		FLAGS$1 = 4;
	}
	label$220:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 40 ) goto label$223;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$222;
	label$223:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$222:;
	struct $7ASTNODE* vr$10 = HMATCHEXPR( -1 );
	XEXPR$1 = vr$10;
	if( XEXPR$1 != (struct $7ASTNODE*)0u ) goto label$225;
	{
		goto label$219;
	}
	label$225:;
	label$224:;
	int32 vr$11 = LEXGETTOKEN( 0 );
	if( vr$11 == 44 ) goto label$227;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$226;
	label$227:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$226:;
	struct $7ASTNODE* vr$12 = HMATCHEXPR( -1 );
	YEXPR$1 = vr$12;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$229;
	{
		goto label$219;
	}
	label$229:;
	label$228:;
	int32 vr$13 = LEXGETTOKEN( 0 );
	if( vr$13 == 41 ) goto label$231;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$230;
	label$231:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$230:;
	PEXPR$1 = (struct $7ASTNODE*)0u;
	BEXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$14 = HMATCH( 44, 0 );
	if( vr$14 == 0 ) goto label$233;
	{
		struct $7ASTNODE* vr$15 = CEXPRESSION(  );
		PEXPR$1 = vr$15;
		int32 vr$16 = HMATCH( 44, 0 );
		if( vr$16 == 0 ) goto label$235;
		{
			struct $7ASTNODE* vr$17 = HMATCHEXPR( -1 );
			BEXPR$1 = vr$17;
			if( BEXPR$1 != (struct $7ASTNODE*)0u ) goto label$237;
			{
				goto label$219;
			}
			label$237:;
			label$236:;
		}
		label$235:;
		label$234:;
	}
	label$233:;
	label$232:;
	if( PEXPR$1 != (struct $7ASTNODE*)0u ) goto label$239;
	{
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		PEXPR$1 = vr$18;
		FLAGS$1 = FLAGS$1 | -2147483648u;
	}
	label$239:;
	label$238:;
	if( BEXPR$1 != (struct $7ASTNODE*)0u ) goto label$241;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		BEXPR$1 = vr$20;
		FLAGS$1 = FLAGS$1 | 1073741824;
	}
	label$241:;
	label$240:;
	int32 vr$22 = RTLGFXPAINT( TEXPR$1, XEXPR$1, YEXPR$1, PEXPR$1, BEXPR$1, FLAGS$1 );
	fb$result$1 = vr$22;
	label$219:;
	return fb$result$1;
}

int32 CGFXDRAWSTRING( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$242:;
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 4 );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 4 );
	struct $7ASTNODE* SEXPR$1;
	__builtin_memset( &SEXPR$1, 0, 4 );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 4 );
	struct $7ASTNODE* FEXPR$1;
	__builtin_memset( &FEXPR$1, 0, 4 );
	struct $7ASTNODE* ALPHAEXPR$1;
	__builtin_memset( &ALPHAEXPR$1, 0, 4 );
	struct $7ASTNODE* FUNCEXPR$1;
	__builtin_memset( &FUNCEXPR$1, 0, 4 );
	struct $7ASTNODE* PARAMEXPR$1;
	__builtin_memset( &PARAMEXPR$1, 0, 4 );
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	int32 MODE$1;
	__builtin_memset( &MODE$1, 0, 4 );
	fb$result$1 = 0;
	struct $7ASTNODE* vr$12 = HFBIMAGEEXPRINFRONTOFCOORD( 0 );
	TEXPR$1 = vr$12;
	int32 vr$13 = HMATCH( 282, 2048 );
	if( vr$13 == 0 ) goto label$245;
	{
		FLAGS$1 = 5;
	}
	goto label$244;
	label$245:;
	{
		FLAGS$1 = 4;
	}
	label$244:;
	int32 vr$14 = LEXGETTOKEN( 0 );
	if( vr$14 == 40 ) goto label$247;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$246;
	label$247:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$246:;
	struct $7ASTNODE* vr$15 = HMATCHEXPR( -1 );
	XEXPR$1 = vr$15;
	if( XEXPR$1 != (struct $7ASTNODE*)0u ) goto label$249;
	{
		goto label$243;
	}
	label$249:;
	label$248:;
	int32 vr$16 = LEXGETTOKEN( 0 );
	if( vr$16 == 44 ) goto label$251;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$250;
	label$251:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$250:;
	struct $7ASTNODE* vr$17 = HMATCHEXPR( -1 );
	YEXPR$1 = vr$17;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$253;
	{
		goto label$243;
	}
	label$253:;
	label$252:;
	int32 vr$18 = LEXGETTOKEN( 0 );
	if( vr$18 == 41 ) goto label$255;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$254;
	label$255:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$254:;
	int32 vr$19 = LEXGETTOKEN( 0 );
	if( vr$19 == 44 ) goto label$257;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$256;
	label$257:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$256:;
	struct $7ASTNODE* vr$20 = HMATCHEXPR( -1 );
	SEXPR$1 = vr$20;
	if( SEXPR$1 != (struct $7ASTNODE*)0u ) goto label$259;
	{
		goto label$243;
	}
	label$259:;
	label$258:;
	CEXPR$1 = (struct $7ASTNODE*)0u;
	FEXPR$1 = (struct $7ASTNODE*)0u;
	ALPHAEXPR$1 = (struct $7ASTNODE*)0u;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	PARAMEXPR$1 = (struct $7ASTNODE*)0u;
	MODE$1 = 0;
	int32 vr$21 = HMATCH( 44, 0 );
	if( vr$21 == 0 ) goto label$261;
	{
		struct $7ASTNODE* vr$22 = CEXPRESSION(  );
		CEXPR$1 = vr$22;
		int32 vr$23 = HMATCH( 44, 0 );
		if( vr$23 == 0 ) goto label$263;
		{
			struct $7ASTNODE* vr$24 = HFBIMAGEEXPR( -1, (struct $7ASTNODE**)0u );
			FEXPR$1 = vr$24;
			int32 vr$25 = HMATCH( 44, 0 );
			if( vr$25 == 0 ) goto label$265;
			{
				int32 vr$30 = HGETMODE( &MODE$1, &ALPHAEXPR$1, &FUNCEXPR$1, &PARAMEXPR$1 );
				if( vr$30 != 0 ) goto label$267;
				{
					goto label$243;
				}
				label$267:;
				label$266:;
			}
			label$265:;
			label$264:;
		}
		label$263:;
		label$262:;
	}
	label$261:;
	label$260:;
	if( CEXPR$1 != (struct $7ASTNODE*)0u ) goto label$269;
	{
		struct $7ASTNODE* vr$31 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		CEXPR$1 = vr$31;
		FLAGS$1 = FLAGS$1 | -2147483648u;
	}
	label$269:;
	label$268:;
	int32 vr$33 = RTLGFXDRAWSTRING( TEXPR$1, XEXPR$1, YEXPR$1, SEXPR$1, CEXPR$1, FEXPR$1, FLAGS$1, MODE$1, ALPHAEXPR$1, FUNCEXPR$1, PARAMEXPR$1 );
	fb$result$1 = vr$33;
	label$243:;
	return fb$result$1;
}

int32 CGFXDRAW( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$270:;
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 4 );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 4 );
	fb$result$1 = 0;
	int32 vr$3 = HMATCH( 369, 2048 );
	if( vr$3 == 0 ) goto label$273;
	{
		int32 vr$4 = CGFXDRAWSTRING(  );
		fb$result$1 = vr$4;
		goto label$271;
	}
	label$273:;
	label$272:;
	struct $7ASTNODE* vr$5 = CEXPRESSIONWITHNIDXARRAY( -1 );
	EXPR1$1 = vr$5;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$275;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		goto label$271;
	}
	label$275:;
	label$274:;
	int32 vr$6 = HMATCH( 44, 0 );
	if( vr$6 == 0 ) goto label$277;
	{
		struct $7ASTNODE* vr$7 = HCHECKFBIMAGEEXPR( EXPR1$1, 0, (struct $7ASTNODE**)0u );
		EXPR1$1 = vr$7;
		struct $7ASTNODE* vr$8 = HMATCHEXPR( -1 );
		EXPR2$1 = vr$8;
		if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$279;
		{
			goto label$271;
		}
		label$279:;
		label$278:;
	}
	goto label$276;
	label$277:;
	{
		if( *(int32*)EXPR1$1 != 25 ) goto label$281;
		{
			ERRREPORT( 73, -1, (uint8*)0u );
			goto label$271;
		}
		label$281:;
		label$280:;
		EXPR2$1 = EXPR1$1;
		EXPR1$1 = (struct $7ASTNODE*)0u;
	}
	label$276:;
	int32 vr$10 = RTLGFXDRAW( EXPR1$1, EXPR2$1 );
	fb$result$1 = vr$10;
	label$271:;
	return fb$result$1;
}

int32 CGFXVIEW( int32 ISVIEW$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$282:;
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 4 );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 4 );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 4 );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 4 );
	struct $7ASTNODE* FILLEXPR$1;
	__builtin_memset( &FILLEXPR$1, 0, 4 );
	struct $7ASTNODE* BORDEXPR$1;
	__builtin_memset( &BORDEXPR$1, 0, 4 );
	fb$result$1 = 0;
	{
		int32 TMP$113$2;
		int32 vr$8 = LEXGETTOKEN( 0 );
		TMP$113$2 = vr$8;
		if( TMP$113$2 == 510 ) goto label$286;
		label$287:;
		if( TMP$113$2 != 511 ) goto label$285;
		label$286:;
		{
			LEXSKIPTOKEN( 2048 );
			FLAGS$1 = 1;
		}
		goto label$284;
		label$285:;
		{
			FLAGS$1 = 0;
		}
		label$288:;
		label$284:;
	}
	X1EXPR$1 = (struct $7ASTNODE*)0u;
	Y1EXPR$1 = (struct $7ASTNODE*)0u;
	X2EXPR$1 = (struct $7ASTNODE*)0u;
	Y2EXPR$1 = (struct $7ASTNODE*)0u;
	FILLEXPR$1 = (struct $7ASTNODE*)0u;
	BORDEXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$9 = HMATCH( 40, 0 );
	if( vr$9 == 0 ) goto label$290;
	{
		struct $7ASTNODE* vr$10 = HMATCHEXPR( -1 );
		X1EXPR$1 = vr$10;
		if( X1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$292;
		{
			goto label$283;
		}
		label$292:;
		label$291:;
		int32 vr$11 = LEXGETTOKEN( 0 );
		if( vr$11 == 44 ) goto label$294;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$293;
		label$294:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$293:;
		struct $7ASTNODE* vr$12 = HMATCHEXPR( -1 );
		Y1EXPR$1 = vr$12;
		if( Y1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$296;
		{
			goto label$283;
		}
		label$296:;
		label$295:;
		int32 vr$13 = LEXGETTOKEN( 0 );
		if( vr$13 == 41 ) goto label$298;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$297;
		label$298:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$297:;
		int32 vr$14 = HMATCH( 45, 0 );
		if( vr$14 != 0 ) goto label$300;
		{
			ERRREPORT( 15, 0, (uint8*)0u );
			goto label$283;
		}
		label$300:;
		label$299:;
		int32 vr$15 = LEXGETTOKEN( 0 );
		if( vr$15 == 40 ) goto label$302;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$301;
		label$302:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$301:;
		struct $7ASTNODE* vr$16 = HMATCHEXPR( -1 );
		X2EXPR$1 = vr$16;
		if( X2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$304;
		{
			goto label$283;
		}
		label$304:;
		label$303:;
		int32 vr$17 = LEXGETTOKEN( 0 );
		if( vr$17 == 44 ) goto label$306;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$305;
		label$306:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$305:;
		struct $7ASTNODE* vr$18 = HMATCHEXPR( -1 );
		Y2EXPR$1 = vr$18;
		if( Y2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$308;
		{
			goto label$283;
		}
		label$308:;
		label$307:;
		int32 vr$19 = LEXGETTOKEN( 0 );
		if( vr$19 == 41 ) goto label$310;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$309;
		label$310:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$309:;
		if( ISVIEW$1 == 0 ) goto label$312;
		{
			FLAGS$1 = FLAGS$1 | -1073741824;
			int32 vr$21 = HMATCH( 44, 0 );
			if( vr$21 == 0 ) goto label$314;
			{
				struct $7ASTNODE* vr$22 = CEXPRESSION(  );
				FILLEXPR$1 = vr$22;
				if( FILLEXPR$1 == (struct $7ASTNODE*)0u ) goto label$316;
				{
					FLAGS$1 = FLAGS$1 & 2147483647;
				}
				label$316:;
				label$315:;
				int32 vr$24 = HMATCH( 44, 0 );
				if( vr$24 == 0 ) goto label$318;
				{
					struct $7ASTNODE* vr$25 = HMATCHEXPR( -1 );
					BORDEXPR$1 = vr$25;
					if( BORDEXPR$1 != (struct $7ASTNODE*)0u ) goto label$320;
					{
						goto label$283;
					}
					label$320:;
					label$319:;
					FLAGS$1 = FLAGS$1 & -1073741825;
				}
				label$318:;
				label$317:;
			}
			label$314:;
			label$313:;
		}
		label$312:;
		label$311:;
	}
	label$290:;
	label$289:;
	if( ISVIEW$1 == 0 ) goto label$322;
	{
		int32 vr$27 = RTLGFXVIEW( X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, FILLEXPR$1, BORDEXPR$1, FLAGS$1 );
		fb$result$1 = vr$27;
	}
	goto label$321;
	label$322:;
	{
		int32 vr$28 = RTLGFXWINDOW( X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, FLAGS$1 );
		fb$result$1 = vr$28;
	}
	label$321:;
	label$283:;
	return fb$result$1;
}

int32 CGFXPALETTE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$323:;
	struct $7ASTNODE* ARRAYEXPR$1;
	__builtin_memset( &ARRAYEXPR$1, 0, 4 );
	struct $7ASTNODE* ATTEXPR$1;
	__builtin_memset( &ATTEXPR$1, 0, 4 );
	struct $7ASTNODE* REXPR$1;
	__builtin_memset( &REXPR$1, 0, 4 );
	struct $7ASTNODE* GEXPR$1;
	__builtin_memset( &GEXPR$1, 0, 4 );
	struct $7ASTNODE* BEXPR$1;
	__builtin_memset( &BEXPR$1, 0, 4 );
	int32 ISGET$1;
	__builtin_memset( &ISGET$1, 0, 4 );
	int32 DPTRSIZE$1;
	__builtin_memset( &DPTRSIZE$1, 0, 4 );
	fb$result$1 = 0;
	int32 vr$8 = HMATCHIDORKW( (uint8*)"GET", 2048 );
	ISGET$1 = vr$8;
	int32 vr$9 = HMATCH( 287, 2048 );
	if( vr$9 == 0 ) goto label$326;
	{
		int32 TMP$115$2;
		struct $7ASTNODE* vr$11 = HFBIMAGEEXPR( ~ISGET$1, (struct $7ASTNODE**)0u );
		ARRAYEXPR$1 = vr$11;
		if( ARRAYEXPR$1 != (struct $7ASTNODE*)0u ) goto label$328;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			goto label$324;
		}
		label$328:;
		label$327:;
		if( ((((((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 31) | (((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 480) + -32)) | ((((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 261632) >> (1 & 31)) & 261632)) | ((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 32505856)) & 480) == 0 ) goto label$329;
		TMP$115$2 = 24;
		goto label$367;
		label$329:;
		TMP$115$2 = (((((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 31) | (((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 480) + -32)) | ((((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 261632) >> (1 & 31)) & 261632)) | ((*(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511) & 32505856)) & 31;
		label$367:;
		DPTRSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$115$2 * 28)) + 4);
		if( (-(DPTRSIZE$1 != *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 312)) & -(DPTRSIZE$1 != *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368))) == 0 ) goto label$331;
		{
			DPTRSIZE$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 228);
		}
		label$331:;
		label$330:;
		int32 vr$55 = RTLGFXPALETTEUSING( ARRAYEXPR$1, ISGET$1, -(DPTRSIZE$1 == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368)) );
		fb$result$1 = vr$55;
	}
	goto label$325;
	label$326:;
	{
		ATTEXPR$1 = (struct $7ASTNODE*)0u;
		REXPR$1 = (struct $7ASTNODE*)0u;
		GEXPR$1 = (struct $7ASTNODE*)0u;
		BEXPR$1 = (struct $7ASTNODE*)0u;
		struct $7ASTNODE* vr$56 = CEXPRESSION(  );
		ATTEXPR$1 = vr$56;
		if( ATTEXPR$1 == (struct $7ASTNODE*)0u ) goto label$333;
		{
			int32 vr$57 = LEXGETTOKEN( 0 );
			if( vr$57 == 44 ) goto label$335;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$334;
			label$335:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$334:;
			if( ISGET$1 == 0 ) goto label$337;
			{
				struct $7ASTNODE* vr$58 = CVARORDEREF( 0 );
				REXPR$1 = vr$58;
				if( REXPR$1 != (struct $7ASTNODE*)0u ) goto label$339;
				{
					ERRREPORT( 14, 0, (uint8*)0u );
					goto label$324;
				}
				label$339:;
				label$338:;
			}
			goto label$336;
			label$337:;
			{
				struct $7ASTNODE* vr$59 = HMATCHEXPR( -1 );
				REXPR$1 = vr$59;
				if( REXPR$1 != (struct $7ASTNODE*)0u ) goto label$341;
				{
					goto label$324;
				}
				label$341:;
				label$340:;
			}
			label$336:;
			int32 vr$60 = HMATCH( 44, 0 );
			if( vr$60 == 0 ) goto label$343;
			{
				if( ISGET$1 == 0 ) goto label$345;
				{
					struct $7ASTNODE* vr$61 = CVARORDEREF( 0 );
					GEXPR$1 = vr$61;
					if( GEXPR$1 != (struct $7ASTNODE*)0u ) goto label$347;
					{
						ERRREPORT( 14, 0, (uint8*)0u );
						goto label$324;
					}
					label$347:;
					label$346:;
				}
				goto label$344;
				label$345:;
				{
					struct $7ASTNODE* vr$62 = HMATCHEXPR( -1 );
					GEXPR$1 = vr$62;
					if( GEXPR$1 != (struct $7ASTNODE*)0u ) goto label$349;
					{
						goto label$324;
					}
					label$349:;
					label$348:;
				}
				label$344:;
				int32 vr$63 = LEXGETTOKEN( 0 );
				if( vr$63 == 44 ) goto label$351;
				{
					ERRREPORT( 16, 0, (uint8*)0u );
				}
				goto label$350;
				label$351:;
				{
					LEXSKIPTOKEN( 0 );
				}
				label$350:;
				if( ISGET$1 == 0 ) goto label$353;
				{
					struct $7ASTNODE* vr$64 = CVARORDEREF( 0 );
					BEXPR$1 = vr$64;
					if( BEXPR$1 != (struct $7ASTNODE*)0u ) goto label$355;
					{
						ERRREPORT( 14, 0, (uint8*)0u );
						goto label$324;
					}
					label$355:;
					label$354:;
				}
				goto label$352;
				label$353:;
				{
					struct $7ASTNODE* vr$65 = HMATCHEXPR( -1 );
					BEXPR$1 = vr$65;
					if( BEXPR$1 != (struct $7ASTNODE*)0u ) goto label$357;
					{
						goto label$324;
					}
					label$357:;
					label$356:;
				}
				label$352:;
			}
			label$343:;
			label$342:;
		}
		goto label$332;
		label$333:;
		{
			if( ISGET$1 == 0 ) goto label$359;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				goto label$324;
			}
			label$359:;
			label$358:;
		}
		label$332:;
		int32 HAS_CONST$2;
		HAS_CONST$2 = 0;
		if( ISGET$1 == 0 ) goto label$361;
		{
			int32 TMP$116$3;
			int32 TMP$117$3;
			int32 TMP$118$3;
			if( REXPR$1 == (struct $7ASTNODE*)0u ) goto label$362;
			TMP$116$3 = -((*(int32*)((uint8*)REXPR$1 + 4) & 512) != 0);
			goto label$368;
			label$362:;
			TMP$116$3 = 0;
			label$368:;
			HAS_CONST$2 = HAS_CONST$2 | TMP$116$3;
			if( GEXPR$1 == (struct $7ASTNODE*)0u ) goto label$363;
			TMP$117$3 = -((*(int32*)((uint8*)GEXPR$1 + 4) & 512) != 0);
			goto label$369;
			label$363:;
			TMP$117$3 = 0;
			label$369:;
			HAS_CONST$2 = HAS_CONST$2 | TMP$117$3;
			if( BEXPR$1 == (struct $7ASTNODE*)0u ) goto label$364;
			TMP$118$3 = -((*(int32*)((uint8*)BEXPR$1 + 4) & 512) != 0);
			goto label$370;
			label$364:;
			TMP$118$3 = 0;
			label$370:;
			HAS_CONST$2 = HAS_CONST$2 | TMP$118$3;
		}
		label$361:;
		label$360:;
		if( HAS_CONST$2 == 0 ) goto label$366;
		{
			ERRREPORT( 119, -1, (uint8*)0u );
		}
		label$366:;
		label$365:;
		int32 vr$78 = RTLGFXPALETTE( ATTEXPR$1, REXPR$1, GEXPR$1, BEXPR$1, ISGET$1 );
		fb$result$1 = vr$78;
	}
	label$325:;
	label$324:;
	return fb$result$1;
}

int32 CGFXPUT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$371:;
	int32 COORDTYPE$1;
	__builtin_memset( &COORDTYPE$1, 0, 4 );
	int32 MODE$1;
	__builtin_memset( &MODE$1, 0, 4 );
	int32 EXPECTMODE$1;
	__builtin_memset( &EXPECTMODE$1, 0, 4 );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 4 );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 4 );
	struct $7ASTNODE* ARRAYEXPR$1;
	__builtin_memset( &ARRAYEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	struct $7ASTNODE* ALPHAEXPR$1;
	__builtin_memset( &ALPHAEXPR$1, 0, 4 );
	struct $7ASTNODE* FUNCEXPR$1;
	__builtin_memset( &FUNCEXPR$1, 0, 4 );
	struct $7ASTNODE* PARAMEXPR$1;
	__builtin_memset( &PARAMEXPR$1, 0, 4 );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 4 );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 4 );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 4 );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 4 );
	struct $8FBSYMBOL* ARG1$1;
	__builtin_memset( &ARG1$1, 0, 4 );
	struct $8FBSYMBOL* ARG2$1;
	__builtin_memset( &ARG2$1, 0, 4 );
	fb$result$1 = 0;
	ALPHAEXPR$1 = (struct $7ASTNODE*)0u;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	PARAMEXPR$1 = (struct $7ASTNODE*)0u;
	X1EXPR$1 = (struct $7ASTNODE*)0u;
	struct $7ASTNODE* vr$17 = HFBIMAGEEXPRINFRONTOFCOORD( 0 );
	TEXPR$1 = vr$17;
	int32 vr$18 = HMATCH( 282, 2048 );
	if( vr$18 == 0 ) goto label$374;
	{
		COORDTYPE$1 = 2;
	}
	goto label$373;
	label$374:;
	{
		COORDTYPE$1 = 0;
	}
	label$373:;
	int32 vr$19 = LEXGETTOKEN( 0 );
	if( vr$19 == 40 ) goto label$376;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$375;
	label$376:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$375:;
	struct $7ASTNODE* vr$20 = HMATCHEXPR( -1 );
	XEXPR$1 = vr$20;
	if( XEXPR$1 != (struct $7ASTNODE*)0u ) goto label$378;
	{
		goto label$372;
	}
	label$378:;
	label$377:;
	int32 vr$21 = LEXGETTOKEN( 0 );
	if( vr$21 == 44 ) goto label$380;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$379;
	label$380:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$379:;
	struct $7ASTNODE* vr$22 = HMATCHEXPR( -1 );
	YEXPR$1 = vr$22;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$382;
	{
		goto label$372;
	}
	label$382:;
	label$381:;
	int32 vr$23 = LEXGETTOKEN( 0 );
	if( vr$23 == 41 ) goto label$384;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$383;
	label$384:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$383:;
	int32 vr$24 = LEXGETTOKEN( 0 );
	if( vr$24 == 44 ) goto label$386;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$385;
	label$386:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$385:;
	struct $7ASTNODE* vr$25 = HFBIMAGEEXPR( -1, (struct $7ASTNODE**)0u );
	ARRAYEXPR$1 = vr$25;
	if( ARRAYEXPR$1 != (struct $7ASTNODE*)0u ) goto label$388;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		goto label$372;
	}
	label$388:;
	label$387:;
	MODE$1 = 5;
	int32 vr$26 = HMATCH( 44, 0 );
	if( vr$26 == 0 ) goto label$390;
	{
		EXPECTMODE$1 = -1;
		int32 vr$27 = HMATCH( 40, 0 );
		if( vr$27 == 0 ) goto label$392;
		{
			struct $7ASTNODE* vr$28 = HMATCHEXPR( -1 );
			X1EXPR$1 = vr$28;
			if( X1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$394;
			{
				goto label$372;
			}
			label$394:;
			label$393:;
			int32 vr$29 = LEXGETTOKEN( 0 );
			if( vr$29 == 44 ) goto label$396;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$395;
			label$396:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$395:;
			struct $7ASTNODE* vr$30 = HMATCHEXPR( -1 );
			Y1EXPR$1 = vr$30;
			if( Y1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$398;
			{
				goto label$372;
			}
			label$398:;
			label$397:;
			int32 vr$31 = LEXGETTOKEN( 0 );
			if( vr$31 == 41 ) goto label$400;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$399;
			label$400:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$399:;
			int32 vr$32 = HMATCH( 45, 0 );
			if( vr$32 != 0 ) goto label$402;
			{
				ERRREPORT( 15, 0, (uint8*)0u );
				goto label$372;
			}
			label$402:;
			label$401:;
			int32 vr$33 = HMATCH( 282, 2048 );
			if( vr$33 == 0 ) goto label$404;
			{
				if( COORDTYPE$1 != 2 ) goto label$406;
				{
					COORDTYPE$1 = 3;
				}
				goto label$405;
				label$406:;
				{
					COORDTYPE$1 = 1;
				}
				label$405:;
			}
			label$404:;
			label$403:;
			int32 vr$34 = LEXGETTOKEN( 0 );
			if( vr$34 == 40 ) goto label$408;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$407;
			label$408:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$407:;
			struct $7ASTNODE* vr$35 = HMATCHEXPR( -1 );
			X2EXPR$1 = vr$35;
			if( X2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$410;
			{
				goto label$372;
			}
			label$410:;
			label$409:;
			int32 vr$36 = LEXGETTOKEN( 0 );
			if( vr$36 == 44 ) goto label$412;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$411;
			label$412:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$411:;
			struct $7ASTNODE* vr$37 = HMATCHEXPR( -1 );
			Y2EXPR$1 = vr$37;
			if( Y2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$414;
			{
				goto label$372;
			}
			label$414:;
			label$413:;
			int32 vr$38 = LEXGETTOKEN( 0 );
			if( vr$38 == 41 ) goto label$416;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$415;
			label$416:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$415:;
			int32 vr$39 = HMATCH( 44, 0 );
			if( vr$39 != 0 ) goto label$418;
			{
				EXPECTMODE$1 = 0;
			}
			label$418:;
			label$417:;
		}
		label$392:;
		label$391:;
		if( EXPECTMODE$1 == 0 ) goto label$420;
		{
			int32 vr$44 = HGETMODE( &MODE$1, &ALPHAEXPR$1, &FUNCEXPR$1, &PARAMEXPR$1 );
			if( vr$44 != 0 ) goto label$422;
			{
				goto label$372;
			}
			label$422:;
			label$421:;
		}
		label$420:;
		label$419:;
	}
	label$390:;
	label$389:;
	int32 vr$45 = RTLGFXPUT( TEXPR$1, XEXPR$1, YEXPR$1, ARRAYEXPR$1, X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, MODE$1, ALPHAEXPR$1, FUNCEXPR$1, PARAMEXPR$1, COORDTYPE$1 );
	fb$result$1 = vr$45;
	label$372:;
	return fb$result$1;
}

int32 CGFXGET( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$423:;
	int32 COORDTYPE$1;
	__builtin_memset( &COORDTYPE$1, 0, 4 );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 4 );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 4 );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 4 );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 4 );
	struct $7ASTNODE* ARRAYEXPR$1;
	__builtin_memset( &ARRAYEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	struct $7ASTNODE* DESCEXPR$1;
	__builtin_memset( &DESCEXPR$1, 0, 4 );
	fb$result$1 = 0;
	struct $7ASTNODE* vr$9 = HFBIMAGEEXPRINFRONTOFCOORD( -1 );
	TEXPR$1 = vr$9;
	int32 vr$10 = HMATCH( 282, 2048 );
	if( vr$10 == 0 ) goto label$426;
	{
		COORDTYPE$1 = 5;
	}
	goto label$425;
	label$426:;
	{
		COORDTYPE$1 = 4;
	}
	label$425:;
	int32 vr$11 = LEXGETTOKEN( 0 );
	if( vr$11 == 40 ) goto label$428;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$427;
	label$428:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$427:;
	struct $7ASTNODE* vr$12 = HMATCHEXPR( -1 );
	X1EXPR$1 = vr$12;
	if( X1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$430;
	{
		goto label$424;
	}
	label$430:;
	label$429:;
	int32 vr$13 = LEXGETTOKEN( 0 );
	if( vr$13 == 44 ) goto label$432;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$431;
	label$432:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$431:;
	struct $7ASTNODE* vr$14 = HMATCHEXPR( -1 );
	Y1EXPR$1 = vr$14;
	if( Y1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$434;
	{
		goto label$424;
	}
	label$434:;
	label$433:;
	int32 vr$15 = LEXGETTOKEN( 0 );
	if( vr$15 == 41 ) goto label$436;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$435;
	label$436:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$435:;
	int32 vr$16 = HMATCH( 45, 0 );
	if( vr$16 != 0 ) goto label$438;
	{
		ERRREPORT( 15, 0, (uint8*)0u );
		goto label$424;
	}
	label$438:;
	label$437:;
	int32 vr$17 = HMATCH( 282, 2048 );
	if( vr$17 == 0 ) goto label$440;
	{
		if( COORDTYPE$1 != 5 ) goto label$442;
		{
			COORDTYPE$1 = 3;
		}
		goto label$441;
		label$442:;
		{
			COORDTYPE$1 = 1;
		}
		label$441:;
	}
	goto label$439;
	label$440:;
	{
		if( COORDTYPE$1 != 5 ) goto label$444;
		{
			COORDTYPE$1 = 2;
		}
		goto label$443;
		label$444:;
		{
			COORDTYPE$1 = 0;
		}
		label$443:;
	}
	label$439:;
	int32 vr$18 = LEXGETTOKEN( 0 );
	if( vr$18 == 40 ) goto label$446;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$445;
	label$446:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$445:;
	struct $7ASTNODE* vr$19 = HMATCHEXPR( -1 );
	X2EXPR$1 = vr$19;
	if( X2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$448;
	{
		goto label$424;
	}
	label$448:;
	label$447:;
	int32 vr$20 = LEXGETTOKEN( 0 );
	if( vr$20 == 44 ) goto label$450;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$449;
	label$450:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$449:;
	struct $7ASTNODE* vr$21 = HMATCHEXPR( -1 );
	Y2EXPR$1 = vr$21;
	if( Y2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$452;
	{
		goto label$424;
	}
	label$452:;
	label$451:;
	int32 vr$22 = LEXGETTOKEN( 0 );
	if( vr$22 == 41 ) goto label$454;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$453;
	label$454:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$453:;
	int32 vr$23 = LEXGETTOKEN( 0 );
	if( vr$23 == 44 ) goto label$456;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$455;
	label$456:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$455:;
	struct $7ASTNODE* vr$25 = HFBIMAGEEXPR( 0, &DESCEXPR$1 );
	ARRAYEXPR$1 = vr$25;
	if( ARRAYEXPR$1 != (struct $7ASTNODE*)0u ) goto label$458;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		goto label$424;
	}
	label$458:;
	label$457:;
	int32 vr$26 = RTLGFXGET( TEXPR$1, X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, ARRAYEXPR$1, COORDTYPE$1, DESCEXPR$1 );
	fb$result$1 = vr$26;
	label$424:;
	return fb$result$1;
}

int32 CGFXSCREEN( int32 ISQB$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$459:;
	fb$result$1 = 0;
	if( ISQB$1 != 0 ) goto label$462;
	{
		struct $7ASTNODE* MEXPR$2;
		struct $7ASTNODE* vr$1 = CEXPRESSION(  );
		MEXPR$2 = vr$1;
		struct $7ASTNODE* DEXPR$2;
		DEXPR$2 = (struct $7ASTNODE*)0u;
		int32 vr$2 = HMATCH( 44, 0 );
		if( vr$2 == 0 ) goto label$464;
		{
			struct $7ASTNODE* vr$3 = CEXPRESSION(  );
			DEXPR$2 = vr$3;
		}
		label$464:;
		label$463:;
		struct $7ASTNODE* PEXPR$2;
		PEXPR$2 = (struct $7ASTNODE*)0u;
		int32 vr$4 = HMATCH( 44, 0 );
		if( vr$4 == 0 ) goto label$466;
		{
			struct $7ASTNODE* vr$5 = CEXPRESSION(  );
			PEXPR$2 = vr$5;
		}
		label$466:;
		label$465:;
		if( MEXPR$2 != (struct $7ASTNODE*)0u ) goto label$468;
		{
			struct $7ASTNODE* vr$6 = RTLPAGESET( DEXPR$2, PEXPR$2, 0 );
			fb$result$1 = -(vr$6 != (struct $7ASTNODE*)0u);
			goto label$460;
		}
		label$468:;
		label$467:;
		struct $7ASTNODE* FEXPR$2;
		FEXPR$2 = (struct $7ASTNODE*)0u;
		int32 vr$8 = HMATCH( 44, 0 );
		if( vr$8 == 0 ) goto label$470;
		{
			struct $7ASTNODE* vr$9 = CEXPRESSION(  );
			FEXPR$2 = vr$9;
		}
		label$470:;
		label$469:;
		struct $7ASTNODE* REXPR$2;
		REXPR$2 = (struct $7ASTNODE*)0u;
		int32 vr$10 = HMATCH( 44, 0 );
		if( vr$10 == 0 ) goto label$472;
		{
			struct $7ASTNODE* vr$11 = CEXPRESSION(  );
			REXPR$2 = vr$11;
		}
		label$472:;
		label$471:;
		int32 vr$12 = RTLGFXSCREENSET( MEXPR$2, DEXPR$2, PEXPR$2, FEXPR$2, REXPR$2 );
		fb$result$1 = vr$12;
	}
	goto label$461;
	label$462:;
	{
		struct $7ASTNODE* MODE$2;
		struct $7ASTNODE* vr$13 = CEXPRESSION(  );
		MODE$2 = vr$13;
		int32 vr$14 = HMATCH( 44, 0 );
		if( vr$14 == 0 ) goto label$474;
		{
			struct $7ASTNODE* CSWITCH$3;
			struct $7ASTNODE* vr$15 = CEXPRESSION(  );
			CSWITCH$3 = vr$15;
			if( CSWITCH$3 == (struct $7ASTNODE*)0u ) goto label$476;
			{
				ASTDELTREE( CSWITCH$3 );
			}
			label$476:;
			label$475:;
		}
		label$474:;
		label$473:;
		struct $7ASTNODE* ACTIVE$2;
		ACTIVE$2 = (struct $7ASTNODE*)0u;
		int32 vr$16 = HMATCH( 44, 0 );
		if( vr$16 == 0 ) goto label$478;
		{
			struct $7ASTNODE* vr$17 = CEXPRESSION(  );
			ACTIVE$2 = vr$17;
		}
		label$478:;
		label$477:;
		struct $7ASTNODE* VISIBLE$2;
		VISIBLE$2 = (struct $7ASTNODE*)0u;
		int32 vr$18 = HMATCH( 44, 0 );
		if( vr$18 == 0 ) goto label$480;
		{
			struct $7ASTNODE* vr$19 = CEXPRESSION(  );
			VISIBLE$2 = vr$19;
		}
		label$480:;
		label$479:;
		if( MODE$2 != (struct $7ASTNODE*)0u ) goto label$482;
		{
			struct $7ASTNODE* vr$20 = RTLPAGESET( ACTIVE$2, VISIBLE$2, 0 );
			fb$result$1 = -(vr$20 != (struct $7ASTNODE*)0u);
		}
		goto label$481;
		label$482:;
		{
			int32 vr$22 = RTLGFXSCREENSETQB( MODE$2, ACTIVE$2, VISIBLE$2 );
			fb$result$1 = vr$22;
		}
		label$481:;
	}
	label$461:;
	label$460:;
	return fb$result$1;
}

int32 CGFXPOINT( struct $7ASTNODE** FUNCEXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$483:;
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 4 );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 4 );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 4 );
	fb$result$1 = 0;
	int32 vr$4 = LEXGETTOKEN( 0 );
	if( vr$4 == 40 ) goto label$486;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$485;
	label$486:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$485:;
	struct $7ASTNODE* vr$5 = HMATCHEXPR( -1 );
	XEXPR$1 = vr$5;
	if( XEXPR$1 != (struct $7ASTNODE*)0u ) goto label$488;
	{
		goto label$484;
	}
	label$488:;
	label$487:;
	YEXPR$1 = (struct $7ASTNODE*)0u;
	TEXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$6 = HMATCH( 44, 0 );
	if( vr$6 == 0 ) goto label$490;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( -1 );
		YEXPR$1 = vr$7;
		if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$492;
		{
			goto label$484;
		}
		label$492:;
		label$491:;
		int32 vr$8 = HMATCH( 44, 0 );
		if( vr$8 == 0 ) goto label$494;
		{
			struct $7ASTNODE* vr$9 = HFBIMAGEEXPR( -1, (struct $7ASTNODE**)0u );
			TEXPR$1 = vr$9;
			if( TEXPR$1 != (struct $7ASTNODE*)0u ) goto label$496;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				goto label$484;
			}
			label$496:;
			label$495:;
		}
		label$494:;
		label$493:;
	}
	label$490:;
	label$489:;
	int32 vr$10 = LEXGETTOKEN( 0 );
	if( vr$10 == 41 ) goto label$498;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$497;
	label$498:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$497:;
	struct $7ASTNODE* vr$11 = RTLGFXPOINT( TEXPR$1, XEXPR$1, YEXPR$1 );
	*FUNCEXPR$1 = vr$11;
	fb$result$1 = -(*FUNCEXPR$1 != (struct $7ASTNODE*)0u);
	label$484:;
	return fb$result$1;
}

int32 CGFXIMAGECREATE( struct $7ASTNODE** FUNCEXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$499:;
	struct $7ASTNODE* WEXPR$1;
	__builtin_memset( &WEXPR$1, 0, 4 );
	struct $7ASTNODE* HEXPR$1;
	__builtin_memset( &HEXPR$1, 0, 4 );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 4 );
	struct $7ASTNODE* DEXPR$1;
	__builtin_memset( &DEXPR$1, 0, 4 );
	int32 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 4 );
	fb$result$1 = 0;
	int32 vr$6 = LEXGETTOKEN( 0 );
	if( vr$6 == 40 ) goto label$502;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$501;
	label$502:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$501:;
	struct $7ASTNODE* vr$7 = HMATCHEXPR( -1 );
	WEXPR$1 = vr$7;
	if( WEXPR$1 != (struct $7ASTNODE*)0u ) goto label$504;
	{
		goto label$500;
	}
	label$504:;
	label$503:;
	int32 vr$8 = LEXGETTOKEN( 0 );
	if( vr$8 == 44 ) goto label$506;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$505;
	label$506:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$505:;
	struct $7ASTNODE* vr$9 = HMATCHEXPR( -1 );
	HEXPR$1 = vr$9;
	if( HEXPR$1 != (struct $7ASTNODE*)0u ) goto label$508;
	{
		goto label$500;
	}
	label$508:;
	label$507:;
	CEXPR$1 = (struct $7ASTNODE*)0u;
	DEXPR$1 = (struct $7ASTNODE*)0u;
	FLAGS$1 = -2147483648u;
	int32 vr$10 = HMATCH( 44, 0 );
	if( vr$10 == 0 ) goto label$510;
	{
		struct $7ASTNODE* vr$11 = CEXPRESSION(  );
		CEXPR$1 = vr$11;
		if( CEXPR$1 == (struct $7ASTNODE*)0u ) goto label$512;
		{
			FLAGS$1 = 0;
		}
		label$512:;
		label$511:;
		int32 vr$12 = HMATCH( 44, 0 );
		if( vr$12 == 0 ) goto label$514;
		{
			struct $7ASTNODE* vr$13 = HMATCHEXPR( -1 );
			DEXPR$1 = vr$13;
			if( DEXPR$1 != (struct $7ASTNODE*)0u ) goto label$516;
			{
				goto label$500;
			}
			label$516:;
			label$515:;
		}
		label$514:;
		label$513:;
	}
	label$510:;
	label$509:;
	int32 vr$14 = LEXGETTOKEN( 0 );
	if( vr$14 == 41 ) goto label$518;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$517;
	label$518:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$517:;
	struct $7ASTNODE* vr$15 = RTLGFXIMAGECREATE( WEXPR$1, HEXPR$1, CEXPR$1, DEXPR$1, FLAGS$1 );
	*FUNCEXPR$1 = vr$15;
	fb$result$1 = -(*FUNCEXPR$1 != (struct $7ASTNODE*)0u);
	label$500:;
	return fb$result$1;
}

int32 CGFXSTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$519:;
	fb$result$1 = 0;
	{
		uint32 TMP$119$2;
		TMP$119$2 = (uint32)TK$1;
		goto label$522;
		label$523:;
		{
			int32 vr$1 = CCOMPSTMTISALLOWED( 1 );
			if( vr$1 != 0 ) goto label$525;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$525:;
			label$524:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$2 = CGFXPSET( 0 );
			fb$result$1 = vr$2;
		}
		goto label$521;
		label$526:;
		{
			int32 vr$3 = CCOMPSTMTISALLOWED( 1 );
			if( vr$3 != 0 ) goto label$528;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$528:;
			label$527:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$4 = CGFXPSET( -1 );
			fb$result$1 = vr$4;
		}
		goto label$521;
		label$529:;
		{
			int32 vr$5 = CCOMPSTMTISALLOWED( 1 );
			if( vr$5 != 0 ) goto label$531;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$531:;
			label$530:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$6 = CGFXLINE(  );
			fb$result$1 = vr$6;
		}
		goto label$521;
		label$532:;
		{
			int32 vr$7 = CCOMPSTMTISALLOWED( 1 );
			if( vr$7 != 0 ) goto label$534;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$534:;
			label$533:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$8 = CGFXCIRCLE(  );
			fb$result$1 = vr$8;
		}
		goto label$521;
		label$535:;
		{
			int32 vr$9 = CCOMPSTMTISALLOWED( 1 );
			if( vr$9 != 0 ) goto label$537;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$537:;
			label$536:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$10 = CGFXPAINT(  );
			fb$result$1 = vr$10;
		}
		goto label$521;
		label$538:;
		{
			int32 vr$11 = CCOMPSTMTISALLOWED( 1 );
			if( vr$11 != 0 ) goto label$540;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$540:;
			label$539:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$12 = CGFXDRAW(  );
			fb$result$1 = vr$12;
		}
		goto label$521;
		label$541:;
		{
			int32 vr$13 = CCOMPSTMTISALLOWED( 1 );
			if( vr$13 != 0 ) goto label$543;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$543:;
			label$542:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$14 = CGFXVIEW( -1 );
			fb$result$1 = vr$14;
		}
		goto label$521;
		label$544:;
		{
			int32 vr$15 = CCOMPSTMTISALLOWED( 1 );
			if( vr$15 != 0 ) goto label$546;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$546:;
			label$545:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$16 = CGFXVIEW( 0 );
			fb$result$1 = vr$16;
		}
		goto label$521;
		label$547:;
		{
			int32 vr$17 = CCOMPSTMTISALLOWED( 1 );
			if( vr$17 != 0 ) goto label$549;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$549:;
			label$548:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$18 = CGFXPALETTE(  );
			fb$result$1 = vr$18;
		}
		goto label$521;
		label$550:;
		{
			int32 vr$19 = CCOMPSTMTISALLOWED( 1 );
			if( vr$19 != 0 ) goto label$552;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$552:;
			label$551:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$20 = CGFXPUT(  );
			fb$result$1 = vr$20;
		}
		goto label$521;
		label$553:;
		{
			int32 vr$21 = CCOMPSTMTISALLOWED( 1 );
			if( vr$21 != 0 ) goto label$555;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$555:;
			label$554:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$22 = CGFXGET(  );
			fb$result$1 = vr$22;
		}
		goto label$521;
		label$556:;
		{
			int32 vr$23 = CCOMPSTMTISALLOWED( 1 );
			if( vr$23 != 0 ) goto label$558;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$558:;
			label$557:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$24 = CGFXSCREEN( 0 );
			fb$result$1 = vr$24;
		}
		goto label$521;
		label$559:;
		{
			int32 vr$25 = CCOMPSTMTISALLOWED( 1 );
			if( vr$25 != 0 ) goto label$561;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$520;
			}
			label$561:;
			label$560:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$26 = CGFXSCREEN( -1 );
			fb$result$1 = vr$26;
		}
		goto label$521;
		label$522:;
		static const void* tmp$120[41] = {
			&&label$550,
			&&label$553,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$529,
			&&label$541,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$523,
			&&label$526,
			&&label$521,
			&&label$532,
			&&label$544,
			&&label$547,
			&&label$556,
			&&label$559,
			&&label$535,
			&&label$538,
		};
		if( (TMP$119$2 - 473u) > 40u ) goto label$521;
		goto *tmp$120[TMP$119$2 - 473u];
		label$521:;
	}
	label$520:;
	return fb$result$1;
}

struct $7ASTNODE* CGFXFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$562:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = (struct $7ASTNODE*)0u;
	{
		if( TK$1 != 506 ) goto label$565;
		label$566:;
		{
			LEXSKIPTOKEN( 2048 );
			CGFXPOINT( &EXPR$1 );
		}
		goto label$564;
		label$565:;
		if( TK$1 != 514 ) goto label$567;
		label$568:;
		{
			LEXSKIPTOKEN( 2048 );
			CGFXIMAGECREATE( &EXPR$1 );
		}
		label$567:;
		label$564:;
	}
	fb$result$1 = EXPR$1;
	label$563:;
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

static struct $7ASTNODE* HMAYBEUDT2PTR( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	$9FB_ERRMSG ERR_NUM$1;
	struct $8FBSYMBOL* CASTPROC$1;
	struct $8FBSYMBOL* vr$2 = SYMBFINDCASTOVLPROC( 32, (struct $8FBSYMBOL*)0u, EXPR$1, &ERR_NUM$1, 0 );
	CASTPROC$1 = vr$2;
	if( CASTPROC$1 == (struct $8FBSYMBOL*)0u ) goto label$13;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDCALL( CASTPROC$1, EXPR$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
		EXPR$1 = vr$3;
	}
	goto label$12;
	label$13:;
	{
		if( ERR_NUM$1 == 0 ) goto label$15;
		{
			ASTDELTREE( EXPR$1 );
			struct $7ASTNODE* vr$4 = ASTNEWCONSTI( 0ll, 32, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$4;
		}
		label$15:;
		label$14:;
	}
	label$12:;
	fb$result$1 = EXPR$1;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HNIDXARRAY2ARRAYACCESS( struct $7ASTNODE* NIDXARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	struct $7ASTNODE* VAREXPR$1;
	struct $7ASTNODE* IDXEXPR$1;
	struct $7ASTNODE* DATAOFFSET$1;
	struct $8FBSYMBOL* SYM$1;
	VAREXPR$1 = *(struct $7ASTNODE**)((uint8*)NIDXARRAY$1 + 64);
	ASTDELNODE( NIDXARRAY$1 );
	if( *(int32*)VAREXPR$1 != 19 ) goto label$19;
	{
		fb$result$1 = VAREXPR$1;
		goto label$17;
	}
	label$19:;
	label$18:;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 12);
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$21;
	{
		struct $7ASTNODE* vr$7 = ASTNEWVAR( SYM$1, 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$8 = ASTNEWDEREF( vr$7, 8, (struct $8FBSYMBOL*)0u, (int64)*(int32*)((uint8*)&SYMB$ + 99612) );
		IDXEXPR$1 = vr$8;
		struct $7ASTNODE* vr$11 = ASTNEWVAR( SYM$1, 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$12 = ASTNEWDEREF( vr$11, 8, (struct $8FBSYMBOL*)0u, (int64)(*(int32*)((uint8*)&SYMB$ + 99624) + *(int32*)((uint8*)&SYMB$ + 99632)) );
		DATAOFFSET$1 = vr$12;
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 40), 9, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$15 = ASTNEWBOP( 30, DATAOFFSET$1, vr$14, (struct $8FBSYMBOL*)0u, 1 );
		DATAOFFSET$1 = vr$15;
		struct $7ASTNODE* vr$16 = ASTNEWBOP( 28, IDXEXPR$1, DATAOFFSET$1, (struct $8FBSYMBOL*)0u, 1 );
		IDXEXPR$1 = vr$16;
		ASTNEWLOAD( IDXEXPR$1, 8, 0 );
		ASTDELTREE( VAREXPR$1 );
		struct $7ASTNODE* vr$17 = ASTNEWVAR( SYM$1, 0ll, 8, (struct $8FBSYMBOL*)0u );
		VAREXPR$1 = vr$17;
	}
	goto label$20;
	label$21:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$22;
	{
		struct $7ASTNODE* vr$22 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88), (int64)*(int32*)((uint8*)&SYMB$ + 99612), 8, (struct $8FBSYMBOL*)0u );
		IDXEXPR$1 = vr$22;
		struct $7ASTNODE* vr$26 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88), (int64)(*(int32*)((uint8*)&SYMB$ + 99624) + *(int32*)((uint8*)&SYMB$ + 99632)), 8, (struct $8FBSYMBOL*)0u );
		DATAOFFSET$1 = vr$26;
		struct $7ASTNODE* vr$28 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 40), 9, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$29 = ASTNEWBOP( 30, DATAOFFSET$1, vr$28, (struct $8FBSYMBOL*)0u, 1 );
		DATAOFFSET$1 = vr$29;
		struct $7ASTNODE* vr$30 = ASTNEWBOP( 28, IDXEXPR$1, DATAOFFSET$1, (struct $8FBSYMBOL*)0u, 1 );
		IDXEXPR$1 = vr$30;
		struct $7ASTNODE* vr$31 = ASTNEWLOAD( IDXEXPR$1, 8, 0 );
		IDXEXPR$1 = vr$31;
	}
	goto label$20;
	label$22:;
	{
		int64 vr$35 = SYMBCALCLEN( *(int32*)((uint8*)VAREXPR$1 + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8) );
		struct $7ASTNODE* vr$36 = ASTNEWCONSTI( vr$35, 9, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$39 = ASTNEWCONSTI( *(int64*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$40 = ASTNEWBOP( 30, vr$39, vr$36, (struct $8FBSYMBOL*)0u, 1 );
		IDXEXPR$1 = vr$40;
	}
	label$20:;
	struct $7ASTNODE* vr$41 = ASTNEWIDX( VAREXPR$1, IDXEXPR$1 );
	fb$result$1 = vr$41;
	label$17:;
	return fb$result$1;
}

static struct $7ASTNODE* HMAYBEARRAYACCESS2PTR( struct $7ASTNODE* EXPR$1, struct $7ASTNODE** PDESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$23:;
	{
		$13AST_NODECLASS TMP$93$2;
		TMP$93$2 = *($13AST_NODECLASS*)EXPR$1;
		if( TMP$93$2 != 18 ) goto label$26;
		label$27:;
		{
			if( PDESCEXPR$1 == (struct $7ASTNODE**)0u ) goto label$29;
			{
				struct $7ASTNODE* vr$3 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				*PDESCEXPR$1 = vr$3;
			}
			label$29:;
			label$28:;
			struct $7ASTNODE* vr$5 = ASTNEWADDROF( EXPR$1 );
			EXPR$1 = vr$5;
		}
		goto label$25;
		label$26:;
		if( TMP$93$2 != 19 ) goto label$30;
		label$31:;
		{
			int32 vr$7 = SYMBISARRAY( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12) );
			if( vr$7 == 0 ) goto label$33;
			{
				if( PDESCEXPR$1 == (struct $7ASTNODE**)0u ) goto label$35;
				{
					int32 vr$8 = ASTHASSIDEFX( EXPR$1 );
					if( vr$8 == 0 ) goto label$37;
					{
						ERRREPORT( 28, -1, (uint8*)0u );
						ASTDELTREE( EXPR$1 );
						struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 32, (struct $8FBSYMBOL*)0u );
						EXPR$1 = vr$9;
					}
					goto label$36;
					label$37:;
					{
						struct $7ASTNODE* vr$10 = ASTCLONETREE( EXPR$1 );
						*PDESCEXPR$1 = vr$10;
						struct $7ASTNODE* vr$12 = ASTNEWADDROF( EXPR$1 );
						EXPR$1 = vr$12;
					}
					label$36:;
				}
				goto label$34;
				label$35:;
				{
					struct $7ASTNODE* vr$13 = ASTNEWADDROF( EXPR$1 );
					EXPR$1 = vr$13;
				}
				label$34:;
			}
			label$33:;
			label$32:;
		}
		label$30:;
		label$25:;
	}
	fb$result$1 = EXPR$1;
	label$24:;
	return fb$result$1;
}

static struct $7ASTNODE* HCHECKFBIMAGEEXPR( struct $7ASTNODE* EXPR$1, int32 ALLOW_CONST$1, struct $7ASTNODE** PDESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$38:;
	struct $7ASTNODE* vr$1 = ASTREMOVENOCONVCAST( EXPR$1 );
	EXPR$1 = vr$1;
	if( *(int32*)EXPR$1 != 25 ) goto label$41;
	{
		struct $7ASTNODE* vr$3 = HNIDXARRAY2ARRAYACCESS( EXPR$1 );
		struct $7ASTNODE* vr$4 = HMAYBEARRAYACCESS2PTR( vr$3, PDESCEXPR$1 );
		EXPR$1 = vr$4;
	}
	goto label$40;
	label$41:;
	{
		if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 20 ) goto label$43;
		{
			struct $7ASTNODE* vr$7 = HMAYBEUDT2PTR( EXPR$1 );
			EXPR$1 = vr$7;
		}
		label$43:;
		label$42:;
		if( (*(int32*)((uint8*)EXPR$1 + 4) & 480) != 0 ) goto label$45;
		{
			struct $7ASTNODE* vr$10 = HMAYBEARRAYACCESS2PTR( EXPR$1, PDESCEXPR$1 );
			EXPR$1 = vr$10;
		}
		label$45:;
		label$44:;
	}
	label$40:;
	if( (*(int32*)((uint8*)EXPR$1 + 4) & 480) != 0 ) goto label$47;
	{
		if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 20 ) goto label$49;
		{
			FBSTRING TMP$96$3;
			FBSTRING TMP$97$3;
			FBSTRING TMP$98$3;
			__builtin_memset( &TMP$98$3, 0, 12 );
			__builtin_memset( &TMP$96$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$96$3, (void*)" \x22", 3, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) + 16), 0 );
			__builtin_memset( &TMP$97$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$97$3, (void*)vr$20, -1, (void*)".cast() as any ptr\x22", 20 );
			fb_StrAssign( (void*)&TMP$98$3, -1, (void*)vr$23, -1, 0 );
			ERRREPORT( 99, -1, (uint8*)*(uint8**)&TMP$98$3 );
			fb_StrDelete( (FBSTRING*)&TMP$98$3 );
		}
		goto label$48;
		label$49:;
		{
			ERRREPORT( 28, -1, (uint8*)0u );
		}
		label$48:;
		struct $7ASTNODE* vr$26 = ASTNEWADDROF( EXPR$1 );
		EXPR$1 = vr$26;
	}
	label$47:;
	label$46:;
	if( ALLOW_CONST$1 != 0 ) goto label$51;
	{
		if( (((((*(int32*)((uint8*)EXPR$1 + 4) & 31) | ((*(int32*)((uint8*)EXPR$1 + 4) & 480) + -32)) | (((*(int32*)((uint8*)EXPR$1 + 4) & 261632) >> (1 & 31)) & 261632)) | (*(int32*)((uint8*)EXPR$1 + 4) & 32505856)) & 512) == 0 ) goto label$53;
		{
			ERRREPORT( 119, -1, (uint8*)0u );
		}
		label$53:;
		label$52:;
	}
	label$51:;
	label$50:;
	fb$result$1 = EXPR$1;
	label$39:;
	return fb$result$1;
}

static struct $7ASTNODE* HFBIMAGEEXPR( int32 ALLOW_CONST$1, struct $7ASTNODE** PDESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CEXPRESSIONWITHNIDXARRAY( -1 );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	struct $7ASTNODE* vr$2 = HCHECKFBIMAGEEXPR( EXPR$1, ALLOW_CONST$1, PDESCEXPR$1 );
	fb$result$1 = vr$2;
	label$55:;
	return fb$result$1;
}

static struct $7ASTNODE* HFBIMAGEEXPRINFRONTOFCOORD( int32 ALLOW_CONST$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$58:;
	struct $7ASTNODE* EXPR$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 40 ) goto label$61;
	{
		goto label$59;
	}
	label$61:;
	label$60:;
	struct $7ASTNODE* vr$2 = HFBIMAGEEXPR( ALLOW_CONST$1, (struct $7ASTNODE**)0u );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$63;
	{
		goto label$59;
	}
	label$63:;
	label$62:;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 44 ) goto label$65;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$64;
	label$65:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$64:;
	fb$result$1 = EXPR$1;
	label$59:;
	return fb$result$1;
}

static int32 HGETMODE( int32* MODE$1, struct $7ASTNODE** ALPHAEXPR$1, struct $7ASTNODE** FUNCEXPR$1, struct $7ASTNODE** PARAMEXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	struct $8FBSYMBOL* ARG1$1;
	__builtin_memset( &ARG1$1, 0, 4 );
	struct $8FBSYMBOL* ARG2$1;
	__builtin_memset( &ARG2$1, 0, 4 );
	struct $8FBSYMBOL* ARG3$1;
	__builtin_memset( &ARG3$1, 0, 4 );
	fb$result$1 = 0;
	{
		int32 TMP$99$2;
		int32 vr$5 = LEXGETTOKEN( 0 );
		TMP$99$2 = vr$5;
		if( TMP$99$2 != 288 ) goto label$69;
		label$70:;
		{
			LEXSKIPTOKEN( 2048 );
			*MODE$1 = 3;
			fb$result$1 = -1;
			goto label$67;
		}
		goto label$68;
		label$69:;
		if( TMP$99$2 != 289 ) goto label$71;
		label$72:;
		{
			LEXSKIPTOKEN( 2048 );
			*MODE$1 = 4;
			fb$result$1 = -1;
			goto label$67;
		}
		goto label$68;
		label$71:;
		if( TMP$99$2 != 292 ) goto label$73;
		label$74:;
		{
			LEXSKIPTOKEN( 2048 );
			*MODE$1 = 5;
			fb$result$1 = -1;
			goto label$67;
		}
		label$73:;
		label$68:;
	}
	{
		int32 TMP$100$2;
		int32 vr$9 = LEXGETCLASS( 0 );
		TMP$100$2 = vr$9;
		if( TMP$100$2 == 0 ) goto label$77;
		label$78:;
		if( TMP$100$2 == 2 ) goto label$77;
		label$79:;
		if( TMP$100$2 != 1 ) goto label$76;
		label$77:;
		{
			{
				FBSTRING TMP$101$4;
				uint8* vr$10 = LEXGETTEXT(  );
				FBSTRING* vr$11 = fb_StrAllocTempDescZ( (uint8*)vr$10 );
				FBSTRING* vr$12 = fb_StrUcase2( (FBSTRING*)vr$11, 0 );
				fb_StrInit( (void*)&TMP$101$4, -1, (void*)vr$12, -1, 0 );
				int32 vr$15 = fb_StrCompare( (void*)&TMP$101$4, -1, (void*)"PSET", 5 );
				if( vr$15 != 0 ) goto label$81;
				label$82:;
				{
					LEXSKIPTOKEN( 2048 );
					*MODE$1 = 1;
					fb$result$1 = -1;
					fb_StrDelete( (FBSTRING*)&TMP$101$4 );
					goto label$67;
				}
				goto label$80;
				label$81:;
				int32 vr$19 = fb_StrCompare( (void*)&TMP$101$4, -1, (void*)"PRESET", 7 );
				if( vr$19 != 0 ) goto label$83;
				label$84:;
				{
					LEXSKIPTOKEN( 2048 );
					*MODE$1 = 2;
					fb$result$1 = -1;
					fb_StrDelete( (FBSTRING*)&TMP$101$4 );
					goto label$67;
				}
				goto label$80;
				label$83:;
				int32 vr$23 = fb_StrCompare( (void*)&TMP$101$4, -1, (void*)"TRANS", 6 );
				if( vr$23 != 0 ) goto label$85;
				label$86:;
				{
					LEXSKIPTOKEN( 2048 );
					*MODE$1 = 0;
					fb$result$1 = -1;
					fb_StrDelete( (FBSTRING*)&TMP$101$4 );
					goto label$67;
				}
				goto label$80;
				label$85:;
				int32 vr$27 = fb_StrCompare( (void*)&TMP$101$4, -1, (void*)"ADD", 4 );
				if( vr$27 != 0 ) goto label$87;
				label$88:;
				{
					LEXSKIPTOKEN( 2048 );
					*MODE$1 = 7;
					int32 vr$29 = HMATCH( 44, 0 );
					if( vr$29 == 0 ) goto label$90;
					{
						struct $7ASTNODE* vr$30 = HMATCHEXPR( -1 );
						*ALPHAEXPR$1 = vr$30;
						if( *ALPHAEXPR$1 != (struct $7ASTNODE*)0u ) goto label$92;
						{
							fb_StrDelete( (FBSTRING*)&TMP$101$4 );
							goto label$67;
						}
						label$92:;
						label$91:;
					}
					goto label$89;
					label$90:;
					{
						struct $7ASTNODE* vr$34 = ASTNEWCONSTI( 255ll, 9, (struct $8FBSYMBOL*)0u );
						*ALPHAEXPR$1 = vr$34;
					}
					label$89:;
					fb$result$1 = -1;
					fb_StrDelete( (FBSTRING*)&TMP$101$4 );
					goto label$67;
				}
				goto label$80;
				label$87:;
				int32 vr$38 = fb_StrCompare( (void*)&TMP$101$4, -1, (void*)"ALPHA", 6 );
				if( vr$38 != 0 ) goto label$93;
				label$94:;
				{
					LEXSKIPTOKEN( 2048 );
					*MODE$1 = 6;
					int32 vr$40 = HMATCH( 44, 0 );
					if( vr$40 == 0 ) goto label$96;
					{
						struct $7ASTNODE* vr$41 = HMATCHEXPR( -1 );
						*ALPHAEXPR$1 = vr$41;
						if( *ALPHAEXPR$1 != (struct $7ASTNODE*)0u ) goto label$98;
						{
							fb_StrDelete( (FBSTRING*)&TMP$101$4 );
							goto label$67;
						}
						label$98:;
						label$97:;
						*MODE$1 = 9;
					}
					label$96:;
					label$95:;
					fb$result$1 = -1;
					fb_StrDelete( (FBSTRING*)&TMP$101$4 );
					goto label$67;
				}
				goto label$80;
				label$93:;
				int32 vr$48 = fb_StrCompare( (void*)&TMP$101$4, -1, (void*)"CUSTOM", 7 );
				if( vr$48 != 0 ) goto label$99;
				label$100:;
				{
					LEXSKIPTOKEN( 2048 );
					*MODE$1 = 8;
					int32 vr$50 = LEXGETTOKEN( 0 );
					if( vr$50 == 44 ) goto label$102;
					{
						ERRREPORT( 16, 0, (uint8*)0u );
					}
					goto label$101;
					label$102:;
					{
						LEXSKIPTOKEN( 0 );
					}
					label$101:;
					struct $7ASTNODE* vr$51 = HMATCHEXPR( -1 );
					*FUNCEXPR$1 = vr$51;
					if( *FUNCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$104;
					{
						fb_StrDelete( (FBSTRING*)&TMP$101$4 );
						goto label$67;
					}
					label$104:;
					label$103:;
					int32 vr$55 = HMATCH( 44, 0 );
					if( vr$55 == 0 ) goto label$106;
					{
						struct $7ASTNODE* vr$56 = HMATCHEXPR( -1 );
						*PARAMEXPR$1 = vr$56;
						if( *PARAMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$108;
						{
							fb_StrDelete( (FBSTRING*)&TMP$101$4 );
							goto label$67;
						}
						label$108:;
						label$107:;
					}
					label$106:;
					label$105:;
					S$1 = *(struct $8FBSYMBOL**)((uint8*)*FUNCEXPR$1 + 8);
					if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$110;
					{
						ERRREPORT( 20, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$101$4 );
						goto label$67;
					}
					label$110:;
					label$109:;
					if( *(int32*)S$1 == 3 ) goto label$112;
					{
						ERRREPORT( 20, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$101$4 );
						goto label$67;
					}
					label$112:;
					label$111:;
					if( (-((*(int32*)((uint8*)S$1 + 28) & 511) != 12) | -((int32)*(int16*)((uint8*)S$1 + 68) != 3)) == 0 ) goto label$114;
					{
						ERRREPORT( 20, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$101$4 );
						goto label$67;
					}
					label$114:;
					label$113:;
					ARG1$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 76);
					ARG2$1 = *(struct $8FBSYMBOL**)((uint8*)ARG1$1 + 176);
					ARG3$1 = *(struct $8FBSYMBOL**)((uint8*)ARG2$1 + 176);
					if( *(int32*)((uint8*)S$1 + 84) != 4 ) goto label$116;
					{
						{
							struct $8FBSYMBOL* TMP$108$7;
							TMP$108$7 = ARG1$1;
							ARG1$1 = ARG3$1;
							ARG3$1 = TMP$108$7;
						}
					}
					label$116:;
					label$115:;
					if( (((((-((*(int32*)((uint8*)ARG1$1 + 28) & 511) != 12) | -((*(int32*)((uint8*)ARG2$1 + 28) & 511) != 12)) | -(((*(int32*)((uint8*)ARG3$1 + 28) & 511) & 480) == 0)) | -(*(int32*)((uint8*)ARG1$1 + 56) != 1)) | -(*(int32*)((uint8*)ARG2$1 + 56) != 1)) | -(*(int32*)((uint8*)ARG3$1 + 56) != 1)) == 0 ) goto label$118;
					{
						ERRREPORT( 20, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$101$4 );
						goto label$67;
					}
					label$118:;
					label$117:;
					fb$result$1 = -1;
					fb_StrDelete( (FBSTRING*)&TMP$101$4 );
					goto label$67;
				}
				label$99:;
				label$80:;
				fb_StrDelete( (FBSTRING*)&TMP$101$4 );
			}
		}
		label$76:;
		label$75:;
	}
	ERRREPORT( 17, 0, (uint8*)0u );
	fb$result$1 = 0;
	goto label$67;
	label$67:;
	return fb$result$1;
}
