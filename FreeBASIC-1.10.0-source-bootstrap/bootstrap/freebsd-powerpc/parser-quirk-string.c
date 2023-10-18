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
typedef int32 $8FB_TOKEN;
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
typedef int32 $8LEXCHECK;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IP7ASTNODEE ) == 36 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 120 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
uint32* fb_WstrAssignFromA( uint32*, int32, void*, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
uint32* fb_WstrConcatWA( uint32*, void*, int32 );
uint32* fb_WstrConcatAssign( uint32*, int32, uint32* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_CHR( int32, ... );
uint32* fb_WstrChr( int32, ... );
FBSTRING* fb_OCT_i( uint32 );
double fb_CVD( FBSTRING* );
float fb_CVS( FBSTRING* );
int16 fb_CVSHORT( FBSTRING* );
int32 fb_CVL( FBSTRING* );
int64 fb_CVLONGINT( FBSTRING* );
static void fb_ctor__parserzquirkzstring( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTISCONSTANT( struct $7ASTNODE* );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
int32 ASTCONSTEQZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int32 );
uint8* HUNESCAPE( uint8*, int32* );
uint32* HUNESCAPEW( uint32*, int32* );
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
int32 CASSIGNTOKEN( void );
struct $7ASTNODE* CGTINPARENSONLYEXPR( void );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64, int32 );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRMID( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRASSIGNMID( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLSTRLRSET( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRFILL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRFILL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRASC( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRCHR( int32, struct $7FBARRAYIP7ASTNODEE*, int32 );
struct $7ASTNODE* RTLSTRINSTR( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRINSTRREV( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRRTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRLTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRCASE( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLMEMCOPYCLEAR( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
static struct $7ASTNODE* CSTRCHR( int32 );
static struct $7ASTNODE* CSTRASC( void );
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

int32 CMIDSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* EXPR2$1;
	struct $7ASTNODE* EXPR3$1;
	struct $7ASTNODE* EXPR4$1;
	fb$result$1 = 0;
	LEXSKIPTOKEN( 8192 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$13;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$12;
	label$13:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$12:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$2;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$15;
	{
		goto label$11;
	}
	label$15:;
	label$14:;
	int32 vr$3 = ASTISCONSTANT( EXPR1$1 );
	if( vr$3 == 0 ) goto label$17;
	{
		ERRREPORT( 119, -1, (uint8*)0u );
	}
	label$17:;
	label$16:;
	int32 vr$4 = LEXGETTOKEN( 0 );
	if( vr$4 == 44 ) goto label$19;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$18;
	label$19:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$18:;
	struct $7ASTNODE* vr$5 = HMATCHEXPR( 8 );
	EXPR2$1 = vr$5;
	if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$21;
	{
		goto label$11;
	}
	label$21:;
	label$20:;
	int32 vr$6 = HMATCH( 44, 0 );
	if( vr$6 == 0 ) goto label$23;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8 );
		EXPR3$1 = vr$7;
		if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$25;
		{
			goto label$11;
		}
		label$25:;
		label$24:;
	}
	goto label$22;
	label$23:;
	{
		struct $7ASTNODE* vr$8 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR3$1 = vr$8;
	}
	label$22:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$27;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$26;
	label$27:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$26:;
	int32 vr$10 = CASSIGNTOKEN(  );
	if( vr$10 != 0 ) goto label$29;
	{
		ERRREPORT( 10, 0, (uint8*)0u );
	}
	label$29:;
	label$28:;
	struct $7ASTNODE* vr$11 = HMATCHEXPR( 17 );
	EXPR4$1 = vr$11;
	if( EXPR4$1 != (struct $7ASTNODE*)0u ) goto label$31;
	{
		goto label$11;
	}
	label$31:;
	label$30:;
	struct $7ASTNODE* vr$12 = RTLSTRASSIGNMID( EXPR1$1, EXPR2$1, EXPR3$1, EXPR4$1 );
	fb$result$1 = -(vr$12 != (struct $7ASTNODE*)0u);
	label$11:;
	return fb$result$1;
}

int32 CLRSETSTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$32:;
	struct $7ASTNODE* DSTEXPR$1;
	struct $7ASTNODE* SRCEXPR$1;
	int32 DTYPE1$1;
	int32 DTYPE2$1;
	struct $8FBSYMBOL* DST$1;
	struct $8FBSYMBOL* SRC$1;
	int32 IS_RSET$1;
	fb$result$1 = 0;
	IS_RSET$1 = -(TK$1 == 419);
	LEXSKIPTOKEN( 2048 );
	struct $7ASTNODE* vr$2 = CVARORDEREF( 0 );
	DSTEXPR$1 = vr$2;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$35;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		struct $8FBSYMBOL* vr$3 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$4 = ASTNEWVAR( vr$3, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		DSTEXPR$1 = vr$4;
	}
	label$35:;
	label$34:;
	ASTTRYOVLSTRINGCONV( &DSTEXPR$1 );
	DTYPE1$1 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
	{
		uint32 TMP$93$2;
		TMP$93$2 = (uint32)DTYPE1$1;
		goto label$37;
		label$38:;
		{
			if( (IS_RSET$1 & -(DTYPE1$1 == 20)) == 0 ) goto label$40;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				IS_RSET$1 = 0;
			}
			label$40:;
			label$39:;
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 12);
			if( SYM$3 != (struct $8FBSYMBOL*)0u ) goto label$42;
			{
				if( *(int32*)DSTEXPR$1 != 20 ) goto label$44;
				{
					struct $8FBSYMBOL* TMP$94$5;
					if( *(struct $7ASTNODE**)((uint8*)DSTEXPR$1 + 64) == (struct $7ASTNODE*)0u ) goto label$45;
					TMP$94$5 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)DSTEXPR$1 + 64) + 12);
					goto label$67;
					label$45:;
					TMP$94$5 = (struct $8FBSYMBOL*)0u;
					label$67:;
					SYM$3 = TMP$94$5;
				}
				label$44:;
				label$43:;
			}
			label$42:;
			label$41:;
			if( SYM$3 != (struct $8FBSYMBOL*)0u ) goto label$47;
			{
				ERRREPORT( 14, -1, (uint8*)0u );
			}
			goto label$46;
			label$47:;
			{
				if( (-((*(int32*)((uint8*)SYM$3 + 4) & 2048) != 0) | -((*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) != 0)) == 0 ) goto label$49;
				{
					ERRREPORT( 119, -1, (uint8*)0u );
				}
				label$49:;
				label$48:;
			}
			label$46:;
		}
		goto label$36;
		label$50:;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( DSTEXPR$1 );
			struct $8FBSYMBOL* vr$22 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$23 = ASTNEWVAR( vr$22, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			DSTEXPR$1 = vr$23;
		}
		goto label$36;
		label$37:;
		static const void* tmp$96[17] = {
			&&label$38,
			&&label$50,
			&&label$50,
			&&label$38,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$38,
			&&label$38,
			&&label$50,
			&&label$38,
		};
		if( (TMP$93$2 - 4u) > 16u ) goto label$50;
		goto *tmp$96[TMP$93$2 - 4u];
		label$36:;
	}
	int32 vr$24 = HMATCH( 44, 0 );
	if( vr$24 != 0 ) goto label$52;
	{
		int32 vr$25 = CASSIGNTOKEN(  );
		if( vr$25 != 0 ) goto label$54;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		label$54:;
		label$53:;
	}
	label$52:;
	label$51:;
	struct $7ASTNODE* vr$26 = HMATCHEXPR( DTYPE1$1 );
	SRCEXPR$1 = vr$26;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$56;
	{
		goto label$33;
	}
	label$56:;
	label$55:;
	ASTTRYOVLSTRINGCONV( &SRCEXPR$1 );
	DTYPE2$1 = *(int32*)((uint8*)SRCEXPR$1 + 4) & 511;
	{
		uint32 TMP$95$2;
		TMP$95$2 = (uint32)DTYPE2$1;
		goto label$58;
		label$59:;
		{
		}
		goto label$57;
		label$60:;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( SRCEXPR$1 );
			struct $8FBSYMBOL* vr$30 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$31 = ASTNEWVAR( vr$30, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			SRCEXPR$1 = vr$31;
		}
		goto label$57;
		label$58:;
		static const void* tmp$97[17] = {
			&&label$59,
			&&label$60,
			&&label$60,
			&&label$59,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$59,
			&&label$59,
			&&label$60,
			&&label$59,
		};
		if( (TMP$95$2 - 4u) > 16u ) goto label$60;
		goto *tmp$97[TMP$95$2 - 4u];
		label$57:;
	}
	if( (-(DTYPE1$1 == 20) | -(DTYPE2$1 == 20)) == 0 ) goto label$62;
	{
		if( DTYPE1$1 == DTYPE2$1 ) goto label$64;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( SRCEXPR$1 );
			ASTDELTREE( DSTEXPR$1 );
			fb$result$1 = -1;
			goto label$33;
		}
		label$64:;
		label$63:;
		DST$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 12);
		SRC$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 12);
		if( (-(DST$1 == (struct $8FBSYMBOL*)0u) | -(SRC$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$66;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			ASTDELTREE( SRCEXPR$1 );
			ASTDELTREE( DSTEXPR$1 );
			fb$result$1 = -1;
			goto label$33;
		}
		label$66:;
		label$65:;
		int32 vr$44 = RTLMEMCOPYCLEAR( DSTEXPR$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 32) + 40), SRCEXPR$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 32) + 40) );
		fb$result$1 = vr$44;
	}
	goto label$61;
	label$62:;
	{
		int32 vr$45 = RTLSTRLRSET( DSTEXPR$1, SRCEXPR$1, IS_RSET$1 );
		fb$result$1 = vr$45;
	}
	label$61:;
	label$33:;
	return fb$result$1;
}

struct $7ASTNODE* CCVXFUNCT( $8FB_TOKEN TK$1 )
{
	int32 TMP$117$1;
	int32 TMP$121$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$149:;
	LEXSKIPTOKEN( 2048 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = -2147483648u;
	if( TK$1 != 426 ) goto label$151;
	int32 vr$1 = HMATCH( 301, 0 );
	TMP$117$1 = -(vr$1 != 0);
	goto label$234;
	label$151:;
	TMP$117$1 = 0;
	label$234:;
	if( TMP$117$1 == 0 ) goto label$153;
	{
		int64 LGT$2;
		struct $7ASTNODE* vr$3 = CGTINPARENSONLYEXPR(  );
		int64 vr$4 = CCONSTINTEXPR( vr$3, 8 );
		LGT$2 = vr$4;
		if( LGT$2 != 8ll ) goto label$155;
		{
			LGT$2 = 0ll;
			label$155:;
		}
		$11FB_DATATYPE vr$5 = HINTEGERTYPEFROMBITSIZE( LGT$2, 0 );
		DTYPE$1 = vr$5;
		int32 vr$6 = HMATCH( 300, 0 );
		if( vr$6 != 0 ) goto label$157;
		{
			ERRREPORT( 309, 0, (uint8*)0u );
		}
		label$157:;
		label$156:;
	}
	label$153:;
	label$152:;
	int32 vr$7 = LEXGETTOKEN( 0 );
	if( vr$7 == 40 ) goto label$159;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$158;
	label$159:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$158:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$8;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$161;
	{
		goto label$150;
	}
	label$161:;
	label$160:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$163;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$162;
	label$163:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$162:;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0u;
	int32 IS_STR$1;
	IS_STR$1 = 0;
	{
		int32 TMP$118$2;
		TMP$118$2 = *(int32*)((uint8*)EXPR1$1 + 4) & 511;
		if( TMP$118$2 != 4 ) goto label$165;
		label$166:;
		{
			struct $8FBSYMBOL* vr$12 = ASTGETSTRLITSYMBOL( EXPR1$1 );
			LITSYM$1 = vr$12;
			IS_STR$1 = -1;
		}
		goto label$164;
		label$165:;
		if( TMP$118$2 == 17 ) goto label$168;
		label$169:;
		if( TMP$118$2 == 18 ) goto label$168;
		label$170:;
		if( TMP$118$2 != 7 ) goto label$167;
		label$168:;
		{
			IS_STR$1 = -1;
		}
		label$167:;
		label$164:;
	}
	int32 ALLOWCONST$1;
	ALLOWCONST$1 = -1;
	$11FB_DATATYPE FUNCTYPE$1;
	{
		uint32 TMP$119$2;
		TMP$119$2 = (uint32)TK$1;
		goto label$172;
		label$173:;
		{
			FUNCTYPE$1 = 16;
			ALLOWCONST$1 = 0;
		}
		goto label$171;
		label$174:;
		{
			FUNCTYPE$1 = 15;
			ALLOWCONST$1 = 0;
		}
		goto label$171;
		label$175:;
		{
			if( DTYPE$1 == -2147483648u ) goto label$177;
			{
				FUNCTYPE$1 = DTYPE$1;
			}
			goto label$176;
			label$177:;
			{
				FUNCTYPE$1 = *($11FB_DATATYPE*)((uint8*)&ENV$ + 1044);
			}
			label$176:;
		}
		goto label$171;
		label$178:;
		{
			FUNCTYPE$1 = 11;
		}
		goto label$171;
		label$179:;
		{
			FUNCTYPE$1 = 5;
		}
		goto label$171;
		label$180:;
		{
			FUNCTYPE$1 = 13;
		}
		goto label$171;
		label$172:;
		static const void* tmp$137[5] = {
			&&label$173,
			&&label$174,
			&&label$175,
			&&label$178,
			&&label$179,
		};
		if( (TMP$119$2 - 424u) > 4u ) goto label$180;
		goto *tmp$137[TMP$119$2 - 424u];
		label$171:;
	}
	uint8* ZS$1;
	int32 ZSLEN$1;
	if( (-(ALLOWCONST$1 != 0) & -(LITSYM$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$182;
	{
		int32 TMP$120$2;
		TMP$120$2 = 0;
		uint8* vr$18 = HUNESCAPE( *(uint8**)((uint8*)LITSYM$1 + 56), &TMP$120$2 );
		ZS$1 = vr$18;
		int32 vr$19 = fb_StrLen( (void*)ZS$1, 0 );
		ZSLEN$1 = vr$19;
	}
	goto label$181;
	label$182:;
	{
		ZS$1 = (uint8*)0u;
		ZSLEN$1 = 0;
	}
	label$181:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	if( IS_STR$1 != 0 ) goto label$183;
	TMP$121$1 = -(FUNCTYPE$1 == 5);
	goto label$235;
	label$183:;
	TMP$121$1 = -1;
	label$235:;
	if( TMP$121$1 == 0 ) goto label$185;
	{
		int32 TMP$122$2;
		if( (FUNCTYPE$1 & 480) == 0 ) goto label$186;
		TMP$122$2 = 24;
		goto label$236;
		label$186:;
		TMP$122$2 = FUNCTYPE$1 & 31;
		label$236:;
		if( ZSLEN$1 < *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$122$2 * 28)) + 4) ) goto label$188;
		{
			{
				if( FUNCTYPE$1 != 16 ) goto label$190;
				label$191:;
				{
					FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
					double vr$25 = fb_CVD( (FBSTRING*)vr$24 );
					struct $7ASTNODE* vr$26 = ASTNEWCONSTF( vr$25, 16 );
					FUNCEXPR$1 = vr$26;
				}
				goto label$189;
				label$190:;
				if( FUNCTYPE$1 != 15 ) goto label$192;
				label$193:;
				{
					FBSTRING* vr$27 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
					float vr$28 = fb_CVS( (FBSTRING*)vr$27 );
					struct $7ASTNODE* vr$30 = ASTNEWCONSTF( (double)vr$28, 15 );
					FUNCEXPR$1 = vr$30;
				}
				goto label$189;
				label$192:;
				{
					{
						int32 TMP$123$6;
						int32 TMP$124$6;
						if( (FUNCTYPE$1 & 480) == 0 ) goto label$195;
						TMP$123$6 = 24;
						goto label$237;
						label$195:;
						TMP$123$6 = FUNCTYPE$1 & 31;
						label$237:;
						TMP$124$6 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$123$6 * 28)) + 4);
						if( TMP$124$6 != 2 ) goto label$197;
						label$198:;
						{
							FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int16 vr$35 = fb_CVSHORT( (FBSTRING*)vr$34 );
							struct $7ASTNODE* vr$37 = ASTNEWCONSTI( (int64)vr$35, 5, (struct $8FBSYMBOL*)0u );
							FUNCEXPR$1 = vr$37;
						}
						goto label$196;
						label$197:;
						if( TMP$124$6 != 4 ) goto label$199;
						label$200:;
						{
							FBSTRING* vr$38 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int32 vr$39 = fb_CVL( (FBSTRING*)vr$38 );
							struct $7ASTNODE* vr$41 = ASTNEWCONSTI( (int64)vr$39, FUNCTYPE$1, (struct $8FBSYMBOL*)0u );
							FUNCEXPR$1 = vr$41;
						}
						goto label$196;
						label$199:;
						{
							FBSTRING* vr$42 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int64 vr$43 = fb_CVLONGINT( (FBSTRING*)vr$42 );
							struct $7ASTNODE* vr$44 = ASTNEWCONSTI( vr$43, FUNCTYPE$1, (struct $8FBSYMBOL*)0u );
							FUNCEXPR$1 = vr$44;
						}
						label$201:;
						label$196:;
					}
				}
				label$194:;
				label$189:;
			}
			ASTDELNODE( EXPR1$1 );
		}
		goto label$187;
		label$188:;
		{
			{
				if( FUNCTYPE$1 != 16 ) goto label$203;
				label$204:;
				{
					struct $8FBSYMBOL* vr$45 = RTLPROCLOOKUP( (uint8*)"fb_CVD", 38 );
					struct $7ASTNODE* vr$46 = ASTNEWCALL( vr$45, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$46;
				}
				goto label$202;
				label$203:;
				if( FUNCTYPE$1 != 15 ) goto label$205;
				label$206:;
				{
					struct $8FBSYMBOL* vr$47 = RTLPROCLOOKUP( (uint8*)"fb_CVS", 39 );
					struct $7ASTNODE* vr$48 = ASTNEWCALL( vr$47, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$48;
				}
				goto label$202;
				label$205:;
				{
					{
						int32 TMP$127$6;
						int32 TMP$128$6;
						if( (FUNCTYPE$1 & 480) == 0 ) goto label$208;
						TMP$127$6 = 24;
						goto label$238;
						label$208:;
						TMP$127$6 = FUNCTYPE$1 & 31;
						label$238:;
						TMP$128$6 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$127$6 * 28)) + 4);
						if( TMP$128$6 != 2 ) goto label$210;
						label$211:;
						{
							struct $8FBSYMBOL* vr$52 = RTLPROCLOOKUP( (uint8*)"fb_CVSHORT", 41 );
							struct $7ASTNODE* vr$53 = ASTNEWCALL( vr$52, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$53;
						}
						goto label$209;
						label$210:;
						if( TMP$128$6 != 4 ) goto label$212;
						label$213:;
						{
							struct $8FBSYMBOL* vr$54 = RTLPROCLOOKUP( (uint8*)"fb_CVL", 40 );
							struct $7ASTNODE* vr$55 = ASTNEWCALL( vr$54, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$55;
						}
						goto label$209;
						label$212:;
						{
							struct $8FBSYMBOL* vr$56 = RTLPROCLOOKUP( (uint8*)"fb_CVLONGINT", 42 );
							struct $7ASTNODE* vr$57 = ASTNEWCALL( vr$56, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$57;
						}
						label$214:;
						label$209:;
					}
				}
				label$207:;
				label$202:;
			}
			struct $7ASTNODE* vr$58 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, -2147483648u, -1 );
			if( vr$58 != (struct $7ASTNODE*)0u ) goto label$216;
			{
				FUNCEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$216:;
			label$215:;
		}
		label$187:;
	}
	goto label$184;
	label$185:;
	{
		{
			if( FUNCTYPE$1 != 16 ) goto label$218;
			label$219:;
			{
				struct $8FBSYMBOL* vr$59 = RTLPROCLOOKUP( (uint8*)"fb_CVDFROMLONGINT", 43 );
				struct $7ASTNODE* vr$60 = ASTNEWCALL( vr$59, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$60;
			}
			goto label$217;
			label$218:;
			if( FUNCTYPE$1 != 15 ) goto label$220;
			label$221:;
			{
				struct $8FBSYMBOL* vr$61 = RTLPROCLOOKUP( (uint8*)"fb_CVSFROML", 44 );
				struct $7ASTNODE* vr$62 = ASTNEWCALL( vr$61, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$62;
			}
			goto label$217;
			label$220:;
			{
				int32 TMP$134$4;
				if( (FUNCTYPE$1 & 480) == 0 ) goto label$223;
				TMP$134$4 = 24;
				goto label$239;
				label$223:;
				TMP$134$4 = FUNCTYPE$1 & 31;
				label$239:;
				if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$134$4 * 28)) + 4) != 4 ) goto label$225;
				{
					struct $8FBSYMBOL* vr$66 = RTLPROCLOOKUP( (uint8*)"fb_CVLFROMS", 45 );
					struct $7ASTNODE* vr$67 = ASTNEWCALL( vr$66, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$67;
				}
				goto label$224;
				label$225:;
				{
					struct $8FBSYMBOL* vr$68 = RTLPROCLOOKUP( (uint8*)"fb_CVLONGINTFROMD", 46 );
					struct $7ASTNODE* vr$69 = ASTNEWCALL( vr$68, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$69;
				}
				label$224:;
			}
			label$222:;
			label$217:;
		}
		if( FUNCEXPR$1 == (struct $7ASTNODE*)0u ) goto label$227;
		{
			struct $7ASTNODE* vr$70 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, -2147483648u, -1 );
			if( vr$70 != (struct $7ASTNODE*)0u ) goto label$229;
			{
				FUNCEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$229:;
			label$228:;
		}
		label$227:;
		label$226:;
	}
	label$184:;
	if( FUNCEXPR$1 == (struct $7ASTNODE*)0u ) goto label$231;
	{
		struct $7ASTNODE* vr$71 = ASTNEWCONV( FUNCTYPE$1, (struct $8FBSYMBOL*)0u, FUNCEXPR$1, 0, (int32*)0u );
		FUNCEXPR$1 = vr$71;
	}
	label$231:;
	label$230:;
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$233;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
	}
	label$233:;
	label$232:;
	fb$result$1 = FUNCEXPR$1;
	label$150:;
	return fb$result$1;
}

struct $7ASTNODE* CMKXFUNCT( $8FB_TOKEN TK$1 )
{
	int32 TMP$138$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$240:;
	LEXSKIPTOKEN( 8192 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = -2147483648u;
	if( TK$1 != 432 ) goto label$242;
	int32 vr$1 = HMATCH( 301, 0 );
	TMP$138$1 = -(vr$1 != 0);
	goto label$281;
	label$242:;
	TMP$138$1 = 0;
	label$281:;
	if( TMP$138$1 == 0 ) goto label$244;
	{
		int64 LGT$2;
		struct $7ASTNODE* vr$3 = CGTINPARENSONLYEXPR(  );
		int64 vr$4 = CCONSTINTEXPR( vr$3, 8 );
		LGT$2 = vr$4;
		if( LGT$2 != 8ll ) goto label$246;
		{
			LGT$2 = 0ll;
			label$246:;
		}
		$11FB_DATATYPE vr$5 = HINTEGERTYPEFROMBITSIZE( LGT$2, 0 );
		DTYPE$1 = vr$5;
		int32 vr$6 = HMATCH( 300, 0 );
		if( vr$6 != 0 ) goto label$248;
		{
			ERRREPORT( 309, 0, (uint8*)0u );
		}
		label$248:;
		label$247:;
	}
	label$244:;
	label$243:;
	int32 vr$7 = LEXGETTOKEN( 0 );
	if( vr$7 == 40 ) goto label$250;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$249;
	label$250:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$249:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$8;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$252;
	{
		goto label$241;
	}
	label$252:;
	label$251:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$254;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$253;
	label$254:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$253:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	if( EXPR1$1 == (struct $7ASTNODE*)0u ) goto label$256;
	{
		{
			uint32 TMP$139$3;
			TMP$139$3 = (uint32)TK$1;
			goto label$258;
			label$259:;
			{
				struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_MKD", 32 );
				struct $7ASTNODE* vr$11 = ASTNEWCALL( vr$10, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$11;
			}
			goto label$257;
			label$260:;
			{
				struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_MKS", 33 );
				struct $7ASTNODE* vr$13 = ASTNEWCALL( vr$12, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$13;
			}
			goto label$257;
			label$261:;
			{
				if( DTYPE$1 != -2147483648u ) goto label$263;
				{
					DTYPE$1 = *($11FB_DATATYPE*)((uint8*)&ENV$ + 1044);
				}
				label$263:;
				label$262:;
				if( (DTYPE$1 & 511) != 8 ) goto label$265;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_MKI", 34 );
					struct $7ASTNODE* vr$16 = ASTNEWCALL( vr$15, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$16;
				}
				goto label$264;
				label$265:;
				{
					{
						int32 TMP$143$6;
						int32 TMP$144$6;
						if( (DTYPE$1 & 480) == 0 ) goto label$266;
						TMP$143$6 = 24;
						goto label$282;
						label$266:;
						TMP$143$6 = DTYPE$1 & 31;
						label$282:;
						TMP$144$6 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$143$6 * 28)) + 20);
						if( TMP$144$6 != 3 ) goto label$268;
						label$269:;
						{
							struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_MKSHORT", 36 );
							struct $7ASTNODE* vr$21 = ASTNEWCALL( vr$20, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$21;
						}
						goto label$267;
						label$268:;
						if( TMP$144$6 != 5 ) goto label$270;
						label$271:;
						{
							struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_MKL", 35 );
							struct $7ASTNODE* vr$23 = ASTNEWCALL( vr$22, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$23;
						}
						goto label$267;
						label$270:;
						if( TMP$144$6 != 7 ) goto label$272;
						label$273:;
						{
							struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_MKLONGINT", 37 );
							struct $7ASTNODE* vr$25 = ASTNEWCALL( vr$24, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$25;
						}
						label$272:;
						label$267:;
					}
				}
				label$264:;
			}
			goto label$257;
			label$274:;
			{
				struct $8FBSYMBOL* vr$26 = RTLPROCLOOKUP( (uint8*)"fb_MKL", 35 );
				struct $7ASTNODE* vr$27 = ASTNEWCALL( vr$26, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$27;
			}
			goto label$257;
			label$275:;
			{
				struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_MKSHORT", 36 );
				struct $7ASTNODE* vr$29 = ASTNEWCALL( vr$28, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$29;
			}
			goto label$257;
			label$276:;
			{
				struct $8FBSYMBOL* vr$30 = RTLPROCLOOKUP( (uint8*)"fb_MKLONGINT", 37 );
				struct $7ASTNODE* vr$31 = ASTNEWCALL( vr$30, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$31;
			}
			goto label$257;
			label$258:;
			static const void* tmp$148[5] = {
				&&label$259,
				&&label$260,
				&&label$261,
				&&label$274,
				&&label$275,
			};
			if( (TMP$139$3 - 430u) > 4u ) goto label$276;
			goto *tmp$148[TMP$139$3 - 430u];
			label$257:;
		}
		struct $7ASTNODE* vr$32 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, -2147483648u, -1 );
		if( vr$32 != (struct $7ASTNODE*)0u ) goto label$278;
		{
			FUNCEXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$278:;
		label$277:;
	}
	label$256:;
	label$255:;
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$280;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
	}
	label$280:;
	label$279:;
	fb$result$1 = FUNCEXPR$1;
	label$241:;
	return fb$result$1;
}

struct $7ASTNODE* CSTRINGFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$283:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* EXPR2$1;
	struct $7ASTNODE* EXPR3$1;
	int32 DCLASS$1;
	int32 DTYPE$1;
	int32 IS_ANY$1;
	int32 IS_WSTR$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		if( TK$1 == 423 ) goto label$287;
		label$288:;
		if( TK$1 != 436 ) goto label$286;
		label$287:;
		{
			$8LEXCHECK TMP$149$3;
			IS_WSTR$1 = -(TK$1 == 436);
			if( IS_WSTR$1 == 0 ) goto label$289;
			TMP$149$3 = 2048;
			goto label$418;
			label$289:;
			TMP$149$3 = 8192;
			label$418:;
			LEXSKIPTOKEN( TMP$149$3 );
			int32 vr$2 = LEXGETTOKEN( 0 );
			if( vr$2 == 40 ) goto label$291;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$290;
			label$291:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$290:;
			struct $7ASTNODE* vr$3 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$3;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$293;
			{
				goto label$284;
			}
			label$293:;
			label$292:;
			int32 vr$4 = LEXGETTOKEN( 0 );
			if( vr$4 == 41 ) goto label$295;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$294;
			label$295:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$294:;
			if( IS_WSTR$1 != 0 ) goto label$297;
			{
				struct $7ASTNODE* vr$6 = RTLTOSTR( EXPR1$1, -(*(int32*)((uint8*)&ENV$ + 136) == 3) );
				EXPR1$1 = vr$6;
			}
			goto label$296;
			label$297:;
			{
				struct $7ASTNODE* vr$7 = RTLTOWSTR( EXPR1$1 );
				EXPR1$1 = vr$7;
			}
			label$296:;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$299;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$8;
			}
			label$299:;
			label$298:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$286:;
		if( TK$1 != 437 ) goto label$300;
		label$301:;
		{
			LEXSKIPTOKEN( 8192 );
			int32 vr$9 = LEXGETTOKEN( 0 );
			if( vr$9 == 40 ) goto label$303;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$302;
			label$303:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$302:;
			struct $7ASTNODE* vr$10 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$10;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$305;
			{
				goto label$284;
			}
			label$305:;
			label$304:;
			int32 vr$11 = LEXGETTOKEN( 0 );
			if( vr$11 == 44 ) goto label$307;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$306;
			label$307:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$306:;
			struct $7ASTNODE* vr$12 = HMATCHEXPR( 8 );
			EXPR2$1 = vr$12;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$309;
			{
				goto label$284;
			}
			label$309:;
			label$308:;
			int32 vr$13 = HMATCH( 44, 0 );
			if( vr$13 == 0 ) goto label$311;
			{
				struct $7ASTNODE* vr$14 = HMATCHEXPR( 8 );
				EXPR3$1 = vr$14;
				if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$313;
				{
					goto label$284;
				}
				label$313:;
				label$312:;
			}
			goto label$310;
			label$311:;
			{
				struct $7ASTNODE* vr$15 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR3$1 = vr$15;
			}
			label$310:;
			int32 vr$16 = LEXGETTOKEN( 0 );
			if( vr$16 == 41 ) goto label$315;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$314;
			label$315:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$314:;
			struct $7ASTNODE* vr$17 = RTLSTRMID( EXPR1$1, EXPR2$1, EXPR3$1 );
			EXPR1$1 = vr$17;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$317;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$18;
			}
			label$317:;
			label$316:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$300:;
		if( TK$1 == 369 ) goto label$319;
		label$320:;
		if( TK$1 != 371 ) goto label$318;
		label$319:;
		{
			$8LEXCHECK TMP$150$3;
			IS_WSTR$1 = -(TK$1 == 371);
			if( IS_WSTR$1 == 0 ) goto label$321;
			TMP$150$3 = 2048;
			goto label$419;
			label$321:;
			TMP$150$3 = 8192;
			label$419:;
			LEXSKIPTOKEN( TMP$150$3 );
			int32 vr$20 = LEXGETTOKEN( 0 );
			if( vr$20 == 40 ) goto label$323;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$322;
			label$323:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$322:;
			struct $7ASTNODE* vr$21 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$21;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$325;
			{
				goto label$284;
			}
			label$325:;
			label$324:;
			int32 vr$22 = LEXGETTOKEN( 0 );
			if( vr$22 == 44 ) goto label$327;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$326;
			label$327:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$326:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 8 );
			EXPR2$1 = vr$23;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$329;
			{
				goto label$284;
			}
			label$329:;
			label$328:;
			int32 vr$24 = LEXGETTOKEN( 0 );
			if( vr$24 == 41 ) goto label$331;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$330;
			label$331:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$330:;
			if( IS_WSTR$1 != 0 ) goto label$333;
			{
				struct $7ASTNODE* vr$25 = RTLSTRFILL( EXPR1$1, EXPR2$1 );
				EXPR1$1 = vr$25;
			}
			goto label$332;
			label$333:;
			{
				struct $7ASTNODE* vr$26 = RTLWSTRFILL( EXPR1$1, EXPR2$1 );
				EXPR1$1 = vr$26;
			}
			label$332:;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$335;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$27 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$27;
			}
			label$335:;
			label$334:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$318:;
		if( TK$1 == 421 ) goto label$337;
		label$338:;
		if( TK$1 != 422 ) goto label$336;
		label$337:;
		{
			$8LEXCHECK TMP$151$3;
			IS_WSTR$1 = -(TK$1 == 422);
			if( IS_WSTR$1 == 0 ) goto label$339;
			TMP$151$3 = 2048;
			goto label$420;
			label$339:;
			TMP$151$3 = 8192;
			label$420:;
			LEXSKIPTOKEN( TMP$151$3 );
			struct $7ASTNODE* vr$29 = CSTRCHR( IS_WSTR$1 );
			fb$result$1 = vr$29;
		}
		goto label$285;
		label$336:;
		if( TK$1 != 420 ) goto label$340;
		label$341:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$30 = CSTRASC(  );
			fb$result$1 = vr$30;
		}
		goto label$285;
		label$340:;
		if( TK$1 != 438 ) goto label$342;
		label$343:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$31 = LEXGETTOKEN( 0 );
			if( vr$31 == 40 ) goto label$345;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$344;
			label$345:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$344:;
			struct $7ASTNODE* vr$32 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$32;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$347;
			{
				goto label$284;
			}
			label$347:;
			label$346:;
			int32 vr$33 = LEXGETTOKEN( 0 );
			if( vr$33 == 44 ) goto label$349;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$348;
			label$349:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$348:;
			int32 vr$34 = HMATCH( 372, 2048 );
			IS_ANY$1 = vr$34;
			struct $7ASTNODE* vr$35 = HMATCHEXPR( 17 );
			EXPR2$1 = vr$35;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$351;
			{
				goto label$284;
			}
			label$351:;
			label$350:;
			EXPR3$1 = (struct $7ASTNODE*)0u;
			if( IS_ANY$1 != 0 ) goto label$353;
			{
				int32 vr$36 = HMATCH( 44, 0 );
				if( vr$36 == 0 ) goto label$355;
				{
					int32 vr$37 = HMATCH( 372, 2048 );
					IS_ANY$1 = vr$37;
					struct $7ASTNODE* vr$38 = HMATCHEXPR( 17 );
					EXPR3$1 = vr$38;
					if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$357;
					{
						goto label$284;
					}
					label$357:;
					label$356:;
				}
				label$355:;
				label$354:;
			}
			label$353:;
			label$352:;
			if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$359;
			{
				EXPR3$1 = EXPR2$1;
				EXPR2$1 = EXPR1$1;
				struct $7ASTNODE* vr$39 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$39;
			}
			label$359:;
			label$358:;
			int32 vr$40 = LEXGETTOKEN( 0 );
			if( vr$40 == 41 ) goto label$361;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$360;
			label$361:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$360:;
			struct $7ASTNODE* vr$41 = RTLSTRINSTR( EXPR1$1, EXPR2$1, EXPR3$1, IS_ANY$1 );
			EXPR1$1 = vr$41;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$363;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$42 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$42;
			}
			label$363:;
			label$362:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$342:;
		if( TK$1 != 439 ) goto label$364;
		label$365:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$43 = LEXGETTOKEN( 0 );
			if( vr$43 == 40 ) goto label$367;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$366;
			label$367:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$366:;
			struct $7ASTNODE* vr$44 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$44;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$369;
			{
				goto label$284;
			}
			label$369:;
			label$368:;
			int32 vr$45 = LEXGETTOKEN( 0 );
			if( vr$45 == 44 ) goto label$371;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$370;
			label$371:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$370:;
			int32 vr$46 = HMATCH( 372, 2048 );
			IS_ANY$1 = vr$46;
			struct $7ASTNODE* vr$47 = HMATCHEXPR( 17 );
			EXPR2$1 = vr$47;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$373;
			{
				goto label$284;
			}
			label$373:;
			label$372:;
			int32 vr$48 = HMATCH( 44, 0 );
			if( vr$48 == 0 ) goto label$375;
			{
				struct $7ASTNODE* vr$49 = HMATCHEXPR( 8 );
				EXPR3$1 = vr$49;
				if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$377;
				{
					goto label$284;
				}
				label$377:;
				label$376:;
			}
			goto label$374;
			label$375:;
			{
				struct $7ASTNODE* vr$50 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR3$1 = vr$50;
			}
			label$374:;
			int32 vr$51 = LEXGETTOKEN( 0 );
			if( vr$51 == 41 ) goto label$379;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$378;
			label$379:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$378:;
			struct $7ASTNODE* vr$52 = RTLSTRINSTRREV( EXPR3$1, EXPR1$1, EXPR2$1, IS_ANY$1 );
			EXPR1$1 = vr$52;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$381;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$53 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$53;
			}
			label$381:;
			label$380:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$364:;
		if( TK$1 == 440 ) goto label$383;
		label$384:;
		if( TK$1 == 442 ) goto label$383;
		label$385:;
		if( TK$1 != 441 ) goto label$382;
		label$383:;
		{
			LEXSKIPTOKEN( 8192 );
			int32 vr$54 = LEXGETTOKEN( 0 );
			if( vr$54 == 40 ) goto label$387;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$386;
			label$387:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$386:;
			struct $7ASTNODE* vr$55 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$55;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$389;
			{
				goto label$284;
			}
			label$389:;
			label$388:;
			int32 vr$56 = HMATCH( 44, 0 );
			if( vr$56 == 0 ) goto label$391;
			{
				int32 vr$57 = HMATCH( 372, 2048 );
				IS_ANY$1 = vr$57;
				struct $7ASTNODE* vr$58 = HMATCHEXPR( 17 );
				EXPR2$1 = vr$58;
				if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$393;
				{
					goto label$284;
				}
				label$393:;
				label$392:;
			}
			goto label$390;
			label$391:;
			{
				IS_ANY$1 = 0;
				EXPR2$1 = (struct $7ASTNODE*)0u;
			}
			label$390:;
			int32 vr$59 = LEXGETTOKEN( 0 );
			if( vr$59 == 41 ) goto label$395;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$394;
			label$395:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$394:;
			{
				if( TK$1 != 440 ) goto label$397;
				label$398:;
				{
					struct $7ASTNODE* vr$60 = RTLSTRTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$60;
				}
				goto label$396;
				label$397:;
				if( TK$1 != 442 ) goto label$399;
				label$400:;
				{
					struct $7ASTNODE* vr$61 = RTLSTRLTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$61;
				}
				goto label$396;
				label$399:;
				if( TK$1 != 441 ) goto label$401;
				label$402:;
				{
					struct $7ASTNODE* vr$62 = RTLSTRRTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$62;
				}
				label$401:;
				label$396:;
			}
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$404;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$63 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$63;
			}
			label$404:;
			label$403:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$382:;
		if( TK$1 == 443 ) goto label$406;
		label$407:;
		if( TK$1 != 444 ) goto label$405;
		label$406:;
		{
			LEXSKIPTOKEN( 8192 );
			int32 vr$64 = LEXGETTOKEN( 0 );
			if( vr$64 == 40 ) goto label$409;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$408;
			label$409:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$408:;
			struct $7ASTNODE* vr$65 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$65;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$411;
			{
				goto label$284;
			}
			label$411:;
			label$410:;
			int32 vr$66 = HMATCH( 44, 0 );
			if( vr$66 == 0 ) goto label$413;
			{
				struct $7ASTNODE* vr$67 = HMATCHEXPR( 8 );
				EXPR2$1 = vr$67;
				if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$415;
				{
					goto label$284;
				}
				label$415:;
				label$414:;
			}
			goto label$412;
			label$413:;
			{
				EXPR2$1 = (struct $7ASTNODE*)0u;
			}
			label$412:;
			int32 vr$68 = LEXGETTOKEN( 0 );
			if( vr$68 == 41 ) goto label$417;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$416;
			label$417:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$416:;
			struct $7ASTNODE* vr$70 = RTLSTRCASE( EXPR1$1, EXPR2$1, -(TK$1 == 443) );
			fb$result$1 = vr$70;
		}
		label$405:;
		label$285:;
	}
	label$284:;
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

static struct $7ASTNODE* CSTRCHR( int32 IS_WSTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$68:;
	static uint8 O$1[12];
	static uint8 ZS$1[417];
	static uint32 WS$1[417];
	int32 V$1;
	int32 I$1;
	int32 CNT$1;
	int32 ISCONST$1;
	struct $7ASTNODE* EXPRTB$1[32];
	struct $8FBARRAY1IP7ASTNODEE tmp$98$1;
	*(struct $7ASTNODE***)&tmp$98$1 = (struct $7ASTNODE**)EXPRTB$1;
	*(struct $7ASTNODE***)((uint8*)&tmp$98$1 + 4) = (struct $7ASTNODE**)EXPRTB$1;
	*(int32*)((uint8*)&tmp$98$1 + 8) = 128;
	*(int32*)((uint8*)&tmp$98$1 + 12) = 4;
	*(int32*)((uint8*)&tmp$98$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$98$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$98$1 + 24) = 32;
	*(int32*)((uint8*)&tmp$98$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$98$1 + 32) = 31;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 40 ) goto label$71;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$70;
	label$71:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$70:;
	CNT$1 = 0;
	label$72:;
	{
		struct $7ASTNODE* vr$4 = HMATCHEXPR( 12 );
		*(struct $7ASTNODE**)((int32)(struct $7ASTNODE**)EXPRTB$1 + (CNT$1 << (2 & 31))) = vr$4;
		if( *(struct $7ASTNODE**)((int32)(struct $7ASTNODE**)EXPRTB$1 + (CNT$1 << (2 & 31))) != (struct $7ASTNODE*)0u ) goto label$76;
		{
			goto label$69;
		}
		label$76:;
		label$75:;
		CNT$1 = CNT$1 + 1;
		if( CNT$1 < 32 ) goto label$78;
		{
			goto label$73;
		}
		label$78:;
		label$77:;
	}
	label$74:;
	int32 vr$8 = HMATCH( 44, 0 );
	if( vr$8 != 0 ) goto label$72;
	label$73:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$80;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$79;
	label$80:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$79:;
	ISCONST$1 = -1;
	{
		I$1 = 0;
		int32 TMP$99$2;
		TMP$99$2 = CNT$1 + -1;
		goto label$81;
		label$84:;
		{
			if( *(int32*)*(struct $7ASTNODE**)((int32)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (2 & 31))) == 16 ) goto label$86;
			{
				ISCONST$1 = 0;
				goto label$83;
			}
			label$86:;
			label$85:;
			int32 vr$14 = ASTCONSTEQZERO( *(struct $7ASTNODE**)((int32)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (2 & 31))) );
			if( vr$14 == 0 ) goto label$88;
			{
				ISCONST$1 = 0;
				goto label$83;
			}
			label$88:;
			label$87:;
		}
		label$82:;
		I$1 = I$1 + 1;
		label$81:;
		if( I$1 <= TMP$99$2 ) goto label$84;
		label$83:;
	}
	if( ISCONST$1 == 0 ) goto label$90;
	{
		if( IS_WSTR$1 != 0 ) goto label$92;
		{
			fb_StrAssign( (void*)ZS$1, 417, (void*)"", 1, 0 );
		}
		goto label$91;
		label$92:;
		{
			fb_WstrAssignFromA( (uint32*)WS$1, 417, (void*)"", 1 );
		}
		label$91:;
		{
			I$1 = 0;
			int32 TMP$100$3;
			TMP$100$3 = CNT$1 + -1;
			goto label$93;
			label$96:;
			{
				int64 vr$18 = ASTCONSTFLUSHTOINT( *(struct $7ASTNODE**)((int32)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (2 & 31))), 12 );
				V$1 = (int32)vr$18;
				*(struct $7ASTNODE**)((int32)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (2 & 31))) = (struct $7ASTNODE*)0u;
				if( IS_WSTR$1 != 0 ) goto label$98;
				{
					if( (uint64)V$1 <= 255ull ) goto label$100;
					{
						V$1 = 255;
					}
					label$100:;
					label$99:;
					if( (-(V$1 < 32) | -(V$1 > 127)) == 0 ) goto label$102;
					{
						FBSTRING TMP$102$6;
						FBSTRING TMP$103$6;
						FBSTRING TMP$104$6;
						__builtin_memset( &TMP$102$6, 0, 12 );
						FBSTRING* vr$27 = fb_StrConcat( &TMP$102$6, (void*)ZS$1, 417, (void*)"\x1B", 2 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$27, -1, 0 );
						FBSTRING* vr$28 = fb_OCT_i( (uint32)V$1 );
						fb_StrAssign( (void*)O$1, 12, (void*)vr$28, -1, 0 );
						int32 vr$29 = fb_StrLen( (void*)O$1, 12 );
						FBSTRING* vr$30 = fb_CHR( 1, vr$29 );
						__builtin_memset( &TMP$103$6, 0, 12 );
						FBSTRING* vr$33 = fb_StrConcat( &TMP$103$6, (void*)ZS$1, 417, (void*)vr$30, -1 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$33, -1, 0 );
						__builtin_memset( &TMP$104$6, 0, 12 );
						FBSTRING* vr$36 = fb_StrConcat( &TMP$104$6, (void*)ZS$1, 417, (void*)O$1, 12 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$36, -1, 0 );
					}
					goto label$101;
					label$102:;
					{
						FBSTRING TMP$105$6;
						FBSTRING* vr$37 = fb_CHR( 1, V$1 );
						__builtin_memset( &TMP$105$6, 0, 12 );
						FBSTRING* vr$40 = fb_StrConcat( &TMP$105$6, (void*)ZS$1, 417, (void*)vr$37, -1 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$40, -1, 0 );
					}
					label$101:;
				}
				goto label$97;
				label$98:;
				{
					if( (-(V$1 < 32) | -(V$1 > 127)) == 0 ) goto label$104;
					{
						uint32* TMP$106$6;
						uint32* TMP$107$6;
						uint32* TMP$108$6;
						uint32* vr$44 = fb_WstrConcatWA( (uint32*)WS$1, (void*)"\x1B", 2 );
						TMP$106$6 = vr$44;
						fb_WstrAssign( (uint32*)WS$1, 417, (uint32*)TMP$106$6 );
						fb_WstrDelete( (uint32*)TMP$106$6 );
						FBSTRING* vr$45 = fb_OCT_i( (uint32)V$1 );
						fb_StrAssign( (void*)O$1, 12, (void*)vr$45, -1, 0 );
						int32 vr$46 = fb_StrLen( (void*)O$1, 12 );
						uint32* vr$47 = fb_WstrChr( 1, vr$46 );
						TMP$107$6 = vr$47;
						fb_WstrConcatAssign( (uint32*)WS$1, 417, (uint32*)TMP$107$6 );
						fb_WstrDelete( (uint32*)TMP$107$6 );
						uint32* vr$48 = fb_WstrConcatWA( (uint32*)WS$1, (void*)O$1, 12 );
						TMP$108$6 = vr$48;
						fb_WstrAssign( (uint32*)WS$1, 417, (uint32*)TMP$108$6 );
						fb_WstrDelete( (uint32*)TMP$108$6 );
					}
					goto label$103;
					label$104:;
					{
						uint32* TMP$109$6;
						uint32* vr$49 = fb_WstrChr( 1, V$1 );
						TMP$109$6 = vr$49;
						fb_WstrConcatAssign( (uint32*)WS$1, 417, (uint32*)TMP$109$6 );
						fb_WstrDelete( (uint32*)TMP$109$6 );
					}
					label$103:;
				}
				label$97:;
			}
			label$94:;
			I$1 = I$1 + 1;
			label$93:;
			if( I$1 <= TMP$100$3 ) goto label$96;
			label$95:;
		}
		if( IS_WSTR$1 != 0 ) goto label$106;
		{
			struct $8FBSYMBOL* vr$51 = SYMBALLOCSTRCONST( (uint8*)ZS$1, CNT$1 );
			struct $7ASTNODE* vr$52 = ASTNEWVAR( vr$51, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$52;
		}
		goto label$105;
		label$106:;
		{
			struct $8FBSYMBOL* vr$53 = SYMBALLOCWSTRCONST( (uint32*)WS$1, CNT$1 );
			struct $7ASTNODE* vr$54 = ASTNEWVAR( vr$53, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$54;
		}
		label$105:;
	}
	goto label$89;
	label$90:;
	{
		struct $7ASTNODE* vr$56 = RTLSTRCHR( CNT$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$98$1, IS_WSTR$1 );
		fb$result$1 = vr$56;
	}
	label$89:;
	label$69:;
	return fb$result$1;
}

static struct $7ASTNODE* CSTRASC( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$107:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* POSEXPR$1;
	int64 P$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$110;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$109;
	label$110:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$109:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$2;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$112;
	{
		goto label$108;
	}
	label$112:;
	label$111:;
	int32 vr$3 = HMATCH( 44, 0 );
	if( vr$3 == 0 ) goto label$114;
	{
		struct $7ASTNODE* vr$4 = HMATCHEXPR( 8 );
		POSEXPR$1 = vr$4;
		if( POSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$116;
		{
			goto label$108;
		}
		label$116:;
		label$115:;
	}
	goto label$113;
	label$114:;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$113:;
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 == 41 ) goto label$118;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$117;
	label$118:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$117:;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0u;
	{
		int32 TMP$110$2;
		TMP$110$2 = *(int32*)((uint8*)EXPR1$1 + 4) & 511;
		if( TMP$110$2 == 4 ) goto label$121;
		label$122:;
		if( TMP$110$2 != 7 ) goto label$120;
		label$121:;
		{
			struct $8FBSYMBOL* vr$8 = ASTGETSTRLITSYMBOL( EXPR1$1 );
			LITSYM$1 = vr$8;
		}
		label$120:;
		label$119:;
	}
	if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$124;
	{
		if( (-((*(int32*)((uint8*)EXPR1$1 + 4) & 511) == 7) & -(*(int32*)((uint8*)&ENV$ + 288) == 0)) == 0 ) goto label$126;
		{
			P$1 = -1ll;
		}
		goto label$125;
		label$126:;
		{
			if( POSEXPR$1 == (struct $7ASTNODE*)0u ) goto label$128;
			{
				if( *(int32*)POSEXPR$1 != 16 ) goto label$130;
				{
					int64 vr$15 = ASTCONSTFLUSHTOINT( POSEXPR$1, 8 );
					P$1 = vr$15;
					POSEXPR$1 = (struct $7ASTNODE*)0u;
					if( P$1 >= 0ll ) goto label$132;
					{
						P$1 = 0ll;
					}
					label$132:;
					label$131:;
				}
				goto label$129;
				label$130:;
				{
					P$1 = -1ll;
				}
				label$129:;
			}
			goto label$127;
			label$128:;
			{
				P$1 = 1ll;
			}
			label$127:;
		}
		label$125:;
		if( P$1 < 0ll ) goto label$134;
		{
			int32 TEXTLEN$3;
			__builtin_memset( &TEXTLEN$3, 0, 4 );
			if( (*(int32*)((uint8*)EXPR1$1 + 4) & 511) == 7 ) goto label$136;
			{
				int32 TMP$111$4;
				int32 TMP$112$4;
				int32 TMP$113$4;
				uint8* ZS$4;
				uint8* vr$21 = HUNESCAPE( *(uint8**)((uint8*)LITSYM$1 + 56), &TEXTLEN$3 );
				ZS$4 = vr$21;
				if( ZS$4 == (uint8*)0u ) goto label$137;
				TMP$111$4 = -(TEXTLEN$3 == 0);
				goto label$421;
				label$137:;
				TMP$111$4 = -1;
				label$421:;
				if( TMP$111$4 != 0 ) goto label$138;
				TMP$112$4 = -(P$1 <= 0ll);
				goto label$422;
				label$138:;
				TMP$112$4 = -1;
				label$422:;
				if( TMP$112$4 != 0 ) goto label$139;
				TMP$113$4 = -(P$1 > (int64)TEXTLEN$3);
				goto label$423;
				label$139:;
				TMP$113$4 = -1;
				label$423:;
				if( TMP$113$4 == 0 ) goto label$141;
				{
					struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
					fb$result$1 = vr$26;
				}
				goto label$140;
				label$141:;
				{
					struct $7ASTNODE* vr$31 = ASTNEWCONSTI( (int64)*(uint8*)((uint8*)ZS$4 + (int32)(P$1 + -1ll)), 9, (struct $8FBSYMBOL*)0u );
					fb$result$1 = vr$31;
				}
				label$140:;
			}
			goto label$135;
			label$136:;
			{
				int32 TMP$114$4;
				int32 TMP$115$4;
				int32 TMP$116$4;
				uint32* WS$4;
				uint32* vr$34 = HUNESCAPEW( *(uint32**)((uint8*)LITSYM$1 + 56), &TEXTLEN$3 );
				WS$4 = vr$34;
				if( WS$4 == (uint32*)0u ) goto label$142;
				TMP$114$4 = -(TEXTLEN$3 == 0);
				goto label$424;
				label$142:;
				TMP$114$4 = -1;
				label$424:;
				if( TMP$114$4 != 0 ) goto label$143;
				TMP$115$4 = -(P$1 <= 0ll);
				goto label$425;
				label$143:;
				TMP$115$4 = -1;
				label$425:;
				if( TMP$115$4 != 0 ) goto label$144;
				TMP$116$4 = -(P$1 > (int64)TEXTLEN$3);
				goto label$426;
				label$144:;
				TMP$116$4 = -1;
				label$426:;
				if( TMP$116$4 == 0 ) goto label$146;
				{
					struct $7ASTNODE* vr$39 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
					fb$result$1 = vr$39;
				}
				goto label$145;
				label$146:;
				{
					struct $7ASTNODE* vr$45 = ASTNEWCONSTI( (int64)*(uint32*)((uint8*)WS$4 + ((int32)(P$1 + -1ll) << (2 & 31))), 9, (struct $8FBSYMBOL*)0u );
					fb$result$1 = vr$45;
				}
				label$145:;
			}
			label$135:;
			ASTDELNODE( EXPR1$1 );
			EXPR1$1 = (struct $7ASTNODE*)0u;
		}
		label$134:;
		label$133:;
	}
	label$124:;
	label$123:;
	if( EXPR1$1 == (struct $7ASTNODE*)0u ) goto label$148;
	{
		struct $7ASTNODE* vr$46 = RTLSTRASC( EXPR1$1, POSEXPR$1 );
		fb$result$1 = vr$46;
	}
	label$148:;
	label$147:;
	label$108:;
	return fb$result$1;
}
