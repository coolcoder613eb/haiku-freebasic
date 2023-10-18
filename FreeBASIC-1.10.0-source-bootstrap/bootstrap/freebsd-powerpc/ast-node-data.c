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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
int64 __divdi3( int64, int64 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrLen( void*, int32 );
static void fb_ctor__astznodezdata( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int32, struct $8FBSYMBOL*, int32, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTDATASTMTSTORE( struct $7ASTNODE*, struct $7ASTNODE* );
struct $8FBSYMBOL* ASTDATASTMTADD( struct $8FBSYMBOL*, int32 );
struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL*, uint8*, int32, int32, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int32, struct $8FBSYMBOL*, int64, int32, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int32, int32, int32, $13FB_SYMBATTRIB, int32 );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int32, struct $7FBARRAYI10FBARRAYDIME*, int32, struct $8FBSYMBOL*, int64, int32, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int32 );
void SYMBSETARRAYDIMTB( struct $8FBSYMBOL*, int32, struct $7FBARRAYI10FBARRAYDIME* );
void SYMBMAYBEADDARRAYDESC( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
static void HCREATEDATADESC( void );
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

void ASTDATASTMTINIT( void )
{
	label$10:;
	*(struct $8FBSYMBOL**)((uint8*)&AST$ + 120) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&AST$ + 124) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&AST$ + 128) = (struct $8FBSYMBOL*)0u;
	HCREATEDATADESC(  );
	label$11:;
}

struct $7ASTNODE* ASTDATASTMTBEGIN( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$12:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 29, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 24) = 0;
	fb$result$1 = N$1;
	label$13:;
	return fb$result$1;
}

struct $7ASTNODE* ASTDATASTMTSTORE( struct $7ASTNODE* TREE$1, struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 29, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = EXPR$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = (struct $7ASTNODE*)0u;
	if( *(struct $7ASTNODE**)((uint8*)TREE$1 + 64) != (struct $7ASTNODE*)0u ) goto label$17;
	{
		*(struct $7ASTNODE**)((uint8*)TREE$1 + 64) = N$1;
	}
	goto label$16;
	label$17:;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREE$1 + 68) + 68) = N$1;
	}
	label$16:;
	*(struct $7ASTNODE**)((uint8*)TREE$1 + 68) = N$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$19;
	{
		*(int32*)((uint8*)N$1 + 24) = 65535;
	}
	goto label$18;
	label$19:;
	{
		struct $8FBSYMBOL* LITSYM$2;
		{
			int32 TMP$82$3;
			TMP$82$3 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			if( TMP$82$3 == 4 ) goto label$22;
			label$23:;
			if( TMP$82$3 != 7 ) goto label$21;
			label$22:;
			{
				struct $8FBSYMBOL* vr$12 = ASTGETSTRLITSYMBOL( EXPR$1 );
				LITSYM$2 = vr$12;
			}
			goto label$20;
			label$21:;
			{
				LITSYM$2 = (struct $8FBSYMBOL*)0u;
			}
			label$24:;
			label$20:;
		}
		if( LITSYM$2 == (struct $8FBSYMBOL*)0u ) goto label$26;
		{
			if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) == 7 ) goto label$28;
			{
				*(int32*)((uint8*)N$1 + 24) = 1;
			}
			goto label$27;
			label$28:;
			{
				*(int32*)((uint8*)N$1 + 24) = 32768;
			}
			label$27:;
		}
		goto label$25;
		label$26:;
		{
			if( *(int32*)EXPR$1 != 23 ) goto label$30;
			{
				*(int32*)((uint8*)N$1 + 24) = 65534;
			}
			goto label$29;
			label$30:;
			{
				*(int32*)((uint8*)N$1 + 24) = 2;
			}
			label$29:;
		}
		label$25:;
	}
	label$18:;
	*(int32*)((uint8*)TREE$1 + 24) = *(int32*)((uint8*)TREE$1 + 24) + 1;
	fb$result$1 = N$1;
	label$15:;
	return fb$result$1;
}

void ASTDATASTMTEND( struct $7ASTNODE* TREE$1 )
{
	label$31:;
	struct $8FBSYMBOL* ARRAY$1;
	struct $8FBSYMBOL* ELM$1;
	int32 I$1;
	int32 ID$1;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* INITREE$1;
	FBSTRING LITTEXT$1;
	__builtin_memset( &LITTEXT$1, 0, 12 );
	ASTDATASTMTSTORE( TREE$1, (struct $7ASTNODE*)0u );
	struct $8FBSYMBOL* vr$2 = ASTDATASTMTADD( (struct $8FBSYMBOL*)0u, *(int32*)((uint8*)TREE$1 + 24) );
	ARRAY$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTTYPEINIBEGIN( 20, *(struct $8FBSYMBOL**)((uint8*)&AST$ + 116), -1, 0ll );
	INITREE$1 = vr$3;
	ASTTYPEINISCOPEBEGIN( INITREE$1, ARRAY$1, -1 );
	N$1 = *(struct $7ASTNODE**)((uint8*)TREE$1 + 64);
	{
		I$1 = 0;
		int32 TMP$83$2;
		TMP$83$2 = *(int32*)((uint8*)TREE$1 + 24) + -1;
		goto label$33;
		label$36:;
		{
			ID$1 = *(int32*)((uint8*)N$1 + 24);
			EXPR$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
			ASTTYPEINISCOPEBEGIN( INITREE$1, ARRAY$1, 0 );
			{
				int32 TMP$84$4;
				TMP$84$4 = *(int32*)((uint8*)N$1 + 24);
				if( TMP$84$4 != 1 ) goto label$38;
				label$39:;
				{
					struct $8FBSYMBOL* vr$10 = ASTGETSTRLITSYMBOL( EXPR$1 );
					ID$1 = (int32)(*(int64*)((uint8*)vr$10 + 40) + -1ll);
					struct $7ASTNODE* vr$13 = ASTNEWADDROF( EXPR$1 );
					EXPR$1 = vr$13;
				}
				goto label$37;
				label$38:;
				if( TMP$84$4 != 32768 ) goto label$40;
				label$41:;
				{
					struct $8FBSYMBOL* vr$15 = ASTGETSTRLITSYMBOL( EXPR$1 );
					int64 vr$16 = __divdi3( *(int64*)((uint8*)vr$15 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
					ID$1 = (int32)(vr$16 + 32767ll);
					struct $7ASTNODE* vr$19 = ASTNEWADDROF( EXPR$1 );
					EXPR$1 = vr$19;
				}
				goto label$37;
				label$40:;
				if( TMP$84$4 != 2 ) goto label$42;
				label$43:;
				{
					FBSTRING* vr$20 = ASTCONSTFLUSHTOSTR( EXPR$1 );
					fb_StrAssign( (void*)&LITTEXT$1, -1, (void*)vr$20, -1, 0 );
					int32 vr$23 = fb_StrLen( (void*)&LITTEXT$1, -1 );
					ID$1 = vr$23;
					struct $7ASTNODE* vr$24 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&LITTEXT$1 );
					struct $7ASTNODE* vr$25 = ASTNEWADDROF( vr$24 );
					EXPR$1 = vr$25;
				}
				goto label$37;
				label$42:;
				if( TMP$84$4 == 0 ) goto label$45;
				label$46:;
				if( TMP$84$4 != 65535 ) goto label$44;
				label$45:;
				{
					struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
					EXPR$1 = vr$26;
				}
				label$44:;
				label$37:;
			}
			ELM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&AST$ + 116) + 60);
			struct $7ASTNODE* vr$29 = ASTNEWCONSTI( (int64)ID$1, 5, (struct $8FBSYMBOL*)0u );
			ASTTYPEINIADDASSIGN( INITREE$1, vr$29, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
			ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
			ASTTYPEINIADDASSIGN( INITREE$1, EXPR$1, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
			ASTTYPEINISCOPEEND( INITREE$1, ARRAY$1 );
			struct $7ASTNODE* NXT$3;
			NXT$3 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
			ASTDELNODE( N$1 );
			N$1 = NXT$3;
		}
		label$34:;
		I$1 = I$1 + 1;
		label$33:;
		if( I$1 <= TMP$83$2 ) goto label$36;
		label$35:;
	}
	ASTTYPEINISCOPEEND( INITREE$1, ARRAY$1 );
	ASTTYPEINIEND( INITREE$1, -1 );
	*(struct $7ASTNODE**)((uint8*)ARRAY$1 + 56) = INITREE$1;
	if( *(struct $8FBSYMBOL**)((uint8*)&AST$ + 120) == (struct $8FBSYMBOL*)0u ) goto label$48;
	{
		INITREE$1 = *(struct $7ASTNODE**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&AST$ + 120) + 56);
		N$1 = *(struct $7ASTNODE**)((uint8*)INITREE$1 + 64);
		struct $7ASTNODE* TN$2;
		TN$2 = N$1;
		label$49:;
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) == (struct $7ASTNODE*)0u ) goto label$50;
		{
			if( *(int32*)N$1 != 38 ) goto label$52;
			{
				TN$2 = N$1;
			}
			label$52:;
			label$51:;
			N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
		}
		goto label$49;
		label$50:;
		ASTDELNODE( *(struct $7ASTNODE**)((uint8*)TN$2 + 64) );
		struct $7ASTNODE* vr$40 = ASTNEWVAR( ARRAY$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$41 = ASTNEWADDROF( vr$40 );
		*(struct $7ASTNODE**)((uint8*)TN$2 + 64) = vr$41;
	}
	label$48:;
	label$47:;
	*(struct $8FBSYMBOL**)((uint8*)ARRAY$1 + 108) = *(struct $8FBSYMBOL**)((uint8*)&AST$ + 120);
	*(struct $8FBSYMBOL**)((uint8*)&AST$ + 120) = ARRAY$1;
	if( *(struct $8FBSYMBOL**)((uint8*)&AST$ + 124) != (struct $8FBSYMBOL*)0u ) goto label$54;
	{
		*(struct $8FBSYMBOL**)((uint8*)&AST$ + 124) = ARRAY$1;
	}
	label$54:;
	label$53:;
	fb_StrDelete( (FBSTRING*)&LITTEXT$1 );
	label$32:;
}

struct $8FBSYMBOL* ASTDATASTMTADD( struct $8FBSYMBOL* LABEL$1, int32 ELEMENTS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$55:;
	static FBSTRING ID$1;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$85$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* LASTLABEL$1;
	if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$58;
	{
		LASTLABEL$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99044);
		if( (-(LASTLABEL$1 == (struct $8FBSYMBOL*)0u) | -(*(struct $8FBSYMBOL**)((uint8*)&AST$ + 128) == LASTLABEL$1)) == 0 ) goto label$60;
		{
			uint8* vr$4 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&ID$1, -1, (void*)vr$4, 0, 0 );
		}
		goto label$59;
		label$60:;
		{
			FBSTRING TMP$86$3;
			*(struct $8FBSYMBOL**)((uint8*)&AST$ + 128) = LASTLABEL$1;
			__builtin_memset( &TMP$86$3, 0, 12 );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$86$3, (void*)"_{fbdata}_", 11, *(void**)((uint8*)LASTLABEL$1 + 16), 0 );
			fb_StrAssign( (void*)&ID$1, -1, (void*)vr$8, -1, 0 );
		}
		label$59:;
		*(int64*)((int32)(struct $10FBARRAYDIM*)DTB$1 + 8) = (int64)(ELEMENTS$1 + -1);
	}
	goto label$57;
	label$58:;
	{
		FBSTRING TMP$87$2;
		__builtin_memset( &TMP$87$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$87$2, (void*)"_{fbdata}_", 11, *(void**)((uint8*)LABEL$1 + 16), 0 );
		fb_StrAssign( (void*)&ID$1, -1, (void*)vr$14, -1, 0 );
		*(int64*)((int32)(struct $10FBARRAYDIM*)DTB$1 + 8) = 0ll;
	}
	label$57:;
	struct $8FBSYMBOL* vr$16 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352), (uint8*)*(uint8**)&ID$1, 1, -1, 0 );
	SYM$1 = vr$16;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$62;
	{
		if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$64;
		{
			SYMBSETARRAYDIMTB( SYM$1, 1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$85$1 );
			SYMBMAYBEADDARRAYDESC( SYM$1 );
		}
		label$64:;
		label$63:;
		fb$result$1 = SYM$1;
		goto label$56;
	}
	label$62:;
	label$61:;
	uint8* vr$17 = SYMBUNIQUELABEL(  );
	struct $8FBSYMBOL* vr$18 = SYMBADDVAR( (uint8*)*(uint8**)&ID$1, (uint8*)vr$17, 20, *(struct $8FBSYMBOL**)((uint8*)&AST$ + 116), 0ll, 1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$85$1, 3, 9 );
	SYM$1 = vr$18;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 108) = (struct $8FBSYMBOL*)0u;
	fb$result$1 = SYM$1;
	label$56:;
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

static void HCREATEDATADESC( void )
{
	label$65:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$88$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16, 16, 1, 49, { { 1, 0, 0 } } };
	struct $8FBSYMBOL* vr$0 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, (struct $8FBSYMBOL*)0u, (uint8*)"__FB_DATADESC$", (uint8*)0u, 0, 1, 0, 0, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&AST$ + 116) = vr$0;
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&AST$ + 116), (uint8*)"type", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$88$1, 5, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBADDFIELD( *(struct $8FBSYMBOL**)((uint8*)&AST$ + 116), (uint8*)"node", 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$88$1, 32, (struct $8FBSYMBOL*)0u, 0ll, 0, 0 );
	SYMBSTRUCTEND( *(struct $8FBSYMBOL**)((uint8*)&AST$ + 116), 0 );
	label$66:;
}
