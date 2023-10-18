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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int32 );
typedef void (*tmp$37)( void );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
int64 __divdi3( int64, int64 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_WstrToStr( uint32* );
uint32* fb_StrToWstr( uint8* );
static void fb_ctor__astznodeztypeini( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTTEMPSCOPEBEGIN( struct $8FBSYMBOL**, struct $7ASTNODE* );
void ASTTEMPSCOPEEND( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTTEMPSCOPECLONE( struct $8FBSYMBOL*, struct $7ASTNODE* );
void ASTTEMPSCOPEDELETE( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWMEM( int32, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL*, struct $7ASTNODE*, int32, int32 );
int32 ASTTYPEINIUSESLOCALS( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIUPDATE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDVARDEREF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE*, int64, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDFORBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32, int32 );
struct $7ASTNODE* ASTBUILDFOREND( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HASTTYPEINIMAYBECONVERTUPCAST( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HADDNODE( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
static int32 HASTINITREEISCONSTANT( struct $7ASTNODE* );
static void HASTTYPEINITREEMERGEUPCAST( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE**, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLCTORLIST( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static int32 HASTCHECKTYPEINIASSIGNMENT( struct $7ASTNODE*, int64, int32 );
static void HFLUSHEXPRSTATIC( struct $7ASTNODE*, struct $8FBSYMBOL* );
static int32 HEXPRISCONST( struct $7ASTNODE* );
static struct $7ASTNODE* HWALK( struct $7ASTNODE*, struct $7ASTNODE* );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 12 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 36 );
struct $5IRTAC {
	int32 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int32 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 128 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 REG;
	$12IR_REGFAMILY REGFAMILY;
	int32 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int32 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 72 );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$55)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int32, struct $8FBSYMBOL*, int32, uint8* );
typedef void (*tmp$67)( uint8* );
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
typedef uint32 (*tmp$75)( struct $6IRVREG* );
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
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 272 );
typedef int32 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 276 );
extern struct $5IRCTX IR$;
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
typedef int32 $8FB_TOKEN;
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
typedef int32 $11FB_MANGLING;
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

struct $7ASTNODE* ASTTYPEINIBEGIN( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 IS_LOCAL$1, int64 OFS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 36, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	fb$result$1 = N$1;
	*(int64*)((uint8*)N$1 + 24) = OFS$1;
	*(int64*)((uint8*)N$1 + 32) = 0ll;
	int32 ADD_SCOPE$1;
	ADD_SCOPE$1 = 0;
	if( IS_LOCAL$1 != 0 ) goto label$13;
	{
		if( *(int32*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112) != 15 ) goto label$15;
		{
			ADD_SCOPE$1 = -(*(int32*)*(struct $7ASTNODE**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112) + 56) != 36);
		}
		goto label$14;
		label$15:;
		{
			ADD_SCOPE$1 = -1;
		}
		label$14:;
	}
	label$13:;
	label$12:;
	if( ADD_SCOPE$1 == 0 ) goto label$17;
	{
		struct $8FBSYMBOL* vr$10 = ASTTEMPSCOPEBEGIN( (struct $8FBSYMBOL**)((uint8*)N$1 + 44), N$1 );
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40) = vr$10;
	}
	goto label$16;
	label$17:;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40) = (struct $8FBSYMBOL*)0u;
	}
	label$16:;
	label$11:;
	return fb$result$1;
}

void ASTTYPEINIEND( struct $7ASTNODE* TREE$1, int32 IS_INITIALIZER$1 )
{
	label$38:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* P$1;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 OFS$1;
	int64 BYTES$1;
	*(struct $7ASTNODE**)((uint8*)TREE$1 + 68) = (struct $7ASTNODE*)0u;
	if( IS_INITIALIZER$1 != 0 ) goto label$41;
	{
		*(int32*)((uint8*)&AST$ + 140) = *(int32*)((uint8*)&AST$ + 140) + 1;
	}
	label$41:;
	label$40:;
	P$1 = (struct $7ASTNODE*)0u;
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 64);
	label$42:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$43;
	{
		if( *(int32*)N$1 != 38 ) goto label$45;
		{
			L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
			if( *(int32*)L$1 != 36 ) goto label$47;
			{
				*(int32*)((uint8*)&AST$ + 140) = *(int32*)((uint8*)&AST$ + 140) + -1;
				OFS$1 = *(int64*)((uint8*)N$1 + 24);
				BYTES$1 = *(int64*)((uint8*)N$1 + 32);
				HASTTYPEINIMAYBECONVERTUPCAST( N$1, L$1 );
				R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
				ASTDELNODE( N$1 );
				N$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 64);
				ASTDELNODE( L$1 );
				if( P$1 == (struct $7ASTNODE*)0u ) goto label$49;
				{
					*(struct $7ASTNODE**)((uint8*)P$1 + 68) = N$1;
				}
				goto label$48;
				label$49:;
				{
					*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) = N$1;
				}
				label$48:;
				label$50:;
				if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) == (struct $7ASTNODE*)0u ) goto label$51;
				{
					*(int64*)((uint8*)N$1 + 24) = *(int64*)((uint8*)N$1 + 24) + OFS$1;
					*(int64*)((uint8*)N$1 + 32) = *(int64*)((uint8*)N$1 + 32) + BYTES$1;
					N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
				}
				goto label$50;
				label$51:;
				*(int64*)((uint8*)N$1 + 24) = *(int64*)((uint8*)N$1 + 24) + OFS$1;
				*(int64*)((uint8*)N$1 + 32) = *(int64*)((uint8*)N$1 + 32) + BYTES$1;
				*(struct $7ASTNODE**)((uint8*)N$1 + 68) = R$1;
			}
			label$47:;
			label$46:;
		}
		label$45:;
		label$44:;
		P$1 = N$1;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	}
	goto label$42;
	label$43:;
	if( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40) == (struct $8FBSYMBOL*)0u ) goto label$53;
	{
		ASTTEMPSCOPEEND( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40), *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 44) );
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
	PREV$1 = (struct $7ASTNODE*)0u;
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 64);
	label$62:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$63;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) != (struct $7ASTNODE*)0u ) goto label$65;
		{
			if( PREV$1 == (struct $7ASTNODE*)0u ) goto label$67;
			{
				*(struct $7ASTNODE**)((uint8*)PREV$1 + 68) = (struct $7ASTNODE*)0u;
			}
			goto label$66;
			label$67:;
			{
				*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) = (struct $7ASTNODE*)0u;
			}
			label$66:;
			*(struct $7ASTNODE**)((uint8*)TREE$1 + 68) = PREV$1;
			ASTDELTREE( N$1 );
			goto label$63;
		}
		label$65:;
		label$64:;
		PREV$1 = N$1;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	}
	goto label$62;
	label$63:;
	label$61:;
}

struct $7ASTNODE* ASTTYPEINIADDPAD( struct $7ASTNODE* TREE$1, int64 BYTES$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$68:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 37, (struct $8FBSYMBOL*)0u, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 32) = BYTES$1;
	*(int64*)((uint8*)N$1 + 24) = *(int64*)((uint8*)TREE$1 + 24);
	*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + *(int64*)((uint8*)N$1 + 32);
	fb$result$1 = N$1;
	label$69:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE* TREE$1, struct $7ASTNODE* EXPR$1, struct $8FBSYMBOL* SYM$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 CHECK_UPCAST$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$114:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 38, SYM$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = EXPR$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int64*)((uint8*)N$1 + 24) = *(int64*)((uint8*)TREE$1 + 24);
	*(int64*)((uint8*)N$1 + 32) = 0ll;
	if( *(int32*)EXPR$1 != 36 ) goto label$117;
	{
		int32 UPCAST$2;
		UPCAST$2 = 0;
		if( CHECK_UPCAST$1 == 0 ) goto label$119;
		{
			int32 TMP$96$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$120;
			TMP$96$3 = 24;
			goto label$136;
			label$120:;
			TMP$96$3 = DTYPE$1 & 31;
			label$136:;
			if( TMP$96$3 != 20 ) goto label$122;
			{
				int32 TMP$97$4;
				if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$123;
				TMP$97$4 = 24;
				goto label$137;
				label$123:;
				TMP$97$4 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
				label$137:;
				if( TMP$97$4 != 20 ) goto label$125;
				{
					if( SUBTYPE$1 == *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) ) goto label$127;
					{
						int32 vr$18 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8), SUBTYPE$1 );
						if( vr$18 <= 0 ) goto label$129;
						{
							UPCAST$2 = -1;
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
		if( UPCAST$2 == 0 ) goto label$131;
		{
			HASTTYPEINITREEMERGEUPCAST( TREE$1, N$1, &EXPR$1, SYM$1 );
		}
		goto label$130;
		label$131:;
		{
			*(int64*)((uint8*)TREE$1 + 24) = *(int64*)((uint8*)TREE$1 + 24) + *(int64*)((uint8*)EXPR$1 + 32);
			*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + *(int64*)((uint8*)EXPR$1 + 32);
		}
		label$130:;
	}
	goto label$116;
	label$117:;
	{
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$133;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$135;
			{
				*(int64*)((uint8*)N$1 + 32) = (int64)*(int32*)((uint8*)&ENV$ + 296);
			}
			goto label$134;
			label$135:;
			{
				*(int64*)((uint8*)N$1 + 32) = *(int64*)((uint8*)SYM$1 + 40);
			}
			label$134:;
		}
		label$133:;
		label$132:;
		*(int64*)((uint8*)TREE$1 + 24) = *(int64*)((uint8*)TREE$1 + 24) + *(int64*)((uint8*)N$1 + 32);
		*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + *(int64*)((uint8*)N$1 + 32);
	}
	label$116:;
	fb$result$1 = N$1;
	label$115:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIADDCTORCALL( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* PROCEXPR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$138:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 39, SYM$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int64*)((uint8*)N$1 + 24) = *(int64*)((uint8*)TREE$1 + 24);
	*(int64*)((uint8*)N$1 + 32) = *(int64*)((uint8*)SYM$1 + 40);
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = PROCEXPR$1;
	*(int64*)((uint8*)TREE$1 + 24) = *(int64*)((uint8*)TREE$1 + 24) + *(int64*)((uint8*)N$1 + 32);
	*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + *(int64*)((uint8*)N$1 + 32);
	fb$result$1 = N$1;
	label$139:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIADDCTORLIST( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1, int64 ELEMENTS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$140:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 40, SYM$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int64*)((uint8*)N$1 + 24) = *(int64*)((uint8*)TREE$1 + 24);
	*(int64*)((uint8*)N$1 + 32) = ELEMENTS$1;
	*(int64*)((uint8*)TREE$1 + 24) = *(int64*)((uint8*)TREE$1 + 24) + (*(int64*)((uint8*)SYM$1 + 40) * ELEMENTS$1);
	*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + (*(int64*)((uint8*)SYM$1 + 40) * ELEMENTS$1);
	fb$result$1 = N$1;
	label$141:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$142:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 41, (struct $8FBSYMBOL*)0u, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int32*)((uint8*)N$1 + 24) = IS_ARRAY$1;
	*(int64*)((uint8*)N$1 + 24) = 0ll;
	*(int64*)((uint8*)N$1 + 32) = 0ll;
	fb$result$1 = N$1;
	label$143:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$144:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = HADDNODE( TREE$1, 42, (struct $8FBSYMBOL*)0u, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int64*)((uint8*)N$1 + 24) = 0ll;
	*(int64*)((uint8*)N$1 + 32) = 0ll;
	fb$result$1 = N$1;
	label$145:;
	return fb$result$1;
}

void ASTTYPEINICOPYELEMENTS( struct $7ASTNODE* TREE$1, struct $7ASTNODE* SOURCE$1, int32 BEGININDEX$1 )
{
	label$146:;
	int32 I$1;
	SOURCE$1 = *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 64);
	SOURCE$1 = *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 68);
	I$1 = 0;
	label$148:;
	if( *(int32*)SOURCE$1 != 38 ) goto label$149;
	{
		if( I$1 < BEGININDEX$1 ) goto label$151;
		{
			struct $7ASTNODE* vr$5 = ASTCLONETREE( *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 64) );
			ASTTYPEINIADDASSIGN( TREE$1, vr$5, *(struct $8FBSYMBOL**)((uint8*)SOURCE$1 + 12), -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
		}
		label$151:;
		label$150:;
		SOURCE$1 = *(struct $7ASTNODE**)((uint8*)SOURCE$1 + 68);
		I$1 = I$1 + 1;
	}
	goto label$148;
	label$149:;
	label$147:;
}

void ASTTYPEINIREPLACEELEMENT( struct $7ASTNODE* TREE$1, int32 ELEMENT$1, struct $7ASTNODE* EXPR$1 )
{
	label$152:;
	int32 I$1;
	TREE$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 64);
	TREE$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 68);
	I$1 = 0;
	label$154:;
	if( *(int32*)TREE$1 != 38 ) goto label$155;
	{
		if( I$1 != ELEMENT$1 ) goto label$157;
		{
			ASTDELTREE( *(struct $7ASTNODE**)((uint8*)TREE$1 + 64) );
			*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) = EXPR$1;
			goto label$153;
		}
		label$157:;
		label$156:;
		TREE$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 68);
		I$1 = I$1 + 1;
	}
	goto label$154;
	label$155:;
	label$153:;
}

struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* INITREE$1, int32 UPDATE_TYPEINICOUNT$1, int32 ASSIGNOPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$176:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* NXT$1;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* L$1;
	int64 MAXSIZE$1;
	int32 SCOPED$1;
	SCOPED$1 = 0;
	if( UPDATE_TYPEINICOUNT$1 == 0 ) goto label$179;
	{
		*(int32*)((uint8*)&AST$ + 140) = *(int32*)((uint8*)&AST$ + 140) + -1;
	}
	label$179:;
	label$178:;
	MAXSIZE$1 = 0ll;
	if( (-(*(int32*)TARGET$1 == 17) | -(*(int32*)TARGET$1 == 19)) == 0 ) goto label$181;
	{
		int64 vr$8 = SYMBGETREALSIZE( *(struct $8FBSYMBOL**)((uint8*)TARGET$1 + 12) );
		MAXSIZE$1 = vr$8;
	}
	label$181:;
	label$180:;
	T$1 = (struct $7ASTNODE*)0u;
	N$1 = *(struct $7ASTNODE**)((uint8*)INITREE$1 + 64);
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$183;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) == (struct $7ASTNODE*)0u ) goto label$185;
		{
			int32 vr$11 = ASTHASSIDEFX( TARGET$1 );
			if( vr$11 == 0 ) goto label$187;
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
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$189;
	{
		{
			$13AST_NODECLASS TMP$99$3;
			TMP$99$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$99$3 != 38 ) goto label$191;
			label$192:;
			{
				int32 vr$15 = HASTCHECKTYPEINIASSIGNMENT( N$1, MAXSIZE$1, SCOPED$1 );
				if( vr$15 == 0 ) goto label$194;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$196;
					{
						if( *(int32*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) != 12 ) goto label$198;
						{
							if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 116) <= 0 ) goto label$200;
							{
								if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 112) != 0 ) goto label$202;
								{
									int32 TMP$100$9;
									struct $7ASTNODE* vr$26 = ASTCLONETREE( TARGET$1 );
									struct $7ASTNODE* vr$27 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$26, *(int64*)((uint8*)N$1 + 24), *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), (struct $8FBSYMBOL*)0u );
									L$1 = vr$27;
									if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 480) == 0 ) goto label$203;
									TMP$100$9 = 24;
									goto label$219;
									label$203:;
									TMP$100$9 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 31;
									label$219:;
									struct $7ASTNODE* vr$36 = ASTNEWCONSTI( (int64)*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$9 * 28)) + 4), 8, (struct $8FBSYMBOL*)0u );
									struct $7ASTNODE* vr$37 = ASTNEWMEM( 107, L$1, vr$36, 0ll );
									L$1 = vr$37;
									struct $7ASTNODE* vr$38 = ASTNEWLINK( T$1, L$1, 0 );
									T$1 = vr$38;
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
					struct $7ASTNODE* vr$43 = ASTCLONETREE( TARGET$1 );
					struct $7ASTNODE* vr$44 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$43, *(int64*)((uint8*)N$1 + 24), *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
					L$1 = vr$44;
					struct $7ASTNODE* vr$47 = ASTNEWASSIGN( L$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), ASSIGNOPTIONS$1 | 16 );
					L$1 = vr$47;
					struct $7ASTNODE* vr$48 = ASTNEWLINK( T$1, L$1, 0 );
					T$1 = vr$48;
				}
				label$194:;
				label$193:;
			}
			goto label$190;
			label$191:;
			if( TMP$99$3 != 37 ) goto label$204;
			label$205:;
			{
				int32 vr$49 = HASTCHECKTYPEINIASSIGNMENT( N$1, MAXSIZE$1, SCOPED$1 );
				if( vr$49 == 0 ) goto label$207;
				{
					struct $7ASTNODE* vr$53 = ASTCLONETREE( TARGET$1 );
					struct $7ASTNODE* vr$54 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$53, *(int64*)((uint8*)N$1 + 24), *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), (struct $8FBSYMBOL*)0u );
					L$1 = vr$54;
					struct $7ASTNODE* vr$56 = ASTNEWCONSTI( *(int64*)((uint8*)N$1 + 32), 8, (struct $8FBSYMBOL*)0u );
					struct $7ASTNODE* vr$57 = ASTNEWMEM( 107, L$1, vr$56, 0ll );
					L$1 = vr$57;
					struct $7ASTNODE* vr$58 = ASTNEWLINK( T$1, L$1, 0 );
					T$1 = vr$58;
				}
				label$207:;
				label$206:;
			}
			goto label$190;
			label$204:;
			if( TMP$99$3 != 39 ) goto label$208;
			label$209:;
			{
				int32 vr$59 = HASTCHECKTYPEINIASSIGNMENT( N$1, MAXSIZE$1, SCOPED$1 );
				if( vr$59 == 0 ) goto label$211;
				{
					struct $7ASTNODE* vr$64 = ASTCLONETREE( TARGET$1 );
					struct $7ASTNODE* vr$65 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$64, *(int64*)((uint8*)N$1 + 24), *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
					L$1 = vr$65;
					struct $7ASTNODE* vr$67 = ASTPATCHCTORCALL( *(struct $7ASTNODE**)((uint8*)N$1 + 64), L$1 );
					L$1 = vr$67;
					struct $7ASTNODE* vr$68 = ASTNEWLINK( T$1, L$1, 0 );
					T$1 = vr$68;
				}
				label$211:;
				label$210:;
			}
			goto label$190;
			label$208:;
			if( TMP$99$3 != 40 ) goto label$212;
			label$213:;
			{
				struct $7ASTNODE* vr$69 = HCALLCTORLIST( T$1, N$1, TARGET$1 );
				T$1 = vr$69;
			}
			goto label$190;
			label$212:;
			if( TMP$99$3 != 41 ) goto label$214;
			label$215:;
			{
				SCOPED$1 = SCOPED$1 + 1;
			}
			goto label$190;
			label$214:;
			if( TMP$99$3 != 42 ) goto label$216;
			label$217:;
			{
				SCOPED$1 = SCOPED$1 + -1;
			}
			goto label$190;
			label$216:;
			{
			}
			label$218:;
			label$190:;
		}
		NXT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
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

struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL* TARGET$1, struct $7ASTNODE* INITREE$1, int32 UPDATE_TYPEINICOUNT$1, int32 ASSIGNOPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$220:;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( TARGET$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
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
	(*(tmp$41*)((uint8*)&IR$ + 172))( BASESYM$1 );
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 64);
	label$255:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$256;
	{
		NXT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
		{
			uint32 TMP$104$3;
			TMP$104$3 = *(uint32*)N$1;
			goto label$258;
			label$259:;
			{
				(*(tmp$65*)((uint8*)&IR$ + 200))( *(int64*)((uint8*)N$1 + 32) );
			}
			goto label$257;
			label$260:;
			{
				(*(tmp$66*)((uint8*)&IR$ + 204))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12), *(int32*)((uint8*)N$1 + 24) );
			}
			goto label$257;
			label$261:;
			{
				(*(tmp$37*)((uint8*)&IR$ + 208))(  );
			}
			goto label$257;
			label$262:;
			{
				HFLUSHEXPRSTATIC( N$1, BASESYM$1 );
			}
			goto label$257;
			label$258:;
			static const void* tmp$105[6] = {
				&&label$259,
				&&label$262,
				&&label$262,
				&&label$262,
				&&label$260,
				&&label$261,
			};
			if( (TMP$104$3 - 37u) > 5u ) goto label$262;
			goto *tmp$105[TMP$104$3 - 37u];
			label$257:;
		}
		ASTDELNODE( N$1 );
		N$1 = NXT$1;
	}
	goto label$255;
	label$256:;
	(*(tmp$41*)((uint8*)&IR$ + 176))( BASESYM$1 );
	ASTDELNODE( TREE$1 );
	label$254:;
}

int32 ASTTYPEINIISCONST( struct $7ASTNODE* TREE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$290:;
	struct $7ASTNODE* N$1;
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 64);
	label$292:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$293;
	{
		{
			$13AST_NODECLASS TMP$110$3;
			TMP$110$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$110$3 != 38 ) goto label$295;
			label$296:;
			{
				int32 vr$3 = HEXPRISCONST( N$1 );
				if( vr$3 != 0 ) goto label$298;
				{
					fb$result$1 = 0;
					goto label$291;
				}
				label$298:;
				label$297:;
			}
			goto label$294;
			label$295:;
			if( TMP$110$3 == 39 ) goto label$300;
			label$301:;
			if( TMP$110$3 != 40 ) goto label$299;
			label$300:;
			{
				fb$result$1 = 0;
				goto label$291;
			}
			label$299:;
			label$294:;
		}
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	}
	goto label$292;
	label$293:;
	fb$result$1 = -1;
	goto label$291;
	label$291:;
	return fb$result$1;
}

int32 ASTTYPEINIUSESLOCALS( struct $7ASTNODE* N$1, int32 IGNOREATTRIB$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$302:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$305;
	{
		fb$result$1 = 0;
		goto label$303;
	}
	label$305:;
	label$304:;
	if( *(int32*)N$1 != 17 ) goto label$307;
	{
		if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 4) & 128) != 0) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 4) & IGNOREATTRIB$1) == 0)) == 0 ) goto label$309;
		{
			fb$result$1 = -1;
			goto label$303;
		}
		label$309:;
		label$308:;
	}
	label$307:;
	label$306:;
	int32 vr$12 = ASTTYPEINIUSESLOCALS( *(struct $7ASTNODE**)((uint8*)N$1 + 64), IGNOREATTRIB$1 );
	int32 vr$14 = ASTTYPEINIUSESLOCALS( *(struct $7ASTNODE**)((uint8*)N$1 + 68), IGNOREATTRIB$1 );
	fb$result$1 = vr$12 | vr$14;
	label$303:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINIUPDATE( struct $7ASTNODE* TREE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$318:;
	struct $7ASTNODE* TEMPVARINITCODE$1;
	struct $7ASTNODE TREEPARENT$1;
	if( *(int32*)((uint8*)&AST$ + 140) > 0 ) goto label$321;
	{
		fb$result$1 = TREE$1;
		goto label$319;
	}
	label$321:;
	label$320:;
	*($13AST_NODECLASS*)&TREEPARENT$1 = 0;
	*(int32*)((uint8*)&TREEPARENT$1 + 4) = -2147483648u;
	*(struct $8FBSYMBOL**)((uint8*)&TREEPARENT$1 + 8) = (struct $8FBSYMBOL*)0u;
	*(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 64) = (struct $7ASTNODE*)0u;
	*(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 68) = (struct $7ASTNODE*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&TREEPARENT$1 + 12) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&TREEPARENT$1 + 16) = 0;
	*(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 64) = TREE$1;
	struct $7ASTNODE* vr$2 = HWALK( TREE$1, &TREEPARENT$1 );
	TEMPVARINITCODE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWLINK( TEMPVARINITCODE$1, *(struct $7ASTNODE**)((uint8*)&TREEPARENT$1 + 64), 2 );
	fb$result$1 = vr$3;
	label$319:;
	return fb$result$1;
}

struct $7ASTNODE* ASTTYPEINICLONE( struct $7ASTNODE* TREE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$322:;
	struct $7ASTNODE* CLONETREE$1;
	struct $7ASTNODE* vr$1 = ASTCLONETREE( TREE$1 );
	CLONETREE$1 = vr$1;
	if( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40) == (struct $8FBSYMBOL*)0u ) goto label$325;
	{
		ASTTEMPSCOPECLONE( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40), CLONETREE$1 );
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$326:;
	fb$result$1 = TREE$1;
	if( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) + 68) == (struct $7ASTNODE*)0u ) goto label$329;
	{
		goto label$327;
	}
	label$329:;
	label$328:;
	if( *(int32*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) == 38 ) goto label$331;
	{
		goto label$327;
	}
	label$331:;
	label$330:;
	if( (-((*(int32*)((uint8*)TREE$1 + 4) & 511) != (*(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) + 4) & 511)) | -(*(struct $8FBSYMBOL**)((uint8*)TREE$1 + 8) != *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) + 8))) == 0 ) goto label$333;
	{
		goto label$327;
	}
	label$333:;
	label$332:;
	fb$result$1 = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) + 64);
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)TREE$1 + 64) );
	ASTDELNODE( TREE$1 );
	*(int32*)((uint8*)&AST$ + 140) = *(int32*)((uint8*)&AST$ + 140) + -1;
	label$327:;
	return fb$result$1;
}

void ASTTYPEINIDELETE( struct $7ASTNODE* TREE$1 )
{
	label$334:;
	if( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40) == (struct $8FBSYMBOL*)0u ) goto label$337;
	{
		ASTTEMPSCOPEDELETE( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40) );
		*(struct $8FBSYMBOL**)((uint8*)TREE$1 + 40) = (struct $8FBSYMBOL*)0u;
	}
	label$337:;
	label$336:;
	ASTDELTREE( TREE$1 );
	label$335:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void HASTTYPEINIMAYBECONVERTUPCAST( struct $7ASTNODE* N$1, struct $7ASTNODE* L$1 )
{
	int32 TMP$92$1;
	label$18:;
	struct $8FBSYMBOL* SYM$1;
	int64 MAXSIZE$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	MAXSIZE$1 = *(int64*)((uint8*)SYM$1 + 40);
	if( ((*(int32*)((uint8*)N$1 + 4) & 511) & 480) == 0 ) goto label$20;
	TMP$92$1 = 24;
	goto label$338;
	label$20:;
	TMP$92$1 = (*(int32*)((uint8*)N$1 + 4) & 511) & 31;
	label$338:;
	if( TMP$92$1 != 20 ) goto label$22;
	{
		int32 TMP$93$2;
		if( ((*(int32*)((uint8*)L$1 + 4) & 511) & 480) == 0 ) goto label$23;
		TMP$93$2 = 24;
		goto label$339;
		label$23:;
		TMP$93$2 = (*(int32*)((uint8*)L$1 + 4) & 511) & 31;
		label$339:;
		if( TMP$93$2 != 20 ) goto label$25;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) == *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) ) goto label$27;
			{
				int32 vr$18 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
				if( vr$18 <= 0 ) goto label$29;
				{
					*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = *(struct $8FBSYMBOL**)((uint8*)N$1 + 8);
					*(int64*)((uint8*)L$1 + 32) = MAXSIZE$1;
					*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 64) + 24) = *(int64*)((uint8*)N$1 + 24);
					*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 64) + 32) = MAXSIZE$1;
					*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 64) + 8) = *(struct $8FBSYMBOL**)((uint8*)N$1 + 8);
					{
						$13AST_NODECLASS TMP$94$6;
						TMP$94$6 = *($13AST_NODECLASS*)*(struct $7ASTNODE**)((uint8*)L$1 + 64);
						if( TMP$94$6 != 36 ) goto label$31;
						label$32:;
						{
						}
						goto label$30;
						label$31:;
						if( TMP$94$6 != 38 ) goto label$33;
						label$34:;
						{
						}
						goto label$30;
						label$33:;
						if( TMP$94$6 != 41 ) goto label$35;
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

static struct $7ASTNODE* HADDNODE( struct $7ASTNODE* TREE$1, int32 CLASS_$1, struct $8FBSYMBOL* SYM$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	struct $7ASTNODE* N$1;
	if( (-(DTYPE$1 == -2147483648u) & -(SYM$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$57;
	{
		DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28);
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
	}
	label$57:;
	label$56:;
	struct $7ASTNODE* vr$6 = ASTNEWNODE( CLASS_$1, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$6;
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 68) == (struct $7ASTNODE*)0u ) goto label$59;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 68) + 68) = N$1;
	}
	goto label$58;
	label$59:;
	{
		*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) = N$1;
	}
	label$58:;
	*(struct $7ASTNODE**)((uint8*)TREE$1 + 68) = N$1;
	fb$result$1 = N$1;
	label$55:;
	return fb$result$1;
}

static int32 HASTINITREEISCONSTANT( struct $7ASTNODE* TREE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$70:;
	if( TREE$1 != (struct $7ASTNODE*)0u ) goto label$73;
	{
		fb$result$1 = -1;
		goto label$71;
	}
	label$73:;
	label$72:;
	{
		$13AST_NODECLASS TMP$95$2;
		TMP$95$2 = *($13AST_NODECLASS*)TREE$1;
		if( TMP$95$2 != 36 ) goto label$75;
		label$76:;
		{
		}
		goto label$74;
		label$75:;
		if( TMP$95$2 != 37 ) goto label$77;
		label$78:;
		{
		}
		goto label$74;
		label$77:;
		if( TMP$95$2 != 38 ) goto label$79;
		label$80:;
		{
		}
		goto label$74;
		label$79:;
		if( TMP$95$2 != 39 ) goto label$81;
		label$82:;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		goto label$74;
		label$81:;
		if( TMP$95$2 != 40 ) goto label$83;
		label$84:;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		goto label$74;
		label$83:;
		if( TMP$95$2 != 41 ) goto label$85;
		label$86:;
		{
		}
		goto label$74;
		label$85:;
		if( TMP$95$2 != 42 ) goto label$87;
		label$88:;
		{
		}
		goto label$74;
		label$87:;
		if( TMP$95$2 != 9 ) goto label$89;
		label$90:;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		goto label$74;
		label$89:;
		if( TMP$95$2 != 10 ) goto label$91;
		label$92:;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		goto label$74;
		label$91:;
		if( TMP$95$2 != 17 ) goto label$93;
		label$94:;
		{
			fb$result$1 = -1;
			goto label$71;
		}
		goto label$74;
		label$93:;
		if( TMP$95$2 != 16 ) goto label$95;
		label$96:;
		{
			fb$result$1 = -1;
			goto label$71;
		}
		goto label$74;
		label$95:;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		label$97:;
		label$74:;
	}
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 64) == (struct $7ASTNODE*)0u ) goto label$99;
	{
		int32 vr$4 = HASTINITREEISCONSTANT( *(struct $7ASTNODE**)((uint8*)TREE$1 + 64) );
		if( vr$4 != 0 ) goto label$101;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		label$101:;
		label$100:;
	}
	label$99:;
	label$98:;
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 68) == (struct $7ASTNODE*)0u ) goto label$103;
	{
		int32 vr$7 = HASTINITREEISCONSTANT( *(struct $7ASTNODE**)((uint8*)TREE$1 + 68) );
		if( vr$7 != 0 ) goto label$105;
		{
			fb$result$1 = 0;
			goto label$71;
		}
		label$105:;
		label$104:;
	}
	label$103:;
	label$102:;
	fb$result$1 = -1;
	goto label$71;
	label$71:;
	return fb$result$1;
}

static void HASTTYPEINITREEMERGEUPCAST( struct $7ASTNODE* TREE$1, struct $7ASTNODE* N$1, struct $7ASTNODE** EXPR$1, struct $8FBSYMBOL* SYM$1 )
{
	label$106:;
	int32 MAXSIZE$1;
	MAXSIZE$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
	if( (*(int64*)((uint8*)TREE$1 + 24) + *(int64*)((uint8*)*EXPR$1 + 32)) <= (int64)MAXSIZE$1 ) goto label$109;
	{
		int32 ISCONST$2;
		int32 vr$8 = HASTINITREEISCONSTANT( *EXPR$1 );
		ISCONST$2 = -(vr$8 == -1);
		int32 HASDTOR$2;
		struct $8FBSYMBOL* vr$11 = SYMBGETCOMPDTOR1( *(struct $8FBSYMBOL**)((uint8*)TREE$1 + 8) );
		HASDTOR$2 = -(vr$11 != (struct $8FBSYMBOL*)0u);
		if( (-(ISCONST$2 == 0) | -(HASDTOR$2 == -1)) == 0 ) goto label$111;
		{
			struct $7ASTNODE* L$3;
			struct $7ASTNODE* vr$20 = ASTNEWCONV( *(int32*)((uint8*)SYM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), *EXPR$1, 0, (int32*)0u );
			L$3 = vr$20;
			if( L$3 == (struct $7ASTNODE*)0u ) goto label$113;
			{
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$3;
			}
			label$113:;
			label$112:;
		}
		label$111:;
		label$110:;
		*(int64*)((uint8*)TREE$1 + 24) = *(int64*)((uint8*)TREE$1 + 24) + (int64)MAXSIZE$1;
		*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + (int64)MAXSIZE$1;
	}
	goto label$108;
	label$109:;
	{
		*(int64*)((uint8*)TREE$1 + 24) = *(int64*)((uint8*)TREE$1 + 24) + *(int64*)((uint8*)*EXPR$1 + 32);
		*(int64*)((uint8*)TREE$1 + 32) = *(int64*)((uint8*)TREE$1 + 32) + *(int64*)((uint8*)*EXPR$1 + 32);
	}
	label$108:;
	label$107:;
}

static struct $7ASTNODE* HCALLCTORLIST( struct $7ASTNODE* T$1, struct $7ASTNODE* N$1, struct $7ASTNODE* TARGET$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$158:;
	struct $7ASTNODE* FLDEXPR$1;
	struct $7ASTNODE* vr$5 = ASTCLONETREE( TARGET$1 );
	struct $7ASTNODE* vr$6 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$5, *(int64*)((uint8*)N$1 + 24), *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
	FLDEXPR$1 = vr$6;
	if( *(int64*)((uint8*)N$1 + 32) <= 1ll ) goto label$161;
	{
		struct $8FBSYMBOL* CNT$2;
		__builtin_memset( &CNT$2, 0, 4 );
		struct $8FBSYMBOL* LABEL$2;
		__builtin_memset( &LABEL$2, 0, 4 );
		struct $8FBSYMBOL* ITER$2;
		__builtin_memset( &ITER$2, 0, 4 );
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
		CNT$2 = vr$11;
		struct $8FBSYMBOL* vr$12 = SYMBADDLABEL( (uint8*)0u, 4 );
		LABEL$2 = vr$12;
		struct $8FBSYMBOL* vr$27 = SYMBADDTEMPVAR( (((*(int32*)((uint8*)N$1 + 4) & 31) | ((*(int32*)((uint8*)N$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)N$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)N$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
		ITER$2 = vr$27;
		struct $7ASTNODE* vr$28 = ASTNEWADDROF( FLDEXPR$1 );
		struct $7ASTNODE* vr$29 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( ITER$2, vr$28, 64 );
		struct $7ASTNODE* vr$30 = ASTNEWLINK( T$1, vr$29, 0 );
		T$1 = vr$30;
		struct $7ASTNODE* vr$31 = ASTBUILDFORBEGIN( T$1, CNT$2, LABEL$2, 0, -1 );
		T$1 = vr$31;
		struct $7ASTNODE* vr$32 = ASTBUILDVARDEREF( ITER$2 );
		struct $7ASTNODE* vr$34 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), vr$32 );
		struct $7ASTNODE* vr$35 = ASTNEWLINK( T$1, vr$34, 0 );
		T$1 = vr$35;
		struct $7ASTNODE* vr$36 = ASTBUILDVARINC( ITER$2, 1 );
		struct $7ASTNODE* vr$37 = ASTNEWLINK( T$1, vr$36, 0 );
		T$1 = vr$37;
		struct $7ASTNODE* vr$39 = ASTNEWCONSTI( *(int64*)((uint8*)N$1 + 32), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$40 = ASTBUILDFOREND( T$1, CNT$2, LABEL$2, vr$39 );
		T$1 = vr$40;
	}
	goto label$160;
	label$161:;
	{
		struct $7ASTNODE* vr$42 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), FLDEXPR$1 );
		struct $7ASTNODE* vr$43 = ASTNEWLINK( T$1, vr$42, 0 );
		T$1 = vr$43;
	}
	label$160:;
	fb$result$1 = T$1;
	label$159:;
	return fb$result$1;
}

static int32 HASTCHECKTYPEINIASSIGNMENT( struct $7ASTNODE* N$1, int64 MAXSIZE$1, int32 SCOPED$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$162:;
	if( MAXSIZE$1 <= 0ll ) goto label$165;
	{
		{
			$13AST_NODECLASS TMP$98$3;
			TMP$98$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$98$3 != 37 ) goto label$167;
			label$168:;
			{
				if( (*(int64*)((uint8*)N$1 + 24) + *(int64*)((uint8*)N$1 + 32)) <= MAXSIZE$1 ) goto label$170;
				{
					fb$result$1 = 0;
					goto label$163;
				}
				label$170:;
				label$169:;
			}
			goto label$166;
			label$167:;
			{
				if( (*(int64*)((uint8*)N$1 + 24) + *(int64*)((uint8*)N$1 + 32)) <= MAXSIZE$1 ) goto label$173;
				{
					if( (*(int32*)((uint8*)&ENV$ + 200) & 1024) == 0 ) goto label$175;
					{
						ERRREPORTWARN( 49, (uint8*)0u, 1, (uint8*)0u );
					}
					label$175:;
					label$174:;
					fb$result$1 = 0;
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
	fb$result$1 = -1;
	goto label$163;
	label$163:;
	return fb$result$1;
}

static void HFLUSHEXPRSTATIC( struct $7ASTNODE* N$1, struct $8FBSYMBOL* BASESYM$1 )
{
	label$222:;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$225;
	{
		SYM$1 = BASESYM$1;
	}
	label$225:;
	label$224:;
	int32 SDTYPE$1;
	SDTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	$11FB_DATATYPE SFULLDTYPE$1;
	SFULLDTYPE$1 = *($11FB_DATATYPE*)((uint8*)SYM$1 + 28);
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$227;
	{
		SDTYPE$1 = (((SDTYPE$1 & 31) | ((SDTYPE$1 & 480) + 32)) | ((SDTYPE$1 & 261632) << (1 & 31))) | (SDTYPE$1 & 32505856);
		SFULLDTYPE$1 = (((SFULLDTYPE$1 & 31) | ((SFULLDTYPE$1 & 480) + 32)) | ((SFULLDTYPE$1 & 261632) << (1 & 31))) | (SFULLDTYPE$1 & 32505856);
	}
	label$227:;
	label$226:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	int32 EDTYPE$1;
	EDTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0u;
	{
		if( EDTYPE$1 == 4 ) goto label$230;
		label$231:;
		if( EDTYPE$1 != 7 ) goto label$229;
		label$230:;
		{
			struct $8FBSYMBOL* vr$27 = ASTGETSTRLITSYMBOL( EXPR$1 );
			LITSYM$1 = vr$27;
		}
		label$229:;
		label$228:;
	}
	if( LITSYM$1 != (struct $8FBSYMBOL*)0u ) goto label$233;
	{
		if( *(int32*)EXPR$1 != 23 ) goto label$235;
		{
			(*(tmp$62*)((uint8*)&IR$ + 188))( SYM$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12), *(int64*)((uint8*)EXPR$1 + 24) );
		}
		goto label$234;
		label$235:;
		{
			{
				struct $7ASTNODE* LEXPR$4;
				LEXPR$4 = *(struct $7ASTNODE**)((uint8*)EXPR$1 + 64);
				label$236:;
				if( LEXPR$4 == (struct $7ASTNODE*)0u ) goto label$237;
				{
					if( *(int32*)LEXPR$4 != 23 ) goto label$239;
					{
						(*(tmp$62*)((uint8*)&IR$ + 188))( SYM$1, *(struct $8FBSYMBOL**)((uint8*)LEXPR$4 + 12), *(int64*)((uint8*)LEXPR$4 + 24) );
						EXPR$1 = (struct $7ASTNODE*)0u;
						goto label$237;
					}
					label$239:;
					label$238:;
					LEXPR$4 = *(struct $7ASTNODE**)((uint8*)LEXPR$4 + 64);
				}
				goto label$236;
				label$237:;
			}
			if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$241;
			{
				int32 TMP$101$4;
				if( EDTYPE$1 == SDTYPE$1 ) goto label$243;
				{
					struct $7ASTNODE* vr$37 = ASTNEWCONV( SFULLDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), EXPR$1, 8, (int32*)0u );
					EXPR$1 = vr$37;
				}
				label$243:;
				label$242:;
				if( (SDTYPE$1 & 480) == 0 ) goto label$244;
				TMP$101$4 = 24;
				goto label$340;
				label$244:;
				TMP$101$4 = SDTYPE$1 & 31;
				label$340:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$4 * 28)) != 1 ) goto label$246;
				{
					(*(tmp$61*)((uint8*)&IR$ + 184))( SYM$1, *(double*)((uint8*)EXPR$1 + 24) );
				}
				goto label$245;
				label$246:;
				{
					(*(tmp$60*)((uint8*)&IR$ + 180))( SYM$1, *(int64*)((uint8*)EXPR$1 + 24) );
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
		if( SDTYPE$1 == 7 ) goto label$248;
		{
			if( EDTYPE$1 == 7 ) goto label$250;
			{
				(*(tmp$63*)((uint8*)&IR$ + 192))( *(int64*)((uint8*)SYM$1 + 40) + -1ll, *(uint8**)((uint8*)LITSYM$1 + 56), *(int64*)((uint8*)LITSYM$1 + 40) + -1ll );
			}
			goto label$249;
			label$250:;
			{
				FBSTRING TMP$102$4;
				int64 vr$50 = __divdi3( *(int64*)((uint8*)LITSYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
				__builtin_memset( &TMP$102$4, 0, 12 );
				FBSTRING* vr$54 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)LITSYM$1 + 56) );
				fb_StrAssign( (void*)&TMP$102$4, -1, (void*)vr$54, -1, 0 );
				(*(tmp$63*)((uint8*)&IR$ + 192))( *(int64*)((uint8*)SYM$1 + 40) + -1ll, (uint8*)*(uint8**)&TMP$102$4, vr$50 + -1ll );
				fb_StrDelete( (FBSTRING*)&TMP$102$4 );
			}
			label$249:;
		}
		goto label$247;
		label$248:;
		{
			if( EDTYPE$1 == 7 ) goto label$252;
			{
				uint32* TMP$103$4;
				uint32* vr$62 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)LITSYM$1 + 56) );
				TMP$103$4 = vr$62;
				int64 vr$65 = __divdi3( *(int64*)((uint8*)SYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
				(*(tmp$64*)((uint8*)&IR$ + 196))( vr$65 + -1ll, TMP$103$4, *(int64*)((uint8*)LITSYM$1 + 40) + -1ll );
				fb_WstrDelete( (uint32*)TMP$103$4 );
			}
			goto label$251;
			label$252:;
			{
				int64 vr$69 = __divdi3( *(int64*)((uint8*)LITSYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
				int64 vr$74 = __divdi3( *(int64*)((uint8*)SYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
				(*(tmp$64*)((uint8*)&IR$ + 196))( vr$74 + -1ll, *(uint32**)((uint8*)LITSYM$1 + 56), vr$69 + -1ll );
			}
			label$251:;
		}
		label$247:;
	}
	label$232:;
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = (struct $7ASTNODE*)0u;
	label$223:;
}

static int32 HEXPRISCONST( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$263:;
	struct $8FBSYMBOL* LSYM$1;
	LSYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	if( LSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$266;
	{
		int32 TMP$106$2;
		if( *(int32*)LSYM$1 != 12 ) goto label$267;
		TMP$106$2 = -(*(int32*)((uint8*)LSYM$1 + 116) > 0);
		goto label$341;
		label$267:;
		TMP$106$2 = 0;
		label$341:;
		if( TMP$106$2 == 0 ) goto label$269;
		{
			ERRREPORT( 24, -1, (uint8*)0u );
			fb$result$1 = 0;
			goto label$264;
		}
		label$269:;
		label$268:;
	}
	label$266:;
	label$265:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	{
		$13AST_NODECLASS TMP$107$2;
		TMP$107$2 = *($13AST_NODECLASS*)EXPR$1;
		if( TMP$107$2 == 23 ) goto label$272;
		label$273:;
		if( TMP$107$2 != 16 ) goto label$271;
		label$272:;
		{
			fb$result$1 = -1;
			goto label$264;
		}
		goto label$270;
		label$271:;
		if( TMP$107$2 != 5 ) goto label$274;
		label$275:;
		{
			label$276:;
			if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$277;
			{
				{
					$13AST_NODECLASS TMP$108$5;
					TMP$108$5 = *($13AST_NODECLASS*)EXPR$1;
					if( TMP$108$5 != 5 ) goto label$279;
					label$280:;
					{
					}
					goto label$278;
					label$279:;
					if( TMP$108$5 != 23 ) goto label$281;
					label$282:;
					{
						fb$result$1 = -1;
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
				EXPR$1 = *(struct $7ASTNODE**)((uint8*)EXPR$1 + 64);
			}
			goto label$276;
			label$277:;
			fb$result$1 = 0;
			goto label$264;
		}
		label$274:;
		label$270:;
	}
	{
		int32 TMP$109$2;
		TMP$109$2 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
		if( TMP$109$2 == 4 ) goto label$286;
		label$287:;
		if( TMP$109$2 != 7 ) goto label$285;
		label$286:;
		{
			struct $8FBSYMBOL* vr$11 = ASTGETSTRLITSYMBOL( EXPR$1 );
			if( vr$11 == (struct $8FBSYMBOL*)0u ) goto label$289;
			{
				fb$result$1 = -1;
				goto label$264;
			}
			label$289:;
			label$288:;
		}
		label$285:;
		label$284:;
	}
	fb$result$1 = 0;
	goto label$264;
	label$264:;
	return fb$result$1;
}

static struct $7ASTNODE* HWALK( struct $7ASTNODE* N$1, struct $7ASTNODE* PARENT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$310:;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* SYM$1;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$313;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$311;
	}
	label$313:;
	label$312:;
	if( *(int32*)N$1 != 36 ) goto label$315;
	{
		struct $8FBSYMBOL* vr$4 = SYMBADDTEMPVAR( *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
		SYM$1 = vr$4;
		ASTDTORLISTADD( SYM$1 );
		struct $7ASTNODE* vr$5 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$5;
		if( *(struct $7ASTNODE**)((uint8*)PARENT$1 + 64) != N$1 ) goto label$317;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 64) = EXPR$1;
		}
		goto label$316;
		label$317:;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 68) = EXPR$1;
		}
		label$316:;
		struct $7ASTNODE* vr$9 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( SYM$1, N$1, -1, 64 );
		N$1 = vr$9;
		struct $7ASTNODE* vr$10 = ASTTYPEINIUPDATE( N$1 );
		fb$result$1 = vr$10;
		goto label$311;
	}
	label$315:;
	label$314:;
	struct $7ASTNODE* vr$12 = HWALK( *(struct $7ASTNODE**)((uint8*)N$1 + 68), N$1 );
	struct $7ASTNODE* vr$14 = HWALK( *(struct $7ASTNODE**)((uint8*)N$1 + 64), N$1 );
	struct $7ASTNODE* vr$15 = ASTNEWLINK( vr$14, vr$12, 0 );
	fb$result$1 = vr$15;
	goto label$311;
	label$311:;
	return fb$result$1;
}
