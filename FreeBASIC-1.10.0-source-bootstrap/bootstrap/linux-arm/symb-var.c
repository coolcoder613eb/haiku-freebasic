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
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
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
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
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
typedef int32 $10FB_SYMBOPT;
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_IntToStr( int32 );
static void fb_ctor__symbzvar( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $7ASTNODE* ASTBUILDARRAYDESCINITREE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int32, int32, struct $8FBSYMBOL* );
void SYMBVARINITFIELDS( struct $8FBSYMBOL* );
void SYMBVARINITARRAYDIMENSIONS( struct $8FBSYMBOL*, int32, struct $7FBARRAYI10FBARRAYDIME* );
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int32, struct $8FBSYMBOL*, int64, int32, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESC( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int32, int32, int32, $13FB_SYMBATTRIB, int32 );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int32, struct $7FBARRAYI10FBARRAYDIME*, int32, struct $8FBSYMBOL*, int64, int32, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int32 );
struct $8FBSYMBOL* SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( uint8*, struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB*, struct $8FBSYMBOL**, struct $10FBSYMBOLTB**, struct $8FBHASHTB** );
void _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( int32, struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBARRAYHASUNKNOWNBOUNDS( struct $8FBSYMBOL* );
void SYMBSETARRAYDIMTB( struct $8FBSYMBOL*, int32, struct $7FBARRAYI10FBARRAYDIME* );
void SYMBMAYBEADDARRAYDESC( struct $8FBSYMBOL* );
void SYMBDELSYMBOL( struct $8FBSYMBOL*, int32 );
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int64 SYMBCALCARRAYELEMENTS( struct $8FBSYMBOL*, int32 );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
int32 SYMBHASDTOR( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
void SYMBMANGLERESETABBREV( void );
uint8* HMANGLEBUILTINTYPE( int32, int32* );
typedef int32 $12FB_MANGLEOPT;
void SYMBMANGLETYPE( FBSTRING*, int32, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
int32 SYMBISPARENTNAMESPACE( $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
static void SYMBDROPARRAYDIMS( struct $8FBSYMBOL* );
static void SYMBRECALCARRAYDIFF( struct $8FBSYMBOL* );
static void SYMBRECALCARRAYDIFFANDELEMENTS( struct $8FBSYMBOL* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
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
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int32 );
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

void SYMBVARINIT( void )
{
	label$10:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$92$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* vr$0 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, (struct $8FBSYMBOL*)0u, (uint8*)"__FB_ARRAYDIMTB$", (uint8*)0u, 0, 0, 0, 0, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628) = vr$0;
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628), (uint8*)"elements", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628), (uint8*)"lbound", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628), (uint8*)"ubound", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBSTRUCTEND( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628), 0 );
	*(int32*)((uint8*)&SYMB$ + 99612) = 0;
	*(int32*)((uint8*)&SYMB$ + 99616) = *(int32*)((uint8*)&ENV$ + 296);
	*(int32*)((uint8*)&SYMB$ + 99620) = *(int32*)((uint8*)&ENV$ + 296) << (1 & 31);
	*(int32*)((uint8*)&SYMB$ + 99624) = *(int32*)((uint8*)&ENV$ + 296) * 6;
	*(int32*)((uint8*)&SYMB$ + 99632) = *(int32*)((uint8*)&ENV$ + 296);
	*(int32*)((uint8*)&SYMB$ + 99636) = *(int32*)((uint8*)&ENV$ + 296) << (1 & 31);
	label$11:;
}

void SYMBVAREND( void )
{
	label$12:;
	label$13:;
}

void SYMBGETDESCTYPEARRAYDTYPE( struct $8FBSYMBOL* DESCTYPE$1, int32* ARRAYDTYPE$1, struct $8FBSYMBOL** ARRAYSUBTYPE$1 )
{
	label$14:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* vr$0 = SYMBUDTGETFIRSTFIELD( DESCTYPE$1 );
	FLD$1 = vr$0;
	*ARRAYDTYPE$1 = (((*(int32*)((uint8*)FLD$1 + 28) & 31) | ((*(int32*)((uint8*)FLD$1 + 28) & 480) + -32)) | (((*(int32*)((uint8*)FLD$1 + 28) & 261632) >> (1 & 31)) & 261632)) | (*(int32*)((uint8*)FLD$1 + 28) & 32505856);
	*ARRAYSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32);
	label$15:;
}

int32 SYMBGETDESCTYPEDIMENSIONS( struct $8FBSYMBOL* DESCTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	int32 DIMTBSIZE$1;
	int32 DIMENSIONS$1;
	int32 vr$2 = fb_StrCompare( *(void**)((uint8*)DESCTYPE$1 + 20), 0, (void*)"FBARRAY", 8 );
	if( vr$2 != 0 ) goto label$19;
	{
		fb$result$1 = -1;
		goto label$17;
	}
	label$19:;
	label$18:;
	DIMTBSIZE$1 = (int32)(*(int64*)((uint8*)DESCTYPE$1 + 40) - (int64)(*(int32*)((uint8*)&ENV$ + 296) * 6));
	DIMENSIONS$1 = DIMTBSIZE$1 / (*(int32*)((uint8*)&ENV$ + 296) * 3);
	fb$result$1 = DIMENSIONS$1;
	label$17:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int32 DIMENSIONS$1, int32 ARRAYDTYPE$1, struct $8FBSYMBOL* ARRAYSUBTYPE$1 )
{
	struct $8FBSYMBOL* TMP$102$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$98$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	FBSTRING ID$1;
	__builtin_memset( &ID$1, 0, 12 );
	FBSTRING ALIASID$1;
	__builtin_memset( &ALIASID$1, 0, 12 );
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	int32 ATTRIB$1;
	int32 PATTRIB$1;
	if( (ARRAYDTYPE$1 & 511) != 18 ) goto label$23;
	{
		ARRAYDTYPE$1 = (ARRAYDTYPE$1 & -512) | 4;
	}
	label$23:;
	label$22:;
	fb_StrAssign( (void*)&ALIASID$1, -1, (void*)"FBARRAY", 8, 0 );
	if( DIMENSIONS$1 <= 0 ) goto label$25;
	{
		FBSTRING* vr$7 = fb_IntToStr( DIMENSIONS$1 );
		fb_StrConcatAssign( (void*)&ALIASID$1, -1, (void*)vr$7, -1, 0 );
	}
	label$25:;
	label$24:;
	fb_StrAssign( (void*)&ID$1, -1, (void*)"$", 2, 0 );
	fb_StrConcatAssign( (void*)&ID$1, -1, (void*)&ALIASID$1, -1, 0 );
	fb_StrConcatAssign( (void*)&ID$1, -1, (void*)"<", 2, 0 );
	SYMBMANGLETYPE( &ID$1, ARRAYDTYPE$1, ARRAYSUBTYPE$1, 1 );
	SYMBMANGLERESETABBREV(  );
	fb_StrConcatAssign( (void*)&ID$1, -1, (void*)">", 2, 0 );
	ATTRIB$1 = 0;
	PATTRIB$1 = 0;
	TMP$102$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$20 = SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( (uint8*)*(uint8**)&ID$1, (struct $8FBSYMBOL*)0u, ($13FB_SYMBATTRIB*)&ATTRIB$1, ($13FB_PROCATTRIB*)&PATTRIB$1, &TMP$102$1, &SYMTB$1, &HASHTB$1 );
	SYM$1 = vr$20;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$27;
	{
		fb$result$1 = SYM$1;
		fb_StrDelete( (FBSTRING*)&ALIASID$1 );
		fb_StrDelete( (FBSTRING*)&ID$1 );
		goto label$21;
	}
	label$27:;
	label$26:;
	ATTRIB$1 = ATTRIB$1 | 8192;
	struct $8FBSYMBOL* vr$24 = SYMBSTRUCTBEGIN( SYMTB$1, HASHTB$1, (struct $8FBSYMBOL*)0u, (uint8*)*(uint8**)&ID$1, (uint8*)*(uint8**)&ALIASID$1, 0, 0, 0, ATTRIB$1, 1 );
	SYM$1 = vr$24;
	*(int64*)DTB$1 = 0ll;
	*(int64*)((int32)(struct $10FBARRAYDIM*)DTB$1 + 8) = 0ll;
	SYMBADDFIELD( SYM$1, (uint8*)"data", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, (((ARRAYDTYPE$1 & 31) | ((ARRAYDTYPE$1 & 480) + 32)) | ((ARRAYDTYPE$1 & 261632) << (1 & 31))) | (ARRAYDTYPE$1 & 32505856), ARRAYSUBTYPE$1, 0ll, 0, 0 );
	SYMBADDFIELD( SYM$1, (uint8*)"ptr", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, (((ARRAYDTYPE$1 & 31) | ((ARRAYDTYPE$1 & 480) + 32)) | ((ARRAYDTYPE$1 & 261632) << (1 & 31))) | (ARRAYDTYPE$1 & 32505856), ARRAYSUBTYPE$1, 0ll, 0, 0 );
	SYMBADDFIELD( SYM$1, (uint8*)"size", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBADDFIELD( SYM$1, (uint8*)"element_len", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBADDFIELD( SYM$1, (uint8*)"dimensions", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBADDFIELD( SYM$1, (uint8*)"flags", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	if( DIMENSIONS$1 != -1 ) goto label$29;
	{
		DIMENSIONS$1 = 8;
	}
	label$29:;
	label$28:;
	*(int64*)DTB$1 = 0ll;
	*(int64*)((int32)(struct $10FBARRAYDIM*)DTB$1 + 8) = (int64)(DIMENSIONS$1 + -1);
	SYMBADDFIELD( SYM$1, (uint8*)"dimTB", 1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 20, *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628), 0ll, 0, 0 );
	SYMBSTRUCTEND( SYM$1, 0 );
	fb$result$1 = SYM$1;
	fb_StrDelete( (FBSTRING*)&ALIASID$1 );
	fb_StrDelete( (FBSTRING*)&ID$1 );
	label$21:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDARRAYDESC( struct $8FBSYMBOL* ARRAY$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	static FBSTRING TEMPID$1;
	uint8* ID$1;
	uint8* ID_ALIAS$1;
	struct $8FBSYMBOL* DESC$1;
	struct $8FBSYMBOL* DESCTYPE$1;
	$13FB_SYMBATTRIB ATTRIB$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	int32 ISDYNAMIC$1;
	int32 ISPUBEXT$1;
	int32 STATS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	ID_ALIAS$1 = (uint8*)0u;
	STATS$1 = 0;
	if( *(int32*)ARRAY$1 != 12 ) goto label$33;
	{
		uint8* vr$2 = SYMBUNIQUEID( (boolean)0 );
		ID$1 = vr$2;
		if( (int32)*(int16*)((uint8*)ARRAY$1 + 38) == 0 ) goto label$35;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$35:;
		label$34:;
		ATTRIB$1 = 128;
		STATS$1 = 16;
	}
	goto label$32;
	label$33:;
	{
		ISDYNAMIC$1 = -((*(int32*)((uint8*)ARRAY$1 + 4) & 4) != 0);
		ISPUBEXT$1 = -((*(int32*)((uint8*)ARRAY$1 + 4) & 48) != 0);
		if( (-((*(int32*)((uint8*)ARRAY$1 + 4) & 8) != 0) | ISDYNAMIC$1) == 0 ) goto label$37;
		{
			ID$1 = *(uint8**)((uint8*)ARRAY$1 + 16);
			ID_ALIAS$1 = *(uint8**)((uint8*)ARRAY$1 + 20);
			STATS$1 = *(int32*)((uint8*)ARRAY$1 + 12) & 512;
			if( (*(int32*)((uint8*)ARRAY$1 + 4) & 1048576) == 0 ) goto label$39;
			{
				int32 TMP$110$4;
				FBSTRING TMP$111$4;
				fb_StrAssign( (void*)&TEMPID$1, -1, (void*)ID$1, 0, 0 );
				TMP$110$4 = 0;
				uint8* vr$24 = HMANGLEBUILTINTYPE( *(int32*)((uint8*)ARRAY$1 + 28) & 511, &TMP$110$4 );
				__builtin_memset( &TMP$111$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$111$4, (void*)&TEMPID$1, -1, (void*)vr$24, 0 );
				fb_StrAssign( (void*)&TEMPID$1, -1, (void*)vr$27, -1, 0 );
				if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$41;
				{
					fb_StrConcatAssign( (void*)&TEMPID$1, -1, (void*)"$", 2, 0 );
				}
				label$41:;
				label$40:;
				ID$1 = (uint8*)*(uint8**)&TEMPID$1;
			}
			label$39:;
			label$38:;
		}
		goto label$36;
		label$37:;
		{
			uint8* vr$28 = SYMBUNIQUEID( (boolean)0 );
			ID$1 = vr$28;
			if( (int32)*(int16*)((uint8*)ARRAY$1 + 38) == 0 ) goto label$43;
			{
				ID_ALIAS$1 = ID$1;
			}
			label$43:;
			label$42:;
			STATS$1 = 16;
		}
		label$36:;
		ATTRIB$1 = *(int32*)((uint8*)ARRAY$1 + 4) & 187;
		if( ISDYNAMIC$1 != 0 ) goto label$45;
		{
			if( (*(int32*)((uint8*)ARRAY$1 + 4) & 16) == 0 ) goto label$47;
			{
				ATTRIB$1 = ATTRIB$1 & -17;
			}
			label$47:;
			label$46:;
			ATTRIB$1 = ATTRIB$1 & -33;
		}
		label$45:;
		label$44:;
	}
	label$32:;
	ATTRIB$1 = ATTRIB$1 | 8192;
	if( *(int32*)ARRAY$1 != 12 ) goto label$49;
	{
		if( *(uint32*)((uint8*)&PARSER$ + 100) != 0u ) goto label$51;
		{
			SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 56);
		}
		goto label$50;
		label$51:;
		{
			SYMTB$1 = (struct $10FBSYMBOLTB*)0u;
		}
		label$50:;
	}
	goto label$48;
	label$49:;
	{
		SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)ARRAY$1 + 164);
	}
	label$48:;
	struct $8FBSYMBOL* vr$45 = SYMBADDARRAYDESCRIPTORTYPE( *(int32*)((uint8*)ARRAY$1 + 64), *(int32*)((uint8*)ARRAY$1 + 28), *(struct $8FBSYMBOL**)((uint8*)ARRAY$1 + 32) );
	DESCTYPE$1 = vr$45;
	struct $8FBSYMBOL* vr$46 = SYMBNEWSYMBOL( 1, (struct $8FBSYMBOL*)0u, SYMTB$1, (struct $8FBHASHTB*)0u, 1, (uint8*)ID$1, (uint8*)ID_ALIAS$1, 20, DESCTYPE$1, ATTRIB$1, 0 );
	DESC$1 = vr$46;
	if( DESC$1 != (struct $8FBSYMBOL*)0u ) goto label$53;
	{
		goto label$31;
	}
	label$53:;
	label$52:;
	*(int64*)((uint8*)DESC$1 + 40) = *(int64*)((uint8*)DESCTYPE$1 + 40);
	*(int64*)((uint8*)DESC$1 + 48) = 0ll;
	*($12FB_SYMBSTATS*)((uint8*)DESC$1 + 12) = STATS$1 | (*(int32*)((uint8*)ARRAY$1 + 12) & 2);
	SYMBVARINITFIELDS( DESC$1 );
	*(struct $8FBSYMBOL**)((uint8*)DESC$1 + 96) = ARRAY$1;
	fb$result$1 = DESC$1;
	label$31:;
	return fb$result$1;
}

int32 SYMBARRAYHASUNKNOWNBOUNDS( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	fb$result$1 = 0;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$69;
	{
		goto label$67;
	}
	label$69:;
	label$68:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$113$2;
		TMP$113$2 = *(int32*)((uint8*)SYM$1 + 64) + -1;
		goto label$70;
		label$73:;
		{
			if( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$2 << (4 & 31))) + 8) != -9223372036854775808ull ) goto label$75;
			{
				fb$result$1 = -1;
				goto label$67;
			}
			label$75:;
			label$74:;
		}
		label$71:;
		I$2 = I$2 + 1;
		label$70:;
		if( I$2 <= TMP$113$2 ) goto label$73;
		label$72:;
	}
	label$67:;
	return fb$result$1;
}

void SYMBMAYBEADDARRAYDESC( struct $8FBSYMBOL* SYM$1 )
{
	label$76:;
	if( *(int32*)((uint8*)SYM$1 + 64) != 0 ) goto label$79;
	{
		goto label$77;
	}
	label$79:;
	label$78:;
	int32 vr$1 = SYMBARRAYHASUNKNOWNBOUNDS( SYM$1 );
	if( vr$1 == 0 ) goto label$81;
	{
		goto label$77;
	}
	label$81:;
	label$80:;
	if( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88) != (struct $8FBSYMBOL*)0u ) goto label$83;
	{
		struct $8FBSYMBOL* vr$3 = SYMBADDARRAYDESC( SYM$1 );
		*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88) = vr$3;
		*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88) + 32);
		struct $7ASTNODE* vr$9 = ASTBUILDARRAYDESCINITREE( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88), SYM$1, (struct $7ASTNODE*)0u );
		*(struct $7ASTNODE**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88) + 56) = vr$9;
	}
	label$83:;
	label$82:;
	label$77:;
}

void SYMBSETARRAYDIMTB( struct $8FBSYMBOL* SYM$1, int32 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1 )
{
	label$84:;
	SYMBDROPARRAYDIMS( SYM$1 );
	*(int32*)((uint8*)SYM$1 + 64) = DIMENSIONS$1;
	void* vr$2 = XALLOCATE( DIMENSIONS$1 << (4 & 31) );
	*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) = (struct $10FBARRAYDIM*)vr$2;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$114$2;
		TMP$114$2 = DIMENSIONS$1 + -1;
		goto label$86;
		label$89:;
		{
			__builtin_memcpy( (struct $10FBARRAYDIM*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$2 << (4 & 31))), (struct $10FBARRAYDIM*)((I$2 << (4 & 31)) + *(int32*)DTB$1), 16 );
		}
		label$87:;
		I$2 = I$2 + 1;
		label$86:;
		if( I$2 <= TMP$114$2 ) goto label$89;
		label$88:;
	}
	SYMBRECALCARRAYDIFFANDELEMENTS( SYM$1 );
	label$85:;
}

void SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS( struct $8FBSYMBOL* SYM$1, int32 DIMENSION$1, int64 ELEMENTS$1 )
{
	label$90:;
	{
		struct $10FBARRAYDIM* TMP$115$2;
		TMP$115$2 = (struct $10FBARRAYDIM*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (DIMENSION$1 << (4 & 31)));
		*(int64*)((uint8*)TMP$115$2 + 8) = (*(int64*)TMP$115$2 + ELEMENTS$1) + -1ll;
	}
	SYMBRECALCARRAYDIFFANDELEMENTS( SYM$1 );
	label$91:;
}

void SYMBCHECKDYNAMICARRAYDIMENSIONS( struct $8FBSYMBOL* SYM$1, int32 DIMENSIONS$1 )
{
	label$92:;
	if( DIMENSIONS$1 != -1 ) goto label$95;
	{
		goto label$93;
	}
	label$95:;
	label$94:;
	int32 EXISTINGDIMENSIONS$1;
	EXISTINGDIMENSIONS$1 = *(int32*)((uint8*)SYM$1 + 64);
	if( (-(EXISTINGDIMENSIONS$1 != -1) & -(EXISTINGDIMENSIONS$1 != DIMENSIONS$1)) == 0 ) goto label$97;
	{
		ERRREPORTEX( 36, (uint8*)*(uint8**)((uint8*)SYM$1 + 16), 0, 1, (uint8*)0u );
	}
	label$97:;
	label$96:;
	label$93:;
}

void SYMBVARINITFIELDS( struct $8FBSYMBOL* SYM$1 )
{
	label$98:;
	*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) = (struct $7ASTNODE*)0u;
	*(int32*)((uint8*)SYM$1 + 64) = 0;
	*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) = (struct $10FBARRAYDIM*)0u;
	*(int64*)((uint8*)SYM$1 + 72) = 0ll;
	*(int64*)((uint8*)SYM$1 + 80) = 1ll;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)SYM$1 + 100) = *(int32*)((uint8*)&PARSER$ + 28);
	*(int32*)((uint8*)SYM$1 + 104) = 0;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 108) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)SYM$1 + 112) = 0;
	*(int32*)((uint8*)SYM$1 + 116) = 0;
	label$99:;
}

void SYMBVARINITARRAYDIMENSIONS( struct $8FBSYMBOL* SYM$1, int32 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1 )
{
	label$100:;
	if( DIMENSIONS$1 == 0 ) goto label$103;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$105;
		{
			*(int32*)((uint8*)SYM$1 + 64) = DIMENSIONS$1;
		}
		goto label$104;
		label$105:;
		{
			SYMBSETARRAYDIMTB( SYM$1, DIMENSIONS$1, DTB$1 );
		}
		label$104:;
		if( (-(*(int32*)SYM$1 != 12) & -((*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0)) == 0 ) goto label$107;
		{
			SYMBMAYBEADDARRAYDESC( SYM$1 );
		}
		label$107:;
		label$106:;
	}
	label$103:;
	label$102:;
	label$101:;
}

struct $8FBSYMBOL* SYMBADDVAR( uint8* ID$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LGT$1, int32 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, $13FB_SYMBATTRIB ATTRIB$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$108:;
	struct $8FBSYMBOL* S$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	int32 ISGLOBAL$1;
	int32 STATS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	ISGLOBAL$1 = -((ATTRIB$1 & 57) != 0);
	if( LGT$1 > 0ll ) goto label$111;
	{
		int64 vr$3 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
		LGT$1 = vr$3;
	}
	label$111:;
	label$110:;
	if( ID_ALIAS$1 != (uint8*)0u ) goto label$113;
	{
		if( *(int32*)((uint8*)&PARSER$ + 104) == 0 ) goto label$115;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$115:;
		label$114:;
		STATS$1 = 0;
	}
	goto label$112;
	label$113:;
	{
		STATS$1 = 512;
	}
	label$112:;
	if( ISGLOBAL$1 != 0 ) goto label$117;
	{
		ATTRIB$1 = ATTRIB$1 | 128;
		if( (OPTIONS$1 & 2) != 0 ) goto label$119;
		{
			SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544);
		}
		goto label$118;
		label$119:;
		{
			SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 56);
		}
		label$118:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 98540);
	}
	goto label$116;
	label$117:;
	{
		SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 98408);
		HASHTB$1 = (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420);
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$121;
		{
			if( (OPTIONS$1 & 8) != 0 ) goto label$123;
			{
				SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) + 56);
				HASHTB$1 = (struct $8FBHASHTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) + 68);
			}
			label$123:;
			label$122:;
		}
		label$121:;
		label$120:;
	}
	label$116:;
	struct $8FBSYMBOL* vr$17 = SYMBNEWSYMBOL( OPTIONS$1 | 32, (struct $8FBSYMBOL*)0u, SYMTB$1, HASHTB$1, 1, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0 );
	S$1 = vr$17;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$125;
	{
		goto label$109;
	}
	label$125:;
	label$124:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | STATS$1;
	*(int64*)((uint8*)S$1 + 40) = LGT$1;
	*(int64*)((uint8*)S$1 + 48) = 0ll;
	SYMBVARINITFIELDS( S$1 );
	SYMBVARINITARRAYDIMENSIONS( S$1, DIMENSIONS$1, DTB$1 );
	if( (OPTIONS$1 & 2) == 0 ) goto label$127;
	{
		*(int32*)((uint8*)S$1 + 100) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 52) + 1;
	}
	goto label$126;
	label$127:;
	if( (OPTIONS$1 & 8) == 0 ) goto label$128;
	{
		*(uint16*)((uint8*)S$1 + 36) = (uint16)0u;
	}
	label$128:;
	label$126:;
	int32 vr$33 = SYMBISPARENTNAMESPACE( *(int32*)((uint8*)S$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)S$1 + 32), (struct $8FBSYMBOL*)0u );
	if( vr$33 == 0 ) goto label$130;
	{
		*(int32*)((uint8*)SUBTYPE$1 + 120) = *(int32*)((uint8*)SUBTYPE$1 + 120) | 64;
	}
	label$130:;
	label$129:;
	fb$result$1 = S$1;
	label$109:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDTEMPVAR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$131:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$116$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	$10FB_SYMBOPT OPTIONS$1;
	OPTIONS$1 = 0;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 2) != 0 ) goto label$134;
	{
		OPTIONS$1 = OPTIONS$1 | 2;
	}
	label$134:;
	label$133:;
	struct $8FBSYMBOL* SYM$1;
	uint8* vr$3 = SYMBUNIQUEID( (boolean)0 );
	struct $8FBSYMBOL* vr$4 = SYMBADDVAR( (uint8*)vr$3, (uint8*)0u, DTYPE$1, SUBTYPE$1, 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$116$1, 4096, OPTIONS$1 );
	SYM$1 = vr$4;
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 16;
	fb$result$1 = SYM$1;
	label$132:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDIMPLICITVAR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$135:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$117$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* SYM$1;
	uint8* vr$1 = SYMBUNIQUEID( (boolean)0 );
	struct $8FBSYMBOL* vr$2 = SYMBADDVAR( (uint8*)vr$1, (uint8*)0u, DTYPE$1, SUBTYPE$1, 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$117$1, 0, OPTIONS$1 );
	SYM$1 = vr$2;
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 16;
	fb$result$1 = SYM$1;
	label$136:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDANDALLOCATETEMPVAR( int32 DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$137:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( DTYPE$1, (struct $8FBSYMBOL*)0u );
	S$1 = vr$1;
	(*(tmp$42*)((uint8*)&IR$ + 36))( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), S$1 );
	fb$result$1 = S$1;
	label$138:;
	return fb$result$1;
}

int64 SYMBGETREALSIZE( struct $8FBSYMBOL* SYM$1 )
{
	int64 TMP$118$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$139:;
	int64 SIZE$1;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$141;
	TMP$118$1 = (int64)*(int32*)((uint8*)&ENV$ + 296);
	goto label$142;
	label$141:;
	TMP$118$1 = *(int64*)((uint8*)SYM$1 + 40);
	label$142:;
	SIZE$1 = TMP$118$1;
	SIZE$1 = SIZE$1 * *(int64*)((uint8*)SYM$1 + 80);
	fb$result$1 = SIZE$1;
	label$140:;
	return fb$result$1;
}

void SYMBGETREALTYPE( struct $8FBSYMBOL* SYM$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	label$143:;
	*DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28);
	*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
	if( (*(int32*)((uint8*)SYM$1 + 4) & 114688) == 0 ) goto label$146;
	{
		int32 PARAMMODE$2;
		__builtin_memset( &PARAMMODE$2, 0, 4 );
		struct $8FBSYMBOL* BYDESCREALSUBTYPE$2;
		__builtin_memset( &BYDESCREALSUBTYPE$2, 0, 4 );
		if( (*(int32*)((uint8*)SYM$1 + 4) & 65536) == 0 ) goto label$148;
		{
			PARAMMODE$2 = 2;
		}
		goto label$147;
		label$148:;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$149;
		{
			PARAMMODE$2 = 3;
			BYDESCREALSUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92);
		}
		goto label$147;
		label$149:;
		{
			PARAMMODE$2 = 1;
		}
		label$147:;
		_Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( PARAMMODE$2, BYDESCREALSUBTYPE$2, DTYPE$1, SUBTYPE$1 );
	}
	goto label$145;
	label$146:;
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 262144) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 512) != 0)) == 0 ) goto label$150;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
	}
	label$150:;
	label$145:;
	label$144:;
}

int64 SYMBCALCARRAYELEMENTS( struct $8FBSYMBOL* SYM$1, int32 FIRST$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$151:;
	int64 TOTALELEMENTS$1;
	TOTALELEMENTS$1 = 1ll;
	{
		int32 I$2;
		I$2 = FIRST$1;
		int32 TMP$119$2;
		TMP$119$2 = *(int32*)((uint8*)SYM$1 + 64) + -1;
		goto label$153;
		label$156:;
		{
			TOTALELEMENTS$1 = TOTALELEMENTS$1 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$2 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$2 << (4 & 31)))) + 1ll);
		}
		label$154:;
		I$2 = I$2 + 1;
		label$153:;
		if( I$2 <= TMP$119$2 ) goto label$156;
		label$155:;
	}
	fb$result$1 = TOTALELEMENTS$1;
	label$152:;
	return fb$result$1;
}

int32 SYMBCHECKARRAYSIZE( int32 DIMENSIONS$1, struct $10FBARRAYDIM* DIMTB$1, int64 LGT$1, int32 IS_ON_STACK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	uint64 ALLELEMENTS$1;
	uint64 ELEMENTS$1;
	int32 FOUND_TOO_BIG$1;
	FOUND_TOO_BIG$1 = 0;
	ALLELEMENTS$1 = 1ull;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$120$2;
		TMP$120$2 = DIMENSIONS$1 + -1;
		goto label$159;
		label$162:;
		{
			if( *(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4 & 31))) + 8) != -9223372036854775808ull ) goto label$164;
			{
				ELEMENTS$1 = 1ull;
			}
			goto label$163;
			label$164:;
			{
				ELEMENTS$1 = (uint64)((*(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4 & 31))) + 8) - *(int64*)((uint8*)DIMTB$1 + (I$2 << (4 & 31)))) + 1ll);
			}
			label$163:;
			if( ELEMENTS$1 <= 2147483647ull ) goto label$166;
			{
				FOUND_TOO_BIG$1 = -1;
				goto label$161;
			}
			label$166:;
			label$165:;
			ALLELEMENTS$1 = ALLELEMENTS$1 * ELEMENTS$1;
			if( ALLELEMENTS$1 <= 2147483647ull ) goto label$168;
			{
				FOUND_TOO_BIG$1 = -1;
				goto label$161;
			}
			label$168:;
			label$167:;
		}
		label$160:;
		I$2 = I$2 + 1;
		label$159:;
		if( I$2 <= TMP$120$2 ) goto label$162;
		label$161:;
	}
	if( FOUND_TOO_BIG$1 != 0 ) goto label$170;
	{
		ALLELEMENTS$1 = ALLELEMENTS$1 * (uint64)LGT$1;
		if( ALLELEMENTS$1 <= 2147483647ull ) goto label$172;
		{
			FOUND_TOO_BIG$1 = -1;
		}
		label$172:;
		label$171:;
	}
	label$170:;
	label$169:;
	if( FOUND_TOO_BIG$1 == 0 ) goto label$174;
	{
		fb$result$1 = 0;
	}
	goto label$173;
	label$174:;
	{
		if( (IS_ON_STACK$1 & -(ALLELEMENTS$1 > (uint64)*(int32*)((uint8*)&ENV$ + 244))) == 0 ) goto label$176;
		{
			ERRREPORTWARN( 23, (uint8*)0u, 1, (uint8*)0u );
		}
		label$176:;
		label$175:;
		fb$result$1 = -1;
	}
	label$173:;
	label$158:;
	return fb$result$1;
}

int32 SYMBGETVARHASCTOR( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$177:;
	if( (*(int32*)((uint8*)S$1 + 4) & 512011) == 0 ) goto label$180;
	{
		fb$result$1 = 0;
		goto label$178;
	}
	label$180:;
	label$179:;
	{
		int32 TMP$121$2;
		TMP$121$2 = *(int32*)((uint8*)S$1 + 28) & 511;
		if( TMP$121$2 != 17 ) goto label$182;
		label$183:;
		{
			fb$result$1 = -1;
			goto label$178;
		}
		goto label$181;
		label$182:;
		if( TMP$121$2 != 39 ) goto label$184;
		label$185:;
		{
			if( (*(int32*)((uint8*)S$1 + 12) & 16777216) == 0 ) goto label$187;
			{
				fb$result$1 = -1;
				goto label$178;
			}
			label$187:;
			label$186:;
		}
		label$184:;
		label$181:;
	}
	if( *(int32*)((uint8*)S$1 + 64) == 0 ) goto label$189;
	{
		fb$result$1 = -1;
		goto label$178;
	}
	label$189:;
	label$188:;
	int32 vr$8 = SYMBHASCTOR( S$1 );
	fb$result$1 = vr$8;
	label$178:;
	return fb$result$1;
}

int32 SYMBGETVARHASDTOR( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$190:;
	if( (*(int32*)((uint8*)S$1 + 4) & 512011) == 0 ) goto label$193;
	{
		fb$result$1 = 0;
		goto label$191;
	}
	label$193:;
	label$192:;
	{
		int32 TMP$122$2;
		TMP$122$2 = *(int32*)((uint8*)S$1 + 28) & 511;
		if( TMP$122$2 != 17 ) goto label$195;
		label$196:;
		{
			fb$result$1 = -1;
			goto label$191;
		}
		goto label$194;
		label$195:;
		if( TMP$122$2 != 39 ) goto label$197;
		label$198:;
		{
			if( (*(int32*)((uint8*)S$1 + 12) & 16777216) == 0 ) goto label$200;
			{
				fb$result$1 = -1;
				goto label$191;
			}
			label$200:;
			label$199:;
		}
		label$197:;
		label$194:;
	}
	if( *(int32*)((uint8*)S$1 + 64) == 0 ) goto label$202;
	{
		if( (*(int32*)((uint8*)S$1 + 4) & 4) == 0 ) goto label$204;
		{
			fb$result$1 = -1;
			goto label$191;
		}
		label$204:;
		label$203:;
	}
	label$202:;
	label$201:;
	int32 vr$10 = SYMBHASDTOR( S$1 );
	fb$result$1 = vr$10;
	label$191:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBCLONEVAR( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$205:;
	static struct $10FBARRAYDIM DTB$1[8];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$123$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 128, 16, 1, 49, { { 8, 0, 7 } } };
	if( (*(int32*)((uint8*)SYM$1 + 4) & 8192) == 0 ) goto label$208;
	{
		struct $8FBSYMBOL* vr$4 = SYMBADDARRAYDESC( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96) );
		fb$result$1 = vr$4;
	}
	goto label$207;
	label$208:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 4096) == 0 ) goto label$209;
	{
		struct $8FBSYMBOL* vr$10 = SYMBADDTEMPVAR( *(int32*)((uint8*)SYM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
		fb$result$1 = vr$10;
	}
	goto label$207;
	label$209:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 4) != 0 ) goto label$211;
		{
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$124$4;
				TMP$124$4 = *(int32*)((uint8*)SYM$1 + 64) + -1;
				goto label$212;
				label$215:;
				{
					__builtin_memcpy( (struct $10FBARRAYDIM*)((int32)(struct $10FBARRAYDIM*)DTB$1 + (I$4 << (4 & 31))), (struct $10FBARRAYDIM*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$4 << (4 & 31))), 16 );
				}
				label$213:;
				I$4 = I$4 + 1;
				label$212:;
				if( I$4 <= TMP$124$4 ) goto label$215;
				label$214:;
			}
		}
		label$211:;
		label$210:;
		struct $8FBSYMBOL* vr$27 = SYMBADDVAR( (uint8*)*(uint8**)((uint8*)SYM$1 + 16), (uint8*)0u, *(int32*)((uint8*)SYM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), 0ll, *(int32*)((uint8*)SYM$1 + 64), (struct $7FBARRAYI10FBARRAYDIME*)&tmp$123$1, *($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4), 0 );
		fb$result$1 = vr$27;
	}
	label$207:;
	label$206:;
	return fb$result$1;
}

int32 SYMBVARCHECKACCESS( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$216:;
	if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$219;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 128) == 0 ) goto label$221;
		{
			if( (int32)*(uint16*)((uint8*)SYM$1 + 36) != 0 ) goto label$223;
			{
				fb$result$1 = 0;
				goto label$217;
			}
			label$223:;
			label$222:;
		}
		goto label$220;
		label$221:;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 1) != 0 ) goto label$224;
		{
			fb$result$1 = 0;
			goto label$217;
		}
		label$224:;
		label$220:;
	}
	label$219:;
	label$218:;
	fb$result$1 = -1;
	label$217:;
	return fb$result$1;
}

void SYMBDELVAR( struct $8FBSYMBOL* S$1, int32 IS_TBDEL$1 )
{
	label$225:;
	SYMBDROPARRAYDIMS( S$1 );
	if( IS_TBDEL$1 != 0 ) goto label$228;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)S$1 + 88) == (struct $8FBSYMBOL*)0u ) goto label$230;
		{
			SYMBDELSYMBOL( *(struct $8FBSYMBOL**)((uint8*)S$1 + 88), 0 );
		}
		label$230:;
		label$229:;
	}
	label$228:;
	label$227:;
	if( (*(int32*)((uint8*)S$1 + 4) & 1024) == 0 ) goto label$232;
	{
		if( (*(int32*)((uint8*)S$1 + 28) & 511) != 7 ) goto label$234;
		{
			if( *(uint32**)((uint8*)S$1 + 56) == (uint32*)0u ) goto label$236;
			{
				if( *(uint32**)((uint8*)S$1 + 56) == (uint32*)0u ) goto label$238;
				{
					free( *(void**)((uint8*)S$1 + 56) );
				}
				label$238:;
				label$237:;
			}
			label$236:;
			label$235:;
		}
		goto label$233;
		label$234:;
		{
			if( *(uint8**)((uint8*)S$1 + 56) == (uint8*)0u ) goto label$240;
			{
				if( *(uint8**)((uint8*)S$1 + 56) == (uint8*)0u ) goto label$242;
				{
					free( *(void**)((uint8*)S$1 + 56) );
				}
				label$242:;
				label$241:;
			}
			label$240:;
			label$239:;
		}
		label$233:;
	}
	label$232:;
	label$231:;
	SYMBFREESYMBOL( S$1 );
	label$226:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void SYMBDROPARRAYDIMS( struct $8FBSYMBOL* S$1 )
{
	label$54:;
	free( *(void**)((uint8*)S$1 + 68) );
	*(struct $10FBARRAYDIM**)((uint8*)S$1 + 68) = (struct $10FBARRAYDIM*)0u;
	label$55:;
}

static void SYMBRECALCARRAYDIFF( struct $8FBSYMBOL* SYM$1 )
{
	label$56:;
	int64 DIFF$1;
	int64 ELEMENTS$1;
	int32 LAST$1;
	struct $10FBARRAYDIM* DIMTB$1;
	DIMTB$1 = *(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68);
	DIFF$1 = 0ll;
	LAST$1 = *(int32*)((uint8*)SYM$1 + 64) + -1;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$112$2;
		TMP$112$2 = LAST$1 + -1;
		goto label$58;
		label$61:;
		{
			ELEMENTS$1 = (*(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4 & 31))) + 24) - *(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4 & 31))) + 16)) + 1ll;
			DIFF$1 = (DIFF$1 + *(int64*)((uint8*)DIMTB$1 + (I$2 << (4 & 31)))) * ELEMENTS$1;
		}
		label$59:;
		I$2 = I$2 + 1;
		label$58:;
		if( I$2 <= TMP$112$2 ) goto label$61;
		label$60:;
	}
	DIFF$1 = (DIFF$1 + *(int64*)((uint8*)DIMTB$1 + (LAST$1 << (4 & 31)))) * *(int64*)((uint8*)SYM$1 + 40);
	*(int64*)((uint8*)SYM$1 + 72) = -DIFF$1;
	label$57:;
}

static void SYMBRECALCARRAYDIFFANDELEMENTS( struct $8FBSYMBOL* SYM$1 )
{
	label$62:;
	if( *(int32*)((uint8*)SYM$1 + 64) <= 0 ) goto label$65;
	{
		SYMBRECALCARRAYDIFF( SYM$1 );
		int64 vr$1 = SYMBCALCARRAYELEMENTS( SYM$1, 0 );
		*(int64*)((uint8*)SYM$1 + 80) = vr$1;
	}
	goto label$64;
	label$65:;
	{
		*(int64*)((uint8*)SYM$1 + 72) = 0ll;
		*(int64*)((uint8*)SYM$1 + 80) = 1ll;
	}
	label$64:;
	label$63:;
}
