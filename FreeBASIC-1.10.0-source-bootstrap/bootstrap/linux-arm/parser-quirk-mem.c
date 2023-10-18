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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzquirkzmem( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTBUILDNEWOP( $6AST_OP, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDDELETEOP( $6AST_OP, struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int32 TYPEHASCTOR( int32, struct $8FBSYMBOL* );
int32 TYPEHASDEFCTOR( int32, struct $8FBSYMBOL* );
int32 TYPEHASDTOR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* CEXPRESSION( void );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
struct $7ASTNODE* CCTORCALL( struct $8FBSYMBOL* );
int64 CCONSTINTEXPRRANGED( struct $7ASTNODE*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HCOMPLAINIFABSTRACTCLASS( int32, struct $8FBSYMBOL* );
void HSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32, int32 );
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

struct $7ASTNODE* COPERATORNEW( void )
{
	int64 TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* TMP$1;
	int32 HAS_CTOR$1;
	int32 HAS_DEFCTOR$1;
	int32 DO_CLEAR$1;
	struct $7ASTNODE* INITEXPR$1;
	struct $7ASTNODE* ELEMENTSEXPR$1;
	struct $7ASTNODE* PLACEMENTEXPR$1;
	struct $7ASTNODE* EXPR$1;
	$6AST_OP OP$1;
	DO_CLEAR$1 = -1;
	OP$1 = 78;
	ELEMENTSEXPR$1 = (struct $7ASTNODE*)0u;
	INITEXPR$1 = (struct $7ASTNODE*)0u;
	PLACEMENTEXPR$1 = (struct $7ASTNODE*)0u;
	LEXSKIPTOKEN( 2048 );
	int32 vr$1 = HMATCH( 40, 0 );
	if( vr$1 == 0 ) goto label$13;
	{
		struct $7ASTNODE* vr$2 = CEXPRESSION(  );
		PLACEMENTEXPR$1 = vr$2;
		if( PLACEMENTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$15;
		{
			ERRREPORT( 9, -1, (uint8*)0u );
		}
		label$15:;
		label$14:;
		int32 vr$3 = HMATCH( 41, 0 );
		if( vr$3 != 0 ) goto label$17;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
		}
		label$17:;
		label$16:;
	}
	label$13:;
	label$12:;
	TMP$92$1 = 0ll;
	HSYMBOLTYPE( &DTYPE$1, &SUBTYPE$1, &TMP$92$1, 0, 0 );
	{
		int32 TMP$93$2;
		TMP$93$2 = DTYPE$1 & 511;
		if( TMP$93$2 == 18 ) goto label$20;
		label$21:;
		if( TMP$93$2 == 4 ) goto label$20;
		label$22:;
		if( TMP$93$2 != 7 ) goto label$19;
		label$20:;
		{
			ERRREPORT( 201, -1, (uint8*)0u );
			DTYPE$1 = 17;
		}
		label$19:;
		label$18:;
	}
	HCOMPLAINIFABSTRACTCLASS( DTYPE$1, SUBTYPE$1 );
	int32 vr$8 = TYPEHASCTOR( DTYPE$1, SUBTYPE$1 );
	HAS_CTOR$1 = vr$8;
	int32 vr$9 = TYPEHASDEFCTOR( DTYPE$1, SUBTYPE$1 );
	HAS_DEFCTOR$1 = vr$9;
	int32 vr$10 = LEXGETTOKEN( 0 );
	if( vr$10 != 91 ) goto label$24;
	{
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$11 = CEXPRESSION(  );
		ELEMENTSEXPR$1 = vr$11;
		if( ELEMENTSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$26;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
		}
		goto label$25;
		label$26:;
		{
			OP$1 = 79;
		}
		label$25:;
		int32 vr$12 = LEXGETTOKEN( 0 );
		if( vr$12 == 93 ) goto label$28;
		{
			ERRREPORT( 66, 0, (uint8*)0u );
			HSKIPUNTIL( 93, 0, 0, 0 );
		}
		goto label$27;
		label$28:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$27:;
		int32 vr$13 = LEXGETTOKEN( 0 );
		if( vr$13 != 123 ) goto label$30;
		{
			LEXSKIPTOKEN( 0 );
			int32 vr$14 = LEXGETTOKEN( 0 );
			if( vr$14 != 372 ) goto label$32;
			{
				if( HAS_DEFCTOR$1 == 0 ) goto label$34;
				{
					ERRREPORTWARN( 19, (uint8*)0u, 1, (uint8*)0u );
				}
				label$34:;
				label$33:;
				if( (DTYPE$1 & 511) != 17 ) goto label$36;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				goto label$35;
				label$36:;
				{
					DO_CLEAR$1 = 0;
				}
				label$35:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$31;
			label$32:;
			{
				ERRREPORT( 200, 0, (uint8*)0u );
			}
			label$31:;
			int32 vr$16 = LEXGETTOKEN( 0 );
			if( vr$16 == 125 ) goto label$38;
			{
				ERRREPORT( 65, 0, (uint8*)0u );
				HSKIPUNTIL( 125, -1, 0, 0 );
			}
			goto label$37;
			label$38:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$37:;
		}
		label$30:;
		label$29:;
	}
	label$24:;
	label$23:;
	if( ELEMENTSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$40;
	{
		struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 1ll, 9, (struct $8FBSYMBOL*)0u );
		ELEMENTSEXPR$1 = vr$17;
	}
	goto label$39;
	label$40:;
	{
		if( *(int32*)ELEMENTSEXPR$1 != 16 ) goto label$42;
		{
			int64 vr$19 = CCONSTINTEXPRRANGED( ELEMENTSEXPR$1, 9 );
			struct $7ASTNODE* vr$20 = ASTNEWCONSTI( vr$19, 9, (struct $8FBSYMBOL*)0u );
			ELEMENTSEXPR$1 = vr$20;
		}
		goto label$41;
		label$42:;
		{
			struct $7ASTNODE* vr$21 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, ELEMENTSEXPR$1, 1, (int32*)0u );
			ELEMENTSEXPR$1 = vr$21;
		}
		label$41:;
		if( ELEMENTSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$44;
		{
			ERRREPORT( 20, -1, (uint8*)0u );
			struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 1ll, 9, (struct $8FBSYMBOL*)0u );
			ELEMENTSEXPR$1 = vr$22;
		}
		label$44:;
		label$43:;
	}
	label$39:;
	struct $8FBSYMBOL* vr$32 = SYMBADDTEMPVAR( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1 );
	TMP$1 = vr$32;
	if( HAS_CTOR$1 == 0 ) goto label$46;
	{
		int32 vr$33 = LEXGETTOKEN( 0 );
		if( vr$33 != 40 ) goto label$48;
		{
			if( OP$1 != 79 ) goto label$50;
			{
				ERRREPORT( 199, -1, (uint8*)0u );
			}
			goto label$49;
			label$50:;
			{
				struct $7ASTNODE* vr$34 = CCTORCALL( SUBTYPE$1 );
				INITEXPR$1 = vr$34;
			}
			label$49:;
		}
		goto label$47;
		label$48:;
		{
			struct $8FBSYMBOL* CTOR$3;
			struct $8FBSYMBOL* vr$35 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
			CTOR$3 = vr$35;
			if( CTOR$3 != (struct $8FBSYMBOL*)0u ) goto label$52;
			{
				ERRREPORT( 183, 0, (uint8*)0u );
			}
			goto label$51;
			label$52:;
			{
				if( OP$1 == 79 ) goto label$54;
				{
					struct $7ASTNODE* vr$36 = CCTORCALL( SUBTYPE$1 );
					INITEXPR$1 = vr$36;
				}
				goto label$53;
				label$54:;
				{
					int32 vr$37 = SYMBCHECKACCESS( CTOR$3 );
					if( vr$37 != 0 ) goto label$56;
					{
						ERRREPORT( 204, 0, (uint8*)0u );
					}
					label$56:;
					label$55:;
				}
				label$53:;
			}
			label$51:;
		}
		label$47:;
	}
	goto label$45;
	label$46:;
	{
		int32 vr$38 = LEXGETTOKEN( 0 );
		if( vr$38 != 40 ) goto label$58;
		{
			if( OP$1 != 79 ) goto label$60;
			{
				ERRREPORT( 200, -1, (uint8*)0u );
			}
			label$60:;
			label$59:;
			int32 vr$39 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$39 != 372 ) goto label$62;
			{
				LEXSKIPTOKEN( 0 );
				if( (DTYPE$1 & 511) != 17 ) goto label$64;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				goto label$63;
				label$64:;
				{
					DO_CLEAR$1 = 0;
				}
				label$63:;
				LEXSKIPTOKEN( 2048 );
				int32 vr$41 = LEXGETTOKEN( 0 );
				if( vr$41 == 41 ) goto label$66;
				{
					ERRREPORT( 7, 0, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				goto label$65;
				label$66:;
				{
					LEXSKIPTOKEN( 0 );
				}
				label$65:;
			}
			goto label$61;
			label$62:;
			{
				struct $7ASTNODE* vr$42 = CINITIALIZER( TMP$1, 1, DTYPE$1, SUBTYPE$1 );
				INITEXPR$1 = vr$42;
				if( INITEXPR$1 != (struct $7ASTNODE*)0u ) goto label$68;
				{
					ERRREPORT( 9, 0, (uint8*)0u );
				}
				label$68:;
				label$67:;
			}
			label$61:;
		}
		label$58:;
		label$57:;
	}
	label$45:;
	struct $7ASTNODE* vr$43 = ASTBUILDNEWOP( OP$1, TMP$1, ELEMENTSEXPR$1, INITEXPR$1, DTYPE$1, SUBTYPE$1, DO_CLEAR$1, PLACEMENTEXPR$1 );
	EXPR$1 = vr$43;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$70;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
	}
	label$70:;
	label$69:;
	struct $7ASTNODE* vr$44 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$45 = ASTNEWLINK( EXPR$1, vr$44, 2 );
	fb$result$1 = vr$45;
	label$11:;
	return fb$result$1;
}

void COPERATORDELETE( void )
{
	label$71:;
	struct $7ASTNODE* PTREXPR$1;
	int32 DTYPE$1;
	int32 OP$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	LEXSKIPTOKEN( 2048 );
	OP$1 = 80;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 91 ) goto label$74;
	{
		LEXSKIPTOKEN( 0 );
		OP$1 = 81;
		int32 vr$1 = LEXGETTOKEN( 0 );
		if( vr$1 == 93 ) goto label$76;
		{
			ERRREPORT( 66, 0, (uint8*)0u );
			HSKIPUNTIL( 93, 0, 0, 0 );
			goto label$72;
		}
		label$76:;
		label$75:;
		LEXSKIPTOKEN( 0 );
	}
	label$74:;
	label$73:;
	struct $7ASTNODE* vr$2 = CVARORDEREF( 4 );
	PTREXPR$1 = vr$2;
	if( PTREXPR$1 != (struct $7ASTNODE*)0u ) goto label$78;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$72;
	}
	label$78:;
	label$77:;
	DTYPE$1 = *(int32*)((uint8*)PTREXPR$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PTREXPR$1 + 8);
	if( (DTYPE$1 & 480) != 0 ) goto label$80;
	{
		ERRREPORT( 28, 0, (uint8*)0u );
		goto label$72;
	}
	label$80:;
	label$79:;
	{
		int32 TMP$94$2;
		TMP$94$2 = DTYPE$1 & 511;
		if( TMP$94$2 != 32 ) goto label$82;
		label$83:;
		{
			ERRREPORTWARN( 22, (uint8*)0u, 1, (uint8*)0u );
		}
		goto label$81;
		label$82:;
		if( TMP$94$2 != 55 ) goto label$84;
		label$85:;
		{
			ERRREPORT( 71, -1, (uint8*)0u );
		}
		label$84:;
		label$81:;
	}
	int32 vr$17 = TYPEHASDTOR( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856), SUBTYPE$1 );
	if( vr$17 == 0 ) goto label$87;
	{
		struct $8FBSYMBOL* vr$18 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		int32 vr$19 = SYMBCHECKACCESS( vr$18 );
		if( vr$19 != 0 ) goto label$89;
		{
			ERRREPORT( 206, 0, (uint8*)0u );
		}
		label$89:;
		label$88:;
	}
	label$87:;
	label$86:;
	struct $7ASTNODE* vr$20 = ASTBUILDDELETEOP( OP$1, PTREXPR$1 );
	ASTADD( vr$20 );
	label$72:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}
