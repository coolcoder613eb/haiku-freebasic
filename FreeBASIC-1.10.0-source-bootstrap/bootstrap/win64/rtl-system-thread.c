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
typedef FBSTRING* (*tmp$29)( void*, int64* );
typedef uint16* (*tmp$30)( void*, int64* );
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
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 240 );
struct $8FBARRAY1Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1Iu7INTEGERE ) == 72 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint64, int32, int32, uint64, ... );
int32 fb_ArrayErase( struct $7FBARRAYIvE* );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzsystemzthread( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
int64 SYMBISARRAY( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
static int64 HTHREADCALLPUSHTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
static int64 HTHREADCALLMAPTYPE( struct $8FBSYMBOL*, int64 );
static int64 HTHREADCALLPUSHSTRUCT( struct $7ASTNODE*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HGETEXPRREF( struct $7ASTNODE** );
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
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
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

struct $7ASTNODE* RTLTHREADCALL( struct $7ASTNODE* CALLEXPR$1 )
{
	int64 TMP$89$1;
	struct $8FBSYMBOL* TMP$93$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$89:;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* PROC$1;
	__builtin_memset( &PROC$1, 0, 8ll );
	struct $8FBSYMBOL* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 8ll );
	struct $7ASTNODE* PROCMODEEXPR$1;
	__builtin_memset( &PROCMODEEXPR$1, 0, 8ll );
	struct $7ASTNODE* T$1;
	__builtin_memset( &T$1, 0, 8ll );
	struct $7ASTNODE* STACKSIZEEXPR$1;
	__builtin_memset( &STACKSIZEEXPR$1, 0, 8ll );
	struct $7ASTNODE* ARGSEXPR$1;
	__builtin_memset( &ARGSEXPR$1, 0, 8ll );
	struct $7ASTNODE* PTREXPR$1;
	__builtin_memset( &PTREXPR$1, 0, 8ll );
	PROC$1 = *(struct $8FBSYMBOL**)((uint8*)CALLEXPR$1 + 24ll);
	int64 ARGS$1;
	ARGS$1 = *(int64*)((uint8*)CALLEXPR$1 + 48ll);
	struct $7ASTNODE* ARG$1;
	ARG$1 = *(struct $7ASTNODE**)((uint8*)CALLEXPR$1 + 120ll);
	int64 ARGUPPER$1;
	if( ARGS$1 != 0ll ) goto label$91;
	TMP$89$1 = 1ll;
	goto label$136;
	label$91:;
	TMP$89$1 = ARGS$1;
	label$136:;
	ARGUPPER$1 = TMP$89$1;
	struct $8FBARRAY1IP7ASTNODEE ARGEXPR$1;
	*(struct $7ASTNODE***)&ARGEXPR$1 = (struct $7ASTNODE**)0ull;
	*(struct $7ASTNODE***)((uint8*)&ARGEXPR$1 + 8ll) = (struct $7ASTNODE**)0ull;
	*(int64*)((uint8*)&ARGEXPR$1 + 16ll) = 0ll;
	*(int64*)((uint8*)&ARGEXPR$1 + 24ll) = 8ll;
	*(int64*)((uint8*)&ARGEXPR$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&ARGEXPR$1 + 40ll) = 17ll;
	__builtin_memset( (void*)((uint8*)&ARGEXPR$1 + 48ll), 0, 24ll );
	int32 vr$13 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&ARGEXPR$1, 8ull, -1, 0, 1ull, 1ll, ARGUPPER$1 );
	if( (int64)vr$13 == 0ll ) goto label$92;
	void* vr$15 = fb_ErrorThrowAt( 191, (uint8*)"src/compiler/rtl-system-thread.bas", (void*)0ull, (void*)0ull );
	goto *vr$15;
	label$92:;
	struct $8FBARRAY1Iu7INTEGERE ARGMODE$1;
	*(int64**)&ARGMODE$1 = (int64*)0ull;
	*(int64**)((uint8*)&ARGMODE$1 + 8ll) = (int64*)0ull;
	*(int64*)((uint8*)&ARGMODE$1 + 16ll) = 0ll;
	*(int64*)((uint8*)&ARGMODE$1 + 24ll) = 8ll;
	*(int64*)((uint8*)&ARGMODE$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&ARGMODE$1 + 40ll) = 17ll;
	__builtin_memset( (void*)((uint8*)&ARGMODE$1 + 48ll), 0, 24ll );
	int32 vr$18 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&ARGMODE$1, 8ull, -1, 0, 1ull, 1ll, ARGUPPER$1 );
	if( (int64)vr$18 == 0ll ) goto label$93;
	void* vr$20 = fb_ErrorThrowAt( 192, (uint8*)"src/compiler/rtl-system-thread.bas", (void*)0ull, (void*)0ull );
	goto *vr$20;
	label$93:;
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$91$2;
		TMP$91$2 = ARGS$1;
		goto label$94;
		label$97:;
		{
			if( ARG$1 != (struct $7ASTNODE*)0ull ) goto label$99;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$99:;
			label$98:;
			*(struct $7ASTNODE**)((uint8*)(((ARGS$1 - I$2) << (3ll & 63ll)) + *(int64*)&ARGEXPR$1) + 8ll) = *(struct $7ASTNODE**)((uint8*)ARG$1 + 112ll);
			*(struct $7ASTNODE**)((uint8*)ARG$1 + 112ll) = (struct $7ASTNODE*)0ull;
			*(int64*)((uint8*)(((ARGS$1 - I$2) << (3ll & 63ll)) + *(int64*)&ARGMODE$1) + 8ll) = *(int64*)((uint8*)ARG$1 + 40ll);
			ARG$1 = *(struct $7ASTNODE**)((uint8*)ARG$1 + 120ll);
		}
		label$95:;
		I$2 = I$2 + 1ll;
		label$94:;
		if( I$2 <= TMP$91$2 ) goto label$97;
		label$96:;
	}
	ASTDELTREE( CALLEXPR$1 );
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* vr$34 = RTLPROCLOOKUP( (uint8*)"fb_ThreadCall", 366ll );
	struct $7ASTNODE* vr$35 = ASTNEWCALL( vr$34, (struct $7ASTNODE*)0ull );
	EXPR$1 = vr$35;
	struct $7ASTNODE* vr$36 = ASTBUILDPROCADDROF( PROC$1 );
	struct $7ASTNODE* vr$37 = ASTNEWARG( EXPR$1, vr$36, 2147483648ll, -1ll );
	if( vr$37 != (struct $7ASTNODE*)0ull ) goto label$101;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$101:;
	label$100:;
	int64 PROCMODE$1;
	__builtin_memset( &PROCMODE$1, 0, 8ll );
	int64 PROCMODE_FB$1;
	__builtin_memset( &PROCMODE_FB$1, 0, 8ll );
	PROCMODE_FB$1 = *(int64*)((uint8*)PROC$1 + 152ll);
	if( PROCMODE_FB$1 != -1ll ) goto label$103;
	{
		PROCMODE_FB$1 = *(int64*)((uint8*)&ENV$ + 552ll);
		label$103:;
	}
	if( PROCMODE_FB$1 != 3ll ) goto label$105;
	{
		PROCMODE$1 = 1ll;
	}
	goto label$104;
	label$105:;
	if( (((int64)-(PROCMODE_FB$1 == 1ll) | (int64)-(PROCMODE_FB$1 == 2ll)) & (int64)-(*(int64*)((uint8*)&ENV$ + 216ll) == 0ll)) == 0ll ) goto label$106;
	{
		PROCMODE$1 = 0ll;
	}
	goto label$104;
	label$106:;
	{
		ERRREPORT( 288ll, 0ll, (uint8*)0ull );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$104:;
	struct $7ASTNODE* vr$50 = ASTNEWCONSTI( PROCMODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	PROCMODEEXPR$1 = vr$50;
	struct $7ASTNODE* vr$51 = ASTNEWARG( EXPR$1, PROCMODEEXPR$1, 2147483648ll, -1ll );
	if( vr$51 != (struct $7ASTNODE*)0ull ) goto label$108;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$54 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
	STACKSIZEEXPR$1 = vr$54;
	struct $7ASTNODE* vr$55 = ASTNEWARG( EXPR$1, STACKSIZEEXPR$1, 2147483648ll, -1ll );
	if( vr$55 != (struct $7ASTNODE*)0ull ) goto label$110;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$110:;
	label$109:;
	struct $7ASTNODE* vr$58 = ASTNEWCONSTI( ARGS$1, 8ll, (struct $8FBSYMBOL*)0ull );
	ARGSEXPR$1 = vr$58;
	struct $7ASTNODE* vr$59 = ASTNEWARG( EXPR$1, ARGSEXPR$1, 2147483648ll, -1ll );
	if( vr$59 != (struct $7ASTNODE*)0ull ) goto label$112;
	{
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
		goto label$90;
	}
	label$112:;
	label$111:;
	if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$113;
	TMP$93$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	goto label$137;
	label$113:;
	TMP$93$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$137:;
	PARAM$1 = TMP$93$1;
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$94$2;
		TMP$94$2 = ARGS$1;
		goto label$114;
		label$117:;
		{
			struct $8FBSYMBOL* TMP$95$3;
			$12FB_PARAMMODE MODE$3;
			__builtin_memset( &MODE$3, 0, 8ll );
			int64 TCTYPE$3;
			TCTYPE$3 = -1ll;
			MODE$3 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll);
			int64 vr$67 = HTHREADCALLMAPTYPE( PARAM$1, 0ll );
			TCTYPE$3 = vr$67;
			{
				if( MODE$3 != 1ll ) goto label$119;
				label$120:;
				{
				}
				goto label$118;
				label$119:;
				if( MODE$3 == 2ll ) goto label$122;
				label$123:;
				if( MODE$3 != 3ll ) goto label$121;
				label$122:;
				{
					if( TCTYPE$3 == -1ll ) goto label$125;
					{
						TCTYPE$3 = 13ll;
					}
					label$125:;
					label$124:;
				}
				goto label$118;
				label$121:;
				{
					TCTYPE$3 = -1ll;
				}
				label$126:;
				label$118:;
			}
			struct $8FBSYMBOL* STYPE$3;
			STYPE$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll);
			int64 vr$69 = HTHREADCALLPUSHTYPE( EXPR$1, TCTYPE$3, STYPE$3 );
			if( vr$69 != 0ll ) goto label$128;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$128:;
			label$127:;
			PTREXPR$1 = *(struct $7ASTNODE**)((I$2 << (3ll & 63ll)) + *(int64*)&ARGEXPR$1);
			struct $7ASTNODE* vr$75 = HGETEXPRREF( &PTREXPR$1 );
			struct $7ASTNODE* vr$76 = ASTNEWLINK( T$1, vr$75, 2ll );
			T$1 = vr$76;
			int64 ISSTRING$3;
			__builtin_memset( &ISSTRING$3, 0, 8ll );
			ISSTRING$3 = (*(int64*)((uint8*)*(struct $7ASTNODE**)((I$2 << (3ll & 63ll)) + *(int64*)&ARGEXPR$1) + 8ll) & 511ll) & 31ll;
			if( (((int64)-(MODE$3 == 2ll) & (int64)-(*(int64*)((I$2 << (3ll & 63ll)) + *(int64*)&ARGMODE$1) != 1ll)) & (int64)-(ISSTRING$3 == 0ll)) == 0ll ) goto label$130;
			{
				struct $7ASTNODE* vr$91 = HGETEXPRREF( &PTREXPR$1 );
				struct $7ASTNODE* vr$92 = ASTNEWLINK( T$1, vr$91, 2ll );
				T$1 = vr$92;
			}
			label$130:;
			label$129:;
			if( PTREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$132;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$132:;
			label$131:;
			struct $7ASTNODE* vr$95 = ASTNEWARG( EXPR$1, PTREXPR$1, 2147483648ll, -1ll );
			if( vr$95 != (struct $7ASTNODE*)0ull ) goto label$134;
			{
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
				fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
				goto label$90;
			}
			label$134:;
			label$133:;
			if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$135;
			TMP$95$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
			goto label$138;
			label$135:;
			TMP$95$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
			label$138:;
			PARAM$1 = TMP$95$3;
		}
		label$115:;
		I$2 = I$2 + 1ll;
		label$114:;
		if( I$2 <= TMP$94$2 ) goto label$117;
		label$116:;
	}
	struct $7ASTNODE* vr$102 = ASTNEWLINK( T$1, EXPR$1, 2ll );
	fb$result$1 = vr$102;
	fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGMODE$1 );
	fb_ArrayErase( (struct $7FBARRAYIvE*)&ARGEXPR$1 );
	label$90:;
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

static int64 HTHREADCALLMAPTYPE( struct $8FBSYMBOL* SYM$1, int64 UDT$1 )
{
	int64 TMP$85$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	fb$result$1 = -1ll;
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
	int64 vr$4 = SYMBISARRAY( SYM$1 );
	if( vr$4 == 0ll ) goto label$13;
	{
		int64 TMP$84$2;
		if( UDT$1 == 0ll ) goto label$14;
		TMP$84$2 = -1ll;
		goto label$139;
		label$14:;
		TMP$84$2 = 13ll;
		label$139:;
		fb$result$1 = TMP$84$2;
		goto label$11;
	}
	label$13:;
	label$12:;
	if( *(int64*)SYM$1 != 12ll ) goto label$15;
	TMP$85$1 = (int64)-(*(int64*)((uint8*)SYM$1 + 192ll) > 0ll);
	goto label$140;
	label$15:;
	TMP$85$1 = 0ll;
	label$140:;
	if( TMP$85$1 == 0ll ) goto label$17;
	{
		goto label$11;
	}
	label$17:;
	label$16:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$19;
	{
		fb$result$1 = 13ll;
		goto label$11;
	}
	label$19:;
	label$18:;
	{
		if( DTYPE$1 != 17ll ) goto label$21;
		label$22:;
		{
			int64 TMP$86$3;
			if( UDT$1 == 0ll ) goto label$23;
			TMP$86$3 = -1ll;
			goto label$141;
			label$23:;
			TMP$86$3 = 13ll;
			label$141:;
			fb$result$1 = TMP$86$3;
		}
		goto label$20;
		label$21:;
		if( DTYPE$1 != 20ll ) goto label$24;
		label$25:;
		{
			if( ((int64)-(((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) & 1ll) != 0ll) | (int64)-(((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) & 8192ll) != 0ll)) == 0ll ) goto label$27;
			{
				goto label$11;
			}
			label$27:;
			label$26:;
			if( (int64)*(uint8*)((uint8*)SUBTYPE$1 + 213ll) == 0ll ) goto label$29;
			{
				goto label$11;
			}
			label$29:;
			label$28:;
			struct $8FBSYMBOL* FIRST$3;
			struct $8FBSYMBOL* vr$20 = SYMBUDTGETFIRSTFIELD( SUBTYPE$1 );
			FIRST$3 = vr$20;
			struct $8FBSYMBOL* vr$21 = SYMBUDTGETNEXTFIELD( FIRST$3 );
			if( vr$21 != (struct $8FBSYMBOL*)0ull ) goto label$31;
			{
				int64 vr$22 = HTHREADCALLMAPTYPE( FIRST$3, -1ll );
				fb$result$1 = vr$22;
			}
			goto label$30;
			label$31:;
			{
				fb$result$1 = 12ll;
			}
			label$30:;
		}
		goto label$20;
		label$24:;
		if( DTYPE$1 == 2ll ) goto label$33;
		label$34:;
		if( DTYPE$1 == 4ll ) goto label$33;
		label$35:;
		if( DTYPE$1 == 3ll ) goto label$33;
		label$36:;
		if( DTYPE$1 == 5ll ) goto label$33;
		label$37:;
		if( DTYPE$1 == 7ll ) goto label$33;
		label$38:;
		if( DTYPE$1 == 6ll ) goto label$33;
		label$39:;
		if( DTYPE$1 == 8ll ) goto label$33;
		label$40:;
		if( DTYPE$1 == 10ll ) goto label$33;
		label$41:;
		if( DTYPE$1 == 9ll ) goto label$33;
		label$42:;
		if( DTYPE$1 == 11ll ) goto label$33;
		label$43:;
		if( DTYPE$1 == 12ll ) goto label$33;
		label$44:;
		if( DTYPE$1 == 13ll ) goto label$33;
		label$45:;
		if( DTYPE$1 == 14ll ) goto label$33;
		label$46:;
		if( DTYPE$1 == 15ll ) goto label$33;
		label$47:;
		if( DTYPE$1 != 16ll ) goto label$32;
		label$33:;
		{
			{
				int64 TMP$87$4;
				uint64 TMP$88$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$48;
				TMP$87$4 = 24ll;
				goto label$142;
				label$48:;
				TMP$87$4 = DTYPE$1 & 31ll;
				label$142:;
				TMP$88$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$87$4 * 56ll)) + 40ll);
				goto label$50;
				label$51:;
				{
					fb$result$1 = 2ll;
				}
				goto label$49;
				label$52:;
				{
					fb$result$1 = 3ll;
				}
				goto label$49;
				label$53:;
				{
					fb$result$1 = 4ll;
				}
				goto label$49;
				label$54:;
				{
					fb$result$1 = 5ll;
				}
				goto label$49;
				label$55:;
				{
					fb$result$1 = 6ll;
				}
				goto label$49;
				label$56:;
				{
					fb$result$1 = 7ll;
				}
				goto label$49;
				label$57:;
				{
					fb$result$1 = 8ll;
				}
				goto label$49;
				label$58:;
				{
					fb$result$1 = 9ll;
				}
				goto label$49;
				label$59:;
				{
					fb$result$1 = 10ll;
				}
				goto label$49;
				label$60:;
				{
					fb$result$1 = 11ll;
				}
				goto label$49;
				label$61:;
				{
				}
				goto label$49;
				label$50:;
				static const void* tmp$96[10ll] = {
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
				if( (TMP$88$4 - 1ull) > 9ull ) goto label$61;
				goto *tmp$96[TMP$88$4 - 1ull];
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

static int64 HTHREADCALLPUSHSTRUCT( struct $7ASTNODE* FUNCEXPR$1, struct $8FBSYMBOL* STRUCT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$63:;
	struct $8FBSYMBOL* FLD$1;
	int64 COUNT$1;
	COUNT$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = SYMBUDTGETFIRSTFIELD( STRUCT$1 );
	FLD$1 = vr$1;
	label$65:;
	{
		COUNT$1 = COUNT$1 + 1ll;
		struct $8FBSYMBOL* vr$3 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$3;
	}
	label$67:;
	if( FLD$1 != (struct $8FBSYMBOL*)0ull ) goto label$65;
	label$66:;
	struct $7ASTNODE* vr$4 = ASTNEWCONSTI( COUNT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$5 = ASTNEWARG( FUNCEXPR$1, vr$4, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$69;
	{
		goto label$64;
	}
	label$69:;
	label$68:;
	struct $8FBSYMBOL* vr$6 = SYMBUDTGETFIRSTFIELD( STRUCT$1 );
	FLD$1 = vr$6;
	label$70:;
	{
		int64 vr$8 = HTHREADCALLMAPTYPE( FLD$1, -1ll );
		int64 vr$9 = HTHREADCALLPUSHTYPE( FUNCEXPR$1, vr$8, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
		if( vr$9 != 0ll ) goto label$74;
		{
			goto label$64;
		}
		label$74:;
		label$73:;
		struct $8FBSYMBOL* vr$10 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$10;
	}
	label$72:;
	if( FLD$1 != (struct $8FBSYMBOL*)0ull ) goto label$70;
	label$71:;
	fb$result$1 = -1ll;
	label$64:;
	return fb$result$1;
}

static int64 HTHREADCALLPUSHTYPE( struct $7ASTNODE* FUNCEXPR$1, int64 TCTYPE$1, struct $8FBSYMBOL* STYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$75:;
	fb$result$1 = 0ll;
	if( TCTYPE$1 != -1ll ) goto label$78;
	{
		ERRREPORT( 288ll, 0ll, (uint8*)0ull );
		goto label$76;
	}
	label$78:;
	label$77:;
	struct $7ASTNODE* TYPEEXPR$1;
	__builtin_memset( &TYPEEXPR$1, 0, 8ll );
	struct $7ASTNODE* vr$2 = ASTNEWCONSTI( TCTYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	TYPEEXPR$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( FUNCEXPR$1, TYPEEXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$80;
	{
		goto label$76;
	}
	label$80:;
	label$79:;
	if( TCTYPE$1 != 12ll ) goto label$82;
	{
		int64 vr$4 = HTHREADCALLPUSHSTRUCT( FUNCEXPR$1, STYPE$1 );
		if( vr$4 != 0ll ) goto label$84;
		{
			goto label$76;
		}
		label$84:;
		label$83:;
	}
	label$82:;
	label$81:;
	fb$result$1 = -1ll;
	label$76:;
	return fb$result$1;
}

static struct $7ASTNODE* HGETEXPRREF( struct $7ASTNODE** EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$85:;
	struct $8FBSYMBOL* TMPVAR$1;
	if( *(int64*)*EXPR$1 != 17ll ) goto label$88;
	{
		struct $7ASTNODE* vr$4 = ASTNEWADDROF( *EXPR$1 );
		*EXPR$1 = vr$4;
	}
	goto label$87;
	label$88:;
	{
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( *(int64*)((uint8*)*EXPR$1 + 8ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 16ll) );
		TMPVAR$1 = vr$11;
		struct $7ASTNODE* vr$13 = ASTNEWVAR( TMPVAR$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$14 = ASTNEWASSIGN( vr$13, *EXPR$1, 16ll );
		fb$result$1 = vr$14;
		struct $7ASTNODE* vr$15 = ASTNEWVAR( TMPVAR$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$16 = ASTNEWADDROF( vr$15 );
		*EXPR$1 = vr$16;
	}
	label$87:;
	label$86:;
	return fb$result$1;
}
