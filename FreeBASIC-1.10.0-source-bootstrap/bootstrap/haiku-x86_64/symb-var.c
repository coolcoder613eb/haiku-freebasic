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
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 72 );
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
		uint32* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint32* DATA;
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
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int64* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
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
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 240 );
typedef int64 $10FB_SYMBOPT;
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
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
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_LongintToStr( int64 );
static void fb_ctor__symbzvar( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $7ASTNODE* ASTBUILDARRAYDESCINITREE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int64, int64, struct $8FBSYMBOL* );
void SYMBVARINITFIELDS( struct $8FBSYMBOL* );
void SYMBVARINITARRAYDIMENSIONS( struct $8FBSYMBOL*, int64, struct $7FBARRAYI10FBARRAYDIME* );
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESC( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int64, int64, int64, $13FB_SYMBATTRIB, int64 );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int64, struct $7FBARRAYI10FBARRAYDIME*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int64 );
struct $8FBSYMBOL* SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( uint8*, struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB*, struct $8FBSYMBOL**, struct $10FBSYMBOLTB**, struct $8FBHASHTB** );
void _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( int64, struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBARRAYHASUNKNOWNBOUNDS( struct $8FBSYMBOL* );
void SYMBSETARRAYDIMTB( struct $8FBSYMBOL*, int64, struct $7FBARRAYI10FBARRAYDIME* );
void SYMBMAYBEADDARRAYDESC( struct $8FBSYMBOL* );
void SYMBDELSYMBOL( struct $8FBSYMBOL*, int64 );
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int64, struct $8FBSYMBOL* );
int64 SYMBCALCARRAYELEMENTS( struct $8FBSYMBOL*, int64 );
int64 SYMBHASCTOR( struct $8FBSYMBOL* );
int64 SYMBHASDTOR( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
void SYMBMANGLERESETABBREV( void );
uint8* HMANGLEBUILTINTYPE( int64, int64* );
typedef int64 $12FB_MANGLEOPT;
void SYMBMANGLETYPE( FBSTRING*, int64, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
int64 SYMBISPARENTNAMESPACE( $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
static void SYMBDROPARRAYDIMS( struct $8FBSYMBOL* );
static void SYMBRECALCARRAYDIFF( struct $8FBSYMBOL* );
static void SYMBRECALCARRAYDIFFANDELEMENTS( struct $8FBSYMBOL* );
typedef void (*tmp$37)( void );
typedef int64 (*tmp$38)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$40)( int64, int64 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
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

void SYMBVARINIT( void )
{
	label$10:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$92$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $8FBSYMBOL* vr$0 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, (struct $8FBSYMBOL*)0ull, (uint8*)"__FB_ARRAYDIMTB$", (uint8*)0ull, 0ll, 0ll, 0ll, 0ll, 0ll );
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll) = vr$0;
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll), (uint8*)"elements", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll), (uint8*)"lbound", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll), (uint8*)"ubound", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBSTRUCTEND( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll), 0ll );
	*(int64*)((uint8*)&SYMB$ + 199176ll) = 0ll;
	*(int64*)((uint8*)&SYMB$ + 199184ll) = *(int64*)((uint8*)&ENV$ + 592ll);
	*(int64*)((uint8*)&SYMB$ + 199192ll) = *(int64*)((uint8*)&ENV$ + 592ll) << (1ll & 63ll);
	*(int64*)((uint8*)&SYMB$ + 199200ll) = *(int64*)((uint8*)&ENV$ + 592ll) * 6ll;
	*(int64*)((uint8*)&SYMB$ + 199216ll) = *(int64*)((uint8*)&ENV$ + 592ll);
	*(int64*)((uint8*)&SYMB$ + 199224ll) = *(int64*)((uint8*)&ENV$ + 592ll) << (1ll & 63ll);
	label$11:;
}

void SYMBVAREND( void )
{
	label$12:;
	label$13:;
}

void SYMBGETDESCTYPEARRAYDTYPE( struct $8FBSYMBOL* DESCTYPE$1, int64* ARRAYDTYPE$1, struct $8FBSYMBOL** ARRAYSUBTYPE$1 )
{
	label$14:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* vr$0 = SYMBUDTGETFIRSTFIELD( DESCTYPE$1 );
	FLD$1 = vr$0;
	*ARRAYDTYPE$1 = (((*(int64*)((uint8*)FLD$1 + 56ll) & 31ll) | ((*(int64*)((uint8*)FLD$1 + 56ll) & 480ll) + -32ll)) | (((*(int64*)((uint8*)FLD$1 + 56ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (*(int64*)((uint8*)FLD$1 + 56ll) & 32505856ll);
	*ARRAYSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll);
	label$15:;
}

int64 SYMBGETDESCTYPEDIMENSIONS( struct $8FBSYMBOL* DESCTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	int64 DIMTBSIZE$1;
	int64 DIMENSIONS$1;
	int32 vr$2 = fb_StrCompare( *(void**)((uint8*)DESCTYPE$1 + 40ll), 0ll, (void*)"FBARRAY", 8ll );
	if( (int64)vr$2 != 0ll ) goto label$19;
	{
		fb$result$1 = -1ll;
		goto label$17;
	}
	label$19:;
	label$18:;
	DIMTBSIZE$1 = *(int64*)((uint8*)DESCTYPE$1 + 80ll) - (*(int64*)((uint8*)&ENV$ + 592ll) * 6ll);
	DIMENSIONS$1 = DIMTBSIZE$1 / (*(int64*)((uint8*)&ENV$ + 592ll) * 3ll);
	fb$result$1 = DIMENSIONS$1;
	label$17:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int64 DIMENSIONS$1, int64 ARRAYDTYPE$1, struct $8FBSYMBOL* ARRAYSUBTYPE$1 )
{
	struct $8FBSYMBOL* TMP$102$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$20:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$98$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	FBSTRING ID$1;
	__builtin_memset( &ID$1, 0, 24ll );
	FBSTRING ALIASID$1;
	__builtin_memset( &ALIASID$1, 0, 24ll );
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	int64 ATTRIB$1;
	int64 PATTRIB$1;
	if( (ARRAYDTYPE$1 & 511ll) != 18ll ) goto label$23;
	{
		ARRAYDTYPE$1 = (ARRAYDTYPE$1 & -512ll) | 4ll;
	}
	label$23:;
	label$22:;
	fb_StrAssign( (void*)&ALIASID$1, -1ll, (void*)"FBARRAY", 8ll, 0 );
	if( DIMENSIONS$1 <= 0ll ) goto label$25;
	{
		FBSTRING* vr$7 = fb_LongintToStr( DIMENSIONS$1 );
		fb_StrConcatAssign( (void*)&ALIASID$1, -1ll, (void*)vr$7, -1ll, 0 );
	}
	label$25:;
	label$24:;
	fb_StrAssign( (void*)&ID$1, -1ll, (void*)"$", 2ll, 0 );
	fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)&ALIASID$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)"<", 2ll, 0 );
	SYMBMANGLETYPE( &ID$1, ARRAYDTYPE$1, ARRAYSUBTYPE$1, 1ll );
	SYMBMANGLERESETABBREV(  );
	fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)">", 2ll, 0 );
	ATTRIB$1 = 0ll;
	PATTRIB$1 = 0ll;
	TMP$102$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$20 = SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( (uint8*)*(uint8**)&ID$1, (struct $8FBSYMBOL*)0ull, ($13FB_SYMBATTRIB*)&ATTRIB$1, ($13FB_PROCATTRIB*)&PATTRIB$1, &TMP$102$1, &SYMTB$1, &HASHTB$1 );
	SYM$1 = vr$20;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$27;
	{
		fb$result$1 = SYM$1;
		fb_StrDelete( (FBSTRING*)&ALIASID$1 );
		fb_StrDelete( (FBSTRING*)&ID$1 );
		goto label$21;
	}
	label$27:;
	label$26:;
	ATTRIB$1 = ATTRIB$1 | 8192ll;
	struct $8FBSYMBOL* vr$24 = SYMBSTRUCTBEGIN( SYMTB$1, HASHTB$1, (struct $8FBSYMBOL*)0ull, (uint8*)*(uint8**)&ID$1, (uint8*)*(uint8**)&ALIASID$1, 0ll, 0ll, 0ll, ATTRIB$1, 1ll );
	SYM$1 = vr$24;
	*(int64*)DTB$1 = 0ll;
	*(int64*)((int64)(struct $10FBARRAYDIM*)DTB$1 + 8ll) = 0ll;
	SYMBADDFIELD( SYM$1, (uint8*)"data", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, (((ARRAYDTYPE$1 & 31ll) | ((ARRAYDTYPE$1 & 480ll) + 32ll)) | ((ARRAYDTYPE$1 & 261632ll) << (1ll & 63ll))) | (ARRAYDTYPE$1 & 32505856ll), ARRAYSUBTYPE$1, 0ll, 0ll, 0ll );
	SYMBADDFIELD( SYM$1, (uint8*)"ptr", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, (((ARRAYDTYPE$1 & 31ll) | ((ARRAYDTYPE$1 & 480ll) + 32ll)) | ((ARRAYDTYPE$1 & 261632ll) << (1ll & 63ll))) | (ARRAYDTYPE$1 & 32505856ll), ARRAYSUBTYPE$1, 0ll, 0ll, 0ll );
	SYMBADDFIELD( SYM$1, (uint8*)"size", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( SYM$1, (uint8*)"element_len", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( SYM$1, (uint8*)"dimensions", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( SYM$1, (uint8*)"flags", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	if( DIMENSIONS$1 != -1ll ) goto label$29;
	{
		DIMENSIONS$1 = 8ll;
	}
	label$29:;
	label$28:;
	*(int64*)DTB$1 = 0ll;
	*(int64*)((int64)(struct $10FBARRAYDIM*)DTB$1 + 8ll) = DIMENSIONS$1 + -1ll;
	SYMBADDFIELD( SYM$1, (uint8*)"dimTB", 1ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$98$1, 20ll, *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll), 0ll, 0ll, 0ll );
	SYMBSTRUCTEND( SYM$1, 0ll );
	fb$result$1 = SYM$1;
	fb_StrDelete( (FBSTRING*)&ALIASID$1 );
	fb_StrDelete( (FBSTRING*)&ID$1 );
	label$21:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDARRAYDESC( struct $8FBSYMBOL* ARRAY$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$30:;
	static FBSTRING TEMPID$1;
	uint8* ID$1;
	uint8* ID_ALIAS$1;
	struct $8FBSYMBOL* DESC$1;
	struct $8FBSYMBOL* DESCTYPE$1;
	$13FB_SYMBATTRIB ATTRIB$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	int64 ISDYNAMIC$1;
	int64 ISPUBEXT$1;
	int64 STATS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	ID_ALIAS$1 = (uint8*)0ull;
	STATS$1 = 0ll;
	if( *(int64*)ARRAY$1 != 12ll ) goto label$33;
	{
		uint8* vr$2 = SYMBUNIQUEID( (boolean)0ll );
		ID$1 = vr$2;
		if( (int64)*(int16*)((uint8*)ARRAY$1 + 74ll) == 0ll ) goto label$35;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$35:;
		label$34:;
		ATTRIB$1 = 128ll;
		STATS$1 = 16ll;
	}
	goto label$32;
	label$33:;
	{
		ISDYNAMIC$1 = (int64)-((*(int64*)((uint8*)ARRAY$1 + 8ll) & 4ll) != 0ll);
		ISPUBEXT$1 = (int64)-((*(int64*)((uint8*)ARRAY$1 + 8ll) & 48ll) != 0ll);
		if( ((int64)-((*(int64*)((uint8*)ARRAY$1 + 8ll) & 8ll) != 0ll) | ISDYNAMIC$1) == 0ll ) goto label$37;
		{
			ID$1 = *(uint8**)((uint8*)ARRAY$1 + 32ll);
			ID_ALIAS$1 = *(uint8**)((uint8*)ARRAY$1 + 40ll);
			STATS$1 = *(int64*)((uint8*)ARRAY$1 + 24ll) & 512ll;
			if( (*(int64*)((uint8*)ARRAY$1 + 8ll) & 1048576ll) == 0ll ) goto label$39;
			{
				int64 TMP$110$4;
				FBSTRING TMP$111$4;
				fb_StrAssign( (void*)&TEMPID$1, -1ll, (void*)ID$1, 0ll, 0 );
				TMP$110$4 = 0ll;
				uint8* vr$24 = HMANGLEBUILTINTYPE( *(int64*)((uint8*)ARRAY$1 + 56ll) & 511ll, &TMP$110$4 );
				__builtin_memset( &TMP$111$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$111$4, (void*)&TEMPID$1, -1ll, (void*)vr$24, 0ll );
				fb_StrAssign( (void*)&TEMPID$1, -1ll, (void*)vr$27, -1ll, 0 );
				if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$41;
				{
					fb_StrConcatAssign( (void*)&TEMPID$1, -1ll, (void*)"$", 2ll, 0 );
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
			uint8* vr$28 = SYMBUNIQUEID( (boolean)0ll );
			ID$1 = vr$28;
			if( (int64)*(int16*)((uint8*)ARRAY$1 + 74ll) == 0ll ) goto label$43;
			{
				ID_ALIAS$1 = ID$1;
			}
			label$43:;
			label$42:;
			STATS$1 = 16ll;
		}
		label$36:;
		ATTRIB$1 = *(int64*)((uint8*)ARRAY$1 + 8ll) & 187ll;
		if( ISDYNAMIC$1 != 0ll ) goto label$45;
		{
			if( (*(int64*)((uint8*)ARRAY$1 + 8ll) & 16ll) == 0ll ) goto label$47;
			{
				ATTRIB$1 = ATTRIB$1 & -17ll;
			}
			label$47:;
			label$46:;
			ATTRIB$1 = ATTRIB$1 & -33ll;
		}
		label$45:;
		label$44:;
	}
	label$32:;
	ATTRIB$1 = ATTRIB$1 | 8192ll;
	if( *(int64*)ARRAY$1 != 12ll ) goto label$49;
	{
		if( *(uint64*)((uint8*)&PARSER$ + 200ll) != 0ull ) goto label$51;
		{
			SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 96ll);
		}
		goto label$50;
		label$51:;
		{
			SYMTB$1 = (struct $10FBSYMBOLTB*)0ull;
		}
		label$50:;
	}
	goto label$48;
	label$49:;
	{
		SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)ARRAY$1 + 288ll);
	}
	label$48:;
	struct $8FBSYMBOL* vr$45 = SYMBADDARRAYDESCRIPTORTYPE( *(int64*)((uint8*)ARRAY$1 + 104ll), *(int64*)((uint8*)ARRAY$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)ARRAY$1 + 64ll) );
	DESCTYPE$1 = vr$45;
	struct $8FBSYMBOL* vr$46 = SYMBNEWSYMBOL( 1ll, (struct $8FBSYMBOL*)0ull, SYMTB$1, (struct $8FBHASHTB*)0ull, 1ll, (uint8*)ID$1, (uint8*)ID_ALIAS$1, 20ll, DESCTYPE$1, ATTRIB$1, 0ll );
	DESC$1 = vr$46;
	if( DESC$1 != (struct $8FBSYMBOL*)0ull ) goto label$53;
	{
		goto label$31;
	}
	label$53:;
	label$52:;
	*(int64*)((uint8*)DESC$1 + 80ll) = *(int64*)((uint8*)DESCTYPE$1 + 80ll);
	*(int64*)((uint8*)DESC$1 + 88ll) = 0ll;
	*($12FB_SYMBSTATS*)((uint8*)DESC$1 + 24ll) = STATS$1 | (*(int64*)((uint8*)ARRAY$1 + 24ll) & 2ll);
	SYMBVARINITFIELDS( DESC$1 );
	*(struct $8FBSYMBOL**)((uint8*)DESC$1 + 152ll) = ARRAY$1;
	fb$result$1 = DESC$1;
	label$31:;
	return fb$result$1;
}

int64 SYMBARRAYHASUNKNOWNBOUNDS( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	fb$result$1 = 0ll;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$69;
	{
		goto label$67;
	}
	label$69:;
	label$68:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$113$2;
		TMP$113$2 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
		goto label$70;
		label$73:;
		{
			if( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$2 << (4ll & 63ll))) + 8ll) != -9223372036854775808ull ) goto label$75;
			{
				fb$result$1 = -1ll;
				goto label$67;
			}
			label$75:;
			label$74:;
		}
		label$71:;
		I$2 = I$2 + 1ll;
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
	if( *(int64*)((uint8*)SYM$1 + 104ll) != 0ll ) goto label$79;
	{
		goto label$77;
	}
	label$79:;
	label$78:;
	int64 vr$1 = SYMBARRAYHASUNKNOWNBOUNDS( SYM$1 );
	if( vr$1 == 0ll ) goto label$81;
	{
		goto label$77;
	}
	label$81:;
	label$80:;
	if( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll) != (struct $8FBSYMBOL*)0ull ) goto label$83;
	{
		struct $8FBSYMBOL* vr$3 = SYMBADDARRAYDESC( SYM$1 );
		*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll) = vr$3;
		*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll) + 64ll);
		struct $7ASTNODE* vr$9 = ASTBUILDARRAYDESCINITREE( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll), SYM$1, (struct $7ASTNODE*)0ull );
		*(struct $7ASTNODE**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll) + 96ll) = vr$9;
	}
	label$83:;
	label$82:;
	label$77:;
}

void SYMBSETARRAYDIMTB( struct $8FBSYMBOL* SYM$1, int64 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1 )
{
	label$84:;
	SYMBDROPARRAYDIMS( SYM$1 );
	*(int64*)((uint8*)SYM$1 + 104ll) = DIMENSIONS$1;
	void* vr$3 = XALLOCATE( (int32)(DIMENSIONS$1 << (4ll & 63ll)) );
	*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) = (struct $10FBARRAYDIM*)vr$3;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$114$2;
		TMP$114$2 = DIMENSIONS$1 + -1ll;
		goto label$86;
		label$89:;
		{
			__builtin_memcpy( (struct $10FBARRAYDIM*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$2 << (4ll & 63ll))), (struct $10FBARRAYDIM*)((I$2 << (4ll & 63ll)) + *(int64*)DTB$1), 16 );
		}
		label$87:;
		I$2 = I$2 + 1ll;
		label$86:;
		if( I$2 <= TMP$114$2 ) goto label$89;
		label$88:;
	}
	SYMBRECALCARRAYDIFFANDELEMENTS( SYM$1 );
	label$85:;
}

void SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS( struct $8FBSYMBOL* SYM$1, int64 DIMENSION$1, int64 ELEMENTS$1 )
{
	label$90:;
	{
		struct $10FBARRAYDIM* TMP$115$2;
		TMP$115$2 = (struct $10FBARRAYDIM*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (DIMENSION$1 << (4ll & 63ll)));
		*(int64*)((uint8*)TMP$115$2 + 8ll) = (*(int64*)TMP$115$2 + ELEMENTS$1) + -1ll;
	}
	SYMBRECALCARRAYDIFFANDELEMENTS( SYM$1 );
	label$91:;
}

void SYMBCHECKDYNAMICARRAYDIMENSIONS( struct $8FBSYMBOL* SYM$1, int64 DIMENSIONS$1 )
{
	label$92:;
	if( DIMENSIONS$1 != -1ll ) goto label$95;
	{
		goto label$93;
	}
	label$95:;
	label$94:;
	int64 EXISTINGDIMENSIONS$1;
	EXISTINGDIMENSIONS$1 = *(int64*)((uint8*)SYM$1 + 104ll);
	if( ((int64)-(EXISTINGDIMENSIONS$1 != -1ll) & (int64)-(EXISTINGDIMENSIONS$1 != DIMENSIONS$1)) == 0ll ) goto label$97;
	{
		ERRREPORTEX( 36ll, (uint8*)*(uint8**)((uint8*)SYM$1 + 32ll), 0ll, 1ll, (uint8*)0ull );
	}
	label$97:;
	label$96:;
	label$93:;
}

void SYMBVARINITFIELDS( struct $8FBSYMBOL* SYM$1 )
{
	label$98:;
	*(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) = (struct $7ASTNODE*)0ull;
	*(int64*)((uint8*)SYM$1 + 104ll) = 0ll;
	*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) = (struct $10FBARRAYDIM*)0ull;
	*(int64*)((uint8*)SYM$1 + 120ll) = 0ll;
	*(int64*)((uint8*)SYM$1 + 128ll) = 1ll;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 152ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)SYM$1 + 160ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	*(int64*)((uint8*)SYM$1 + 168ll) = 0ll;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)SYM$1 + 184ll) = 0ll;
	*(int64*)((uint8*)SYM$1 + 192ll) = 0ll;
	label$99:;
}

void SYMBVARINITARRAYDIMENSIONS( struct $8FBSYMBOL* SYM$1, int64 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1 )
{
	label$100:;
	if( DIMENSIONS$1 == 0ll ) goto label$103;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$105;
		{
			*(int64*)((uint8*)SYM$1 + 104ll) = DIMENSIONS$1;
		}
		goto label$104;
		label$105:;
		{
			SYMBSETARRAYDIMTB( SYM$1, DIMENSIONS$1, DTB$1 );
		}
		label$104:;
		if( ((int64)-(*(int64*)SYM$1 != 12ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 16384ll) == 0ll)) == 0ll ) goto label$107;
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

struct $8FBSYMBOL* SYMBADDVAR( uint8* ID$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LGT$1, int64 DIMENSIONS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, $13FB_SYMBATTRIB ATTRIB$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$108:;
	struct $8FBSYMBOL* S$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	int64 ISGLOBAL$1;
	int64 STATS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	ISGLOBAL$1 = (int64)-((ATTRIB$1 & 57ll) != 0ll);
	if( LGT$1 > 0ll ) goto label$111;
	{
		int64 vr$3 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
		LGT$1 = vr$3;
	}
	label$111:;
	label$110:;
	if( ID_ALIAS$1 != (uint8*)0ull ) goto label$113;
	{
		if( *(int64*)((uint8*)&PARSER$ + 208ll) == 0ll ) goto label$115;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$115:;
		label$114:;
		STATS$1 = 0ll;
	}
	goto label$112;
	label$113:;
	{
		STATS$1 = 512ll;
	}
	label$112:;
	if( ISGLOBAL$1 != 0ll ) goto label$117;
	{
		ATTRIB$1 = ATTRIB$1 | 128ll;
		if( (OPTIONS$1 & 2ll) != 0ll ) goto label$119;
		{
			SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll);
		}
		goto label$118;
		label$119:;
		{
			SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 96ll);
		}
		label$118:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll);
	}
	goto label$116;
	label$117:;
	{
		SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 196800ll);
		HASHTB$1 = (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll);
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$121;
		{
			if( (OPTIONS$1 & 8ll) != 0ll ) goto label$123;
			{
				SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) + 96ll);
				HASHTB$1 = (struct $8FBHASHTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) + 120ll);
			}
			label$123:;
			label$122:;
		}
		label$121:;
		label$120:;
	}
	label$116:;
	struct $8FBSYMBOL* vr$17 = SYMBNEWSYMBOL( OPTIONS$1 | 32ll, (struct $8FBSYMBOL*)0ull, SYMTB$1, HASHTB$1, 1ll, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0ll );
	S$1 = vr$17;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$125;
	{
		goto label$109;
	}
	label$125:;
	label$124:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | STATS$1;
	*(int64*)((uint8*)S$1 + 80ll) = LGT$1;
	*(int64*)((uint8*)S$1 + 88ll) = 0ll;
	SYMBVARINITFIELDS( S$1 );
	SYMBVARINITARRAYDIMENSIONS( S$1, DIMENSIONS$1, DTB$1 );
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$127;
	{
		*(int64*)((uint8*)S$1 + 160ll) = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 208ll) + 104ll) + 1ll;
	}
	goto label$126;
	label$127:;
	if( (OPTIONS$1 & 8ll) == 0ll ) goto label$128;
	{
		*(uint16*)((uint8*)S$1 + 72ll) = (uint16)0u;
	}
	label$128:;
	label$126:;
	int64 vr$33 = SYMBISPARENTNAMESPACE( *(int64*)((uint8*)S$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)S$1 + 64ll), (struct $8FBSYMBOL*)0ull );
	if( vr$33 == 0ll ) goto label$130;
	{
		*(int32*)((uint8*)SUBTYPE$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) | 64ll);
	}
	label$130:;
	label$129:;
	fb$result$1 = S$1;
	label$109:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDTEMPVAR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$131:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$116$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	$10FB_SYMBOPT OPTIONS$1;
	OPTIONS$1 = 0ll;
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 2ll) != 0ll ) goto label$134;
	{
		OPTIONS$1 = OPTIONS$1 | 2ll;
	}
	label$134:;
	label$133:;
	struct $8FBSYMBOL* SYM$1;
	uint8* vr$3 = SYMBUNIQUEID( (boolean)0ll );
	struct $8FBSYMBOL* vr$4 = SYMBADDVAR( (uint8*)vr$3, (uint8*)0ull, DTYPE$1, SUBTYPE$1, 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$116$1, 4096ll, OPTIONS$1 );
	SYM$1 = vr$4;
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 16ll;
	fb$result$1 = SYM$1;
	label$132:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDIMPLICITVAR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$135:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$117$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $8FBSYMBOL* SYM$1;
	uint8* vr$1 = SYMBUNIQUEID( (boolean)0ll );
	struct $8FBSYMBOL* vr$2 = SYMBADDVAR( (uint8*)vr$1, (uint8*)0ull, DTYPE$1, SUBTYPE$1, 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$117$1, 0ll, OPTIONS$1 );
	SYM$1 = vr$2;
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 16ll;
	fb$result$1 = SYM$1;
	label$136:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDANDALLOCATETEMPVAR( int64 DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$137:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( DTYPE$1, (struct $8FBSYMBOL*)0ull );
	S$1 = vr$1;
	(*(tmp$42*)((uint8*)&IR$ + 72ll))( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll), S$1 );
	fb$result$1 = S$1;
	label$138:;
	return fb$result$1;
}

int64 SYMBGETREALSIZE( struct $8FBSYMBOL* SYM$1 )
{
	int64 TMP$118$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$139:;
	int64 SIZE$1;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$141;
	TMP$118$1 = *(int64*)((uint8*)&ENV$ + 592ll);
	goto label$142;
	label$141:;
	TMP$118$1 = *(int64*)((uint8*)SYM$1 + 80ll);
	label$142:;
	SIZE$1 = TMP$118$1;
	SIZE$1 = SIZE$1 * *(int64*)((uint8*)SYM$1 + 128ll);
	fb$result$1 = SIZE$1;
	label$140:;
	return fb$result$1;
}

void SYMBGETREALTYPE( struct $8FBSYMBOL* SYM$1, int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	label$143:;
	*DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll);
	*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 114688ll) == 0ll ) goto label$146;
	{
		int64 PARAMMODE$2;
		__builtin_memset( &PARAMMODE$2, 0, 8ll );
		struct $8FBSYMBOL* BYDESCREALSUBTYPE$2;
		__builtin_memset( &BYDESCREALSUBTYPE$2, 0, 8ll );
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 65536ll) == 0ll ) goto label$148;
		{
			PARAMMODE$2 = 2ll;
		}
		goto label$147;
		label$148:;
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16384ll) == 0ll ) goto label$149;
		{
			PARAMMODE$2 = 3ll;
			BYDESCREALSUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll);
		}
		goto label$147;
		label$149:;
		{
			PARAMMODE$2 = 1ll;
		}
		label$147:;
		_Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( PARAMMODE$2, BYDESCREALSUBTYPE$2, DTYPE$1, SUBTYPE$1 );
	}
	goto label$145;
	label$146:;
	if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 512ll) != 0ll)) == 0ll ) goto label$150;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
	}
	label$150:;
	label$145:;
	label$144:;
}

int64 SYMBCALCARRAYELEMENTS( struct $8FBSYMBOL* SYM$1, int64 FIRST$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$151:;
	int64 TOTALELEMENTS$1;
	TOTALELEMENTS$1 = 1ll;
	{
		int64 I$2;
		I$2 = FIRST$1;
		int64 TMP$119$2;
		TMP$119$2 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
		goto label$153;
		label$156:;
		{
			TOTALELEMENTS$1 = TOTALELEMENTS$1 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$2 << (4ll & 63ll))) + 8ll) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$2 << (4ll & 63ll)))) + 1ll);
		}
		label$154:;
		I$2 = I$2 + 1ll;
		label$153:;
		if( I$2 <= TMP$119$2 ) goto label$156;
		label$155:;
	}
	fb$result$1 = TOTALELEMENTS$1;
	label$152:;
	return fb$result$1;
}

int64 SYMBCHECKARRAYSIZE( int64 DIMENSIONS$1, struct $10FBARRAYDIM* DIMTB$1, int64 LGT$1, int64 IS_ON_STACK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$157:;
	uint64 ALLELEMENTS$1;
	uint64 ELEMENTS$1;
	int64 FOUND_TOO_BIG$1;
	FOUND_TOO_BIG$1 = 0ll;
	ALLELEMENTS$1 = 1ull;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$120$2;
		TMP$120$2 = DIMENSIONS$1 + -1ll;
		goto label$159;
		label$162:;
		{
			if( *(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4ll & 63ll))) + 8ll) != -9223372036854775808ull ) goto label$164;
			{
				ELEMENTS$1 = 1ull;
			}
			goto label$163;
			label$164:;
			{
				ELEMENTS$1 = (uint64)((*(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4ll & 63ll))) + 8ll) - *(int64*)((uint8*)DIMTB$1 + (I$2 << (4ll & 63ll)))) + 1ll);
			}
			label$163:;
			if( ELEMENTS$1 <= 2147483647ull ) goto label$166;
			{
				FOUND_TOO_BIG$1 = -1ll;
				goto label$161;
			}
			label$166:;
			label$165:;
			ALLELEMENTS$1 = ALLELEMENTS$1 * ELEMENTS$1;
			if( ALLELEMENTS$1 <= 2147483647ull ) goto label$168;
			{
				FOUND_TOO_BIG$1 = -1ll;
				goto label$161;
			}
			label$168:;
			label$167:;
		}
		label$160:;
		I$2 = I$2 + 1ll;
		label$159:;
		if( I$2 <= TMP$120$2 ) goto label$162;
		label$161:;
	}
	if( FOUND_TOO_BIG$1 != 0ll ) goto label$170;
	{
		ALLELEMENTS$1 = ALLELEMENTS$1 * (uint64)LGT$1;
		if( ALLELEMENTS$1 <= 2147483647ull ) goto label$172;
		{
			FOUND_TOO_BIG$1 = -1ll;
		}
		label$172:;
		label$171:;
	}
	label$170:;
	label$169:;
	if( FOUND_TOO_BIG$1 == 0ll ) goto label$174;
	{
		fb$result$1 = 0ll;
	}
	goto label$173;
	label$174:;
	{
		if( (IS_ON_STACK$1 & (int64)-(ALLELEMENTS$1 > *(uint64*)((uint8*)&ENV$ + 488ll))) == 0ll ) goto label$176;
		{
			ERRREPORTWARN( 23ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		}
		label$176:;
		label$175:;
		fb$result$1 = -1ll;
	}
	label$173:;
	label$158:;
	return fb$result$1;
}

int64 SYMBGETVARHASCTOR( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$177:;
	if( (*(int64*)((uint8*)S$1 + 8ll) & 512011ll) == 0ll ) goto label$180;
	{
		fb$result$1 = 0ll;
		goto label$178;
	}
	label$180:;
	label$179:;
	{
		int64 TMP$121$2;
		TMP$121$2 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
		if( TMP$121$2 != 17ll ) goto label$182;
		label$183:;
		{
			fb$result$1 = -1ll;
			goto label$178;
		}
		goto label$181;
		label$182:;
		if( TMP$121$2 != 39ll ) goto label$184;
		label$185:;
		{
			if( (*(int64*)((uint8*)S$1 + 24ll) & 16777216ll) == 0ll ) goto label$187;
			{
				fb$result$1 = -1ll;
				goto label$178;
			}
			label$187:;
			label$186:;
		}
		label$184:;
		label$181:;
	}
	if( *(int64*)((uint8*)S$1 + 104ll) == 0ll ) goto label$189;
	{
		fb$result$1 = -1ll;
		goto label$178;
	}
	label$189:;
	label$188:;
	int64 vr$8 = SYMBHASCTOR( S$1 );
	fb$result$1 = vr$8;
	label$178:;
	return fb$result$1;
}

int64 SYMBGETVARHASDTOR( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$190:;
	if( (*(int64*)((uint8*)S$1 + 8ll) & 512011ll) == 0ll ) goto label$193;
	{
		fb$result$1 = 0ll;
		goto label$191;
	}
	label$193:;
	label$192:;
	{
		int64 TMP$122$2;
		TMP$122$2 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
		if( TMP$122$2 != 17ll ) goto label$195;
		label$196:;
		{
			fb$result$1 = -1ll;
			goto label$191;
		}
		goto label$194;
		label$195:;
		if( TMP$122$2 != 39ll ) goto label$197;
		label$198:;
		{
			if( (*(int64*)((uint8*)S$1 + 24ll) & 16777216ll) == 0ll ) goto label$200;
			{
				fb$result$1 = -1ll;
				goto label$191;
			}
			label$200:;
			label$199:;
		}
		label$197:;
		label$194:;
	}
	if( *(int64*)((uint8*)S$1 + 104ll) == 0ll ) goto label$202;
	{
		if( (*(int64*)((uint8*)S$1 + 8ll) & 4ll) == 0ll ) goto label$204;
		{
			fb$result$1 = -1ll;
			goto label$191;
		}
		label$204:;
		label$203:;
	}
	label$202:;
	label$201:;
	int64 vr$10 = SYMBHASDTOR( S$1 );
	fb$result$1 = vr$10;
	label$191:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBCLONEVAR( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$205:;
	static struct $10FBARRAYDIM DTB$1[8];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$123$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 128ll, 16ll, 1ll, 49ll, { { 8ll, 0ll, 7ll } } };
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 8192ll) == 0ll ) goto label$208;
	{
		struct $8FBSYMBOL* vr$4 = SYMBADDARRAYDESC( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 152ll) );
		fb$result$1 = vr$4;
	}
	goto label$207;
	label$208:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4096ll) == 0ll ) goto label$209;
	{
		struct $8FBSYMBOL* vr$10 = SYMBADDTEMPVAR( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
		fb$result$1 = vr$10;
	}
	goto label$207;
	label$209:;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) != 0ll ) goto label$211;
		{
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$124$4;
				TMP$124$4 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
				goto label$212;
				label$215:;
				{
					__builtin_memcpy( (struct $10FBARRAYDIM*)((int64)(struct $10FBARRAYDIM*)DTB$1 + (I$4 << (4ll & 63ll))), (struct $10FBARRAYDIM*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$4 << (4ll & 63ll))), 16 );
				}
				label$213:;
				I$4 = I$4 + 1ll;
				label$212:;
				if( I$4 <= TMP$124$4 ) goto label$215;
				label$214:;
			}
		}
		label$211:;
		label$210:;
		struct $8FBSYMBOL* vr$27 = SYMBADDVAR( (uint8*)*(uint8**)((uint8*)SYM$1 + 32ll), (uint8*)0ull, *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), 0ll, *(int64*)((uint8*)SYM$1 + 104ll), (struct $7FBARRAYI10FBARRAYDIME*)&tmp$123$1, *($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 8ll), 0ll );
		fb$result$1 = vr$27;
	}
	label$207:;
	label$206:;
	return fb$result$1;
}

int64 SYMBVARCHECKACCESS( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$216:;
	if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll) ) goto label$219;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) == 0ll ) goto label$221;
		{
			if( (int64)*(uint16*)((uint8*)SYM$1 + 72ll) != 0ll ) goto label$223;
			{
				fb$result$1 = 0ll;
				goto label$217;
			}
			label$223:;
			label$222:;
		}
		goto label$220;
		label$221:;
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1ll) != 0ll ) goto label$224;
		{
			fb$result$1 = 0ll;
			goto label$217;
		}
		label$224:;
		label$220:;
	}
	label$219:;
	label$218:;
	fb$result$1 = -1ll;
	label$217:;
	return fb$result$1;
}

void SYMBDELVAR( struct $8FBSYMBOL* S$1, int64 IS_TBDEL$1 )
{
	label$225:;
	SYMBDROPARRAYDIMS( S$1 );
	if( IS_TBDEL$1 != 0ll ) goto label$228;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)S$1 + 136ll) == (struct $8FBSYMBOL*)0ull ) goto label$230;
		{
			SYMBDELSYMBOL( *(struct $8FBSYMBOL**)((uint8*)S$1 + 136ll), 0ll );
		}
		label$230:;
		label$229:;
	}
	label$228:;
	label$227:;
	if( (*(int64*)((uint8*)S$1 + 8ll) & 1024ll) == 0ll ) goto label$232;
	{
		if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 7ll ) goto label$234;
		{
			if( *(uint32**)((uint8*)S$1 + 96ll) == (uint32*)0ull ) goto label$236;
			{
				if( *(uint32**)((uint8*)S$1 + 96ll) == (uint32*)0ull ) goto label$238;
				{
					free( *(void**)((uint8*)S$1 + 96ll) );
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
			if( *(uint8**)((uint8*)S$1 + 96ll) == (uint8*)0ull ) goto label$240;
			{
				if( *(uint8**)((uint8*)S$1 + 96ll) == (uint8*)0ull ) goto label$242;
				{
					free( *(void**)((uint8*)S$1 + 96ll) );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void SYMBDROPARRAYDIMS( struct $8FBSYMBOL* S$1 )
{
	label$54:;
	free( *(void**)((uint8*)S$1 + 112ll) );
	*(struct $10FBARRAYDIM**)((uint8*)S$1 + 112ll) = (struct $10FBARRAYDIM*)0ull;
	label$55:;
}

static void SYMBRECALCARRAYDIFF( struct $8FBSYMBOL* SYM$1 )
{
	label$56:;
	int64 DIFF$1;
	int64 ELEMENTS$1;
	int64 LAST$1;
	struct $10FBARRAYDIM* DIMTB$1;
	DIMTB$1 = *(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll);
	DIFF$1 = 0ll;
	LAST$1 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$112$2;
		TMP$112$2 = LAST$1 + -1ll;
		goto label$58;
		label$61:;
		{
			ELEMENTS$1 = (*(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4ll & 63ll))) + 24ll) - *(int64*)((uint8*)((uint8*)DIMTB$1 + (I$2 << (4ll & 63ll))) + 16ll)) + 1ll;
			DIFF$1 = (DIFF$1 + *(int64*)((uint8*)DIMTB$1 + (I$2 << (4ll & 63ll)))) * ELEMENTS$1;
		}
		label$59:;
		I$2 = I$2 + 1ll;
		label$58:;
		if( I$2 <= TMP$112$2 ) goto label$61;
		label$60:;
	}
	DIFF$1 = (DIFF$1 + *(int64*)((uint8*)DIMTB$1 + (LAST$1 << (4ll & 63ll)))) * *(int64*)((uint8*)SYM$1 + 80ll);
	*(int64*)((uint8*)SYM$1 + 120ll) = -DIFF$1;
	label$57:;
}

static void SYMBRECALCARRAYDIFFANDELEMENTS( struct $8FBSYMBOL* SYM$1 )
{
	label$62:;
	if( *(int64*)((uint8*)SYM$1 + 104ll) <= 0ll ) goto label$65;
	{
		SYMBRECALCARRAYDIFF( SYM$1 );
		int64 vr$1 = SYMBCALCARRAYELEMENTS( SYM$1, 0ll );
		*(int64*)((uint8*)SYM$1 + 128ll) = vr$1;
	}
	goto label$64;
	label$65:;
	{
		*(int64*)((uint8*)SYM$1 + 120ll) = 0ll;
		*(int64*)((uint8*)SYM$1 + 128ll) = 1ll;
	}
	label$64:;
	label$63:;
}
