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
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
struct $8FBARRAY1IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IlE ) == 36 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
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
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayErase( struct $7FBARRAYIvE* );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzsystemzthread( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
static int32 HTHREADCALLPUSHTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
static int32 HTHREADCALLMAPTYPE( struct $8FBSYMBOL*, int32 );
static int32 HTHREADCALLPUSHSTRUCT( struct $7ASTNODE*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HGETEXPRREF( struct $7ASTNODE** );
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

struct $7ASTNODE* RTLTHREADCALL( struct $7ASTNODE* CALLEXPR$1 )
{
	int32 TMP$88$1;
	struct $8FBSYMBOL* TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$89:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* PROC$1;
	__builtin_memset( &PROC$1, 0, 4 );
	struct $8FBSYMBOL* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 4 );
	struct $7ASTNODE* PROCMODEEXPR$1;
	__builtin_memset( &PROCMODEEXPR$1, 0, 4 );
	struct $7ASTNODE* T$1;
	__builtin_memset( &T$1, 0, 4 );
	struct $7ASTNODE* STACKSIZEEXPR$1;
	__builtin_memset( &STACKSIZEEXPR$1, 0, 4 );
	struct $7ASTNODE* ARGSEXPR$1;
	__builtin_memset( &ARGSEXPR$1, 0, 4 );
	struct $7ASTNODE* PTREXPR$1;
	__builtin_memset( &PTREXPR$1, 0, 4 );
	PROC$1 = *(struct $8FBSYMBOL**)((uint8*)CALLEXPR$1 + 12);
	int32 ARGS$1;
	ARGS$1 = *(int32*)((uint8*)CALLEXPR$1 + 28);
	struct $7ASTNODE* ARG$1;
	ARG$1 = *(struct $7ASTNODE**)((uint8*)CALLEXPR$1 + 68);
	int32 ARGUPPER$1;
	if( ARGS$1 != 0 ) goto label$91;
	TMP$88$1 = 1;
	goto label$136;
	label$91:;
	TMP$88$1 = ARGS$1;
	label$136:;
	ARGUPPER$1 = TMP$88$1;
	struct $8FBARRAY1IP7ASTNODEE ARGEXPR$1;
	*(struct $7ASTNODE***)&ARGEXPR$1 = (struct $7ASTNODE**)0u;
	*(struct $7ASTNODE***)((uint8*)&ARGEXPR$1 + 4) = (struct $7ASTNODE**)0u;
	*(int32*)((uint8*)&ARGEXPR$1 + 8) = 0;
	*(int32*)((uint8*)&ARGEXPR$1 + 12) = 4;
	*(int32*)((uint8*)&ARGEXPR$1 + 16) = 1;
	*(int32*)((uint8*)&ARGEXPR$1 + 20) = 17;
	__builtin_memset( (void*)((uint8*)&ARGEXPR$1 + 24), 0, 12 );
	int32 vr$13 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&ARGEXPR$1, 4u, -1, 0, 1u, 1, ARGUPPER$1 );
	if( vr$13 == 0 ) goto label$92;
	void* vr$14 = fb_ErrorThrowAt( 191, (uint8*)"src/compiler/rtl-system-thread.bas", (void*)0u, (void*)0u );
	goto *vr$14;
	label$92:;
	struct $8FBARRAY1IlE ARGMODE$1;
	*(int32**)&ARGMODE$1 = (int32*)0u;
	*(int32**)((uint8*)&ARGMODE$1 + 4) = (int32*)0u;
	*(int32*)((uint8*)&ARGMODE$1 + 8) = 0;
	*(int32*)((uint8*)&ARGMODE$1 + 12) = 4;
	*(int32*)((uint8*)&ARGMODE$1 + 16) = 1;
	*(int32*)((uint8*)&ARGMODE$1 + 20) = 17;
	__builtin_memset( (void*)((uint8*)&ARGMODE$1 + 24), 0, 12 );
	int32 vr$17 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&ARGMODE$1, 4u, -1, 0, 1u, 1, ARGUPPER$1 );
	if( vr$17 == 0 ) goto label$93;
	void* vr$18 = fb_ErrorThrowAt( 192, (uint8*)"src/compiler/rtl-system-thread.bas", (void*)0u, (void*)0u );
	goto *vr$18;
	label$93:;
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$90$2;
		TMP$90$2 = ARGS$1;
		goto label$94;
		label$97:;
		{
			if( ARG$1 != (struct $7ASTNODE*)0u ) goto label$99;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$99:;
			label$98:;
			*(struct $7ASTNODE**)((uint8*)(((ARGS$1 - I$2) << (2 & 31)) + *(int32*)&ARGEXPR$1) + 4) = *(struct $7ASTNODE**)((uint8*)ARG$1 + 64);
			*(struct $7ASTNODE**)((uint8*)ARG$1 + 64) = (struct $7ASTNODE*)0u;
			*(int32*)((uint8*)(((ARGS$1 - I$2) << (2 & 31)) + *(int32*)&ARGMODE$1) + 4) = *(int32*)((uint8*)ARG$1 + 24);
			ARG$1 = *(struct $7ASTNODE**)((uint8*)ARG$1 + 68);
		}
		label$95:;
		I$2 = I$2 + 1;
		label$94:;
		if( I$2 <= TMP$90$2 ) goto label$97;
		label$96:;
	}
	ASTDELTREE( CALLEXPR$1 );
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* vr$32 = RTLPROCLOOKUP( (uint8*)"fb_ThreadCall", 366 );
	struct $7ASTNODE* vr$33 = ASTNEWCALL( vr$32, (struct $7ASTNODE*)0u );
	EXPR$1 = vr$33;
	struct $7ASTNODE* vr$34 = ASTBUILDPROCADDROF( PROC$1 );
	struct $7ASTNODE* vr$35 = ASTNEWARG( EXPR$1, vr$34, -2147483648u, -1 );
	if( vr$35 != (struct $7ASTNODE*)0u ) goto label$101;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$101:;
	label$100:;
	int32 PROCMODE$1;
	__builtin_memset( &PROCMODE$1, 0, 4 );
	int32 PROCMODE_FB$1;
	__builtin_memset( &PROCMODE_FB$1, 0, 4 );
	PROCMODE_FB$1 = *(int32*)((uint8*)PROC$1 + 84);
	if( PROCMODE_FB$1 != -1 ) goto label$103;
	{
		PROCMODE_FB$1 = *(int32*)((uint8*)&ENV$ + 276);
		label$103:;
	}
	if( PROCMODE_FB$1 != 3 ) goto label$105;
	{
		PROCMODE$1 = 1;
	}
	goto label$104;
	label$105:;
	if( ((-(PROCMODE_FB$1 == 1) | -(PROCMODE_FB$1 == 2)) & -(*(int32*)((uint8*)&ENV$ + 108) == 0)) == 0 ) goto label$106;
	{
		PROCMODE$1 = 0;
	}
	goto label$104;
	label$106:;
	{
		ERRREPORT( 288, 0, (uint8*)0u );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$104:;
	struct $7ASTNODE* vr$49 = ASTNEWCONSTI( (int64)PROCMODE$1, 8, (struct $8FBSYMBOL*)0u );
	PROCMODEEXPR$1 = vr$49;
	struct $7ASTNODE* vr$50 = ASTNEWARG( EXPR$1, PROCMODEEXPR$1, -2147483648u, -1 );
	if( vr$50 != (struct $7ASTNODE*)0u ) goto label$108;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$53 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
	STACKSIZEEXPR$1 = vr$53;
	struct $7ASTNODE* vr$54 = ASTNEWARG( EXPR$1, STACKSIZEEXPR$1, -2147483648u, -1 );
	if( vr$54 != (struct $7ASTNODE*)0u ) goto label$110;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$110:;
	label$109:;
	struct $7ASTNODE* vr$58 = ASTNEWCONSTI( (int64)ARGS$1, 8, (struct $8FBSYMBOL*)0u );
	ARGSEXPR$1 = vr$58;
	struct $7ASTNODE* vr$59 = ASTNEWARG( EXPR$1, ARGSEXPR$1, -2147483648u, -1 );
	if( vr$59 != (struct $7ASTNODE*)0u ) goto label$112;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$112:;
	label$111:;
	if( *(int32*)((uint8*)PROC$1 + 84) != 4 ) goto label$113;
	TMP$92$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	goto label$137;
	label$113:;
	TMP$92$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$137:;
	PARAM$1 = TMP$92$1;
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$93$2;
		TMP$93$2 = ARGS$1;
		goto label$114;
		label$117:;
		{
			struct $8FBSYMBOL* TMP$94$3;
			$12FB_PARAMMODE MODE$3;
			__builtin_memset( &MODE$3, 0, 4 );
			int32 TCTYPE$3;
			TCTYPE$3 = -1;
			MODE$3 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56);
			int32 vr$67 = HTHREADCALLMAPTYPE( PARAM$1, 0 );
			TCTYPE$3 = vr$67;
			{
				if( MODE$3 != 1 ) goto label$119;
				label$120:;
				{
				}
				goto label$118;
				label$119:;
				if( MODE$3 == 2 ) goto label$122;
				label$123:;
				if( MODE$3 != 3 ) goto label$121;
				label$122:;
				{
					if( TCTYPE$3 == -1 ) goto label$125;
					{
						TCTYPE$3 = 13;
					}
					label$125:;
					label$124:;
				}
				goto label$118;
				label$121:;
				{
					TCTYPE$3 = -1;
				}
				label$126:;
				label$118:;
			}
			struct $8FBSYMBOL* STYPE$3;
			STYPE$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32);
			int32 vr$69 = HTHREADCALLPUSHTYPE( EXPR$1, TCTYPE$3, STYPE$3 );
			if( vr$69 != 0 ) goto label$128;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$128:;
			label$127:;
			PTREXPR$1 = *(struct $7ASTNODE**)((I$2 << (2 & 31)) + *(int32*)&ARGEXPR$1);
			struct $7ASTNODE* vr$75 = HGETEXPRREF( &PTREXPR$1 );
			struct $7ASTNODE* vr$76 = ASTNEWLINK( T$1, vr$75, 2 );
			T$1 = vr$76;
			int32 ISSTRING$3;
			__builtin_memset( &ISSTRING$3, 0, 4 );
			ISSTRING$3 = (*(int32*)((uint8*)*(struct $7ASTNODE**)((I$2 << (2 & 31)) + *(int32*)&ARGEXPR$1) + 4) & 511) & 31;
			if( ((-(MODE$3 == 2) & -(*(int32*)((I$2 << (2 & 31)) + *(int32*)&ARGMODE$1) != 1)) & -(ISSTRING$3 == 0)) == 0 ) goto label$130;
			{
				struct $7ASTNODE* vr$91 = HGETEXPRREF( &PTREXPR$1 );
				struct $7ASTNODE* vr$92 = ASTNEWLINK( T$1, vr$91, 2 );
				T$1 = vr$92;
			}
			label$130:;
			label$129:;
			if( PTREXPR$1 != (struct $7ASTNODE*)0u ) goto label$132;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$132:;
			label$131:;
			struct $7ASTNODE* vr$95 = ASTNEWARG( EXPR$1, PTREXPR$1, -2147483648u, -1 );
			if( vr$95 != (struct $7ASTNODE*)0u ) goto label$134;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$134:;
			label$133:;
			if( *(int32*)((uint8*)PROC$1 + 84) != 4 ) goto label$135;
			TMP$94$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
			goto label$138;
			label$135:;
			TMP$94$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
			label$138:;
			PARAM$1 = TMP$94$3;
		}
		label$115:;
		I$2 = I$2 + 1;
		label$114:;
		if( I$2 <= TMP$93$2 ) goto label$117;
		label$116:;
	}
	struct $7ASTNODE* vr$102 = ASTNEWLINK( T$1, EXPR$1, 2 );
	fb$result$1 = vr$102;
	fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
	fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
	label$90:;
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

static int32 HTHREADCALLMAPTYPE( struct $8FBSYMBOL* SYM$1, int32 UDT$1 )
{
	int32 TMP$84$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	fb$result$1 = -1;
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
	int32 vr$4 = SYMBISARRAY( SYM$1 );
	if( vr$4 == 0 ) goto label$13;
	{
		int32 TMP$83$2;
		if( UDT$1 == 0 ) goto label$14;
		TMP$83$2 = -1;
		goto label$139;
		label$14:;
		TMP$83$2 = 13;
		label$139:;
		fb$result$1 = TMP$83$2;
		goto label$11;
	}
	label$13:;
	label$12:;
	if( *(int32*)SYM$1 != 12 ) goto label$15;
	TMP$84$1 = -(*(int32*)((uint8*)SYM$1 + 116) > 0);
	goto label$140;
	label$15:;
	TMP$84$1 = 0;
	label$140:;
	if( TMP$84$1 == 0 ) goto label$17;
	{
		goto label$11;
	}
	label$17:;
	label$16:;
	if( (DTYPE$1 & 480) == 0 ) goto label$19;
	{
		fb$result$1 = 13;
		goto label$11;
	}
	label$19:;
	label$18:;
	{
		if( DTYPE$1 != 17 ) goto label$21;
		label$22:;
		{
			int32 TMP$85$3;
			if( UDT$1 == 0 ) goto label$23;
			TMP$85$3 = -1;
			goto label$141;
			label$23:;
			TMP$85$3 = 13;
			label$141:;
			fb$result$1 = TMP$85$3;
		}
		goto label$20;
		label$21:;
		if( DTYPE$1 != 20 ) goto label$24;
		label$25:;
		{
			if( (-((*(int32*)((uint8*)SUBTYPE$1 + 120) & 1) != 0) | -((*(int32*)((uint8*)SUBTYPE$1 + 120) & 8192) != 0)) == 0 ) goto label$27;
			{
				goto label$11;
			}
			label$27:;
			label$26:;
			if( (int32)*(uint8*)((uint8*)SUBTYPE$1 + 125) == 0 ) goto label$29;
			{
				goto label$11;
			}
			label$29:;
			label$28:;
			struct $8FBSYMBOL* FIRST$3;
			struct $8FBSYMBOL* vr$18 = SYMBUDTGETFIRSTFIELD( SUBTYPE$1 );
			FIRST$3 = vr$18;
			struct $8FBSYMBOL* vr$19 = SYMBUDTGETNEXTFIELD( FIRST$3 );
			if( vr$19 != (struct $8FBSYMBOL*)0u ) goto label$31;
			{
				int32 vr$20 = HTHREADCALLMAPTYPE( FIRST$3, -1 );
				fb$result$1 = vr$20;
			}
			goto label$30;
			label$31:;
			{
				fb$result$1 = 12;
			}
			label$30:;
		}
		goto label$20;
		label$24:;
		if( DTYPE$1 == 2 ) goto label$33;
		label$34:;
		if( DTYPE$1 == 4 ) goto label$33;
		label$35:;
		if( DTYPE$1 == 3 ) goto label$33;
		label$36:;
		if( DTYPE$1 == 5 ) goto label$33;
		label$37:;
		if( DTYPE$1 == 7 ) goto label$33;
		label$38:;
		if( DTYPE$1 == 6 ) goto label$33;
		label$39:;
		if( DTYPE$1 == 8 ) goto label$33;
		label$40:;
		if( DTYPE$1 == 10 ) goto label$33;
		label$41:;
		if( DTYPE$1 == 9 ) goto label$33;
		label$42:;
		if( DTYPE$1 == 11 ) goto label$33;
		label$43:;
		if( DTYPE$1 == 12 ) goto label$33;
		label$44:;
		if( DTYPE$1 == 13 ) goto label$33;
		label$45:;
		if( DTYPE$1 == 14 ) goto label$33;
		label$46:;
		if( DTYPE$1 == 15 ) goto label$33;
		label$47:;
		if( DTYPE$1 != 16 ) goto label$32;
		label$33:;
		{
			{
				int32 TMP$86$4;
				uint32 TMP$87$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$48;
				TMP$86$4 = 24;
				goto label$142;
				label$48:;
				TMP$86$4 = DTYPE$1 & 31;
				label$142:;
				TMP$87$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$86$4 * 28)) + 20);
				goto label$50;
				label$51:;
				{
					fb$result$1 = 2;
				}
				goto label$49;
				label$52:;
				{
					fb$result$1 = 3;
				}
				goto label$49;
				label$53:;
				{
					fb$result$1 = 4;
				}
				goto label$49;
				label$54:;
				{
					fb$result$1 = 5;
				}
				goto label$49;
				label$55:;
				{
					fb$result$1 = 6;
				}
				goto label$49;
				label$56:;
				{
					fb$result$1 = 7;
				}
				goto label$49;
				label$57:;
				{
					fb$result$1 = 8;
				}
				goto label$49;
				label$58:;
				{
					fb$result$1 = 9;
				}
				goto label$49;
				label$59:;
				{
					fb$result$1 = 10;
				}
				goto label$49;
				label$60:;
				{
					fb$result$1 = 11;
				}
				goto label$49;
				label$61:;
				{
				}
				goto label$49;
				label$50:;
				static const void* tmp$95[10] = {
					&&label$51,
					&&label$52,
					&&label$53,
					&&label$54,
					&&label$55,
					&&label$56,
					&&label$57,
					&&label$58,
					&&label$59,
					&&label$60,
				};
				if( (TMP$87$4 - 1u) > 9u ) goto label$61;
				goto *tmp$95[TMP$87$4 - 1u];
				label$49:;
			}
		}
		goto label$20;
		label$32:;
		{
			goto label$11;
		}
		label$62:;
		label$20:;
	}
	label$11:;
	return fb$result$1;
}

static int32 HTHREADCALLPUSHSTRUCT( struct $7ASTNODE* FUNCEXPR$1, struct $8FBSYMBOL* STRUCT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$63:;
	struct $8FBSYMBOL* FLD$1;
	int32 COUNT$1;
	COUNT$1 = 0;
	struct $8FBSYMBOL* vr$1 = SYMBUDTGETFIRSTFIELD( STRUCT$1 );
	FLD$1 = vr$1;
	label$65:;
	{
		COUNT$1 = COUNT$1 + 1;
		struct $8FBSYMBOL* vr$3 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$3;
	}
	label$67:;
	if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$65;
	label$66:;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( (int64)COUNT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$6 = ASTNEWARG( FUNCEXPR$1, vr$5, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$69;
	{
		goto label$64;
	}
	label$69:;
	label$68:;
	struct $8FBSYMBOL* vr$7 = SYMBUDTGETFIRSTFIELD( STRUCT$1 );
	FLD$1 = vr$7;
	label$70:;
	{
		int32 vr$9 = HTHREADCALLMAPTYPE( FLD$1, -1 );
		int32 vr$10 = HTHREADCALLPUSHTYPE( FUNCEXPR$1, vr$9, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32) );
		if( vr$10 != 0 ) goto label$74;
		{
			goto label$64;
		}
		label$74:;
		label$73:;
		struct $8FBSYMBOL* vr$11 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$11;
	}
	label$72:;
	if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$70;
	label$71:;
	fb$result$1 = -1;
	label$64:;
	return fb$result$1;
}

static int32 HTHREADCALLPUSHTYPE( struct $7ASTNODE* FUNCEXPR$1, int32 TCTYPE$1, struct $8FBSYMBOL* STYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$75:;
	fb$result$1 = 0;
	if( TCTYPE$1 != -1 ) goto label$78;
	{
		ERRREPORT( 288, 0, (uint8*)0u );
		goto label$76;
	}
	label$78:;
	label$77:;
	struct $7ASTNODE* TYPEEXPR$1;
	__builtin_memset( &TYPEEXPR$1, 0, 4 );
	struct $7ASTNODE* vr$3 = ASTNEWCONSTI( (int64)TCTYPE$1, 8, (struct $8FBSYMBOL*)0u );
	TYPEEXPR$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( FUNCEXPR$1, TYPEEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$80;
	{
		goto label$76;
	}
	label$80:;
	label$79:;
	if( TCTYPE$1 != 12 ) goto label$82;
	{
		int32 vr$5 = HTHREADCALLPUSHSTRUCT( FUNCEXPR$1, STYPE$1 );
		if( vr$5 != 0 ) goto label$84;
		{
			goto label$76;
		}
		label$84:;
		label$83:;
	}
	label$82:;
	label$81:;
	fb$result$1 = -1;
	label$76:;
	return fb$result$1;
}

static struct $7ASTNODE* HGETEXPRREF( struct $7ASTNODE** EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$85:;
	struct $8FBSYMBOL* TMPVAR$1;
	if( *(int32*)*EXPR$1 != 17 ) goto label$88;
	{
		struct $7ASTNODE* vr$4 = ASTNEWADDROF( *EXPR$1 );
		*EXPR$1 = vr$4;
	}
	goto label$87;
	label$88:;
	{
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( *(int32*)((uint8*)*EXPR$1 + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 8) );
		TMPVAR$1 = vr$11;
		struct $7ASTNODE* vr$13 = ASTNEWVAR( TMPVAR$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$14 = ASTNEWASSIGN( vr$13, *EXPR$1, 16 );
		fb$result$1 = vr$14;
		struct $7ASTNODE* vr$15 = ASTNEWVAR( TMPVAR$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$16 = ASTNEWADDROF( vr$15 );
		*EXPR$1 = vr$16;
	}
	label$87:;
	label$86:;
	return fb$result$1;
}
