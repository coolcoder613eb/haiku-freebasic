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
typedef int32 $10KWD_OPTION;
struct $7SYMBKWD {
	uint8* NAME;
	int32 ID;
	int32 CLASS;
	$10KWD_OPTION OPT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $7SYMBKWD ) == 16 );
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
typedef FBSTRING* (*tmp$28)( void*, int32* );
typedef uint32* (*tmp$29)( void*, int32* );
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
typedef int32 $19FB_CVA_LIST_TYPEDEF;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
static void fb_ctor__symbzkeyword( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
$19FB_CVA_LIST_TYPEDEF FBGETBACKENDVALISTTYPE( void );
struct $8FBSYMBOL* SYMBADDKEYWORD( uint8*, int32, int32, struct $8FBHASHTB*, int32, $13FB_SYMBATTRIB );
struct $8FBSYMBOL* SYMBADDTYPEDEF( uint8*, int32, struct $8FBSYMBOL*, int64 );
struct $8FBSYMBOL* SYMBADDCONST( uint8*, int32, struct $8FBSYMBOL*, union $7FBVALUE*, $13FB_SYMBATTRIB );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int32, int32, int32, $13FB_SYMBATTRIB, int32 );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int32, struct $7FBARRAYI10FBARRAYDIME*, int32, struct $8FBSYMBOL*, int64, int32, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
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
static struct $7SYMBKWD KWDTB$[263] = { { (uint8*)"AND", 288, 5 }, { (uint8*)"OR", 289, 5 }, { (uint8*)"ANDALSO", 290, 5 }, { (uint8*)"ORELSE", 291, 5 }, { (uint8*)"XOR", 292, 5 }, { (uint8*)"EQV", 293, 5 }, { (uint8*)"IMP", 294, 5 }, { (uint8*)"NOT", 295, 5 }, { (uint8*)"MOD", 296, 5 }, { (uint8*)"SHL", 297, 5, 1 }, { (uint8*)"SHR", 298, 5, 1 }, { (uint8*)"NEW", 389, 5, 1 }, { (uint8*)"DELETE", 390, 5, 1 }, { (uint8*)"REM", 260, 1 }, { (uint8*)"DIM", 308, 1 }, { (uint8*)"ABS", 448, 1 }, { (uint8*)"SGN", 449, 1 }, { (uint8*)"FIX", 450, 1 }, { (uint8*)"FRAC", 451, 1, 1 }, { (uint8*)"INT", 461, 1 }, { (uint8*)"STATIC", 307, 1 }, { (uint8*)"SHARED", 312, 1 }, { (uint8*)"BOOLEAN", 356, 1, 1 }, { (uint8*)"BYTE", 357, 1, 1 }, { (uint8*)"UBYTE", 358, 1, 1 }, { (uint8*)"SHORT", 359, 1, 1 }, { (uint8*)"USHORT", 360, 1, 1 }, { (uint8*)"INTEGER", 361, 1 }, { (uint8*)"UINTEGER", 362, 1, 1 }, { (uint8*)"LONG", 363, 1 }, { (uint8*)"ULONG", 364, 1, 1 }, { (uint8*)"LONGINT", 365, 1, 1 }, { (uint8*)"ULONGINT", 366, 1, 1 }, { (uint8*)"SINGLE", 367, 1 }, { (uint8*)"DOUBLE", 368, 1 }, { (uint8*)"STRING", 369, 1, 2 }, { (uint8*)"ZSTRING", 370, 1, 1 }, { (uint8*)"WSTRING", 371, 1, 1 }, { (uint8*)"UNSIGNED", 375, 1, 1 }, { (uint8*)"ANY", 372, 1 }, { (uint8*)"PTR", 373, 1, 1 }, { (uint8*)"POINTER", 374, 1, 1 }, { (uint8*)"TYPEOF", 377, 1, 1 }, { (uint8*)"WHILE", 273, 1 }, { (uint8*)"UNTIL", 274, 1 }, { (uint8*)"WEND", 275, 1 }, { (uint8*)"CONTINUE", 276, 1, 1 }, { (uint8*)"CBOOL", 401, 1, 1 }, { (uint8*)"CBYTE", 402, 1, 1 }, { (uint8*)"CSHORT", 404, 1, 1 }, { (uint8*)"CINT", 406, 1 }, { (uint8*)"CLNG", 408, 1 }, { (uint8*)"CLNGINT", 410, 1, 1 }, { (uint8*)"CUBYTE", 403, 1, 1 }, { (uint8*)"CUSHORT", 405, 1, 1 }, { (uint8*)"CUINT", 407, 1, 1 }, { (uint8*)"CULNG", 409, 1, 1 }, { (uint8*)"CULNGINT", 411, 1, 1 }, { (uint8*)"CSNG", 412, 1 }, { (uint8*)"CDBL", 413, 1 }, { (uint8*)"CSIGN", 414, 1, 1 }, { (uint8*)"CUNSG", 415, 1, 1 }, { (uint8*)"CPTR", 416, 1, 1 }, { (uint8*)"CAST", 417, 1, 1 }, { (uint8*)"CALL", 395, 1 }, { (uint8*)"BYVAL", 319, 1 }, { (uint8*)"BYREF", 320, 1 }, { (uint8*)"AS", 376, 1 }, { (uint8*)"DECLARE", 334, 1 }, { (uint8*)"GOTO", 393, 1 }, { (uint8*)"CONST", 335, 1 }, { (uint8*)"FOR", 281, 1 }, { (uint8*)"STEP", 282, 1 }, { (uint8*)"NEXT", 283, 1 }, { (uint8*)"TO", 284, 1 }, { (uint8*)"TYPE", 336, 1 }, { (uint8*)"UNION", 337, 1, 1 }, { (uint8*)"END", 340, 1 }, { (uint8*)"SUB", 345, 1 }, { (uint8*)"FUNCTION", 346, 1 }, { (uint8*)"CDECL", 382, 1 }, { (uint8*)"STDCALL", 383, 1 }, { (uint8*)"__THISCALL", 384, 1 }, { (uint8*)"__FASTCALL", 385, 1 }, { (uint8*)"PASCAL", 381, 1 }, { (uint8*)"ALIAS", 386, 1 }, { (uint8*)"LIB", 387, 1 }, { (uint8*)"LET", 391, 1 }, { (uint8*)"EXIT", 277, 1 }, { (uint8*)"DO", 278, 1 }, { (uint8*)"LOOP", 279, 1 }, { (uint8*)"RETURN", 392, 1 }, { (uint8*)"IF", 266, 1 }, { (uint8*)"THEN", 267, 1 }, { (uint8*)"ELSE", 268, 1 }, { (uint8*)"ELSEIF", 269, 1 }, { (uint8*)"ENDIF", 314, 1 }, { (uint8*)"SELECT", 270, 1 }, { (uint8*)"CASE", 271, 1 }, { (uint8*)"IS", 272, 1 }, { (uint8*)"USING", 287, 1 }, { (uint8*)"LEN", 465, 2 }, { (uint8*)"PEEK", 467, 1 }, { (uint8*)"POKE", 468, 1 }, { (uint8*)"SWAP", 469, 1 }, { (uint8*)"COMMON", 311, 1 }, { (uint8*)"ENUM", 338, 1 }, { (uint8*)"ASM", 344, 1, 1 }, { (uint8*)"EXTERN", 306, 1, 1 }, { (uint8*)"WITH", 280, 1, 1 }, { (uint8*)"SCOPE", 285, 1, 1 }, { (uint8*)"PUBLIC", 378, 1, 1 }, { (uint8*)"PRIVATE", 379, 1, 1 }, { (uint8*)"PROTECTED", 380, 1, 1 }, { (uint8*)"PROCPTR", 398, 1, 1 }, { (uint8*)"NAMESPACE", 286, 1, 1 }, { (uint8*)"EXPORT", 341, 1, 1 }, { (uint8*)"IMPORT", 342, 1, 1 }, { (uint8*)"OVERLOAD", 388, 1, 1 }, { (uint8*)"CONSTRUCTOR", 347, 1, 1 }, { (uint8*)"DESTRUCTOR", 348, 1, 1 }, { (uint8*)"OPERATOR", 349, 1, 1 }, { (uint8*)"PROPERTY", 350, 1, 1 }, { (uint8*)"CLASS", 339, 1, 1 }, { (uint8*)"EXTENDS", 351, 1, 1 }, { (uint8*)"IMPLEMENTS", 352, 1, 1 }, { (uint8*)"BASE", 353, 1, 1 }, { (uint8*)"VIRTUAL", 354, 1, 1 }, { (uint8*)"ABSTRACT", 355, 1, 1 }, { (uint8*)"VAR", 309, 1, 1 }, { (uint8*)"IIF", 503, 1, 1 }, { (uint8*)"VA_FIRST", 497, 1, 1 }, { (uint8*)"DATA", 447, 2 }, { (uint8*)"FIELD", 493, 2 }, { (uint8*)"LOCAL", 500, 2 }, { (uint8*)"DEFINED", 315, 2 }, { (uint8*)"SIZEOF", 466, 2, 1 }, { (uint8*)"STRPTR", 397, 2 }, { (uint8*)"VARPTR", 396, 2 }, { (uint8*)"DYNAMIC", 317, 2 }, { (uint8*)"INCLUDE", 316, 2 }, { (uint8*)"GOSUB", 394, 2 }, { (uint8*)"DEFBYTE", 321, 2, 1 }, { (uint8*)"DEFUBYTE", 322, 2, 1 }, { (uint8*)"DEFSHORT", 323, 2, 1 }, { (uint8*)"DEFUSHORT", 324, 2, 1 }, { (uint8*)"DEFINT", 325, 2 }, { (uint8*)"DEFUINT", 326, 2, 1 }, { (uint8*)"DEFLNG", 327, 2 }, { (uint8*)"DEFULNG", 328, 2, 1 }, { (uint8*)"DEFLONGINT", 329, 2, 1 }, { (uint8*)"DEFULONGINT", 330, 2, 1 }, { (uint8*)"DEFSNG", 331, 2 }, { (uint8*)"DEFDBL", 332, 2 }, { (uint8*)"DEFSTR", 333, 2 }, { (uint8*)"OPTION", 343, 2 }, { (uint8*)"EXPLICIT", 318, 2, 1 }, { (uint8*)"SADD", 399, 2 }, { (uint8*)"ON", 498, 2 }, { (uint8*)"ERROR", 499, 2 }, { (uint8*)"SIN", 452, 2 }, { (uint8*)"ASIN", 453, 2, 1 }, { (uint8*)"COS", 454, 2 }, { (uint8*)"ACOS", 455, 2, 1 }, { (uint8*)"TAN", 456, 2 }, { (uint8*)"ATN", 457, 2 }, { (uint8*)"SQR", 458, 2 }, { (uint8*)"LOG", 459, 2 }, { (uint8*)"EXP", 460, 2 }, { (uint8*)"ATAN2", 462, 2, 1 }, { (uint8*)"RESUME", 502, 2 }, { (uint8*)"ERR", 501, 2 }, { (uint8*)"REDIM", 310, 2 }, { (uint8*)"ERASE", 494, 2 }, { (uint8*)"LBOUND", 495, 2 }, { (uint8*)"UBOUND", 496, 2 }, { (uint8*)"STR", 423, 2, 2 }, { (uint8*)"CVD", 424, 2 }, { (uint8*)"CVS", 425, 2 }, { (uint8*)"CVI", 426, 2 }, { (uint8*)"CVL", 427, 2 }, { (uint8*)"CVSHORT", 428, 2, 1 }, { (uint8*)"CVLONGINT", 429, 2, 1 }, { (uint8*)"MKD", 430, 2, 2 }, { (uint8*)"MKS", 431, 2, 2 }, { (uint8*)"MKI", 432, 2, 2 }, { (uint8*)"MKL", 433, 2, 2 }, { (uint8*)"MKSHORT", 434, 2, 1 }, { (uint8*)"MKLONGINT", 435, 2, 1 }, { (uint8*)"WSTR", 436, 2, 1 }, { (uint8*)"MID", 437, 2, 2 }, { (uint8*)"INSTR", 438, 2 }, { (uint8*)"INSTRREV", 439, 2, 1 }, { (uint8*)"TRIM", 440, 2, 1 }, { (uint8*)"RTRIM", 441, 2, 2 }, { (uint8*)"LTRIM", 442, 2, 2 }, { (uint8*)"LCASE", 443, 2, 2 }, { (uint8*)"UCASE", 444, 2, 2 }, { (uint8*)"RESTORE", 445, 2 }, { (uint8*)"READ", 446, 2 }, { (uint8*)"PRINT", 463, 2 }, { (uint8*)"LPRINT", 464, 2 }, { (uint8*)"OPEN", 470, 2 }, { (uint8*)"CLOSE", 471, 2 }, { (uint8*)"SEEK", 472, 2 }, { (uint8*)"PUT", 473, 2 }, { (uint8*)"GET", 474, 2 }, { (uint8*)"ACCESS", 475, 2 }, { (uint8*)"WRITE", 476, 2 }, { (uint8*)"LOCK", 477, 2 }, { (uint8*)"INPUT", 478, 2 }, { (uint8*)"WINPUT", 479, 2, 1 }, { (uint8*)"OUTPUT", 480, 2 }, { (uint8*)"BINARY", 481, 2 }, { (uint8*)"RANDOM", 482, 2 }, { (uint8*)"APPEND", 483, 2 }, { (uint8*)"ENCODING", 484, 2, 1 }, { (uint8*)"NAME", 485, 2 }, { (uint8*)"WIDTH", 491, 2 }, { (uint8*)"COLOR", 492, 2 }, { (uint8*)"PRESERVE", 313, 2 }, { (uint8*)"SPC", 486, 2 }, { (uint8*)"TAB", 487, 2 }, { (uint8*)"LINE", 488, 2 }, { (uint8*)"VIEW", 489, 2 }, { (uint8*)"UNLOCK", 490, 2 }, { (uint8*)"CHR", 421, 2, 2 }, { (uint8*)"WCHR", 422, 2, 1 }, { (uint8*)"ASC", 420, 2 }, { (uint8*)"LSET", 418, 2 }, { (uint8*)"RSET", 419, 2 }, { (uint8*)"PSET", 504, 2 }, { (uint8*)"PRESET", 505, 2 }, { (uint8*)"POINT", 506, 2 }, { (uint8*)"CIRCLE", 507, 2 }, { (uint8*)"WINDOW", 508, 2 }, { (uint8*)"PALETTE", 509, 2 }, { (uint8*)"SCREEN", 510, 2, 1 }, { (uint8*)"SCREEN", 511, 2, 4 }, { (uint8*)"PAINT", 512, 2 }, { (uint8*)"DRAW", 513, 2 }, { (uint8*)"IMAGECREATE", 514, 2, 1 }, { (uint8*)"THREADCALL", 519, 2, 1 }, { (uint8*)"CVA_START", 515, 1, 1 }, { (uint8*)"CVA_END", 517, 1, 1 }, { (uint8*)"CVA_ARG", 516, 1, 1 }, { (uint8*)"CVA_COPY", 518, 1, 1 }, { (uint8*)0u } };
static uint8 KWDFALSE$[6] = "FALSE";
static uint8 KWDTRUE$[5] = "TRUE";

void SYMBKEYWORDINIT( void )
{
	label$10:;
	int32 I$1;
	I$1 = 0;
	label$12:;
	if( *(uint8**)((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) == (uint8*)0u ) goto label$13;
	{
		uint8* KNAME$2;
		KNAME$2 = *(uint8**)((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31)));
		if( (*(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 12) & 1) == 0 ) goto label$15;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$17;
			{
				FBSTRING TMP$332$4;
				static FBSTRING TMP$4;
				__builtin_memset( &TMP$332$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$332$4, (void*)"__", 3, (void*)KNAME$2, 0 );
				fb_StrAssign( (void*)&TMP$4, -1, (void*)vr$6, -1, 0 );
				KNAME$2 = (uint8*)*(uint8**)&TMP$4;
			}
			label$17:;
			label$16:;
		}
		label$15:;
		label$14:;
		if( (*(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 12) & 4) == 0 ) goto label$19;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$21;
			{
				I$1 = I$1 + 1;
				goto label$12;
			}
			label$21:;
			label$20:;
		}
		label$19:;
		label$18:;
		if( (*(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 12) & 2) == 0 ) goto label$23;
		{
			SYMBADDKEYWORD( KNAME$2, *(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 4), *(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 8), (struct $8FBHASHTB*)0u, 17, 1048576 );
		}
		goto label$22;
		label$23:;
		{
			SYMBADDKEYWORD( KNAME$2, *(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 4), *(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (4 & 31))) + 8), (struct $8FBHASHTB*)0u, -2147483648u, 0 );
		}
		label$22:;
		I$1 = I$1 + 1;
	}
	goto label$12;
	label$13:;
	label$11:;
}

struct $8FBSYMBOL* SYMBADDKEYWORD( uint8* SYMBOL$1, int32 ID$1, int32 CLASS_$1, struct $8FBHASHTB* HASHTB$1, int32 DTYPE$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	struct $8FBSYMBOL* K$1;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 33, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 98408), HASHTB$1, 6, SYMBOL$1, (uint8*)0u, DTYPE$1, (struct $8FBSYMBOL*)0u, ATTRIB$1, 0 );
	K$1 = vr$2;
	if( K$1 != (struct $8FBSYMBOL*)0u ) goto label$27;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$25;
	}
	label$27:;
	label$26:;
	*(int32*)((uint8*)K$1 + 56) = ID$1;
	*($10FB_TKCLASS*)((uint8*)K$1 + 60) = CLASS_$1;
	fb$result$1 = K$1;
	label$25:;
	return fb$result$1;
}

uint8* SYMBKEYWORDGETTEXT( int32 TK$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$28:;
	{
		int32 I$2;
		I$2 = 0;
		label$33:;
		{
			if( *(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$2 << (4 & 31))) + 4) != TK$1 ) goto label$35;
			{
				fb$result$1 = *(uint8**)((int32)(struct $7SYMBKWD*)KWDTB$ + (I$2 << (4 & 31)));
				goto label$29;
			}
			label$35:;
			label$34:;
		}
		label$31:;
		I$2 = I$2 + 1;
		label$30:;
		if( I$2 <= 262 ) goto label$33;
		label$32:;
	}
	fb$result$1 = (uint8*)"";
	label$29:;
	return fb$result$1;
}

void SYMBKEYWORDCONSTSINIT( void )
{
	label$36:;
	union $7FBVALUE V$1;
	__builtin_memset( &V$1, 0, 8 );
	uint8 ID$1[11];
	__builtin_memset( (uint8*)ID$1, 0, 11 );
	$13FB_SYMBATTRIB ATTRIB$1;
	struct $8FBSYMBOL* SYM$1;
	ATTRIB$1 = 3072;
	*(int64*)&V$1 = 0ll;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$39;
	{
		fb_StrAssign( (void*)ID$1, 11, (void*)"__", 3, -1 );
		fb_StrConcatAssign( (void*)ID$1, 11, (void*)KWDFALSE$, 6, -1 );
	}
	goto label$38;
	label$39:;
	{
		fb_StrAssign( (void*)ID$1, 11, (void*)KWDFALSE$, 6, -1 );
	}
	label$38:;
	struct $8FBSYMBOL* vr$7 = SYMBADDCONST( (uint8*)ID$1, 1, (struct $8FBSYMBOL*)0u, &V$1, ATTRIB$1 );
	SYM$1 = vr$7;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$41;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 1048576;
	}
	label$41:;
	label$40:;
	*(int64*)&V$1 = -1ll;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$43;
	{
		fb_StrAssign( (void*)ID$1, 11, (void*)"__", 3, -1 );
		fb_StrConcatAssign( (void*)ID$1, 11, (void*)KWDTRUE$, 5, -1 );
	}
	goto label$42;
	label$43:;
	{
		fb_StrAssign( (void*)ID$1, 11, (void*)KWDTRUE$, 5, -1 );
	}
	label$42:;
	struct $8FBSYMBOL* vr$16 = SYMBADDCONST( (uint8*)ID$1, 1, (struct $8FBSYMBOL*)0u, &V$1, ATTRIB$1 );
	SYM$1 = vr$16;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$45;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 1048576;
	}
	label$45:;
	label$44:;
	label$37:;
}

void SYMBKEYWORDTYPEINIT( void )
{
	label$46:;
	struct $8FBSYMBOL* S$1;
	uint8* PID$1;
	int32 DTYPE$1;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$333$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$49;
	{
		PID$1 = (uint8*)"__cva_list";
	}
	goto label$48;
	label$49:;
	{
		PID$1 = (uint8*)"cva_list";
	}
	label$48:;
	{
		$19FB_CVA_LIST_TYPEDEF TMP$336$2;
		$19FB_CVA_LIST_TYPEDEF vr$0 = FBGETBACKENDVALISTTYPE(  );
		TMP$336$2 = vr$0;
		if( TMP$336$2 != 2 ) goto label$51;
		label$52:;
		{
			DTYPE$1 = 19922976;
			SYMBADDTYPEDEF( PID$1, DTYPE$1, (struct $8FBSYMBOL*)0u, (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 676) );
		}
		goto label$50;
		label$51:;
		if( TMP$336$2 != 3 ) goto label$53;
		label$54:;
		{
			struct $8FBSYMBOL* vr$2 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, (struct $8FBSYMBOL*)0u, (uint8*)"__va_list_tag", (uint8*)"__va_list_tag", 0, 0, 0, 0, 0 );
			S$1 = vr$2;
			SYMBADDFIELD( S$1, (uint8*)"gp_offset", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 12, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"fp_offset", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 12, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"overflow_arg_area", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"reg_save_area", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBSTRUCTEND( S$1, 0 );
			*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 3145728;
			SYMBADDTYPEDEF( PID$1, ((*(int32*)((uint8*)S$1 + 28) & 511) & -32505857) | 19922944, S$1, *(int64*)((uint8*)S$1 + 40) );
		}
		goto label$50;
		label$53:;
		if( TMP$336$2 != 4 ) goto label$55;
		label$56:;
		{
			struct $8FBSYMBOL* vr$11 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, (struct $8FBSYMBOL*)0u, (uint8*)"__va_list", (uint8*)"__va_list", 0, 0, 0, 0, 0 );
			S$1 = vr$11;
			SYMBADDFIELD( S$1, (uint8*)"__stack", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"__gr_top", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"__vr_top", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"__gr_offs", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 11, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBADDFIELD( S$1, (uint8*)"__vr_offs", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 11, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBSTRUCTEND( S$1, 0 );
			*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 4194304;
			SYMBADDTYPEDEF( PID$1, ((*(int32*)((uint8*)S$1 + 28) & 511) & -32505857) | 19922944, S$1, *(int64*)((uint8*)S$1 + 40) );
		}
		goto label$50;
		label$55:;
		if( TMP$336$2 != 5 ) goto label$57;
		label$58:;
		{
			struct $8FBSYMBOL* vr$20 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, (struct $8FBSYMBOL*)0u, (uint8*)"__va_list", (uint8*)"__va_list", 0, 0, 0, 0, 0 );
			S$1 = vr$20;
			SYMBADDFIELD( S$1, (uint8*)"__ap", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$333$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
			SYMBSTRUCTEND( S$1, 0 );
			*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 5242880;
			SYMBADDTYPEDEF( PID$1, ((*(int32*)((uint8*)S$1 + 28) & 511) & -32505857) | 19922944, S$1, *(int64*)((uint8*)S$1 + 40) );
		}
		goto label$50;
		label$57:;
		{
			DTYPE$1 = 4194336;
			SYMBADDTYPEDEF( PID$1, DTYPE$1, (struct $8FBSYMBOL*)0u, (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 676) );
		}
		label$59:;
		label$50:;
	}
	label$47:;
}

__attribute__(( constructor )) static void fb_ctor__symbzkeyword( void )
{
	label$0:;
	label$1:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}
