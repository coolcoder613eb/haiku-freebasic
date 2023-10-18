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
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$66)( int64 );
typedef void (*tmp$67)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$38)( void );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef void (*tmp$63)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, double );
typedef void (*tmp$61)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$64)( int64, uint8*, int64 );
typedef void (*tmp$65)( int64, uint16*, int64 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_WstrToStr( uint16* );
uint16* fb_StrToWstr( uint8* );
static void fb_ctor__astznodeztypeini( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTTEMPSCOPEBEGIN( struct $8FBSYMBOL**, struct $7ASTNODE* );
void ASTTEMPSCOPEEND( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTTEMPSCOPECLONE( struct $8FBSYMBOL*, struct $7ASTNODE* );
void ASTTEMPSCOPEDELETE( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWMEM( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL*, struct $7ASTNODE*, int64, int64 );
int64 ASTTYPEINIUSESLOCALS( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIUPDATE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDVARDEREF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE*, int64, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDFORBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64 );
struct $7ASTNODE* ASTBUILDFOREND( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HASTTYPEINIMAYBECONVERTUPCAST( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HADDNODE( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
static int64 HASTINITREEISCONSTANT( struct $7ASTNODE* );
static void HASTTYPEINITREEMERGEUPCAST( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE**, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLCTORLIST( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static int64 HASTCHECKTYPEINIASSIGNMENT( struct $7ASTNODE*, int64, int64 );
static void HFLUSHEXPRSTATIC( struct $7ASTNODE*, struct $8FBSYMBOL* );
static int64 HEXPRISCONST( struct $7ASTNODE* );
static struct $7ASTNODE* HWALK( struct $7ASTNODE*, struct $7ASTNODE* );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
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
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$53)( struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$56)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$68)( uint8* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$76)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$38 INIT;
	tmp$38 END;
	tmp$39 EMITBEGIN;
	tmp$38 EMITEND;
	tmp$40 GETOPTIONVALUE;
	tmp$41 SUPPORTSOP;
	tmp$42 PROCBEGIN;
	tmp$42 PROCEND;
	tmp$43 PROCALLOCARG;
	tmp$43 PROCALLOCLOCAL;
	tmp$44 PROCGETFRAMEREGNAME;
	tmp$42 SCOPEBEGIN;
	tmp$42 SCOPEEND;
	tmp$42 PROCALLOCSTATICVARS;
	tmp$45 EMITCONVERT;
	tmp$42 EMITLABEL;
	tmp$42 EMITLABELNF;
	tmp$46 EMITRETURN;
	tmp$43 EMITPROCBEGIN;
	tmp$47 EMITPROCEND;
	tmp$48 EMITPUSHARG;
	tmp$49 EMITASMLINE;
	tmp$50 EMITCOMMENT;
	tmp$51 EMITBOP;
	tmp$52 EMITUOP;
	tmp$45 EMITSTORE;
	tmp$38 EMITSPILLREGS;
	tmp$53 EMITLOAD;
	tmp$45 EMITLOADRES;
	tmp$52 EMITSTACK;
	tmp$52 EMITADDR;
	tmp$54 EMITCALL;
	tmp$55 EMITCALLPTR;
	tmp$46 EMITSTACKALIGN;
	tmp$53 EMITJUMPPTR;
	tmp$56 EMITBRANCH;
	tmp$57 EMITJMPTB;
	tmp$58 EMITMEM;
	tmp$59 EMITMACRO;
	tmp$42 EMITSCOPEBEGIN;
	tmp$42 EMITSCOPEEND;
	tmp$42 EMITDECL;
	tmp$60 EMITDBG;
	tmp$42 EMITVARINIBEGIN;
	tmp$42 EMITVARINIEND;
	tmp$61 EMITVARINII;
	tmp$62 EMITVARINIF;
	tmp$63 EMITVARINIOFS;
	tmp$64 EMITVARINISTR;
	tmp$65 EMITVARINIWSTR;
	tmp$66 EMITVARINIPAD;
	tmp$67 EMITVARINISCOPEBEGIN;
	tmp$38 EMITVARINISCOPEEND;
	tmp$38 EMITFBCTINFBEGIN;
	tmp$68 EMITFBCTINFSTRING;
	tmp$38 EMITFBCTINFEND;
	tmp$69 ALLOCVREG;
	tmp$70 ALLOCVRIMM;
	tmp$71 ALLOCVRIMMF;
	tmp$72 ALLOCVRVAR;
	tmp$73 ALLOCVRIDX;
	tmp$74 ALLOCVRPTR;
	tmp$72 ALLOCVROFS;
	tmp$75 SETVREGDATATYPE;
	tmp$76 GETDISTANCE;
	tmp$52 LOADVR;
	tmp$45 STOREVR;
	tmp$46 XCHGTOS;
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

struct $7ASTNODE* ASTTYPEINIBEGIN( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 IS_LOCAL$1, int64 OFS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 36ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	fb$result$1 = N$1;
	*(int64*)((uint8*)N$1 + 40ll) = OFS$1;
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	int64 ADD_SCOPE$1;
	ADD_SCOPE$1 = 0ll;
	if( IS_LOCAL$1 != 0ll ) goto label$13;
	{
		if( *(int64*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) != 15ll ) goto label$15;
		{
			ADD_SCOPE$1 = (int64)-(*(int64*)*(struct $7ASTNODE**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) + 96ll) != 36ll);
		}
		goto label$14;
		label$15:;
		{
			ADD_SCOPE$1 = -1ll;
		}
		label$14:;
	}
	label$13:;
	label$12:;
	if( ADD_SCOPE$1 == 0ll ) goto label$17;
	{
		struct $8FBSYMBOL* vr$10 = ASTTEMPSCOPEBEGIN( (struct $8FBSYMBOL**)((uint8*)N$1 + 64ll), N$1 );
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = vr$10;
	}
	goto label$16;
	label$17:;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = (struct $8FBSYMBOL*)0ull;
	}
	label$16:;
	label$11:;
	return fb$result$1;
}

void ASTTYPEINIEND( struct $7ASTNODE* TREE$1, int64 IS_INITIALIZER$1 )
{
	label$38:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* P$1;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 OFS$1;
	int64 BYTES$1;
	*(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) = (struct $7ASTNODE*)0ull;
	if( IS_INITIALIZER$1 != 0ll ) goto label$41;
	{
		*(int64*)((uint8*)&AST$ + 280ll) = *(int64*)((uint8*)&AST$ + 280ll) + 1ll;
	}
	label$41:;
	label$40:;
	P$1 = (struct $7ASTNODE*)0ull;
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll);
	label$42:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$43;
	{
		if( *(int64*)N$1 != 38ll ) goto label$45;
		{
			L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
			if( *(int64*)L$1 != 36ll ) goto label$47;
			{
				*(int64*)((uint8*)&AST$ + 280ll) = *(int64*)((uint8*)&AST$ + 280ll) + -1ll;
				OFS$1 = *(int64*)((uint8*)N$1 + 40ll);
				BYTES$1 = *(int64*)((uint8*)N$1 + 48ll);
				HASTTYPEINIMAYBECONVERTUPCAST( N$1, L$1 );
				R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
				ASTDELNODE( N$1 );
				N$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
				ASTDELNODE( L$1 );
				if( P$1 == (struct $7ASTNODE*)0ull ) goto label$49;
				{
					*(struct $7ASTNODE**)((uint8*)P$1 + 120ll) = N$1;
				}
				goto label$48;
				label$49:;
				{
					*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) = N$1;
				}
				label$48:;
				label$50:;
				if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$51;
				{
					*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + OFS$1;
					*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)N$1 + 48ll) + BYTES$1;
					N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
				}
				goto label$50;
				label$51:;
				*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + OFS$1;
				*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)N$1 + 48ll) + BYTES$1;
				*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = R$1;
			}
			label$47:;
			label$46:;
		}
		label$45:;
		label$44:;
		P$1 = N$1;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	}
	goto label$42;
	label$43:;
	if( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$53;
	{
		ASTTEMPSCOPEEND( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 64ll) );
	}
	label$53:;
	label$52:;
	label$39:;
}

void ASTTYPEINIREMOVELASTNODE( struct $7ASTNODE* TREE$1 )
{
	label$60:;
	struct $7ASTNODE* PREV$1;
	struct $7ASTNODE* N$1;
	PREV$1 = (struct $7ASTNODE*)0ull;
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll);
	label$62:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$63;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) != (struct $7ASTNODE*)0ull ) goto label$65;
		{
			if( PREV$1 == (struct $7ASTNODE*)0ull ) goto label$67;
			{
				*(struct $7ASTNODE**)((uint8*)PREV$1 + 120ll) = (struct $7ASTNODE*)0ull;
			}
			goto label$66;
			label$67:;
			{
				*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) = (struct $7ASTNODE*)0ull;
			}
			label$66:;
			*(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) = PREV$1;
			ASTDELTREE( N$1 );
			goto label$63;
		}
		label$65:;
		label$64:;
		PREV$1 = N$1;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	}
	goto label$62;
	label$63:;
	label$61:;
}

struct $7ASTNODE* ASTTYPEINIADDPAD( struct $7ASTNODE* TREE$1, int64 BYTES$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$68:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 37ll, (struct $8FBSYMBOL*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 48ll) = BYTES$1;
	*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll);
	*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + *(int64*)((uint8*)N$1 + 48ll);
	fb$result$1 = N$1;
	label$69:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE* TREE$1, struct $7ASTNODE* EXPR$1, struct $8FBSYMBOL* SYM$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 CHECK_UPCAST$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$114:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 38ll, SYM$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = EXPR$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll);
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	if( *(int64*)EXPR$1 != 36ll ) goto label$117;
	{
		int64 UPCAST$2;
		UPCAST$2 = 0ll;
		if( CHECK_UPCAST$1 == 0ll ) goto label$119;
		{
			int64 TMP$97$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$120;
			TMP$97$3 = 24ll;
			goto label$136;
			label$120:;
			TMP$97$3 = DTYPE$1 & 31ll;
			label$136:;
			if( TMP$97$3 != 20ll ) goto label$122;
			{
				int64 TMP$98$4;
				if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$123;
				TMP$98$4 = 24ll;
				goto label$137;
				label$123:;
				TMP$98$4 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
				label$137:;
				if( TMP$98$4 != 20ll ) goto label$125;
				{
					if( SUBTYPE$1 == *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) ) goto label$127;
					{
						int64 vr$18 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll), SUBTYPE$1 );
						if( vr$18 <= 0ll ) goto label$129;
						{
							UPCAST$2 = -1ll;
						}
						label$129:;
						label$128:;
					}
					label$127:;
					label$126:;
				}
				label$125:;
				label$124:;
			}
			label$122:;
			label$121:;
		}
		label$119:;
		label$118:;
		if( UPCAST$2 == 0ll ) goto label$131;
		{
			HASTTYPEINITREEMERGEUPCAST( TREE$1, N$1, &EXPR$1, SYM$1 );
		}
		goto label$130;
		label$131:;
		{
			*(int64*)((uint8*)TREE$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll) + *(int64*)((uint8*)EXPR$1 + 48ll);
			*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + *(int64*)((uint8*)EXPR$1 + 48ll);
		}
		label$130:;
	}
	goto label$116;
	label$117:;
	{
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$133;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$135;
			{
				*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)&ENV$ + 592ll);
			}
			goto label$134;
			label$135:;
			{
				*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)SYM$1 + 80ll);
			}
			label$134:;
		}
		label$133:;
		label$132:;
		*(int64*)((uint8*)TREE$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll) + *(int64*)((uint8*)N$1 + 48ll);
		*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + *(int64*)((uint8*)N$1 + 48ll);
	}
	label$116:;
	fb$result$1 = N$1;
	label$115:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIADDCTORCALL( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* PROCEXPR$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$138:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 39ll, SYM$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll);
	*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)SYM$1 + 80ll);
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = PROCEXPR$1;
	*(int64*)((uint8*)TREE$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll) + *(int64*)((uint8*)N$1 + 48ll);
	*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + *(int64*)((uint8*)N$1 + 48ll);
	fb$result$1 = N$1;
	label$139:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIADDCTORLIST( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1, int64 ELEMENTS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$140:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 40ll, SYM$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll);
	*(int64*)((uint8*)N$1 + 48ll) = ELEMENTS$1;
	*(int64*)((uint8*)TREE$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll) + (*(int64*)((uint8*)SYM$1 + 80ll) * ELEMENTS$1);
	*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + (*(int64*)((uint8*)SYM$1 + 80ll) * ELEMENTS$1);
	fb$result$1 = N$1;
	label$141:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1, int64 IS_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$142:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 41ll, (struct $8FBSYMBOL*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 40ll) = IS_ARRAY$1;
	*(int64*)((uint8*)N$1 + 40ll) = 0ll;
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	fb$result$1 = N$1;
	label$143:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$144:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 42ll, (struct $8FBSYMBOL*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 40ll) = 0ll;
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	fb$result$1 = N$1;
	label$145:;
	return fb$result$1;
}

void ASTTYPEINICOPYELEMENTS( struct $7ASTNODE* TREE$1, struct $7ASTNODE* SOURCE$1, int64 BEGININDEX$1 )
{
	label$146:;
	int64 I$1;
	SOURCE$1 = *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 112ll);
	SOURCE$1 = *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 120ll);
	I$1 = 0ll;
	label$148:;
	if( *(int64*)SOURCE$1 != 38ll ) goto label$149;
	{
		if( I$1 < BEGININDEX$1 ) goto label$151;
		{
			struct $7ASTNODE* vr$5 = ASTCLONETREE( *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 112ll) );
			ASTTYPEINIADDASSIGN( TREE$1, vr$5, *(struct $8FBSYMBOL**)((uint8*)SOURCE$1 + 24ll), 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
		}
		label$151:;
		label$150:;
		SOURCE$1 = *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 120ll);
		I$1 = I$1 + 1ll;
	}
	goto label$148;
	label$149:;
	label$147:;
}

void ASTTYPEINIREPLACEELEMENT( struct $7ASTNODE* TREE$1, int64 ELEMENT$1, struct $7ASTNODE* EXPR$1 )
{
	label$152:;
	int64 I$1;
	TREE$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll);
	TREE$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll);
	I$1 = 0ll;
	label$154:;
	if( *(int64*)TREE$1 != 38ll ) goto label$155;
	{
		if( I$1 != ELEMENT$1 ) goto label$157;
		{
			ASTDELTREE( *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) = EXPR$1;
			goto label$153;
		}
		label$157:;
		label$156:;
		TREE$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll);
		I$1 = I$1 + 1ll;
	}
	goto label$154;
	label$155:;
	label$153:;
}

struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* INITREE$1, int64 UPDATE_TYPEINICOUNT$1, int64 ASSIGNOPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$176:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* NXT$1;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* L$1;
	int64 MAXSIZE$1;
	int64 SCOPED$1;
	SCOPED$1 = 0ll;
	if( UPDATE_TYPEINICOUNT$1 == 0ll ) goto label$179;
	{
		*(int64*)((uint8*)&AST$ + 280ll) = *(int64*)((uint8*)&AST$ + 280ll) + -1ll;
	}
	label$179:;
	label$178:;
	MAXSIZE$1 = 0ll;
	if( ((int64)-(*(int64*)TARGET$1 == 17ll) | (int64)-(*(int64*)TARGET$1 == 19ll)) == 0ll ) goto label$181;
	{
		int64 vr$8 = SYMBGETREALSIZE( *(struct $8FBSYMBOL**)((uint8*)TARGET$1 + 24ll) );
		MAXSIZE$1 = vr$8;
	}
	label$181:;
	label$180:;
	T$1 = (struct $7ASTNODE*)0ull;
	N$1 = *(struct $7ASTNODE**)((uint8*)INITREE$1 + 112ll);
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$183;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$185;
		{
			int64 vr$11 = ASTHASSIDEFX( TARGET$1 );
			if( vr$11 == 0ll ) goto label$187;
			{
				struct $7ASTNODE* vr$13 = ASTREMSIDEFX( &TARGET$1 );
				T$1 = vr$13;
			}
			label$187:;
			label$186:;
		}
		label$185:;
		label$184:;
	}
	label$183:;
	label$182:;
	label$188:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$189;
	{
		{
			$13AST_NODECLASS TMP$100$3;
			TMP$100$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$100$3 != 38ll ) goto label$191;
			label$192:;
			{
				int64 vr$15 = HASTCHECKTYPEINIASSIGNMENT( N$1, MAXSIZE$1, SCOPED$1 );
				if( vr$15 == 0ll ) goto label$194;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$196;
					{
						if( *(int64*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) != 12ll ) goto label$198;
						{
							if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 192ll) <= 0ll ) goto label$200;
							{
								if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 184ll) != 0ll ) goto label$202;
								{
									int64 TMP$101$9;
									struct $7ASTNODE* vr$26 = ASTCLONETREE( TARGET$1 );
									struct $7ASTNODE* vr$27 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$26, *(int64*)((uint8*)N$1 + 40ll), *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), (struct $8FBSYMBOL*)0ull );
									L$1 = vr$27;
									if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 480ll) == 0ll ) goto label$203;
									TMP$101$9 = 24ll;
									goto label$219;
									label$203:;
									TMP$101$9 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 31ll;
									label$219:;
									struct $7ASTNODE* vr$35 = ASTNEWCONSTI( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$9 * 56ll)) + 8ll), 8ll, (struct $8FBSYMBOL*)0ull );
									struct $7ASTNODE* vr$36 = ASTNEWMEM( 107ll, L$1, vr$35, 0ll );
									L$1 = vr$36;
									struct $7ASTNODE* vr$37 = ASTNEWLINK( T$1, L$1, 0ll );
									T$1 = vr$37;
								}
								label$202:;
								label$201:;
							}
							label$200:;
							label$199:;
						}
						label$198:;
						label$197:;
					}
					label$196:;
					label$195:;
					struct $7ASTNODE* vr$42 = ASTCLONETREE( TARGET$1 );
					struct $7ASTNODE* vr$43 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$42, *(int64*)((uint8*)N$1 + 40ll), *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
					L$1 = vr$43;
					struct $7ASTNODE* vr$46 = ASTNEWASSIGN( L$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), ASSIGNOPTIONS$1 | 16ll );
					L$1 = vr$46;
					struct $7ASTNODE* vr$47 = ASTNEWLINK( T$1, L$1, 0ll );
					T$1 = vr$47;
				}
				label$194:;
				label$193:;
			}
			goto label$190;
			label$191:;
			if( TMP$100$3 != 37ll ) goto label$204;
			label$205:;
			{
				int64 vr$48 = HASTCHECKTYPEINIASSIGNMENT( N$1, MAXSIZE$1, SCOPED$1 );
				if( vr$48 == 0ll ) goto label$207;
				{
					struct $7ASTNODE* vr$52 = ASTCLONETREE( TARGET$1 );
					struct $7ASTNODE* vr$53 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$52, *(int64*)((uint8*)N$1 + 40ll), *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), (struct $8FBSYMBOL*)0ull );
					L$1 = vr$53;
					struct $7ASTNODE* vr$55 = ASTNEWCONSTI( *(int64*)((uint8*)N$1 + 48ll), 8ll, (struct $8FBSYMBOL*)0ull );
					struct $7ASTNODE* vr$56 = ASTNEWMEM( 107ll, L$1, vr$55, 0ll );
					L$1 = vr$56;
					struct $7ASTNODE* vr$57 = ASTNEWLINK( T$1, L$1, 0ll );
					T$1 = vr$57;
				}
				label$207:;
				label$206:;
			}
			goto label$190;
			label$204:;
			if( TMP$100$3 != 39ll ) goto label$208;
			label$209:;
			{
				int64 vr$58 = HASTCHECKTYPEINIASSIGNMENT( N$1, MAXSIZE$1, SCOPED$1 );
				if( vr$58 == 0ll ) goto label$211;
				{
					struct $7ASTNODE* vr$63 = ASTCLONETREE( TARGET$1 );
					struct $7ASTNODE* vr$64 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$63, *(int64*)((uint8*)N$1 + 40ll), *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
					L$1 = vr$64;
					struct $7ASTNODE* vr$66 = ASTPATCHCTORCALL( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), L$1 );
					L$1 = vr$66;
					struct $7ASTNODE* vr$67 = ASTNEWLINK( T$1, L$1, 0ll );
					T$1 = vr$67;
				}
				label$211:;
				label$210:;
			}
			goto label$190;
			label$208:;
			if( TMP$100$3 != 40ll ) goto label$212;
			label$213:;
			{
				struct $7ASTNODE* vr$68 = HCALLCTORLIST( T$1, N$1, TARGET$1 );
				T$1 = vr$68;
			}
			goto label$190;
			label$212:;
			if( TMP$100$3 != 41ll ) goto label$214;
			label$215:;
			{
				SCOPED$1 = SCOPED$1 + 1ll;
			}
			goto label$190;
			label$214:;
			if( TMP$100$3 != 42ll ) goto label$216;
			label$217:;
			{
				SCOPED$1 = SCOPED$1 + -1ll;
			}
			goto label$190;
			label$216:;
			{
			}
			label$218:;
			label$190:;
		}
		NXT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		ASTDELNODE( N$1 );
		N$1 = NXT$1;
	}
	goto label$188;
	label$189:;
	ASTDELNODE( INITREE$1 );
	ASTDELTREE( TARGET$1 );
	fb$result$1 = T$1;
	label$177:;
	return fb$result$1;
}

struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL* TARGET$1, struct $7ASTNODE* INITREE$1, int64 UPDATE_TYPEINICOUNT$1, int64 ASSIGNOPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$220:;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( TARGET$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$2 = _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( vr$1, INITREE$1, UPDATE_TYPEINICOUNT$1, ASSIGNOPTIONS$1 );
	fb$result$1 = vr$2;
	label$221:;
	return fb$result$1;
}

void ASTLOADSTATICINITIALIZER( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* BASESYM$1 )
{
	label$253:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* NXT$1;
	(*(tmp$42*)((uint8*)&IR$ + 344ll))( BASESYM$1 );
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll);
	label$255:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$256;
	{
		NXT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		{
			uint64 TMP$105$3;
			TMP$105$3 = *(uint64*)N$1;
			goto label$258;
			label$259:;
			{
				(*(tmp$66*)((uint8*)&IR$ + 400ll))( *(int64*)((uint8*)N$1 + 48ll) );
			}
			goto label$257;
			label$260:;
			{
				(*(tmp$67*)((uint8*)&IR$ + 408ll))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll), *(int64*)((uint8*)N$1 + 40ll) );
			}
			goto label$257;
			label$261:;
			{
				(*(tmp$38*)((uint8*)&IR$ + 416ll))(  );
			}
			goto label$257;
			label$262:;
			{
				HFLUSHEXPRSTATIC( N$1, BASESYM$1 );
			}
			goto label$257;
			label$258:;
			static const void* tmp$106[6ll] = {
				&&label$259,
				&&label$262,
				&&label$262,
				&&label$262,
				&&label$260,
				&&label$261,
			};
			if( (TMP$105$3 - 37ull) > 5ull ) goto label$262;
			goto *tmp$106[TMP$105$3 - 37ull];
			label$257:;
		}
		ASTDELNODE( N$1 );
		N$1 = NXT$1;
	}
	goto label$255;
	label$256:;
	(*(tmp$42*)((uint8*)&IR$ + 352ll))( BASESYM$1 );
	ASTDELNODE( TREE$1 );
	label$254:;
}

int64 ASTTYPEINIISCONST( struct $7ASTNODE* TREE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$290:;
	struct $7ASTNODE* N$1;
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll);
	label$292:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$293;
	{
		{
			$13AST_NODECLASS TMP$111$3;
			TMP$111$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$111$3 != 38ll ) goto label$295;
			label$296:;
			{
				int64 vr$3 = HEXPRISCONST( N$1 );
				if( vr$3 != 0ll ) goto label$298;
				{
					fb$result$1 = 0ll;
					goto label$291;
				}
				label$298:;
				label$297:;
			}
			goto label$294;
			label$295:;
			if( TMP$111$3 == 39ll ) goto label$300;
			label$301:;
			if( TMP$111$3 != 40ll ) goto label$299;
			label$300:;
			{
				fb$result$1 = 0ll;
				goto label$291;
			}
			label$299:;
			label$294:;
		}
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	}
	goto label$292;
	label$293:;
	fb$result$1 = -1ll;
	goto label$291;
	label$291:;
	return fb$result$1;
}

int64 ASTTYPEINIUSESLOCALS( struct $7ASTNODE* N$1, int64 IGNOREATTRIB$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$302:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$305;
	{
		fb$result$1 = 0ll;
		goto label$303;
	}
	label$305:;
	label$304:;
	if( *(int64*)N$1 != 17ll ) goto label$307;
	{
		if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 8ll) & 128ll) != 0ll) & (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 8ll) & IGNOREATTRIB$1) == 0ll)) == 0ll ) goto label$309;
		{
			fb$result$1 = -1ll;
			goto label$303;
		}
		label$309:;
		label$308:;
	}
	label$307:;
	label$306:;
	int64 vr$12 = ASTTYPEINIUSESLOCALS( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), IGNOREATTRIB$1 );
	int64 vr$14 = ASTTYPEINIUSESLOCALS( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), IGNOREATTRIB$1 );
	fb$result$1 = vr$12 | vr$14;
	label$303:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIUPDATE( struct $7ASTNODE* TREE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$318:;
	struct $7ASTNODE* TEMPVARINITCODE$1;
	struct $7ASTNODE TREEPARENT$1;
	if( *(int64*)((uint8*)&AST$ + 280ll) > 0ll ) goto label$321;
	{
		fb$result$1 = TREE$1;
		goto label$319;
	}
	label$321:;
	label$320:;
	*($13AST_NODECLASS*)&TREEPARENT$1 = 0ll;
	*(int64*)((uint8*)&TREEPARENT$1 + 8ll) = 2147483648ll;
	*(struct $8FBSYMBOL**)((uint8*)&TREEPARENT$1 + 16ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 112ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 120ll) = (struct $7ASTNODE*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)&TREEPARENT$1 + 24ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)&TREEPARENT$1 + 32ll) = 0ll;
	*(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 112ll) = TREE$1;
	struct $7ASTNODE* vr$2 = HWALK( TREE$1, &TREEPARENT$1 );
	TEMPVARINITCODE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWLINK( TEMPVARINITCODE$1, *(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 112ll), 2ll );
	fb$result$1 = vr$3;
	label$319:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINICLONE( struct $7ASTNODE* TREE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$322:;
	struct $7ASTNODE* CLONETREE$1;
	struct $7ASTNODE* vr$1 = ASTCLONETREE( TREE$1 );
	CLONETREE$1 = vr$1;
	if( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$325;
	{
		ASTTEMPSCOPECLONE( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll), CLONETREE$1 );
	}
	label$325:;
	label$324:;
	fb$result$1 = CLONETREE$1;
	label$323:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINITRYREMOVE( struct $7ASTNODE* TREE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$326:;
	fb$result$1 = TREE$1;
	if( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) + 120ll) == (struct $7ASTNODE*)0ull ) goto label$329;
	{
		goto label$327;
	}
	label$329:;
	label$328:;
	if( *(int64*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) == 38ll ) goto label$331;
	{
		goto label$327;
	}
	label$331:;
	label$330:;
	if( ((int64)-((*(int64*)((uint8*)TREE$1 + 8ll) & 511ll) != (*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) + 8ll) & 511ll)) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)TREE$1 + 16ll) != *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) + 16ll))) == 0ll ) goto label$333;
	{
		goto label$327;
	}
	label$333:;
	label$332:;
	fb$result$1 = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) + 112ll);
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) );
	ASTDELNODE( TREE$1 );
	*(int64*)((uint8*)&AST$ + 280ll) = *(int64*)((uint8*)&AST$ + 280ll) + -1ll;
	label$327:;
	return fb$result$1;
}

void ASTTYPEINIDELETE( struct $7ASTNODE* TREE$1 )
{
	label$334:;
	if( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$337;
	{
		ASTTEMPSCOPEDELETE( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll) );
		*(struct $8FBSYMBOL**)((uint8*)TREE$1 + 56ll) = (struct $8FBSYMBOL*)0ull;
	}
	label$337:;
	label$336:;
	ASTDELTREE( TREE$1 );
	label$335:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HASTTYPEINIMAYBECONVERTUPCAST( struct $7ASTNODE* N$1, struct $7ASTNODE* L$1 )
{
	int64 TMP$93$1;
	label$18:;
	struct $8FBSYMBOL* SYM$1;
	int64 MAXSIZE$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	MAXSIZE$1 = *(int64*)((uint8*)SYM$1 + 80ll);
	if( ((*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$20;
	TMP$93$1 = 24ll;
	goto label$338;
	label$20:;
	TMP$93$1 = (*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 31ll;
	label$338:;
	if( TMP$93$1 != 20ll ) goto label$22;
	{
		int64 TMP$94$2;
		if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$23;
		TMP$94$2 = 24ll;
		goto label$339;
		label$23:;
		TMP$94$2 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
		label$339:;
		if( TMP$94$2 != 20ll ) goto label$25;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) == *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) ) goto label$27;
			{
				int64 vr$18 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
				if( vr$18 <= 0ll ) goto label$29;
				{
					*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll);
					*(int64*)((uint8*)L$1 + 48ll) = MAXSIZE$1;
					*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) + 40ll) = *(int64*)((uint8*)N$1 + 40ll);
					*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) + 48ll) = MAXSIZE$1;
					*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) + 16ll) = *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll);
					{
						$13AST_NODECLASS TMP$95$6;
						TMP$95$6 = *($13AST_NODECLASS*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
						if( TMP$95$6 != 36ll ) goto label$31;
						label$32:;
						{
						}
						goto label$30;
						label$31:;
						if( TMP$95$6 != 38ll ) goto label$33;
						label$34:;
						{
						}
						goto label$30;
						label$33:;
						if( TMP$95$6 != 41ll ) goto label$35;
						label$36:;
						{
						}
						goto label$30;
						label$35:;
						{
						}
						label$37:;
						label$30:;
					}
				}
				label$29:;
				label$28:;
			}
			label$27:;
			label$26:;
		}
		label$25:;
		label$24:;
	}
	label$22:;
	label$21:;
	label$19:;
}

static struct $7ASTNODE* HADDNODE( struct $7ASTNODE* TREE$1, int64 CLASS_$1, struct $8FBSYMBOL* SYM$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	struct $7ASTNODE* N$1;
	if( ((int64)-(DTYPE$1 == 2147483648ll) & (int64)-(SYM$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$57;
	{
		DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll);
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
	}
	label$57:;
	label$56:;
	struct $7ASTNODE* vr$6 = ASTNEWNODE( CLASS_$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$6;
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$59;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) + 120ll) = N$1;
	}
	goto label$58;
	label$59:;
	{
		*(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) = N$1;
	}
	label$58:;
	*(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) = N$1;
	fb$result$1 = N$1;
	label$55:;
	return fb$result$1;
}

static int64 HASTINITREEISCONSTANT( struct $7ASTNODE* TREE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$70:;
	if( TREE$1 != (struct $7ASTNODE*)0ull ) goto label$73;
	{
		fb$result$1 = -1ll;
		goto label$71;
	}
	label$73:;
	label$72:;
	{
		$13AST_NODECLASS TMP$96$2;
		TMP$96$2 = *($13AST_NODECLASS*)TREE$1;
		if( TMP$96$2 != 36ll ) goto label$75;
		label$76:;
		{
		}
		goto label$74;
		label$75:;
		if( TMP$96$2 != 37ll ) goto label$77;
		label$78:;
		{
		}
		goto label$74;
		label$77:;
		if( TMP$96$2 != 38ll ) goto label$79;
		label$80:;
		{
		}
		goto label$74;
		label$79:;
		if( TMP$96$2 != 39ll ) goto label$81;
		label$82:;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		goto label$74;
		label$81:;
		if( TMP$96$2 != 40ll ) goto label$83;
		label$84:;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		goto label$74;
		label$83:;
		if( TMP$96$2 != 41ll ) goto label$85;
		label$86:;
		{
		}
		goto label$74;
		label$85:;
		if( TMP$96$2 != 42ll ) goto label$87;
		label$88:;
		{
		}
		goto label$74;
		label$87:;
		if( TMP$96$2 != 9ll ) goto label$89;
		label$90:;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		goto label$74;
		label$89:;
		if( TMP$96$2 != 10ll ) goto label$91;
		label$92:;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		goto label$74;
		label$91:;
		if( TMP$96$2 != 17ll ) goto label$93;
		label$94:;
		{
			fb$result$1 = -1ll;
			goto label$71;
		}
		goto label$74;
		label$93:;
		if( TMP$96$2 != 16ll ) goto label$95;
		label$96:;
		{
			fb$result$1 = -1ll;
			goto label$71;
		}
		goto label$74;
		label$95:;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		label$97:;
		label$74:;
	}
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$99;
	{
		int64 vr$4 = HASTINITREEISCONSTANT( *(struct $7ASTNODE**)((uint8*)TREE$1 + 112ll) );
		if( vr$4 != 0ll ) goto label$101;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		label$101:;
		label$100:;
	}
	label$99:;
	label$98:;
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$103;
	{
		int64 vr$7 = HASTINITREEISCONSTANT( *(struct $7ASTNODE**)((uint8*)TREE$1 + 120ll) );
		if( vr$7 != 0ll ) goto label$105;
		{
			fb$result$1 = 0ll;
			goto label$71;
		}
		label$105:;
		label$104:;
	}
	label$103:;
	label$102:;
	fb$result$1 = -1ll;
	goto label$71;
	label$71:;
	return fb$result$1;
}

static void HASTTYPEINITREEMERGEUPCAST( struct $7ASTNODE* TREE$1, struct $7ASTNODE* N$1, struct $7ASTNODE** EXPR$1, struct $8FBSYMBOL* SYM$1 )
{
	label$106:;
	int64 MAXSIZE$1;
	MAXSIZE$1 = *(int64*)((uint8*)SYM$1 + 80ll);
	if( (*(int64*)((uint8*)TREE$1 + 40ll) + *(int64*)((uint8*)*EXPR$1 + 48ll)) <= MAXSIZE$1 ) goto label$109;
	{
		int64 ISCONST$2;
		int64 vr$6 = HASTINITREEISCONSTANT( *EXPR$1 );
		ISCONST$2 = (int64)-(vr$6 == -1ll);
		int64 HASDTOR$2;
		struct $8FBSYMBOL* vr$9 = SYMBGETCOMPDTOR1( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 16ll) );
		HASDTOR$2 = (int64)-(vr$9 != (struct $8FBSYMBOL*)0ull);
		if( ((int64)-(ISCONST$2 == 0ll) | (int64)-(HASDTOR$2 == -1ll)) == 0ll ) goto label$111;
		{
			struct $7ASTNODE* L$3;
			struct $7ASTNODE* vr$18 = ASTNEWCONV( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), *EXPR$1, 0ll, (int64*)0ull );
			L$3 = vr$18;
			if( L$3 == (struct $7ASTNODE*)0ull ) goto label$113;
			{
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$3;
			}
			label$113:;
			label$112:;
		}
		label$111:;
		label$110:;
		*(int64*)((uint8*)TREE$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll) + MAXSIZE$1;
		*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + MAXSIZE$1;
	}
	goto label$108;
	label$109:;
	{
		*(int64*)((uint8*)TREE$1 + 40ll) = *(int64*)((uint8*)TREE$1 + 40ll) + *(int64*)((uint8*)*EXPR$1 + 48ll);
		*(int64*)((uint8*)TREE$1 + 48ll) = *(int64*)((uint8*)TREE$1 + 48ll) + *(int64*)((uint8*)*EXPR$1 + 48ll);
	}
	label$108:;
	label$107:;
}

static struct $7ASTNODE* HCALLCTORLIST( struct $7ASTNODE* T$1, struct $7ASTNODE* N$1, struct $7ASTNODE* TARGET$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$158:;
	struct $7ASTNODE* FLDEXPR$1;
	struct $7ASTNODE* vr$5 = ASTCLONETREE( TARGET$1 );
	struct $7ASTNODE* vr$6 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$5, *(int64*)((uint8*)N$1 + 40ll), *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
	FLDEXPR$1 = vr$6;
	if( *(int64*)((uint8*)N$1 + 48ll) <= 1ll ) goto label$161;
	{
		struct $8FBSYMBOL* CNT$2;
		__builtin_memset( &CNT$2, 0, 8ll );
		struct $8FBSYMBOL* LABEL$2;
		__builtin_memset( &LABEL$2, 0, 8ll );
		struct $8FBSYMBOL* ITER$2;
		__builtin_memset( &ITER$2, 0, 8ll );
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
		CNT$2 = vr$11;
		struct $8FBSYMBOL* vr$12 = SYMBADDLABEL( (uint8*)0ull, 4ll );
		LABEL$2 = vr$12;
		struct $8FBSYMBOL* vr$27 = SYMBADDTEMPVAR( (((*(int64*)((uint8*)N$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)N$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)N$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)N$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
		ITER$2 = vr$27;
		struct $7ASTNODE* vr$28 = ASTNEWADDROF( FLDEXPR$1 );
		struct $7ASTNODE* vr$29 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( ITER$2, vr$28, 64ll );
		struct $7ASTNODE* vr$30 = ASTNEWLINK( T$1, vr$29, 0ll );
		T$1 = vr$30;
		struct $7ASTNODE* vr$31 = ASTBUILDFORBEGIN( T$1, CNT$2, LABEL$2, 0ll, -1ll );
		T$1 = vr$31;
		struct $7ASTNODE* vr$32 = ASTBUILDVARDEREF( ITER$2 );
		struct $7ASTNODE* vr$34 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), vr$32 );
		struct $7ASTNODE* vr$35 = ASTNEWLINK( T$1, vr$34, 0ll );
		T$1 = vr$35;
		struct $7ASTNODE* vr$36 = ASTBUILDVARINC( ITER$2, 1ll );
		struct $7ASTNODE* vr$37 = ASTNEWLINK( T$1, vr$36, 0ll );
		T$1 = vr$37;
		struct $7ASTNODE* vr$39 = ASTNEWCONSTI( *(int64*)((uint8*)N$1 + 48ll), 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$40 = ASTBUILDFOREND( T$1, CNT$2, LABEL$2, vr$39 );
		T$1 = vr$40;
	}
	goto label$160;
	label$161:;
	{
		struct $7ASTNODE* vr$42 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), FLDEXPR$1 );
		struct $7ASTNODE* vr$43 = ASTNEWLINK( T$1, vr$42, 0ll );
		T$1 = vr$43;
	}
	label$160:;
	fb$result$1 = T$1;
	label$159:;
	return fb$result$1;
}

static int64 HASTCHECKTYPEINIASSIGNMENT( struct $7ASTNODE* N$1, int64 MAXSIZE$1, int64 SCOPED$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$162:;
	if( MAXSIZE$1 <= 0ll ) goto label$165;
	{
		{
			$13AST_NODECLASS TMP$99$3;
			TMP$99$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$99$3 != 37ll ) goto label$167;
			label$168:;
			{
				if( (*(int64*)((uint8*)N$1 + 40ll) + *(int64*)((uint8*)N$1 + 48ll)) <= MAXSIZE$1 ) goto label$170;
				{
					fb$result$1 = 0ll;
					goto label$163;
				}
				label$170:;
				label$169:;
			}
			goto label$166;
			label$167:;
			{
				if( (*(int64*)((uint8*)N$1 + 40ll) + *(int64*)((uint8*)N$1 + 48ll)) <= MAXSIZE$1 ) goto label$173;
				{
					if( (*(int64*)((uint8*)&ENV$ + 400ll) & 1024ll) == 0ll ) goto label$175;
					{
						ERRREPORTWARN( 49ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					}
					label$175:;
					label$174:;
					fb$result$1 = 0ll;
					goto label$163;
				}
				label$173:;
				label$172:;
			}
			label$171:;
			label$166:;
		}
	}
	label$165:;
	label$164:;
	fb$result$1 = -1ll;
	goto label$163;
	label$163:;
	return fb$result$1;
}

static void HFLUSHEXPRSTATIC( struct $7ASTNODE* N$1, struct $8FBSYMBOL* BASESYM$1 )
{
	label$222:;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$225;
	{
		SYM$1 = BASESYM$1;
	}
	label$225:;
	label$224:;
	int64 SDTYPE$1;
	SDTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	$11FB_DATATYPE SFULLDTYPE$1;
	SFULLDTYPE$1 = *($11FB_DATATYPE*)((uint8*)SYM$1 + 56ll);
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$227;
	{
		SDTYPE$1 = (((SDTYPE$1 & 31ll) | ((SDTYPE$1 & 480ll) + 32ll)) | ((SDTYPE$1 & 261632ll) << (1ll & 63ll))) | (SDTYPE$1 & 32505856ll);
		SFULLDTYPE$1 = (((SFULLDTYPE$1 & 31ll) | ((SFULLDTYPE$1 & 480ll) + 32ll)) | ((SFULLDTYPE$1 & 261632ll) << (1ll & 63ll))) | (SFULLDTYPE$1 & 32505856ll);
	}
	label$227:;
	label$226:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	int64 EDTYPE$1;
	EDTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0ull;
	{
		if( EDTYPE$1 == 4ll ) goto label$230;
		label$231:;
		if( EDTYPE$1 != 7ll ) goto label$229;
		label$230:;
		{
			struct $8FBSYMBOL* vr$27 = ASTGETSTRLITSYMBOL( EXPR$1 );
			LITSYM$1 = vr$27;
		}
		label$229:;
		label$228:;
	}
	if( LITSYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$233;
	{
		if( *(int64*)EXPR$1 != 23ll ) goto label$235;
		{
			(*(tmp$63*)((uint8*)&IR$ + 376ll))( SYM$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll), *(int64*)((uint8*)EXPR$1 + 40ll) );
		}
		goto label$234;
		label$235:;
		{
			{
				struct $7ASTNODE* LEXPR$4;
				LEXPR$4 = *(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll);
				label$236:;
				if( LEXPR$4 == (struct $7ASTNODE*)0ull ) goto label$237;
				{
					if( *(int64*)LEXPR$4 != 23ll ) goto label$239;
					{
						(*(tmp$63*)((uint8*)&IR$ + 376ll))( SYM$1, *(struct $8FBSYMBOL**)((uint8*)LEXPR$4 + 24ll), *(int64*)((uint8*)LEXPR$4 + 40ll) );
						EXPR$1 = (struct $7ASTNODE*)0ull;
						goto label$237;
					}
					label$239:;
					label$238:;
					LEXPR$4 = *(struct $7ASTNODE**)((uint8*)LEXPR$4 + 112ll);
				}
				goto label$236;
				label$237:;
			}
			if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$241;
			{
				int64 TMP$102$4;
				if( EDTYPE$1 == SDTYPE$1 ) goto label$243;
				{
					struct $7ASTNODE* vr$37 = ASTNEWCONV( SFULLDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), EXPR$1, 8ll, (int64*)0ull );
					EXPR$1 = vr$37;
				}
				label$243:;
				label$242:;
				if( (SDTYPE$1 & 480ll) == 0ll ) goto label$244;
				TMP$102$4 = 24ll;
				goto label$340;
				label$244:;
				TMP$102$4 = SDTYPE$1 & 31ll;
				label$340:;
				if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$4 * 56ll)) != 1ll ) goto label$246;
				{
					(*(tmp$62*)((uint8*)&IR$ + 368ll))( SYM$1, *(double*)((uint8*)EXPR$1 + 40ll) );
				}
				goto label$245;
				label$246:;
				{
					(*(tmp$61*)((uint8*)&IR$ + 360ll))( SYM$1, *(int64*)((uint8*)EXPR$1 + 40ll) );
				}
				label$245:;
			}
			label$241:;
			label$240:;
		}
		label$234:;
	}
	goto label$232;
	label$233:;
	{
		if( SDTYPE$1 == 7ll ) goto label$248;
		{
			if( EDTYPE$1 == 7ll ) goto label$250;
			{
				(*(tmp$64*)((uint8*)&IR$ + 384ll))( *(int64*)((uint8*)SYM$1 + 80ll) + -1ll, *(uint8**)((uint8*)LITSYM$1 + 96ll), *(int64*)((uint8*)LITSYM$1 + 80ll) + -1ll );
			}
			goto label$249;
			label$250:;
			{
				FBSTRING TMP$103$4;
				__builtin_memset( &TMP$103$4, 0, 24ll );
				FBSTRING* vr$53 = fb_WstrToStr( (uint16*)*(uint16**)((uint8*)LITSYM$1 + 96ll) );
				fb_StrAssign( (void*)&TMP$103$4, -1ll, (void*)vr$53, -1ll, 0 );
				(*(tmp$64*)((uint8*)&IR$ + 384ll))( *(int64*)((uint8*)SYM$1 + 80ll) + -1ll, (uint8*)*(uint8**)&TMP$103$4, (*(int64*)((uint8*)LITSYM$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + -1ll );
				fb_StrDelete( (FBSTRING*)&TMP$103$4 );
			}
			label$249:;
		}
		goto label$247;
		label$248:;
		{
			if( EDTYPE$1 == 7ll ) goto label$252;
			{
				uint16* TMP$104$4;
				uint16* vr$61 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)LITSYM$1 + 96ll) );
				TMP$104$4 = vr$61;
				(*(tmp$65*)((uint8*)&IR$ + 392ll))( (*(int64*)((uint8*)SYM$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + -1ll, TMP$104$4, *(int64*)((uint8*)LITSYM$1 + 80ll) + -1ll );
				fb_WstrDelete( (uint16*)TMP$104$4 );
			}
			goto label$251;
			label$252:;
			{
				(*(tmp$65*)((uint8*)&IR$ + 392ll))( (*(int64*)((uint8*)SYM$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + -1ll, *(uint16**)((uint8*)LITSYM$1 + 96ll), (*(int64*)((uint8*)LITSYM$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + -1ll );
			}
			label$251:;
		}
		label$247:;
	}
	label$232:;
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
	label$223:;
}

static int64 HEXPRISCONST( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$263:;
	struct $8FBSYMBOL* LSYM$1;
	LSYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	if( LSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$266;
	{
		int64 TMP$107$2;
		if( *(int64*)LSYM$1 != 12ll ) goto label$267;
		TMP$107$2 = (int64)-(*(int64*)((uint8*)LSYM$1 + 192ll) > 0ll);
		goto label$341;
		label$267:;
		TMP$107$2 = 0ll;
		label$341:;
		if( TMP$107$2 == 0ll ) goto label$269;
		{
			ERRREPORT( 24ll, -1ll, (uint8*)0ull );
			fb$result$1 = 0ll;
			goto label$264;
		}
		label$269:;
		label$268:;
	}
	label$266:;
	label$265:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	{
		$13AST_NODECLASS TMP$108$2;
		TMP$108$2 = *($13AST_NODECLASS*)EXPR$1;
		if( TMP$108$2 == 23ll ) goto label$272;
		label$273:;
		if( TMP$108$2 != 16ll ) goto label$271;
		label$272:;
		{
			fb$result$1 = -1ll;
			goto label$264;
		}
		goto label$270;
		label$271:;
		if( TMP$108$2 != 5ll ) goto label$274;
		label$275:;
		{
			label$276:;
			if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$277;
			{
				{
					$13AST_NODECLASS TMP$109$5;
					TMP$109$5 = *($13AST_NODECLASS*)EXPR$1;
					if( TMP$109$5 != 5ll ) goto label$279;
					label$280:;
					{
					}
					goto label$278;
					label$279:;
					if( TMP$109$5 != 23ll ) goto label$281;
					label$282:;
					{
						fb$result$1 = -1ll;
						goto label$264;
					}
					goto label$278;
					label$281:;
					{
						goto label$277;
					}
					label$283:;
					label$278:;
				}
				EXPR$1 = *(struct $7ASTNODE**)((uint8*)EXPR$1 + 112ll);
			}
			goto label$276;
			label$277:;
			fb$result$1 = 0ll;
			goto label$264;
		}
		label$274:;
		label$270:;
	}
	{
		int64 TMP$110$2;
		TMP$110$2 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
		if( TMP$110$2 == 4ll ) goto label$286;
		label$287:;
		if( TMP$110$2 != 7ll ) goto label$285;
		label$286:;
		{
			struct $8FBSYMBOL* vr$11 = ASTGETSTRLITSYMBOL( EXPR$1 );
			if( vr$11 == (struct $8FBSYMBOL*)0ull ) goto label$289;
			{
				fb$result$1 = -1ll;
				goto label$264;
			}
			label$289:;
			label$288:;
		}
		label$285:;
		label$284:;
	}
	fb$result$1 = 0ll;
	goto label$264;
	label$264:;
	return fb$result$1;
}

static struct $7ASTNODE* HWALK( struct $7ASTNODE* N$1, struct $7ASTNODE* PARENT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$310:;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* SYM$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$313;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$311;
	}
	label$313:;
	label$312:;
	if( *(int64*)N$1 != 36ll ) goto label$315;
	{
		struct $8FBSYMBOL* vr$4 = SYMBADDTEMPVAR( *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
		SYM$1 = vr$4;
		ASTDTORLISTADD( SYM$1 );
		struct $7ASTNODE* vr$5 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$5;
		if( *(struct $7ASTNODE**)((uint8*)PARENT$1 + 112ll) != N$1 ) goto label$317;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 112ll) = EXPR$1;
		}
		goto label$316;
		label$317:;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll) = EXPR$1;
		}
		label$316:;
		struct $7ASTNODE* vr$9 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( SYM$1, N$1, -1ll, 64ll );
		N$1 = vr$9;
		struct $7ASTNODE* vr$10 = ASTTYPEINIUPDATE( N$1 );
		fb$result$1 = vr$10;
		goto label$311;
	}
	label$315:;
	label$314:;
	struct $7ASTNODE* vr$12 = HWALK( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), N$1 );
	struct $7ASTNODE* vr$14 = HWALK( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), N$1 );
	struct $7ASTNODE* vr$15 = ASTNEWLINK( vr$14, vr$12, 0ll );
	fb$result$1 = vr$15;
	goto label$311;
	label$311:;
	return fb$result$1;
}
