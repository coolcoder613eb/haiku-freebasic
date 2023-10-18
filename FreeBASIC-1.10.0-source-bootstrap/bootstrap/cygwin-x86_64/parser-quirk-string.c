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
typedef int64 $8FB_TOKEN;
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
typedef int64 $8LEXCHECK;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1IP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IP7ASTNODEE ) == 72 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 240 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint16* fb_WstrAssign( uint16*, int64, uint16* );
uint16* fb_WstrAssignFromA( uint16*, int64, void*, int64 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
uint16* fb_WstrConcatWA( uint16*, void*, int64 );
uint16* fb_WstrConcatAssign( uint16*, int64, uint16* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_CHR( int32, ... );
uint16* fb_WstrChr( int32, ... );
FBSTRING* fb_OCT_l( uint64 );
double fb_CVD( FBSTRING* );
float fb_CVS( FBSTRING* );
int16 fb_CVSHORT( FBSTRING* );
int32 fb_CVL( FBSTRING* );
int64 fb_CVLONGINT( FBSTRING* );
static void fb_ctor__parserzquirkzstring( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTISCONSTANT( struct $7ASTNODE* );
int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
int64 ASTCONSTEQZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int64 );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint16*, int64 );
uint8* HUNESCAPE( uint8*, int64* );
uint16* HUNESCAPEW( uint16*, int64* );
int64 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
int64 CASSIGNTOKEN( void );
struct $7ASTNODE* CGTINPARENSONLYEXPR( void );
typedef int64 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $7ASTNODE* HMATCHEXPR( int64 );
$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64, int64 );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRMID( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRASSIGNMID( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int64 RTLSTRLRSET( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRFILL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRFILL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRASC( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRCHR( int64, struct $7FBARRAYIP7ASTNODEE*, int64 );
struct $7ASTNODE* RTLSTRINSTR( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRINSTRREV( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRRTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRLTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRCASE( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLMEMCOPYCLEAR( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
static struct $7ASTNODE* CSTRCHR( int64 );
static struct $7ASTNODE* CSTRASC( void );
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

int64 CMIDSTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* EXPR2$1;
	struct $7ASTNODE* EXPR3$1;
	struct $7ASTNODE* EXPR4$1;
	fb$result$1 = 0ll;
	LEXSKIPTOKEN( 8192ll );
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 40ll ) goto label$13;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$12;
	label$13:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$12:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 17ll );
	EXPR1$1 = vr$2;
	if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$15;
	{
		goto label$11;
	}
	label$15:;
	label$14:;
	int64 vr$3 = ASTISCONSTANT( EXPR1$1 );
	if( vr$3 == 0ll ) goto label$17;
	{
		ERRREPORT( 119ll, -1ll, (uint8*)0ull );
	}
	label$17:;
	label$16:;
	int64 vr$4 = LEXGETTOKEN( 0ll );
	if( vr$4 == 44ll ) goto label$19;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$18;
	label$19:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$18:;
	struct $7ASTNODE* vr$5 = HMATCHEXPR( 8ll );
	EXPR2$1 = vr$5;
	if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$21;
	{
		goto label$11;
	}
	label$21:;
	label$20:;
	int64 vr$6 = HMATCH( 44ll, 0ll );
	if( vr$6 == 0ll ) goto label$23;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8ll );
		EXPR3$1 = vr$7;
		if( EXPR3$1 != (struct $7ASTNODE*)0ull ) goto label$25;
		{
			goto label$11;
		}
		label$25:;
		label$24:;
	}
	goto label$22;
	label$23:;
	{
		struct $7ASTNODE* vr$8 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR3$1 = vr$8;
	}
	label$22:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 == 41ll ) goto label$27;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$26;
	label$27:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$26:;
	int64 vr$10 = CASSIGNTOKEN(  );
	if( vr$10 != 0ll ) goto label$29;
	{
		ERRREPORT( 10ll, 0ll, (uint8*)0ull );
	}
	label$29:;
	label$28:;
	struct $7ASTNODE* vr$11 = HMATCHEXPR( 17ll );
	EXPR4$1 = vr$11;
	if( EXPR4$1 != (struct $7ASTNODE*)0ull ) goto label$31;
	{
		goto label$11;
	}
	label$31:;
	label$30:;
	struct $7ASTNODE* vr$12 = RTLSTRASSIGNMID( EXPR1$1, EXPR2$1, EXPR3$1, EXPR4$1 );
	fb$result$1 = (int64)-(vr$12 != (struct $7ASTNODE*)0ull);
	label$11:;
	return fb$result$1;
}

int64 CLRSETSTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$32:;
	struct $7ASTNODE* DSTEXPR$1;
	struct $7ASTNODE* SRCEXPR$1;
	int64 DTYPE1$1;
	int64 DTYPE2$1;
	struct $8FBSYMBOL* DST$1;
	struct $8FBSYMBOL* SRC$1;
	int64 IS_RSET$1;
	fb$result$1 = 0ll;
	IS_RSET$1 = (int64)-(TK$1 == 419ll);
	LEXSKIPTOKEN( 2048ll );
	struct $7ASTNODE* vr$2 = CVARORDEREF( 0ll );
	DSTEXPR$1 = vr$2;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$35;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		struct $8FBSYMBOL* vr$3 = SYMBADDTEMPVAR( 17ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$4 = ASTNEWVAR( vr$3, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		DSTEXPR$1 = vr$4;
	}
	label$35:;
	label$34:;
	ASTTRYOVLSTRINGCONV( &DSTEXPR$1 );
	DTYPE1$1 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
	{
		uint64 TMP$94$2;
		TMP$94$2 = (uint64)DTYPE1$1;
		goto label$37;
		label$38:;
		{
			if( (IS_RSET$1 & (int64)-(DTYPE1$1 == 20ll)) == 0ll ) goto label$40;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				IS_RSET$1 = 0ll;
			}
			label$40:;
			label$39:;
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 24ll);
			if( SYM$3 != (struct $8FBSYMBOL*)0ull ) goto label$42;
			{
				if( *(int64*)DSTEXPR$1 != 20ll ) goto label$44;
				{
					struct $8FBSYMBOL* TMP$95$5;
					if( *(struct $7ASTNODE**)((uint8*)DSTEXPR$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$45;
					TMP$95$5 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)DSTEXPR$1 + 112ll) + 24ll);
					goto label$67;
					label$45:;
					TMP$95$5 = (struct $8FBSYMBOL*)0ull;
					label$67:;
					SYM$3 = TMP$95$5;
				}
				label$44:;
				label$43:;
			}
			label$42:;
			label$41:;
			if( SYM$3 != (struct $8FBSYMBOL*)0ull ) goto label$47;
			{
				ERRREPORT( 14ll, -1ll, (uint8*)0ull );
			}
			goto label$46;
			label$47:;
			{
				if( ((int64)-((*(int64*)((uint8*)SYM$3 + 8ll) & 2048ll) != 0ll) | (int64)-((*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) != 0ll)) == 0ll ) goto label$49;
				{
					ERRREPORT( 119ll, -1ll, (uint8*)0ull );
				}
				label$49:;
				label$48:;
			}
			label$46:;
		}
		goto label$36;
		label$50:;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			ASTDELTREE( DSTEXPR$1 );
			struct $8FBSYMBOL* vr$22 = SYMBADDTEMPVAR( 17ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$23 = ASTNEWVAR( vr$22, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			DSTEXPR$1 = vr$23;
		}
		goto label$36;
		label$37:;
		static const void* tmp$97[17ll] = {
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
		if( (TMP$94$2 - 4ull) > 16ull ) goto label$50;
		goto *tmp$97[TMP$94$2 - 4ull];
		label$36:;
	}
	int64 vr$24 = HMATCH( 44ll, 0ll );
	if( vr$24 != 0ll ) goto label$52;
	{
		int64 vr$25 = CASSIGNTOKEN(  );
		if( vr$25 != 0ll ) goto label$54;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		label$54:;
		label$53:;
	}
	label$52:;
	label$51:;
	struct $7ASTNODE* vr$26 = HMATCHEXPR( DTYPE1$1 );
	SRCEXPR$1 = vr$26;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$56;
	{
		goto label$33;
	}
	label$56:;
	label$55:;
	ASTTRYOVLSTRINGCONV( &SRCEXPR$1 );
	DTYPE2$1 = *(int64*)((uint8*)SRCEXPR$1 + 8ll) & 511ll;
	{
		uint64 TMP$96$2;
		TMP$96$2 = (uint64)DTYPE2$1;
		goto label$58;
		label$59:;
		{
		}
		goto label$57;
		label$60:;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			ASTDELTREE( SRCEXPR$1 );
			struct $8FBSYMBOL* vr$30 = SYMBADDTEMPVAR( 17ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$31 = ASTNEWVAR( vr$30, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			SRCEXPR$1 = vr$31;
		}
		goto label$57;
		label$58:;
		static const void* tmp$98[17ll] = {
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
		if( (TMP$96$2 - 4ull) > 16ull ) goto label$60;
		goto *tmp$98[TMP$96$2 - 4ull];
		label$57:;
	}
	if( ((int64)-(DTYPE1$1 == 20ll) | (int64)-(DTYPE2$1 == 20ll)) == 0ll ) goto label$62;
	{
		if( DTYPE1$1 == DTYPE2$1 ) goto label$64;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			ASTDELTREE( SRCEXPR$1 );
			ASTDELTREE( DSTEXPR$1 );
			fb$result$1 = -1ll;
			goto label$33;
		}
		label$64:;
		label$63:;
		DST$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 24ll);
		SRC$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 24ll);
		if( ((int64)-(DST$1 == (struct $8FBSYMBOL*)0ull) | (int64)-(SRC$1 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$66;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			ASTDELTREE( SRCEXPR$1 );
			ASTDELTREE( DSTEXPR$1 );
			fb$result$1 = -1ll;
			goto label$33;
		}
		label$66:;
		label$65:;
		int64 vr$44 = RTLMEMCOPYCLEAR( DSTEXPR$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 64ll) + 80ll), SRCEXPR$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 64ll) + 80ll) );
		fb$result$1 = vr$44;
	}
	goto label$61;
	label$62:;
	{
		int64 vr$45 = RTLSTRLRSET( DSTEXPR$1, SRCEXPR$1, IS_RSET$1 );
		fb$result$1 = vr$45;
	}
	label$61:;
	label$33:;
	return fb$result$1;
}

struct $7ASTNODE* CCVXFUNCT( $8FB_TOKEN TK$1 )
{
	int64 TMP$118$1;
	int64 TMP$122$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$149:;
	LEXSKIPTOKEN( 2048ll );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = 2147483648ll;
	if( TK$1 != 426ll ) goto label$151;
	int64 vr$1 = HMATCH( 301ll, 0ll );
	TMP$118$1 = (int64)-(vr$1 != 0ll);
	goto label$234;
	label$151:;
	TMP$118$1 = 0ll;
	label$234:;
	if( TMP$118$1 == 0ll ) goto label$153;
	{
		int64 LGT$2;
		struct $7ASTNODE* vr$3 = CGTINPARENSONLYEXPR(  );
		int64 vr$4 = CCONSTINTEXPR( vr$3, 8ll );
		LGT$2 = vr$4;
		if( LGT$2 != 8ll ) goto label$155;
		{
			LGT$2 = 0ll;
			label$155:;
		}
		$11FB_DATATYPE vr$5 = HINTEGERTYPEFROMBITSIZE( LGT$2, 0ll );
		DTYPE$1 = vr$5;
		int64 vr$6 = HMATCH( 300ll, 0ll );
		if( vr$6 != 0ll ) goto label$157;
		{
			ERRREPORT( 309ll, 0ll, (uint8*)0ull );
		}
		label$157:;
		label$156:;
	}
	label$153:;
	label$152:;
	int64 vr$7 = LEXGETTOKEN( 0ll );
	if( vr$7 == 40ll ) goto label$159;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$158;
	label$159:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$158:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 17ll );
	EXPR1$1 = vr$8;
	if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$161;
	{
		goto label$150;
	}
	label$161:;
	label$160:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 == 41ll ) goto label$163;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$162;
	label$163:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$162:;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0ull;
	int64 IS_STR$1;
	IS_STR$1 = 0ll;
	{
		int64 TMP$119$2;
		TMP$119$2 = *(int64*)((uint8*)EXPR1$1 + 8ll) & 511ll;
		if( TMP$119$2 != 4ll ) goto label$165;
		label$166:;
		{
			struct $8FBSYMBOL* vr$12 = ASTGETSTRLITSYMBOL( EXPR1$1 );
			LITSYM$1 = vr$12;
			IS_STR$1 = -1ll;
		}
		goto label$164;
		label$165:;
		if( TMP$119$2 == 17ll ) goto label$168;
		label$169:;
		if( TMP$119$2 == 18ll ) goto label$168;
		label$170:;
		if( TMP$119$2 != 7ll ) goto label$167;
		label$168:;
		{
			IS_STR$1 = -1ll;
		}
		label$167:;
		label$164:;
	}
	int64 ALLOWCONST$1;
	ALLOWCONST$1 = -1ll;
	$11FB_DATATYPE FUNCTYPE$1;
	{
		uint64 TMP$120$2;
		TMP$120$2 = (uint64)TK$1;
		goto label$172;
		label$173:;
		{
			FUNCTYPE$1 = 16ll;
			ALLOWCONST$1 = 0ll;
		}
		goto label$171;
		label$174:;
		{
			FUNCTYPE$1 = 15ll;
			ALLOWCONST$1 = 0ll;
		}
		goto label$171;
		label$175:;
		{
			if( DTYPE$1 == 2147483648ll ) goto label$177;
			{
				FUNCTYPE$1 = DTYPE$1;
			}
			goto label$176;
			label$177:;
			{
				FUNCTYPE$1 = *($11FB_DATATYPE*)((uint8*)&ENV$ + 1432ll);
			}
			label$176:;
		}
		goto label$171;
		label$178:;
		{
			FUNCTYPE$1 = 11ll;
		}
		goto label$171;
		label$179:;
		{
			FUNCTYPE$1 = 5ll;
		}
		goto label$171;
		label$180:;
		{
			FUNCTYPE$1 = 13ll;
		}
		goto label$171;
		label$172:;
		static const void* tmp$138[5ll] = {
			&&label$173,
			&&label$174,
			&&label$175,
			&&label$178,
			&&label$179,
		};
		if( (TMP$120$2 - 424ull) > 4ull ) goto label$180;
		goto *tmp$138[TMP$120$2 - 424ull];
		label$171:;
	}
	uint8* ZS$1;
	int64 ZSLEN$1;
	if( ((int64)-(ALLOWCONST$1 != 0ll) & (int64)-(LITSYM$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$182;
	{
		int64 TMP$121$2;
		TMP$121$2 = 0ll;
		uint8* vr$18 = HUNESCAPE( *(uint8**)((uint8*)LITSYM$1 + 96ll), &TMP$121$2 );
		ZS$1 = vr$18;
		int64 vr$19 = fb_StrLen( (void*)ZS$1, 0ll );
		ZSLEN$1 = vr$19;
	}
	goto label$181;
	label$182:;
	{
		ZS$1 = (uint8*)0ull;
		ZSLEN$1 = 0ll;
	}
	label$181:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
	if( IS_STR$1 != 0ll ) goto label$183;
	TMP$122$1 = (int64)-(FUNCTYPE$1 == 5ll);
	goto label$235;
	label$183:;
	TMP$122$1 = -1ll;
	label$235:;
	if( TMP$122$1 == 0ll ) goto label$185;
	{
		int64 TMP$123$2;
		if( (FUNCTYPE$1 & 480ll) == 0ll ) goto label$186;
		TMP$123$2 = 24ll;
		goto label$236;
		label$186:;
		TMP$123$2 = FUNCTYPE$1 & 31ll;
		label$236:;
		if( ZSLEN$1 < *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$123$2 * 56ll)) + 8ll) ) goto label$188;
		{
			{
				if( FUNCTYPE$1 != 16ll ) goto label$190;
				label$191:;
				{
					FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
					double vr$25 = fb_CVD( (FBSTRING*)vr$24 );
					struct $7ASTNODE* vr$26 = ASTNEWCONSTF( vr$25, 16ll );
					FUNCEXPR$1 = vr$26;
				}
				goto label$189;
				label$190:;
				if( FUNCTYPE$1 != 15ll ) goto label$192;
				label$193:;
				{
					FBSTRING* vr$27 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
					float vr$28 = fb_CVS( (FBSTRING*)vr$27 );
					struct $7ASTNODE* vr$30 = ASTNEWCONSTF( (double)vr$28, 15ll );
					FUNCEXPR$1 = vr$30;
				}
				goto label$189;
				label$192:;
				{
					{
						int64 TMP$124$6;
						int64 TMP$125$6;
						if( (FUNCTYPE$1 & 480ll) == 0ll ) goto label$195;
						TMP$124$6 = 24ll;
						goto label$237;
						label$195:;
						TMP$124$6 = FUNCTYPE$1 & 31ll;
						label$237:;
						TMP$125$6 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$124$6 * 56ll)) + 8ll);
						if( TMP$125$6 != 2ll ) goto label$197;
						label$198:;
						{
							FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int16 vr$35 = fb_CVSHORT( (FBSTRING*)vr$34 );
							struct $7ASTNODE* vr$37 = ASTNEWCONSTI( (int64)vr$35, 5ll, (struct $8FBSYMBOL*)0ull );
							FUNCEXPR$1 = vr$37;
						}
						goto label$196;
						label$197:;
						if( TMP$125$6 != 4ll ) goto label$199;
						label$200:;
						{
							FBSTRING* vr$38 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int32 vr$39 = fb_CVL( (FBSTRING*)vr$38 );
							struct $7ASTNODE* vr$41 = ASTNEWCONSTI( (int64)vr$39, FUNCTYPE$1, (struct $8FBSYMBOL*)0ull );
							FUNCEXPR$1 = vr$41;
						}
						goto label$196;
						label$199:;
						{
							FBSTRING* vr$42 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int64 vr$43 = fb_CVLONGINT( (FBSTRING*)vr$42 );
							struct $7ASTNODE* vr$44 = ASTNEWCONSTI( vr$43, FUNCTYPE$1, (struct $8FBSYMBOL*)0ull );
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
				if( FUNCTYPE$1 != 16ll ) goto label$203;
				label$204:;
				{
					struct $8FBSYMBOL* vr$45 = RTLPROCLOOKUP( (uint8*)"fb_CVD", 38ll );
					struct $7ASTNODE* vr$46 = ASTNEWCALL( vr$45, (struct $7ASTNODE*)0ull );
					FUNCEXPR$1 = vr$46;
				}
				goto label$202;
				label$203:;
				if( FUNCTYPE$1 != 15ll ) goto label$205;
				label$206:;
				{
					struct $8FBSYMBOL* vr$47 = RTLPROCLOOKUP( (uint8*)"fb_CVS", 39ll );
					struct $7ASTNODE* vr$48 = ASTNEWCALL( vr$47, (struct $7ASTNODE*)0ull );
					FUNCEXPR$1 = vr$48;
				}
				goto label$202;
				label$205:;
				{
					{
						int64 TMP$128$6;
						int64 TMP$129$6;
						if( (FUNCTYPE$1 & 480ll) == 0ll ) goto label$208;
						TMP$128$6 = 24ll;
						goto label$238;
						label$208:;
						TMP$128$6 = FUNCTYPE$1 & 31ll;
						label$238:;
						TMP$129$6 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$128$6 * 56ll)) + 8ll);
						if( TMP$129$6 != 2ll ) goto label$210;
						label$211:;
						{
							struct $8FBSYMBOL* vr$52 = RTLPROCLOOKUP( (uint8*)"fb_CVSHORT", 41ll );
							struct $7ASTNODE* vr$53 = ASTNEWCALL( vr$52, (struct $7ASTNODE*)0ull );
							FUNCEXPR$1 = vr$53;
						}
						goto label$209;
						label$210:;
						if( TMP$129$6 != 4ll ) goto label$212;
						label$213:;
						{
							struct $8FBSYMBOL* vr$54 = RTLPROCLOOKUP( (uint8*)"fb_CVL", 40ll );
							struct $7ASTNODE* vr$55 = ASTNEWCALL( vr$54, (struct $7ASTNODE*)0ull );
							FUNCEXPR$1 = vr$55;
						}
						goto label$209;
						label$212:;
						{
							struct $8FBSYMBOL* vr$56 = RTLPROCLOOKUP( (uint8*)"fb_CVLONGINT", 42ll );
							struct $7ASTNODE* vr$57 = ASTNEWCALL( vr$56, (struct $7ASTNODE*)0ull );
							FUNCEXPR$1 = vr$57;
						}
						label$214:;
						label$209:;
					}
				}
				label$207:;
				label$202:;
			}
			struct $7ASTNODE* vr$58 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, 2147483648ll, -1ll );
			if( vr$58 != (struct $7ASTNODE*)0ull ) goto label$216;
			{
				FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
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
			if( FUNCTYPE$1 != 16ll ) goto label$218;
			label$219:;
			{
				struct $8FBSYMBOL* vr$59 = RTLPROCLOOKUP( (uint8*)"fb_CVDFROMLONGINT", 43ll );
				struct $7ASTNODE* vr$60 = ASTNEWCALL( vr$59, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$60;
			}
			goto label$217;
			label$218:;
			if( FUNCTYPE$1 != 15ll ) goto label$220;
			label$221:;
			{
				struct $8FBSYMBOL* vr$61 = RTLPROCLOOKUP( (uint8*)"fb_CVSFROML", 44ll );
				struct $7ASTNODE* vr$62 = ASTNEWCALL( vr$61, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$62;
			}
			goto label$217;
			label$220:;
			{
				int64 TMP$135$4;
				if( (FUNCTYPE$1 & 480ll) == 0ll ) goto label$223;
				TMP$135$4 = 24ll;
				goto label$239;
				label$223:;
				TMP$135$4 = FUNCTYPE$1 & 31ll;
				label$239:;
				if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$135$4 * 56ll)) + 8ll) != 4ll ) goto label$225;
				{
					struct $8FBSYMBOL* vr$66 = RTLPROCLOOKUP( (uint8*)"fb_CVLFROMS", 45ll );
					struct $7ASTNODE* vr$67 = ASTNEWCALL( vr$66, (struct $7ASTNODE*)0ull );
					FUNCEXPR$1 = vr$67;
				}
				goto label$224;
				label$225:;
				{
					struct $8FBSYMBOL* vr$68 = RTLPROCLOOKUP( (uint8*)"fb_CVLONGINTFROMD", 46ll );
					struct $7ASTNODE* vr$69 = ASTNEWCALL( vr$68, (struct $7ASTNODE*)0ull );
					FUNCEXPR$1 = vr$69;
				}
				label$224:;
			}
			label$222:;
			label$217:;
		}
		if( FUNCEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$227;
		{
			struct $7ASTNODE* vr$70 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, 2147483648ll, -1ll );
			if( vr$70 != (struct $7ASTNODE*)0ull ) goto label$229;
			{
				FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
			}
			label$229:;
			label$228:;
		}
		label$227:;
		label$226:;
	}
	label$184:;
	if( FUNCEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$231;
	{
		struct $7ASTNODE* vr$71 = ASTNEWCONV( FUNCTYPE$1, (struct $8FBSYMBOL*)0ull, FUNCEXPR$1, 0ll, (int64*)0ull );
		FUNCEXPR$1 = vr$71;
	}
	label$231:;
	label$230:;
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$233;
	{
		ERRREPORT( 24ll, 0ll, (uint8*)0ull );
	}
	label$233:;
	label$232:;
	fb$result$1 = FUNCEXPR$1;
	label$150:;
	return fb$result$1;
}

struct $7ASTNODE* CMKXFUNCT( $8FB_TOKEN TK$1 )
{
	int64 TMP$139$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$240:;
	LEXSKIPTOKEN( 8192ll );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = 2147483648ll;
	if( TK$1 != 432ll ) goto label$242;
	int64 vr$1 = HMATCH( 301ll, 0ll );
	TMP$139$1 = (int64)-(vr$1 != 0ll);
	goto label$281;
	label$242:;
	TMP$139$1 = 0ll;
	label$281:;
	if( TMP$139$1 == 0ll ) goto label$244;
	{
		int64 LGT$2;
		struct $7ASTNODE* vr$3 = CGTINPARENSONLYEXPR(  );
		int64 vr$4 = CCONSTINTEXPR( vr$3, 8ll );
		LGT$2 = vr$4;
		if( LGT$2 != 8ll ) goto label$246;
		{
			LGT$2 = 0ll;
			label$246:;
		}
		$11FB_DATATYPE vr$5 = HINTEGERTYPEFROMBITSIZE( LGT$2, 0ll );
		DTYPE$1 = vr$5;
		int64 vr$6 = HMATCH( 300ll, 0ll );
		if( vr$6 != 0ll ) goto label$248;
		{
			ERRREPORT( 309ll, 0ll, (uint8*)0ull );
		}
		label$248:;
		label$247:;
	}
	label$244:;
	label$243:;
	int64 vr$7 = LEXGETTOKEN( 0ll );
	if( vr$7 == 40ll ) goto label$250;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$249;
	label$250:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$249:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 17ll );
	EXPR1$1 = vr$8;
	if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$252;
	{
		goto label$241;
	}
	label$252:;
	label$251:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 == 41ll ) goto label$254;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$253;
	label$254:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$253:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
	if( EXPR1$1 == (struct $7ASTNODE*)0ull ) goto label$256;
	{
		{
			uint64 TMP$140$3;
			TMP$140$3 = (uint64)TK$1;
			goto label$258;
			label$259:;
			{
				struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_MKD", 32ll );
				struct $7ASTNODE* vr$11 = ASTNEWCALL( vr$10, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$11;
			}
			goto label$257;
			label$260:;
			{
				struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_MKS", 33ll );
				struct $7ASTNODE* vr$13 = ASTNEWCALL( vr$12, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$13;
			}
			goto label$257;
			label$261:;
			{
				if( DTYPE$1 != 2147483648ll ) goto label$263;
				{
					DTYPE$1 = *($11FB_DATATYPE*)((uint8*)&ENV$ + 1432ll);
				}
				label$263:;
				label$262:;
				if( (DTYPE$1 & 511ll) != 8ll ) goto label$265;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_MKI", 34ll );
					struct $7ASTNODE* vr$16 = ASTNEWCALL( vr$15, (struct $7ASTNODE*)0ull );
					FUNCEXPR$1 = vr$16;
				}
				goto label$264;
				label$265:;
				{
					{
						int64 TMP$144$6;
						int64 TMP$145$6;
						if( (DTYPE$1 & 480ll) == 0ll ) goto label$266;
						TMP$144$6 = 24ll;
						goto label$282;
						label$266:;
						TMP$144$6 = DTYPE$1 & 31ll;
						label$282:;
						TMP$145$6 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$144$6 * 56ll)) + 40ll);
						if( TMP$145$6 != 3ll ) goto label$268;
						label$269:;
						{
							struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_MKSHORT", 36ll );
							struct $7ASTNODE* vr$21 = ASTNEWCALL( vr$20, (struct $7ASTNODE*)0ull );
							FUNCEXPR$1 = vr$21;
						}
						goto label$267;
						label$268:;
						if( TMP$145$6 != 5ll ) goto label$270;
						label$271:;
						{
							struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_MKL", 35ll );
							struct $7ASTNODE* vr$23 = ASTNEWCALL( vr$22, (struct $7ASTNODE*)0ull );
							FUNCEXPR$1 = vr$23;
						}
						goto label$267;
						label$270:;
						if( TMP$145$6 != 7ll ) goto label$272;
						label$273:;
						{
							struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_MKLONGINT", 37ll );
							struct $7ASTNODE* vr$25 = ASTNEWCALL( vr$24, (struct $7ASTNODE*)0ull );
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
				struct $8FBSYMBOL* vr$26 = RTLPROCLOOKUP( (uint8*)"fb_MKL", 35ll );
				struct $7ASTNODE* vr$27 = ASTNEWCALL( vr$26, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$27;
			}
			goto label$257;
			label$275:;
			{
				struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_MKSHORT", 36ll );
				struct $7ASTNODE* vr$29 = ASTNEWCALL( vr$28, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$29;
			}
			goto label$257;
			label$276:;
			{
				struct $8FBSYMBOL* vr$30 = RTLPROCLOOKUP( (uint8*)"fb_MKLONGINT", 37ll );
				struct $7ASTNODE* vr$31 = ASTNEWCALL( vr$30, (struct $7ASTNODE*)0ull );
				FUNCEXPR$1 = vr$31;
			}
			goto label$257;
			label$258:;
			static const void* tmp$149[5ll] = {
				&&label$259,
				&&label$260,
				&&label$261,
				&&label$274,
				&&label$275,
			};
			if( (TMP$140$3 - 430ull) > 4ull ) goto label$276;
			goto *tmp$149[TMP$140$3 - 430ull];
			label$257:;
		}
		struct $7ASTNODE* vr$32 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, 2147483648ll, -1ll );
		if( vr$32 != (struct $7ASTNODE*)0ull ) goto label$278;
		{
			FUNCEXPR$1 = (struct $7ASTNODE*)0ull;
		}
		label$278:;
		label$277:;
	}
	label$256:;
	label$255:;
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$280;
	{
		ERRREPORT( 24ll, 0ll, (uint8*)0ull );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$283:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* EXPR2$1;
	struct $7ASTNODE* EXPR3$1;
	int64 DCLASS$1;
	int64 DTYPE$1;
	int64 IS_ANY$1;
	int64 IS_WSTR$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	{
		if( TK$1 == 423ll ) goto label$287;
		label$288:;
		if( TK$1 != 436ll ) goto label$286;
		label$287:;
		{
			$8LEXCHECK TMP$150$3;
			IS_WSTR$1 = (int64)-(TK$1 == 436ll);
			if( IS_WSTR$1 == 0ll ) goto label$289;
			TMP$150$3 = 2048ll;
			goto label$418;
			label$289:;
			TMP$150$3 = 8192ll;
			label$418:;
			LEXSKIPTOKEN( TMP$150$3 );
			int64 vr$2 = LEXGETTOKEN( 0ll );
			if( vr$2 == 40ll ) goto label$291;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$290;
			label$291:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$290:;
			struct $7ASTNODE* vr$3 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$3;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$293;
			{
				goto label$284;
			}
			label$293:;
			label$292:;
			int64 vr$4 = LEXGETTOKEN( 0ll );
			if( vr$4 == 41ll ) goto label$295;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$294;
			label$295:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$294:;
			if( IS_WSTR$1 != 0ll ) goto label$297;
			{
				struct $7ASTNODE* vr$6 = RTLTOSTR( EXPR1$1, (int64)-(*(int64*)((uint8*)&ENV$ + 272ll) == 3ll) );
				EXPR1$1 = vr$6;
			}
			goto label$296;
			label$297:;
			{
				struct $7ASTNODE* vr$7 = RTLTOWSTR( EXPR1$1 );
				EXPR1$1 = vr$7;
			}
			label$296:;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$299;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$8;
			}
			label$299:;
			label$298:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$286:;
		if( TK$1 != 437ll ) goto label$300;
		label$301:;
		{
			LEXSKIPTOKEN( 8192ll );
			int64 vr$9 = LEXGETTOKEN( 0ll );
			if( vr$9 == 40ll ) goto label$303;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$302;
			label$303:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$302:;
			struct $7ASTNODE* vr$10 = HMATCHEXPR( 17ll );
			EXPR1$1 = vr$10;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$305;
			{
				goto label$284;
			}
			label$305:;
			label$304:;
			int64 vr$11 = LEXGETTOKEN( 0ll );
			if( vr$11 == 44ll ) goto label$307;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$306;
			label$307:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$306:;
			struct $7ASTNODE* vr$12 = HMATCHEXPR( 8ll );
			EXPR2$1 = vr$12;
			if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$309;
			{
				goto label$284;
			}
			label$309:;
			label$308:;
			int64 vr$13 = HMATCH( 44ll, 0ll );
			if( vr$13 == 0ll ) goto label$311;
			{
				struct $7ASTNODE* vr$14 = HMATCHEXPR( 8ll );
				EXPR3$1 = vr$14;
				if( EXPR3$1 != (struct $7ASTNODE*)0ull ) goto label$313;
				{
					goto label$284;
				}
				label$313:;
				label$312:;
			}
			goto label$310;
			label$311:;
			{
				struct $7ASTNODE* vr$15 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR3$1 = vr$15;
			}
			label$310:;
			int64 vr$16 = LEXGETTOKEN( 0ll );
			if( vr$16 == 41ll ) goto label$315;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$314;
			label$315:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$314:;
			struct $7ASTNODE* vr$17 = RTLSTRMID( EXPR1$1, EXPR2$1, EXPR3$1 );
			EXPR1$1 = vr$17;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$317;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$18;
			}
			label$317:;
			label$316:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$300:;
		if( TK$1 == 369ll ) goto label$319;
		label$320:;
		if( TK$1 != 371ll ) goto label$318;
		label$319:;
		{
			$8LEXCHECK TMP$151$3;
			IS_WSTR$1 = (int64)-(TK$1 == 371ll);
			if( IS_WSTR$1 == 0ll ) goto label$321;
			TMP$151$3 = 2048ll;
			goto label$419;
			label$321:;
			TMP$151$3 = 8192ll;
			label$419:;
			LEXSKIPTOKEN( TMP$151$3 );
			int64 vr$20 = LEXGETTOKEN( 0ll );
			if( vr$20 == 40ll ) goto label$323;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$322;
			label$323:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$322:;
			struct $7ASTNODE* vr$21 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$21;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$325;
			{
				goto label$284;
			}
			label$325:;
			label$324:;
			int64 vr$22 = LEXGETTOKEN( 0ll );
			if( vr$22 == 44ll ) goto label$327;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$326;
			label$327:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$326:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 8ll );
			EXPR2$1 = vr$23;
			if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$329;
			{
				goto label$284;
			}
			label$329:;
			label$328:;
			int64 vr$24 = LEXGETTOKEN( 0ll );
			if( vr$24 == 41ll ) goto label$331;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$330;
			label$331:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$330:;
			if( IS_WSTR$1 != 0ll ) goto label$333;
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
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$335;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$27 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$27;
			}
			label$335:;
			label$334:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$318:;
		if( TK$1 == 421ll ) goto label$337;
		label$338:;
		if( TK$1 != 422ll ) goto label$336;
		label$337:;
		{
			$8LEXCHECK TMP$152$3;
			IS_WSTR$1 = (int64)-(TK$1 == 422ll);
			if( IS_WSTR$1 == 0ll ) goto label$339;
			TMP$152$3 = 2048ll;
			goto label$420;
			label$339:;
			TMP$152$3 = 8192ll;
			label$420:;
			LEXSKIPTOKEN( TMP$152$3 );
			struct $7ASTNODE* vr$29 = CSTRCHR( IS_WSTR$1 );
			fb$result$1 = vr$29;
		}
		goto label$285;
		label$336:;
		if( TK$1 != 420ll ) goto label$340;
		label$341:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$30 = CSTRASC(  );
			fb$result$1 = vr$30;
		}
		goto label$285;
		label$340:;
		if( TK$1 != 438ll ) goto label$342;
		label$343:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$31 = LEXGETTOKEN( 0ll );
			if( vr$31 == 40ll ) goto label$345;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$344;
			label$345:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$344:;
			struct $7ASTNODE* vr$32 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$32;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$347;
			{
				goto label$284;
			}
			label$347:;
			label$346:;
			int64 vr$33 = LEXGETTOKEN( 0ll );
			if( vr$33 == 44ll ) goto label$349;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$348;
			label$349:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$348:;
			int64 vr$34 = HMATCH( 372ll, 2048ll );
			IS_ANY$1 = vr$34;
			struct $7ASTNODE* vr$35 = HMATCHEXPR( 17ll );
			EXPR2$1 = vr$35;
			if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$351;
			{
				goto label$284;
			}
			label$351:;
			label$350:;
			EXPR3$1 = (struct $7ASTNODE*)0ull;
			if( IS_ANY$1 != 0ll ) goto label$353;
			{
				int64 vr$36 = HMATCH( 44ll, 0ll );
				if( vr$36 == 0ll ) goto label$355;
				{
					int64 vr$37 = HMATCH( 372ll, 2048ll );
					IS_ANY$1 = vr$37;
					struct $7ASTNODE* vr$38 = HMATCHEXPR( 17ll );
					EXPR3$1 = vr$38;
					if( EXPR3$1 != (struct $7ASTNODE*)0ull ) goto label$357;
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
			if( EXPR3$1 != (struct $7ASTNODE*)0ull ) goto label$359;
			{
				EXPR3$1 = EXPR2$1;
				EXPR2$1 = EXPR1$1;
				struct $7ASTNODE* vr$39 = ASTNEWCONSTI( 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$39;
			}
			label$359:;
			label$358:;
			int64 vr$40 = LEXGETTOKEN( 0ll );
			if( vr$40 == 41ll ) goto label$361;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$360;
			label$361:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$360:;
			struct $7ASTNODE* vr$41 = RTLSTRINSTR( EXPR1$1, EXPR2$1, EXPR3$1, IS_ANY$1 );
			EXPR1$1 = vr$41;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$363;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$42 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$42;
			}
			label$363:;
			label$362:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$342:;
		if( TK$1 != 439ll ) goto label$364;
		label$365:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$43 = LEXGETTOKEN( 0ll );
			if( vr$43 == 40ll ) goto label$367;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$366;
			label$367:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$366:;
			struct $7ASTNODE* vr$44 = HMATCHEXPR( 17ll );
			EXPR1$1 = vr$44;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$369;
			{
				goto label$284;
			}
			label$369:;
			label$368:;
			int64 vr$45 = LEXGETTOKEN( 0ll );
			if( vr$45 == 44ll ) goto label$371;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$370;
			label$371:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$370:;
			int64 vr$46 = HMATCH( 372ll, 2048ll );
			IS_ANY$1 = vr$46;
			struct $7ASTNODE* vr$47 = HMATCHEXPR( 17ll );
			EXPR2$1 = vr$47;
			if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$373;
			{
				goto label$284;
			}
			label$373:;
			label$372:;
			int64 vr$48 = HMATCH( 44ll, 0ll );
			if( vr$48 == 0ll ) goto label$375;
			{
				struct $7ASTNODE* vr$49 = HMATCHEXPR( 8ll );
				EXPR3$1 = vr$49;
				if( EXPR3$1 != (struct $7ASTNODE*)0ull ) goto label$377;
				{
					goto label$284;
				}
				label$377:;
				label$376:;
			}
			goto label$374;
			label$375:;
			{
				struct $7ASTNODE* vr$50 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR3$1 = vr$50;
			}
			label$374:;
			int64 vr$51 = LEXGETTOKEN( 0ll );
			if( vr$51 == 41ll ) goto label$379;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$378;
			label$379:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$378:;
			struct $7ASTNODE* vr$52 = RTLSTRINSTRREV( EXPR3$1, EXPR1$1, EXPR2$1, IS_ANY$1 );
			EXPR1$1 = vr$52;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$381;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$53 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$53;
			}
			label$381:;
			label$380:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$364:;
		if( TK$1 == 440ll ) goto label$383;
		label$384:;
		if( TK$1 == 442ll ) goto label$383;
		label$385:;
		if( TK$1 != 441ll ) goto label$382;
		label$383:;
		{
			LEXSKIPTOKEN( 8192ll );
			int64 vr$54 = LEXGETTOKEN( 0ll );
			if( vr$54 == 40ll ) goto label$387;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$386;
			label$387:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$386:;
			struct $7ASTNODE* vr$55 = HMATCHEXPR( 17ll );
			EXPR1$1 = vr$55;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$389;
			{
				goto label$284;
			}
			label$389:;
			label$388:;
			int64 vr$56 = HMATCH( 44ll, 0ll );
			if( vr$56 == 0ll ) goto label$391;
			{
				int64 vr$57 = HMATCH( 372ll, 2048ll );
				IS_ANY$1 = vr$57;
				struct $7ASTNODE* vr$58 = HMATCHEXPR( 17ll );
				EXPR2$1 = vr$58;
				if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$393;
				{
					goto label$284;
				}
				label$393:;
				label$392:;
			}
			goto label$390;
			label$391:;
			{
				IS_ANY$1 = 0ll;
				EXPR2$1 = (struct $7ASTNODE*)0ull;
			}
			label$390:;
			int64 vr$59 = LEXGETTOKEN( 0ll );
			if( vr$59 == 41ll ) goto label$395;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$394;
			label$395:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$394:;
			{
				if( TK$1 != 440ll ) goto label$397;
				label$398:;
				{
					struct $7ASTNODE* vr$60 = RTLSTRTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$60;
				}
				goto label$396;
				label$397:;
				if( TK$1 != 442ll ) goto label$399;
				label$400:;
				{
					struct $7ASTNODE* vr$61 = RTLSTRLTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$61;
				}
				goto label$396;
				label$399:;
				if( TK$1 != 441ll ) goto label$401;
				label$402:;
				{
					struct $7ASTNODE* vr$62 = RTLSTRRTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$62;
				}
				label$401:;
				label$396:;
			}
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$404;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$63 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$63;
			}
			label$404:;
			label$403:;
			fb$result$1 = EXPR1$1;
		}
		goto label$285;
		label$382:;
		if( TK$1 == 443ll ) goto label$406;
		label$407:;
		if( TK$1 != 444ll ) goto label$405;
		label$406:;
		{
			LEXSKIPTOKEN( 8192ll );
			int64 vr$64 = LEXGETTOKEN( 0ll );
			if( vr$64 == 40ll ) goto label$409;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$408;
			label$409:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$408:;
			struct $7ASTNODE* vr$65 = HMATCHEXPR( 17ll );
			EXPR1$1 = vr$65;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$411;
			{
				goto label$284;
			}
			label$411:;
			label$410:;
			int64 vr$66 = HMATCH( 44ll, 0ll );
			if( vr$66 == 0ll ) goto label$413;
			{
				struct $7ASTNODE* vr$67 = HMATCHEXPR( 8ll );
				EXPR2$1 = vr$67;
				if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$415;
				{
					goto label$284;
				}
				label$415:;
				label$414:;
			}
			goto label$412;
			label$413:;
			{
				EXPR2$1 = (struct $7ASTNODE*)0ull;
			}
			label$412:;
			int64 vr$68 = LEXGETTOKEN( 0ll );
			if( vr$68 == 41ll ) goto label$417;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$416;
			label$417:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$416:;
			struct $7ASTNODE* vr$70 = RTLSTRCASE( EXPR1$1, EXPR2$1, (int64)-(TK$1 == 443ll) );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $7ASTNODE* CSTRCHR( int64 IS_WSTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$68:;
	static uint8 O$1[12];
	static uint8 ZS$1[417];
	static uint16 WS$1[417];
	int64 V$1;
	int64 I$1;
	int64 CNT$1;
	int64 ISCONST$1;
	struct $7ASTNODE* EXPRTB$1[32];
	struct $8FBARRAY1IP7ASTNODEE tmp$99$1;
	*(struct $7ASTNODE***)&tmp$99$1 = (struct $7ASTNODE**)EXPRTB$1;
	*(struct $7ASTNODE***)((uint8*)&tmp$99$1 + 8ll) = (struct $7ASTNODE**)EXPRTB$1;
	*(int64*)((uint8*)&tmp$99$1 + 16ll) = 256ll;
	*(int64*)((uint8*)&tmp$99$1 + 24ll) = 8ll;
	*(int64*)((uint8*)&tmp$99$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$99$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$99$1 + 48ll) = 32ll;
	*(int64*)((uint8*)&tmp$99$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$99$1 + 64ll) = 31ll;
	int64 vr$3 = LEXGETTOKEN( 0ll );
	if( vr$3 == 40ll ) goto label$71;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$70;
	label$71:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$70:;
	CNT$1 = 0ll;
	label$72:;
	{
		struct $7ASTNODE* vr$4 = HMATCHEXPR( 12ll );
		*(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (CNT$1 << (3ll & 63ll))) = vr$4;
		if( *(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (CNT$1 << (3ll & 63ll))) != (struct $7ASTNODE*)0ull ) goto label$76;
		{
			goto label$69;
		}
		label$76:;
		label$75:;
		CNT$1 = CNT$1 + 1ll;
		if( CNT$1 < 32ll ) goto label$78;
		{
			goto label$73;
		}
		label$78:;
		label$77:;
	}
	label$74:;
	int64 vr$8 = HMATCH( 44ll, 0ll );
	if( vr$8 != 0ll ) goto label$72;
	label$73:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 == 41ll ) goto label$80;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$79;
	label$80:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$79:;
	ISCONST$1 = -1ll;
	{
		I$1 = 0ll;
		int64 TMP$100$2;
		TMP$100$2 = CNT$1 + -1ll;
		goto label$81;
		label$84:;
		{
			if( *(int64*)*(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (3ll & 63ll))) == 16ll ) goto label$86;
			{
				ISCONST$1 = 0ll;
				goto label$83;
			}
			label$86:;
			label$85:;
			int64 vr$14 = ASTCONSTEQZERO( *(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (3ll & 63ll))) );
			if( vr$14 == 0ll ) goto label$88;
			{
				ISCONST$1 = 0ll;
				goto label$83;
			}
			label$88:;
			label$87:;
		}
		label$82:;
		I$1 = I$1 + 1ll;
		label$81:;
		if( I$1 <= TMP$100$2 ) goto label$84;
		label$83:;
	}
	if( ISCONST$1 == 0ll ) goto label$90;
	{
		if( IS_WSTR$1 != 0ll ) goto label$92;
		{
			fb_StrAssign( (void*)ZS$1, 417ll, (void*)"", 1ll, 0 );
		}
		goto label$91;
		label$92:;
		{
			fb_WstrAssignFromA( (uint16*)WS$1, 417ll, (void*)"", 1ll );
		}
		label$91:;
		{
			I$1 = 0ll;
			int64 TMP$101$3;
			TMP$101$3 = CNT$1 + -1ll;
			goto label$93;
			label$96:;
			{
				int64 vr$18 = ASTCONSTFLUSHTOINT( *(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (3ll & 63ll))), 12ll );
				V$1 = vr$18;
				*(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (I$1 << (3ll & 63ll))) = (struct $7ASTNODE*)0ull;
				if( IS_WSTR$1 != 0ll ) goto label$98;
				{
					if( (uint64)V$1 <= 255ull ) goto label$100;
					{
						V$1 = 255ll;
					}
					label$100:;
					label$99:;
					if( ((int64)-(V$1 < 32ll) | (int64)-(V$1 > 127ll)) == 0ll ) goto label$102;
					{
						FBSTRING TMP$103$6;
						FBSTRING TMP$104$6;
						FBSTRING TMP$105$6;
						__builtin_memset( &TMP$103$6, 0, 24ll );
						FBSTRING* vr$25 = fb_StrConcat( &TMP$103$6, (void*)ZS$1, 417ll, (void*)"\x1B", 2ll );
						fb_StrAssign( (void*)ZS$1, 417ll, (void*)vr$25, -1ll, 0 );
						FBSTRING* vr$26 = fb_OCT_l( (uint64)V$1 );
						fb_StrAssign( (void*)O$1, 12ll, (void*)vr$26, -1ll, 0 );
						int64 vr$27 = fb_StrLen( (void*)O$1, 12ll );
						FBSTRING* vr$28 = fb_CHR( 1, vr$27 );
						__builtin_memset( &TMP$104$6, 0, 24ll );
						FBSTRING* vr$31 = fb_StrConcat( &TMP$104$6, (void*)ZS$1, 417ll, (void*)vr$28, -1ll );
						fb_StrAssign( (void*)ZS$1, 417ll, (void*)vr$31, -1ll, 0 );
						__builtin_memset( &TMP$105$6, 0, 24ll );
						FBSTRING* vr$34 = fb_StrConcat( &TMP$105$6, (void*)ZS$1, 417ll, (void*)O$1, 12ll );
						fb_StrAssign( (void*)ZS$1, 417ll, (void*)vr$34, -1ll, 0 );
					}
					goto label$101;
					label$102:;
					{
						FBSTRING TMP$106$6;
						FBSTRING* vr$35 = fb_CHR( 1, V$1 );
						__builtin_memset( &TMP$106$6, 0, 24ll );
						FBSTRING* vr$38 = fb_StrConcat( &TMP$106$6, (void*)ZS$1, 417ll, (void*)vr$35, -1ll );
						fb_StrAssign( (void*)ZS$1, 417ll, (void*)vr$38, -1ll, 0 );
					}
					label$101:;
				}
				goto label$97;
				label$98:;
				{
					if( ((int64)-(V$1 < 32ll) | (int64)-(V$1 > 127ll)) == 0ll ) goto label$104;
					{
						uint16* TMP$107$6;
						uint16* TMP$108$6;
						uint16* TMP$109$6;
						uint16* vr$42 = fb_WstrConcatWA( (uint16*)WS$1, (void*)"\x1B", 2ll );
						TMP$107$6 = vr$42;
						fb_WstrAssign( (uint16*)WS$1, 417ll, (uint16*)TMP$107$6 );
						fb_WstrDelete( (uint16*)TMP$107$6 );
						FBSTRING* vr$43 = fb_OCT_l( (uint64)V$1 );
						fb_StrAssign( (void*)O$1, 12ll, (void*)vr$43, -1ll, 0 );
						int64 vr$44 = fb_StrLen( (void*)O$1, 12ll );
						uint16* vr$45 = fb_WstrChr( 1, vr$44 );
						TMP$108$6 = vr$45;
						fb_WstrConcatAssign( (uint16*)WS$1, 417ll, (uint16*)TMP$108$6 );
						fb_WstrDelete( (uint16*)TMP$108$6 );
						uint16* vr$46 = fb_WstrConcatWA( (uint16*)WS$1, (void*)O$1, 12ll );
						TMP$109$6 = vr$46;
						fb_WstrAssign( (uint16*)WS$1, 417ll, (uint16*)TMP$109$6 );
						fb_WstrDelete( (uint16*)TMP$109$6 );
					}
					goto label$103;
					label$104:;
					{
						uint16* TMP$110$6;
						uint16* vr$47 = fb_WstrChr( 1, V$1 );
						TMP$110$6 = vr$47;
						fb_WstrConcatAssign( (uint16*)WS$1, 417ll, (uint16*)TMP$110$6 );
						fb_WstrDelete( (uint16*)TMP$110$6 );
					}
					label$103:;
				}
				label$97:;
			}
			label$94:;
			I$1 = I$1 + 1ll;
			label$93:;
			if( I$1 <= TMP$101$3 ) goto label$96;
			label$95:;
		}
		if( IS_WSTR$1 != 0ll ) goto label$106;
		{
			struct $8FBSYMBOL* vr$49 = SYMBALLOCSTRCONST( (uint8*)ZS$1, CNT$1 );
			struct $7ASTNODE* vr$50 = ASTNEWVAR( vr$49, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$50;
		}
		goto label$105;
		label$106:;
		{
			struct $8FBSYMBOL* vr$51 = SYMBALLOCWSTRCONST( (uint16*)WS$1, CNT$1 );
			struct $7ASTNODE* vr$52 = ASTNEWVAR( vr$51, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$52;
		}
		label$105:;
	}
	goto label$89;
	label$90:;
	{
		struct $7ASTNODE* vr$54 = RTLSTRCHR( CNT$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$99$1, IS_WSTR$1 );
		fb$result$1 = vr$54;
	}
	label$89:;
	label$69:;
	return fb$result$1;
}

static struct $7ASTNODE* CSTRASC( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$107:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* POSEXPR$1;
	int64 P$1;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 40ll ) goto label$110;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$109;
	label$110:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$109:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 17ll );
	EXPR1$1 = vr$2;
	if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$112;
	{
		goto label$108;
	}
	label$112:;
	label$111:;
	int64 vr$3 = HMATCH( 44ll, 0ll );
	if( vr$3 == 0ll ) goto label$114;
	{
		struct $7ASTNODE* vr$4 = HMATCHEXPR( 8ll );
		POSEXPR$1 = vr$4;
		if( POSEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$116;
		{
			goto label$108;
		}
		label$116:;
		label$115:;
	}
	goto label$113;
	label$114:;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$113:;
	int64 vr$5 = LEXGETTOKEN( 0ll );
	if( vr$5 == 41ll ) goto label$118;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$117;
	label$118:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$117:;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0ull;
	{
		int64 TMP$111$2;
		TMP$111$2 = *(int64*)((uint8*)EXPR1$1 + 8ll) & 511ll;
		if( TMP$111$2 == 4ll ) goto label$121;
		label$122:;
		if( TMP$111$2 != 7ll ) goto label$120;
		label$121:;
		{
			struct $8FBSYMBOL* vr$8 = ASTGETSTRLITSYMBOL( EXPR1$1 );
			LITSYM$1 = vr$8;
		}
		label$120:;
		label$119:;
	}
	if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$124;
	{
		if( ((int64)-((*(int64*)((uint8*)EXPR1$1 + 8ll) & 511ll) == 7ll) & (int64)-(*(int64*)((uint8*)&ENV$ + 576ll) == 0ll)) == 0ll ) goto label$126;
		{
			P$1 = -1ll;
		}
		goto label$125;
		label$126:;
		{
			if( POSEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$128;
			{
				if( *(int64*)POSEXPR$1 != 16ll ) goto label$130;
				{
					int64 vr$15 = ASTCONSTFLUSHTOINT( POSEXPR$1, 8ll );
					P$1 = vr$15;
					POSEXPR$1 = (struct $7ASTNODE*)0ull;
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
			int64 TEXTLEN$3;
			__builtin_memset( &TEXTLEN$3, 0, 8ll );
			if( (*(int64*)((uint8*)EXPR1$1 + 8ll) & 511ll) == 7ll ) goto label$136;
			{
				int64 TMP$112$4;
				int64 TMP$113$4;
				int64 TMP$114$4;
				uint8* ZS$4;
				uint8* vr$21 = HUNESCAPE( *(uint8**)((uint8*)LITSYM$1 + 96ll), &TEXTLEN$3 );
				ZS$4 = vr$21;
				if( ZS$4 == (uint8*)0ull ) goto label$137;
				TMP$112$4 = (int64)-(TEXTLEN$3 == 0ll);
				goto label$421;
				label$137:;
				TMP$112$4 = -1ll;
				label$421:;
				if( TMP$112$4 != 0ll ) goto label$138;
				TMP$113$4 = (int64)-(P$1 <= 0ll);
				goto label$422;
				label$138:;
				TMP$113$4 = -1ll;
				label$422:;
				if( TMP$113$4 != 0ll ) goto label$139;
				TMP$114$4 = (int64)-(P$1 > TEXTLEN$3);
				goto label$423;
				label$139:;
				TMP$114$4 = -1ll;
				label$423:;
				if( TMP$114$4 == 0ll ) goto label$141;
				{
					struct $7ASTNODE* vr$25 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
					fb$result$1 = vr$25;
				}
				goto label$140;
				label$141:;
				{
					struct $7ASTNODE* vr$28 = ASTNEWCONSTI( (int64)*(uint8*)((uint8*)((uint8*)ZS$4 + P$1) + -1ll), 9ll, (struct $8FBSYMBOL*)0ull );
					fb$result$1 = vr$28;
				}
				label$140:;
			}
			goto label$135;
			label$136:;
			{
				int64 TMP$115$4;
				int64 TMP$116$4;
				int64 TMP$117$4;
				uint16* WS$4;
				uint16* vr$31 = HUNESCAPEW( *(uint16**)((uint8*)LITSYM$1 + 96ll), &TEXTLEN$3 );
				WS$4 = vr$31;
				if( WS$4 == (uint16*)0ull ) goto label$142;
				TMP$115$4 = (int64)-(TEXTLEN$3 == 0ll);
				goto label$424;
				label$142:;
				TMP$115$4 = -1ll;
				label$424:;
				if( TMP$115$4 != 0ll ) goto label$143;
				TMP$116$4 = (int64)-(P$1 <= 0ll);
				goto label$425;
				label$143:;
				TMP$116$4 = -1ll;
				label$425:;
				if( TMP$116$4 != 0ll ) goto label$144;
				TMP$117$4 = (int64)-(P$1 > TEXTLEN$3);
				goto label$426;
				label$144:;
				TMP$117$4 = -1ll;
				label$426:;
				if( TMP$117$4 == 0ll ) goto label$146;
				{
					struct $7ASTNODE* vr$35 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
					fb$result$1 = vr$35;
				}
				goto label$145;
				label$146:;
				{
					struct $7ASTNODE* vr$39 = ASTNEWCONSTI( (int64)*(uint16*)((uint8*)((uint8*)WS$4 + (P$1 << (1ll & 63ll))) + -2ll), 9ll, (struct $8FBSYMBOL*)0ull );
					fb$result$1 = vr$39;
				}
				label$145:;
			}
			label$135:;
			ASTDELNODE( EXPR1$1 );
			EXPR1$1 = (struct $7ASTNODE*)0ull;
		}
		label$134:;
		label$133:;
	}
	label$124:;
	label$123:;
	if( EXPR1$1 == (struct $7ASTNODE*)0ull ) goto label$148;
	{
		struct $7ASTNODE* vr$40 = RTLSTRASC( EXPR1$1, POSEXPR$1 );
		fb$result$1 = vr$40;
	}
	label$148:;
	label$147:;
	label$108:;
	return fb$result$1;
}
