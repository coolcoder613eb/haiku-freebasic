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
typedef int32 $12FB_DATACLASS;
typedef int32 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int32 SIZE;
	int32 SIGNED;
	int32 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int32 SIZETYPE;
	uint8* NAME;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 28 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I11FB_DATATYPEE {
	$11FB_DATATYPE* DATA;
	$11FB_DATATYPE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I11FB_DATATYPEE ) == 36 );
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
typedef int32 $22FB_OVLPROC_MATCH_SCORE;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__symbzdata( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
int32 FBIS64BIT( void );
$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32* );
int32 SYMBPROCHASFWDREFINSIGNATURE( struct $8FBSYMBOL* );
int32 TYPETOSIGNED( int32 );
int32 TYPEHASDTOR( int32, struct $8FBSYMBOL* );
int32 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int32 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
$11FB_DATATYPE CLOSESTTYPE( $11FB_DATATYPE, $11FB_DATATYPE, $11FB_DATATYPE );
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
extern int32 SYMB_DTYPEMATCHTB$[16][16];
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
struct $13SYMB_DATATYPE SYMB_DTYPETB$[26] = { { 5, 0, 0, 0, 0, -1, (uint8*)"any" }, { 0, 1, -1, 1, 1, 0, (uint8*)"boolean" }, { 0, 1, -1, 10, 2, 1, (uint8*)"byte" }, { 0, 1, 0, 15, 3, 2, (uint8*)"ubyte" }, { 0, 1, 0, 0, 3, 2, (uint8*)"zstring" }, { 0, 2, -1, 20, 5, 3, (uint8*)"short" }, { 0, 2, 0, 25, 6, 4, (uint8*)"ushort" }, { 0, 2, 0, 0, -1, -1, (uint8*)"wstring" }, { 0, -1, -1, -1, 8, -1, (uint8*)"integer" }, { 0, -1, 0, -1, 9, -1, (uint8*)"uinteger" }, { 0, -1, -1, 0, 8, -1, (uint8*)"enum" }, { 0, 4, -1, 40, 11, 5, (uint8*)"long" }, { 0, 4, 0, 45, 12, 6, (uint8*)"ulong" }, { 0, 8, -1, 80, 13, 7, (uint8*)"longint" }, { 0, 8, 0, 85, 14, 8, (uint8*)"ulongint" }, { 1, 4, -1, 0, 15, 9, (uint8*)"single" }, { 1, 8, -1, 0, 16, 10, (uint8*)"double" }, { 2, -1, 0, 0, 17, -1, (uint8*)"string" }, { 2, 1, 0, 0, 18, -1, (uint8*)"string" }, { 5, -1, 0, 0, 19, -1, (uint8*)"va_list" }, { 3, 0, 0, 0, 20, -1, (uint8*)"type" }, { 3, 0, 0, 0, 21, -1, (uint8*)"namepace" }, { 4, 0, 0, 0, 9, -1, (uint8*)"function" }, { 5, 0, 0, 0, 0, -1, (uint8*)"fwdref" }, { 0, -1, 0, 0, 9, -1, (uint8*)"pointer" }, { 0, 16, 0, 0, 25, -1, (uint8*)"xmmword" } };
int32 SYMB_DTYPEMATCHTB$[16][16];

void SYMBDATAINIT( void )
{
	label$10:;
	int32 vr$0 = FBIS64BIT(  );
	if( vr$0 == 0 ) goto label$13;
	{
		*(int32*)((uint8*)&ENV$ + 296) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 228) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 256) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 284) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 480) = 24;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 676) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 244) = 7;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 272) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 300) = 7;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 692) = 8;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 236) = 81;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 264) = 86;
	}
	goto label$12;
	label$13:;
	{
		*(int32*)((uint8*)&ENV$ + 296) = 4;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 228) = 4;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 256) = 4;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 284) = 4;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 480) = 12;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 676) = 4;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 244) = 5;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 272) = 6;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 300) = 5;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 692) = 6;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 236) = 41;
		*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 264) = 46;
	}
	label$12:;
	*($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 196) = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int32*)((uint8*)&ENV$ + 272) * 28));
	*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int32*)((uint8*)&ENV$ + 272) * 28)) + 4);
	*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 204) = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int32*)((uint8*)&ENV$ + 272) * 28)) + 8);
	*($11FB_DATATYPE*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 212) = *($11FB_DATATYPE*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int32*)((uint8*)&ENV$ + 272) * 28)) + 16);
	$11FB_DATATYPE RANK$1[16];
	__builtin_memset( ($11FB_DATATYPE*)RANK$1, 0, 64 );
	struct $8FBARRAY1I11FB_DATATYPEE tmp$107$1;
	*($11FB_DATATYPE**)&tmp$107$1 = ($11FB_DATATYPE*)RANK$1;
	*($11FB_DATATYPE**)((uint8*)&tmp$107$1 + 4) = ($11FB_DATATYPE*)RANK$1;
	*(int32*)((uint8*)&tmp$107$1 + 8) = 64;
	*(int32*)((uint8*)&tmp$107$1 + 12) = 4;
	*(int32*)((uint8*)&tmp$107$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$107$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$107$1 + 24) = 16;
	*(int32*)((uint8*)&tmp$107$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$107$1 + 32) = 15;
	$11FB_DATATYPE DTYPE1$1;
	$11FB_DATATYPE DTYPE2$1;
	int32 I$1;
	int32 J$1;
	{
		DTYPE1$1 = 1;
		label$17:;
		{
			{
				DTYPE2$1 = 1;
				label$21:;
				{
					*($11FB_DATATYPE*)(((int32)($11FB_DATATYPE*)RANK$1 + (DTYPE2$1 << (2 & 31))) + -4) = DTYPE2$1;
				}
				label$19:;
				DTYPE2$1 = DTYPE2$1 + 1;
				label$18:;
				if( DTYPE2$1 <= 16 ) goto label$21;
				label$20:;
			}
			{
				I$1 = 0;
				label$25:;
				{
					{
						J$1 = I$1 + 1;
						goto label$26;
						label$29:;
						{
							$11FB_DATATYPE vr$13 = CLOSESTTYPE( DTYPE1$1, *($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (I$1 << (2 & 31))), *($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (J$1 << (2 & 31))) );
							if( vr$13 != *(int32*)((int32)($11FB_DATATYPE*)RANK$1 + (J$1 << (2 & 31))) ) goto label$31;
							{
								{
									$11FB_DATATYPE TMP$108$9;
									TMP$108$9 = *($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (I$1 << (2 & 31)));
									*($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (I$1 << (2 & 31))) = *($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (J$1 << (2 & 31)));
									*($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (J$1 << (2 & 31))) = TMP$108$9;
								}
							}
							label$31:;
							label$30:;
						}
						label$27:;
						J$1 = J$1 + 1;
						label$26:;
						if( J$1 <= 15 ) goto label$29;
						label$28:;
					}
				}
				label$23:;
				I$1 = I$1 + 1;
				label$22:;
				if( I$1 <= 14 ) goto label$25;
				label$24:;
			}
			{
				I$1 = 0;
				label$35:;
				{
					DTYPE2$1 = *($11FB_DATATYPE*)((int32)($11FB_DATATYPE*)RANK$1 + (I$1 << (2 & 31)));
					*(int32*)(((int32)(int32*)SYMB_DTYPEMATCHTB$ + (((DTYPE1$1 << (4 & 31)) + DTYPE2$1) << (2 & 31))) + -68) = I$1 * 10;
				}
				label$33:;
				I$1 = I$1 + 1;
				label$32:;
				if( I$1 <= 15 ) goto label$35;
				label$34:;
			}
		}
		label$15:;
		DTYPE1$1 = DTYPE1$1 + 1;
		label$14:;
		if( DTYPE1$1 <= 16 ) goto label$17;
		label$16:;
	}
	label$11:;
}

void TYPEMAX( int32 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, int32 RDTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int32 TMP$109$1;
	int32 TMP$110$1;
	int32 TMP$111$1;
	int32 TMP$112$1;
	label$36:;
	int32 DTYPE1$1;
	int32 DTYPE2$1;
	if( (-((LDTYPE$1 & 511) == (RDTYPE$1 & 511)) & -(LSUBTYPE$1 == RSUBTYPE$1)) == 0 ) goto label$39;
	{
		*DTYPE$1 = LDTYPE$1;
		*SUBTYPE$1 = LSUBTYPE$1;
		goto label$37;
	}
	label$39:;
	label$38:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$40;
	TMP$109$1 = 24;
	goto label$52;
	label$40:;
	TMP$109$1 = LDTYPE$1 & 31;
	label$52:;
	DTYPE1$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$109$1 * 28)) + 16);
	if( (RDTYPE$1 & 480) == 0 ) goto label$41;
	TMP$110$1 = 24;
	goto label$53;
	label$41:;
	TMP$110$1 = RDTYPE$1 & 31;
	label$53:;
	DTYPE2$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$110$1 * 28)) + 16);
	if( DTYPE1$1 != DTYPE2$1 ) goto label$43;
	{
		*DTYPE$1 = DTYPE1$1;
		*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$42;
	label$43:;
	if( (DTYPE1$1 & 480) == 0 ) goto label$45;
	TMP$111$1 = 24;
	goto label$54;
	label$45:;
	TMP$111$1 = DTYPE1$1 & 31;
	label$54:;
	if( (DTYPE2$1 & 480) == 0 ) goto label$46;
	TMP$112$1 = 24;
	goto label$55;
	label$46:;
	TMP$112$1 = DTYPE2$1 & 31;
	label$55:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$111$1 * 28)) == 0) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$112$1 * 28)) == 0)) == 0 ) goto label$44;
	{
		int32 TMP$113$2;
		int32 TMP$114$2;
		if( (DTYPE1$1 & 480) == 0 ) goto label$47;
		TMP$113$2 = 24;
		goto label$56;
		label$47:;
		TMP$113$2 = DTYPE1$1 & 31;
		label$56:;
		if( (DTYPE2$1 & 480) == 0 ) goto label$48;
		TMP$114$2 = 24;
		goto label$57;
		label$48:;
		TMP$114$2 = DTYPE2$1 & 31;
		label$57:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$2 * 28)) + 12) <= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$114$2 * 28)) + 12) ) goto label$50;
		{
			*DTYPE$1 = LDTYPE$1;
			*SUBTYPE$1 = LSUBTYPE$1;
		}
		goto label$49;
		label$50:;
		{
			*DTYPE$1 = RDTYPE$1;
			*SUBTYPE$1 = RSUBTYPE$1;
		}
		label$49:;
	}
	goto label$42;
	label$44:;
	if( DTYPE1$1 <= DTYPE2$1 ) goto label$51;
	{
		*DTYPE$1 = LDTYPE$1;
		*SUBTYPE$1 = LSUBTYPE$1;
	}
	goto label$42;
	label$51:;
	{
		*DTYPE$1 = RDTYPE$1;
		*SUBTYPE$1 = RSUBTYPE$1;
	}
	label$42:;
	label$37:;
}

int32 TYPETOSIGNED( int32 DTYPE$1 )
{
	int32 TMP$115$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$58:;
	int32 DT$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$60;
	TMP$115$1 = 24;
	goto label$75;
	label$60:;
	TMP$115$1 = DTYPE$1 & 31;
	label$75:;
	DT$1 = TMP$115$1;
	int32 ND$1;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DT$1 * 28)) == 0 ) goto label$62;
	{
		fb$result$1 = DTYPE$1;
		goto label$59;
	}
	label$62:;
	label$61:;
	{
		uint32 TMP$116$2;
		TMP$116$2 = (uint32)DT$1;
		goto label$64;
		label$65:;
		{
			ND$1 = 2;
		}
		goto label$63;
		label$66:;
		{
			ND$1 = 5;
		}
		goto label$63;
		label$67:;
		{
			ND$1 = 8;
		}
		goto label$63;
		label$68:;
		{
			int32 vr$4 = TYPETOSIGNED( *(int32*)((uint8*)&ENV$ + 272) );
			fb$result$1 = vr$4;
			goto label$59;
		}
		goto label$63;
		label$69:;
		{
			ND$1 = 11;
		}
		goto label$63;
		label$70:;
		{
			if( *(int32*)((uint8*)&ENV$ + 296) != 8 ) goto label$72;
			{
				ND$1 = 13;
			}
			goto label$71;
			label$72:;
			{
				ND$1 = 11;
			}
			label$71:;
		}
		goto label$63;
		label$73:;
		{
			ND$1 = 13;
		}
		goto label$63;
		label$74:;
		{
			ND$1 = DTYPE$1;
		}
		goto label$63;
		label$64:;
		static const void* tmp$117[22] = {
			&&label$65,
			&&label$65,
			&&label$74,
			&&label$66,
			&&label$68,
			&&label$74,
			&&label$67,
			&&label$74,
			&&label$74,
			&&label$69,
			&&label$74,
			&&label$73,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$70,
		};
		if( (TMP$116$2 - 3u) > 21u ) goto label$74;
		goto *tmp$117[TMP$116$2 - 3u];
		label$63:;
	}
	fb$result$1 = (DTYPE$1 & -512) | (ND$1 & 511);
	label$59:;
	return fb$result$1;
}

int32 TYPETOUNSIGNED( int32 DTYPE$1 )
{
	int32 TMP$118$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$76:;
	int32 DT$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$78;
	TMP$118$1 = 24;
	goto label$92;
	label$78:;
	TMP$118$1 = DTYPE$1 & 31;
	label$92:;
	DT$1 = TMP$118$1;
	int32 ND$1;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DT$1 * 28)) == 0 ) goto label$80;
	{
		fb$result$1 = DTYPE$1;
		goto label$77;
	}
	label$80:;
	label$79:;
	{
		uint32 TMP$119$2;
		TMP$119$2 = (uint32)DT$1;
		goto label$82;
		label$83:;
		{
			ND$1 = 3;
		}
		goto label$81;
		label$84:;
		{
			ND$1 = 6;
		}
		goto label$81;
		label$85:;
		{
			ND$1 = 9;
		}
		goto label$81;
		label$86:;
		{
			ND$1 = 12;
		}
		goto label$81;
		label$87:;
		{
			if( *(int32*)((uint8*)&ENV$ + 296) != 8 ) goto label$89;
			{
				ND$1 = 14;
			}
			goto label$88;
			label$89:;
			{
				ND$1 = 12;
			}
			label$88:;
		}
		goto label$81;
		label$90:;
		{
			ND$1 = 14;
		}
		goto label$81;
		label$91:;
		{
			ND$1 = DTYPE$1;
		}
		goto label$81;
		label$82:;
		static const void* tmp$120[23] = {
			&&label$83,
			&&label$91,
			&&label$91,
			&&label$84,
			&&label$91,
			&&label$91,
			&&label$85,
			&&label$91,
			&&label$85,
			&&label$86,
			&&label$91,
			&&label$90,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$91,
			&&label$87,
		};
		if( (TMP$119$2 - 2u) > 22u ) goto label$91;
		goto *tmp$120[TMP$119$2 - 2u];
		label$81:;
	}
	fb$result$1 = (DTYPE$1 & -512) | (ND$1 & 511);
	label$77:;
	return fb$result$1;
}

int32 TYPEHASCTOR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$93:;
	{
		int32 TMP$121$2;
		int32 TMP$122$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$95;
		TMP$121$2 = 24;
		goto label$99;
		label$95:;
		TMP$121$2 = DTYPE$1 & 31;
		label$99:;
		TMP$122$2 = TMP$121$2;
		if( TMP$122$2 != 20 ) goto label$97;
		label$98:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
			fb$result$1 = -(vr$3 != (struct $8FBSYMBOL*)0u);
		}
		label$97:;
		label$96:;
	}
	label$94:;
	return fb$result$1;
}

int32 TYPEHASDEFCTOR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$100:;
	{
		int32 TMP$123$2;
		int32 TMP$124$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$102;
		TMP$123$2 = 24;
		goto label$106;
		label$102:;
		TMP$123$2 = DTYPE$1 & 31;
		label$106:;
		TMP$124$2 = TMP$123$2;
		if( TMP$124$2 != 20 ) goto label$104;
		label$105:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
			fb$result$1 = -(vr$3 != (struct $8FBSYMBOL*)0u);
		}
		label$104:;
		label$103:;
	}
	label$101:;
	return fb$result$1;
}

int32 TYPEHASDTOR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$107:;
	{
		int32 TMP$125$2;
		int32 TMP$126$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$109;
		TMP$125$2 = 24;
		goto label$113;
		label$109:;
		TMP$125$2 = DTYPE$1 & 31;
		label$113:;
		TMP$126$2 = TMP$125$2;
		if( TMP$126$2 != 20 ) goto label$111;
		label$112:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
			fb$result$1 = -(vr$3 != (struct $8FBSYMBOL*)0u);
		}
		label$111:;
		label$110:;
	}
	label$108:;
	return fb$result$1;
}

int32 TYPENEEDSDTORCALL( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$114:;
	int32 vr$1 = TYPEHASDTOR( DTYPE$1, SUBTYPE$1 );
	fb$result$1 = vr$1 | -((DTYPE$1 & 511) == 17);
	label$115:;
	return fb$result$1;
}

int32 TYPEISTRIVIAL( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$116:;
	fb$result$1 = -1;
	{
		int32 TMP$127$2;
		TMP$127$2 = DTYPE$1 & 511;
		if( TMP$127$2 != 17 ) goto label$119;
		label$120:;
		{
			fb$result$1 = 0;
		}
		goto label$118;
		label$119:;
		if( TMP$127$2 != 20 ) goto label$121;
		label$122:;
		{
			int32 vr$2 = SYMBCOMPISTRIVIAL( SUBTYPE$1 );
			fb$result$1 = vr$2;
		}
		label$121:;
		label$118:;
	}
	label$117:;
	return fb$result$1;
}

int32 TYPEHASFWDREFINSIGNATURE( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$123:;
	{
		int32 TMP$128$2;
		TMP$128$2 = DTYPE$1 & 31;
		if( TMP$128$2 != 23 ) goto label$126;
		label$127:;
		{
			fb$result$1 = -1;
		}
		goto label$125;
		label$126:;
		if( TMP$128$2 != 22 ) goto label$128;
		label$129:;
		{
			int32 vr$2 = SYMBPROCHASFWDREFINSIGNATURE( SUBTYPE$1 );
			fb$result$1 = vr$2;
		}
		goto label$125;
		label$128:;
		{
			fb$result$1 = 0;
		}
		label$130:;
		label$125:;
	}
	label$124:;
	return fb$result$1;
}

int32 TYPEMERGE( int32 DTYPE1$1, int32 DTYPE2$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$131:;
	int32 OLDPTRCOUNT$1;
	int32 ADDPTRCOUNT$1;
	OLDPTRCOUNT$1 = (DTYPE1$1 & 480) >> (5 & 31);
	ADDPTRCOUNT$1 = (DTYPE2$1 & 480) >> (5 & 31);
	if( (OLDPTRCOUNT$1 + ADDPTRCOUNT$1) <= 8 ) goto label$134;
	{
		ERRREPORT( 274, 0, (uint8*)0u );
		OLDPTRCOUNT$1 = 8 - ADDPTRCOUNT$1;
	}
	label$134:;
	label$133:;
	DTYPE1$1 = ((((DTYPE2$1 & 31) | ((DTYPE2$1 & 480) + (OLDPTRCOUNT$1 << (5 & 31)))) | ((DTYPE2$1 & 261632) << (OLDPTRCOUNT$1 & 31))) | (DTYPE2$1 & 32505856)) | (DTYPE1$1 & 261632);
	fb$result$1 = DTYPE1$1;
	label$132:;
	return fb$result$1;
}

$11FB_DATATYPE CLOSESTTYPE( $11FB_DATATYPE DTYPE$1, $11FB_DATATYPE DTYPE1$1, $11FB_DATATYPE DTYPE2$1 )
{
	int32 TMP$129$1;
	int32 TMP$130$1;
	int32 TMP$131$1;
	int32 TMP$132$1;
	int32 TMP$133$1;
	int32 TMP$134$1;
	int32 TMP$135$1;
	int32 TMP$136$1;
	int32 TMP$137$1;
	int32 TMP$138$1;
	int32 TMP$139$1;
	int32 TMP$140$1;
	int32 TMP$141$1;
	int32 TMP$142$1;
	int32 TMP$143$1;
	int32 TMP$144$1;
	$11FB_DATATYPE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$135:;
	if( (-(DTYPE1$1 != 10) & -(DTYPE2$1 == 10)) == 0 ) goto label$138;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$138:;
	}
	if( (-(DTYPE2$1 != 10) & -(DTYPE1$1 == 10)) == 0 ) goto label$140;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$140:;
	}
	if( (-(DTYPE1$1 != 4) & -(DTYPE2$1 == 4)) == 0 ) goto label$142;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$142:;
	}
	if( (-(DTYPE2$1 != 4) & -(DTYPE1$1 == 4)) == 0 ) goto label$144;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$144:;
	}
	if( (-(DTYPE1$1 != 7) & -(DTYPE2$1 == 7)) == 0 ) goto label$146;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$146:;
	}
	if( (-(DTYPE2$1 != 7) & -(DTYPE1$1 == 7)) == 0 ) goto label$148;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$148:;
	}
	if( DTYPE$1 == 1 ) goto label$150;
	{
		int32 ISBOOL1$2;
		ISBOOL1$2 = -(DTYPE1$1 == 1);
		int32 ISBOOL2$2;
		ISBOOL2$2 = -(DTYPE2$1 == 1);
		if( (ISBOOL2$2 & ~ISBOOL1$2) == 0 ) goto label$152;
		{
			fb$result$1 = DTYPE1$1;
			goto label$136;
			label$152:;
		}
		if( (ISBOOL1$2 & ~ISBOOL2$2) == 0 ) goto label$154;
		{
			fb$result$1 = DTYPE2$1;
			goto label$136;
			label$154:;
		}
	}
	label$150:;
	label$149:;
	int32 SAMECLASS1$1;
	if( (DTYPE1$1 & 480) == 0 ) goto label$155;
	TMP$129$1 = 24;
	goto label$195;
	label$155:;
	TMP$129$1 = DTYPE1$1 & 31;
	label$195:;
	if( (DTYPE$1 & 480) == 0 ) goto label$156;
	TMP$130$1 = 24;
	goto label$196;
	label$156:;
	TMP$130$1 = DTYPE$1 & 31;
	label$196:;
	SAMECLASS1$1 = -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$129$1 * 28)) == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$130$1 * 28)));
	int32 SAMECLASS2$1;
	if( (DTYPE2$1 & 480) == 0 ) goto label$157;
	TMP$131$1 = 24;
	goto label$197;
	label$157:;
	TMP$131$1 = DTYPE2$1 & 31;
	label$197:;
	if( (DTYPE$1 & 480) == 0 ) goto label$158;
	TMP$132$1 = 24;
	goto label$198;
	label$158:;
	TMP$132$1 = DTYPE$1 & 31;
	label$198:;
	SAMECLASS2$1 = -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$131$1 * 28)) == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$132$1 * 28)));
	if( (SAMECLASS1$1 & ~SAMECLASS2$1) == 0 ) goto label$160;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$160:;
	}
	if( (SAMECLASS2$1 & ~SAMECLASS1$1) == 0 ) goto label$162;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$162:;
	}
	int32 LARGER1$1;
	if( (DTYPE1$1 & 480) == 0 ) goto label$163;
	TMP$133$1 = 24;
	goto label$199;
	label$163:;
	TMP$133$1 = DTYPE1$1 & 31;
	label$199:;
	if( (DTYPE$1 & 480) == 0 ) goto label$164;
	TMP$134$1 = 24;
	goto label$200;
	label$164:;
	TMP$134$1 = DTYPE$1 & 31;
	label$200:;
	LARGER1$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$133$1 * 28)) + 4) >= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$134$1 * 28)) + 4));
	int32 LARGER2$1;
	if( (DTYPE2$1 & 480) == 0 ) goto label$165;
	TMP$135$1 = 24;
	goto label$201;
	label$165:;
	TMP$135$1 = DTYPE2$1 & 31;
	label$201:;
	if( (DTYPE$1 & 480) == 0 ) goto label$166;
	TMP$136$1 = 24;
	goto label$202;
	label$166:;
	TMP$136$1 = DTYPE$1 & 31;
	label$202:;
	LARGER2$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$135$1 * 28)) + 4) >= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$136$1 * 28)) + 4));
	if( (LARGER1$1 & ~LARGER2$1) == 0 ) goto label$168;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$168:;
	}
	if( (LARGER2$1 & ~LARGER1$1) == 0 ) goto label$170;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$170:;
	}
	int32 SIZEDIFF1$1;
	if( (DTYPE1$1 & 480) == 0 ) goto label$171;
	TMP$137$1 = 24;
	goto label$203;
	label$171:;
	TMP$137$1 = DTYPE1$1 & 31;
	label$203:;
	if( (DTYPE$1 & 480) == 0 ) goto label$172;
	TMP$138$1 = 24;
	goto label$204;
	label$172:;
	TMP$138$1 = DTYPE$1 & 31;
	label$204:;
	SIZEDIFF1$1 = __builtin_abs( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$137$1 * 28)) + 4) - *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$138$1 * 28)) + 4)) );
	int32 SIZEDIFF2$1;
	if( (DTYPE2$1 & 480) == 0 ) goto label$173;
	TMP$139$1 = 24;
	goto label$205;
	label$173:;
	TMP$139$1 = DTYPE2$1 & 31;
	label$205:;
	if( (DTYPE$1 & 480) == 0 ) goto label$174;
	TMP$140$1 = 24;
	goto label$206;
	label$174:;
	TMP$140$1 = DTYPE$1 & 31;
	label$206:;
	SIZEDIFF2$1 = __builtin_abs( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$139$1 * 28)) + 4) - *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$140$1 * 28)) + 4)) );
	if( SIZEDIFF1$1 >= SIZEDIFF2$1 ) goto label$176;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$176:;
	}
	if( SIZEDIFF2$1 >= SIZEDIFF1$1 ) goto label$178;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$178:;
	}
	int32 SAMESIGN1$1;
	if( (DTYPE1$1 & 480) == 0 ) goto label$179;
	TMP$141$1 = 24;
	goto label$207;
	label$179:;
	TMP$141$1 = DTYPE1$1 & 31;
	label$207:;
	if( (DTYPE$1 & 480) == 0 ) goto label$180;
	TMP$142$1 = 24;
	goto label$208;
	label$180:;
	TMP$142$1 = DTYPE$1 & 31;
	label$208:;
	SAMESIGN1$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$141$1 * 28)) + 8) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$142$1 * 28)) + 8));
	int32 SAMESIGN2$1;
	if( (DTYPE2$1 & 480) == 0 ) goto label$181;
	TMP$143$1 = 24;
	goto label$209;
	label$181:;
	TMP$143$1 = DTYPE2$1 & 31;
	label$209:;
	if( (DTYPE$1 & 480) == 0 ) goto label$182;
	TMP$144$1 = 24;
	goto label$210;
	label$182:;
	TMP$144$1 = DTYPE$1 & 31;
	label$210:;
	SAMESIGN2$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$143$1 * 28)) + 8) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$144$1 * 28)) + 8));
	if( (SAMESIGN1$1 & ~SAMESIGN2$1) == 0 ) goto label$184;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$184:;
	}
	if( (SAMESIGN2$1 & ~SAMESIGN1$1) == 0 ) goto label$186;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$186:;
	}
	int32 SAMEKIND1$1;
	int32 vr$95 = TYPETOSIGNED( DTYPE1$1 );
	int32 vr$96 = TYPETOSIGNED( DTYPE$1 );
	SAMEKIND1$1 = -(vr$95 == vr$96);
	int32 SAMEKIND2$1;
	int32 vr$98 = TYPETOSIGNED( DTYPE2$1 );
	int32 vr$99 = TYPETOSIGNED( DTYPE$1 );
	SAMEKIND2$1 = -(vr$98 == vr$99);
	if( (SAMEKIND1$1 & ~SAMEKIND2$1) == 0 ) goto label$188;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$188:;
	}
	if( (SAMEKIND2$1 & ~SAMEKIND1$1) == 0 ) goto label$190;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$190:;
	}
	int32 ISINT1$1;
	int32 vr$105 = TYPETOSIGNED( DTYPE1$1 );
	ISINT1$1 = -(vr$105 == 8);
	int32 ISINT2$1;
	int32 vr$107 = TYPETOSIGNED( DTYPE2$1 );
	ISINT2$1 = -(vr$107 == 8);
	if( (ISINT1$1 & ~ISINT2$1) == 0 ) goto label$192;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$192:;
	}
	if( (ISINT2$1 & ~ISINT1$1) == 0 ) goto label$194;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$194:;
	}
	fb$result$1 = DTYPE1$1;
	goto label$136;
	label$136:;
	return fb$result$1;
}

$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int32 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, int32 LPARAMMODE$1, int32 RDTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$211:;
	int32 CONST_MATCHES$1;
	CONST_MATCHES$1 = 0;
	if( (-(LDTYPE$1 == RDTYPE$1) & -(LSUBTYPE$1 == RSUBTYPE$1)) == 0 ) goto label$214;
	{
		fb$result$1 = 1300;
		goto label$212;
	}
	label$214:;
	label$213:;
	if( ((LDTYPE$1 & 480) >> (5 & 31)) == ((RDTYPE$1 & 480) >> (5 & 31)) ) goto label$216;
	{
		fb$result$1 = 0;
		goto label$212;
	}
	label$216:;
	label$215:;
	int32 vr$9 = SYMBCHECKCONSTASSIGNTOPLEVEL( LDTYPE$1, RDTYPE$1, LSUBTYPE$1, RSUBTYPE$1, LPARAMMODE$1, &CONST_MATCHES$1 );
	if( vr$9 != 0 ) goto label$218;
	{
		fb$result$1 = 0;
		goto label$212;
	}
	label$218:;
	label$217:;
	if( (-((LDTYPE$1 & 511) == (RDTYPE$1 & 511)) & -(LSUBTYPE$1 == RSUBTYPE$1)) == 0 ) goto label$220;
	{
		fb$result$1 = (CONST_MATCHES$1 * 10) + 1040;
		goto label$212;
	}
	label$220:;
	label$219:;
	int32 LDT$1;
	LDT$1 = LDTYPE$1 & 31;
	int32 RDT$1;
	RDT$1 = RDTYPE$1 & 31;
	if( LDT$1 == RDT$1 ) goto label$222;
	{
		int32 TMP$145$2;
		int32 TMP$146$2;
		int32 TMP$147$2;
		int32 TMP$148$2;
		if( (LDT$1 & 480) == 0 ) goto label$223;
		TMP$145$2 = 24;
		goto label$238;
		label$223:;
		TMP$145$2 = LDT$1 & 31;
		label$238:;
		if( (RDT$1 & 480) == 0 ) goto label$224;
		TMP$146$2 = 24;
		goto label$239;
		label$224:;
		TMP$146$2 = RDT$1 & 31;
		label$239:;
		if( (LDT$1 & 480) == 0 ) goto label$225;
		TMP$147$2 = 24;
		goto label$240;
		label$225:;
		TMP$147$2 = LDT$1 & 31;
		label$240:;
		if( (RDT$1 & 480) == 0 ) goto label$226;
		TMP$148$2 = 24;
		goto label$241;
		label$226:;
		TMP$148$2 = RDT$1 & 31;
		label$241:;
		if( ((-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$145$2 * 28)) == 0) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$146$2 * 28)) == 0)) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$147$2 * 28)) + 4) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$148$2 * 28)) + 4))) == 0 ) goto label$228;
		{
			fb$result$1 = -(*(int32*)(((int32)(int32*)SYMB_DTYPEMATCHTB$ + (((LDT$1 << (4 & 31)) + RDT$1) << (2 & 31))) + -68)) + 780;
			goto label$212;
		}
		label$228:;
		label$227:;
		fb$result$1 = 0;
		goto label$212;
	}
	label$222:;
	label$221:;
	{
		if( LDT$1 != 20 ) goto label$230;
		label$231:;
		{
			if( (-((LDTYPE$1 & 480) != 0) | -(LPARAMMODE$1 == 2)) == 0 ) goto label$233;
			{
				int32 vr$45 = SYMBGETUDTBASELEVEL( RSUBTYPE$1, LSUBTYPE$1 );
				if( vr$45 <= 0 ) goto label$235;
				{
					fb$result$1 = 780;
					goto label$212;
				}
				label$235:;
				label$234:;
			}
			label$233:;
			label$232:;
		}
		goto label$229;
		label$230:;
		if( LDT$1 != 22 ) goto label$236;
		label$237:;
		{
			int32 TMP$149$3;
			TMP$149$3 = 0;
			$22FB_OVLPROC_MATCH_SCORE vr$47 = SYMBCALCPROCMATCH( LSUBTYPE$1, RSUBTYPE$1, &TMP$149$3 );
			fb$result$1 = vr$47;
			goto label$212;
		}
		label$236:;
		label$229:;
	}
	fb$result$1 = 0;
	label$212:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__symbzdata( void )
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
