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
typedef int64 $8FB_TOKEN;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $9FB_ERRMSG;
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirkzgfx( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int64 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWIDX( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLOAD( struct $7ASTNODE*, int64, int64 );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
typedef int64 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int64 SYMBCALCLEN( int64, struct $8FBSYMBOL* );
int64 SYMBISARRAY( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 HMATCHIDORKW( uint8*, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
typedef int64 $15FB_CMPSTMT_MASK;
int64 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int64 );
typedef int64 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $7ASTNODE* HMATCHEXPR( int64 );
struct $7ASTNODE* RTLPAGESET( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLGFXPSET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* RTLGFXPOINT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int64 RTLGFXLINE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
int64 RTLGFXCIRCLE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLGFXPAINT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLGFXDRAW( struct $7ASTNODE*, struct $7ASTNODE* );
int64 RTLGFXDRAWSTRING( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int64 RTLGFXVIEW( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLGFXWINDOW( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLGFXPALETTE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLGFXPALETTEUSING( struct $7ASTNODE*, int64, int64 );
int64 RTLGFXPUT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLGFXGET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, struct $7ASTNODE* );
int64 RTLGFXSCREENSET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int64 RTLGFXSCREENSETQB( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLGFXIMAGECREATE( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static struct $7ASTNODE* HMAYBEUDT2PTR( struct $7ASTNODE* );
static struct $7ASTNODE* HNIDXARRAY2ARRAYACCESS( struct $7ASTNODE* );
static struct $7ASTNODE* HMAYBEARRAYACCESS2PTR( struct $7ASTNODE*, struct $7ASTNODE** );
static struct $7ASTNODE* HCHECKFBIMAGEEXPR( struct $7ASTNODE*, int64, struct $7ASTNODE** );
static struct $7ASTNODE* HFBIMAGEEXPR( int64, struct $7ASTNODE** );
static struct $7ASTNODE* HFBIMAGEEXPRINFRONTOFCOORD( int64 );
static int64 HGETMODE( int64*, struct $7ASTNODE**, struct $7ASTNODE**, struct $7ASTNODE** );
int64 CGFXPSET( int64 );
int64 CGFXLINE( void );
int64 CGFXCIRCLE( void );
int64 CGFXPAINT( void );
int64 CGFXDRAWSTRING( void );
int64 CGFXDRAW( void );
int64 CGFXVIEW( int64 );
int64 CGFXPALETTE( void );
int64 CGFXPUT( void );
int64 CGFXGET( void );
int64 CGFXSCREEN( int64 );
int64 CGFXPOINT( struct $7ASTNODE** );
int64 CGFXIMAGECREATE( struct $7ASTNODE** );
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

int64 CGFXPSET( int64 ISPRESET$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$119:;
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 8ll );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 8ll );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	fb$result$1 = 0ll;
	struct $7ASTNODE* vr$6 = HFBIMAGEEXPRINFRONTOFCOORD( 0ll );
	TEXPR$1 = vr$6;
	int64 vr$7 = HMATCH( 282ll, 2048ll );
	if( vr$7 == 0ll ) goto label$122;
	{
		FLAGS$1 = 5ll;
	}
	goto label$121;
	label$122:;
	{
		FLAGS$1 = 4ll;
	}
	label$121:;
	int64 vr$8 = LEXGETTOKEN( 0ll );
	if( vr$8 == 40ll ) goto label$124;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$123;
	label$124:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$123:;
	struct $7ASTNODE* vr$9 = HMATCHEXPR( -1ll );
	XEXPR$1 = vr$9;
	if( XEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$126;
	{
		goto label$120;
	}
	label$126:;
	label$125:;
	int64 vr$10 = LEXGETTOKEN( 0ll );
	if( vr$10 == 44ll ) goto label$128;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$127;
	label$128:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$127:;
	struct $7ASTNODE* vr$11 = HMATCHEXPR( -1ll );
	YEXPR$1 = vr$11;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$130;
	{
		goto label$120;
	}
	label$130:;
	label$129:;
	int64 vr$12 = LEXGETTOKEN( 0ll );
	if( vr$12 == 41ll ) goto label$132;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$131;
	label$132:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$131:;
	int64 vr$13 = HMATCH( 44ll, 0ll );
	if( vr$13 == 0ll ) goto label$134;
	{
		struct $7ASTNODE* vr$14 = HMATCHEXPR( -1ll );
		CEXPR$1 = vr$14;
		if( CEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$136;
		{
			goto label$120;
		}
		label$136:;
		label$135:;
	}
	goto label$133;
	label$134:;
	{
		struct $7ASTNODE* vr$15 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		CEXPR$1 = vr$15;
		FLAGS$1 = FLAGS$1 | 2147483648ll;
	}
	label$133:;
	int64 vr$17 = RTLGFXPSET( TEXPR$1, XEXPR$1, YEXPR$1, CEXPR$1, FLAGS$1, ISPRESET$1 );
	fb$result$1 = vr$17;
	label$120:;
	return fb$result$1;
}

int64 CGFXLINE( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$137:;
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	int64 LINETYPE$1;
	__builtin_memset( &LINETYPE$1, 0, 8ll );
	struct $7ASTNODE* STYLEEXPR$1;
	__builtin_memset( &STYLEEXPR$1, 0, 8ll );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 8ll );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 8ll );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	fb$result$1 = 0ll;
	int64 vr$10 = HMATCH( 45ll, 0ll );
	if( vr$10 == 0ll ) goto label$140;
	{
		FLAGS$1 = 5ll;
		struct $7ASTNODE* vr$11 = ASTNEWCONSTF( 0x0p+0, 15ll );
		X1EXPR$1 = vr$11;
		struct $7ASTNODE* vr$12 = ASTNEWCONSTF( 0x0p+0, 15ll );
		Y1EXPR$1 = vr$12;
	}
	goto label$139;
	label$140:;
	{
		struct $7ASTNODE* vr$13 = HFBIMAGEEXPRINFRONTOFCOORD( 0ll );
		TEXPR$1 = vr$13;
		int64 vr$14 = HMATCH( 282ll, 2048ll );
		if( vr$14 == 0ll ) goto label$142;
		{
			FLAGS$1 = 5ll;
		}
		goto label$141;
		label$142:;
		{
			FLAGS$1 = 4ll;
		}
		label$141:;
		int64 vr$15 = HMATCH( 40ll, 0ll );
		if( vr$15 == 0ll ) goto label$144;
		{
			struct $7ASTNODE* vr$16 = HMATCHEXPR( -1ll );
			X1EXPR$1 = vr$16;
			if( X1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$146;
			{
				goto label$138;
			}
			label$146:;
			label$145:;
			int64 vr$17 = LEXGETTOKEN( 0ll );
			if( vr$17 == 44ll ) goto label$148;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$147;
			label$148:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$147:;
			struct $7ASTNODE* vr$18 = HMATCHEXPR( -1ll );
			Y1EXPR$1 = vr$18;
			if( Y1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$150;
			{
				goto label$138;
			}
			label$150:;
			label$149:;
			int64 vr$19 = LEXGETTOKEN( 0ll );
			if( vr$19 == 41ll ) goto label$152;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$151;
			label$152:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$151:;
		}
		goto label$143;
		label$144:;
		{
			FLAGS$1 = 5ll;
			struct $7ASTNODE* vr$20 = ASTNEWCONSTF( 0x0p+0, 15ll );
			X1EXPR$1 = vr$20;
			struct $7ASTNODE* vr$21 = ASTNEWCONSTF( 0x0p+0, 15ll );
			Y1EXPR$1 = vr$21;
		}
		label$143:;
		int64 vr$22 = HMATCH( 45ll, 0ll );
		if( vr$22 != 0ll ) goto label$154;
		{
			ERRREPORT( 15ll, 0ll, (uint8*)0ull );
			goto label$138;
		}
		label$154:;
		label$153:;
	}
	label$139:;
	int64 vr$23 = HMATCH( 282ll, 2048ll );
	if( vr$23 == 0ll ) goto label$156;
	{
		if( FLAGS$1 != 5ll ) goto label$158;
		{
			FLAGS$1 = 3ll;
		}
		goto label$157;
		label$158:;
		{
			FLAGS$1 = 1ll;
		}
		label$157:;
	}
	goto label$155;
	label$156:;
	{
		if( FLAGS$1 != 5ll ) goto label$160;
		{
			FLAGS$1 = 2ll;
		}
		goto label$159;
		label$160:;
		{
			FLAGS$1 = 0ll;
		}
		label$159:;
	}
	label$155:;
	int64 vr$24 = LEXGETTOKEN( 0ll );
	if( vr$24 == 40ll ) goto label$162;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$161;
	label$162:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$161:;
	struct $7ASTNODE* vr$25 = HMATCHEXPR( -1ll );
	X2EXPR$1 = vr$25;
	if( X2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$164;
	{
		goto label$138;
	}
	label$164:;
	label$163:;
	int64 vr$26 = LEXGETTOKEN( 0ll );
	if( vr$26 == 44ll ) goto label$166;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$165;
	label$166:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$165:;
	struct $7ASTNODE* vr$27 = HMATCHEXPR( -1ll );
	Y2EXPR$1 = vr$27;
	if( Y2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$168;
	{
		goto label$138;
	}
	label$168:;
	label$167:;
	int64 vr$28 = LEXGETTOKEN( 0ll );
	if( vr$28 == 41ll ) goto label$170;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$169;
	label$170:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$169:;
	LINETYPE$1 = 0ll;
	STYLEEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$29 = HMATCH( 44ll, 0ll );
	if( vr$29 == 0ll ) goto label$172;
	{
		struct $7ASTNODE* vr$30 = CEXPRESSION(  );
		CEXPR$1 = vr$30;
		if( CEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$174;
		{
			struct $7ASTNODE* vr$31 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
			CEXPR$1 = vr$31;
			FLAGS$1 = FLAGS$1 | 2147483648ll;
		}
		label$174:;
		label$173:;
		int64 vr$33 = HMATCH( 44ll, 0ll );
		if( vr$33 == 0ll ) goto label$176;
		{
			{
				FBSTRING TMP$110$4;
				uint8* vr$34 = LEXGETTEXT(  );
				FBSTRING* vr$35 = fb_StrAllocTempDescZ( (uint8*)vr$34 );
				FBSTRING* vr$36 = fb_StrUcase2( (FBSTRING*)vr$35, 0 );
				fb_StrInit( (void*)&TMP$110$4, -1ll, (void*)vr$36, -1ll, 0 );
				int32 vr$39 = fb_StrCompare( (void*)&TMP$110$4, -1ll, (void*)"B", 2ll );
				if( (int64)vr$39 != 0ll ) goto label$178;
				label$179:;
				{
					LEXSKIPTOKEN( 2048ll );
					LINETYPE$1 = 1ll;
				}
				goto label$177;
				label$178:;
				int32 vr$42 = fb_StrCompare( (void*)&TMP$110$4, -1ll, (void*)"BF", 3ll );
				if( (int64)vr$42 != 0ll ) goto label$180;
				label$181:;
				{
					LEXSKIPTOKEN( 2048ll );
					LINETYPE$1 = 2ll;
				}
				label$180:;
				label$177:;
				fb_StrDelete( (FBSTRING*)&TMP$110$4 );
			}
			int64 vr$45 = HMATCH( 44ll, 0ll );
			if( vr$45 == 0ll ) goto label$183;
			{
				struct $7ASTNODE* vr$46 = HMATCHEXPR( -1ll );
				STYLEEXPR$1 = vr$46;
				if( STYLEEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$185;
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
		struct $7ASTNODE* vr$47 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		CEXPR$1 = vr$47;
		FLAGS$1 = FLAGS$1 | 2147483648ll;
	}
	label$171:;
	int64 vr$49 = RTLGFXLINE( TEXPR$1, X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, CEXPR$1, LINETYPE$1, STYLEEXPR$1, FLAGS$1 );
	fb$result$1 = vr$49;
	label$138:;
	return fb$result$1;
}

int64 CGFXCIRCLE( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$186:;
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	int64 FILLFLAG$1;
	__builtin_memset( &FILLFLAG$1, 0, 8ll );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 8ll );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 8ll );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 8ll );
	struct $7ASTNODE* RADEXPR$1;
	__builtin_memset( &RADEXPR$1, 0, 8ll );
	struct $7ASTNODE* INIEXPR$1;
	__builtin_memset( &INIEXPR$1, 0, 8ll );
	struct $7ASTNODE* ENDEXPR$1;
	__builtin_memset( &ENDEXPR$1, 0, 8ll );
	struct $7ASTNODE* ASPEXPR$1;
	__builtin_memset( &ASPEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	fb$result$1 = 0ll;
	struct $7ASTNODE* vr$11 = HFBIMAGEEXPRINFRONTOFCOORD( 0ll );
	TEXPR$1 = vr$11;
	int64 vr$12 = HMATCH( 282ll, 2048ll );
	if( vr$12 == 0ll ) goto label$189;
	{
		FLAGS$1 = 5ll;
	}
	goto label$188;
	label$189:;
	{
		FLAGS$1 = 4ll;
	}
	label$188:;
	int64 vr$13 = LEXGETTOKEN( 0ll );
	if( vr$13 == 40ll ) goto label$191;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$190;
	label$191:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$190:;
	struct $7ASTNODE* vr$14 = HMATCHEXPR( -1ll );
	XEXPR$1 = vr$14;
	if( XEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$193;
	{
		goto label$187;
	}
	label$193:;
	label$192:;
	int64 vr$15 = LEXGETTOKEN( 0ll );
	if( vr$15 == 44ll ) goto label$195;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$194;
	label$195:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$194:;
	struct $7ASTNODE* vr$16 = HMATCHEXPR( -1ll );
	YEXPR$1 = vr$16;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$197;
	{
		goto label$187;
	}
	label$197:;
	label$196:;
	int64 vr$17 = LEXGETTOKEN( 0ll );
	if( vr$17 == 41ll ) goto label$199;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$198;
	label$199:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$198:;
	int64 vr$18 = LEXGETTOKEN( 0ll );
	if( vr$18 == 44ll ) goto label$201;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$200;
	label$201:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$200:;
	struct $7ASTNODE* vr$19 = HMATCHEXPR( -1ll );
	RADEXPR$1 = vr$19;
	if( RADEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$203;
	{
		goto label$187;
	}
	label$203:;
	label$202:;
	ASPEXPR$1 = (struct $7ASTNODE*)0ull;
	INIEXPR$1 = (struct $7ASTNODE*)0ull;
	ENDEXPR$1 = (struct $7ASTNODE*)0ull;
	FILLFLAG$1 = 0ll;
	int64 vr$20 = HMATCH( 44ll, 0ll );
	if( vr$20 == 0ll ) goto label$205;
	{
		struct $7ASTNODE* vr$21 = CEXPRESSION(  );
		CEXPR$1 = vr$21;
		if( CEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$207;
		{
			struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
			CEXPR$1 = vr$22;
			FLAGS$1 = FLAGS$1 | 2147483648ll;
		}
		label$207:;
		label$206:;
		int64 vr$24 = HMATCH( 44ll, 0ll );
		if( vr$24 == 0ll ) goto label$209;
		{
			struct $7ASTNODE* vr$25 = CEXPRESSION(  );
			INIEXPR$1 = vr$25;
			int64 vr$26 = HMATCH( 44ll, 0ll );
			if( vr$26 == 0ll ) goto label$211;
			{
				struct $7ASTNODE* vr$27 = CEXPRESSION(  );
				ENDEXPR$1 = vr$27;
				int64 vr$28 = HMATCH( 44ll, 0ll );
				if( vr$28 == 0ll ) goto label$213;
				{
					struct $7ASTNODE* vr$29 = CEXPRESSION(  );
					ASPEXPR$1 = vr$29;
					int64 vr$30 = HMATCH( 44ll, 0ll );
					if( vr$30 == 0ll ) goto label$215;
					{
						uint8* vr$31 = LEXGETTEXT(  );
						FBSTRING* vr$32 = fb_StrAllocTempDescZ( (uint8*)vr$31 );
						FBSTRING* vr$33 = fb_StrUcase2( (FBSTRING*)vr$32, 0 );
						int32 vr$34 = fb_StrCompare( (void*)vr$33, -1ll, (void*)"F", 2ll );
						if( (int64)vr$34 == 0ll ) goto label$217;
						{
							ERRREPORT( 9ll, 0ll, (uint8*)0ull );
							goto label$187;
						}
						label$217:;
						label$216:;
						LEXSKIPTOKEN( 2048ll );
						FILLFLAG$1 = -1ll;
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
		struct $7ASTNODE* vr$36 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		CEXPR$1 = vr$36;
		FLAGS$1 = FLAGS$1 | 2147483648ll;
	}
	label$204:;
	int64 vr$38 = RTLGFXCIRCLE( TEXPR$1, XEXPR$1, YEXPR$1, RADEXPR$1, CEXPR$1, ASPEXPR$1, INIEXPR$1, ENDEXPR$1, FILLFLAG$1, FLAGS$1 );
	fb$result$1 = vr$38;
	label$187:;
	return fb$result$1;
}

int64 CGFXPAINT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$218:;
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 8ll );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 8ll );
	struct $7ASTNODE* PEXPR$1;
	__builtin_memset( &PEXPR$1, 0, 8ll );
	struct $7ASTNODE* BEXPR$1;
	__builtin_memset( &BEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	fb$result$1 = 0ll;
	struct $7ASTNODE* vr$7 = HFBIMAGEEXPRINFRONTOFCOORD( 0ll );
	TEXPR$1 = vr$7;
	int64 vr$8 = HMATCH( 282ll, 2048ll );
	if( vr$8 == 0ll ) goto label$221;
	{
		FLAGS$1 = 5ll;
	}
	goto label$220;
	label$221:;
	{
		FLAGS$1 = 4ll;
	}
	label$220:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 == 40ll ) goto label$223;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$222;
	label$223:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$222:;
	struct $7ASTNODE* vr$10 = HMATCHEXPR( -1ll );
	XEXPR$1 = vr$10;
	if( XEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$225;
	{
		goto label$219;
	}
	label$225:;
	label$224:;
	int64 vr$11 = LEXGETTOKEN( 0ll );
	if( vr$11 == 44ll ) goto label$227;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$226;
	label$227:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$226:;
	struct $7ASTNODE* vr$12 = HMATCHEXPR( -1ll );
	YEXPR$1 = vr$12;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$229;
	{
		goto label$219;
	}
	label$229:;
	label$228:;
	int64 vr$13 = LEXGETTOKEN( 0ll );
	if( vr$13 == 41ll ) goto label$231;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$230;
	label$231:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$230:;
	PEXPR$1 = (struct $7ASTNODE*)0ull;
	BEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$14 = HMATCH( 44ll, 0ll );
	if( vr$14 == 0ll ) goto label$233;
	{
		struct $7ASTNODE* vr$15 = CEXPRESSION(  );
		PEXPR$1 = vr$15;
		int64 vr$16 = HMATCH( 44ll, 0ll );
		if( vr$16 == 0ll ) goto label$235;
		{
			struct $7ASTNODE* vr$17 = HMATCHEXPR( -1ll );
			BEXPR$1 = vr$17;
			if( BEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$237;
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
	if( PEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$239;
	{
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		PEXPR$1 = vr$18;
		FLAGS$1 = FLAGS$1 | 2147483648ll;
	}
	label$239:;
	label$238:;
	if( BEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$241;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		BEXPR$1 = vr$20;
		FLAGS$1 = FLAGS$1 | 1073741824ll;
	}
	label$241:;
	label$240:;
	int64 vr$22 = RTLGFXPAINT( TEXPR$1, XEXPR$1, YEXPR$1, PEXPR$1, BEXPR$1, FLAGS$1 );
	fb$result$1 = vr$22;
	label$219:;
	return fb$result$1;
}

int64 CGFXDRAWSTRING( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$242:;
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 8ll );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 8ll );
	struct $7ASTNODE* SEXPR$1;
	__builtin_memset( &SEXPR$1, 0, 8ll );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 8ll );
	struct $7ASTNODE* FEXPR$1;
	__builtin_memset( &FEXPR$1, 0, 8ll );
	struct $7ASTNODE* ALPHAEXPR$1;
	__builtin_memset( &ALPHAEXPR$1, 0, 8ll );
	struct $7ASTNODE* FUNCEXPR$1;
	__builtin_memset( &FUNCEXPR$1, 0, 8ll );
	struct $7ASTNODE* PARAMEXPR$1;
	__builtin_memset( &PARAMEXPR$1, 0, 8ll );
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	int64 MODE$1;
	__builtin_memset( &MODE$1, 0, 8ll );
	fb$result$1 = 0ll;
	struct $7ASTNODE* vr$12 = HFBIMAGEEXPRINFRONTOFCOORD( 0ll );
	TEXPR$1 = vr$12;
	int64 vr$13 = HMATCH( 282ll, 2048ll );
	if( vr$13 == 0ll ) goto label$245;
	{
		FLAGS$1 = 5ll;
	}
	goto label$244;
	label$245:;
	{
		FLAGS$1 = 4ll;
	}
	label$244:;
	int64 vr$14 = LEXGETTOKEN( 0ll );
	if( vr$14 == 40ll ) goto label$247;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$246;
	label$247:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$246:;
	struct $7ASTNODE* vr$15 = HMATCHEXPR( -1ll );
	XEXPR$1 = vr$15;
	if( XEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$249;
	{
		goto label$243;
	}
	label$249:;
	label$248:;
	int64 vr$16 = LEXGETTOKEN( 0ll );
	if( vr$16 == 44ll ) goto label$251;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$250;
	label$251:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$250:;
	struct $7ASTNODE* vr$17 = HMATCHEXPR( -1ll );
	YEXPR$1 = vr$17;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$253;
	{
		goto label$243;
	}
	label$253:;
	label$252:;
	int64 vr$18 = LEXGETTOKEN( 0ll );
	if( vr$18 == 41ll ) goto label$255;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$254;
	label$255:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$254:;
	int64 vr$19 = LEXGETTOKEN( 0ll );
	if( vr$19 == 44ll ) goto label$257;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$256;
	label$257:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$256:;
	struct $7ASTNODE* vr$20 = HMATCHEXPR( -1ll );
	SEXPR$1 = vr$20;
	if( SEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$259;
	{
		goto label$243;
	}
	label$259:;
	label$258:;
	CEXPR$1 = (struct $7ASTNODE*)0ull;
	FEXPR$1 = (struct $7ASTNODE*)0ull;
	ALPHAEXPR$1 = (struct $7ASTNODE*)0ull;
	FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
	PARAMEXPR$1 = (struct $7ASTNODE*)0ull;
	MODE$1 = 0ll;
	int64 vr$21 = HMATCH( 44ll, 0ll );
	if( vr$21 == 0ll ) goto label$261;
	{
		struct $7ASTNODE* vr$22 = CEXPRESSION(  );
		CEXPR$1 = vr$22;
		int64 vr$23 = HMATCH( 44ll, 0ll );
		if( vr$23 == 0ll ) goto label$263;
		{
			struct $7ASTNODE* vr$24 = HFBIMAGEEXPR( -1ll, (struct $7ASTNODE**)0ull );
			FEXPR$1 = vr$24;
			int64 vr$25 = HMATCH( 44ll, 0ll );
			if( vr$25 == 0ll ) goto label$265;
			{
				int64 vr$30 = HGETMODE( &MODE$1, &ALPHAEXPR$1, &FUNCEXPR$1, &PARAMEXPR$1 );
				if( vr$30 != 0ll ) goto label$267;
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
	if( CEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$269;
	{
		struct $7ASTNODE* vr$31 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		CEXPR$1 = vr$31;
		FLAGS$1 = FLAGS$1 | 2147483648ll;
	}
	label$269:;
	label$268:;
	int64 vr$33 = RTLGFXDRAWSTRING( TEXPR$1, XEXPR$1, YEXPR$1, SEXPR$1, CEXPR$1, FEXPR$1, FLAGS$1, MODE$1, ALPHAEXPR$1, FUNCEXPR$1, PARAMEXPR$1 );
	fb$result$1 = vr$33;
	label$243:;
	return fb$result$1;
}

int64 CGFXDRAW( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$270:;
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 8ll );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 8ll );
	fb$result$1 = 0ll;
	int64 vr$3 = HMATCH( 369ll, 2048ll );
	if( vr$3 == 0ll ) goto label$273;
	{
		int64 vr$4 = CGFXDRAWSTRING(  );
		fb$result$1 = vr$4;
		goto label$271;
	}
	label$273:;
	label$272:;
	struct $7ASTNODE* vr$5 = CEXPRESSIONWITHNIDXARRAY( -1ll );
	EXPR1$1 = vr$5;
	if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$275;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		goto label$271;
	}
	label$275:;
	label$274:;
	int64 vr$6 = HMATCH( 44ll, 0ll );
	if( vr$6 == 0ll ) goto label$277;
	{
		struct $7ASTNODE* vr$7 = HCHECKFBIMAGEEXPR( EXPR1$1, 0ll, (struct $7ASTNODE**)0ull );
		EXPR1$1 = vr$7;
		struct $7ASTNODE* vr$8 = HMATCHEXPR( -1ll );
		EXPR2$1 = vr$8;
		if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$279;
		{
			goto label$271;
		}
		label$279:;
		label$278:;
	}
	goto label$276;
	label$277:;
	{
		if( *(int64*)EXPR1$1 != 25ll ) goto label$281;
		{
			ERRREPORT( 73ll, -1ll, (uint8*)0ull );
			goto label$271;
		}
		label$281:;
		label$280:;
		EXPR2$1 = EXPR1$1;
		EXPR1$1 = (struct $7ASTNODE*)0ull;
	}
	label$276:;
	int64 vr$10 = RTLGFXDRAW( EXPR1$1, EXPR2$1 );
	fb$result$1 = vr$10;
	label$271:;
	return fb$result$1;
}

int64 CGFXVIEW( int64 ISVIEW$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$282:;
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 8ll );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 8ll );
	struct $7ASTNODE* FILLEXPR$1;
	__builtin_memset( &FILLEXPR$1, 0, 8ll );
	struct $7ASTNODE* BORDEXPR$1;
	__builtin_memset( &BORDEXPR$1, 0, 8ll );
	fb$result$1 = 0ll;
	{
		int64 TMP$114$2;
		int64 vr$8 = LEXGETTOKEN( 0ll );
		TMP$114$2 = vr$8;
		if( TMP$114$2 == 510ll ) goto label$286;
		label$287:;
		if( TMP$114$2 != 511ll ) goto label$285;
		label$286:;
		{
			LEXSKIPTOKEN( 2048ll );
			FLAGS$1 = 1ll;
		}
		goto label$284;
		label$285:;
		{
			FLAGS$1 = 0ll;
		}
		label$288:;
		label$284:;
	}
	X1EXPR$1 = (struct $7ASTNODE*)0ull;
	Y1EXPR$1 = (struct $7ASTNODE*)0ull;
	X2EXPR$1 = (struct $7ASTNODE*)0ull;
	Y2EXPR$1 = (struct $7ASTNODE*)0ull;
	FILLEXPR$1 = (struct $7ASTNODE*)0ull;
	BORDEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$9 = HMATCH( 40ll, 0ll );
	if( vr$9 == 0ll ) goto label$290;
	{
		struct $7ASTNODE* vr$10 = HMATCHEXPR( -1ll );
		X1EXPR$1 = vr$10;
		if( X1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$292;
		{
			goto label$283;
		}
		label$292:;
		label$291:;
		int64 vr$11 = LEXGETTOKEN( 0ll );
		if( vr$11 == 44ll ) goto label$294;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$293;
		label$294:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$293:;
		struct $7ASTNODE* vr$12 = HMATCHEXPR( -1ll );
		Y1EXPR$1 = vr$12;
		if( Y1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$296;
		{
			goto label$283;
		}
		label$296:;
		label$295:;
		int64 vr$13 = LEXGETTOKEN( 0ll );
		if( vr$13 == 41ll ) goto label$298;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$297;
		label$298:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$297:;
		int64 vr$14 = HMATCH( 45ll, 0ll );
		if( vr$14 != 0ll ) goto label$300;
		{
			ERRREPORT( 15ll, 0ll, (uint8*)0ull );
			goto label$283;
		}
		label$300:;
		label$299:;
		int64 vr$15 = LEXGETTOKEN( 0ll );
		if( vr$15 == 40ll ) goto label$302;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$301;
		label$302:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$301:;
		struct $7ASTNODE* vr$16 = HMATCHEXPR( -1ll );
		X2EXPR$1 = vr$16;
		if( X2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$304;
		{
			goto label$283;
		}
		label$304:;
		label$303:;
		int64 vr$17 = LEXGETTOKEN( 0ll );
		if( vr$17 == 44ll ) goto label$306;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$305;
		label$306:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$305:;
		struct $7ASTNODE* vr$18 = HMATCHEXPR( -1ll );
		Y2EXPR$1 = vr$18;
		if( Y2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$308;
		{
			goto label$283;
		}
		label$308:;
		label$307:;
		int64 vr$19 = LEXGETTOKEN( 0ll );
		if( vr$19 == 41ll ) goto label$310;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$309;
		label$310:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$309:;
		if( ISVIEW$1 == 0ll ) goto label$312;
		{
			FLAGS$1 = FLAGS$1 | 3221225472ll;
			int64 vr$21 = HMATCH( 44ll, 0ll );
			if( vr$21 == 0ll ) goto label$314;
			{
				struct $7ASTNODE* vr$22 = CEXPRESSION(  );
				FILLEXPR$1 = vr$22;
				if( FILLEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$316;
				{
					FLAGS$1 = FLAGS$1 & -2147483649ll;
				}
				label$316:;
				label$315:;
				int64 vr$24 = HMATCH( 44ll, 0ll );
				if( vr$24 == 0ll ) goto label$318;
				{
					struct $7ASTNODE* vr$25 = HMATCHEXPR( -1ll );
					BORDEXPR$1 = vr$25;
					if( BORDEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$320;
					{
						goto label$283;
					}
					label$320:;
					label$319:;
					FLAGS$1 = FLAGS$1 & -1073741825ll;
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
	if( ISVIEW$1 == 0ll ) goto label$322;
	{
		int64 vr$27 = RTLGFXVIEW( X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, FILLEXPR$1, BORDEXPR$1, FLAGS$1 );
		fb$result$1 = vr$27;
	}
	goto label$321;
	label$322:;
	{
		int64 vr$28 = RTLGFXWINDOW( X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, FLAGS$1 );
		fb$result$1 = vr$28;
	}
	label$321:;
	label$283:;
	return fb$result$1;
}

int64 CGFXPALETTE( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$323:;
	struct $7ASTNODE* ARRAYEXPR$1;
	__builtin_memset( &ARRAYEXPR$1, 0, 8ll );
	struct $7ASTNODE* ATTEXPR$1;
	__builtin_memset( &ATTEXPR$1, 0, 8ll );
	struct $7ASTNODE* REXPR$1;
	__builtin_memset( &REXPR$1, 0, 8ll );
	struct $7ASTNODE* GEXPR$1;
	__builtin_memset( &GEXPR$1, 0, 8ll );
	struct $7ASTNODE* BEXPR$1;
	__builtin_memset( &BEXPR$1, 0, 8ll );
	int64 ISGET$1;
	__builtin_memset( &ISGET$1, 0, 8ll );
	int64 DPTRSIZE$1;
	__builtin_memset( &DPTRSIZE$1, 0, 8ll );
	fb$result$1 = 0ll;
	int64 vr$8 = HMATCHIDORKW( (uint8*)"GET", 2048ll );
	ISGET$1 = vr$8;
	int64 vr$9 = HMATCH( 287ll, 2048ll );
	if( vr$9 == 0ll ) goto label$326;
	{
		int64 TMP$116$2;
		struct $7ASTNODE* vr$11 = HFBIMAGEEXPR( ~ISGET$1, (struct $7ASTNODE**)0ull );
		ARRAYEXPR$1 = vr$11;
		if( ARRAYEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$328;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			goto label$324;
		}
		label$328:;
		label$327:;
		if( ((((((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 480ll) + -32ll)) | ((((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | ((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 32505856ll)) & 480ll) == 0ll ) goto label$329;
		TMP$116$2 = 24ll;
		goto label$367;
		label$329:;
		TMP$116$2 = (((((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 480ll) + -32ll)) | ((((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | ((*(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll) & 32505856ll)) & 31ll;
		label$367:;
		DPTRSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$2 * 56ll)) + 8ll);
		if( ((int64)-(DPTRSIZE$1 != *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 624ll)) & (int64)-(DPTRSIZE$1 != *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 736ll))) == 0ll ) goto label$331;
		{
			DPTRSIZE$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 456ll);
		}
		label$331:;
		label$330:;
		int64 vr$55 = RTLGFXPALETTEUSING( ARRAYEXPR$1, ISGET$1, (int64)-(DPTRSIZE$1 == *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 736ll)) );
		fb$result$1 = vr$55;
	}
	goto label$325;
	label$326:;
	{
		ATTEXPR$1 = (struct $7ASTNODE*)0ull;
		REXPR$1 = (struct $7ASTNODE*)0ull;
		GEXPR$1 = (struct $7ASTNODE*)0ull;
		BEXPR$1 = (struct $7ASTNODE*)0ull;
		struct $7ASTNODE* vr$56 = CEXPRESSION(  );
		ATTEXPR$1 = vr$56;
		if( ATTEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$333;
		{
			int64 vr$57 = LEXGETTOKEN( 0ll );
			if( vr$57 == 44ll ) goto label$335;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$334;
			label$335:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$334:;
			if( ISGET$1 == 0ll ) goto label$337;
			{
				struct $7ASTNODE* vr$58 = CVARORDEREF( 0ll );
				REXPR$1 = vr$58;
				if( REXPR$1 != (struct $7ASTNODE*)0ull ) goto label$339;
				{
					ERRREPORT( 14ll, 0ll, (uint8*)0ull );
					goto label$324;
				}
				label$339:;
				label$338:;
			}
			goto label$336;
			label$337:;
			{
				struct $7ASTNODE* vr$59 = HMATCHEXPR( -1ll );
				REXPR$1 = vr$59;
				if( REXPR$1 != (struct $7ASTNODE*)0ull ) goto label$341;
				{
					goto label$324;
				}
				label$341:;
				label$340:;
			}
			label$336:;
			int64 vr$60 = HMATCH( 44ll, 0ll );
			if( vr$60 == 0ll ) goto label$343;
			{
				if( ISGET$1 == 0ll ) goto label$345;
				{
					struct $7ASTNODE* vr$61 = CVARORDEREF( 0ll );
					GEXPR$1 = vr$61;
					if( GEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$347;
					{
						ERRREPORT( 14ll, 0ll, (uint8*)0ull );
						goto label$324;
					}
					label$347:;
					label$346:;
				}
				goto label$344;
				label$345:;
				{
					struct $7ASTNODE* vr$62 = HMATCHEXPR( -1ll );
					GEXPR$1 = vr$62;
					if( GEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$349;
					{
						goto label$324;
					}
					label$349:;
					label$348:;
				}
				label$344:;
				int64 vr$63 = LEXGETTOKEN( 0ll );
				if( vr$63 == 44ll ) goto label$351;
				{
					ERRREPORT( 16ll, 0ll, (uint8*)0ull );
				}
				goto label$350;
				label$351:;
				{
					LEXSKIPTOKEN( 0ll );
				}
				label$350:;
				if( ISGET$1 == 0ll ) goto label$353;
				{
					struct $7ASTNODE* vr$64 = CVARORDEREF( 0ll );
					BEXPR$1 = vr$64;
					if( BEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$355;
					{
						ERRREPORT( 14ll, 0ll, (uint8*)0ull );
						goto label$324;
					}
					label$355:;
					label$354:;
				}
				goto label$352;
				label$353:;
				{
					struct $7ASTNODE* vr$65 = HMATCHEXPR( -1ll );
					BEXPR$1 = vr$65;
					if( BEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$357;
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
			if( ISGET$1 == 0ll ) goto label$359;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				goto label$324;
			}
			label$359:;
			label$358:;
		}
		label$332:;
		int64 HAS_CONST$2;
		HAS_CONST$2 = 0ll;
		if( ISGET$1 == 0ll ) goto label$361;
		{
			int64 TMP$117$3;
			int64 TMP$118$3;
			int64 TMP$119$3;
			if( REXPR$1 == (struct $7ASTNODE*)0ull ) goto label$362;
			TMP$117$3 = (int64)-((*(int64*)((uint8*)REXPR$1 + 8ll) & 512ll) != 0ll);
			goto label$368;
			label$362:;
			TMP$117$3 = 0ll;
			label$368:;
			HAS_CONST$2 = HAS_CONST$2 | TMP$117$3;
			if( GEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$363;
			TMP$118$3 = (int64)-((*(int64*)((uint8*)GEXPR$1 + 8ll) & 512ll) != 0ll);
			goto label$369;
			label$363:;
			TMP$118$3 = 0ll;
			label$369:;
			HAS_CONST$2 = HAS_CONST$2 | TMP$118$3;
			if( BEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$364;
			TMP$119$3 = (int64)-((*(int64*)((uint8*)BEXPR$1 + 8ll) & 512ll) != 0ll);
			goto label$370;
			label$364:;
			TMP$119$3 = 0ll;
			label$370:;
			HAS_CONST$2 = HAS_CONST$2 | TMP$119$3;
		}
		label$361:;
		label$360:;
		if( HAS_CONST$2 == 0ll ) goto label$366;
		{
			ERRREPORT( 119ll, -1ll, (uint8*)0ull );
		}
		label$366:;
		label$365:;
		int64 vr$78 = RTLGFXPALETTE( ATTEXPR$1, REXPR$1, GEXPR$1, BEXPR$1, ISGET$1 );
		fb$result$1 = vr$78;
	}
	label$325:;
	label$324:;
	return fb$result$1;
}

int64 CGFXPUT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$371:;
	int64 COORDTYPE$1;
	__builtin_memset( &COORDTYPE$1, 0, 8ll );
	int64 MODE$1;
	__builtin_memset( &MODE$1, 0, 8ll );
	int64 EXPECTMODE$1;
	__builtin_memset( &EXPECTMODE$1, 0, 8ll );
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 8ll );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 8ll );
	struct $7ASTNODE* ARRAYEXPR$1;
	__builtin_memset( &ARRAYEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	struct $7ASTNODE* ALPHAEXPR$1;
	__builtin_memset( &ALPHAEXPR$1, 0, 8ll );
	struct $7ASTNODE* FUNCEXPR$1;
	__builtin_memset( &FUNCEXPR$1, 0, 8ll );
	struct $7ASTNODE* PARAMEXPR$1;
	__builtin_memset( &PARAMEXPR$1, 0, 8ll );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 8ll );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 8ll );
	struct $8FBSYMBOL* ARG1$1;
	__builtin_memset( &ARG1$1, 0, 8ll );
	struct $8FBSYMBOL* ARG2$1;
	__builtin_memset( &ARG2$1, 0, 8ll );
	fb$result$1 = 0ll;
	ALPHAEXPR$1 = (struct $7ASTNODE*)0ull;
	FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
	PARAMEXPR$1 = (struct $7ASTNODE*)0ull;
	X1EXPR$1 = (struct $7ASTNODE*)0ull;
	struct $7ASTNODE* vr$17 = HFBIMAGEEXPRINFRONTOFCOORD( 0ll );
	TEXPR$1 = vr$17;
	int64 vr$18 = HMATCH( 282ll, 2048ll );
	if( vr$18 == 0ll ) goto label$374;
	{
		COORDTYPE$1 = 2ll;
	}
	goto label$373;
	label$374:;
	{
		COORDTYPE$1 = 0ll;
	}
	label$373:;
	int64 vr$19 = LEXGETTOKEN( 0ll );
	if( vr$19 == 40ll ) goto label$376;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$375;
	label$376:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$375:;
	struct $7ASTNODE* vr$20 = HMATCHEXPR( -1ll );
	XEXPR$1 = vr$20;
	if( XEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$378;
	{
		goto label$372;
	}
	label$378:;
	label$377:;
	int64 vr$21 = LEXGETTOKEN( 0ll );
	if( vr$21 == 44ll ) goto label$380;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$379;
	label$380:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$379:;
	struct $7ASTNODE* vr$22 = HMATCHEXPR( -1ll );
	YEXPR$1 = vr$22;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$382;
	{
		goto label$372;
	}
	label$382:;
	label$381:;
	int64 vr$23 = LEXGETTOKEN( 0ll );
	if( vr$23 == 41ll ) goto label$384;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$383;
	label$384:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$383:;
	int64 vr$24 = LEXGETTOKEN( 0ll );
	if( vr$24 == 44ll ) goto label$386;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$385;
	label$386:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$385:;
	struct $7ASTNODE* vr$25 = HFBIMAGEEXPR( -1ll, (struct $7ASTNODE**)0ull );
	ARRAYEXPR$1 = vr$25;
	if( ARRAYEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$388;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		goto label$372;
	}
	label$388:;
	label$387:;
	MODE$1 = 5ll;
	int64 vr$26 = HMATCH( 44ll, 0ll );
	if( vr$26 == 0ll ) goto label$390;
	{
		EXPECTMODE$1 = -1ll;
		int64 vr$27 = HMATCH( 40ll, 0ll );
		if( vr$27 == 0ll ) goto label$392;
		{
			struct $7ASTNODE* vr$28 = HMATCHEXPR( -1ll );
			X1EXPR$1 = vr$28;
			if( X1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$394;
			{
				goto label$372;
			}
			label$394:;
			label$393:;
			int64 vr$29 = LEXGETTOKEN( 0ll );
			if( vr$29 == 44ll ) goto label$396;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$395;
			label$396:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$395:;
			struct $7ASTNODE* vr$30 = HMATCHEXPR( -1ll );
			Y1EXPR$1 = vr$30;
			if( Y1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$398;
			{
				goto label$372;
			}
			label$398:;
			label$397:;
			int64 vr$31 = LEXGETTOKEN( 0ll );
			if( vr$31 == 41ll ) goto label$400;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$399;
			label$400:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$399:;
			int64 vr$32 = HMATCH( 45ll, 0ll );
			if( vr$32 != 0ll ) goto label$402;
			{
				ERRREPORT( 15ll, 0ll, (uint8*)0ull );
				goto label$372;
			}
			label$402:;
			label$401:;
			int64 vr$33 = HMATCH( 282ll, 2048ll );
			if( vr$33 == 0ll ) goto label$404;
			{
				if( COORDTYPE$1 != 2ll ) goto label$406;
				{
					COORDTYPE$1 = 3ll;
				}
				goto label$405;
				label$406:;
				{
					COORDTYPE$1 = 1ll;
				}
				label$405:;
			}
			label$404:;
			label$403:;
			int64 vr$34 = LEXGETTOKEN( 0ll );
			if( vr$34 == 40ll ) goto label$408;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$407;
			label$408:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$407:;
			struct $7ASTNODE* vr$35 = HMATCHEXPR( -1ll );
			X2EXPR$1 = vr$35;
			if( X2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$410;
			{
				goto label$372;
			}
			label$410:;
			label$409:;
			int64 vr$36 = LEXGETTOKEN( 0ll );
			if( vr$36 == 44ll ) goto label$412;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$411;
			label$412:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$411:;
			struct $7ASTNODE* vr$37 = HMATCHEXPR( -1ll );
			Y2EXPR$1 = vr$37;
			if( Y2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$414;
			{
				goto label$372;
			}
			label$414:;
			label$413:;
			int64 vr$38 = LEXGETTOKEN( 0ll );
			if( vr$38 == 41ll ) goto label$416;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$415;
			label$416:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$415:;
			int64 vr$39 = HMATCH( 44ll, 0ll );
			if( vr$39 != 0ll ) goto label$418;
			{
				EXPECTMODE$1 = 0ll;
			}
			label$418:;
			label$417:;
		}
		label$392:;
		label$391:;
		if( EXPECTMODE$1 == 0ll ) goto label$420;
		{
			int64 vr$44 = HGETMODE( &MODE$1, &ALPHAEXPR$1, &FUNCEXPR$1, &PARAMEXPR$1 );
			if( vr$44 != 0ll ) goto label$422;
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
	int64 vr$45 = RTLGFXPUT( TEXPR$1, XEXPR$1, YEXPR$1, ARRAYEXPR$1, X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, MODE$1, ALPHAEXPR$1, FUNCEXPR$1, PARAMEXPR$1, COORDTYPE$1 );
	fb$result$1 = vr$45;
	label$372:;
	return fb$result$1;
}

int64 CGFXGET( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$423:;
	int64 COORDTYPE$1;
	__builtin_memset( &COORDTYPE$1, 0, 8ll );
	struct $7ASTNODE* X1EXPR$1;
	__builtin_memset( &X1EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y1EXPR$1;
	__builtin_memset( &Y1EXPR$1, 0, 8ll );
	struct $7ASTNODE* X2EXPR$1;
	__builtin_memset( &X2EXPR$1, 0, 8ll );
	struct $7ASTNODE* Y2EXPR$1;
	__builtin_memset( &Y2EXPR$1, 0, 8ll );
	struct $7ASTNODE* ARRAYEXPR$1;
	__builtin_memset( &ARRAYEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	struct $7ASTNODE* DESCEXPR$1;
	__builtin_memset( &DESCEXPR$1, 0, 8ll );
	fb$result$1 = 0ll;
	struct $7ASTNODE* vr$9 = HFBIMAGEEXPRINFRONTOFCOORD( -1ll );
	TEXPR$1 = vr$9;
	int64 vr$10 = HMATCH( 282ll, 2048ll );
	if( vr$10 == 0ll ) goto label$426;
	{
		COORDTYPE$1 = 5ll;
	}
	goto label$425;
	label$426:;
	{
		COORDTYPE$1 = 4ll;
	}
	label$425:;
	int64 vr$11 = LEXGETTOKEN( 0ll );
	if( vr$11 == 40ll ) goto label$428;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$427;
	label$428:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$427:;
	struct $7ASTNODE* vr$12 = HMATCHEXPR( -1ll );
	X1EXPR$1 = vr$12;
	if( X1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$430;
	{
		goto label$424;
	}
	label$430:;
	label$429:;
	int64 vr$13 = LEXGETTOKEN( 0ll );
	if( vr$13 == 44ll ) goto label$432;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$431;
	label$432:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$431:;
	struct $7ASTNODE* vr$14 = HMATCHEXPR( -1ll );
	Y1EXPR$1 = vr$14;
	if( Y1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$434;
	{
		goto label$424;
	}
	label$434:;
	label$433:;
	int64 vr$15 = LEXGETTOKEN( 0ll );
	if( vr$15 == 41ll ) goto label$436;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$435;
	label$436:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$435:;
	int64 vr$16 = HMATCH( 45ll, 0ll );
	if( vr$16 != 0ll ) goto label$438;
	{
		ERRREPORT( 15ll, 0ll, (uint8*)0ull );
		goto label$424;
	}
	label$438:;
	label$437:;
	int64 vr$17 = HMATCH( 282ll, 2048ll );
	if( vr$17 == 0ll ) goto label$440;
	{
		if( COORDTYPE$1 != 5ll ) goto label$442;
		{
			COORDTYPE$1 = 3ll;
		}
		goto label$441;
		label$442:;
		{
			COORDTYPE$1 = 1ll;
		}
		label$441:;
	}
	goto label$439;
	label$440:;
	{
		if( COORDTYPE$1 != 5ll ) goto label$444;
		{
			COORDTYPE$1 = 2ll;
		}
		goto label$443;
		label$444:;
		{
			COORDTYPE$1 = 0ll;
		}
		label$443:;
	}
	label$439:;
	int64 vr$18 = LEXGETTOKEN( 0ll );
	if( vr$18 == 40ll ) goto label$446;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$445;
	label$446:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$445:;
	struct $7ASTNODE* vr$19 = HMATCHEXPR( -1ll );
	X2EXPR$1 = vr$19;
	if( X2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$448;
	{
		goto label$424;
	}
	label$448:;
	label$447:;
	int64 vr$20 = LEXGETTOKEN( 0ll );
	if( vr$20 == 44ll ) goto label$450;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$449;
	label$450:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$449:;
	struct $7ASTNODE* vr$21 = HMATCHEXPR( -1ll );
	Y2EXPR$1 = vr$21;
	if( Y2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$452;
	{
		goto label$424;
	}
	label$452:;
	label$451:;
	int64 vr$22 = LEXGETTOKEN( 0ll );
	if( vr$22 == 41ll ) goto label$454;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$453;
	label$454:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$453:;
	int64 vr$23 = LEXGETTOKEN( 0ll );
	if( vr$23 == 44ll ) goto label$456;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$455;
	label$456:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$455:;
	struct $7ASTNODE* vr$25 = HFBIMAGEEXPR( 0ll, &DESCEXPR$1 );
	ARRAYEXPR$1 = vr$25;
	if( ARRAYEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$458;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		goto label$424;
	}
	label$458:;
	label$457:;
	int64 vr$26 = RTLGFXGET( TEXPR$1, X1EXPR$1, Y1EXPR$1, X2EXPR$1, Y2EXPR$1, ARRAYEXPR$1, COORDTYPE$1, DESCEXPR$1 );
	fb$result$1 = vr$26;
	label$424:;
	return fb$result$1;
}

int64 CGFXSCREEN( int64 ISQB$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$459:;
	fb$result$1 = 0ll;
	if( ISQB$1 != 0ll ) goto label$462;
	{
		struct $7ASTNODE* MEXPR$2;
		struct $7ASTNODE* vr$1 = CEXPRESSION(  );
		MEXPR$2 = vr$1;
		struct $7ASTNODE* DEXPR$2;
		DEXPR$2 = (struct $7ASTNODE*)0ull;
		int64 vr$2 = HMATCH( 44ll, 0ll );
		if( vr$2 == 0ll ) goto label$464;
		{
			struct $7ASTNODE* vr$3 = CEXPRESSION(  );
			DEXPR$2 = vr$3;
		}
		label$464:;
		label$463:;
		struct $7ASTNODE* PEXPR$2;
		PEXPR$2 = (struct $7ASTNODE*)0ull;
		int64 vr$4 = HMATCH( 44ll, 0ll );
		if( vr$4 == 0ll ) goto label$466;
		{
			struct $7ASTNODE* vr$5 = CEXPRESSION(  );
			PEXPR$2 = vr$5;
		}
		label$466:;
		label$465:;
		if( MEXPR$2 != (struct $7ASTNODE*)0ull ) goto label$468;
		{
			struct $7ASTNODE* vr$6 = RTLPAGESET( DEXPR$2, PEXPR$2, 0ll );
			fb$result$1 = (int64)-(vr$6 != (struct $7ASTNODE*)0ull);
			goto label$460;
		}
		label$468:;
		label$467:;
		struct $7ASTNODE* FEXPR$2;
		FEXPR$2 = (struct $7ASTNODE*)0ull;
		int64 vr$8 = HMATCH( 44ll, 0ll );
		if( vr$8 == 0ll ) goto label$470;
		{
			struct $7ASTNODE* vr$9 = CEXPRESSION(  );
			FEXPR$2 = vr$9;
		}
		label$470:;
		label$469:;
		struct $7ASTNODE* REXPR$2;
		REXPR$2 = (struct $7ASTNODE*)0ull;
		int64 vr$10 = HMATCH( 44ll, 0ll );
		if( vr$10 == 0ll ) goto label$472;
		{
			struct $7ASTNODE* vr$11 = CEXPRESSION(  );
			REXPR$2 = vr$11;
		}
		label$472:;
		label$471:;
		int64 vr$12 = RTLGFXSCREENSET( MEXPR$2, DEXPR$2, PEXPR$2, FEXPR$2, REXPR$2 );
		fb$result$1 = vr$12;
	}
	goto label$461;
	label$462:;
	{
		struct $7ASTNODE* MODE$2;
		struct $7ASTNODE* vr$13 = CEXPRESSION(  );
		MODE$2 = vr$13;
		int64 vr$14 = HMATCH( 44ll, 0ll );
		if( vr$14 == 0ll ) goto label$474;
		{
			struct $7ASTNODE* CSWITCH$3;
			struct $7ASTNODE* vr$15 = CEXPRESSION(  );
			CSWITCH$3 = vr$15;
			if( CSWITCH$3 == (struct $7ASTNODE*)0ull ) goto label$476;
			{
				ASTDELTREE( CSWITCH$3 );
			}
			label$476:;
			label$475:;
		}
		label$474:;
		label$473:;
		struct $7ASTNODE* ACTIVE$2;
		ACTIVE$2 = (struct $7ASTNODE*)0ull;
		int64 vr$16 = HMATCH( 44ll, 0ll );
		if( vr$16 == 0ll ) goto label$478;
		{
			struct $7ASTNODE* vr$17 = CEXPRESSION(  );
			ACTIVE$2 = vr$17;
		}
		label$478:;
		label$477:;
		struct $7ASTNODE* VISIBLE$2;
		VISIBLE$2 = (struct $7ASTNODE*)0ull;
		int64 vr$18 = HMATCH( 44ll, 0ll );
		if( vr$18 == 0ll ) goto label$480;
		{
			struct $7ASTNODE* vr$19 = CEXPRESSION(  );
			VISIBLE$2 = vr$19;
		}
		label$480:;
		label$479:;
		if( MODE$2 != (struct $7ASTNODE*)0ull ) goto label$482;
		{
			struct $7ASTNODE* vr$20 = RTLPAGESET( ACTIVE$2, VISIBLE$2, 0ll );
			fb$result$1 = (int64)-(vr$20 != (struct $7ASTNODE*)0ull);
		}
		goto label$481;
		label$482:;
		{
			int64 vr$22 = RTLGFXSCREENSETQB( MODE$2, ACTIVE$2, VISIBLE$2 );
			fb$result$1 = vr$22;
		}
		label$481:;
	}
	label$461:;
	label$460:;
	return fb$result$1;
}

int64 CGFXPOINT( struct $7ASTNODE** FUNCEXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$483:;
	struct $7ASTNODE* XEXPR$1;
	__builtin_memset( &XEXPR$1, 0, 8ll );
	struct $7ASTNODE* YEXPR$1;
	__builtin_memset( &YEXPR$1, 0, 8ll );
	struct $7ASTNODE* TEXPR$1;
	__builtin_memset( &TEXPR$1, 0, 8ll );
	fb$result$1 = 0ll;
	int64 vr$4 = LEXGETTOKEN( 0ll );
	if( vr$4 == 40ll ) goto label$486;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$485;
	label$486:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$485:;
	struct $7ASTNODE* vr$5 = HMATCHEXPR( -1ll );
	XEXPR$1 = vr$5;
	if( XEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$488;
	{
		goto label$484;
	}
	label$488:;
	label$487:;
	YEXPR$1 = (struct $7ASTNODE*)0ull;
	TEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$6 = HMATCH( 44ll, 0ll );
	if( vr$6 == 0ll ) goto label$490;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( -1ll );
		YEXPR$1 = vr$7;
		if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$492;
		{
			goto label$484;
		}
		label$492:;
		label$491:;
		int64 vr$8 = HMATCH( 44ll, 0ll );
		if( vr$8 == 0ll ) goto label$494;
		{
			struct $7ASTNODE* vr$9 = HFBIMAGEEXPR( -1ll, (struct $7ASTNODE**)0ull );
			TEXPR$1 = vr$9;
			if( TEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$496;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
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
	int64 vr$10 = LEXGETTOKEN( 0ll );
	if( vr$10 == 41ll ) goto label$498;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$497;
	label$498:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$497:;
	struct $7ASTNODE* vr$11 = RTLGFXPOINT( TEXPR$1, XEXPR$1, YEXPR$1 );
	*FUNCEXPR$1 = vr$11;
	fb$result$1 = (int64)-(*FUNCEXPR$1 != (struct $7ASTNODE*)0ull);
	label$484:;
	return fb$result$1;
}

int64 CGFXIMAGECREATE( struct $7ASTNODE** FUNCEXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$499:;
	struct $7ASTNODE* WEXPR$1;
	__builtin_memset( &WEXPR$1, 0, 8ll );
	struct $7ASTNODE* HEXPR$1;
	__builtin_memset( &HEXPR$1, 0, 8ll );
	struct $7ASTNODE* CEXPR$1;
	__builtin_memset( &CEXPR$1, 0, 8ll );
	struct $7ASTNODE* DEXPR$1;
	__builtin_memset( &DEXPR$1, 0, 8ll );
	int64 FLAGS$1;
	__builtin_memset( &FLAGS$1, 0, 8ll );
	fb$result$1 = 0ll;
	int64 vr$6 = LEXGETTOKEN( 0ll );
	if( vr$6 == 40ll ) goto label$502;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$501;
	label$502:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$501:;
	struct $7ASTNODE* vr$7 = HMATCHEXPR( -1ll );
	WEXPR$1 = vr$7;
	if( WEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$504;
	{
		goto label$500;
	}
	label$504:;
	label$503:;
	int64 vr$8 = LEXGETTOKEN( 0ll );
	if( vr$8 == 44ll ) goto label$506;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$505;
	label$506:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$505:;
	struct $7ASTNODE* vr$9 = HMATCHEXPR( -1ll );
	HEXPR$1 = vr$9;
	if( HEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$508;
	{
		goto label$500;
	}
	label$508:;
	label$507:;
	CEXPR$1 = (struct $7ASTNODE*)0ull;
	DEXPR$1 = (struct $7ASTNODE*)0ull;
	FLAGS$1 = 2147483648ll;
	int64 vr$10 = HMATCH( 44ll, 0ll );
	if( vr$10 == 0ll ) goto label$510;
	{
		struct $7ASTNODE* vr$11 = CEXPRESSION(  );
		CEXPR$1 = vr$11;
		if( CEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$512;
		{
			FLAGS$1 = 0ll;
		}
		label$512:;
		label$511:;
		int64 vr$12 = HMATCH( 44ll, 0ll );
		if( vr$12 == 0ll ) goto label$514;
		{
			struct $7ASTNODE* vr$13 = HMATCHEXPR( -1ll );
			DEXPR$1 = vr$13;
			if( DEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$516;
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
	int64 vr$14 = LEXGETTOKEN( 0ll );
	if( vr$14 == 41ll ) goto label$518;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$517;
	label$518:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$517:;
	struct $7ASTNODE* vr$15 = RTLGFXIMAGECREATE( WEXPR$1, HEXPR$1, CEXPR$1, DEXPR$1, FLAGS$1 );
	*FUNCEXPR$1 = vr$15;
	fb$result$1 = (int64)-(*FUNCEXPR$1 != (struct $7ASTNODE*)0ull);
	label$500:;
	return fb$result$1;
}

int64 CGFXSTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$519:;
	fb$result$1 = 0ll;
	{
		uint64 TMP$120$2;
		TMP$120$2 = (uint64)TK$1;
		goto label$522;
		label$523:;
		{
			int64 vr$1 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$1 != 0ll ) goto label$525;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$525:;
			label$524:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$2 = CGFXPSET( 0ll );
			fb$result$1 = vr$2;
		}
		goto label$521;
		label$526:;
		{
			int64 vr$3 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$3 != 0ll ) goto label$528;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$528:;
			label$527:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$4 = CGFXPSET( -1ll );
			fb$result$1 = vr$4;
		}
		goto label$521;
		label$529:;
		{
			int64 vr$5 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$5 != 0ll ) goto label$531;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$531:;
			label$530:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$6 = CGFXLINE(  );
			fb$result$1 = vr$6;
		}
		goto label$521;
		label$532:;
		{
			int64 vr$7 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$7 != 0ll ) goto label$534;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$534:;
			label$533:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$8 = CGFXCIRCLE(  );
			fb$result$1 = vr$8;
		}
		goto label$521;
		label$535:;
		{
			int64 vr$9 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$9 != 0ll ) goto label$537;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$537:;
			label$536:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$10 = CGFXPAINT(  );
			fb$result$1 = vr$10;
		}
		goto label$521;
		label$538:;
		{
			int64 vr$11 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$11 != 0ll ) goto label$540;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$540:;
			label$539:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$12 = CGFXDRAW(  );
			fb$result$1 = vr$12;
		}
		goto label$521;
		label$541:;
		{
			int64 vr$13 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$13 != 0ll ) goto label$543;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$543:;
			label$542:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$14 = CGFXVIEW( -1ll );
			fb$result$1 = vr$14;
		}
		goto label$521;
		label$544:;
		{
			int64 vr$15 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$15 != 0ll ) goto label$546;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$546:;
			label$545:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$16 = CGFXVIEW( 0ll );
			fb$result$1 = vr$16;
		}
		goto label$521;
		label$547:;
		{
			int64 vr$17 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$17 != 0ll ) goto label$549;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$549:;
			label$548:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$18 = CGFXPALETTE(  );
			fb$result$1 = vr$18;
		}
		goto label$521;
		label$550:;
		{
			int64 vr$19 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$19 != 0ll ) goto label$552;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$552:;
			label$551:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$20 = CGFXPUT(  );
			fb$result$1 = vr$20;
		}
		goto label$521;
		label$553:;
		{
			int64 vr$21 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$21 != 0ll ) goto label$555;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$555:;
			label$554:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$22 = CGFXGET(  );
			fb$result$1 = vr$22;
		}
		goto label$521;
		label$556:;
		{
			int64 vr$23 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$23 != 0ll ) goto label$558;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$558:;
			label$557:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$24 = CGFXSCREEN( 0ll );
			fb$result$1 = vr$24;
		}
		goto label$521;
		label$559:;
		{
			int64 vr$25 = CCOMPSTMTISALLOWED( 1ll );
			if( vr$25 != 0ll ) goto label$561;
			{
				HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				goto label$520;
			}
			label$561:;
			label$560:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$26 = CGFXSCREEN( -1ll );
			fb$result$1 = vr$26;
		}
		goto label$521;
		label$522:;
		static const void* tmp$121[41ll] = {
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
		if( (TMP$120$2 - 473ull) > 40ull ) goto label$521;
		goto *tmp$121[TMP$120$2 - 473ull];
		label$521:;
	}
	label$520:;
	return fb$result$1;
}

struct $7ASTNODE* CGFXFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$562:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = (struct $7ASTNODE*)0ull;
	{
		if( TK$1 != 506ll ) goto label$565;
		label$566:;
		{
			LEXSKIPTOKEN( 2048ll );
			CGFXPOINT( &EXPR$1 );
		}
		goto label$564;
		label$565:;
		if( TK$1 != 514ll ) goto label$567;
		label$568:;
		{
			LEXSKIPTOKEN( 2048ll );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $7ASTNODE* HMAYBEUDT2PTR( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	$9FB_ERRMSG ERR_NUM$1;
	struct $8FBSYMBOL* CASTPROC$1;
	struct $8FBSYMBOL* vr$2 = SYMBFINDCASTOVLPROC( 32ll, (struct $8FBSYMBOL*)0ull, EXPR$1, &ERR_NUM$1, 0ll );
	CASTPROC$1 = vr$2;
	if( CASTPROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$13;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDCALL( CASTPROC$1, EXPR$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
		EXPR$1 = vr$3;
	}
	goto label$12;
	label$13:;
	{
		if( ERR_NUM$1 == 0ll ) goto label$15;
		{
			ASTDELTREE( EXPR$1 );
			struct $7ASTNODE* vr$4 = ASTNEWCONSTI( 0ll, 32ll, (struct $8FBSYMBOL*)0ull );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	struct $7ASTNODE* VAREXPR$1;
	struct $7ASTNODE* IDXEXPR$1;
	struct $7ASTNODE* DATAOFFSET$1;
	struct $8FBSYMBOL* SYM$1;
	VAREXPR$1 = *(struct $7ASTNODE**)((uint8*)NIDXARRAY$1 + 112ll);
	ASTDELNODE( NIDXARRAY$1 );
	if( *(int64*)VAREXPR$1 != 19ll ) goto label$19;
	{
		fb$result$1 = VAREXPR$1;
		goto label$17;
	}
	label$19:;
	label$18:;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 24ll);
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16384ll) == 0ll ) goto label$21;
	{
		struct $7ASTNODE* vr$6 = ASTNEWVAR( SYM$1, 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$7 = ASTNEWDEREF( vr$6, 8ll, (struct $8FBSYMBOL*)0ull, *(int64*)((uint8*)&SYMB$ + 199176ll) );
		IDXEXPR$1 = vr$7;
		struct $7ASTNODE* vr$9 = ASTNEWVAR( SYM$1, 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$10 = ASTNEWDEREF( vr$9, 8ll, (struct $8FBSYMBOL*)0ull, *(int64*)((uint8*)&SYMB$ + 199200ll) + *(int64*)((uint8*)&SYMB$ + 199216ll) );
		DATAOFFSET$1 = vr$10;
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 80ll), 9ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$13 = ASTNEWBOP( 30ll, DATAOFFSET$1, vr$12, (struct $8FBSYMBOL*)0ull, 1ll );
		DATAOFFSET$1 = vr$13;
		struct $7ASTNODE* vr$14 = ASTNEWBOP( 28ll, IDXEXPR$1, DATAOFFSET$1, (struct $8FBSYMBOL*)0ull, 1ll );
		IDXEXPR$1 = vr$14;
		ASTNEWLOAD( IDXEXPR$1, 8ll, 0ll );
		ASTDELTREE( VAREXPR$1 );
		struct $7ASTNODE* vr$15 = ASTNEWVAR( SYM$1, 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		VAREXPR$1 = vr$15;
	}
	goto label$20;
	label$21:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$22;
	{
		struct $7ASTNODE* vr$19 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll), *(int64*)((uint8*)&SYMB$ + 199176ll), 8ll, (struct $8FBSYMBOL*)0ull );
		IDXEXPR$1 = vr$19;
		struct $7ASTNODE* vr$22 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll), *(int64*)((uint8*)&SYMB$ + 199200ll) + *(int64*)((uint8*)&SYMB$ + 199216ll), 8ll, (struct $8FBSYMBOL*)0ull );
		DATAOFFSET$1 = vr$22;
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 80ll), 9ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$25 = ASTNEWBOP( 30ll, DATAOFFSET$1, vr$24, (struct $8FBSYMBOL*)0ull, 1ll );
		DATAOFFSET$1 = vr$25;
		struct $7ASTNODE* vr$26 = ASTNEWBOP( 28ll, IDXEXPR$1, DATAOFFSET$1, (struct $8FBSYMBOL*)0ull, 1ll );
		IDXEXPR$1 = vr$26;
		struct $7ASTNODE* vr$27 = ASTNEWLOAD( IDXEXPR$1, 8ll, 0ll );
		IDXEXPR$1 = vr$27;
	}
	goto label$20;
	label$22:;
	{
		int64 vr$31 = SYMBCALCLEN( *(int64*)((uint8*)VAREXPR$1 + 8ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll) );
		struct $7ASTNODE* vr$32 = ASTNEWCONSTI( vr$31, 9ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$35 = ASTNEWCONSTI( *(int64*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll), 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$36 = ASTNEWBOP( 30ll, vr$35, vr$32, (struct $8FBSYMBOL*)0ull, 1ll );
		IDXEXPR$1 = vr$36;
	}
	label$20:;
	struct $7ASTNODE* vr$37 = ASTNEWIDX( VAREXPR$1, IDXEXPR$1 );
	fb$result$1 = vr$37;
	label$17:;
	return fb$result$1;
}

static struct $7ASTNODE* HMAYBEARRAYACCESS2PTR( struct $7ASTNODE* EXPR$1, struct $7ASTNODE** PDESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$23:;
	{
		$13AST_NODECLASS TMP$94$2;
		TMP$94$2 = *($13AST_NODECLASS*)EXPR$1;
		if( TMP$94$2 != 18ll ) goto label$26;
		label$27:;
		{
			if( PDESCEXPR$1 == (struct $7ASTNODE**)0ull ) goto label$29;
			{
				struct $7ASTNODE* vr$3 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
				*PDESCEXPR$1 = vr$3;
			}
			label$29:;
			label$28:;
			struct $7ASTNODE* vr$5 = ASTNEWADDROF( EXPR$1 );
			EXPR$1 = vr$5;
		}
		goto label$25;
		label$26:;
		if( TMP$94$2 != 19ll ) goto label$30;
		label$31:;
		{
			int64 vr$7 = SYMBISARRAY( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll) );
			if( vr$7 == 0ll ) goto label$33;
			{
				if( PDESCEXPR$1 == (struct $7ASTNODE**)0ull ) goto label$35;
				{
					int64 vr$8 = ASTHASSIDEFX( EXPR$1 );
					if( vr$8 == 0ll ) goto label$37;
					{
						ERRREPORT( 28ll, -1ll, (uint8*)0ull );
						ASTDELTREE( EXPR$1 );
						struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 32ll, (struct $8FBSYMBOL*)0ull );
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

static struct $7ASTNODE* HCHECKFBIMAGEEXPR( struct $7ASTNODE* EXPR$1, int64 ALLOW_CONST$1, struct $7ASTNODE** PDESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$38:;
	struct $7ASTNODE* vr$1 = ASTREMOVENOCONVCAST( EXPR$1 );
	EXPR$1 = vr$1;
	if( *(int64*)EXPR$1 != 25ll ) goto label$41;
	{
		struct $7ASTNODE* vr$3 = HNIDXARRAY2ARRAYACCESS( EXPR$1 );
		struct $7ASTNODE* vr$4 = HMAYBEARRAYACCESS2PTR( vr$3, PDESCEXPR$1 );
		EXPR$1 = vr$4;
	}
	goto label$40;
	label$41:;
	{
		if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 20ll ) goto label$43;
		{
			struct $7ASTNODE* vr$7 = HMAYBEUDT2PTR( EXPR$1 );
			EXPR$1 = vr$7;
		}
		label$43:;
		label$42:;
		if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) != 0ll ) goto label$45;
		{
			struct $7ASTNODE* vr$10 = HMAYBEARRAYACCESS2PTR( EXPR$1, PDESCEXPR$1 );
			EXPR$1 = vr$10;
		}
		label$45:;
		label$44:;
	}
	label$40:;
	if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) != 0ll ) goto label$47;
	{
		if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 20ll ) goto label$49;
		{
			FBSTRING TMP$97$3;
			FBSTRING TMP$98$3;
			FBSTRING TMP$99$3;
			__builtin_memset( &TMP$99$3, 0, 24ll );
			__builtin_memset( &TMP$97$3, 0, 24ll );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$97$3, (void*)" \x22", 3ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) + 32ll), 0ll );
			__builtin_memset( &TMP$98$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$98$3, (void*)vr$20, -1ll, (void*)".cast() as any ptr\x22", 20ll );
			fb_StrAssign( (void*)&TMP$99$3, -1ll, (void*)vr$23, -1ll, 0 );
			ERRREPORT( 99ll, -1ll, (uint8*)*(uint8**)&TMP$99$3 );
			fb_StrDelete( (FBSTRING*)&TMP$99$3 );
		}
		goto label$48;
		label$49:;
		{
			ERRREPORT( 28ll, -1ll, (uint8*)0ull );
		}
		label$48:;
		struct $7ASTNODE* vr$26 = ASTNEWADDROF( EXPR$1 );
		EXPR$1 = vr$26;
	}
	label$47:;
	label$46:;
	if( ALLOW_CONST$1 != 0ll ) goto label$51;
	{
		if( (((((*(int64*)((uint8*)EXPR$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) + -32ll)) | (((*(int64*)((uint8*)EXPR$1 + 8ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (*(int64*)((uint8*)EXPR$1 + 8ll) & 32505856ll)) & 512ll) == 0ll ) goto label$53;
		{
			ERRREPORT( 119ll, -1ll, (uint8*)0ull );
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

static struct $7ASTNODE* HFBIMAGEEXPR( int64 ALLOW_CONST$1, struct $7ASTNODE** PDESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CEXPRESSIONWITHNIDXARRAY( -1ll );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$57;
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

static struct $7ASTNODE* HFBIMAGEEXPRINFRONTOFCOORD( int64 ALLOW_CONST$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$58:;
	struct $7ASTNODE* EXPR$1;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 40ll ) goto label$61;
	{
		goto label$59;
	}
	label$61:;
	label$60:;
	struct $7ASTNODE* vr$2 = HFBIMAGEEXPR( ALLOW_CONST$1, (struct $7ASTNODE**)0ull );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$63;
	{
		goto label$59;
	}
	label$63:;
	label$62:;
	int64 vr$3 = LEXGETTOKEN( 0ll );
	if( vr$3 == 44ll ) goto label$65;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$64;
	label$65:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$64:;
	fb$result$1 = EXPR$1;
	label$59:;
	return fb$result$1;
}

static int64 HGETMODE( int64* MODE$1, struct $7ASTNODE** ALPHAEXPR$1, struct $7ASTNODE** FUNCEXPR$1, struct $7ASTNODE** PARAMEXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	struct $8FBSYMBOL* ARG1$1;
	__builtin_memset( &ARG1$1, 0, 8ll );
	struct $8FBSYMBOL* ARG2$1;
	__builtin_memset( &ARG2$1, 0, 8ll );
	struct $8FBSYMBOL* ARG3$1;
	__builtin_memset( &ARG3$1, 0, 8ll );
	fb$result$1 = 0ll;
	{
		int64 TMP$100$2;
		int64 vr$5 = LEXGETTOKEN( 0ll );
		TMP$100$2 = vr$5;
		if( TMP$100$2 != 288ll ) goto label$69;
		label$70:;
		{
			LEXSKIPTOKEN( 2048ll );
			*MODE$1 = 3ll;
			fb$result$1 = -1ll;
			goto label$67;
		}
		goto label$68;
		label$69:;
		if( TMP$100$2 != 289ll ) goto label$71;
		label$72:;
		{
			LEXSKIPTOKEN( 2048ll );
			*MODE$1 = 4ll;
			fb$result$1 = -1ll;
			goto label$67;
		}
		goto label$68;
		label$71:;
		if( TMP$100$2 != 292ll ) goto label$73;
		label$74:;
		{
			LEXSKIPTOKEN( 2048ll );
			*MODE$1 = 5ll;
			fb$result$1 = -1ll;
			goto label$67;
		}
		label$73:;
		label$68:;
	}
	{
		int64 TMP$101$2;
		int64 vr$9 = LEXGETCLASS( 0ll );
		TMP$101$2 = vr$9;
		if( TMP$101$2 == 0ll ) goto label$77;
		label$78:;
		if( TMP$101$2 == 2ll ) goto label$77;
		label$79:;
		if( TMP$101$2 != 1ll ) goto label$76;
		label$77:;
		{
			{
				FBSTRING TMP$102$4;
				uint8* vr$10 = LEXGETTEXT(  );
				FBSTRING* vr$11 = fb_StrAllocTempDescZ( (uint8*)vr$10 );
				FBSTRING* vr$12 = fb_StrUcase2( (FBSTRING*)vr$11, 0 );
				fb_StrInit( (void*)&TMP$102$4, -1ll, (void*)vr$12, -1ll, 0 );
				int32 vr$15 = fb_StrCompare( (void*)&TMP$102$4, -1ll, (void*)"PSET", 5ll );
				if( (int64)vr$15 != 0ll ) goto label$81;
				label$82:;
				{
					LEXSKIPTOKEN( 2048ll );
					*MODE$1 = 1ll;
					fb$result$1 = -1ll;
					fb_StrDelete( (FBSTRING*)&TMP$102$4 );
					goto label$67;
				}
				goto label$80;
				label$81:;
				int32 vr$20 = fb_StrCompare( (void*)&TMP$102$4, -1ll, (void*)"PRESET", 7ll );
				if( (int64)vr$20 != 0ll ) goto label$83;
				label$84:;
				{
					LEXSKIPTOKEN( 2048ll );
					*MODE$1 = 2ll;
					fb$result$1 = -1ll;
					fb_StrDelete( (FBSTRING*)&TMP$102$4 );
					goto label$67;
				}
				goto label$80;
				label$83:;
				int32 vr$25 = fb_StrCompare( (void*)&TMP$102$4, -1ll, (void*)"TRANS", 6ll );
				if( (int64)vr$25 != 0ll ) goto label$85;
				label$86:;
				{
					LEXSKIPTOKEN( 2048ll );
					*MODE$1 = 0ll;
					fb$result$1 = -1ll;
					fb_StrDelete( (FBSTRING*)&TMP$102$4 );
					goto label$67;
				}
				goto label$80;
				label$85:;
				int32 vr$30 = fb_StrCompare( (void*)&TMP$102$4, -1ll, (void*)"ADD", 4ll );
				if( (int64)vr$30 != 0ll ) goto label$87;
				label$88:;
				{
					LEXSKIPTOKEN( 2048ll );
					*MODE$1 = 7ll;
					int64 vr$33 = HMATCH( 44ll, 0ll );
					if( vr$33 == 0ll ) goto label$90;
					{
						struct $7ASTNODE* vr$34 = HMATCHEXPR( -1ll );
						*ALPHAEXPR$1 = vr$34;
						if( *ALPHAEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$92;
						{
							fb_StrDelete( (FBSTRING*)&TMP$102$4 );
							goto label$67;
						}
						label$92:;
						label$91:;
					}
					goto label$89;
					label$90:;
					{
						struct $7ASTNODE* vr$38 = ASTNEWCONSTI( 255ll, 9ll, (struct $8FBSYMBOL*)0ull );
						*ALPHAEXPR$1 = vr$38;
					}
					label$89:;
					fb$result$1 = -1ll;
					fb_StrDelete( (FBSTRING*)&TMP$102$4 );
					goto label$67;
				}
				goto label$80;
				label$87:;
				int32 vr$42 = fb_StrCompare( (void*)&TMP$102$4, -1ll, (void*)"ALPHA", 6ll );
				if( (int64)vr$42 != 0ll ) goto label$93;
				label$94:;
				{
					LEXSKIPTOKEN( 2048ll );
					*MODE$1 = 6ll;
					int64 vr$45 = HMATCH( 44ll, 0ll );
					if( vr$45 == 0ll ) goto label$96;
					{
						struct $7ASTNODE* vr$46 = HMATCHEXPR( -1ll );
						*ALPHAEXPR$1 = vr$46;
						if( *ALPHAEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$98;
						{
							fb_StrDelete( (FBSTRING*)&TMP$102$4 );
							goto label$67;
						}
						label$98:;
						label$97:;
						*MODE$1 = 9ll;
					}
					label$96:;
					label$95:;
					fb$result$1 = -1ll;
					fb_StrDelete( (FBSTRING*)&TMP$102$4 );
					goto label$67;
				}
				goto label$80;
				label$93:;
				int32 vr$53 = fb_StrCompare( (void*)&TMP$102$4, -1ll, (void*)"CUSTOM", 7ll );
				if( (int64)vr$53 != 0ll ) goto label$99;
				label$100:;
				{
					LEXSKIPTOKEN( 2048ll );
					*MODE$1 = 8ll;
					int64 vr$56 = LEXGETTOKEN( 0ll );
					if( vr$56 == 44ll ) goto label$102;
					{
						ERRREPORT( 16ll, 0ll, (uint8*)0ull );
					}
					goto label$101;
					label$102:;
					{
						LEXSKIPTOKEN( 0ll );
					}
					label$101:;
					struct $7ASTNODE* vr$57 = HMATCHEXPR( -1ll );
					*FUNCEXPR$1 = vr$57;
					if( *FUNCEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$104;
					{
						fb_StrDelete( (FBSTRING*)&TMP$102$4 );
						goto label$67;
					}
					label$104:;
					label$103:;
					int64 vr$61 = HMATCH( 44ll, 0ll );
					if( vr$61 == 0ll ) goto label$106;
					{
						struct $7ASTNODE* vr$62 = HMATCHEXPR( -1ll );
						*PARAMEXPR$1 = vr$62;
						if( *PARAMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$108;
						{
							fb_StrDelete( (FBSTRING*)&TMP$102$4 );
							goto label$67;
						}
						label$108:;
						label$107:;
					}
					label$106:;
					label$105:;
					S$1 = *(struct $8FBSYMBOL**)((uint8*)*FUNCEXPR$1 + 16ll);
					if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$110;
					{
						ERRREPORT( 20ll, 0ll, (uint8*)0ull );
						fb_StrDelete( (FBSTRING*)&TMP$102$4 );
						goto label$67;
					}
					label$110:;
					label$109:;
					if( *(int64*)S$1 == 3ll ) goto label$112;
					{
						ERRREPORT( 20ll, 0ll, (uint8*)0ull );
						fb_StrDelete( (FBSTRING*)&TMP$102$4 );
						goto label$67;
					}
					label$112:;
					label$111:;
					if( ((int64)-((*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 12ll) | (int64)-((int64)*(int16*)((uint8*)S$1 + 120ll) != 3ll)) == 0ll ) goto label$114;
					{
						ERRREPORT( 20ll, 0ll, (uint8*)0ull );
						fb_StrDelete( (FBSTRING*)&TMP$102$4 );
						goto label$67;
					}
					label$114:;
					label$113:;
					ARG1$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 136ll);
					ARG2$1 = *(struct $8FBSYMBOL**)((uint8*)ARG1$1 + 312ll);
					ARG3$1 = *(struct $8FBSYMBOL**)((uint8*)ARG2$1 + 312ll);
					if( *(int64*)((uint8*)S$1 + 152ll) != 4ll ) goto label$116;
					{
						{
							struct $8FBSYMBOL* TMP$109$7;
							TMP$109$7 = ARG1$1;
							ARG1$1 = ARG3$1;
							ARG3$1 = TMP$109$7;
						}
					}
					label$116:;
					label$115:;
					if( ((((((int64)-((*(int64*)((uint8*)ARG1$1 + 56ll) & 511ll) != 12ll) | (int64)-((*(int64*)((uint8*)ARG2$1 + 56ll) & 511ll) != 12ll)) | (int64)-(((*(int64*)((uint8*)ARG3$1 + 56ll) & 511ll) & 480ll) == 0ll)) | (int64)-(*(int64*)((uint8*)ARG1$1 + 96ll) != 1ll)) | (int64)-(*(int64*)((uint8*)ARG2$1 + 96ll) != 1ll)) | (int64)-(*(int64*)((uint8*)ARG3$1 + 96ll) != 1ll)) == 0ll ) goto label$118;
					{
						ERRREPORT( 20ll, 0ll, (uint8*)0ull );
						fb_StrDelete( (FBSTRING*)&TMP$102$4 );
						goto label$67;
					}
					label$118:;
					label$117:;
					fb$result$1 = -1ll;
					fb_StrDelete( (FBSTRING*)&TMP$102$4 );
					goto label$67;
				}
				label$99:;
				label$80:;
				fb_StrDelete( (FBSTRING*)&TMP$102$4 );
			}
		}
		label$76:;
		label$75:;
	}
	ERRREPORT( 17ll, 0ll, (uint8*)0ull );
	fb$result$1 = 0ll;
	goto label$67;
	label$67:;
	return fb$result$1;
}
