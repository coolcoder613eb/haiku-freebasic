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
typedef int64 $8FB_TOKEN;
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
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 24 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int64 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 776 );
typedef FBSTRING* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
typedef uint16* (*tmp$30)( struct $11LEXPP_ARGTB*, int64* );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrMid( FBSTRING*, int64, int64 );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_TRIM( FBSTRING* );
static void fb_ctor__parserzquirkzdata( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTDATASTMTBEGIN( void );
struct $7ASTNODE* ASTDATASTMTSTORE( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTDATASTMTEND( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int64 );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
typedef int64 $15FB_CMPSTMT_MASK;
int64 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
typedef int64 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $7ASTNODE* HMATCHEXPR( int64 );
int64 RTLDATARESTORE( struct $8FBSYMBOL*, struct $7ASTNODE* );
int64 RTLDATAREAD( struct $7ASTNODE* );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int64 DTYPE;
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
	int64 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 152 );
struct $13FB_CMPSTMT_DO {
	int64 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 40 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 24 );
struct $13FB_CMPSTMT_IF {
	int64 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int64 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 32 );
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int64 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 32 );
struct $19FB_CMPSTMT_SELCONST {
	int64 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int64 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 32 );
struct $17FB_CMPSTMT_SELECT {
	int64 ISCONST;
	struct $8FBSYMBOL* SYM;
	int64 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 88 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int64 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 24 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int64 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 16 );
typedef int64 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 8 );
struct $16FB_CMPSTMT_SCOPE {
	int64 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 8 );
struct $13FB_CMPSTMTSTK {
	int64 ID;
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
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 176 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 64 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int64 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 176 );
typedef int64 $12FB_PARSEROPT;
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int64 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint64 STAGE;
	uint64 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int64 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int64 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int64 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 336 );
extern struct $9PARSERCTX PARSER$;

int64 CDATASTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	fb$result$1 = 0ll;
	{
		if( TK$1 != 445ll ) goto label$13;
		label$14:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = (struct $8FBSYMBOL*)0ull;
			{
				int64 TMP$94$4;
				int64 vr$1 = LEXGETCLASS( 0ll );
				TMP$94$4 = vr$1;
				if( TMP$94$4 == 0ll ) goto label$17;
				label$18:;
				if( TMP$94$4 == 2ll ) goto label$17;
				label$19:;
				if( TMP$94$4 != 3ll ) goto label$16;
				label$17:;
				{
					struct $10FBSYMCHAIN* CHAIN_$5;
					struct $8FBSYMBOL* BASE_PARENT$5;
					struct $10FBSYMCHAIN* vr$3 = CIDENTIFIER( &BASE_PARENT$5, 34ll );
					CHAIN_$5 = vr$3;
					struct $8FBSYMBOL* vr$4 = SYMBFINDBYCLASS( CHAIN_$5, 7ll );
					SYM$3 = vr$4;
					if( SYM$3 != (struct $8FBSYMBOL*)0ull ) goto label$21;
					{
						uint8* vr$5 = LEXGETTEXT(  );
						struct $8FBSYMBOL* vr$6 = SYMBADDLABEL( vr$5, 72ll );
						SYM$3 = vr$6;
						if( SYM$3 != (struct $8FBSYMBOL*)0ull ) goto label$23;
						{
							ERRREPORT( 4ll, 0ll, (uint8*)0ull );
							HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
							fb$result$1 = -1ll;
							goto label$11;
						}
						label$23:;
						label$22:;
					}
					label$21:;
					label$20:;
					LEXSKIPTOKEN( 2048ll );
				}
				label$16:;
				label$15:;
			}
			int64 vr$7 = RTLDATARESTORE( SYM$3, (struct $7ASTNODE*)0ull );
			fb$result$1 = vr$7;
		}
		goto label$12;
		label$13:;
		if( TK$1 != 446ll ) goto label$24;
		label$25:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* EXPR$3;
			EXPR$3 = (struct $7ASTNODE*)0ull;
			label$26:;
			{
				struct $7ASTNODE* vr$8 = CVARORDEREF( 0ll );
				EXPR$3 = vr$8;
				if( EXPR$3 != (struct $7ASTNODE*)0ull ) goto label$30;
				{
					ERRREPORT( 14ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
				}
				goto label$29;
				label$30:;
				{
					int64 vr$9 = RTLDATAREAD( EXPR$3 );
					if( vr$9 != 0ll ) goto label$32;
					{
						goto label$11;
					}
					label$32:;
					label$31:;
				}
				label$29:;
			}
			label$28:;
			int64 vr$10 = HMATCH( 44ll, 0ll );
			if( vr$10 != 0ll ) goto label$26;
			label$27:;
			fb$result$1 = -1ll;
		}
		goto label$12;
		label$24:;
		if( TK$1 != 447ll ) goto label$33;
		label$34:;
		{
			if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$36;
			{
				int64 vr$11 = CCOMPSTMTISALLOWED( 32ll );
				if( vr$11 != 0ll ) goto label$38;
				{
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
					goto label$11;
				}
				label$38:;
				label$37:;
				if( *(uint64*)((uint8*)&PARSER$ + 200ll) <= 0ull ) goto label$40;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll) ) goto label$42;
					{
						ERRREPORT( 61ll, 0ll, (uint8*)0ull );
					}
					goto label$41;
					label$42:;
					{
						ERRREPORT( 96ll, 0ll, (uint8*)0ull );
					}
					label$41:;
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
					fb$result$1 = 0ll;
					goto label$11;
				}
				label$40:;
				label$39:;
			}
			goto label$35;
			label$36:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll) ) goto label$44;
				{
					ERRREPORT( 61ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
					fb$result$1 = 0ll;
					goto label$11;
				}
				label$44:;
				label$43:;
			}
			label$35:;
			struct $7ASTNODE* TREE$3;
			struct $7ASTNODE* vr$12 = ASTDATASTMTBEGIN(  );
			TREE$3 = vr$12;
			struct $7ASTNODE* EXPR$3;
			EXPR$3 = (struct $7ASTNODE*)0ull;
			if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$46;
			{
				LEXSKIPTOKEN( 2048ll );
				label$47:;
				{
					struct $7ASTNODE* vr$13 = HMATCHEXPR( 8ll );
					EXPR$3 = vr$13;
					if( EXPR$3 != (struct $7ASTNODE*)0ull ) goto label$51;
					{
						goto label$11;
					}
					label$51:;
					label$50:;
					int64 ISCONST$5;
					ISCONST$5 = (int64)-(*(int64*)EXPR$3 == 16ll);
					if( ISCONST$5 != 0ll ) goto label$53;
					{
						if( *(int64*)EXPR$3 != 23ll ) goto label$55;
						{
							ISCONST$5 = -1ll;
						}
						goto label$54;
						label$55:;
						{
							{
								int64 TMP$95$8;
								TMP$95$8 = *(int64*)((uint8*)EXPR$3 + 8ll) & 511ll;
								if( TMP$95$8 == 4ll ) goto label$58;
								label$59:;
								if( TMP$95$8 != 7ll ) goto label$57;
								label$58:;
								{
									struct $8FBSYMBOL* vr$19 = ASTGETSTRLITSYMBOL( EXPR$3 );
									ISCONST$5 = (int64)-(vr$19 != (struct $8FBSYMBOL*)0ull);
								}
								label$57:;
								label$56:;
							}
						}
						label$54:;
					}
					label$53:;
					label$52:;
					if( ISCONST$5 != 0ll ) goto label$61;
					{
						ERRREPORT( 11ll, 0ll, (uint8*)0ull );
						ASTDELTREE( EXPR$3 );
					}
					goto label$60;
					label$61:;
					{
						struct $7ASTNODE* vr$21 = ASTDATASTMTSTORE( TREE$3, EXPR$3 );
						if( vr$21 != (struct $7ASTNODE*)0ull ) goto label$63;
						{
							goto label$11;
						}
						label$63:;
						label$62:;
					}
					label$60:;
				}
				label$49:;
				int64 vr$22 = HMATCH( 44ll, 0ll );
				if( vr$22 != 0ll ) goto label$47;
				label$48:;
			}
			goto label$45;
			label$46:;
			{
				LEXSKIPTOKEN( 62ll );
				int64 DO_EXIT$4;
				DO_EXIT$4 = 0ll;
				FBSTRING TEXT$4;
				__builtin_memset( &TEXT$4, 0, 24ll );
				label$64:;
				{
					int64 TOKENS$5;
					TOKENS$5 = 0ll;
					fb_StrAssign( (void*)&TEXT$4, -1ll, (void*)"", 1ll, 0 );
					label$67:;
					{
						FBSTRING TMP$97$6;
						{
							uint64 TMP$96$7;
							int64 vr$25 = LEXGETTOKEN( 62ll );
							TMP$96$7 = (uint64)vr$25;
							goto label$71;
							label$72:;
							{
								LEXSKIPTOKEN( 62ll );
								goto label$68;
							}
							goto label$70;
							label$73:;
							{
								TOKENS$5 = TOKENS$5 + -1ll;
							}
							goto label$70;
							label$74:;
							{
								DO_EXIT$4 = -1ll;
								goto label$68;
							}
							goto label$70;
							label$71:;
							static const void* tmp$99[252ll] = {
								&&label$73,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$73,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$72,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$70,
								&&label$74,
								&&label$74,
								&&label$74,
								&&label$74,
								&&label$74,
							};
							if( (TMP$96$7 - 9ull) > 251ull ) goto label$70;
							goto *tmp$99[TMP$96$7 - 9ull];
							label$70:;
						}
						uint8* vr$27 = LEXGETTEXT(  );
						__builtin_memset( &TMP$97$6, 0, 24ll );
						FBSTRING* vr$31 = fb_StrConcat( &TMP$97$6, (void*)&TEXT$4, -1ll, (void*)vr$27, 0ll );
						fb_StrAssign( (void*)&TEXT$4, -1ll, (void*)vr$31, -1ll, 0 );
						LEXSKIPTOKEN( 62ll );
						TOKENS$5 = TOKENS$5 + 1ll;
					}
					label$69:;
					goto label$67;
					label$68:;
					FBSTRING* vr$35 = fb_TRIM( (FBSTRING*)&TEXT$4 );
					fb_StrAssign( (void*)&TEXT$4, -1ll, (void*)vr$35, -1ll, 0 );
					if( TOKENS$5 != 1ll ) goto label$76;
					{
						int64 vr$38 = fb_StrLen( (void*)&TEXT$4, -1ll );
						if( vr$38 <= 1ll ) goto label$78;
						{
							if( (uint64)(int64)*(uint8*)*(uint8**)&TEXT$4 != 34ull ) goto label$80;
							{
								int64 vr$42 = fb_StrLen( (void*)&TEXT$4, -1ll );
								if( (uint64)(int64)*(uint8*)((uint8*)((uint8*)*(uint8**)&TEXT$4 + vr$42) + -1ll) != 34ull ) goto label$82;
								{
									int64 vr$46 = fb_StrLen( (void*)&TEXT$4, -1ll );
									FBSTRING* vr$49 = fb_StrMid( (FBSTRING*)&TEXT$4, 2ll, vr$46 + -2ll );
									fb_StrAssign( (void*)&TEXT$4, -1ll, (void*)vr$49, -1ll, 0 );
								}
								label$82:;
								label$81:;
							}
							label$80:;
							label$79:;
						}
						label$78:;
						label$77:;
					}
					label$76:;
					label$75:;
					struct $7ASTNODE* vr$51 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&TEXT$4 );
					struct $7ASTNODE* vr$52 = ASTDATASTMTSTORE( TREE$3, vr$51 );
					if( vr$52 != (struct $7ASTNODE*)0ull ) goto label$84;
					{
						fb_StrDelete( (FBSTRING*)&TEXT$4 );
						goto label$11;
					}
					label$84:;
					label$83:;
				}
				label$66:;
				if( DO_EXIT$4 == 0ll ) goto label$64;
				label$65:;
				fb_StrDelete( (FBSTRING*)&TEXT$4 );
			}
			label$45:;
			ASTDATASTMTEND( TREE$3 );
			ASTDELNODE( TREE$3 );
			fb$result$1 = -1ll;
		}
		label$33:;
		label$12:;
	}
	label$11:;
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
