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
typedef int32 $13AST_NODECLASS;
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
	int32 MULT;
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
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 36 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 120 );
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
struct $18SYMBDEFAULTMEMBERS {
	struct $8FBSYMBOL* DEFCTOR;
	struct $8FBSYMBOL* DTOR1;
	struct $8FBSYMBOL* DTOR0;
	struct $8FBSYMBOL* COPYCTOR;
	struct $8FBSYMBOL* COPYCTORCONST;
	struct $8FBSYMBOL* COPYLETOPCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $18SYMBDEFAULTMEMBERS ) == 24 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
void free( void* );
void* memset( void*, int32, uint32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__symbzstruct( void ) __attribute__(( constructor ));
void HASHINIT( struct $5THASH*, int32, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
int32 FBIS64BIT( void );
int32 FBGETCPUFAMILY( void );
struct $7ASTNODE* ASTBUILDARRAYDESCINITREE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int32, int32, struct $8FBSYMBOL* );
void SYMBVARINITFIELDS( struct $8FBSYMBOL* );
void SYMBVARINITARRAYDIMENSIONS( struct $8FBSYMBOL*, int32, struct $7FBARRAYI10FBARRAYDIME* );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int32, int32, int32, $13FB_SYMBATTRIB, int32 );
int32 TYPECALCNATURALALIGN( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int32, struct $7FBARRAYI10FBARRAYDIME*, int32, struct $8FBSYMBOL*, int64, int32, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int32 );
void SYMBDELNAMESPACEMEMBERS( struct $8FBSYMBOL*, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
void SYMBCHECKFWDREF( struct $8FBSYMBOL* );
int32 SYMBNAMESPACEIMPORTEX( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int32 );
void SYMBNESTEND( int32 );
uint8* SYMBUNIQUELABEL( void );
void SYMBUDTALLOCEXT( struct $8FBSYMBOL* );
void SYMBUDTDECLAREDEFAULTMEMBERS( struct $18SYMBDEFAULTMEMBERS*, struct $8FBSYMBOL*, $11FB_FUNCMODE );
void SYMBUDTIMPLEMENTDEFAULTMEMBERS( struct $18SYMBDEFAULTMEMBERS*, struct $8FBSYMBOL* );
int32 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
static int32 HCALCPADDING( int64, int32, int32, struct $8FBSYMBOL* );
static int32 HCHECKUDTSIZE( uint64, uint64, uint32 );
static void STRUCT_ANALYZE( struct $8FBSYMBOL*, int32*, int32*, int32* );
int32 HGETMAGICSTRUCTNUMBER( struct $8FBSYMBOL* );
static int32 HGETRETURNTYPEGAS64SYSTEMV( struct $8FBSYMBOL* );
static int32 HGETRETURNTYPE( struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HSKIPTOFIELD( struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HFINDCOMMONPARENT( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
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

struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, struct $8FBSYMBOL* PARENT$1, uint8* ID$1, uint8* ID_ALIAS$1, int32 ISUNION$1, int32 ALIGN$1, int32 IS_DERIVED$1, $13FB_SYMBATTRIB ATTRIB$1, int32 OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( ID_ALIAS$1 != (uint8*)0u ) goto label$13;
	{
		if( *(int32*)((uint8*)&PARSER$ + 104) == 0 ) goto label$15;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$15:;
		label$14:;
	}
	label$13:;
	label$12:;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( OPTIONS$1 | 32, (struct $8FBSYMBOL*)0u, SYMTB$1, HASHTB$1, 10, ID$1, ID_ALIAS$1, 20, (struct $8FBSYMBOL*)0u, ATTRIB$1, 0 );
	S$1 = vr$2;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$17;
	{
		goto label$11;
	}
	label$17:;
	label$16:;
	*(int32*)((uint8*)S$1 + 120) = 0;
	if( ISUNION$1 == 0 ) goto label$19;
	{
		*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 1;
	}
	label$19:;
	label$18:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 56) = S$1;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 60) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 64) = (struct $8FBSYMBOL*)0u;
	if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$21;
	{
		*(struct $8FBSYMBOL**)((uint8*)S$1 + 68) = S$1;
		*(struct $8FBHASHTB**)((uint8*)S$1 + 84) = (struct $8FBHASHTB*)0u;
		*(struct $8FBHASHTB**)((uint8*)S$1 + 88) = (struct $8FBHASHTB*)0u;
		{
			HASHINIT( (struct $5THASH*)((uint8*)S$1 + 72), 16, 0 );
		}
		goto label$22;
		label$23:;
		{
			memset( (void*)((uint8*)S$1 + 72), 0, 12u );
		}
		label$22:;
	}
	goto label$20;
	label$21:;
	{
		*(struct $8FBSYMBOL**)((uint8*)S$1 + 100) = PARENT$1;
		*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 2;
	}
	label$20:;
	*(struct $13FBNAMESPC_EXT**)((uint8*)S$1 + 92) = (struct $13FBNAMESPC_EXT*)0u;
	*(int64*)((uint8*)S$1 + 48) = 0ll;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$25;
	{
		if( ALIGN$1 != 0 ) goto label$27;
		{
			if( *(int32*)((uint8*)&ENV$ + 108) == 11 ) goto label$29;
			{
				ALIGN$1 = 1;
			}
			label$29:;
			label$28:;
		}
		label$27:;
		label$26:;
	}
	label$25:;
	label$24:;
	*(uint8*)((uint8*)S$1 + 125) = (uint8)ALIGN$1;
	*(int32*)((uint8*)S$1 + 104) = 1;
	*(uint8*)((uint8*)S$1 + 124) = (uint8)0u;
	*(int64*)((uint8*)S$1 + 112) = 0ll;
	*($11FB_DATATYPE*)((uint8*)S$1 + 128) = -2147483648u;
	*(int32*)((uint8*)S$1 + 136) = -1;
	*(struct $12FB_STRUCTEXT**)((uint8*)S$1 + 140) = (struct $12FB_STRUCTEXT*)0u;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 96) = (struct $8FBSYMBOL*)0u;
	if( IS_DERIVED$1 == 0 ) goto label$31;
	{
		*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 262144;
		SYMBNESTBEGIN( S$1, 0 );
	}
	label$31:;
	label$30:;
	fb$result$1 = S$1;
	label$11:;
	return fb$result$1;
}

void SYMBSTRUCTADDBASE( struct $8FBSYMBOL* S$1, struct $8FBSYMBOL* BASE_$1 )
{
	label$32:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$92$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* vr$0 = SYMBADDFIELD( S$1, (uint8*)"base$", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 20, BASE_$1, 0ll, 0, 0 );
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 96) = vr$0;
	SYMBNAMESPACEIMPORTEX( BASE_$1, S$1 );
	if( (*(int32*)((uint8*)BASE_$1 + 12) & 4194304) == 0 ) goto label$35;
	{
		*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 4194304;
		SYMBUDTALLOCEXT( S$1 );
		*(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)S$1 + 140) + 144) = *(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)BASE_$1 + 140) + 144);
		*(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)S$1 + 140) + 156) = *(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)BASE_$1 + 140) + 156);
	}
	label$35:;
	label$34:;
	label$33:;
}

int32 TYPECALCNATURALALIGN( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$36:;
	int32 ALIGN$1;
	{
		int32 TMP$94$2;
		uint32 TMP$95$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$38;
		TMP$94$2 = 24;
		goto label$49;
		label$38:;
		TMP$94$2 = DTYPE$1 & 31;
		label$49:;
		TMP$95$2 = (uint32)TMP$94$2;
		goto label$40;
		label$41:;
		{
			ALIGN$1 = *(int32*)((uint8*)SUBTYPE$1 + 104);
		}
		goto label$39;
		label$42:;
		{
			ALIGN$1 = *(int32*)((uint8*)&ENV$ + 296);
		}
		goto label$39;
		label$43:;
		{
			int32 TMP$96$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$44;
			TMP$96$3 = 24;
			goto label$50;
			label$44:;
			TMP$96$3 = DTYPE$1 & 31;
			label$50:;
			ALIGN$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$3 * 28)) + 4);
		}
		goto label$39;
		label$40:;
		static const void* tmp$97[4] = {
			&&label$42,
			&&label$43,
			&&label$43,
			&&label$41,
		};
		if( (TMP$95$2 - 17u) > 3u ) goto label$43;
		goto *tmp$97[TMP$95$2 - 17u];
		label$39:;
	}
	int32 vr$7 = FBGETCPUFAMILY(  );
	if( (-(vr$7 == 0) & -(*(int32*)((uint8*)&ENV$ + 108) != 0)) == 0 ) goto label$46;
	{
		if( ALIGN$1 != 8 ) goto label$48;
		{
			ALIGN$1 = 4;
		}
		label$48:;
		label$47:;
	}
	label$46:;
	label$45:;
	fb$result$1 = ALIGN$1;
	label$37:;
	return fb$result$1;
}

int32 SYMBCHECKBITFIELD( struct $8FBSYMBOL* UDT$1, int32 DTYPE$1, int64 LGT$1, int32 BITS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$61:;
	if( (-(BITS$1 <= 0) | -((int64)BITS$1 > (LGT$1 << (3ll & 63)))) == 0 ) goto label$64;
	{
		fb$result$1 = 0;
		goto label$62;
	}
	label$64:;
	label$63:;
	{
		int32 TMP$98$2;
		uint32 TMP$99$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$65;
		TMP$98$2 = 24;
		goto label$71;
		label$65:;
		TMP$98$2 = DTYPE$1 & 31;
		label$71:;
		TMP$99$2 = (uint32)TMP$98$2;
		goto label$67;
		label$68:;
		{
			fb$result$1 = -1;
			goto label$62;
		}
		goto label$66;
		label$69:;
		{
			int32 vr$8 = FBIS64BIT(  );
			fb$result$1 = vr$8;
		}
		goto label$66;
		label$70:;
		{
			fb$result$1 = 0;
			goto label$62;
		}
		goto label$66;
		label$67:;
		static const void* tmp$100[14] = {
			&&label$68,
			&&label$68,
			&&label$68,
			&&label$70,
			&&label$68,
			&&label$68,
			&&label$70,
			&&label$68,
			&&label$68,
			&&label$70,
			&&label$68,
			&&label$68,
			&&label$69,
			&&label$69,
		};
		if( (TMP$99$2 - 1u) > 13u ) goto label$70;
		goto *tmp$100[TMP$99$2 - 1u];
		label$66:;
	}
	label$62:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, int32 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LGT$1, int32 BITS$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$72:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* TAIL$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $8FBSYMBOL* DESC$1;
	struct $8FBSYMBOL* DESCTYPE$1;
	int32 PAD$1;
	int32 ALLOC_FIELD$1;
	int32 ELEN$1;
	int32 OPTIONS$1;
	int64 OFFSET$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	DESC$1 = (struct $8FBSYMBOL*)0u;
	if( LGT$1 > 0ll ) goto label$75;
	{
		int64 vr$1 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
		LGT$1 = vr$1;
	}
	label$75:;
	label$74:;
	if( (ATTRIB$1 & 4) == 0 ) goto label$77;
	{
		struct $10FBARRAYDIM EMPTYDTB$2[1];
		__builtin_memset( (struct $10FBARRAYDIM*)EMPTYDTB$2, 0, 16 );
		struct $8FBARRAY1I10FBARRAYDIME tmp$101$2;
		*(struct $10FBARRAYDIM**)&tmp$101$2 = (struct $10FBARRAYDIM*)EMPTYDTB$2;
		*(struct $10FBARRAYDIM**)((uint8*)&tmp$101$2 + 4) = (struct $10FBARRAYDIM*)EMPTYDTB$2;
		*(int32*)((uint8*)&tmp$101$2 + 8) = 16;
		*(int32*)((uint8*)&tmp$101$2 + 12) = 16;
		*(int32*)((uint8*)&tmp$101$2 + 16) = 1;
		*(int32*)((uint8*)&tmp$101$2 + 20) = 49;
		*(int32*)((uint8*)&tmp$101$2 + 24) = 1;
		*(int32*)((uint8*)&tmp$101$2 + 28) = 0;
		*(int32*)((uint8*)&tmp$101$2 + 32) = 0;
		struct $8FBSYMBOL* vr$6 = SYMBADDARRAYDESCRIPTORTYPE( DIMENSIONS$1, DTYPE$1, SUBTYPE$1 );
		DESCTYPE$1 = vr$6;
		struct $8FBSYMBOL* vr$8 = SYMBADDFIELD( PARENT$1, ID$1, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$101$2, 20, DESCTYPE$1, 0ll, 0, 8192 );
		DESC$1 = vr$8;
		OFFSET$1 = *(int64*)((uint8*)DESC$1 + 48);
		ALLOC_FIELD$1 = 0;
	}
	goto label$76;
	label$77:;
	{
		OFFSET$1 = *(int64*)((uint8*)PARENT$1 + 48);
		ALLOC_FIELD$1 = -1;
	}
	label$76:;
	if( BITS$1 <= 0 ) goto label$79;
	{
		*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 32768;
		if( (int32)*(uint8*)((uint8*)PARENT$1 + 124) <= 0 ) goto label$81;
		{
			TAIL$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 64);
			label$82:;
			if( *(int32*)TAIL$1 == 12 ) goto label$83;
			{
				TAIL$1 = *(struct $8FBSYMBOL**)((uint8*)TAIL$1 + 172);
			}
			goto label$82;
			label$83:;
			if( (int64)((int32)*(uint8*)((uint8*)PARENT$1 + 124) + BITS$1) <= (*(int64*)((uint8*)TAIL$1 + 40) << (3ll & 63)) ) goto label$85;
			{
				*(uint8*)((uint8*)PARENT$1 + 124) = (uint8)0u;
			}
			goto label$84;
			label$85:;
			{
				if( LGT$1 == *(int64*)((uint8*)TAIL$1 + 40) ) goto label$87;
				{
					DTYPE$1 = *(int32*)((uint8*)TAIL$1 + 28) & 511;
					LGT$1 = *(int64*)((uint8*)TAIL$1 + 40);
				}
				label$87:;
				label$86:;
				OFFSET$1 = *(int64*)((uint8*)TAIL$1 + 48);
				ALLOC_FIELD$1 = 0;
			}
			label$84:;
		}
		label$81:;
		label$80:;
	}
	goto label$78;
	label$79:;
	{
		*(uint8*)((uint8*)PARENT$1 + 124) = (uint8)0u;
	}
	label$78:;
	if( ALLOC_FIELD$1 == 0 ) goto label$89;
	{
		int32 vr$34 = HCALCPADDING( OFFSET$1, (int32)*(uint8*)((uint8*)PARENT$1 + 125), DTYPE$1, SUBTYPE$1 );
		PAD$1 = vr$34;
		if( PAD$1 <= 0 ) goto label$91;
		{
			if( BITS$1 <= 0 ) goto label$93;
			{
				if( *(int32*)((uint8*)&ENV$ + 228) != 0 ) goto label$95;
				{
					if( BITS$1 > (PAD$1 << (3 & 31)) ) goto label$97;
					{
						LGT$1 = (int64)PAD$1;
						PAD$1 = 0;
						{
							if( LGT$1 != 1ll ) goto label$99;
							label$100:;
							{
								int32 TMP$102$8;
								if( (DTYPE$1 & 480) == 0 ) goto label$101;
								TMP$102$8 = 24;
								goto label$152;
								label$101:;
								TMP$102$8 = DTYPE$1 & 31;
								label$152:;
								if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$8 * 28)) + 8) == 0 ) goto label$103;
								{
									DTYPE$1 = 2;
								}
								goto label$102;
								label$103:;
								{
									DTYPE$1 = 3;
								}
								label$102:;
							}
							goto label$98;
							label$99:;
							if( LGT$1 != 2ll ) goto label$104;
							label$105:;
							{
								int32 TMP$103$8;
								if( (DTYPE$1 & 480) == 0 ) goto label$106;
								TMP$103$8 = 24;
								goto label$153;
								label$106:;
								TMP$103$8 = DTYPE$1 & 31;
								label$153:;
								if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$8 * 28)) + 8) == 0 ) goto label$108;
								{
									DTYPE$1 = 5;
								}
								goto label$107;
								label$108:;
								{
									DTYPE$1 = 6;
								}
								label$107:;
							}
							label$104:;
							label$98:;
						}
					}
					label$97:;
					label$96:;
				}
				label$95:;
				label$94:;
			}
			label$93:;
			label$92:;
		}
		label$91:;
		label$90:;
		int32 vr$43 = HCHECKUDTSIZE( (uint64)OFFSET$1, (uint64)LGT$1, (uint32)PAD$1 );
		if( vr$43 == 0 ) goto label$110;
		{
			OFFSET$1 = OFFSET$1 + (int64)PAD$1;
		}
		goto label$109;
		label$110:;
		{
			ALLOC_FIELD$1 = 0;
		}
		label$109:;
		int32 vr$46 = TYPECALCNATURALALIGN( DTYPE$1, SUBTYPE$1 );
		ELEN$1 = vr$46;
		if( ELEN$1 <= *(int32*)((uint8*)PARENT$1 + 104) ) goto label$112;
		{
			*(int32*)((uint8*)PARENT$1 + 104) = ELEN$1;
		}
		label$112:;
		label$111:;
	}
	label$89:;
	label$88:;
	BASE_PARENT$1 = PARENT$1;
	label$113:;
	if( (*(int32*)((uint8*)BASE_PARENT$1 + 120) & 2) == 0 ) goto label$114;
	{
		BASE_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)BASE_PARENT$1 + 100);
	}
	goto label$113;
	label$114:;
	ATTRIB$1 = ATTRIB$1 | (*(int32*)((uint8*)PARENT$1 + 4) & 128);
	OPTIONS$1 = 0;
	if( (ATTRIB$1 & 8192) != 0 ) goto label$116;
	{
		OPTIONS$1 = 32;
	}
	label$116:;
	label$115:;
	struct $8FBSYMBOL* vr$60 = SYMBNEWSYMBOL( OPTIONS$1, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)((uint8*)PARENT$1 + 56), (struct $8FBHASHTB*)((uint8*)BASE_PARENT$1 + 68), 12, (uint8*)ID$1, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0 );
	SYM$1 = vr$60;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$118;
	{
		goto label$73;
	}
	label$118:;
	label$117:;
	*(int64*)((uint8*)SYM$1 + 40) = LGT$1;
	*(int64*)((uint8*)SYM$1 + 48) = OFFSET$1;
	SYMBVARINITFIELDS( SYM$1 );
	SYMBVARINITARRAYDIMENSIONS( SYM$1, DIMENSIONS$1, DTB$1 );
	if( DESC$1 == (struct $8FBSYMBOL*)0u ) goto label$120;
	{
		*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88) = DESC$1;
		*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92) = *(struct $8FBSYMBOL**)((uint8*)DESC$1 + 32);
		*(struct $8FBSYMBOL**)((uint8*)DESC$1 + 96) = SYM$1;
		struct $7ASTNODE* vr$67 = ASTBUILDARRAYDESCINITREE( DESC$1, SYM$1, (struct $7ASTNODE*)0u );
		*(struct $7ASTNODE**)((uint8*)DESC$1 + 56) = vr$67;
	}
	label$120:;
	label$119:;
	*(int32*)((uint8*)SYM$1 + 112) = (int32)*(uint8*)((uint8*)PARENT$1 + 124);
	*(int32*)((uint8*)SYM$1 + 116) = BITS$1;
	if( (ATTRIB$1 & 4) == 0 ) goto label$122;
	{
		if( (*(int32*)((uint8*)PARENT$1 + 120) & 3) == 0 ) goto label$124;
		{
			ERRREPORT( 162, 0, (uint8*)0u );
		}
		goto label$123;
		label$124:;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 8;
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 16;
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 4;
		}
		label$123:;
	}
	goto label$121;
	label$122:;
	{
		{
			int32 TMP$104$3;
			TMP$104$3 = DTYPE$1 & 511;
			if( TMP$104$3 != 17 ) goto label$126;
			label$127:;
			{
				if( (*(int32*)((uint8*)PARENT$1 + 120) & 3) == 0 ) goto label$129;
				{
					ERRREPORT( 161, 0, (uint8*)0u );
				}
				goto label$128;
				label$129:;
				{
					*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 8;
					*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 16;
					*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 4;
				}
				label$128:;
			}
			goto label$125;
			label$126:;
			if( TMP$104$3 != 20 ) goto label$130;
			label$131:;
			{
				if( (*(int32*)((uint8*)SUBTYPE$1 + 120) & 4) == 0 ) goto label$133;
				{
					*(int32*)((uint8*)BASE_PARENT$1 + 120) = *(int32*)((uint8*)BASE_PARENT$1 + 120) | 4;
				}
				label$133:;
				label$132:;
				struct $8FBSYMBOL* vr$102 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
				if( vr$102 == (struct $8FBSYMBOL*)0u ) goto label$135;
				{
					if( (*(int32*)((uint8*)PARENT$1 + 120) & 3) == 0 ) goto label$137;
					{
						ERRREPORT( 163, 0, (uint8*)0u );
					}
					goto label$136;
					label$137:;
					{
						*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 8;
					}
					label$136:;
				}
				label$135:;
				label$134:;
				struct $8FBSYMBOL* vr$108 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
				if( vr$108 == (struct $8FBSYMBOL*)0u ) goto label$139;
				{
					if( (*(int32*)((uint8*)PARENT$1 + 120) & 3) == 0 ) goto label$141;
					{
						ERRREPORT( 164, 0, (uint8*)0u );
					}
					goto label$140;
					label$141:;
					{
						*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 16;
					}
					label$140:;
				}
				label$139:;
				label$138:;
			}
			label$130:;
			label$125:;
		}
	}
	label$121:;
	if( (DTYPE$1 & 480) == 0 ) goto label$143;
	{
		*(int32*)((uint8*)BASE_PARENT$1 + 120) = *(int32*)((uint8*)BASE_PARENT$1 + 120) | 4;
	}
	label$143:;
	label$142:;
	int64 REALSIZE$1;
	int64 vr$118 = SYMBGETREALSIZE( SYM$1 );
	REALSIZE$1 = vr$118;
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 1) == 0 ) goto label$145;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 16777216;
		if( ALLOC_FIELD$1 == 0 ) goto label$147;
		{
			if( *(int64*)((uint8*)PARENT$1 + 40) >= REALSIZE$1 ) goto label$149;
			{
				*(int64*)((uint8*)PARENT$1 + 40) = REALSIZE$1;
			}
			label$149:;
			label$148:;
		}
		label$147:;
		label$146:;
	}
	goto label$144;
	label$145:;
	{
		if( ALLOC_FIELD$1 == 0 ) goto label$151;
		{
			OFFSET$1 = OFFSET$1 + REALSIZE$1;
			*(int64*)((uint8*)PARENT$1 + 48) = OFFSET$1;
			*(int64*)((uint8*)PARENT$1 + 40) = OFFSET$1;
		}
		label$151:;
		label$150:;
		*(uint8*)((uint8*)PARENT$1 + 124) = (uint8)((int32)*(uint8*)((uint8*)PARENT$1 + 124) + BITS$1);
	}
	label$144:;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 168) = PARENT$1;
	fb$result$1 = SYM$1;
	label$73:;
	return fb$result$1;
}

void SYMBINSERTINNERUDT( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* INNER$1 )
{
	label$154:;
	struct $8FBSYMBOL* FLD$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	int32 PAD$1;
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 1) != 0 ) goto label$157;
	{
		int32 vr$5 = HCALCPADDING( *(int64*)((uint8*)PARENT$1 + 48), (int32)*(uint8*)((uint8*)PARENT$1 + 125), 20, INNER$1 );
		PAD$1 = vr$5;
		int32 vr$7 = HCHECKUDTSIZE( *(uint64*)((uint8*)PARENT$1 + 48), 0ull, (uint32)PAD$1 );
		if( vr$7 == 0 ) goto label$159;
		{
			*(int64*)((uint8*)PARENT$1 + 48) = *(int64*)((uint8*)PARENT$1 + 48) + (int64)PAD$1;
		}
		label$159:;
		label$158:;
	}
	label$157:;
	label$156:;
	FLD$1 = *(struct $8FBSYMBOL**)((uint8*)INNER$1 + 60);
	if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$161;
	{
		goto label$155;
	}
	label$161:;
	label$160:;
	*(struct $8FBSYMBOL**)((uint8*)FLD$1 + 172) = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 64);
	if( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 64) != (struct $8FBSYMBOL*)0u ) goto label$163;
	{
		*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 60) = FLD$1;
	}
	goto label$162;
	label$163:;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 64) + 176) = FLD$1;
	}
	label$162:;
	SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)PARENT$1 + 56);
	label$164:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$165;
	{
		*(struct $10FBSYMBOLTB**)((uint8*)FLD$1 + 164) = SYMTB$1;
		if( (*(int32*)((uint8*)PARENT$1 + 120) & 1) == 0 ) goto label$167;
		{
			*($12FB_SYMBSTATS*)((uint8*)FLD$1 + 12) = *(int32*)((uint8*)FLD$1 + 12) | 16777216;
		}
		goto label$166;
		label$167:;
		{
			*(int64*)((uint8*)FLD$1 + 48) = *(int64*)((uint8*)FLD$1 + 48) + *(int64*)((uint8*)PARENT$1 + 48);
		}
		label$166:;
		FLD$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 176);
	}
	goto label$164;
	label$165:;
	*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 64) = *(struct $8FBSYMBOL**)((uint8*)INNER$1 + 64);
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 1) != 0 ) goto label$169;
	{
		*(int64*)((uint8*)PARENT$1 + 48) = *(int64*)((uint8*)PARENT$1 + 48) + *(int64*)((uint8*)INNER$1 + 40);
		*(int64*)((uint8*)PARENT$1 + 40) = *(int64*)((uint8*)PARENT$1 + 48);
	}
	goto label$168;
	label$169:;
	{
		*(int64*)((uint8*)PARENT$1 + 48) = 0ll;
		if( *(int64*)((uint8*)INNER$1 + 40) <= *(int64*)((uint8*)PARENT$1 + 40) ) goto label$171;
		{
			*(int64*)((uint8*)PARENT$1 + 40) = *(int64*)((uint8*)INNER$1 + 40);
		}
		label$171:;
		label$170:;
	}
	label$168:;
	if( *(int32*)((uint8*)INNER$1 + 104) <= *(int32*)((uint8*)PARENT$1 + 104) ) goto label$173;
	{
		*(int32*)((uint8*)PARENT$1 + 104) = *(int32*)((uint8*)INNER$1 + 104);
	}
	label$173:;
	label$172:;
	*(uint8*)((uint8*)PARENT$1 + 124) = (uint8)0u;
	*(struct $8FBSYMBOL**)((uint8*)INNER$1 + 60) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)INNER$1 + 64) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)INNER$1 + 168) = PARENT$1;
	if( (*(int32*)((uint8*)INNER$1 + 120) & 32768) == 0 ) goto label$175;
	{
		*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 32768;
	}
	label$175:;
	label$174:;
	label$155:;
}

int32 HGETMAGICSTRUCTNUMBER( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$194:;
	int32 PART1$1;
	PART1$1 = 2;
	int32 PART2$1;
	PART2$1 = 0;
	int32 RANGE$1;
	RANGE$1 = 1;
	STRUCT_ANALYZE( SYM$1, &PART1$1, &PART2$1, &RANGE$1 );
	fb$result$1 = PART1$1 + PART2$1;
	goto label$195;
	label$195:;
	return fb$result$1;
}

void SYMBSTRUCTEND( struct $8FBSYMBOL* SYM$1, int32 ISNESTED$1 )
{
	label$265:;
	struct $18SYMBDEFAULTMEMBERS DEFAULTMEMBERS$1;
	int32 PAD$1;
	$11FB_FUNCMODE MODE$1;
	if( ISNESTED$1 == 0 ) goto label$268;
	{
		SYMBNESTEND( 0 );
	}
	label$268:;
	label$267:;
	*(int64*)((uint8*)SYM$1 + 112) = *(int64*)((uint8*)SYM$1 + 40);
	int32 vr$5 = HCALCPADDING( *(int64*)((uint8*)SYM$1 + 40), (int32)*(uint8*)((uint8*)SYM$1 + 125), 20, SYM$1 );
	PAD$1 = vr$5;
	int32 vr$7 = HCHECKUDTSIZE( *(uint64*)((uint8*)SYM$1 + 40), 0ull, (uint32)PAD$1 );
	if( vr$7 == 0 ) goto label$270;
	{
		*(int64*)((uint8*)SYM$1 + 40) = *(int64*)((uint8*)SYM$1 + 40) + (int64)PAD$1;
	}
	label$270:;
	label$269:;
	MODE$1 = 3;
	if( *(int32*)((uint8*)&PARSER$ + 104) != 4 ) goto label$272;
	{
		if( *(int32*)((uint8*)&ENV$ + 108) != 0 ) goto label$274;
		{
			int32 vr$12 = FBIS64BIT(  );
			if( vr$12 != 0 ) goto label$276;
			{
				if( *(int32*)((uint8*)&ENV$ + 212) != 0 ) goto label$278;
				{
					MODE$1 = 5;
				}
				label$278:;
				label$277:;
			}
			label$276:;
			label$275:;
		}
		label$274:;
		label$273:;
	}
	label$272:;
	label$271:;
	SYMBUDTDECLAREDEFAULTMEMBERS( &DEFAULTMEMBERS$1, SYM$1, MODE$1 );
	*($15FB_STRUCT_INREG*)((uint8*)SYM$1 + 132) = 0;
	int32 vr$15 = HGETRETURNTYPE( SYM$1 );
	*($11FB_DATATYPE*)((uint8*)SYM$1 + 128) = vr$15;
	SYMBUDTIMPLEMENTDEFAULTMEMBERS( &DEFAULTMEMBERS$1, SYM$1 );
	if( *(int32*)((uint8*)&SYMB$ + 98692) <= 0 ) goto label$280;
	{
		SYMBCHECKFWDREF( SYM$1 );
	}
	label$280:;
	label$279:;
	label$266:;
}

void SYMBDELSTRUCT( struct $8FBSYMBOL* S$1 )
{
	label$281:;
	SYMBDELNAMESPACEMEMBERS( S$1, -((*(int32*)((uint8*)S$1 + 120) & 2) == 0) );
	if( *(struct $12FB_STRUCTEXT**)((uint8*)S$1 + 140) == (struct $12FB_STRUCTEXT*)0u ) goto label$284;
	{
		free( *(void**)((uint8*)S$1 + 140) );
		*(struct $12FB_STRUCTEXT**)((uint8*)S$1 + 140) = (struct $12FB_STRUCTEXT*)0u;
	}
	label$284:;
	label$283:;
	SYMBFREESYMBOL( S$1 );
	label$282:;
}

struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* PARENT$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$291:;
	struct $8FBSYMBOL* vr$2 = HSKIPTOFIELD( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 60) );
	fb$result$1 = vr$2;
	label$292:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$293:;
	struct $8FBSYMBOL* vr$2 = HSKIPTOFIELD( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176) );
	fb$result$1 = vr$2;
	label$294:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBUDTGETNEXTINITABLEFIELD( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$303:;
	struct $8FBSYMBOL* ORIGINAL$1;
	struct $8FBSYMBOL* PARENT$1;
	ORIGINAL$1 = SYM$1;
	label$305:;
	{
		struct $8FBSYMBOL* vr$1 = SYMBUDTGETNEXTFIELD( SYM$1 );
		SYM$1 = vr$1;
		if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$309;
		{
			goto label$306;
		}
		label$309:;
		label$308:;
		struct $8FBSYMBOL* vr$2 = HFINDCOMMONPARENT( ORIGINAL$1, SYM$1 );
		PARENT$1 = vr$2;
		if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$311;
		{
			goto label$306;
		}
		label$311:;
		label$310:;
		if( (*(int32*)((uint8*)PARENT$1 + 120) & 1) != 0 ) goto label$313;
		{
			goto label$306;
		}
		label$313:;
		label$312:;
	}
	label$307:;
	goto label$305;
	label$306:;
	fb$result$1 = SYM$1;
	label$304:;
	return fb$result$1;
}

int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL* S$1, struct $8FBSYMBOL* BASESYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$314:;
	if( (-(S$1 == (struct $8FBSYMBOL*)0u) | -(BASESYM$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$317;
	{
		fb$result$1 = 0;
		goto label$315;
	}
	label$317:;
	label$316:;
	int32 LEVEL$1;
	LEVEL$1 = 1;
	label$318:;
	if( *(struct $8FBSYMBOL**)((uint8*)S$1 + 96) == (struct $8FBSYMBOL*)0u ) goto label$319;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)S$1 + 96) + 32) != BASESYM$1 ) goto label$321;
		{
			fb$result$1 = LEVEL$1;
			goto label$315;
		}
		label$321:;
		label$320:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)S$1 + 96) + 32);
		LEVEL$1 = LEVEL$1 + 1;
	}
	goto label$318;
	label$319:;
	fb$result$1 = 0;
	goto label$315;
	label$315:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBCLONESIMPLESTRUCT( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$322:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$109$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* FLD$1;
	uint8* vr$2 = SYMBUNIQUELABEL(  );
	struct $8FBSYMBOL* vr$3 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, (struct $8FBSYMBOL*)0u, (uint8*)vr$2, (uint8*)*(uint8**)((uint8*)SYM$1 + 20), 0, 0, 0, 0, 0 );
	S$1 = vr$3;
	struct $8FBSYMBOL* vr$4 = SYMBUDTGETFIRSTFIELD( SYM$1 );
	FLD$1 = vr$4;
	label$324:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$325;
	{
		SYMBADDFIELD( S$1, *(uint8**)((uint8*)FLD$1 + 16), 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$109$1, *(int32*)((uint8*)FLD$1 + 28), *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32), 0ll, 0, 0 );
		struct $8FBSYMBOL* vr$8 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$8;
	}
	goto label$324;
	label$325:;
	SYMBSTRUCTEND( S$1, 0 );
	fb$result$1 = S$1;
	label$323:;
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

static int32 HCALCPADDING( int64 OFS$1, int32 ALIGN$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$51:;
	int32 NATALIGN$1;
	int32 vr$1 = TYPECALCNATURALALIGN( DTYPE$1, SUBTYPE$1 );
	NATALIGN$1 = vr$1;
	if( ALIGN$1 != 0 ) goto label$54;
	{
		ALIGN$1 = NATALIGN$1;
	}
	goto label$53;
	label$54:;
	{
		if( ALIGN$1 <= NATALIGN$1 ) goto label$56;
		{
			ALIGN$1 = NATALIGN$1;
		}
		label$56:;
		label$55:;
	}
	label$53:;
	fb$result$1 = (int32)(((int64)ALIGN$1 - (OFS$1 & (int64)(ALIGN$1 + -1))) & (int64)(ALIGN$1 + -1));
	label$52:;
	return fb$result$1;
}

static int32 HCHECKUDTSIZE( uint64 UDTLEN$1, uint64 FIELDLEN$1, uint32 FIELDPAD$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$57:;
	uint64 N$1;
	N$1 = UDTLEN$1;
	N$1 = N$1 + FIELDLEN$1;
	N$1 = N$1 + (uint64)FIELDPAD$1;
	if( N$1 <= 2147483647ull ) goto label$60;
	{
		fb$result$1 = 0;
		ERRREPORT( 51, 0, (uint8*)0u );
	}
	goto label$59;
	label$60:;
	{
		fb$result$1 = -1;
	}
	label$59:;
	label$58:;
	return fb$result$1;
}

static void STRUCT_ANALYZE( struct $8FBSYMBOL* FLD$1, int32* PART1$1, int32* PART2$1, int32* RANGE$1 )
{
	label$176:;
	int32 LGT$1;
	LGT$1 = (int32)*(int64*)((uint8*)FLD$1 + 40);
	struct $8FBSYMBOL* vr$2 = SYMBUDTGETFIRSTFIELD( FLD$1 );
	FLD$1 = vr$2;
	label$178:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$179;
	{
		int32 TMP$105$2;
		int32 TMP$106$2;
		if( (-(*RANGE$1 == 1) & -(*(int64*)((uint8*)FLD$1 + 48) > 7ll)) == 0 ) goto label$181;
		{
			*RANGE$1 = 2;
			*PART2$1 = 8;
		}
		label$181:;
		label$180:;
		if( (*(int32*)((uint8*)FLD$1 + 28) & 480) == 0 ) goto label$182;
		TMP$105$2 = 24;
		goto label$326;
		label$182:;
		TMP$105$2 = *(int32*)((uint8*)FLD$1 + 28) & 31;
		label$326:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$2 * 28)) != 3 ) goto label$184;
		{
			STRUCT_ANALYZE( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32), PART1$1, PART2$1, RANGE$1 );
		}
		goto label$183;
		label$184:;
		if( (*(int32*)((uint8*)FLD$1 + 28) & 480) == 0 ) goto label$186;
		TMP$106$2 = 24;
		goto label$327;
		label$186:;
		TMP$106$2 = *(int32*)((uint8*)FLD$1 + 28) & 31;
		label$327:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$106$2 * 28)) != 0 ) goto label$185;
		{
			if( *RANGE$1 != 1 ) goto label$188;
			{
				*PART1$1 = 1;
			}
			goto label$187;
			label$188:;
			{
				*PART2$1 = 4;
			}
			label$187:;
		}
		label$185:;
		label$183:;
		struct $8FBSYMBOL* vr$24 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$24;
	}
	goto label$178;
	label$179:;
	if( LGT$1 <= 8 ) goto label$190;
	{
		if( (*PART1$1 + *PART2$1) != 1 ) goto label$192;
		{
			*PART1$1 = 5;
		}
		goto label$191;
		label$192:;
		if( (*PART1$1 + *PART2$1) != 2 ) goto label$193;
		{
			*PART1$1 = 10;
		}
		label$193:;
		label$191:;
	}
	label$190:;
	label$189:;
	label$177:;
}

static int32 HGETRETURNTYPEGAS64SYSTEMV( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$196:;
	if( *(int64*)((uint8*)SYM$1 + 40) > (int64)(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368) << (1 & 31)) ) goto label$199;
	{
		{
			uint32 TMP$107$3;
			int32 vr$4 = HGETMAGICSTRUCTNUMBER( SYM$1 );
			TMP$107$3 = (uint32)vr$4;
			goto label$201;
			label$202:;
			{
				fb$result$1 = 13;
				goto label$197;
			}
			goto label$200;
			label$203:;
			{
				fb$result$1 = 16;
				goto label$197;
			}
			goto label$200;
			label$204:;
			{
				*($15FB_STRUCT_INREG*)((uint8*)SYM$1 + 132) = 2;
				fb$result$1 = 20;
				goto label$197;
			}
			goto label$200;
			label$205:;
			{
				*($15FB_STRUCT_INREG*)((uint8*)SYM$1 + 132) = 3;
				fb$result$1 = 20;
				goto label$197;
			}
			goto label$200;
			label$206:;
			{
				*($15FB_STRUCT_INREG*)((uint8*)SYM$1 + 132) = 5;
				fb$result$1 = 20;
				goto label$197;
			}
			goto label$200;
			label$207:;
			{
				*($15FB_STRUCT_INREG*)((uint8*)SYM$1 + 132) = 6;
				fb$result$1 = 20;
				goto label$197;
			}
			goto label$200;
			label$208:;
			{
				fb$result$1 = 20;
				goto label$197;
			}
			goto label$200;
			label$201:;
			static const void* tmp$110[10] = {
				&&label$202,
				&&label$203,
				&&label$208,
				&&label$208,
				&&label$204,
				&&label$206,
				&&label$208,
				&&label$208,
				&&label$205,
				&&label$207,
			};
			if( (TMP$107$3 - 1u) > 9u ) goto label$208;
			goto *tmp$110[TMP$107$3 - 1u];
			label$200:;
		}
	}
	label$199:;
	label$198:;
	fb$result$1 = 52;
	goto label$197;
	label$197:;
	return fb$result$1;
}

static int32 HGETRETURNTYPE( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$209:;
	struct $8FBSYMBOL* FLD$1;
	int32 RES$1;
	int32 UNPADLEN$1;
	int64 UNPADLEN64$1;
	int32 vr$1 = SYMBCOMPISTRIVIAL( SYM$1 );
	if( vr$1 != 0 ) goto label$212;
	{
		fb$result$1 = 52;
		goto label$210;
	}
	label$212:;
	label$211:;
	if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$214;
	{
		fb$result$1 = 20;
		goto label$210;
	}
	label$214:;
	label$213:;
	int32 vr$2 = FBIS64BIT(  );
	if( vr$2 == 0 ) goto label$216;
	{
		if( *(int32*)((uint8*)&ENV$ + 104) != 3 ) goto label$218;
		{
			if( (-(*(int32*)((uint8*)&ENV$ + 108) == 2) | -(*(int32*)((uint8*)&ENV$ + 108) == 5)) == 0 ) goto label$220;
			{
				int32 vr$6 = HGETRETURNTYPEGAS64SYSTEMV( SYM$1 );
				fb$result$1 = vr$6;
				goto label$210;
			}
			label$220:;
			label$219:;
		}
		label$218:;
		label$217:;
	}
	label$216:;
	label$215:;
	if( (*(int32*)((uint8*)&ENV$ + 284) & 16) != 0 ) goto label$222;
	{
		fb$result$1 = 52;
		goto label$210;
	}
	label$222:;
	label$221:;
	RES$1 = 0;
	UNPADLEN64$1 = *(int64*)((uint8*)SYM$1 + 112);
	UNPADLEN$1 = (int32)UNPADLEN64$1;
	if( (int64)UNPADLEN$1 == UNPADLEN64$1 ) goto label$224;
	{
		fb$result$1 = 20;
		goto label$210;
	}
	label$224:;
	label$223:;
	{
		uint32 TMP$108$2;
		TMP$108$2 = (uint32)UNPADLEN$1;
		goto label$226;
		label$227:;
		{
			RES$1 = 2;
		}
		goto label$225;
		label$228:;
		{
			RES$1 = 5;
		}
		goto label$225;
		label$229:;
		{
			struct $8FBSYMBOL* vr$11 = SYMBUDTGETFIRSTFIELD( SYM$1 );
			FLD$1 = vr$11;
			if( *(int64*)((uint8*)FLD$1 + 40) != 2ll ) goto label$231;
			{
				if( *(int64*)((uint8*)SYM$1 + 40) < 4ll ) goto label$233;
				{
					RES$1 = 11;
				}
				label$233:;
				label$232:;
			}
			label$231:;
			label$230:;
		}
		goto label$225;
		label$234:;
		{
			label$235:;
			{
				struct $8FBSYMBOL* vr$14 = SYMBUDTGETFIRSTFIELD( SYM$1 );
				FLD$1 = vr$14;
				struct $8FBSYMBOL* vr$15 = SYMBUDTGETNEXTFIELD( FLD$1 );
				if( vr$15 == (struct $8FBSYMBOL*)0u ) goto label$239;
				{
					goto label$236;
				}
				label$239:;
				label$238:;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 511) != 15 ) goto label$241;
				{
					RES$1 = 15;
				}
				label$241:;
				label$240:;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 511) == 20 ) goto label$243;
				{
					goto label$236;
				}
				label$243:;
				label$242:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32);
			}
			label$237:;
			goto label$235;
			label$236:;
			if( RES$1 != 0 ) goto label$245;
			{
				RES$1 = 11;
			}
			label$245:;
			label$244:;
		}
		goto label$225;
		label$246:;
		{
			struct $8FBSYMBOL* vr$21 = SYMBUDTGETFIRSTFIELD( SYM$1 );
			FLD$1 = vr$21;
			if( *(int64*)((uint8*)FLD$1 + 40) > 4ll ) goto label$248;
			{
				if( *(int64*)((uint8*)SYM$1 + 40) < 8ll ) goto label$250;
				{
					RES$1 = 13;
				}
				label$250:;
				label$249:;
			}
			label$248:;
			label$247:;
		}
		goto label$225;
		label$251:;
		{
			label$252:;
			{
				struct $8FBSYMBOL* vr$24 = SYMBUDTGETFIRSTFIELD( SYM$1 );
				FLD$1 = vr$24;
				struct $8FBSYMBOL* vr$25 = SYMBUDTGETNEXTFIELD( FLD$1 );
				if( vr$25 == (struct $8FBSYMBOL*)0u ) goto label$256;
				{
					goto label$253;
				}
				label$256:;
				label$255:;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 511) != 16 ) goto label$258;
				{
					RES$1 = 16;
				}
				label$258:;
				label$257:;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 511) == 20 ) goto label$260;
				{
					goto label$253;
				}
				label$260:;
				label$259:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32);
			}
			label$254:;
			goto label$252;
			label$253:;
			if( RES$1 != 0 ) goto label$262;
			{
				RES$1 = 13;
			}
			label$262:;
			label$261:;
		}
		goto label$225;
		label$226:;
		static const void* tmp$111[8] = {
			&&label$227,
			&&label$228,
			&&label$229,
			&&label$234,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$251,
		};
		if( (TMP$108$2 - 1u) > 7u ) goto label$225;
		goto *tmp$111[TMP$108$2 - 1u];
		label$225:;
	}
	if( RES$1 != 0 ) goto label$264;
	{
		RES$1 = 52;
	}
	label$264:;
	label$263:;
	fb$result$1 = RES$1;
	label$210:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HSKIPTOFIELD( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$285:;
	label$287:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$288;
	{
		if( *(int32*)SYM$1 != 12 ) goto label$290;
		{
			goto label$288;
		}
		label$290:;
		label$289:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$287;
	label$288:;
	fb$result$1 = SYM$1;
	label$286:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HFINDCOMMONPARENT( struct $8FBSYMBOL* A$1, struct $8FBSYMBOL* B$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$295:;
	struct $8FBSYMBOL* ORIGINALB$1;
	ORIGINALB$1 = B$1;
	label$297:;
	if( A$1 == (struct $8FBSYMBOL*)0u ) goto label$298;
	{
		B$1 = ORIGINALB$1;
		label$299:;
		if( B$1 == (struct $8FBSYMBOL*)0u ) goto label$300;
		{
			if( A$1 != B$1 ) goto label$302;
			{
				fb$result$1 = A$1;
				goto label$296;
			}
			label$302:;
			label$301:;
			B$1 = *(struct $8FBSYMBOL**)((uint8*)B$1 + 168);
		}
		goto label$299;
		label$300:;
		A$1 = *(struct $8FBSYMBOL**)((uint8*)A$1 + 168);
	}
	goto label$297;
	label$298:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	label$296:;
	return fb$result$1;
}
