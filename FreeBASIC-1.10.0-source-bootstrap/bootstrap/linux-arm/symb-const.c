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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_FloatToStr( float );
FBSTRING* fb_DoubleToStr( double );
uint32* fb_StrToWstr( uint8* );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
static void fb_ctor__symbzconst( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL*, uint8*, int32, int32, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int32, struct $8FBSYMBOL*, int64, int32, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDCONST( uint8*, int32, struct $8FBSYMBOL*, union $7FBVALUE*, $13FB_SYMBATTRIB );
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
FBSTRING* HFLOATTOHEX( double, int32 );
uint8* HESCAPEW( uint32* );
uint8* HUNESCAPE( uint8*, int32* );
uint32* HUNESCAPEW( uint32*, int32* );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
static struct $8FBSYMBOL* HALLOCINTORFLOATCONST( FBSTRING*, int32 );
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

struct $8FBSYMBOL* SYMBADDCONST( uint8* SYMBOL$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, union $7FBVALUE* VALUE$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$1 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, 2, (uint8*)SYMBOL$1, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0 );
	SYM$1 = vr$1;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$13;
	{
		goto label$11;
	}
	label$13:;
	label$12:;
	__builtin_memcpy( (union $7FBVALUE*)((uint8*)SYM$1 + 56), VALUE$1, 8 );
	fb$result$1 = SYM$1;
	label$11:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBREUSEORADDCONST( uint8* ID$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, union $7FBVALUE* VALUE$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDCONST( ID$1, DTYPE$1, SUBTYPE$1, VALUE$1, ATTRIB$1 );
	SYM$1 = vr$1;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$17;
	{
		struct $8FBSYMBOL* vr$2 = SYMBLOOKUPBYNAMEANDCLASS( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536), (uint8*)ID$1, 2, 0, 0 );
		SYM$1 = vr$2;
		if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$19;
		{
			goto label$15;
		}
		label$19:;
		label$18:;
		int32 IS_SAME$2;
		IS_SAME$2 = 0;
		if( (-(*(int32*)((uint8*)SYM$1 + 28) == DTYPE$1) & -(*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) == SUBTYPE$1)) == 0 ) goto label$21;
		{
			{
				int32 TMP$82$4;
				TMP$82$4 = DTYPE$1 & 511;
				if( TMP$82$4 == 17 ) goto label$24;
				label$25:;
				if( TMP$82$4 == 4 ) goto label$24;
				label$26:;
				if( TMP$82$4 != 7 ) goto label$23;
				label$24:;
				{
					IS_SAME$2 = -(*(struct $8FBSYMBOL**)VALUE$1 == *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 56));
				}
				goto label$22;
				label$23:;
				if( TMP$82$4 == 15 ) goto label$28;
				label$29:;
				if( TMP$82$4 != 16 ) goto label$27;
				label$28:;
				{
					IS_SAME$2 = -(*(uint64*)VALUE$1 == *(uint64*)((uint8*)SYM$1 + 56));
				}
				goto label$22;
				label$27:;
				{
					IS_SAME$2 = -(*(int64*)VALUE$1 == *(int64*)((uint8*)SYM$1 + 56));
				}
				label$30:;
				label$22:;
			}
		}
		label$21:;
		label$20:;
		if( IS_SAME$2 != 0 ) goto label$32;
		{
			if( (*(int32*)((uint8*)SYM$1 + 12) & 1048576) == 0 ) goto label$34;
			{
				ERRREPORTWARN( 39, (uint8*)0u, 1, (uint8*)0u );
				SYMBDELFROMHASH( SYM$1 );
				struct $8FBSYMBOL* vr$20 = SYMBADDCONST( ID$1, DTYPE$1, SUBTYPE$1, VALUE$1, ATTRIB$1 );
				SYM$1 = vr$20;
			}
			goto label$33;
			label$34:;
			{
				SYM$1 = (struct $8FBSYMBOL*)0u;
			}
			label$33:;
		}
		goto label$31;
		label$32:;
		{
			*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) & -1048577;
		}
		label$31:;
	}
	label$17:;
	label$16:;
	fb$result$1 = SYM$1;
	label$15:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCFLOATCONST( double VALUE$1, int32 DTYPE$1 )
{
	FBSTRING TMP$86$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$39:;
	__builtin_memset( &TMP$86$1, 0, 12 );
	FBSTRING* vr$2 = HFLOATTOHEX( VALUE$1, DTYPE$1 );
	fb_StrAssign( (void*)&TMP$86$1, -1, (void*)vr$2, -1, 0 );
	struct $8FBSYMBOL* vr$5 = HALLOCINTORFLOATCONST( &TMP$86$1, DTYPE$1 );
	fb$result$1 = vr$5;
	fb_StrDelete( (FBSTRING*)&TMP$86$1 );
	label$40:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCINTCONST( int64 VALUE$1, int32 DTYPE$1 )
{
	int32 TMP$88$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$41:;
	FBSTRING SVALUE$1;
	fb_StrInit( (void*)&SVALUE$1, -1, (void*)"0x", 3, 0 );
	if( (DTYPE$1 & 480) == 0 ) goto label$43;
	TMP$88$1 = 24;
	goto label$46;
	label$43:;
	TMP$88$1 = DTYPE$1 & 31;
	label$46:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$1 * 28)) + 4) != 8 ) goto label$45;
	{
		FBSTRING* vr$5 = fb_HEXEx_l( (uint64)VALUE$1, 16 );
		fb_StrConcatAssign( (void*)&SVALUE$1, -1, (void*)vr$5, -1, 0 );
	}
	goto label$44;
	label$45:;
	{
		FBSTRING* vr$8 = fb_HEXEx_i( (uint32)VALUE$1, 8 );
		fb_StrConcatAssign( (void*)&SVALUE$1, -1, (void*)vr$8, -1, 0 );
	}
	label$44:;
	struct $8FBSYMBOL* vr$11 = HALLOCINTORFLOATCONST( &SVALUE$1, DTYPE$1 );
	fb$result$1 = vr$11;
	fb_StrDelete( (FBSTRING*)&SVALUE$1 );
	label$42:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8* SNAME$1, int32 STRLENGTH$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$47:;
	static uint8 ID$1[134];
	static uint8 ID_ALIAS$1[134];
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$89$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	int32 INTERNALSTRLEN$1;
	int32 vr$1 = fb_StrLen( (void*)SNAME$1, 0 );
	INTERNALSTRLEN$1 = vr$1;
	if( STRLENGTH$1 >= 0 ) goto label$50;
	{
		STRLENGTH$1 = INTERNALSTRLEN$1;
	}
	label$50:;
	label$49:;
	if( INTERNALSTRLEN$1 > 122 ) goto label$52;
	{
		FBSTRING TMP$91$2;
		fb_StrAssign( (void*)ID$1, 134, (void*)"{fbsc}", 7, 0 );
		__builtin_memset( &TMP$91$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$91$2, (void*)ID$1, 134, (void*)SNAME$1, 0 );
		fb_StrAssign( (void*)ID$1, 134, (void*)vr$4, -1, 0 );
	}
	goto label$51;
	label$52:;
	{
		uint8* vr$5 = SYMBUNIQUEID( (boolean)0 );
		fb_StrAssign( (void*)ID$1, 134, (void*)vr$5, 0, 0 );
	}
	label$51:;
	struct $8FBSYMBOL* vr$7 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352), (uint8*)ID$1, 1, -1, 0 );
	S$1 = vr$7;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$54;
	{
		fb$result$1 = S$1;
		goto label$48;
	}
	label$54:;
	label$53:;
	uint8* vr$8 = SYMBUNIQUEID( (boolean)0 );
	fb_StrAssign( (void*)ID_ALIAS$1, 134, (void*)vr$8, 0, 0 );
	int32 STRSIZE$1;
	STRSIZE$1 = STRLENGTH$1 + 1;
	struct $8FBSYMBOL* vr$11 = SYMBADDVAR( (uint8*)ID$1, (uint8*)ID_ALIAS$1, 4, (struct $8FBSYMBOL*)0u, (int64)STRSIZE$1, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$89$1, 3073, 137 );
	S$1 = vr$11;
	void* vr$13 = XALLOCATE( INTERNALSTRLEN$1 + 1 );
	*(uint8**)((uint8*)S$1 + 56) = (uint8*)vr$13;
	fb_StrAssign( *(void**)((uint8*)S$1 + 56), 0, (void*)SNAME$1, 0, 0 );
	fb$result$1 = S$1;
	label$48:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32* SNAME$1, int32 STRLENGTH$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$55:;
	static uint8 ID$1[134];
	static uint8 ID_ALIAS$1[134];
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$92$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	int32 INTERNALSTRLEN$1;
	int32 vr$1 = fb_WstrLen( (uint32*)SNAME$1 );
	INTERNALSTRLEN$1 = vr$1;
	if( STRLENGTH$1 >= 0 ) goto label$58;
	{
		STRLENGTH$1 = INTERNALSTRLEN$1;
	}
	label$58:;
	label$57:;
	if( (INTERNALSTRLEN$1 << (4 & 31)) > 122 ) goto label$60;
	{
		FBSTRING TMP$94$2;
		fb_StrAssign( (void*)ID$1, 134, (void*)"{fbwc}", 7, 0 );
		uint8* vr$3 = HESCAPEW( (uint32*)SNAME$1 );
		__builtin_memset( &TMP$94$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$94$2, (void*)ID$1, 134, (void*)vr$3, 0 );
		fb_StrAssign( (void*)ID$1, 134, (void*)vr$6, -1, 0 );
	}
	goto label$59;
	label$60:;
	{
		uint8* vr$7 = SYMBUNIQUEID( (boolean)0 );
		fb_StrAssign( (void*)ID$1, 134, (void*)vr$7, 0, 0 );
	}
	label$59:;
	struct $8FBSYMBOL* vr$9 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352), (uint8*)ID$1, 1, -1, 0 );
	S$1 = vr$9;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$62;
	{
		fb$result$1 = S$1;
		goto label$56;
	}
	label$62:;
	label$61:;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)0 );
	fb_StrAssign( (void*)ID_ALIAS$1, 134, (void*)vr$10, 0, 0 );
	int32 STRSIZE$1;
	STRSIZE$1 = (STRLENGTH$1 + 1) * *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	struct $8FBSYMBOL* vr$14 = SYMBADDVAR( (uint8*)ID$1, (uint8*)ID_ALIAS$1, 7, (struct $8FBSYMBOL*)0u, (int64)STRSIZE$1, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$92$1, 3073, 137 );
	S$1 = vr$14;
	void* vr$17 = XALLOCATE( (INTERNALSTRLEN$1 << (2 & 31)) + 4 );
	*(uint32**)((uint8*)S$1 + 56) = (uint32*)vr$17;
	fb_WstrAssign( *(uint32**)((uint8*)S$1 + 56), 0, (uint32*)SNAME$1 );
	fb$result$1 = S$1;
	label$56:;
	return fb$result$1;
}

void SYMBDELCONST( struct $8FBSYMBOL* S$1 )
{
	label$63:;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$66;
	{
		goto label$64;
	}
	label$66:;
	label$65:;
	SYMBFREESYMBOL( S$1 );
	label$64:;
}

FBSTRING* SYMBGETCONSTVALUEASSTR( struct $8FBSYMBOL* S$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$67:;
	{
		int32 TMP$95$2;
		TMP$95$2 = *(int32*)((uint8*)S$1 + 28) & 511;
		if( TMP$95$2 == 17 ) goto label$71;
		label$72:;
		if( TMP$95$2 == 18 ) goto label$71;
		label$73:;
		if( TMP$95$2 != 4 ) goto label$70;
		label$71:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)S$1 + 56) + 56), 0, 0 );
		}
		goto label$69;
		label$70:;
		if( TMP$95$2 != 16 ) goto label$74;
		label$75:;
		{
			FBSTRING* vr$7 = fb_DoubleToStr( *(double*)((uint8*)S$1 + 56) );
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$7, -1, 0 );
		}
		goto label$69;
		label$74:;
		if( TMP$95$2 != 15 ) goto label$76;
		label$77:;
		{
			FBSTRING* vr$11 = fb_FloatToStr( (float)*(double*)((uint8*)S$1 + 56) );
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$11, -1, 0 );
		}
		goto label$69;
		label$76:;
		{
			int32 TMP$96$3;
			if( (*(int32*)((uint8*)S$1 + 28) & 480) == 0 ) goto label$79;
			TMP$96$3 = 24;
			goto label$82;
			label$79:;
			TMP$96$3 = *(int32*)((uint8*)S$1 + 28) & 31;
			label$82:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$3 * 28)) + 8) == 0 ) goto label$81;
			{
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)S$1 + 56) );
				fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$19, -1, 0 );
			}
			goto label$80;
			label$81:;
			{
				FBSTRING* vr$22 = fb_ULongintToStr( *(uint64*)((uint8*)S$1 + 56) );
				fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$22, -1, 0 );
			}
			label$80:;
		}
		label$78:;
		label$69:;
	}
	label$68:;
	FBSTRING* vr$25 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$25;
}

struct $8FBSYMBOL* SYMBCLONECONST( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$83:;
	struct $8FBSYMBOL* vr$7 = SYMBADDCONST( (uint8*)0u, *(int32*)((uint8*)SYM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), (union $7FBVALUE*)((uint8*)SYM$1 + 56), *($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) );
	fb$result$1 = vr$7;
	label$84:;
	return fb$result$1;
}

uint8* SYMBGETCONSTSTRASSTR( struct $8FBSYMBOL* S$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$85:;
	static struct $8DZSTRING RES$1;
	DZSTRASSIGN( &RES$1, (uint8*)0u );
	if( (*(int32*)((uint8*)S$1 + 28) & 511) == 7 ) goto label$88;
	{
		int32 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 4 );
		uint8* TEXT$2;
		uint8* vr$6 = HUNESCAPE( *(uint8**)((uint8*)S$1 + 56), &TEXTLEN$2 );
		TEXT$2 = vr$6;
		int32 vr$7 = fb_StrLen( (void*)TEXT$2, 0 );
		if( vr$7 == TEXTLEN$2 ) goto label$90;
		{
			DZSTRCONCATASSIGN( &RES$1, (uint8*)"!\x22" );
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$100$4;
				TMP$100$4 = TEXTLEN$2 + -1;
				goto label$91;
				label$94:;
				{
					FBSTRING TMP$102$5;
					FBSTRING TMP$103$5;
					__builtin_memset( &TMP$103$5, 0, 12 );
					FBSTRING* vr$12 = fb_HEXEx_i( (uint32)*(uint8*)((uint8*)TEXT$2 + I$4), 2 );
					__builtin_memset( &TMP$102$5, 0, 12 );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$102$5, (void*)"\x5Cx", 3, (void*)vr$12, -1 );
					fb_StrAssign( (void*)&TMP$103$5, -1, (void*)vr$15, -1, 0 );
					DZSTRCONCATASSIGN( &RES$1, (uint8*)*(uint8**)&TMP$103$5 );
					fb_StrDelete( (FBSTRING*)&TMP$103$5 );
				}
				label$92:;
				I$4 = I$4 + 1;
				label$91:;
				if( I$4 <= TMP$100$4 ) goto label$94;
				label$93:;
			}
		}
		goto label$89;
		label$90:;
		{
			DZSTRCONCATASSIGN( &RES$1, (uint8*)"$\x22" );
			DZSTRCONCATASSIGN( &RES$1, (uint8*)TEXT$2 );
		}
		label$89:;
		DZSTRCONCATASSIGN( &RES$1, (uint8*)"\x22" );
	}
	goto label$87;
	label$88:;
	{
		int32 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 4 );
		uint32* TEXT$2;
		uint32* vr$22 = HUNESCAPEW( *(uint32**)((uint8*)S$1 + 56), &TEXTLEN$2 );
		TEXT$2 = vr$22;
		DZSTRCONCATASSIGN( &RES$1, (uint8*)"!\x22" );
		{
			int32 I$3;
			I$3 = 0;
			int32 TMP$106$3;
			TMP$106$3 = TEXTLEN$2 + -1;
			goto label$95;
			label$98:;
			{
				FBSTRING TMP$108$4;
				FBSTRING TMP$109$4;
				__builtin_memset( &TMP$109$4, 0, 12 );
				FBSTRING* vr$27 = fb_HEXEx_i( *(uint32*)((uint8*)TEXT$2 + (I$3 << (2 & 31))), 4 );
				__builtin_memset( &TMP$108$4, 0, 12 );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$108$4, (void*)"\x5Cu", 3, (void*)vr$27, -1 );
				fb_StrAssign( (void*)&TMP$109$4, -1, (void*)vr$30, -1, 0 );
				DZSTRCONCATASSIGN( &RES$1, (uint8*)*(uint8**)&TMP$109$4 );
				fb_StrDelete( (FBSTRING*)&TMP$109$4 );
			}
			label$96:;
			I$3 = I$3 + 1;
			label$95:;
			if( I$3 <= TMP$106$3 ) goto label$98;
			label$97:;
		}
		DZSTRCONCATASSIGN( &RES$1, (uint8*)"\x22" );
	}
	label$87:;
	fb$result$1 = *(uint8**)&RES$1;
	goto label$86;
	label$86:;
	return fb$result$1;
}

uint32* SYMBGETCONSTSTRASWSTR( struct $8FBSYMBOL* S$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$99:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( (*(int32*)((uint8*)S$1 + 28) & 511) != 7 ) goto label$102;
	{
		int32 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 4 );
		uint32* TEXT$2;
		uint32* vr$6 = HUNESCAPEW( *(uint32**)((uint8*)S$1 + 56), &TEXTLEN$2 );
		TEXT$2 = vr$6;
		int32 vr$7 = fb_WstrLen( (uint32*)TEXT$2 );
		if( vr$7 == TEXTLEN$2 ) goto label$104;
		{
			DWSTRCONCATASSIGN( &RES$1, (uint32*)L"!\x00000022" );
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$111$4;
				TMP$111$4 = TEXTLEN$2 + -1;
				goto label$105;
				label$108:;
				{
					FBSTRING TMP$112$5;
					FBSTRING TMP$113$5;
					uint32* TMP$114$5;
					__builtin_memset( &TMP$113$5, 0, 12 );
					FBSTRING* vr$12 = fb_HEXEx_i( *(uint32*)((uint8*)TEXT$2 + (I$4 << (2 & 31))), 4 );
					__builtin_memset( &TMP$112$5, 0, 12 );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$112$5, (void*)"\x5Cu", 3, (void*)vr$12, -1 );
					fb_StrAssign( (void*)&TMP$113$5, -1, (void*)vr$15, -1, 0 );
					uint32* vr$17 = fb_StrToWstr( (uint8*)*(uint8**)&TMP$113$5 );
					TMP$114$5 = vr$17;
					DWSTRCONCATASSIGN( &RES$1, (uint32*)TMP$114$5 );
					fb_WstrDelete( (uint32*)TMP$114$5 );
					fb_StrDelete( (FBSTRING*)&TMP$113$5 );
				}
				label$106:;
				I$4 = I$4 + 1;
				label$105:;
				if( I$4 <= TMP$111$4 ) goto label$108;
				label$107:;
			}
		}
		goto label$103;
		label$104:;
		{
			DWSTRCONCATASSIGN( &RES$1, (uint32*)L"$\x00000022" );
			DWSTRCONCATASSIGN( &RES$1, (uint32*)TEXT$2 );
		}
		label$103:;
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"\x00000022" );
	}
	goto label$101;
	label$102:;
	{
		int32 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 4 );
		uint8* TEXT$2;
		uint8* vr$23 = HUNESCAPE( *(uint8**)((uint8*)S$1 + 56), &TEXTLEN$2 );
		TEXT$2 = vr$23;
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"!\x00000022" );
		{
			int32 I$3;
			I$3 = 0;
			int32 TMP$117$3;
			TMP$117$3 = TEXTLEN$2 + -1;
			goto label$109;
			label$112:;
			{
				FBSTRING TMP$118$4;
				FBSTRING TMP$119$4;
				uint32* TMP$120$4;
				__builtin_memset( &TMP$119$4, 0, 12 );
				FBSTRING* vr$28 = fb_HEXEx_i( (uint32)*(uint8*)((uint8*)TEXT$2 + I$3), 4 );
				__builtin_memset( &TMP$118$4, 0, 12 );
				FBSTRING* vr$31 = fb_StrConcat( &TMP$118$4, (void*)"\x5Cu", 3, (void*)vr$28, -1 );
				fb_StrAssign( (void*)&TMP$119$4, -1, (void*)vr$31, -1, 0 );
				uint32* vr$33 = fb_StrToWstr( (uint8*)*(uint8**)&TMP$119$4 );
				TMP$120$4 = vr$33;
				DWSTRCONCATASSIGN( &RES$1, (uint32*)TMP$120$4 );
				fb_WstrDelete( (uint32*)TMP$120$4 );
				fb_StrDelete( (FBSTRING*)&TMP$119$4 );
			}
			label$110:;
			I$3 = I$3 + 1;
			label$109:;
			if( I$3 <= TMP$117$3 ) goto label$112;
			label$111:;
		}
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"\x00000022" );
	}
	label$101:;
	fb$result$1 = *(uint32**)&RES$1;
	goto label$100;
	label$100:;
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

static struct $8FBSYMBOL* HALLOCINTORFLOATCONST( FBSTRING* SVALUE$1, int32 DTYPE$1 )
{
	FBSTRING TMP$85$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$35:;
	static uint8 ID$1[134];
	struct $10FBARRAYDIM DTB$1[1];
	__builtin_memset( (struct $10FBARRAYDIM*)DTB$1, 0, 16 );
	struct $8FBARRAY1I10FBARRAYDIME tmp$83$1;
	*(struct $10FBARRAYDIM**)&tmp$83$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$83$1 + 4) = (struct $10FBARRAYDIM*)DTB$1;
	*(int32*)((uint8*)&tmp$83$1 + 8) = 16;
	*(int32*)((uint8*)&tmp$83$1 + 12) = 16;
	*(int32*)((uint8*)&tmp$83$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$83$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$83$1 + 24) = 1;
	*(int32*)((uint8*)&tmp$83$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$83$1 + 32) = 0;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	fb_StrAssign( (void*)ID$1, 134, (void*)"{fbnc}", 7, 0 );
	__builtin_memset( &TMP$85$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$85$1, (void*)ID$1, 134, (void*)SVALUE$1, -1 );
	fb_StrAssign( (void*)ID$1, 134, (void*)vr$6, -1, 0 );
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$8 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352), (uint8*)ID$1, 1, -1, 0 );
	S$1 = vr$8;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$38;
	{
		fb$result$1 = S$1;
		goto label$36;
	}
	label$38:;
	label$37:;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)0 );
	struct $8FBSYMBOL* vr$11 = SYMBADDVAR( (uint8*)ID$1, (uint8*)vr$10, DTYPE$1, (struct $8FBSYMBOL*)0u, 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$83$1, 3073, 137 );
	S$1 = vr$11;
	int32 vr$12 = fb_StrLen( (void*)SVALUE$1, -1 );
	void* vr$14 = XALLOCATE( vr$12 + 1 );
	*(uint8**)((uint8*)S$1 + 56) = (uint8*)vr$14;
	fb_StrAssign( *(void**)((uint8*)S$1 + 56), 0, (void*)SVALUE$1, -1, 0 );
	fb$result$1 = S$1;
	label$36:;
	return fb$result$1;
}
