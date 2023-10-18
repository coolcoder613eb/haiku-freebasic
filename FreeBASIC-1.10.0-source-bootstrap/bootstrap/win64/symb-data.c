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
typedef int64 $12FB_DATACLASS;
typedef int64 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int64 SIZE;
	int64 SIGNED;
	int64 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int64 SIZETYPE;
	uint8* NAME;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 56 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I11FB_DATATYPEE {
	$11FB_DATATYPE* DATA;
	$11FB_DATATYPE* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I11FB_DATATYPEE ) == 72 );
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
typedef int64 $22FB_OVLPROC_MATCH_SCORE;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__symbzdata( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
int64 FBIS64BIT( void );
$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64* );
int64 SYMBPROCHASFWDREFINSIGNATURE( struct $8FBSYMBOL* );
int64 TYPETOSIGNED( int64 );
int64 TYPEHASDTOR( int64, struct $8FBSYMBOL* );
int64 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int64 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
$11FB_DATATYPE CLOSESTTYPE( $11FB_DATATYPE, $11FB_DATATYPE, $11FB_DATATYPE );
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
extern int64 SYMB_DTYPEMATCHTB$[16][16];
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
struct $13SYMB_DATATYPE SYMB_DTYPETB$[26] = { { 5ll, 0ll, 0ll, 0ll, 0ll, -1ll, (uint8*)"any" }, { 0ll, 1ll, -1ll, 1ll, 1ll, 0ll, (uint8*)"boolean" }, { 0ll, 1ll, -1ll, 10ll, 2ll, 1ll, (uint8*)"byte" }, { 0ll, 1ll, 0ll, 15ll, 3ll, 2ll, (uint8*)"ubyte" }, { 0ll, 1ll, 0ll, 0ll, 3ll, 2ll, (uint8*)"zstring" }, { 0ll, 2ll, -1ll, 20ll, 5ll, 3ll, (uint8*)"short" }, { 0ll, 2ll, 0ll, 25ll, 6ll, 4ll, (uint8*)"ushort" }, { 0ll, 2ll, 0ll, 0ll, -1ll, -1ll, (uint8*)"wstring" }, { 0ll, -1ll, -1ll, -1ll, 8ll, -1ll, (uint8*)"integer" }, { 0ll, -1ll, 0ll, -1ll, 9ll, -1ll, (uint8*)"uinteger" }, { 0ll, -1ll, -1ll, 0ll, 8ll, -1ll, (uint8*)"enum" }, { 0ll, 4ll, -1ll, 40ll, 11ll, 5ll, (uint8*)"long" }, { 0ll, 4ll, 0ll, 45ll, 12ll, 6ll, (uint8*)"ulong" }, { 0ll, 8ll, -1ll, 80ll, 13ll, 7ll, (uint8*)"longint" }, { 0ll, 8ll, 0ll, 85ll, 14ll, 8ll, (uint8*)"ulongint" }, { 1ll, 4ll, -1ll, 0ll, 15ll, 9ll, (uint8*)"single" }, { 1ll, 8ll, -1ll, 0ll, 16ll, 10ll, (uint8*)"double" }, { 2ll, -1ll, 0ll, 0ll, 17ll, -1ll, (uint8*)"string" }, { 2ll, 1ll, 0ll, 0ll, 18ll, -1ll, (uint8*)"string" }, { 5ll, -1ll, 0ll, 0ll, 19ll, -1ll, (uint8*)"va_list" }, { 3ll, 0ll, 0ll, 0ll, 20ll, -1ll, (uint8*)"type" }, { 3ll, 0ll, 0ll, 0ll, 21ll, -1ll, (uint8*)"namepace" }, { 4ll, 0ll, 0ll, 0ll, 9ll, -1ll, (uint8*)"function" }, { 5ll, 0ll, 0ll, 0ll, 0ll, -1ll, (uint8*)"fwdref" }, { 0ll, -1ll, 0ll, 0ll, 9ll, -1ll, (uint8*)"pointer" }, { 0ll, 16ll, 0ll, 0ll, 25ll, -1ll, (uint8*)"xmmword" } };
int64 SYMB_DTYPEMATCHTB$[16][16];

void SYMBDATAINIT( void )
{
	label$10:;
	int64 vr$0 = FBIS64BIT(  );
	if( vr$0 == 0ll ) goto label$13;
	{
		*(int64*)((uint8*)&ENV$ + 592ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 456ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 512ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 568ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 960ll) = 24ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 1352ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 488ll) = 7ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 544ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 600ll) = 7ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 1384ll) = 8ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 472ll) = 81ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 528ll) = 86ll;
	}
	goto label$12;
	label$13:;
	{
		*(int64*)((uint8*)&ENV$ + 592ll) = 4ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 456ll) = 4ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 512ll) = 4ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 568ll) = 4ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 960ll) = 12ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 1352ll) = 4ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 488ll) = 5ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 544ll) = 6ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 600ll) = 5ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 1384ll) = 6ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 472ll) = 41ll;
		*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 528ll) = 46ll;
	}
	label$12:;
	*($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 392ll) = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int64*)((uint8*)&ENV$ + 544ll) * 56ll));
	*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll) = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int64*)((uint8*)&ENV$ + 544ll) * 56ll)) + 8ll);
	*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 408ll) = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int64*)((uint8*)&ENV$ + 544ll) * 56ll)) + 16ll);
	*($11FB_DATATYPE*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 424ll) = *($11FB_DATATYPE*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (*(int64*)((uint8*)&ENV$ + 544ll) * 56ll)) + 32ll);
	$11FB_DATATYPE RANK$1[16];
	__builtin_memset( ($11FB_DATATYPE*)RANK$1, 0, 128ll );
	struct $8FBARRAY1I11FB_DATATYPEE tmp$108$1;
	*($11FB_DATATYPE**)&tmp$108$1 = ($11FB_DATATYPE*)RANK$1;
	*($11FB_DATATYPE**)((uint8*)&tmp$108$1 + 8ll) = ($11FB_DATATYPE*)RANK$1;
	*(int64*)((uint8*)&tmp$108$1 + 16ll) = 128ll;
	*(int64*)((uint8*)&tmp$108$1 + 24ll) = 8ll;
	*(int64*)((uint8*)&tmp$108$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$108$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$108$1 + 48ll) = 16ll;
	*(int64*)((uint8*)&tmp$108$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$108$1 + 64ll) = 15ll;
	$11FB_DATATYPE DTYPE1$1;
	$11FB_DATATYPE DTYPE2$1;
	int64 I$1;
	int64 J$1;
	{
		DTYPE1$1 = 1ll;
		label$17:;
		{
			{
				DTYPE2$1 = 1ll;
				label$21:;
				{
					*($11FB_DATATYPE*)(((int64)($11FB_DATATYPE*)RANK$1 + (DTYPE2$1 << (3ll & 63ll))) + -8ll) = DTYPE2$1;
				}
				label$19:;
				DTYPE2$1 = DTYPE2$1 + 1ll;
				label$18:;
				if( DTYPE2$1 <= 16ll ) goto label$21;
				label$20:;
			}
			{
				I$1 = 0ll;
				label$25:;
				{
					{
						J$1 = I$1 + 1ll;
						goto label$26;
						label$29:;
						{
							$11FB_DATATYPE vr$13 = CLOSESTTYPE( DTYPE1$1, *($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (I$1 << (3ll & 63ll))), *($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (J$1 << (3ll & 63ll))) );
							if( vr$13 != *(int64*)((int64)($11FB_DATATYPE*)RANK$1 + (J$1 << (3ll & 63ll))) ) goto label$31;
							{
								{
									$11FB_DATATYPE TMP$109$9;
									TMP$109$9 = *($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (I$1 << (3ll & 63ll)));
									*($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (I$1 << (3ll & 63ll))) = *($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (J$1 << (3ll & 63ll)));
									*($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (J$1 << (3ll & 63ll))) = TMP$109$9;
								}
							}
							label$31:;
							label$30:;
						}
						label$27:;
						J$1 = J$1 + 1ll;
						label$26:;
						if( J$1 <= 15ll ) goto label$29;
						label$28:;
					}
				}
				label$23:;
				I$1 = I$1 + 1ll;
				label$22:;
				if( I$1 <= 14ll ) goto label$25;
				label$24:;
			}
			{
				I$1 = 0ll;
				label$35:;
				{
					DTYPE2$1 = *($11FB_DATATYPE*)((int64)($11FB_DATATYPE*)RANK$1 + (I$1 << (3ll & 63ll)));
					*(int64*)(((int64)(int64*)SYMB_DTYPEMATCHTB$ + (((DTYPE1$1 << (4ll & 63ll)) + DTYPE2$1) << (3ll & 63ll))) + -136ll) = I$1 * 10ll;
				}
				label$33:;
				I$1 = I$1 + 1ll;
				label$32:;
				if( I$1 <= 15ll ) goto label$35;
				label$34:;
			}
		}
		label$15:;
		DTYPE1$1 = DTYPE1$1 + 1ll;
		label$14:;
		if( DTYPE1$1 <= 16ll ) goto label$17;
		label$16:;
	}
	label$11:;
}

void TYPEMAX( int64 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, int64 RDTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int64 TMP$110$1;
	int64 TMP$111$1;
	int64 TMP$112$1;
	int64 TMP$113$1;
	label$36:;
	int64 DTYPE1$1;
	int64 DTYPE2$1;
	if( ((int64)-((LDTYPE$1 & 511ll) == (RDTYPE$1 & 511ll)) & (int64)-(LSUBTYPE$1 == RSUBTYPE$1)) == 0ll ) goto label$39;
	{
		*DTYPE$1 = LDTYPE$1;
		*SUBTYPE$1 = LSUBTYPE$1;
		goto label$37;
	}
	label$39:;
	label$38:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$40;
	TMP$110$1 = 24ll;
	goto label$52;
	label$40:;
	TMP$110$1 = LDTYPE$1 & 31ll;
	label$52:;
	DTYPE1$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$110$1 * 56ll)) + 32ll);
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$41;
	TMP$111$1 = 24ll;
	goto label$53;
	label$41:;
	TMP$111$1 = RDTYPE$1 & 31ll;
	label$53:;
	DTYPE2$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$111$1 * 56ll)) + 32ll);
	if( DTYPE1$1 != DTYPE2$1 ) goto label$43;
	{
		*DTYPE$1 = DTYPE1$1;
		*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	}
	goto label$42;
	label$43:;
	if( (DTYPE1$1 & 480ll) == 0ll ) goto label$45;
	TMP$112$1 = 24ll;
	goto label$54;
	label$45:;
	TMP$112$1 = DTYPE1$1 & 31ll;
	label$54:;
	if( (DTYPE2$1 & 480ll) == 0ll ) goto label$46;
	TMP$113$1 = 24ll;
	goto label$55;
	label$46:;
	TMP$113$1 = DTYPE2$1 & 31ll;
	label$55:;
	if( ((int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$112$1 * 56ll)) == 0ll) & (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$1 * 56ll)) == 0ll)) == 0ll ) goto label$44;
	{
		int64 TMP$114$2;
		int64 TMP$115$2;
		if( (DTYPE1$1 & 480ll) == 0ll ) goto label$47;
		TMP$114$2 = 24ll;
		goto label$56;
		label$47:;
		TMP$114$2 = DTYPE1$1 & 31ll;
		label$56:;
		if( (DTYPE2$1 & 480ll) == 0ll ) goto label$48;
		TMP$115$2 = 24ll;
		goto label$57;
		label$48:;
		TMP$115$2 = DTYPE2$1 & 31ll;
		label$57:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$114$2 * 56ll)) + 24ll) <= *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$115$2 * 56ll)) + 24ll) ) goto label$50;
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

int64 TYPETOSIGNED( int64 DTYPE$1 )
{
	int64 TMP$116$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$58:;
	int64 DT$1;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$60;
	TMP$116$1 = 24ll;
	goto label$75;
	label$60:;
	TMP$116$1 = DTYPE$1 & 31ll;
	label$75:;
	DT$1 = TMP$116$1;
	int64 ND$1;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DT$1 * 56ll)) == 0ll ) goto label$62;
	{
		fb$result$1 = DTYPE$1;
		goto label$59;
	}
	label$62:;
	label$61:;
	{
		uint64 TMP$117$2;
		TMP$117$2 = (uint64)DT$1;
		goto label$64;
		label$65:;
		{
			ND$1 = 2ll;
		}
		goto label$63;
		label$66:;
		{
			ND$1 = 5ll;
		}
		goto label$63;
		label$67:;
		{
			ND$1 = 8ll;
		}
		goto label$63;
		label$68:;
		{
			int64 vr$4 = TYPETOSIGNED( *(int64*)((uint8*)&ENV$ + 544ll) );
			fb$result$1 = vr$4;
			goto label$59;
		}
		goto label$63;
		label$69:;
		{
			ND$1 = 11ll;
		}
		goto label$63;
		label$70:;
		{
			if( *(int64*)((uint8*)&ENV$ + 592ll) != 8ll ) goto label$72;
			{
				ND$1 = 13ll;
			}
			goto label$71;
			label$72:;
			{
				ND$1 = 11ll;
			}
			label$71:;
		}
		goto label$63;
		label$73:;
		{
			ND$1 = 13ll;
		}
		goto label$63;
		label$74:;
		{
			ND$1 = DTYPE$1;
		}
		goto label$63;
		label$64:;
		static const void* tmp$118[22ll] = {
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
		if( (TMP$117$2 - 3ull) > 21ull ) goto label$74;
		goto *tmp$118[TMP$117$2 - 3ull];
		label$63:;
	}
	fb$result$1 = (DTYPE$1 & -512ll) | (ND$1 & 511ll);
	label$59:;
	return fb$result$1;
}

int64 TYPETOUNSIGNED( int64 DTYPE$1 )
{
	int64 TMP$119$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$76:;
	int64 DT$1;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$78;
	TMP$119$1 = 24ll;
	goto label$92;
	label$78:;
	TMP$119$1 = DTYPE$1 & 31ll;
	label$92:;
	DT$1 = TMP$119$1;
	int64 ND$1;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DT$1 * 56ll)) == 0ll ) goto label$80;
	{
		fb$result$1 = DTYPE$1;
		goto label$77;
	}
	label$80:;
	label$79:;
	{
		uint64 TMP$120$2;
		TMP$120$2 = (uint64)DT$1;
		goto label$82;
		label$83:;
		{
			ND$1 = 3ll;
		}
		goto label$81;
		label$84:;
		{
			ND$1 = 6ll;
		}
		goto label$81;
		label$85:;
		{
			ND$1 = 9ll;
		}
		goto label$81;
		label$86:;
		{
			ND$1 = 12ll;
		}
		goto label$81;
		label$87:;
		{
			if( *(int64*)((uint8*)&ENV$ + 592ll) != 8ll ) goto label$89;
			{
				ND$1 = 14ll;
			}
			goto label$88;
			label$89:;
			{
				ND$1 = 12ll;
			}
			label$88:;
		}
		goto label$81;
		label$90:;
		{
			ND$1 = 14ll;
		}
		goto label$81;
		label$91:;
		{
			ND$1 = DTYPE$1;
		}
		goto label$81;
		label$82:;
		static const void* tmp$121[23ll] = {
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
		if( (TMP$120$2 - 2ull) > 22ull ) goto label$91;
		goto *tmp$121[TMP$120$2 - 2ull];
		label$81:;
	}
	fb$result$1 = (DTYPE$1 & -512ll) | (ND$1 & 511ll);
	label$77:;
	return fb$result$1;
}

int64 TYPEHASCTOR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$93:;
	{
		int64 TMP$122$2;
		int64 TMP$123$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$95;
		TMP$122$2 = 24ll;
		goto label$99;
		label$95:;
		TMP$122$2 = DTYPE$1 & 31ll;
		label$99:;
		TMP$123$2 = TMP$122$2;
		if( TMP$123$2 != 20ll ) goto label$97;
		label$98:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
			fb$result$1 = (int64)-(vr$3 != (struct $8FBSYMBOL*)0ull);
		}
		label$97:;
		label$96:;
	}
	label$94:;
	return fb$result$1;
}

int64 TYPEHASDEFCTOR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$100:;
	{
		int64 TMP$124$2;
		int64 TMP$125$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$102;
		TMP$124$2 = 24ll;
		goto label$106;
		label$102:;
		TMP$124$2 = DTYPE$1 & 31ll;
		label$106:;
		TMP$125$2 = TMP$124$2;
		if( TMP$125$2 != 20ll ) goto label$104;
		label$105:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
			fb$result$1 = (int64)-(vr$3 != (struct $8FBSYMBOL*)0ull);
		}
		label$104:;
		label$103:;
	}
	label$101:;
	return fb$result$1;
}

int64 TYPEHASDTOR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$107:;
	{
		int64 TMP$126$2;
		int64 TMP$127$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$109;
		TMP$126$2 = 24ll;
		goto label$113;
		label$109:;
		TMP$126$2 = DTYPE$1 & 31ll;
		label$113:;
		TMP$127$2 = TMP$126$2;
		if( TMP$127$2 != 20ll ) goto label$111;
		label$112:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
			fb$result$1 = (int64)-(vr$3 != (struct $8FBSYMBOL*)0ull);
		}
		label$111:;
		label$110:;
	}
	label$108:;
	return fb$result$1;
}

int64 TYPENEEDSDTORCALL( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$114:;
	int64 vr$1 = TYPEHASDTOR( DTYPE$1, SUBTYPE$1 );
	fb$result$1 = vr$1 | (int64)-((DTYPE$1 & 511ll) == 17ll);
	label$115:;
	return fb$result$1;
}

int64 TYPEISTRIVIAL( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$116:;
	fb$result$1 = -1ll;
	{
		int64 TMP$128$2;
		TMP$128$2 = DTYPE$1 & 511ll;
		if( TMP$128$2 != 17ll ) goto label$119;
		label$120:;
		{
			fb$result$1 = 0ll;
		}
		goto label$118;
		label$119:;
		if( TMP$128$2 != 20ll ) goto label$121;
		label$122:;
		{
			int64 vr$2 = SYMBCOMPISTRIVIAL( SUBTYPE$1 );
			fb$result$1 = vr$2;
		}
		label$121:;
		label$118:;
	}
	label$117:;
	return fb$result$1;
}

int64 TYPEHASFWDREFINSIGNATURE( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$123:;
	{
		int64 TMP$129$2;
		TMP$129$2 = DTYPE$1 & 31ll;
		if( TMP$129$2 != 23ll ) goto label$126;
		label$127:;
		{
			fb$result$1 = -1ll;
		}
		goto label$125;
		label$126:;
		if( TMP$129$2 != 22ll ) goto label$128;
		label$129:;
		{
			int64 vr$2 = SYMBPROCHASFWDREFINSIGNATURE( SUBTYPE$1 );
			fb$result$1 = vr$2;
		}
		goto label$125;
		label$128:;
		{
			fb$result$1 = 0ll;
		}
		label$130:;
		label$125:;
	}
	label$124:;
	return fb$result$1;
}

int64 TYPEMERGE( int64 DTYPE1$1, int64 DTYPE2$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$131:;
	int64 OLDPTRCOUNT$1;
	int64 ADDPTRCOUNT$1;
	OLDPTRCOUNT$1 = (DTYPE1$1 & 480ll) >> (5ll & 63ll);
	ADDPTRCOUNT$1 = (DTYPE2$1 & 480ll) >> (5ll & 63ll);
	if( (OLDPTRCOUNT$1 + ADDPTRCOUNT$1) <= 8ll ) goto label$134;
	{
		ERRREPORT( 274ll, 0ll, (uint8*)0ull );
		OLDPTRCOUNT$1 = 8ll - ADDPTRCOUNT$1;
	}
	label$134:;
	label$133:;
	DTYPE1$1 = ((((DTYPE2$1 & 31ll) | ((DTYPE2$1 & 480ll) + (OLDPTRCOUNT$1 << (5ll & 63ll)))) | ((DTYPE2$1 & 261632ll) << (OLDPTRCOUNT$1 & 63ll))) | (DTYPE2$1 & 32505856ll)) | (DTYPE1$1 & 261632ll);
	fb$result$1 = DTYPE1$1;
	label$132:;
	return fb$result$1;
}

$11FB_DATATYPE CLOSESTTYPE( $11FB_DATATYPE DTYPE$1, $11FB_DATATYPE DTYPE1$1, $11FB_DATATYPE DTYPE2$1 )
{
	int64 TMP$130$1;
	int64 TMP$131$1;
	int64 TMP$132$1;
	int64 TMP$133$1;
	int64 TMP$134$1;
	int64 TMP$135$1;
	int64 TMP$136$1;
	int64 TMP$137$1;
	int64 TMP$138$1;
	int64 TMP$139$1;
	int64 TMP$140$1;
	int64 TMP$141$1;
	int64 TMP$142$1;
	int64 TMP$143$1;
	int64 TMP$144$1;
	int64 TMP$145$1;
	$11FB_DATATYPE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$135:;
	if( ((int64)-(DTYPE1$1 != 10ll) & (int64)-(DTYPE2$1 == 10ll)) == 0ll ) goto label$138;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$138:;
	}
	if( ((int64)-(DTYPE2$1 != 10ll) & (int64)-(DTYPE1$1 == 10ll)) == 0ll ) goto label$140;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$140:;
	}
	if( ((int64)-(DTYPE1$1 != 4ll) & (int64)-(DTYPE2$1 == 4ll)) == 0ll ) goto label$142;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$142:;
	}
	if( ((int64)-(DTYPE2$1 != 4ll) & (int64)-(DTYPE1$1 == 4ll)) == 0ll ) goto label$144;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$144:;
	}
	if( ((int64)-(DTYPE1$1 != 7ll) & (int64)-(DTYPE2$1 == 7ll)) == 0ll ) goto label$146;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$146:;
	}
	if( ((int64)-(DTYPE2$1 != 7ll) & (int64)-(DTYPE1$1 == 7ll)) == 0ll ) goto label$148;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$148:;
	}
	if( DTYPE$1 == 1ll ) goto label$150;
	{
		int64 ISBOOL1$2;
		ISBOOL1$2 = (int64)-(DTYPE1$1 == 1ll);
		int64 ISBOOL2$2;
		ISBOOL2$2 = (int64)-(DTYPE2$1 == 1ll);
		if( (ISBOOL2$2 & ~ISBOOL1$2) == 0ll ) goto label$152;
		{
			fb$result$1 = DTYPE1$1;
			goto label$136;
			label$152:;
		}
		if( (ISBOOL1$2 & ~ISBOOL2$2) == 0ll ) goto label$154;
		{
			fb$result$1 = DTYPE2$1;
			goto label$136;
			label$154:;
		}
	}
	label$150:;
	label$149:;
	int64 SAMECLASS1$1;
	if( (DTYPE1$1 & 480ll) == 0ll ) goto label$155;
	TMP$130$1 = 24ll;
	goto label$195;
	label$155:;
	TMP$130$1 = DTYPE1$1 & 31ll;
	label$195:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$156;
	TMP$131$1 = 24ll;
	goto label$196;
	label$156:;
	TMP$131$1 = DTYPE$1 & 31ll;
	label$196:;
	SAMECLASS1$1 = (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$130$1 * 56ll)) == *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$131$1 * 56ll)));
	int64 SAMECLASS2$1;
	if( (DTYPE2$1 & 480ll) == 0ll ) goto label$157;
	TMP$132$1 = 24ll;
	goto label$197;
	label$157:;
	TMP$132$1 = DTYPE2$1 & 31ll;
	label$197:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$158;
	TMP$133$1 = 24ll;
	goto label$198;
	label$158:;
	TMP$133$1 = DTYPE$1 & 31ll;
	label$198:;
	SAMECLASS2$1 = (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$132$1 * 56ll)) == *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$133$1 * 56ll)));
	if( (SAMECLASS1$1 & ~SAMECLASS2$1) == 0ll ) goto label$160;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$160:;
	}
	if( (SAMECLASS2$1 & ~SAMECLASS1$1) == 0ll ) goto label$162;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$162:;
	}
	int64 LARGER1$1;
	if( (DTYPE1$1 & 480ll) == 0ll ) goto label$163;
	TMP$134$1 = 24ll;
	goto label$199;
	label$163:;
	TMP$134$1 = DTYPE1$1 & 31ll;
	label$199:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$164;
	TMP$135$1 = 24ll;
	goto label$200;
	label$164:;
	TMP$135$1 = DTYPE$1 & 31ll;
	label$200:;
	LARGER1$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$134$1 * 56ll)) + 8ll) >= *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$135$1 * 56ll)) + 8ll));
	int64 LARGER2$1;
	if( (DTYPE2$1 & 480ll) == 0ll ) goto label$165;
	TMP$136$1 = 24ll;
	goto label$201;
	label$165:;
	TMP$136$1 = DTYPE2$1 & 31ll;
	label$201:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$166;
	TMP$137$1 = 24ll;
	goto label$202;
	label$166:;
	TMP$137$1 = DTYPE$1 & 31ll;
	label$202:;
	LARGER2$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$136$1 * 56ll)) + 8ll) >= *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$137$1 * 56ll)) + 8ll));
	if( (LARGER1$1 & ~LARGER2$1) == 0ll ) goto label$168;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$168:;
	}
	if( (LARGER2$1 & ~LARGER1$1) == 0ll ) goto label$170;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$170:;
	}
	int64 SIZEDIFF1$1;
	if( (DTYPE1$1 & 480ll) == 0ll ) goto label$171;
	TMP$138$1 = 24ll;
	goto label$203;
	label$171:;
	TMP$138$1 = DTYPE1$1 & 31ll;
	label$203:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$172;
	TMP$139$1 = 24ll;
	goto label$204;
	label$172:;
	TMP$139$1 = DTYPE$1 & 31ll;
	label$204:;
	SIZEDIFF1$1 = __builtin_llabs( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$138$1 * 56ll)) + 8ll) - *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$139$1 * 56ll)) + 8ll)) );
	int64 SIZEDIFF2$1;
	if( (DTYPE2$1 & 480ll) == 0ll ) goto label$173;
	TMP$140$1 = 24ll;
	goto label$205;
	label$173:;
	TMP$140$1 = DTYPE2$1 & 31ll;
	label$205:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$174;
	TMP$141$1 = 24ll;
	goto label$206;
	label$174:;
	TMP$141$1 = DTYPE$1 & 31ll;
	label$206:;
	SIZEDIFF2$1 = __builtin_llabs( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$140$1 * 56ll)) + 8ll) - *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$141$1 * 56ll)) + 8ll)) );
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
	int64 SAMESIGN1$1;
	if( (DTYPE1$1 & 480ll) == 0ll ) goto label$179;
	TMP$142$1 = 24ll;
	goto label$207;
	label$179:;
	TMP$142$1 = DTYPE1$1 & 31ll;
	label$207:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$180;
	TMP$143$1 = 24ll;
	goto label$208;
	label$180:;
	TMP$143$1 = DTYPE$1 & 31ll;
	label$208:;
	SAMESIGN1$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$142$1 * 56ll)) + 16ll) == *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$143$1 * 56ll)) + 16ll));
	int64 SAMESIGN2$1;
	if( (DTYPE2$1 & 480ll) == 0ll ) goto label$181;
	TMP$144$1 = 24ll;
	goto label$209;
	label$181:;
	TMP$144$1 = DTYPE2$1 & 31ll;
	label$209:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$182;
	TMP$145$1 = 24ll;
	goto label$210;
	label$182:;
	TMP$145$1 = DTYPE$1 & 31ll;
	label$210:;
	SAMESIGN2$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$144$1 * 56ll)) + 16ll) == *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$145$1 * 56ll)) + 16ll));
	if( (SAMESIGN1$1 & ~SAMESIGN2$1) == 0ll ) goto label$184;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$184:;
	}
	if( (SAMESIGN2$1 & ~SAMESIGN1$1) == 0ll ) goto label$186;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$186:;
	}
	int64 SAMEKIND1$1;
	int64 vr$95 = TYPETOSIGNED( DTYPE1$1 );
	int64 vr$96 = TYPETOSIGNED( DTYPE$1 );
	SAMEKIND1$1 = (int64)-(vr$95 == vr$96);
	int64 SAMEKIND2$1;
	int64 vr$98 = TYPETOSIGNED( DTYPE2$1 );
	int64 vr$99 = TYPETOSIGNED( DTYPE$1 );
	SAMEKIND2$1 = (int64)-(vr$98 == vr$99);
	if( (SAMEKIND1$1 & ~SAMEKIND2$1) == 0ll ) goto label$188;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$188:;
	}
	if( (SAMEKIND2$1 & ~SAMEKIND1$1) == 0ll ) goto label$190;
	{
		fb$result$1 = DTYPE2$1;
		goto label$136;
		label$190:;
	}
	int64 ISINT1$1;
	int64 vr$105 = TYPETOSIGNED( DTYPE1$1 );
	ISINT1$1 = (int64)-(vr$105 == 8ll);
	int64 ISINT2$1;
	int64 vr$107 = TYPETOSIGNED( DTYPE2$1 );
	ISINT2$1 = (int64)-(vr$107 == 8ll);
	if( (ISINT1$1 & ~ISINT2$1) == 0ll ) goto label$192;
	{
		fb$result$1 = DTYPE1$1;
		goto label$136;
		label$192:;
	}
	if( (ISINT2$1 & ~ISINT1$1) == 0ll ) goto label$194;
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

$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int64 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, int64 LPARAMMODE$1, int64 RDTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$211:;
	int64 CONST_MATCHES$1;
	CONST_MATCHES$1 = 0ll;
	if( ((int64)-(LDTYPE$1 == RDTYPE$1) & (int64)-(LSUBTYPE$1 == RSUBTYPE$1)) == 0ll ) goto label$214;
	{
		fb$result$1 = 1300ll;
		goto label$212;
	}
	label$214:;
	label$213:;
	if( ((LDTYPE$1 & 480ll) >> (5ll & 63ll)) == ((RDTYPE$1 & 480ll) >> (5ll & 63ll)) ) goto label$216;
	{
		fb$result$1 = 0ll;
		goto label$212;
	}
	label$216:;
	label$215:;
	int64 vr$9 = SYMBCHECKCONSTASSIGNTOPLEVEL( LDTYPE$1, RDTYPE$1, LSUBTYPE$1, RSUBTYPE$1, LPARAMMODE$1, &CONST_MATCHES$1 );
	if( vr$9 != 0ll ) goto label$218;
	{
		fb$result$1 = 0ll;
		goto label$212;
	}
	label$218:;
	label$217:;
	if( ((int64)-((LDTYPE$1 & 511ll) == (RDTYPE$1 & 511ll)) & (int64)-(LSUBTYPE$1 == RSUBTYPE$1)) == 0ll ) goto label$220;
	{
		fb$result$1 = (CONST_MATCHES$1 * 10ll) + 1040ll;
		goto label$212;
	}
	label$220:;
	label$219:;
	int64 LDT$1;
	LDT$1 = LDTYPE$1 & 31ll;
	int64 RDT$1;
	RDT$1 = RDTYPE$1 & 31ll;
	if( LDT$1 == RDT$1 ) goto label$222;
	{
		int64 TMP$146$2;
		int64 TMP$147$2;
		int64 TMP$148$2;
		int64 TMP$149$2;
		if( (LDT$1 & 480ll) == 0ll ) goto label$223;
		TMP$146$2 = 24ll;
		goto label$238;
		label$223:;
		TMP$146$2 = LDT$1 & 31ll;
		label$238:;
		if( (RDT$1 & 480ll) == 0ll ) goto label$224;
		TMP$147$2 = 24ll;
		goto label$239;
		label$224:;
		TMP$147$2 = RDT$1 & 31ll;
		label$239:;
		if( (LDT$1 & 480ll) == 0ll ) goto label$225;
		TMP$148$2 = 24ll;
		goto label$240;
		label$225:;
		TMP$148$2 = LDT$1 & 31ll;
		label$240:;
		if( (RDT$1 & 480ll) == 0ll ) goto label$226;
		TMP$149$2 = 24ll;
		goto label$241;
		label$226:;
		TMP$149$2 = RDT$1 & 31ll;
		label$241:;
		if( (((int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$146$2 * 56ll)) == 0ll) & (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$147$2 * 56ll)) == 0ll)) & (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$148$2 * 56ll)) + 8ll) == *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$149$2 * 56ll)) + 8ll))) == 0ll ) goto label$228;
		{
			fb$result$1 = -(*(int64*)(((int64)(int64*)SYMB_DTYPEMATCHTB$ + (((LDT$1 << (4ll & 63ll)) + RDT$1) << (3ll & 63ll))) + -136ll)) + 780ll;
			goto label$212;
		}
		label$228:;
		label$227:;
		fb$result$1 = 0ll;
		goto label$212;
	}
	label$222:;
	label$221:;
	{
		if( LDT$1 != 20ll ) goto label$230;
		label$231:;
		{
			if( ((int64)-((LDTYPE$1 & 480ll) != 0ll) | (int64)-(LPARAMMODE$1 == 2ll)) == 0ll ) goto label$233;
			{
				int64 vr$45 = SYMBGETUDTBASELEVEL( RSUBTYPE$1, LSUBTYPE$1 );
				if( vr$45 <= 0ll ) goto label$235;
				{
					fb$result$1 = 780ll;
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
		if( LDT$1 != 22ll ) goto label$236;
		label$237:;
		{
			int64 TMP$150$3;
			TMP$150$3 = 0ll;
			$22FB_OVLPROC_MATCH_SCORE vr$47 = SYMBCALCPROCMATCH( LSUBTYPE$1, RSUBTYPE$1, &TMP$150$3 );
			fb$result$1 = vr$47;
			goto label$212;
		}
		label$236:;
		label$229:;
	}
	fb$result$1 = 0ll;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}
