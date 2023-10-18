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
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 12 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int32 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 388 );
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int32* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int32* );
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
typedef int32 $12FB_PARSEROPT;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzexprzbinary( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
void ASTDTORLISTSCOPEBEGIN( int32 );
int32 ASTDTORLISTSCOPEEND( void );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
typedef int32 $14FB_SYMBTYPEOPT;
int32 CSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32*, $14FB_SYMBTYPEOPT );
int32 HISASSIGNTOKEN( int32 );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CCATEXPRESSION( void );
struct $7ASTNODE* CBOOLEXPRESSION( void );
struct $7ASTNODE* CLOGEXPRESSION( void );
struct $7ASTNODE* CRELEXPRESSION( void );
struct $7ASTNODE* CADDEXPRESSION( void );
struct $7ASTNODE* CSHIFTEXPRESSION( void );
struct $7ASTNODE* CMODEXPRESSION( void );
struct $7ASTNODE* CINTDIVEXPRESSION( void );
struct $7ASTNODE* CMULTEXPRESSION( void );
struct $7ASTNODE* CEXPEXPRESSION( void );
struct $7ASTNODE* CNEGNOTEXPRESSION( void );
struct $7ASTNODE* CLOGOREXPRESSION( void );
struct $7ASTNODE* CLOGANDEXPRESSION( void );
struct $7ASTNODE* CISEXPRESSION( void );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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
typedef int32 $8FB_TOKEN;
typedef int32 $15FB_CMPSTMT_MASK;
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int32 DTYPE;
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
	int32 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 128 );
struct $13FB_CMPSTMT_DO {
	int32 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 20 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 12 );
struct $13FB_CMPSTMT_IF {
	int32 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int32 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 16 );
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int32 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 16 );
struct $19FB_CMPSTMT_SELCONST {
	int32 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int32 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 24 );
struct $17FB_CMPSTMT_SELECT {
	int32 ISCONST;
	struct $8FBSYMBOL* SYM;
	int32 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 56 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int32 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 12 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int32 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 8 );
typedef int32 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 4 );
struct $16FB_CMPSTMT_SCOPE {
	int32 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 4 );
struct $13FB_CMPSTMTSTK {
	int32 ID;
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
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 144 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 32 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int32 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 88 );
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int32 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint32 STAGE;
	uint32 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int32 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int32 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int32 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 168 );
extern struct $9PARSERCTX PARSER$;

struct $7ASTNODE* CEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	int32 LAST_ISEXPR$1;
	LAST_ISEXPR$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 4) != 0);
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 4;
	}
	goto label$12;
	label$13:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -5;
	}
	label$12:;
	struct $7ASTNODE* vr$5 = CBOOLEXPRESSION(  );
	fb$result$1 = vr$5;
	if( LAST_ISEXPR$1 == 0 ) goto label$15;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 4;
	}
	goto label$14;
	label$15:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -5;
	}
	label$14:;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int32 ALLOW_NIDXARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	int32 OLDCHECKARRAY$1;
	OLDCHECKARRAY$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0);
	if( ~ALLOW_NIDXARRAY$1 == 0 ) goto label$19;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 2;
	}
	goto label$18;
	label$19:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -3;
	}
	label$18:;
	struct $7ASTNODE* vr$6 = CEXPRESSION(  );
	fb$result$1 = vr$6;
	if( OLDCHECKARRAY$1 == 0 ) goto label$21;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 2;
	}
	goto label$20;
	label$21:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -3;
	}
	label$20:;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* CBOOLEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	int32 OP$1;
	int32 DTORLISTCOOKIE$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* LOGEXPR$1;
	struct $7ASTNODE* vr$1 = CLOGEXPRESSION(  );
	LOGEXPR$1 = vr$1;
	if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$25;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$23;
	}
	label$25:;
	label$24:;
	label$26:;
	{
		{
			uint32 TMP$93$3;
			int32 vr$2 = LEXGETTOKEN( 0 );
			TMP$93$3 = (uint32)vr$2;
			goto label$30;
			label$31:;
			{
				OP$1 = 36;
			}
			goto label$29;
			label$32:;
			{
				OP$1 = 37;
			}
			goto label$29;
			label$33:;
			{
				goto label$27;
			}
			goto label$29;
			label$30:;
			static const void* tmp$94[2] = {
				&&label$31,
				&&label$32,
			};
			if( (TMP$93$3 - 290u) > 1u ) goto label$33;
			goto *tmp$94[TMP$93$3 - 290u];
			label$29:;
		}
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$35;
		{
			goto label$27;
		}
		label$35:;
		label$34:;
		LEXSKIPTOKEN( 2048 );
		ASTDTORLISTSCOPEBEGIN( 0 );
		struct $7ASTNODE* vr$5 = CLOGEXPRESSION(  );
		EXPR$1 = vr$5;
		int32 vr$6 = ASTDTORLISTSCOPEEND(  );
		DTORLISTCOOKIE$1 = vr$6;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$37;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$27;
		}
		label$37:;
		label$36:;
		struct $7ASTNODE* vr$7 = ASTNEWBOP( OP$1, LOGEXPR$1, EXPR$1, (struct $8FBSYMBOL*)DTORLISTCOOKIE$1, 1 );
		LOGEXPR$1 = vr$7;
		if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$39;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			LOGEXPR$1 = vr$8;
		}
		label$39:;
		label$38:;
	}
	label$28:;
	goto label$26;
	label$27:;
	fb$result$1 = LOGEXPR$1;
	label$23:;
	return fb$result$1;
}

struct $7ASTNODE* CLOGEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$40:;
	int32 OP$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* LOGEXPR$1;
	struct $7ASTNODE* vr$1 = CLOGOREXPRESSION(  );
	LOGEXPR$1 = vr$1;
	if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$43;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$41;
	}
	label$43:;
	label$42:;
	label$44:;
	{
		{
			uint32 TMP$95$3;
			int32 vr$2 = LEXGETTOKEN( 0 );
			TMP$95$3 = (uint32)vr$2;
			goto label$48;
			label$49:;
			{
				OP$1 = 38;
			}
			goto label$47;
			label$50:;
			{
				OP$1 = 39;
			}
			goto label$47;
			label$51:;
			{
				OP$1 = 40;
			}
			goto label$47;
			label$52:;
			{
				goto label$45;
			}
			goto label$47;
			label$48:;
			static const void* tmp$96[3] = {
				&&label$49,
				&&label$50,
				&&label$51,
			};
			if( (TMP$95$3 - 292u) > 2u ) goto label$52;
			goto *tmp$96[TMP$95$3 - 292u];
			label$47:;
		}
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$54;
		{
			goto label$45;
		}
		label$54:;
		label$53:;
		LEXSKIPTOKEN( 2048 );
		struct $7ASTNODE* vr$5 = CLOGOREXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$56;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$45;
		}
		label$56:;
		label$55:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( OP$1, LOGEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		LOGEXPR$1 = vr$6;
		if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$58;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			LOGEXPR$1 = vr$7;
		}
		label$58:;
		label$57:;
	}
	label$46:;
	goto label$44;
	label$45:;
	fb$result$1 = LOGEXPR$1;
	label$41:;
	return fb$result$1;
}

struct $7ASTNODE* CLOGOREXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$59:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* LOGEXPR$1;
	struct $7ASTNODE* vr$1 = CLOGANDEXPRESSION(  );
	LOGEXPR$1 = vr$1;
	if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$62;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$60;
	}
	label$62:;
	label$61:;
	label$63:;
	{
		int32 vr$2 = LEXGETTOKEN( 0 );
		if( vr$2 == 289 ) goto label$67;
		{
			goto label$64;
		}
		label$67:;
		label$66:;
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$69;
		{
			goto label$64;
		}
		label$69:;
		label$68:;
		LEXSKIPTOKEN( 2048 );
		struct $7ASTNODE* vr$5 = CLOGANDEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$71;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$64;
		}
		label$71:;
		label$70:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 35, LOGEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		LOGEXPR$1 = vr$6;
		if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$73;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			LOGEXPR$1 = vr$7;
		}
		label$73:;
		label$72:;
	}
	label$65:;
	goto label$63;
	label$64:;
	fb$result$1 = LOGEXPR$1;
	label$60:;
	return fb$result$1;
}

struct $7ASTNODE* CLOGANDEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$74:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* LOGEXPR$1;
	struct $7ASTNODE* vr$1 = CRELEXPRESSION(  );
	LOGEXPR$1 = vr$1;
	if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$77;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$75;
	}
	label$77:;
	label$76:;
	label$78:;
	{
		int32 vr$2 = LEXGETTOKEN( 0 );
		if( vr$2 == 288 ) goto label$82;
		{
			goto label$79;
		}
		label$82:;
		label$81:;
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$84;
		{
			goto label$79;
		}
		label$84:;
		label$83:;
		LEXSKIPTOKEN( 2048 );
		struct $7ASTNODE* vr$5 = CRELEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$86;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$79;
		}
		label$86:;
		label$85:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 34, LOGEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		LOGEXPR$1 = vr$6;
		if( LOGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$88;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			LOGEXPR$1 = vr$7;
		}
		label$88:;
		label$87:;
	}
	label$80:;
	goto label$78;
	label$79:;
	fb$result$1 = LOGEXPR$1;
	label$75:;
	return fb$result$1;
}

struct $7ASTNODE* CRELEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$89:;
	int32 OP$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* RELEXPR$1;
	struct $7ASTNODE* vr$1 = CISEXPRESSION(  );
	RELEXPR$1 = vr$1;
	if( RELEXPR$1 != (struct $7ASTNODE*)0u ) goto label$92;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$90;
	}
	label$92:;
	label$91:;
	label$93:;
	{
		{
			uint32 TMP$97$3;
			int32 vr$2 = LEXGETTOKEN( 0 );
			TMP$97$3 = (uint32)vr$2;
			goto label$97;
			label$98:;
			{
				*(int32*)((uint8*)&PARSER$ + 164) = -(*(int32*)((uint8*)&PARSER$ + 148) == 0);
				if( (*(int32*)((uint8*)&PARSER$ + 152) & 256) == 0 ) goto label$100;
				{
					goto label$94;
				}
				label$100:;
				label$99:;
				OP$1 = 45;
			}
			goto label$96;
			label$101:;
			{
				if( (*(int32*)((uint8*)&PARSER$ + 152) & 512) == 0 ) goto label$103;
				{
					goto label$94;
				}
				label$103:;
				label$102:;
				OP$1 = 46;
			}
			goto label$96;
			label$104:;
			{
				OP$1 = 47;
			}
			goto label$96;
			label$105:;
			{
				OP$1 = 48;
			}
			goto label$96;
			label$106:;
			{
				OP$1 = 50;
			}
			goto label$96;
			label$107:;
			{
				OP$1 = 49;
			}
			goto label$96;
			label$108:;
			{
				goto label$94;
			}
			goto label$96;
			label$97:;
			static const void* tmp$98[6] = {
				&&label$98,
				&&label$101,
				&&label$104,
				&&label$105,
				&&label$106,
				&&label$107,
			};
			if( (TMP$97$3 - 299u) > 5u ) goto label$108;
			goto *tmp$98[TMP$97$3 - 299u];
			label$96:;
		}
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$6 = CISEXPRESSION(  );
		EXPR$1 = vr$6;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$110;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$94;
		}
		label$110:;
		label$109:;
		struct $7ASTNODE* vr$7 = ASTNEWBOP( OP$1, RELEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		RELEXPR$1 = vr$7;
		if( RELEXPR$1 != (struct $7ASTNODE*)0u ) goto label$112;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			RELEXPR$1 = vr$8;
		}
		label$112:;
		label$111:;
	}
	label$95:;
	goto label$93;
	label$94:;
	fb$result$1 = RELEXPR$1;
	label$90:;
	return fb$result$1;
}

struct $7ASTNODE* CISEXPRESSION( void )
{
	int64 TMP$99$1;
	int32 TMP$100$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$113:;
	struct $7ASTNODE* ISEXPR$1;
	struct $7ASTNODE* vr$1 = CCATEXPRESSION(  );
	ISEXPR$1 = vr$1;
	if( ISEXPR$1 != (struct $7ASTNODE*)0u ) goto label$116;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$114;
	}
	label$116:;
	label$115:;
	int32 vr$2 = LEXGETTOKEN( 0 );
	if( vr$2 == 272 ) goto label$118;
	{
		fb$result$1 = ISEXPR$1;
		goto label$114;
	}
	label$118:;
	label$117:;
	if( (*(int32*)((uint8*)ISEXPR$1 + 4) & 511) != 20 ) goto label$120;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)ISEXPR$1 + 8) + 12) & 4194304) != 0 ) goto label$122;
		{
			ERRREPORT( 297, 0, (uint8*)0u );
			struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			ISEXPR$1 = vr$8;
		}
		label$122:;
		label$121:;
	}
	goto label$119;
	label$120:;
	{
		ERRREPORT( 299, 0, (uint8*)0u );
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		ISEXPR$1 = vr$9;
	}
	label$119:;
	LEXSKIPTOKEN( 2048 );
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	TMP$100$1 = 0;
	TMP$99$1 = 0ll;
	int32 vr$14 = CSYMBOLTYPE( &DTYPE$1, &SUBTYPE$1, &TMP$99$1, &TMP$100$1, 1 );
	if( vr$14 != 0 ) goto label$124;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$114;
	}
	label$124:;
	label$123:;
	if( (DTYPE$1 & 511) != 20 ) goto label$126;
	{
		if( (*(int32*)((uint8*)SUBTYPE$1 + 12) & 4194304) != 0 ) goto label$128;
		{
			ERRREPORT( 297, 0, (uint8*)0u );
			struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$18;
			goto label$114;
		}
		goto label$127;
		label$128:;
		int32 vr$20 = SYMBGETUDTBASELEVEL( SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)ISEXPR$1 + 8) );
		if( vr$20 != 0 ) goto label$129;
		{
			ERRREPORT( 298, 0, (uint8*)0u );
			struct $7ASTNODE* vr$21 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$21;
			goto label$114;
		}
		label$129:;
		label$127:;
	}
	goto label$125;
	label$126:;
	{
		ERRREPORT( 299, 0, (uint8*)0u );
		struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$22;
		goto label$114;
	}
	label$125:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$25 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$1 + 140) + 152), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	EXPR$1 = vr$25;
	struct $7ASTNODE* vr$26 = ASTNEWBOP( 51, ISEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
	ISEXPR$1 = vr$26;
	if( ISEXPR$1 != (struct $7ASTNODE*)0u ) goto label$131;
	{
		ERRREPORT( 20, 0, (uint8*)0u );
		struct $7ASTNODE* vr$27 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		ISEXPR$1 = vr$27;
	}
	label$131:;
	label$130:;
	fb$result$1 = ISEXPR$1;
	label$114:;
	return fb$result$1;
}

struct $7ASTNODE* CCATEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$132:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* CATEXPR$1;
	struct $7ASTNODE* vr$1 = CADDEXPRESSION(  );
	CATEXPR$1 = vr$1;
	if( CATEXPR$1 != (struct $7ASTNODE*)0u ) goto label$135;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$133;
	}
	label$135:;
	label$134:;
	label$136:;
	{
		int32 vr$2 = LEXGETTOKEN( 0 );
		if( vr$2 == 38 ) goto label$140;
		{
			goto label$137;
		}
		label$140:;
		label$139:;
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$142;
		{
			goto label$137;
		}
		label$142:;
		label$141:;
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$5 = CADDEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$144;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$137;
		}
		label$144:;
		label$143:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 44, CATEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		CATEXPR$1 = vr$6;
		if( CATEXPR$1 != (struct $7ASTNODE*)0u ) goto label$146;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTSTR( (uint8*)0u );
			CATEXPR$1 = vr$7;
		}
		label$146:;
		label$145:;
	}
	label$138:;
	goto label$136;
	label$137:;
	fb$result$1 = CATEXPR$1;
	label$133:;
	return fb$result$1;
}

struct $7ASTNODE* CADDEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$147:;
	int32 OP$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* ADDEXPR$1;
	struct $7ASTNODE* vr$1 = CSHIFTEXPRESSION(  );
	ADDEXPR$1 = vr$1;
	if( ADDEXPR$1 != (struct $7ASTNODE*)0u ) goto label$150;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$148;
	}
	label$150:;
	label$149:;
	label$151:;
	{
		{
			int32 TMP$101$3;
			int32 vr$2 = LEXGETTOKEN( 0 );
			TMP$101$3 = vr$2;
			if( TMP$101$3 != 43 ) goto label$155;
			label$156:;
			{
				OP$1 = 28;
			}
			goto label$154;
			label$155:;
			if( TMP$101$3 != 45 ) goto label$157;
			label$158:;
			{
				OP$1 = 29;
			}
			goto label$154;
			label$157:;
			{
				goto label$152;
			}
			label$159:;
			label$154:;
		}
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$161;
		{
			goto label$152;
		}
		label$161:;
		label$160:;
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$5 = CSHIFTEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$163;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$152;
		}
		label$163:;
		label$162:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( OP$1, ADDEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 7 );
		ADDEXPR$1 = vr$6;
		if( ADDEXPR$1 != (struct $7ASTNODE*)0u ) goto label$165;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			ADDEXPR$1 = vr$7;
		}
		label$165:;
		label$164:;
	}
	label$153:;
	goto label$151;
	label$152:;
	fb$result$1 = ADDEXPR$1;
	label$148:;
	return fb$result$1;
}

struct $7ASTNODE* CSHIFTEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$166:;
	int32 OP$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* SHIFTEXPR$1;
	struct $7ASTNODE* vr$1 = CMODEXPRESSION(  );
	SHIFTEXPR$1 = vr$1;
	if( SHIFTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$169;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$167;
	}
	label$169:;
	label$168:;
	label$170:;
	{
		{
			int32 TMP$102$3;
			int32 vr$2 = LEXGETTOKEN( 0 );
			TMP$102$3 = vr$2;
			if( TMP$102$3 != 297 ) goto label$174;
			label$175:;
			{
				OP$1 = 41;
			}
			goto label$173;
			label$174:;
			if( TMP$102$3 != 298 ) goto label$176;
			label$177:;
			{
				OP$1 = 42;
			}
			goto label$173;
			label$176:;
			{
				goto label$171;
			}
			label$178:;
			label$173:;
		}
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$180;
		{
			goto label$171;
		}
		label$180:;
		label$179:;
		LEXSKIPTOKEN( 2048 );
		struct $7ASTNODE* vr$5 = CMODEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$182;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$171;
		}
		label$182:;
		label$181:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( OP$1, SHIFTEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		SHIFTEXPR$1 = vr$6;
		if( SHIFTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$184;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			SHIFTEXPR$1 = vr$7;
		}
		label$184:;
		label$183:;
	}
	label$172:;
	goto label$170;
	label$171:;
	fb$result$1 = SHIFTEXPR$1;
	label$167:;
	return fb$result$1;
}

struct $7ASTNODE* CMODEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$185:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* MODEXPR$1;
	struct $7ASTNODE* vr$1 = CINTDIVEXPRESSION(  );
	MODEXPR$1 = vr$1;
	if( MODEXPR$1 != (struct $7ASTNODE*)0u ) goto label$188;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$186;
	}
	label$188:;
	label$187:;
	label$189:;
	{
		int32 vr$2 = LEXGETTOKEN( 0 );
		if( vr$2 == 296 ) goto label$193;
		{
			goto label$190;
		}
		label$193:;
		label$192:;
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$195;
		{
			goto label$190;
		}
		label$195:;
		label$194:;
		LEXSKIPTOKEN( 2048 );
		struct $7ASTNODE* vr$5 = CINTDIVEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$197;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$190;
		}
		label$197:;
		label$196:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 33, MODEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		MODEXPR$1 = vr$6;
		if( MODEXPR$1 != (struct $7ASTNODE*)0u ) goto label$199;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			MODEXPR$1 = vr$7;
		}
		label$199:;
		label$198:;
	}
	label$191:;
	goto label$189;
	label$190:;
	fb$result$1 = MODEXPR$1;
	label$186:;
	return fb$result$1;
}

struct $7ASTNODE* CINTDIVEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$200:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* IDIVEXPR$1;
	struct $7ASTNODE* vr$1 = CMULTEXPRESSION(  );
	IDIVEXPR$1 = vr$1;
	if( IDIVEXPR$1 != (struct $7ASTNODE*)0u ) goto label$203;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$201;
	}
	label$203:;
	label$202:;
	label$204:;
	{
		int32 vr$2 = LEXGETTOKEN( 0 );
		if( vr$2 == 92 ) goto label$208;
		{
			goto label$205;
		}
		label$208:;
		label$207:;
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$210;
		{
			goto label$205;
		}
		label$210:;
		label$209:;
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$5 = CMULTEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$212;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$205;
		}
		label$212:;
		label$211:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 32, IDIVEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		IDIVEXPR$1 = vr$6;
		if( IDIVEXPR$1 != (struct $7ASTNODE*)0u ) goto label$214;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			IDIVEXPR$1 = vr$7;
		}
		label$214:;
		label$213:;
	}
	label$206:;
	goto label$204;
	label$205:;
	fb$result$1 = IDIVEXPR$1;
	label$201:;
	return fb$result$1;
}

struct $7ASTNODE* CMULTEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$215:;
	int32 OP$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* MULEXPR$1;
	struct $7ASTNODE* vr$1 = CEXPEXPRESSION(  );
	MULEXPR$1 = vr$1;
	if( MULEXPR$1 != (struct $7ASTNODE*)0u ) goto label$218;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$216;
	}
	label$218:;
	label$217:;
	label$219:;
	{
		{
			int32 TMP$103$3;
			int32 vr$2 = LEXGETTOKEN( 0 );
			TMP$103$3 = vr$2;
			if( TMP$103$3 != 42 ) goto label$223;
			label$224:;
			{
				OP$1 = 30;
			}
			goto label$222;
			label$223:;
			if( TMP$103$3 != 47 ) goto label$225;
			label$226:;
			{
				OP$1 = 31;
			}
			goto label$222;
			label$225:;
			{
				goto label$220;
			}
			label$227:;
			label$222:;
		}
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$229;
		{
			goto label$220;
		}
		label$229:;
		label$228:;
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$5 = CEXPEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$231;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$220;
		}
		label$231:;
		label$230:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( OP$1, MULEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		MULEXPR$1 = vr$6;
		if( MULEXPR$1 != (struct $7ASTNODE*)0u ) goto label$233;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			MULEXPR$1 = vr$7;
		}
		label$233:;
		label$232:;
	}
	label$221:;
	goto label$219;
	label$220:;
	fb$result$1 = MULEXPR$1;
	label$216:;
	return fb$result$1;
}

struct $7ASTNODE* CEXPEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$234:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* EXPEXPR$1;
	struct $7ASTNODE* vr$1 = CNEGNOTEXPRESSION(  );
	EXPEXPR$1 = vr$1;
	if( EXPEXPR$1 != (struct $7ASTNODE*)0u ) goto label$237;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$235;
	}
	label$237:;
	label$236:;
	label$238:;
	{
		int32 vr$2 = LEXGETTOKEN( 0 );
		if( vr$2 == 94 ) goto label$242;
		{
			goto label$239;
		}
		label$242:;
		label$241:;
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$4 = HISASSIGNTOKEN( vr$3 );
		if( vr$4 == 0 ) goto label$244;
		{
			goto label$239;
		}
		label$244:;
		label$243:;
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$5 = CNEGNOTEXPRESSION(  );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$246;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			goto label$239;
		}
		label$246:;
		label$245:;
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 43, EXPEXPR$1, EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		EXPEXPR$1 = vr$6;
		if( EXPEXPR$1 != (struct $7ASTNODE*)0u ) goto label$248;
		{
			ERRREPORT( 20, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTF( 0x0p+0, 16 );
			EXPEXPR$1 = vr$7;
		}
		label$248:;
		label$247:;
	}
	label$240:;
	goto label$238;
	label$239:;
	fb$result$1 = EXPEXPR$1;
	label$235:;
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
