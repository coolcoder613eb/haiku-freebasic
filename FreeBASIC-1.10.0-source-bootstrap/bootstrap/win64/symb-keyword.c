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
typedef int64 $10KWD_OPTION;
struct $7SYMBKWD {
	uint8* NAME;
	int64 ID;
	int64 CLASS;
	$10KWD_OPTION OPT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $7SYMBKWD ) == 32 );
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
typedef int64 $19FB_CVA_LIST_TYPEDEF;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
static void fb_ctor__symbzkeyword( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
$19FB_CVA_LIST_TYPEDEF FBGETBACKENDVALISTTYPE( void );
struct $8FBSYMBOL* SYMBADDKEYWORD( uint8*, int64, int64, struct $8FBHASHTB*, int64, $13FB_SYMBATTRIB );
struct $8FBSYMBOL* SYMBADDTYPEDEF( uint8*, int64, struct $8FBSYMBOL*, int64 );
struct $8FBSYMBOL* SYMBADDCONST( uint8*, int64, struct $8FBSYMBOL*, union $7FBVALUE*, $13FB_SYMBATTRIB );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int64, int64, int64, $13FB_SYMBATTRIB, int64 );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int64, struct $7FBARRAYI10FBARRAYDIME*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int64 );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
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
static struct $7SYMBKWD KWDTB$[263] = { { (uint8*)"AND", 288ll, 5ll }, { (uint8*)"OR", 289ll, 5ll }, { (uint8*)"ANDALSO", 290ll, 5ll }, { (uint8*)"ORELSE", 291ll, 5ll }, { (uint8*)"XOR", 292ll, 5ll }, { (uint8*)"EQV", 293ll, 5ll }, { (uint8*)"IMP", 294ll, 5ll }, { (uint8*)"NOT", 295ll, 5ll }, { (uint8*)"MOD", 296ll, 5ll }, { (uint8*)"SHL", 297ll, 5ll, 1ll }, { (uint8*)"SHR", 298ll, 5ll, 1ll }, { (uint8*)"NEW", 389ll, 5ll, 1ll }, { (uint8*)"DELETE", 390ll, 5ll, 1ll }, { (uint8*)"REM", 260ll, 1ll }, { (uint8*)"DIM", 308ll, 1ll }, { (uint8*)"ABS", 448ll, 1ll }, { (uint8*)"SGN", 449ll, 1ll }, { (uint8*)"FIX", 450ll, 1ll }, { (uint8*)"FRAC", 451ll, 1ll, 1ll }, { (uint8*)"INT", 461ll, 1ll }, { (uint8*)"STATIC", 307ll, 1ll }, { (uint8*)"SHARED", 312ll, 1ll }, { (uint8*)"BOOLEAN", 356ll, 1ll, 1ll }, { (uint8*)"BYTE", 357ll, 1ll, 1ll }, { (uint8*)"UBYTE", 358ll, 1ll, 1ll }, { (uint8*)"SHORT", 359ll, 1ll, 1ll }, { (uint8*)"USHORT", 360ll, 1ll, 1ll }, { (uint8*)"INTEGER", 361ll, 1ll }, { (uint8*)"UINTEGER", 362ll, 1ll, 1ll }, { (uint8*)"LONG", 363ll, 1ll }, { (uint8*)"ULONG", 364ll, 1ll, 1ll }, { (uint8*)"LONGINT", 365ll, 1ll, 1ll }, { (uint8*)"ULONGINT", 366ll, 1ll, 1ll }, { (uint8*)"SINGLE", 367ll, 1ll }, { (uint8*)"DOUBLE", 368ll, 1ll }, { (uint8*)"STRING", 369ll, 1ll, 2ll }, { (uint8*)"ZSTRING", 370ll, 1ll, 1ll }, { (uint8*)"WSTRING", 371ll, 1ll, 1ll }, { (uint8*)"UNSIGNED", 375ll, 1ll, 1ll }, { (uint8*)"ANY", 372ll, 1ll }, { (uint8*)"PTR", 373ll, 1ll, 1ll }, { (uint8*)"POINTER", 374ll, 1ll, 1ll }, { (uint8*)"TYPEOF", 377ll, 1ll, 1ll }, { (uint8*)"WHILE", 273ll, 1ll }, { (uint8*)"UNTIL", 274ll, 1ll }, { (uint8*)"WEND", 275ll, 1ll }, { (uint8*)"CONTINUE", 276ll, 1ll, 1ll }, { (uint8*)"CBOOL", 401ll, 1ll, 1ll }, { (uint8*)"CBYTE", 402ll, 1ll, 1ll }, { (uint8*)"CSHORT", 404ll, 1ll, 1ll }, { (uint8*)"CINT", 406ll, 1ll }, { (uint8*)"CLNG", 408ll, 1ll }, { (uint8*)"CLNGINT", 410ll, 1ll, 1ll }, { (uint8*)"CUBYTE", 403ll, 1ll, 1ll }, { (uint8*)"CUSHORT", 405ll, 1ll, 1ll }, { (uint8*)"CUINT", 407ll, 1ll, 1ll }, { (uint8*)"CULNG", 409ll, 1ll, 1ll }, { (uint8*)"CULNGINT", 411ll, 1ll, 1ll }, { (uint8*)"CSNG", 412ll, 1ll }, { (uint8*)"CDBL", 413ll, 1ll }, { (uint8*)"CSIGN", 414ll, 1ll, 1ll }, { (uint8*)"CUNSG", 415ll, 1ll, 1ll }, { (uint8*)"CPTR", 416ll, 1ll, 1ll }, { (uint8*)"CAST", 417ll, 1ll, 1ll }, { (uint8*)"CALL", 395ll, 1ll }, { (uint8*)"BYVAL", 319ll, 1ll }, { (uint8*)"BYREF", 320ll, 1ll }, { (uint8*)"AS", 376ll, 1ll }, { (uint8*)"DECLARE", 334ll, 1ll }, { (uint8*)"GOTO", 393ll, 1ll }, { (uint8*)"CONST", 335ll, 1ll }, { (uint8*)"FOR", 281ll, 1ll }, { (uint8*)"STEP", 282ll, 1ll }, { (uint8*)"NEXT", 283ll, 1ll }, { (uint8*)"TO", 284ll, 1ll }, { (uint8*)"TYPE", 336ll, 1ll }, { (uint8*)"UNION", 337ll, 1ll, 1ll }, { (uint8*)"END", 340ll, 1ll }, { (uint8*)"SUB", 345ll, 1ll }, { (uint8*)"FUNCTION", 346ll, 1ll }, { (uint8*)"CDECL", 382ll, 1ll }, { (uint8*)"STDCALL", 383ll, 1ll }, { (uint8*)"__THISCALL", 384ll, 1ll }, { (uint8*)"__FASTCALL", 385ll, 1ll }, { (uint8*)"PASCAL", 381ll, 1ll }, { (uint8*)"ALIAS", 386ll, 1ll }, { (uint8*)"LIB", 387ll, 1ll }, { (uint8*)"LET", 391ll, 1ll }, { (uint8*)"EXIT", 277ll, 1ll }, { (uint8*)"DO", 278ll, 1ll }, { (uint8*)"LOOP", 279ll, 1ll }, { (uint8*)"RETURN", 392ll, 1ll }, { (uint8*)"IF", 266ll, 1ll }, { (uint8*)"THEN", 267ll, 1ll }, { (uint8*)"ELSE", 268ll, 1ll }, { (uint8*)"ELSEIF", 269ll, 1ll }, { (uint8*)"ENDIF", 314ll, 1ll }, { (uint8*)"SELECT", 270ll, 1ll }, { (uint8*)"CASE", 271ll, 1ll }, { (uint8*)"IS", 272ll, 1ll }, { (uint8*)"USING", 287ll, 1ll }, { (uint8*)"LEN", 465ll, 2ll }, { (uint8*)"PEEK", 467ll, 1ll }, { (uint8*)"POKE", 468ll, 1ll }, { (uint8*)"SWAP", 469ll, 1ll }, { (uint8*)"COMMON", 311ll, 1ll }, { (uint8*)"ENUM", 338ll, 1ll }, { (uint8*)"ASM", 344ll, 1ll, 1ll }, { (uint8*)"EXTERN", 306ll, 1ll, 1ll }, { (uint8*)"WITH", 280ll, 1ll, 1ll }, { (uint8*)"SCOPE", 285ll, 1ll, 1ll }, { (uint8*)"PUBLIC", 378ll, 1ll, 1ll }, { (uint8*)"PRIVATE", 379ll, 1ll, 1ll }, { (uint8*)"PROTECTED", 380ll, 1ll, 1ll }, { (uint8*)"PROCPTR", 398ll, 1ll, 1ll }, { (uint8*)"NAMESPACE", 286ll, 1ll, 1ll }, { (uint8*)"EXPORT", 341ll, 1ll, 1ll }, { (uint8*)"IMPORT", 342ll, 1ll, 1ll }, { (uint8*)"OVERLOAD", 388ll, 1ll, 1ll }, { (uint8*)"CONSTRUCTOR", 347ll, 1ll, 1ll }, { (uint8*)"DESTRUCTOR", 348ll, 1ll, 1ll }, { (uint8*)"OPERATOR", 349ll, 1ll, 1ll }, { (uint8*)"PROPERTY", 350ll, 1ll, 1ll }, { (uint8*)"CLASS", 339ll, 1ll, 1ll }, { (uint8*)"EXTENDS", 351ll, 1ll, 1ll }, { (uint8*)"IMPLEMENTS", 352ll, 1ll, 1ll }, { (uint8*)"BASE", 353ll, 1ll, 1ll }, { (uint8*)"VIRTUAL", 354ll, 1ll, 1ll }, { (uint8*)"ABSTRACT", 355ll, 1ll, 1ll }, { (uint8*)"VAR", 309ll, 1ll, 1ll }, { (uint8*)"IIF", 503ll, 1ll, 1ll }, { (uint8*)"VA_FIRST", 497ll, 1ll, 1ll }, { (uint8*)"DATA", 447ll, 2ll }, { (uint8*)"FIELD", 493ll, 2ll }, { (uint8*)"LOCAL", 500ll, 2ll }, { (uint8*)"DEFINED", 315ll, 2ll }, { (uint8*)"SIZEOF", 466ll, 2ll, 1ll }, { (uint8*)"STRPTR", 397ll, 2ll }, { (uint8*)"VARPTR", 396ll, 2ll }, { (uint8*)"DYNAMIC", 317ll, 2ll }, { (uint8*)"INCLUDE", 316ll, 2ll }, { (uint8*)"GOSUB", 394ll, 2ll }, { (uint8*)"DEFBYTE", 321ll, 2ll, 1ll }, { (uint8*)"DEFUBYTE", 322ll, 2ll, 1ll }, { (uint8*)"DEFSHORT", 323ll, 2ll, 1ll }, { (uint8*)"DEFUSHORT", 324ll, 2ll, 1ll }, { (uint8*)"DEFINT", 325ll, 2ll }, { (uint8*)"DEFUINT", 326ll, 2ll, 1ll }, { (uint8*)"DEFLNG", 327ll, 2ll }, { (uint8*)"DEFULNG", 328ll, 2ll, 1ll }, { (uint8*)"DEFLONGINT", 329ll, 2ll, 1ll }, { (uint8*)"DEFULONGINT", 330ll, 2ll, 1ll }, { (uint8*)"DEFSNG", 331ll, 2ll }, { (uint8*)"DEFDBL", 332ll, 2ll }, { (uint8*)"DEFSTR", 333ll, 2ll }, { (uint8*)"OPTION", 343ll, 2ll }, { (uint8*)"EXPLICIT", 318ll, 2ll, 1ll }, { (uint8*)"SADD", 399ll, 2ll }, { (uint8*)"ON", 498ll, 2ll }, { (uint8*)"ERROR", 499ll, 2ll }, { (uint8*)"SIN", 452ll, 2ll }, { (uint8*)"ASIN", 453ll, 2ll, 1ll }, { (uint8*)"COS", 454ll, 2ll }, { (uint8*)"ACOS", 455ll, 2ll, 1ll }, { (uint8*)"TAN", 456ll, 2ll }, { (uint8*)"ATN", 457ll, 2ll }, { (uint8*)"SQR", 458ll, 2ll }, { (uint8*)"LOG", 459ll, 2ll }, { (uint8*)"EXP", 460ll, 2ll }, { (uint8*)"ATAN2", 462ll, 2ll, 1ll }, { (uint8*)"RESUME", 502ll, 2ll }, { (uint8*)"ERR", 501ll, 2ll }, { (uint8*)"REDIM", 310ll, 2ll }, { (uint8*)"ERASE", 494ll, 2ll }, { (uint8*)"LBOUND", 495ll, 2ll }, { (uint8*)"UBOUND", 496ll, 2ll }, { (uint8*)"STR", 423ll, 2ll, 2ll }, { (uint8*)"CVD", 424ll, 2ll }, { (uint8*)"CVS", 425ll, 2ll }, { (uint8*)"CVI", 426ll, 2ll }, { (uint8*)"CVL", 427ll, 2ll }, { (uint8*)"CVSHORT", 428ll, 2ll, 1ll }, { (uint8*)"CVLONGINT", 429ll, 2ll, 1ll }, { (uint8*)"MKD", 430ll, 2ll, 2ll }, { (uint8*)"MKS", 431ll, 2ll, 2ll }, { (uint8*)"MKI", 432ll, 2ll, 2ll }, { (uint8*)"MKL", 433ll, 2ll, 2ll }, { (uint8*)"MKSHORT", 434ll, 2ll, 1ll }, { (uint8*)"MKLONGINT", 435ll, 2ll, 1ll }, { (uint8*)"WSTR", 436ll, 2ll, 1ll }, { (uint8*)"MID", 437ll, 2ll, 2ll }, { (uint8*)"INSTR", 438ll, 2ll }, { (uint8*)"INSTRREV", 439ll, 2ll, 1ll }, { (uint8*)"TRIM", 440ll, 2ll, 1ll }, { (uint8*)"RTRIM", 441ll, 2ll, 2ll }, { (uint8*)"LTRIM", 442ll, 2ll, 2ll }, { (uint8*)"LCASE", 443ll, 2ll, 2ll }, { (uint8*)"UCASE", 444ll, 2ll, 2ll }, { (uint8*)"RESTORE", 445ll, 2ll }, { (uint8*)"READ", 446ll, 2ll }, { (uint8*)"PRINT", 463ll, 2ll }, { (uint8*)"LPRINT", 464ll, 2ll }, { (uint8*)"OPEN", 470ll, 2ll }, { (uint8*)"CLOSE", 471ll, 2ll }, { (uint8*)"SEEK", 472ll, 2ll }, { (uint8*)"PUT", 473ll, 2ll }, { (uint8*)"GET", 474ll, 2ll }, { (uint8*)"ACCESS", 475ll, 2ll }, { (uint8*)"WRITE", 476ll, 2ll }, { (uint8*)"LOCK", 477ll, 2ll }, { (uint8*)"INPUT", 478ll, 2ll }, { (uint8*)"WINPUT", 479ll, 2ll, 1ll }, { (uint8*)"OUTPUT", 480ll, 2ll }, { (uint8*)"BINARY", 481ll, 2ll }, { (uint8*)"RANDOM", 482ll, 2ll }, { (uint8*)"APPEND", 483ll, 2ll }, { (uint8*)"ENCODING", 484ll, 2ll, 1ll }, { (uint8*)"NAME", 485ll, 2ll }, { (uint8*)"WIDTH", 491ll, 2ll }, { (uint8*)"COLOR", 492ll, 2ll }, { (uint8*)"PRESERVE", 313ll, 2ll }, { (uint8*)"SPC", 486ll, 2ll }, { (uint8*)"TAB", 487ll, 2ll }, { (uint8*)"LINE", 488ll, 2ll }, { (uint8*)"VIEW", 489ll, 2ll }, { (uint8*)"UNLOCK", 490ll, 2ll }, { (uint8*)"CHR", 421ll, 2ll, 2ll }, { (uint8*)"WCHR", 422ll, 2ll, 1ll }, { (uint8*)"ASC", 420ll, 2ll }, { (uint8*)"LSET", 418ll, 2ll }, { (uint8*)"RSET", 419ll, 2ll }, { (uint8*)"PSET", 504ll, 2ll }, { (uint8*)"PRESET", 505ll, 2ll }, { (uint8*)"POINT", 506ll, 2ll }, { (uint8*)"CIRCLE", 507ll, 2ll }, { (uint8*)"WINDOW", 508ll, 2ll }, { (uint8*)"PALETTE", 509ll, 2ll }, { (uint8*)"SCREEN", 510ll, 2ll, 1ll }, { (uint8*)"SCREEN", 511ll, 2ll, 4ll }, { (uint8*)"PAINT", 512ll, 2ll }, { (uint8*)"DRAW", 513ll, 2ll }, { (uint8*)"IMAGECREATE", 514ll, 2ll, 1ll }, { (uint8*)"THREADCALL", 519ll, 2ll, 1ll }, { (uint8*)"CVA_START", 515ll, 1ll, 1ll }, { (uint8*)"CVA_END", 517ll, 1ll, 1ll }, { (uint8*)"CVA_ARG", 516ll, 1ll, 1ll }, { (uint8*)"CVA_COPY", 518ll, 1ll, 1ll }, { (uint8*)0ull } };
static uint8 KWDFALSE$[6] = "FALSE";
static uint8 KWDTRUE$[5] = "TRUE";

void SYMBKEYWORDINIT( void )
{
	label$10:;
	int64 I$1;
	I$1 = 0ll;
	label$12:;
	if( *(uint8**)((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) == (uint8*)0ull ) goto label$13;
	{
		uint8* KNAME$2;
		KNAME$2 = *(uint8**)((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll)));
		if( (*(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 24ll) & 1ll) == 0ll ) goto label$15;
		{
			if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$17;
			{
				FBSTRING TMP$333$4;
				static FBSTRING TMP$4;
				__builtin_memset( &TMP$333$4, 0, 24ll );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$333$4, (void*)"__", 3ll, (void*)KNAME$2, 0ll );
				fb_StrAssign( (void*)&TMP$4, -1ll, (void*)vr$6, -1ll, 0 );
				KNAME$2 = (uint8*)*(uint8**)&TMP$4;
			}
			label$17:;
			label$16:;
		}
		label$15:;
		label$14:;
		if( (*(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 24ll) & 4ll) == 0ll ) goto label$19;
		{
			if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$21;
			{
				I$1 = I$1 + 1ll;
				goto label$12;
			}
			label$21:;
			label$20:;
		}
		label$19:;
		label$18:;
		if( (*(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 24ll) & 2ll) == 0ll ) goto label$23;
		{
			SYMBADDKEYWORD( KNAME$2, *(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 8ll), *(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 16ll), (struct $8FBHASHTB*)0ull, 17ll, 1048576ll );
		}
		goto label$22;
		label$23:;
		{
			SYMBADDKEYWORD( KNAME$2, *(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 8ll), *(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$1 << (5ll & 63ll))) + 16ll), (struct $8FBHASHTB*)0ull, 2147483648ll, 0ll );
		}
		label$22:;
		I$1 = I$1 + 1ll;
	}
	goto label$12;
	label$13:;
	label$11:;
}

struct $8FBSYMBOL* SYMBADDKEYWORD( uint8* SYMBOL$1, int64 ID$1, int64 CLASS_$1, struct $8FBHASHTB* HASHTB$1, int64 DTYPE$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	struct $8FBSYMBOL* K$1;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 33ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 196800ll), HASHTB$1, 6ll, SYMBOL$1, (uint8*)0ull, DTYPE$1, (struct $8FBSYMBOL*)0ull, ATTRIB$1, 0ll );
	K$1 = vr$2;
	if( K$1 != (struct $8FBSYMBOL*)0ull ) goto label$27;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$25;
	}
	label$27:;
	label$26:;
	*(int64*)((uint8*)K$1 + 96ll) = ID$1;
	*($10FB_TKCLASS*)((uint8*)K$1 + 104ll) = CLASS_$1;
	fb$result$1 = K$1;
	label$25:;
	return fb$result$1;
}

uint8* SYMBKEYWORDGETTEXT( int64 TK$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$28:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$33:;
		{
			if( *(int64*)(((int64)(struct $7SYMBKWD*)KWDTB$ + (I$2 << (5ll & 63ll))) + 8ll) != TK$1 ) goto label$35;
			{
				fb$result$1 = *(uint8**)((int64)(struct $7SYMBKWD*)KWDTB$ + (I$2 << (5ll & 63ll)));
				goto label$29;
			}
			label$35:;
			label$34:;
		}
		label$31:;
		I$2 = I$2 + 1ll;
		label$30:;
		if( I$2 <= 262ll ) goto label$33;
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
	__builtin_memset( &V$1, 0, 8ll );
	uint8 ID$1[11];
	__builtin_memset( (uint8*)ID$1, 0, 11ll );
	$13FB_SYMBATTRIB ATTRIB$1;
	struct $8FBSYMBOL* SYM$1;
	ATTRIB$1 = 3072ll;
	*(int64*)&V$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$39;
	{
		fb_StrAssign( (void*)ID$1, 11ll, (void*)"__", 3ll, -1 );
		fb_StrConcatAssign( (void*)ID$1, 11ll, (void*)KWDFALSE$, 6ll, -1 );
	}
	goto label$38;
	label$39:;
	{
		fb_StrAssign( (void*)ID$1, 11ll, (void*)KWDFALSE$, 6ll, -1 );
	}
	label$38:;
	struct $8FBSYMBOL* vr$7 = SYMBADDCONST( (uint8*)ID$1, 1ll, (struct $8FBSYMBOL*)0ull, &V$1, ATTRIB$1 );
	SYM$1 = vr$7;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$41;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 1048576ll;
	}
	label$41:;
	label$40:;
	*(int64*)&V$1 = -1ll;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$43;
	{
		fb_StrAssign( (void*)ID$1, 11ll, (void*)"__", 3ll, -1 );
		fb_StrConcatAssign( (void*)ID$1, 11ll, (void*)KWDTRUE$, 5ll, -1 );
	}
	goto label$42;
	label$43:;
	{
		fb_StrAssign( (void*)ID$1, 11ll, (void*)KWDTRUE$, 5ll, -1 );
	}
	label$42:;
	struct $8FBSYMBOL* vr$16 = SYMBADDCONST( (uint8*)ID$1, 1ll, (struct $8FBSYMBOL*)0ull, &V$1, ATTRIB$1 );
	SYM$1 = vr$16;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$45;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 1048576ll;
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
	int64 DTYPE$1;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$334$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$49;
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
		$19FB_CVA_LIST_TYPEDEF TMP$337$2;
		$19FB_CVA_LIST_TYPEDEF vr$0 = FBGETBACKENDVALISTTYPE(  );
		TMP$337$2 = vr$0;
		if( TMP$337$2 != 2ll ) goto label$51;
		label$52:;
		{
			DTYPE$1 = 19922976ll;
			SYMBADDTYPEDEF( PID$1, DTYPE$1, (struct $8FBSYMBOL*)0ull, *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 1352ll) );
		}
		goto label$50;
		label$51:;
		if( TMP$337$2 != 3ll ) goto label$53;
		label$54:;
		{
			struct $8FBSYMBOL* vr$1 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, (struct $8FBSYMBOL*)0ull, (uint8*)"__va_list_tag", (uint8*)"__va_list_tag", 0ll, 0ll, 0ll, 0ll, 0ll );
			S$1 = vr$1;
			SYMBADDFIELD( S$1, (uint8*)"gp_offset", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 12ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"fp_offset", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 12ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"overflow_arg_area", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"reg_save_area", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBSTRUCTEND( S$1, 0ll );
			*(int32*)((uint8*)S$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)S$1 + 208ll) | 3145728ll);
			SYMBADDTYPEDEF( PID$1, ((*(int64*)((uint8*)S$1 + 56ll) & 511ll) & -32505857ll) | 19922944ll, S$1, *(int64*)((uint8*)S$1 + 80ll) );
		}
		goto label$50;
		label$53:;
		if( TMP$337$2 != 4ll ) goto label$55;
		label$56:;
		{
			struct $8FBSYMBOL* vr$12 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, (struct $8FBSYMBOL*)0ull, (uint8*)"__va_list", (uint8*)"__va_list", 0ll, 0ll, 0ll, 0ll, 0ll );
			S$1 = vr$12;
			SYMBADDFIELD( S$1, (uint8*)"__stack", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"__gr_top", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"__vr_top", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"__gr_offs", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 11ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBADDFIELD( S$1, (uint8*)"__vr_offs", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 11ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBSTRUCTEND( S$1, 0ll );
			*(int32*)((uint8*)S$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)S$1 + 208ll) | 4194304ll);
			SYMBADDTYPEDEF( PID$1, ((*(int64*)((uint8*)S$1 + 56ll) & 511ll) & -32505857ll) | 19922944ll, S$1, *(int64*)((uint8*)S$1 + 80ll) );
		}
		goto label$50;
		label$55:;
		if( TMP$337$2 != 5ll ) goto label$57;
		label$58:;
		{
			struct $8FBSYMBOL* vr$23 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, (struct $8FBSYMBOL*)0ull, (uint8*)"__va_list", (uint8*)"__va_list", 0ll, 0ll, 0ll, 0ll, 0ll );
			S$1 = vr$23;
			SYMBADDFIELD( S$1, (uint8*)"__ap", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$334$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
			SYMBSTRUCTEND( S$1, 0ll );
			*(int32*)((uint8*)S$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)S$1 + 208ll) | 5242880ll);
			SYMBADDTYPEDEF( PID$1, ((*(int64*)((uint8*)S$1 + 56ll) & 511ll) & -32505857ll) | 19922944ll, S$1, *(int64*)((uint8*)S$1 + 80ll) );
		}
		goto label$50;
		label$57:;
		{
			DTYPE$1 = 4194336ll;
			SYMBADDTYPEDEF( PID$1, DTYPE$1, (struct $8FBSYMBOL*)0ull, *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 1352ll) );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}
