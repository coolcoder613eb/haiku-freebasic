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
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint16* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint16* fb_WstrAssign( uint16*, int64, uint16* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_FloatToStr( float );
FBSTRING* fb_DoubleToStr( double );
uint16* fb_StrToWstr( uint8* );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint16* );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
static void fb_ctor__symbzconst( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL*, uint8*, int64, int64, int64 );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDCONST( uint8*, int64, struct $8FBSYMBOL*, union $7FBVALUE*, $13FB_SYMBATTRIB );
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
FBSTRING* HFLOATTOHEX( double, int64 );
uint8* HESCAPEW( uint16* );
uint8* HUNESCAPE( uint8*, int64* );
uint16* HUNESCAPEW( uint16*, int64* );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint16* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint16* );
static struct $8FBSYMBOL* HALLOCINTORFLOATCONST( FBSTRING*, int64 );
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
static struct $8FBARRAY2IlE tmp$82$;

struct $8FBSYMBOL* SYMBADDCONST( uint8* SYMBOL$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, union $7FBVALUE* VALUE$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$1 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, 2ll, (uint8*)SYMBOL$1, (uint8*)0ull, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0ll );
	SYM$1 = vr$1;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$13;
	{
		goto label$11;
	}
	label$13:;
	label$12:;
	__builtin_memcpy( (union $7FBVALUE*)((uint8*)SYM$1 + 96ll), VALUE$1, 8 );
	fb$result$1 = SYM$1;
	label$11:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBREUSEORADDCONST( uint8* ID$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, union $7FBVALUE* VALUE$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDCONST( ID$1, DTYPE$1, SUBTYPE$1, VALUE$1, ATTRIB$1 );
	SYM$1 = vr$1;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$17;
	{
		struct $8FBSYMBOL* vr$2 = SYMBLOOKUPBYNAMEANDCLASS( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll), (uint8*)ID$1, 2ll, 0ll, 0ll );
		SYM$1 = vr$2;
		if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$19;
		{
			goto label$15;
		}
		label$19:;
		label$18:;
		int64 IS_SAME$2;
		IS_SAME$2 = 0ll;
		if( ((int64)-(*(int64*)((uint8*)SYM$1 + 56ll) == DTYPE$1) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) == SUBTYPE$1)) == 0ll ) goto label$21;
		{
			{
				int64 TMP$83$4;
				TMP$83$4 = DTYPE$1 & 511ll;
				if( TMP$83$4 == 17ll ) goto label$24;
				label$25:;
				if( TMP$83$4 == 4ll ) goto label$24;
				label$26:;
				if( TMP$83$4 != 7ll ) goto label$23;
				label$24:;
				{
					IS_SAME$2 = (int64)-(*(struct $8FBSYMBOL**)VALUE$1 == *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96ll));
				}
				goto label$22;
				label$23:;
				if( TMP$83$4 == 15ll ) goto label$28;
				label$29:;
				if( TMP$83$4 != 16ll ) goto label$27;
				label$28:;
				{
					IS_SAME$2 = (int64)-(*(uint64*)VALUE$1 == *(uint64*)((uint8*)SYM$1 + 96ll));
				}
				goto label$22;
				label$27:;
				{
					IS_SAME$2 = (int64)-(*(int64*)VALUE$1 == *(int64*)((uint8*)SYM$1 + 96ll));
				}
				label$30:;
				label$22:;
			}
		}
		label$21:;
		label$20:;
		if( IS_SAME$2 != 0ll ) goto label$32;
		{
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 1048576ll) == 0ll ) goto label$34;
			{
				ERRREPORTWARN( 39ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				SYMBDELFROMHASH( SYM$1 );
				struct $8FBSYMBOL* vr$20 = SYMBADDCONST( ID$1, DTYPE$1, SUBTYPE$1, VALUE$1, ATTRIB$1 );
				SYM$1 = vr$20;
			}
			goto label$33;
			label$34:;
			{
				SYM$1 = (struct $8FBSYMBOL*)0ull;
			}
			label$33:;
		}
		goto label$31;
		label$32:;
		{
			*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) & -1048577ll;
		}
		label$31:;
	}
	label$17:;
	label$16:;
	fb$result$1 = SYM$1;
	label$15:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCFLOATCONST( double VALUE$1, int64 DTYPE$1 )
{
	FBSTRING TMP$87$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$39:;
	__builtin_memset( &TMP$87$1, 0, 24ll );
	FBSTRING* vr$2 = HFLOATTOHEX( VALUE$1, DTYPE$1 );
	fb_StrAssign( (void*)&TMP$87$1, -1ll, (void*)vr$2, -1ll, 0 );
	struct $8FBSYMBOL* vr$5 = HALLOCINTORFLOATCONST( &TMP$87$1, DTYPE$1 );
	fb$result$1 = vr$5;
	fb_StrDelete( (FBSTRING*)&TMP$87$1 );
	label$40:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCINTCONST( int64 VALUE$1, int64 DTYPE$1 )
{
	int64 TMP$89$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$41:;
	FBSTRING SVALUE$1;
	fb_StrInit( (void*)&SVALUE$1, -1ll, (void*)"0x", 3ll, 0 );
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$43;
	TMP$89$1 = 24ll;
	goto label$46;
	label$43:;
	TMP$89$1 = DTYPE$1 & 31ll;
	label$46:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$1 * 56ll)) + 8ll) != 8ll ) goto label$45;
	{
		FBSTRING* vr$5 = fb_HEXEx_l( (uint64)VALUE$1, 16 );
		fb_StrConcatAssign( (void*)&SVALUE$1, -1ll, (void*)vr$5, -1ll, 0 );
	}
	goto label$44;
	label$45:;
	{
		FBSTRING* vr$9 = fb_HEXEx_l( (uint64)(uint32)VALUE$1, 8 );
		fb_StrConcatAssign( (void*)&SVALUE$1, -1ll, (void*)vr$9, -1ll, 0 );
	}
	label$44:;
	struct $8FBSYMBOL* vr$12 = HALLOCINTORFLOATCONST( &SVALUE$1, DTYPE$1 );
	fb$result$1 = vr$12;
	fb_StrDelete( (FBSTRING*)&SVALUE$1 );
	label$42:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8* SNAME$1, int64 STRLENGTH$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$47:;
	static uint8 ID$1[134];
	static uint8 ID_ALIAS$1[134];
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$90$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	int64 INTERNALSTRLEN$1;
	int64 vr$1 = fb_StrLen( (void*)SNAME$1, 0ll );
	INTERNALSTRLEN$1 = vr$1;
	if( STRLENGTH$1 >= 0ll ) goto label$50;
	{
		STRLENGTH$1 = INTERNALSTRLEN$1;
	}
	label$50:;
	label$49:;
	if( INTERNALSTRLEN$1 > 122ll ) goto label$52;
	{
		FBSTRING TMP$92$2;
		fb_StrAssign( (void*)ID$1, 134ll, (void*)"{fbsc}", 7ll, 0 );
		__builtin_memset( &TMP$92$2, 0, 24ll );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$92$2, (void*)ID$1, 134ll, (void*)SNAME$1, 0ll );
		fb_StrAssign( (void*)ID$1, 134ll, (void*)vr$4, -1ll, 0 );
	}
	goto label$51;
	label$52:;
	{
		uint8* vr$5 = SYMBUNIQUEID( (boolean)0ll );
		fb_StrAssign( (void*)ID$1, 134ll, (void*)vr$5, 0ll, 0 );
	}
	label$51:;
	struct $8FBSYMBOL* vr$7 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll), (uint8*)ID$1, 1ll, -1ll, 0ll );
	S$1 = vr$7;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$54;
	{
		fb$result$1 = S$1;
		goto label$48;
	}
	label$54:;
	label$53:;
	uint8* vr$8 = SYMBUNIQUEID( (boolean)0ll );
	fb_StrAssign( (void*)ID_ALIAS$1, 134ll, (void*)vr$8, 0ll, 0 );
	int64 STRSIZE$1;
	STRSIZE$1 = STRLENGTH$1 + 1ll;
	struct $8FBSYMBOL* vr$10 = SYMBADDVAR( (uint8*)ID$1, (uint8*)ID_ALIAS$1, 4ll, (struct $8FBSYMBOL*)0ull, STRSIZE$1, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$90$1, 3073ll, 137ll );
	S$1 = vr$10;
	void* vr$13 = XALLOCATE( (int32)(INTERNALSTRLEN$1 + 1ll) );
	*(uint8**)((uint8*)S$1 + 96ll) = (uint8*)vr$13;
	fb_StrAssign( *(void**)((uint8*)S$1 + 96ll), 0ll, (void*)SNAME$1, 0ll, 0 );
	fb$result$1 = S$1;
	label$48:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint16* SNAME$1, int64 STRLENGTH$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$55:;
	static uint8 ID$1[134];
	static uint8 ID_ALIAS$1[134];
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$93$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	int64 INTERNALSTRLEN$1;
	int64 vr$1 = fb_WstrLen( (uint16*)SNAME$1 );
	INTERNALSTRLEN$1 = vr$1;
	if( STRLENGTH$1 >= 0ll ) goto label$58;
	{
		STRLENGTH$1 = INTERNALSTRLEN$1;
	}
	label$58:;
	label$57:;
	if( (INTERNALSTRLEN$1 << (3ll & 63ll)) > 122ll ) goto label$60;
	{
		FBSTRING TMP$95$2;
		fb_StrAssign( (void*)ID$1, 134ll, (void*)"{fbwc}", 7ll, 0 );
		uint8* vr$3 = HESCAPEW( (uint16*)SNAME$1 );
		__builtin_memset( &TMP$95$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$95$2, (void*)ID$1, 134ll, (void*)vr$3, 0ll );
		fb_StrAssign( (void*)ID$1, 134ll, (void*)vr$6, -1ll, 0 );
	}
	goto label$59;
	label$60:;
	{
		uint8* vr$7 = SYMBUNIQUEID( (boolean)0ll );
		fb_StrAssign( (void*)ID$1, 134ll, (void*)vr$7, 0ll, 0 );
	}
	label$59:;
	struct $8FBSYMBOL* vr$9 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll), (uint8*)ID$1, 1ll, -1ll, 0ll );
	S$1 = vr$9;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$62;
	{
		fb$result$1 = S$1;
		goto label$56;
	}
	label$62:;
	label$61:;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)0ll );
	fb_StrAssign( (void*)ID_ALIAS$1, 134ll, (void*)vr$10, 0ll, 0 );
	int64 STRSIZE$1;
	STRSIZE$1 = (STRLENGTH$1 + 1ll) * *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll);
	struct $8FBSYMBOL* vr$13 = SYMBADDVAR( (uint8*)ID$1, (uint8*)ID_ALIAS$1, 7ll, (struct $8FBSYMBOL*)0ull, STRSIZE$1, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$93$1, 3073ll, 137ll );
	S$1 = vr$13;
	void* vr$17 = XALLOCATE( (int32)((INTERNALSTRLEN$1 << (1ll & 63ll)) + 2ll) );
	*(uint16**)((uint8*)S$1 + 96ll) = (uint16*)vr$17;
	fb_WstrAssign( *(uint16**)((uint8*)S$1 + 96ll), 0ll, (uint16*)SNAME$1 );
	fb$result$1 = S$1;
	label$56:;
	return fb$result$1;
}

void SYMBDELCONST( struct $8FBSYMBOL* S$1 )
{
	label$63:;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$66;
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$67:;
	{
		int64 TMP$96$2;
		TMP$96$2 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
		if( TMP$96$2 == 17ll ) goto label$71;
		label$72:;
		if( TMP$96$2 == 18ll ) goto label$71;
		label$73:;
		if( TMP$96$2 != 4ll ) goto label$70;
		label$71:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)S$1 + 96ll) + 96ll), 0ll, 0 );
		}
		goto label$69;
		label$70:;
		if( TMP$96$2 != 16ll ) goto label$74;
		label$75:;
		{
			FBSTRING* vr$7 = fb_DoubleToStr( *(double*)((uint8*)S$1 + 96ll) );
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$7, -1ll, 0 );
		}
		goto label$69;
		label$74:;
		if( TMP$96$2 != 15ll ) goto label$76;
		label$77:;
		{
			FBSTRING* vr$11 = fb_FloatToStr( (float)*(double*)((uint8*)S$1 + 96ll) );
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$11, -1ll, 0 );
		}
		goto label$69;
		label$76:;
		{
			int64 TMP$97$3;
			if( (*(int64*)((uint8*)S$1 + 56ll) & 480ll) == 0ll ) goto label$79;
			TMP$97$3 = 24ll;
			goto label$82;
			label$79:;
			TMP$97$3 = *(int64*)((uint8*)S$1 + 56ll) & 31ll;
			label$82:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$3 * 56ll)) + 16ll) == 0ll ) goto label$81;
			{
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)S$1 + 96ll) );
				fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$19, -1ll, 0 );
			}
			goto label$80;
			label$81:;
			{
				FBSTRING* vr$22 = fb_ULongintToStr( *(uint64*)((uint8*)S$1 + 96ll) );
				fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$22, -1ll, 0 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$83:;
	struct $8FBSYMBOL* vr$7 = SYMBADDCONST( (uint8*)0ull, *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), (union $7FBVALUE*)((uint8*)SYM$1 + 96ll), *($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 8ll) );
	fb$result$1 = vr$7;
	label$84:;
	return fb$result$1;
}

uint8* SYMBGETCONSTSTRASSTR( struct $8FBSYMBOL* S$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$85:;
	static struct $8DZSTRING RES$1;
	DZSTRASSIGN( &RES$1, (uint8*)0ull );
	if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$88;
	{
		int64 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 8ll );
		uint8* TEXT$2;
		uint8* vr$6 = HUNESCAPE( *(uint8**)((uint8*)S$1 + 96ll), &TEXTLEN$2 );
		TEXT$2 = vr$6;
		int64 vr$7 = fb_StrLen( (void*)TEXT$2, 0ll );
		if( vr$7 == TEXTLEN$2 ) goto label$90;
		{
			DZSTRCONCATASSIGN( &RES$1, (uint8*)"!\x22" );
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$101$4;
				TMP$101$4 = TEXTLEN$2 + -1ll;
				goto label$91;
				label$94:;
				{
					FBSTRING TMP$103$5;
					FBSTRING TMP$104$5;
					__builtin_memset( &TMP$104$5, 0, 24ll );
					FBSTRING* vr$12 = fb_HEXEx_i( (uint32)*(uint8*)((uint8*)TEXT$2 + I$4), 2 );
					__builtin_memset( &TMP$103$5, 0, 24ll );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$103$5, (void*)"\x5Cx", 3ll, (void*)vr$12, -1ll );
					fb_StrAssign( (void*)&TMP$104$5, -1ll, (void*)vr$15, -1ll, 0 );
					DZSTRCONCATASSIGN( &RES$1, (uint8*)*(uint8**)&TMP$104$5 );
					fb_StrDelete( (FBSTRING*)&TMP$104$5 );
				}
				label$92:;
				I$4 = I$4 + 1ll;
				label$91:;
				if( I$4 <= TMP$101$4 ) goto label$94;
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
		int64 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 8ll );
		uint16* TEXT$2;
		uint16* vr$22 = HUNESCAPEW( *(uint16**)((uint8*)S$1 + 96ll), &TEXTLEN$2 );
		TEXT$2 = vr$22;
		DZSTRCONCATASSIGN( &RES$1, (uint8*)"!\x22" );
		{
			int64 I$3;
			I$3 = 0ll;
			int64 TMP$107$3;
			TMP$107$3 = TEXTLEN$2 + -1ll;
			goto label$95;
			label$98:;
			{
				FBSTRING TMP$109$4;
				FBSTRING TMP$110$4;
				__builtin_memset( &TMP$110$4, 0, 24ll );
				FBSTRING* vr$28 = fb_HEXEx_i( (uint32)*(uint16*)((uint8*)TEXT$2 + (I$3 << (1ll & 63ll))), 4 );
				__builtin_memset( &TMP$109$4, 0, 24ll );
				FBSTRING* vr$31 = fb_StrConcat( &TMP$109$4, (void*)"\x5Cu", 3ll, (void*)vr$28, -1ll );
				fb_StrAssign( (void*)&TMP$110$4, -1ll, (void*)vr$31, -1ll, 0 );
				DZSTRCONCATASSIGN( &RES$1, (uint8*)*(uint8**)&TMP$110$4 );
				fb_StrDelete( (FBSTRING*)&TMP$110$4 );
			}
			label$96:;
			I$3 = I$3 + 1ll;
			label$95:;
			if( I$3 <= TMP$107$3 ) goto label$98;
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

uint16* SYMBGETCONSTSTRASWSTR( struct $8FBSYMBOL* S$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$99:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 7ll ) goto label$102;
	{
		uint16* TMP$117$2;
		int64 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 8ll );
		uint16* TEXT$2;
		uint16* vr$6 = HUNESCAPEW( *(uint16**)((uint8*)S$1 + 96ll), &TEXTLEN$2 );
		TEXT$2 = vr$6;
		int64 vr$7 = fb_WstrLen( (uint16*)TEXT$2 );
		if( vr$7 == TEXTLEN$2 ) goto label$104;
		{
			uint16* TMP$111$3;
			uint16* vr$8 = fb_StrToWstr( (uint8*)"!\x22" );
			TMP$111$3 = vr$8;
			DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$111$3 );
			fb_WstrDelete( (uint16*)TMP$111$3 );
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$112$4;
				TMP$112$4 = TEXTLEN$2 + -1ll;
				goto label$105;
				label$108:;
				{
					FBSTRING TMP$113$5;
					FBSTRING TMP$114$5;
					uint16* TMP$115$5;
					__builtin_memset( &TMP$114$5, 0, 24ll );
					FBSTRING* vr$14 = fb_HEXEx_i( (uint32)*(uint16*)((uint8*)TEXT$2 + (I$4 << (1ll & 63ll))), 4 );
					__builtin_memset( &TMP$113$5, 0, 24ll );
					FBSTRING* vr$17 = fb_StrConcat( &TMP$113$5, (void*)"\x5Cu", 3ll, (void*)vr$14, -1ll );
					fb_StrAssign( (void*)&TMP$114$5, -1ll, (void*)vr$17, -1ll, 0 );
					uint16* vr$19 = fb_StrToWstr( (uint8*)*(uint8**)&TMP$114$5 );
					TMP$115$5 = vr$19;
					DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$115$5 );
					fb_WstrDelete( (uint16*)TMP$115$5 );
					fb_StrDelete( (FBSTRING*)&TMP$114$5 );
				}
				label$106:;
				I$4 = I$4 + 1ll;
				label$105:;
				if( I$4 <= TMP$112$4 ) goto label$108;
				label$107:;
			}
		}
		goto label$103;
		label$104:;
		{
			uint16* TMP$116$3;
			uint16* vr$22 = fb_StrToWstr( (uint8*)"$\x22" );
			TMP$116$3 = vr$22;
			DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$116$3 );
			fb_WstrDelete( (uint16*)TMP$116$3 );
			DWSTRCONCATASSIGN( &RES$1, (uint16*)TEXT$2 );
		}
		label$103:;
		uint16* vr$23 = fb_StrToWstr( (uint8*)"\x22" );
		TMP$117$2 = vr$23;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$117$2 );
		fb_WstrDelete( (uint16*)TMP$117$2 );
	}
	goto label$101;
	label$102:;
	{
		uint16* TMP$118$2;
		uint16* TMP$123$2;
		int64 TEXTLEN$2;
		__builtin_memset( &TEXTLEN$2, 0, 8ll );
		uint8* TEXT$2;
		uint8* vr$27 = HUNESCAPE( *(uint8**)((uint8*)S$1 + 96ll), &TEXTLEN$2 );
		TEXT$2 = vr$27;
		uint16* vr$28 = fb_StrToWstr( (uint8*)"!\x22" );
		TMP$118$2 = vr$28;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$118$2 );
		fb_WstrDelete( (uint16*)TMP$118$2 );
		{
			int64 I$3;
			I$3 = 0ll;
			int64 TMP$119$3;
			TMP$119$3 = TEXTLEN$2 + -1ll;
			goto label$109;
			label$112:;
			{
				FBSTRING TMP$120$4;
				FBSTRING TMP$121$4;
				uint16* TMP$122$4;
				__builtin_memset( &TMP$121$4, 0, 24ll );
				FBSTRING* vr$33 = fb_HEXEx_i( (uint32)*(uint8*)((uint8*)TEXT$2 + I$3), 4 );
				__builtin_memset( &TMP$120$4, 0, 24ll );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$120$4, (void*)"\x5Cu", 3ll, (void*)vr$33, -1ll );
				fb_StrAssign( (void*)&TMP$121$4, -1ll, (void*)vr$36, -1ll, 0 );
				uint16* vr$38 = fb_StrToWstr( (uint8*)*(uint8**)&TMP$121$4 );
				TMP$122$4 = vr$38;
				DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$122$4 );
				fb_WstrDelete( (uint16*)TMP$122$4 );
				fb_StrDelete( (FBSTRING*)&TMP$121$4 );
			}
			label$110:;
			I$3 = I$3 + 1ll;
			label$109:;
			if( I$3 <= TMP$119$3 ) goto label$112;
			label$111:;
		}
		uint16* vr$41 = fb_StrToWstr( (uint8*)"\x22" );
		TMP$123$2 = vr$41;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$123$2 );
		fb_WstrDelete( (uint16*)TMP$123$2 );
	}
	label$101:;
	fb$result$1 = *(uint16**)&RES$1;
	goto label$100;
	label$100:;
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

static struct $8FBSYMBOL* HALLOCINTORFLOATCONST( FBSTRING* SVALUE$1, int64 DTYPE$1 )
{
	FBSTRING TMP$86$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$35:;
	static uint8 ID$1[134];
	struct $10FBARRAYDIM DTB$1[1];
	__builtin_memset( (struct $10FBARRAYDIM*)DTB$1, 0, 16ll );
	struct $8FBARRAY1I10FBARRAYDIME tmp$84$1;
	*(struct $10FBARRAYDIM**)&tmp$84$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$84$1 + 8ll) = (struct $10FBARRAYDIM*)DTB$1;
	*(int64*)((uint8*)&tmp$84$1 + 16ll) = 16ll;
	*(int64*)((uint8*)&tmp$84$1 + 24ll) = 16ll;
	*(int64*)((uint8*)&tmp$84$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$84$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$84$1 + 48ll) = 1ll;
	*(int64*)((uint8*)&tmp$84$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$84$1 + 64ll) = 0ll;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	fb_StrAssign( (void*)ID$1, 134ll, (void*)"{fbnc}", 7ll, 0 );
	__builtin_memset( &TMP$86$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$86$1, (void*)ID$1, 134ll, (void*)SVALUE$1, -1ll );
	fb_StrAssign( (void*)ID$1, 134ll, (void*)vr$6, -1ll, 0 );
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$8 = SYMBLOOKUPBYNAMEANDCLASS( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll), (uint8*)ID$1, 1ll, -1ll, 0ll );
	S$1 = vr$8;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$38;
	{
		fb$result$1 = S$1;
		goto label$36;
	}
	label$38:;
	label$37:;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)0ll );
	struct $8FBSYMBOL* vr$11 = SYMBADDVAR( (uint8*)ID$1, (uint8*)vr$10, DTYPE$1, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$84$1, 3073ll, 137ll );
	S$1 = vr$11;
	int64 vr$12 = fb_StrLen( (void*)SVALUE$1, -1ll );
	void* vr$15 = XALLOCATE( (int32)(vr$12 + 1ll) );
	*(uint8**)((uint8*)S$1 + 96ll) = (uint8*)vr$15;
	fb_StrAssign( *(void**)((uint8*)S$1 + 96ll), 0ll, (void*)SVALUE$1, -1ll, 0 );
	fb$result$1 = S$1;
	label$36:;
	return fb$result$1;
}
