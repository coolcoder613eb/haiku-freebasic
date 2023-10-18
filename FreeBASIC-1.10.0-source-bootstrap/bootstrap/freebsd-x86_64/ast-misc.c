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
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
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
typedef int64 $22FB_OVLPROC_MATCH_SCORE;
typedef int64 $9FB_ERRMSG;
struct $17AST_DTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	int64 COOKIE;
	int64 REFCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $17AST_DTORLIST_ITEM ) == 24 );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
static void fb_ctor__astzmisc( void ) __attribute__(( constructor ));
void* XREALLOCATE( void*, int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
int64 ASTISTREEEQUAL( struct $7ASTNODE*, struct $7ASTNODE* );
int64 ASTISEQUALPARAMINIT( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
int64 ASTCONSTEQZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTZ( int64, struct $8FBSYMBOL* );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
double ASTCONSTGETASDOUBLE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWBRANCH( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
int64 ASTISSYMBOLONTREE( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIUPDATE( struct $7ASTNODE* );
int64 ASTGETINVERSELOGOP( int64 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( struct $8FBSYMBOL*, int64 );
void ASTREPLACESYMBOLONTREE( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTREPLACEFWDREF( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTDTORLISTFLUSH( int64 );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
int64 ASTISACCESSTOLOCAL( struct $7ASTNODE* );
typedef int64 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int64, struct $8FBSYMBOL* );
int64 SYMBHASDTOR( struct $8FBSYMBOL* );
int64 TYPEMERGE( int64, int64 );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int64, struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
struct $7ASTNODE* RTLSTRCONCAT( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRCONCAT( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
void ASTREPLACESYMBOLONCALL( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static int64 HHASDTOR( struct $8FBSYMBOL* );
static void HASTDTORLISTRESCOPE( int64, int64 );
static int64 HSYMBISONLOCALSTACK( struct $8FBSYMBOL* );
typedef void (*tmp$37)( void );
typedef int64 (*tmp$38)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$40)( int64, int64 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 24 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 72 );
struct $5IRTAC {
	int64 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int64 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 256 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int64 REG;
	$12IR_REGFAMILY REGFAMILY;
	int64 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int64 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 120 );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int64 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$55)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$67)( uint8* );
typedef struct $6IRVREG* (*tmp$68)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$75)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$37 INIT;
	tmp$37 END;
	tmp$38 EMITBEGIN;
	tmp$37 EMITEND;
	tmp$39 GETOPTIONVALUE;
	tmp$40 SUPPORTSOP;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$44 EMITCONVERT;
	tmp$41 EMITLABEL;
	tmp$41 EMITLABELNF;
	tmp$45 EMITRETURN;
	tmp$42 EMITPROCBEGIN;
	tmp$46 EMITPROCEND;
	tmp$47 EMITPUSHARG;
	tmp$48 EMITASMLINE;
	tmp$49 EMITCOMMENT;
	tmp$50 EMITBOP;
	tmp$51 EMITUOP;
	tmp$44 EMITSTORE;
	tmp$37 EMITSPILLREGS;
	tmp$52 EMITLOAD;
	tmp$44 EMITLOADRES;
	tmp$51 EMITSTACK;
	tmp$51 EMITADDR;
	tmp$53 EMITCALL;
	tmp$54 EMITCALLPTR;
	tmp$45 EMITSTACKALIGN;
	tmp$52 EMITJUMPPTR;
	tmp$55 EMITBRANCH;
	tmp$56 EMITJMPTB;
	tmp$57 EMITMEM;
	tmp$58 EMITMACRO;
	tmp$41 EMITSCOPEBEGIN;
	tmp$41 EMITSCOPEEND;
	tmp$41 EMITDECL;
	tmp$59 EMITDBG;
	tmp$41 EMITVARINIBEGIN;
	tmp$41 EMITVARINIEND;
	tmp$60 EMITVARINII;
	tmp$61 EMITVARINIF;
	tmp$62 EMITVARINIOFS;
	tmp$63 EMITVARINISTR;
	tmp$64 EMITVARINIWSTR;
	tmp$65 EMITVARINIPAD;
	tmp$66 EMITVARINISCOPEBEGIN;
	tmp$37 EMITVARINISCOPEEND;
	tmp$37 EMITFBCTINFBEGIN;
	tmp$67 EMITFBCTINFSTRING;
	tmp$37 EMITFBCTINFEND;
	tmp$68 ALLOCVREG;
	tmp$69 ALLOCVRIMM;
	tmp$70 ALLOCVRIMMF;
	tmp$71 ALLOCVRVAR;
	tmp$72 ALLOCVRIDX;
	tmp$73 ALLOCVRPTR;
	tmp$71 ALLOCVROFS;
	tmp$74 SETVREGDATATYPE;
	tmp$75 GETDISTANCE;
	tmp$51 LOADVR;
	tmp$44 STOREVR;
	tmp$45 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 544 );
typedef int64 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 552 );
extern struct $5IRCTX IR$;
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

void ASTMISCINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&AST$ + 296ll), 64ll, 24ll, 6ll );
	{
		struct $23AST_DTORLIST_SCOPESTACK* TMP$83$2;
		TMP$83$2 = (struct $23AST_DTORLIST_SCOPESTACK*)((uint8*)&AST$ + 360ll);
		*(int64**)TMP$83$2 = (int64*)0ull;
		*(int64*)((uint8*)TMP$83$2 + 8ll) = 0ll;
		*(int64*)((uint8*)TMP$83$2 + 16ll) = 0ll;
	}
	*(int64*)((uint8*)&AST$ + 384ll) = 0ll;
	*(int64*)((uint8*)&AST$ + 392ll) = -1ll;
	label$11:;
}

void ASTMISCEND( void )
{
	label$12:;
	{
		struct $23AST_DTORLIST_SCOPESTACK* TMP$84$2;
		TMP$84$2 = (struct $23AST_DTORLIST_SCOPESTACK*)((uint8*)&AST$ + 360ll);
		free( *(void**)TMP$84$2 );
	}
	LISTEND( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	label$13:;
}

int64 ASTISTREEEQUAL( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	fb$result$1 = 0ll;
	if( ((int64)-(L$1 == (struct $7ASTNODE*)0ull) | (int64)-(R$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$17;
	{
		if( L$1 != R$1 ) goto label$19;
		{
			fb$result$1 = -1ll;
		}
		label$19:;
		label$18:;
		goto label$15;
	}
	label$17:;
	label$16:;
	if( *(int64*)L$1 == *(int64*)R$1 ) goto label$21;
	{
		goto label$15;
	}
	label$21:;
	label$20:;
	if( *(int64*)((uint8*)L$1 + 8ll) == *(int64*)((uint8*)R$1 + 8ll) ) goto label$23;
	{
		goto label$15;
	}
	label$23:;
	label$22:;
	if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll) ) goto label$25;
	{
		goto label$15;
	}
	label$25:;
	label$24:;
	{
		uint64 TMP$85$2;
		TMP$85$2 = *(uint64*)L$1;
		goto label$27;
		label$28:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$30;
			{
				goto label$15;
			}
			label$30:;
			label$29:;
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$32;
			{
				goto label$15;
			}
			label$32:;
			label$31:;
		}
		goto label$26;
		label$33:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$35;
			{
				goto label$15;
			}
			label$35:;
			label$34:;
		}
		goto label$26;
		label$36:;
		{
			{
				int64 TMP$86$4;
				$12FB_DATACLASS TMP$87$4;
				if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$37;
				TMP$86$4 = 24ll;
				goto label$83;
				label$37:;
				TMP$86$4 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
				label$83:;
				TMP$87$4 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$86$4 * 56ll));
				if( TMP$87$4 != 1ll ) goto label$39;
				label$40:;
				{
					if( *(double*)((uint8*)L$1 + 40ll) == *(double*)((uint8*)R$1 + 40ll) ) goto label$42;
					{
						goto label$15;
					}
					label$42:;
					label$41:;
				}
				goto label$38;
				label$39:;
				if( TMP$87$4 != 0ll ) goto label$43;
				label$44:;
				{
					if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$46;
					{
						goto label$15;
					}
					label$46:;
					label$45:;
				}
				label$43:;
				label$38:;
			}
		}
		goto label$26;
		label$47:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$49;
			{
				goto label$15;
			}
			label$49:;
			label$48:;
		}
		goto label$26;
		label$50:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$52;
			{
				goto label$15;
			}
			label$52:;
			label$51:;
			if( *(int64*)((uint8*)L$1 + 48ll) == *(int64*)((uint8*)R$1 + 48ll) ) goto label$54;
			{
				goto label$15;
			}
			label$54:;
			label$53:;
		}
		goto label$26;
		label$55:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$57;
			{
				goto label$15;
			}
			label$57:;
			label$56:;
			if( *(int64*)((uint8*)L$1 + 48ll) == *(int64*)((uint8*)R$1 + 48ll) ) goto label$59;
			{
				goto label$15;
			}
			label$59:;
			label$58:;
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 56ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 56ll) ) goto label$61;
			{
				goto label$15;
			}
			label$61:;
			label$60:;
		}
		goto label$26;
		label$62:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$64;
			{
				goto label$15;
			}
			label$64:;
			label$63:;
			if( *(int64*)((uint8*)L$1 + 48ll) == *(int64*)((uint8*)R$1 + 48ll) ) goto label$66;
			{
				goto label$15;
			}
			label$66:;
			label$65:;
		}
		goto label$26;
		label$67:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$69;
			{
				goto label$15;
			}
			label$69:;
			label$68:;
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$71;
			{
				goto label$15;
			}
			label$71:;
			label$70:;
		}
		goto label$26;
		label$72:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$74;
			{
				goto label$15;
			}
			label$74:;
			label$73:;
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$76;
			{
				goto label$15;
			}
			label$76:;
			label$75:;
		}
		goto label$26;
		label$77:;
		{
		}
		goto label$26;
		label$78:;
		{
			goto label$15;
		}
		goto label$26;
		label$27:;
		static const void* tmp$88[23ll] = {
			&&label$78,
			&&label$78,
			&&label$55,
			&&label$62,
			&&label$77,
			&&label$67,
			&&label$78,
			&&label$26,
			&&label$78,
			&&label$26,
			&&label$26,
			&&label$26,
			&&label$26,
			&&label$26,
			&&label$78,
			&&label$36,
			&&label$28,
			&&label$50,
			&&label$33,
			&&label$47,
			&&label$26,
			&&label$26,
			&&label$72,
		};
		if( (TMP$85$2 - 1ull) > 22ull ) goto label$26;
		goto *tmp$88[TMP$85$2 - 1ull];
		label$26:;
	}
	int64 vr$52 = ASTISTREEEQUAL( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll), *(struct $7ASTNODE**)((uint8*)R$1 + 112ll) );
	if( vr$52 != 0ll ) goto label$80;
	{
		goto label$15;
	}
	label$80:;
	label$79:;
	int64 vr$55 = ASTISTREEEQUAL( *(struct $7ASTNODE**)((uint8*)L$1 + 120ll), *(struct $7ASTNODE**)((uint8*)R$1 + 120ll) );
	if( vr$55 != 0ll ) goto label$82;
	{
		goto label$15;
	}
	label$82:;
	label$81:;
	fb$result$1 = -1ll;
	label$15:;
	return fb$result$1;
}

int64 ASTISEQUALPARAMINIT( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$84:;
	fb$result$1 = 0ll;
	if( ((int64)-(L$1 == (struct $7ASTNODE*)0ull) | (int64)-(R$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$87;
	{
		if( L$1 != R$1 ) goto label$89;
		{
			fb$result$1 = -1ll;
		}
		label$89:;
		label$88:;
		goto label$85;
	}
	label$87:;
	label$86:;
	if( *(int64*)L$1 == *(int64*)R$1 ) goto label$91;
	{
		goto label$85;
	}
	label$91:;
	label$90:;
	if( *(int64*)((uint8*)L$1 + 8ll) == *(int64*)((uint8*)R$1 + 8ll) ) goto label$93;
	{
		goto label$85;
	}
	label$93:;
	label$92:;
	if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll) ) goto label$95;
	{
		if( (*(int64*)((uint8*)L$1 + 8ll) & 31ll) != 22ll ) goto label$97;
		{
			int64 TMP$89$3;
			TMP$89$3 = 0ll;
			$22FB_OVLPROC_MATCH_SCORE vr$15 = SYMBCALCPROCMATCH( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll), &TMP$89$3 );
			if( vr$15 != 0ll ) goto label$99;
			{
				goto label$85;
			}
			label$99:;
			label$98:;
		}
		goto label$96;
		label$97:;
		{
			goto label$85;
		}
		label$96:;
	}
	label$95:;
	label$94:;
	{
		uint64 TMP$90$2;
		TMP$90$2 = *(uint64*)L$1;
		goto label$101;
		label$102:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$104;
			{
				goto label$85;
			}
			label$104:;
			label$103:;
		}
		goto label$100;
		label$105:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$107;
			{
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$109;
				{
					goto label$85;
				}
				label$109:;
				label$108:;
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$111;
				{
					goto label$85;
				}
				label$111:;
				label$110:;
			}
			label$107:;
			label$106:;
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$113;
			{
				goto label$85;
			}
			label$113:;
			label$112:;
		}
		goto label$100;
		label$114:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$116;
			{
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$118;
				{
					goto label$85;
				}
				label$118:;
				label$117:;
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$120;
				{
					goto label$85;
				}
				label$120:;
				label$119:;
			}
			label$116:;
			label$115:;
		}
		goto label$100;
		label$121:;
		{
			int64 TMP$91$3;
			if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$122;
			TMP$91$3 = 24ll;
			goto label$167;
			label$122:;
			TMP$91$3 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
			label$167:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$3 * 56ll)) != 1ll ) goto label$124;
			{
				if( *(double*)((uint8*)L$1 + 40ll) == *(double*)((uint8*)R$1 + 40ll) ) goto label$126;
				{
					goto label$85;
				}
				label$126:;
				label$125:;
			}
			goto label$123;
			label$124:;
			{
				if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$128;
				{
					goto label$85;
				}
				label$128:;
				label$127:;
			}
			label$123:;
		}
		goto label$100;
		label$129:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$131;
			{
				goto label$85;
			}
			label$131:;
			label$130:;
		}
		goto label$100;
		label$132:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$134;
			{
				goto label$85;
			}
			label$134:;
			label$133:;
			if( *(int64*)((uint8*)L$1 + 48ll) == *(int64*)((uint8*)R$1 + 48ll) ) goto label$136;
			{
				goto label$85;
			}
			label$136:;
			label$135:;
		}
		goto label$100;
		label$137:;
		{
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$139;
			{
				goto label$85;
			}
			label$139:;
			label$138:;
			if( *(int64*)((uint8*)L$1 + 48ll) == *(int64*)((uint8*)R$1 + 48ll) ) goto label$141;
			{
				goto label$85;
			}
			label$141:;
			label$140:;
		}
		goto label$100;
		label$142:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$144;
			{
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$146;
				{
					goto label$85;
				}
				label$146:;
				label$145:;
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$148;
				{
					goto label$85;
				}
				label$148:;
				label$147:;
			}
			label$144:;
			label$143:;
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$150;
			{
				goto label$85;
			}
			label$150:;
			label$149:;
		}
		goto label$100;
		label$151:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$153;
			{
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$155;
				{
					goto label$85;
				}
				label$155:;
				label$154:;
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 8ll) & 4096ll) != 0ll ) goto label$157;
				{
					goto label$85;
				}
				label$157:;
				label$156:;
			}
			label$153:;
			label$152:;
			if( *(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll) ) goto label$159;
			{
				goto label$85;
			}
			label$159:;
			label$158:;
		}
		goto label$100;
		label$160:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) ) goto label$162;
			{
				goto label$85;
			}
			label$162:;
			label$161:;
		}
		goto label$100;
		label$101:;
		static const void* tmp$92[21ll] = {
			&&label$137,
			&&label$137,
			&&label$100,
			&&label$142,
			&&label$100,
			&&label$100,
			&&label$160,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$102,
			&&label$121,
			&&label$105,
			&&label$132,
			&&label$114,
			&&label$129,
			&&label$100,
			&&label$100,
			&&label$151,
		};
		if( (TMP$90$2 - 3ull) > 20ull ) goto label$100;
		goto *tmp$92[TMP$90$2 - 3ull];
		label$100:;
	}
	int64 vr$80 = ASTISEQUALPARAMINIT( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll), *(struct $7ASTNODE**)((uint8*)R$1 + 112ll) );
	if( vr$80 != 0ll ) goto label$164;
	{
		goto label$85;
	}
	label$164:;
	label$163:;
	int64 vr$83 = ASTISEQUALPARAMINIT( *(struct $7ASTNODE**)((uint8*)L$1 + 120ll), *(struct $7ASTNODE**)((uint8*)R$1 + 120ll) );
	if( vr$83 != 0ll ) goto label$166;
	{
		goto label$85;
	}
	label$166:;
	label$165:;
	fb$result$1 = -1ll;
	label$85:;
	return fb$result$1;
}

int64 ASTHASSIDEFX( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$168:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$171;
	{
		goto label$169;
	}
	label$171:;
	label$170:;
	if( *(int64*)N$1 != 9ll ) goto label$173;
	{
		if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 24ll) & 524288ll) != 0ll ) goto label$175;
		{
			fb$result$1 = -1ll;
			goto label$169;
		}
		label$175:;
		label$174:;
	}
	label$173:;
	label$172:;
	int64 vr$6 = ASTHASSIDEFX( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	if( vr$6 == 0ll ) goto label$177;
	{
		fb$result$1 = -1ll;
		goto label$169;
	}
	label$177:;
	label$176:;
	int64 vr$8 = ASTHASSIDEFX( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	fb$result$1 = vr$8;
	label$169:;
	return fb$result$1;
}

int64 ASTISSYMBOLONTREE( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$178:;
	struct $8FBSYMBOL* S$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$181;
	{
		fb$result$1 = 0ll;
		goto label$179;
	}
	label$181:;
	label$180:;
	{
		uint64 TMP$93$2;
		TMP$93$2 = *(uint64*)N$1;
		goto label$183;
		label$184:;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
			if( S$1 != SYM$1 ) goto label$186;
			{
				fb$result$1 = -1ll;
				goto label$179;
			}
			label$186:;
			label$185:;
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$188;
			{
				if( (*(int64*)((uint8*)S$1 + 8ll) & 81920ll) == 0ll ) goto label$190;
				{
					fb$result$1 = -1ll;
					goto label$179;
				}
				label$190:;
				label$189:;
			}
			label$188:;
			label$187:;
		}
		goto label$182;
		label$191:;
		{
			fb$result$1 = -1ll;
			goto label$179;
		}
		goto label$182;
		label$183:;
		static const void* tmp$94[18ll] = {
			&&label$184,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$184,
			&&label$184,
			&&label$184,
			&&label$191,
			&&label$182,
			&&label$182,
			&&label$184,
		};
		if( (TMP$93$2 - 6ull) > 17ull ) goto label$182;
		goto *tmp$94[TMP$93$2 - 6ull];
		label$182:;
	}
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$193;
	{
		int64 vr$7 = ASTISSYMBOLONTREE( SYM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		if( vr$7 == 0ll ) goto label$195;
		{
			fb$result$1 = -1ll;
			goto label$179;
		}
		label$195:;
		label$194:;
	}
	label$193:;
	label$192:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$197;
	{
		int64 vr$10 = ASTISSYMBOLONTREE( SYM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
		if( vr$10 == 0ll ) goto label$199;
		{
			fb$result$1 = -1ll;
			goto label$179;
		}
		label$199:;
		label$198:;
	}
	label$197:;
	label$196:;
	fb$result$1 = 0ll;
	label$179:;
	return fb$result$1;
}

void ASTREPLACESYMBOLONTREE( struct $7ASTNODE* N$1, struct $8FBSYMBOL* OLD_SYM$1, struct $8FBSYMBOL* NEW_SYM$1 )
{
	label$200:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$203;
	{
		goto label$201;
	}
	label$203:;
	label$202:;
	if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) != OLD_SYM$1 ) goto label$205;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = NEW_SYM$1;
	}
	label$205:;
	label$204:;
	{
		uint64 TMP$95$2;
		TMP$95$2 = *(uint64*)N$1;
		goto label$207;
		label$208:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) != OLD_SYM$1 ) goto label$210;
			{
				*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = NEW_SYM$1;
			}
			label$210:;
			label$209:;
		}
		goto label$206;
		label$211:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) != OLD_SYM$1 ) goto label$213;
			{
				*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = NEW_SYM$1;
			}
			label$213:;
			label$212:;
		}
		goto label$206;
		label$214:;
		{
			ASTREPLACESYMBOLONCALL( N$1, OLD_SYM$1, NEW_SYM$1 );
		}
		goto label$206;
		label$207:;
		static const void* tmp$96[24ll] = {
			&&label$208,
			&&label$208,
			&&label$206,
			&&label$206,
			&&label$208,
			&&label$206,
			&&label$214,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$208,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$206,
			&&label$211,
		};
		if( (TMP$95$2 - 3ull) > 23ull ) goto label$206;
		goto *tmp$96[TMP$95$2 - 3ull];
		label$206:;
	}
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$216;
	{
		ASTREPLACESYMBOLONTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), OLD_SYM$1, NEW_SYM$1 );
	}
	label$216:;
	label$215:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$218;
	{
		ASTREPLACESYMBOLONTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), OLD_SYM$1, NEW_SYM$1 );
	}
	label$218:;
	label$217:;
	label$201:;
}

void ASTREPLACEFWDREF( struct $7ASTNODE* N$1, struct $8FBSYMBOL* OLDSUBTYPE$1, int64 NEWDTYPE$1, struct $8FBSYMBOL* NEWSUBTYPE$1 )
{
	label$219:;
	if( ((int64)-((*(int64*)((uint8*)N$1 + 8ll) & 31ll) == 23ll) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) == OLDSUBTYPE$1)) == 0ll ) goto label$222;
	{
		int64 vr$7 = TYPEMERGE( *(int64*)((uint8*)N$1 + 8ll), NEWDTYPE$1 );
		*(int64*)((uint8*)N$1 + 8ll) = vr$7;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = NEWSUBTYPE$1;
	}
	label$222:;
	label$221:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$224;
	{
		ASTREPLACEFWDREF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), OLDSUBTYPE$1, NEWDTYPE$1, NEWSUBTYPE$1 );
	}
	label$224:;
	label$223:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$226;
	{
		ASTREPLACEFWDREF( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), OLDSUBTYPE$1, NEWDTYPE$1, NEWSUBTYPE$1 );
	}
	label$226:;
	label$225:;
	label$220:;
}

int64 ASTISCONSTANT( struct $7ASTNODE* EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$227:;
	if( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$230;
	{
		if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll) + 8ll) & 2048ll) == 0ll ) goto label$232;
		{
			fb$result$1 = -1ll;
			goto label$228;
		}
		label$232:;
		label$231:;
	}
	label$230:;
	label$229:;
	fb$result$1 = (int64)-(*(int64*)EXPR$1 == 16ll) | (int64)-((*(int64*)((uint8*)EXPR$1 + 8ll) & 512ll) != 0ll);
	goto label$228;
	label$228:;
	return fb$result$1;
}

struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* N$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$233:;
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( *(int64*)N$1 != 17ll ) goto label$236;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
		if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$238;
		{
			if( (*(int64*)((uint8*)S$1 + 8ll) & 1024ll) == 0ll ) goto label$240;
			{
				fb$result$1 = S$1;
			}
			label$240:;
			label$239:;
		}
		label$238:;
		label$237:;
	}
	label$236:;
	label$235:;
	label$234:;
	return fb$result$1;
}

void ASTCHECKCONST( int64 DTYPE$1, struct $7ASTNODE* N$1 )
{
	label$241:;
	int64 RESULT$1;
	double DVAL$1;
	float SVAL$1;
	int64 LVAL$1;
	RESULT$1 = -1ll;
	{
		uint64 TMP$97$2;
		TMP$97$2 = (uint64)(DTYPE$1 & 511ll);
		goto label$244;
		label$245:;
		{
			double vr$1 = ASTCONSTGETASDOUBLE( N$1 );
			DVAL$1 = vr$1;
			{
				double TMP$98$4;
				TMP$98$4 = __builtin_fabs( DVAL$1 );
				if( TMP$98$4 == 0x0p+0 ) goto label$248;
				label$249:;
				if( TMP$98$4 < 0x1.6D601AD376AB9p-149 ) goto label$247;
				if( TMP$98$4 > 0x1.C363CBF21F28Ap+127 ) goto label$247;
				label$248:;
				{
					RESULT$1 = -1ll;
				}
				goto label$246;
				label$247:;
				{
					SVAL$1 = (float)DVAL$1;
					if( (SVAL$1 + SVAL$1) != SVAL$1 ) goto label$252;
					{
						RESULT$1 = (int64)-((DVAL$1 + DVAL$1) == DVAL$1);
					}
					goto label$251;
					label$252:;
					{
						RESULT$1 = -1ll;
					}
					label$251:;
				}
				label$250:;
				label$246:;
			}
		}
		goto label$243;
		label$253:;
		{
			int64 vr$7 = ASTCONSTGETASINT64( N$1 );
			LVAL$1 = vr$7;
			RESULT$1 = ((int64)-(LVAL$1 == 0ll) | (int64)-(LVAL$1 == 1ll)) | (int64)-(LVAL$1 == -1ll);
		}
		goto label$243;
		label$254:;
		{
			{
				int64 TMP$99$4;
				uint64 TMP$100$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$255;
				TMP$99$4 = 24ll;
				goto label$267;
				label$255:;
				TMP$99$4 = DTYPE$1 & 31ll;
				label$267:;
				TMP$100$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$4 * 56ll)) + 40ll);
				goto label$257;
				label$258:;
				{
					int64 vr$16 = ASTCONSTGETASINT64( N$1 );
					LVAL$1 = vr$16;
					RESULT$1 = (int64)-(LVAL$1 >= -128ll) & (int64)-(LVAL$1 <= 255ll);
				}
				goto label$256;
				label$259:;
				{
					int64 vr$20 = ASTCONSTGETASINT64( N$1 );
					LVAL$1 = vr$20;
					RESULT$1 = (int64)-(LVAL$1 >= -32768ll) & (int64)-(LVAL$1 <= 65535ll);
				}
				goto label$256;
				label$260:;
				{
					int64 vr$24 = ASTCONSTGETASINT64( N$1 );
					LVAL$1 = vr$24;
					RESULT$1 = (int64)-(LVAL$1 >= -2147483648ll) & (int64)-(LVAL$1 <= 4294967295ll);
				}
				goto label$256;
				label$261:;
				{
					int64 TMP$101$5;
					if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$262;
					TMP$101$5 = 24ll;
					goto label$268;
					label$262:;
					TMP$101$5 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
					label$268:;
					if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$5 * 56ll)) != 1ll ) goto label$264;
					{
						double vr$33 = ASTCONSTGETASDOUBLE( N$1 );
						DVAL$1 = vr$33;
						RESULT$1 = (int64)-(DVAL$1 >= -0x1.p+63) & (int64)-(DVAL$1 <= 0x1.p+64);
					}
					label$264:;
					label$263:;
				}
				goto label$256;
				label$257:;
				static const void* tmp$102[8ll] = {
					&&label$258,
					&&label$258,
					&&label$259,
					&&label$259,
					&&label$260,
					&&label$260,
					&&label$261,
					&&label$261,
				};
				if( (TMP$100$4 - 1ull) > 7ull ) goto label$256;
				goto *tmp$102[TMP$100$4 - 1ull];
				label$256:;
			}
		}
		goto label$243;
		label$244:;
		static const void* tmp$103[15ll] = {
			&&label$253,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$245,
		};
		if( (TMP$97$2 - 1ull) > 14ull ) goto label$254;
		goto *tmp$103[TMP$97$2 - 1ull];
		label$243:;
	}
	if( ((int64)-(RESULT$1 == 0ll) & (int64)-(*(int64*)((uint8*)&AST$ + 464ll) == 0ll)) == 0ll ) goto label$266;
	{
		ERRREPORTWARN( 25ll, (uint8*)0ull, 1ll, (uint8*)0ull );
	}
	label$266:;
	label$265:;
	label$242:;
}

int64 ASTPTRCHECK( int64 PDTYPE$1, struct $8FBSYMBOL* PSUBTYPE$1, int64 PPARAMMODE$1, struct $7ASTNODE* EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$269:;
	fb$result$1 = 0ll;
	int64 EDTYPE$1;
	EDTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll);
	if( (EDTYPE$1 & 480ll) != 0ll ) goto label$272;
	{
		if( *(int64*)EXPR$1 != 16ll ) goto label$274;
		{
			int64 TMP$104$3;
			if( (EDTYPE$1 & 480ll) == 0ll ) goto label$275;
			TMP$104$3 = 24ll;
			goto label$283;
			label$275:;
			TMP$104$3 = EDTYPE$1 & 31ll;
			label$283:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$3 * 56ll)) != 0ll ) goto label$277;
			{
				int64 vr$7 = ASTCONSTEQZERO( EXPR$1 );
				fb$result$1 = vr$7;
			}
			label$277:;
			label$276:;
		}
		label$274:;
		label$273:;
		goto label$270;
	}
	label$272:;
	label$271:;
	if( (PDTYPE$1 & 31ll) != 0ll ) goto label$279;
	{
		if( (EDTYPE$1 & 31ll) != 0ll ) goto label$281;
		{
			fb$result$1 = -1ll;
			goto label$270;
		}
		label$281:;
		label$280:;
		fb$result$1 = (int64)-(((PDTYPE$1 & 480ll) >> (5ll & 63ll)) <= ((EDTYPE$1 & 480ll) >> (5ll & 63ll)));
		goto label$270;
	}
	goto label$278;
	label$279:;
	if( (EDTYPE$1 & 31ll) != 0ll ) goto label$282;
	{
		fb$result$1 = (int64)-(((PDTYPE$1 & 480ll) >> (5ll & 63ll)) >= ((EDTYPE$1 & 480ll) >> (5ll & 63ll)));
		goto label$270;
	}
	label$282:;
	label$278:;
	$22FB_OVLPROC_MATCH_SCORE vr$24 = TYPECALCMATCH( PDTYPE$1 & 511ll, PSUBTYPE$1, PPARAMMODE$1, EDTYPE$1 & 511ll, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
	fb$result$1 = (int64)-(vr$24 > 0ll);
	label$270:;
	return fb$result$1;
}

struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$284:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	fb$result$1 = N$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$287;
	{
		goto label$285;
	}
	label$287:;
	label$286:;
	{
		uint64 TMP$105$2;
		TMP$105$2 = (uint64)(*(int64*)((uint8*)N$1 + 8ll) & 511ll);
		goto label$289;
		label$290:;
		{
		}
		goto label$288;
		label$291:;
		{
			goto label$285;
		}
		goto label$288;
		label$289:;
		static const void* tmp$106[12ll] = {
			&&label$290,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$291,
			&&label$290,
			&&label$290,
		};
		if( (TMP$105$2 - 7ull) > 11ull ) goto label$291;
		goto *tmp$106[TMP$105$2 - 7ull];
		label$288:;
	}
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$293;
	{
		struct $7ASTNODE* vr$4 = ASTUPDSTRCONCAT( L$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$4;
	}
	label$293:;
	label$292:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$295;
	{
		struct $7ASTNODE* vr$7 = ASTUPDSTRCONCAT( R$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$7;
	}
	label$295:;
	label$294:;
	if( *(int64*)N$1 != 3ll ) goto label$297;
	{
		if( *(int64*)((uint8*)N$1 + 40ll) != 28ll ) goto label$299;
		{
			L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
			R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
			int64 LDTYPE$3;
			LDTYPE$3 = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
			int64 RDTYPE$3;
			RDTYPE$3 = *(int64*)((uint8*)R$1 + 8ll) & 511ll;
			if( (*(int64*)((uint8*)N$1 + 8ll) & 511ll) == 7ll ) goto label$301;
			{
				struct $7ASTNODE* vr$19 = RTLSTRCONCAT( L$1, LDTYPE$3, R$1, RDTYPE$3 );
				fb$result$1 = vr$19;
			}
			goto label$300;
			label$301:;
			{
				struct $7ASTNODE* vr$20 = RTLWSTRCONCAT( L$1, LDTYPE$3, R$1, RDTYPE$3 );
				fb$result$1 = vr$20;
			}
			label$300:;
			ASTDELNODE( N$1 );
		}
		label$299:;
		label$298:;
	}
	label$297:;
	label$296:;
	label$285:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDBRANCH( struct $7ASTNODE* EXPR$1, struct $8FBSYMBOL* LABEL$1, int64 IS_INVERSE$1, int64 IS_IIF$1 )
{
	int64 TMP$107$1;
	$6AST_OP TMP$121$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$302:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* PARENTLINK$1;
	struct $7ASTNODE* M$1;
	int64 DTYPE$1;
	int64 CALL_DTORS$1;
	struct $8FBSYMBOL* TEMP$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$305;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$303;
	}
	label$305:;
	label$304:;
	struct $7ASTNODE* vr$1 = ASTOPTIMIZETREE( EXPR$1 );
	EXPR$1 = vr$1;
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$306;
	TMP$107$1 = 24ll;
	goto label$374;
	label$306:;
	TMP$107$1 = DTYPE$1 & 31ll;
	label$374:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$107$1 * 56ll)) != 2ll ) goto label$308;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$303;
	}
	label$308:;
	label$307:;
	{
		uint64 TMP$108$2;
		TMP$108$2 = (uint64)DTYPE$1;
		goto label$310;
		label$311:;
		{
			if( *(int64*)EXPR$1 == 20ll ) goto label$313;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
				goto label$303;
			}
			label$313:;
			label$312:;
		}
		goto label$309;
		label$314:;
		{
			$9FB_ERRMSG ERR_NUM$3;
			struct $8FBSYMBOL* OVLPROC$3;
			struct $8FBSYMBOL* vr$9 = SYMBFINDCASTOVLPROC( 0ll, (struct $8FBSYMBOL*)0ull, EXPR$1, &ERR_NUM$3, 0ll );
			OVLPROC$3 = vr$9;
			if( OVLPROC$3 != (struct $8FBSYMBOL*)0ull ) goto label$316;
			{
				struct $8FBSYMBOL* vr$11 = SYMBFINDCASTOVLPROC( 32ll, (struct $8FBSYMBOL*)0ull, EXPR$1, &ERR_NUM$3, 0ll );
				OVLPROC$3 = vr$11;
				if( OVLPROC$3 != (struct $8FBSYMBOL*)0ull ) goto label$318;
				{
					struct $8FBSYMBOL* vr$13 = SYMBGETCOMPOPOVLHEAD( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll), 27ll );
					OVLPROC$3 = vr$13;
					if( OVLPROC$3 != (struct $8FBSYMBOL*)0ull ) goto label$320;
					{
						FBSTRING TMP$111$6;
						FBSTRING TMP$112$6;
						FBSTRING TMP$113$6;
						__builtin_memset( &TMP$113$6, 0, 24ll );
						__builtin_memset( &TMP$111$6, 0, 24ll );
						FBSTRING* vr$19 = fb_StrConcat( &TMP$111$6, (void*)" \x22", 3ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) + 32ll), 0ll );
						__builtin_memset( &TMP$112$6, 0, 24ll );
						FBSTRING* vr$22 = fb_StrConcat( &TMP$112$6, (void*)vr$19, -1ll, (void*)".cast()\x22", 9ll );
						fb_StrAssign( (void*)&TMP$113$6, -1ll, (void*)vr$22, -1ll, 0 );
						ERRREPORT( 99ll, -1ll, (uint8*)*(uint8**)&TMP$113$6 );
						fb_StrDelete( (FBSTRING*)&TMP$113$6 );
						fb$result$1 = (struct $7ASTNODE*)0ull;
						goto label$303;
					}
					label$320:;
					label$319:;
					ERRREPORT( 99ll, -1ll, (uint8*)0ull );
					fb$result$1 = (struct $7ASTNODE*)0ull;
					goto label$303;
				}
				label$318:;
				label$317:;
			}
			label$316:;
			label$315:;
			struct $7ASTNODE* vr$25 = ASTBUILDCALL( OVLPROC$3, EXPR$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
			EXPR$1 = vr$25;
			DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
		}
		goto label$309;
		label$310:;
		static const void* tmp$122[17ll] = {
			&&label$311,
			&&label$309,
			&&label$309,
			&&label$311,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$309,
			&&label$314,
		};
		if( (TMP$108$2 - 4ull) > 16ull ) goto label$309;
		goto *tmp$122[TMP$108$2 - 4ull];
		label$309:;
	}
	struct $7ASTNODE* vr$28 = ASTTYPEINIUPDATE( EXPR$1 );
	EXPR$1 = vr$28;
	void* vr$30 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	CALL_DTORS$1 = ~(IS_IIF$1 | (int64)-(vr$30 == (void*)0ull));
	if( CALL_DTORS$1 != 0ll ) goto label$322;
	{
		N$1 = EXPR$1;
		PARENTLINK$1 = (struct $7ASTNODE*)0ull;
		label$323:;
		if( *(int64*)N$1 != 15ll ) goto label$324;
		{
			PARENTLINK$1 = N$1;
			{
				int64 TMP$114$4;
				TMP$114$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$114$4 != 1ll ) goto label$326;
				label$327:;
				{
					N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
				}
				goto label$325;
				label$326:;
				if( TMP$114$4 != 2ll ) goto label$328;
				label$329:;
				{
					N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
				}
				goto label$325;
				label$328:;
				{
					N$1 = (struct $7ASTNODE*)0ull;
				}
				label$330:;
				label$325:;
			}
		}
		goto label$323;
		label$324:;
		{
			$13AST_NODECLASS TMP$115$3;
			TMP$115$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$115$3 != 16ll ) goto label$332;
			label$333:;
			{
				int64 vr$39 = ASTCONSTEQZERO( N$1 );
				if( vr$39 == IS_INVERSE$1 ) goto label$335;
				{
					struct $7ASTNODE* vr$40 = ASTNEWBRANCH( 98ll, LABEL$1, (struct $7ASTNODE*)0ull );
					M$1 = vr$40;
				}
				goto label$334;
				label$335:;
				{
					struct $7ASTNODE* vr$41 = ASTNEWNOP(  );
					M$1 = vr$41;
				}
				label$334:;
				ASTDELNODE( N$1 );
				N$1 = M$1;
			}
			goto label$331;
			label$332:;
			if( TMP$115$3 != 3ll ) goto label$336;
			label$337:;
			{
				{
					uint64 TMP$116$5;
					TMP$116$5 = *(uint64*)((uint8*)N$1 + 40ll);
					goto label$339;
					label$340:;
					{
						*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = LABEL$1;
						if( IS_INVERSE$1 != 0ll ) goto label$342;
						{
							int64 vr$45 = ASTGETINVERSELOGOP( *(int64*)((uint8*)N$1 + 40ll) );
							*(int64*)((uint8*)N$1 + 40ll) = vr$45;
						}
						label$342:;
						label$341:;
					}
					goto label$338;
					label$343:;
					{
						int64 TMP$117$6;
						int64 DOOPT$6;
						if( (DTYPE$1 & 480ll) == 0ll ) goto label$344;
						TMP$117$6 = 24ll;
						goto label$375;
						label$344:;
						TMP$117$6 = DTYPE$1 & 31ll;
						label$375:;
						if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$117$6 * 56ll)) != 0ll ) goto label$346;
						{
							DOOPT$6 = (int64)-((*(int64*)((uint8*)&IR$ + 544ll) & 256ll) != 0ll);
							if( DOOPT$6 == 0ll ) goto label$348;
							{
								{
									uint64 TMP$118$9;
									TMP$118$9 = (uint64)DTYPE$1;
									goto label$350;
									label$351:;
									{
										DOOPT$6 = (int64)-((*(int64*)((uint8*)&IR$ + 544ll) & 1024ll) != 0ll);
									}
									goto label$349;
									label$350:;
									static const void* tmp$123[2ll] = {
										&&label$351,
										&&label$351,
									};
									if( (TMP$118$9 - 13ull) > 1ull ) goto label$349;
									goto *tmp$123[TMP$118$9 - 13ull];
									label$349:;
								}
							}
							label$348:;
							label$347:;
						}
						goto label$345;
						label$346:;
						{
							DOOPT$6 = (int64)-((*(int64*)((uint8*)&IR$ + 544ll) & 4ll) != 0ll);
						}
						label$345:;
						if( DOOPT$6 == 0ll ) goto label$353;
						{
							$6AST_OP TMP$119$7;
							if( IS_INVERSE$1 == 0ll ) goto label$354;
							TMP$119$7 = 95ll;
							goto label$376;
							label$354:;
							TMP$119$7 = 92ll;
							label$376:;
							struct $7ASTNODE* vr$56 = ASTNEWBRANCH( TMP$119$7, LABEL$1, N$1 );
							N$1 = vr$56;
						}
						goto label$352;
						label$353:;
						{
							N$1 = (struct $7ASTNODE*)0ull;
						}
						label$352:;
					}
					goto label$338;
					label$355:;
					{
						N$1 = (struct $7ASTNODE*)0ull;
					}
					goto label$338;
					label$339:;
					static const void* tmp$124[23ll] = {
						&&label$343,
						&&label$343,
						&&label$355,
						&&label$355,
						&&label$355,
						&&label$355,
						&&label$343,
						&&label$343,
						&&label$355,
						&&label$355,
						&&label$343,
						&&label$355,
						&&label$343,
						&&label$343,
						&&label$343,
						&&label$355,
						&&label$355,
						&&label$340,
						&&label$340,
						&&label$340,
						&&label$340,
						&&label$340,
						&&label$340,
					};
					if( (TMP$116$5 - 28ull) > 22ull ) goto label$355;
					goto *tmp$124[TMP$116$5 - 28ull];
					label$338:;
				}
			}
			goto label$331;
			label$336:;
			{
				N$1 = (struct $7ASTNODE*)0ull;
			}
			label$356:;
			label$331:;
		}
		if( N$1 == (struct $7ASTNODE*)0ull ) goto label$358;
		{
			if( PARENTLINK$1 == (struct $7ASTNODE*)0ull ) goto label$360;
			{
				{
					int64 TMP$120$5;
					TMP$120$5 = *(int64*)((uint8*)PARENTLINK$1 + 40ll);
					if( TMP$120$5 != 1ll ) goto label$362;
					label$363:;
					{
						*(struct $7ASTNODE**)((uint8*)PARENTLINK$1 + 112ll) = N$1;
					}
					goto label$361;
					label$362:;
					if( TMP$120$5 != 2ll ) goto label$364;
					label$365:;
					{
						*(struct $7ASTNODE**)((uint8*)PARENTLINK$1 + 120ll) = N$1;
					}
					goto label$361;
					label$364:;
					{
						EXPR$1 = N$1;
					}
					label$366:;
					label$361:;
				}
			}
			goto label$359;
			label$360:;
			{
				EXPR$1 = N$1;
			}
			label$359:;
			fb$result$1 = EXPR$1;
			goto label$303;
		}
		label$358:;
		label$357:;
	}
	goto label$321;
	label$322:;
	{
		N$1 = (struct $7ASTNODE*)0ull;
	}
	label$321:;
	{
		if( DTYPE$1 == 4ll ) goto label$369;
		label$370:;
		if( DTYPE$1 != 7ll ) goto label$368;
		label$369:;
		{
			DTYPE$1 = (DTYPE$1 & -512ll) | (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPE$1 * 56ll)) + 32ll) & 511ll);
		}
		label$368:;
		label$367:;
	}
	if( CALL_DTORS$1 == 0ll ) goto label$372;
	{
		struct $8FBSYMBOL* vr$65 = SYMBADDTEMPVAR( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
		TEMP$1 = vr$65;
		struct $7ASTNODE* vr$66 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( TEMP$1, EXPR$1, 64ll );
		N$1 = vr$66;
		struct $7ASTNODE* vr$67 = ASTDTORLISTFLUSH( 0ll );
		struct $7ASTNODE* vr$68 = ASTNEWLINK( N$1, vr$67, 0ll );
		N$1 = vr$68;
		struct $7ASTNODE* vr$69 = ASTNEWVAR( TEMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$69;
	}
	label$372:;
	label$371:;
	struct $7ASTNODE* vr$71 = ASTNEWCONSTZ( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
	if( IS_INVERSE$1 == 0ll ) goto label$373;
	TMP$121$1 = 48ll;
	goto label$377;
	label$373:;
	TMP$121$1 = 45ll;
	label$377:;
	struct $7ASTNODE* vr$72 = ASTNEWBOP( TMP$121$1, EXPR$1, vr$71, LABEL$1, 0ll );
	struct $7ASTNODE* vr$73 = ASTNEWLINK( N$1, vr$72, 0ll );
	N$1 = vr$73;
	fb$result$1 = N$1;
	label$303:;
	return fb$result$1;
}

void ASTDTORLISTADD( struct $8FBSYMBOL* SYM$1 )
{
	label$387:;
	struct $17AST_DTORLIST_ITEM* N$1;
	int64 vr$0 = HHASDTOR( SYM$1 );
	if( vr$0 != 0ll ) goto label$390;
	{
		goto label$388;
	}
	label$390:;
	label$389:;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	N$1 = (struct $17AST_DTORLIST_ITEM*)vr$2;
	*(struct $8FBSYMBOL**)N$1 = SYM$1;
	{
		struct $23AST_DTORLIST_SCOPESTACK* TMP$126$2;
		TMP$126$2 = (struct $23AST_DTORLIST_SCOPESTACK*)((uint8*)&AST$ + 360ll);
		if( *(int64*)((uint8*)TMP$126$2 + 8ll) <= 0ll ) goto label$392;
		{
			*(int64*)((uint8*)N$1 + 8ll) = *(int64*)((uint8*)((uint8*)*(int64**)TMP$126$2 + (*(int64*)((uint8*)TMP$126$2 + 8ll) << (3ll & 63ll))) + -8ll);
		}
		goto label$391;
		label$392:;
		{
			*(int64*)((uint8*)N$1 + 8ll) = 0ll;
		}
		label$391:;
	}
	*(int64*)((uint8*)N$1 + 16ll) = 0ll;
	label$388:;
}

void ASTDTORLISTADDREF( struct $8FBSYMBOL* SYM$1 )
{
	label$393:;
	struct $17AST_DTORLIST_ITEM* I$1;
	int64 vr$0 = HHASDTOR( SYM$1 );
	if( vr$0 != 0ll ) goto label$396;
	{
		goto label$394;
	}
	label$396:;
	label$395:;
	void* vr$2 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	I$1 = (struct $17AST_DTORLIST_ITEM*)vr$2;
	label$397:;
	if( I$1 == (struct $17AST_DTORLIST_ITEM*)0ull ) goto label$398;
	{
		if( *(struct $8FBSYMBOL**)I$1 != SYM$1 ) goto label$400;
		{
			*(int64*)((uint8*)I$1 + 16ll) = *(int64*)((uint8*)I$1 + 16ll) + 1ll;
			goto label$398;
		}
		label$400:;
		label$399:;
		void* vr$7 = LISTGETPREV( (void*)I$1 );
		I$1 = (struct $17AST_DTORLIST_ITEM*)vr$7;
	}
	goto label$397;
	label$398:;
	label$394:;
}

void ASTDTORLISTREMOVEREF( struct $8FBSYMBOL* SYM$1 )
{
	label$401:;
	struct $17AST_DTORLIST_ITEM* I$1;
	int64 vr$0 = HHASDTOR( SYM$1 );
	if( vr$0 != 0ll ) goto label$404;
	{
		goto label$402;
	}
	label$404:;
	label$403:;
	void* vr$2 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	I$1 = (struct $17AST_DTORLIST_ITEM*)vr$2;
	label$405:;
	if( I$1 == (struct $17AST_DTORLIST_ITEM*)0ull ) goto label$406;
	{
		if( *(struct $8FBSYMBOL**)I$1 != SYM$1 ) goto label$408;
		{
			*(int64*)((uint8*)I$1 + 16ll) = *(int64*)((uint8*)I$1 + 16ll) + -1ll;
			if( *(int64*)((uint8*)I$1 + 16ll) > 0ll ) goto label$410;
			{
				LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 296ll), (void*)I$1 );
			}
			label$410:;
			label$409:;
			goto label$406;
		}
		label$408:;
		label$407:;
		void* vr$9 = LISTGETPREV( (void*)I$1 );
		I$1 = (struct $17AST_DTORLIST_ITEM*)vr$9;
	}
	goto label$405;
	label$406:;
	label$402:;
}

struct $7ASTNODE* ASTDTORLISTFLUSH( int64 COOKIE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$411:;
	struct $17AST_DTORLIST_ITEM* N$1;
	struct $17AST_DTORLIST_ITEM* P$1;
	struct $7ASTNODE* T$1;
	T$1 = (struct $7ASTNODE*)0ull;
	void* vr$2 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	N$1 = (struct $17AST_DTORLIST_ITEM*)vr$2;
	label$413:;
	if( N$1 == (struct $17AST_DTORLIST_ITEM*)0ull ) goto label$414;
	{
		void* vr$3 = LISTGETPREV( (void*)N$1 );
		P$1 = (struct $17AST_DTORLIST_ITEM*)vr$3;
		if( *(int64*)((uint8*)N$1 + 8ll) != COOKIE$1 ) goto label$416;
		{
			struct $7ASTNODE* vr$6 = _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( *(struct $8FBSYMBOL**)N$1, 0ll );
			struct $7ASTNODE* vr$7 = ASTNEWLINK( T$1, vr$6, 0ll );
			T$1 = vr$7;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 296ll), (void*)N$1 );
		}
		goto label$415;
		label$416:;
		if( *(int64*)((uint8*)N$1 + 8ll) != -1ll ) goto label$417;
		{
			LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 296ll), (void*)N$1 );
		}
		label$417:;
		label$415:;
		N$1 = P$1;
	}
	goto label$413;
	label$414:;
	if( COOKIE$1 != 0ll ) goto label$419;
	{
		*(int64*)((uint8*)&AST$ + 384ll) = 0ll;
	}
	label$419:;
	label$418:;
	fb$result$1 = T$1;
	label$412:;
	return fb$result$1;
}

void ASTDTORLISTDEL( struct $8FBSYMBOL* SYM$1 )
{
	label$420:;
	struct $17AST_DTORLIST_ITEM* N$1;
	int64 vr$0 = HHASDTOR( SYM$1 );
	if( vr$0 != 0ll ) goto label$423;
	{
		goto label$421;
	}
	label$423:;
	label$422:;
	void* vr$2 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	N$1 = (struct $17AST_DTORLIST_ITEM*)vr$2;
	label$424:;
	if( N$1 == (struct $17AST_DTORLIST_ITEM*)0ull ) goto label$425;
	{
		if( *(struct $8FBSYMBOL**)N$1 != SYM$1 ) goto label$427;
		{
			LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 296ll), (void*)N$1 );
			goto label$425;
		}
		label$427:;
		label$426:;
		void* vr$5 = LISTGETPREV( (void*)N$1 );
		N$1 = (struct $17AST_DTORLIST_ITEM*)vr$5;
	}
	goto label$424;
	label$425:;
	label$421:;
}

void ASTDTORLISTSCOPEBEGIN( int64 COOKIE$1 )
{
	label$428:;
	if( COOKIE$1 != 0ll ) goto label$431;
	{
		*(int64*)((uint8*)&AST$ + 384ll) = *(int64*)((uint8*)&AST$ + 384ll) + 1ll;
		COOKIE$1 = *(int64*)((uint8*)&AST$ + 384ll);
	}
	label$431:;
	label$430:;
	{
		struct $23AST_DTORLIST_SCOPESTACK* TMP$127$2;
		TMP$127$2 = (struct $23AST_DTORLIST_SCOPESTACK*)((uint8*)&AST$ + 360ll);
		if( *(int64*)((uint8*)TMP$127$2 + 8ll) != *(int64*)((uint8*)TMP$127$2 + 16ll) ) goto label$433;
		{
			*(int64*)((uint8*)TMP$127$2 + 16ll) = *(int64*)((uint8*)TMP$127$2 + 16ll) + 8ll;
			void* vr$11 = XREALLOCATE( *(void**)TMP$127$2, (int32)(*(int64*)((uint8*)TMP$127$2 + 16ll) << (3ll & 63ll)) );
			*(int64**)TMP$127$2 = (int64*)vr$11;
		}
		label$433:;
		label$432:;
		*(int64*)((uint8*)*(int64**)TMP$127$2 + (*(int64*)((uint8*)TMP$127$2 + 8ll) << (3ll & 63ll))) = COOKIE$1;
		*(int64*)((uint8*)TMP$127$2 + 8ll) = *(int64*)((uint8*)TMP$127$2 + 8ll) + 1ll;
	}
	label$429:;
}

int64 ASTDTORLISTSCOPEEND( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$434:;
	{
		struct $23AST_DTORLIST_SCOPESTACK* TMP$128$2;
		TMP$128$2 = (struct $23AST_DTORLIST_SCOPESTACK*)((uint8*)&AST$ + 360ll);
		fb$result$1 = *(int64*)((uint8*)((uint8*)*(int64**)TMP$128$2 + (*(int64*)((uint8*)TMP$128$2 + 8ll) << (3ll & 63ll))) + -8ll);
		*(int64*)((uint8*)TMP$128$2 + 8ll) = *(int64*)((uint8*)TMP$128$2 + 8ll) + -1ll;
	}
	label$435:;
	return fb$result$1;
}

void ASTDTORLISTUNSCOPE( int64 COOKIE$1 )
{
	label$442:;
	HASTDTORLISTRESCOPE( COOKIE$1, 0ll );
	label$443:;
}

void ASTDTORLISTSCOPEDELETE( int64 COOKIE$1 )
{
	label$444:;
	HASTDTORLISTRESCOPE( COOKIE$1, -1ll );
	label$445:;
}

void ASTSETTYPE( struct $7ASTNODE* N$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$446:;
	*(int64*)((uint8*)N$1 + 8ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = SUBTYPE$1;
	{
		$13AST_NODECLASS TMP$129$2;
		TMP$129$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$129$2 != 15ll ) goto label$449;
		label$450:;
		{
			{
				int64 TMP$130$4;
				TMP$130$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$130$4 != 1ll ) goto label$452;
				label$453:;
				{
					ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), DTYPE$1, SUBTYPE$1 );
				}
				goto label$451;
				label$452:;
				if( TMP$130$4 != 2ll ) goto label$454;
				label$455:;
				{
					ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), DTYPE$1, SUBTYPE$1 );
				}
				label$454:;
				label$451:;
			}
		}
		goto label$448;
		label$449:;
		if( TMP$129$2 != 19ll ) goto label$456;
		label$457:;
		{
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), DTYPE$1, SUBTYPE$1 );
		}
		goto label$448;
		label$456:;
		if( TMP$129$2 != 10ll ) goto label$458;
		label$459:;
		{
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), DTYPE$1, SUBTYPE$1 );
		}
		goto label$448;
		label$458:;
		if( TMP$129$2 != 26ll ) goto label$460;
		label$461:;
		{
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), DTYPE$1, SUBTYPE$1 );
		}
		label$460:;
		label$448:;
	}
	label$447:;
}

int64 ASTSIZEOF( struct $7ASTNODE* N$1, int64* IS_FIXLENSTR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$462:;
	*IS_FIXLENSTR$1 = 0ll;
	int64 vr$4 = SYMBCALCLEN( *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
	fb$result$1 = vr$4;
	{
		int64 TMP$131$2;
		TMP$131$2 = *(int64*)((uint8*)N$1 + 8ll) & 511ll;
		if( TMP$131$2 == 4ll ) goto label$466;
		label$467:;
		if( TMP$131$2 == 7ll ) goto label$466;
		label$468:;
		if( TMP$131$2 != 18ll ) goto label$465;
		label$466:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$470;
			{
				*IS_FIXLENSTR$1 = -1ll;
				fb$result$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 80ll);
			}
			label$470:;
			label$469:;
		}
		label$465:;
		label$464:;
	}
	label$463:;
	return fb$result$1;
}

int64 ASTISACCESSTOLOCAL( struct $7ASTNODE* EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$473:;
	fb$result$1 = 0ll;
	{
		$13AST_NODECLASS TMP$132$2;
		TMP$132$2 = *($13AST_NODECLASS*)EXPR$1;
		if( TMP$132$2 != 17ll ) goto label$476;
		label$477:;
		{
			int64 vr$3 = HSYMBISONLOCALSTACK( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll) );
			fb$result$1 = vr$3;
		}
		goto label$475;
		label$476:;
		if( TMP$132$2 != 18ll ) goto label$478;
		label$479:;
		{
			if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll) + 8ll) & 16384ll) != 0ll ) goto label$481;
			{
				int64 vr$8 = HSYMBISONLOCALSTACK( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll) );
				fb$result$1 = vr$8;
			}
			label$481:;
			label$480:;
		}
		goto label$475;
		label$478:;
		if( TMP$132$2 != 9ll ) goto label$482;
		label$483:;
		{
			fb$result$1 = -1ll;
		}
		goto label$475;
		label$482:;
		if( TMP$132$2 != 19ll ) goto label$484;
		label$485:;
		{
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) != 20ll ) goto label$487;
			{
				if( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) + 112ll) == (struct $7ASTNODE*)0ull ) goto label$489;
				{
					int64 TMP$133$5;
					if( *(int64*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) + 112ll) != 3ll ) goto label$490;
					TMP$133$5 = (int64)-(*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) + 112ll) + 40ll) == 28ll);
					goto label$495;
					label$490:;
					TMP$133$5 = 0ll;
					label$495:;
					if( TMP$133$5 == 0ll ) goto label$492;
					{
						if( *(int64*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) + 112ll) + 112ll) != 6ll ) goto label$494;
						{
							int64 vr$28 = ASTISACCESSTOLOCAL( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) + 112ll) + 112ll) + 112ll) );
							fb$result$1 = vr$28;
						}
						label$494:;
						label$493:;
					}
					label$492:;
					label$491:;
				}
				label$489:;
				label$488:;
			}
			goto label$486;
			label$487:;
			{
				int64 vr$30 = ASTISACCESSTOLOCAL( *(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll) );
				fb$result$1 = vr$30;
			}
			label$486:;
		}
		label$484:;
		label$475:;
	}
	label$474:;
	return fb$result$1;
}

int64 ASTISRELATIONALBOP( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$496:;
	if( *(int64*)N$1 != 3ll ) goto label$499;
	{
		fb$result$1 = (int64)-((*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (*(int64*)((uint8*)N$1 + 40ll) << (5ll & 63ll))) + 8ll) & 8ll) != 0ll);
	}
	label$499:;
	label$498:;
	label$497:;
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

static int64 HHASDTOR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$378:;
	int64 vr$1 = SYMBHASDTOR( SYM$1 );
	fb$result$1 = vr$1;
	{
		int64 TMP$125$2;
		TMP$125$2 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
		if( TMP$125$2 != 17ll ) goto label$381;
		label$382:;
		{
			fb$result$1 = -1ll;
		}
		goto label$380;
		label$381:;
		if( TMP$125$2 != 39ll ) goto label$383;
		label$384:;
		{
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 16777216ll) == 0ll ) goto label$386;
			{
				fb$result$1 = -1ll;
			}
			label$386:;
			label$385:;
		}
		label$383:;
		label$380:;
	}
	label$379:;
	return fb$result$1;
}

static void HASTDTORLISTRESCOPE( int64 COOKIE$1, int64 NEWCOOKIE$1 )
{
	label$436:;
	struct $17AST_DTORLIST_ITEM* I$1;
	void* vr$1 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&AST$ + 296ll) );
	I$1 = (struct $17AST_DTORLIST_ITEM*)vr$1;
	label$438:;
	if( I$1 == (struct $17AST_DTORLIST_ITEM*)0ull ) goto label$439;
	{
		if( *(int64*)((uint8*)I$1 + 8ll) != COOKIE$1 ) goto label$441;
		{
			*(int64*)((uint8*)I$1 + 8ll) = NEWCOOKIE$1;
		}
		label$441:;
		label$440:;
		void* vr$4 = LISTGETPREV( (void*)I$1 );
		I$1 = (struct $17AST_DTORLIST_ITEM*)vr$4;
	}
	goto label$438;
	label$439:;
	label$437:;
}

static int64 HSYMBISONLOCALSTACK( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$471:;
	fb$result$1 = (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) != 0ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) == 0ll);
	label$472:;
	return fb$result$1;
}
