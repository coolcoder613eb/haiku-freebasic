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
static void fb_ctor__parserzquirkzconsole( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
int32 SYMBISSTRING( int32 );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
struct $7ASTNODE* RTLWIDTHSCREEN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWIDTHDEV( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWIDTHFILE( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLCOLOR( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLPAGESET( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLCONSOLEVIEW( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLCONSOLEREADXY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
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

struct $7ASTNODE* CVIEWSTMT( int32 IS_FUNC$1 )
{
	int32 TMP$93$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 4 );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 4 );
	int32 DEFAULT_VIEW$1;
	__builtin_memset( &DEFAULT_VIEW$1, 0, 4 );
	int32 DEFAULT_VIEW_VALUE$1;
	__builtin_memset( &DEFAULT_VIEW_VALUE$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	DEFAULT_VIEW$1 = IS_FUNC$1;
	if( IS_FUNC$1 == 0 ) goto label$12;
	TMP$93$1 = -1;
	goto label$33;
	label$12:;
	TMP$93$1 = 0;
	label$33:;
	DEFAULT_VIEW_VALUE$1 = TMP$93$1;
	int32 vr$5 = LEXGETLOOKAHEAD( 1, 0 );
	if( vr$5 == 463 ) goto label$14;
	{
		goto label$11;
	}
	label$14:;
	label$13:;
	LEXSKIPTOKEN( 2048 );
	LEXSKIPTOKEN( 2048 );
	if( IS_FUNC$1 != 0 ) goto label$16;
	{
		struct $7ASTNODE* vr$6 = CEXPRESSION(  );
		EXPR1$1 = vr$6;
		if( EXPR1$1 == (struct $7ASTNODE*)0u ) goto label$18;
		{
			int32 vr$7 = HMATCH( 284, 2048 );
			if( vr$7 != 0 ) goto label$20;
			{
				ERRREPORT( 17, 0, (uint8*)0u );
				struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$8;
			}
			label$20:;
			label$19:;
			struct $7ASTNODE* vr$9 = HMATCHEXPR( 8 );
			EXPR2$1 = vr$9;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$22;
			{
				goto label$11;
			}
			label$22:;
			label$21:;
		}
		goto label$17;
		label$18:;
		{
			DEFAULT_VIEW$1 = -1;
		}
		label$17:;
	}
	label$16:;
	label$15:;
	if( DEFAULT_VIEW$1 == 0 ) goto label$24;
	{
		if( IS_FUNC$1 == 0 ) goto label$26;
		{
			int32 vr$10 = LEXGETTOKEN( 0 );
			if( vr$10 == 40 ) goto label$28;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$27;
			label$28:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$27:;
			int32 vr$11 = LEXGETTOKEN( 0 );
			if( vr$11 == 41 ) goto label$30;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$29;
			label$30:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$29:;
		}
		label$26:;
		label$25:;
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( (int64)DEFAULT_VIEW_VALUE$1, 8, (struct $8FBSYMBOL*)0u );
		EXPR1$1 = vr$13;
		struct $7ASTNODE* vr$15 = ASTNEWCONSTI( (int64)DEFAULT_VIEW_VALUE$1, 8, (struct $8FBSYMBOL*)0u );
		EXPR2$1 = vr$15;
	}
	label$24:;
	label$23:;
	struct $7ASTNODE* vr$16 = RTLCONSOLEVIEW( EXPR1$1, EXPR2$1 );
	EXPR1$1 = vr$16;
	if( IS_FUNC$1 != 0 ) goto label$32;
	{
		ASTADD( EXPR1$1 );
	}
	label$32:;
	label$31:;
	fb$result$1 = EXPR1$1;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* CWIDTHSTMT( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$34:;
	struct $7ASTNODE* FNUM$1;
	__builtin_memset( &FNUM$1, 0, 4 );
	struct $7ASTNODE* WIDTH_ARG$1;
	__builtin_memset( &WIDTH_ARG$1, 0, 4 );
	struct $7ASTNODE* HEIGHT_ARG$1;
	__builtin_memset( &HEIGHT_ARG$1, 0, 4 );
	struct $7ASTNODE* DEV_NAME$1;
	__builtin_memset( &DEV_NAME$1, 0, 4 );
	int32 CHECKRPRNT$1;
	__builtin_memset( &CHECKRPRNT$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	LEXSKIPTOKEN( 2048 );
	if( ISFUNC$1 == 0 ) goto label$37;
	{
		int32 vr$6 = HMATCH( 40, 0 );
		CHECKRPRNT$1 = vr$6;
	}
	goto label$36;
	label$37:;
	{
		CHECKRPRNT$1 = 0;
	}
	label$36:;
	if( ISFUNC$1 == 0 ) goto label$39;
	{
		if( CHECKRPRNT$1 != 0 ) goto label$41;
		{
			struct $7ASTNODE* vr$7 = RTLWIDTHSCREEN( (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u, ISFUNC$1 );
			fb$result$1 = vr$7;
			goto label$35;
		}
		goto label$40;
		label$41:;
		int32 vr$8 = HMATCH( 41, 0 );
		if( vr$8 == 0 ) goto label$42;
		{
			struct $7ASTNODE* vr$9 = RTLWIDTHSCREEN( (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u, ISFUNC$1 );
			fb$result$1 = vr$9;
			goto label$35;
		}
		label$42:;
		label$40:;
	}
	label$39:;
	label$38:;
	int32 vr$10 = HMATCH( 464, 0 );
	if( vr$10 == 0 ) goto label$44;
	{
		struct $7ASTNODE* vr$11 = ASTNEWCONSTSTR( (uint8*)"LPT1:" );
		DEV_NAME$1 = vr$11;
		struct $7ASTNODE* vr$12 = HMATCHEXPR( 8 );
		WIDTH_ARG$1 = vr$12;
		if( WIDTH_ARG$1 != (struct $7ASTNODE*)0u ) goto label$46;
		{
			goto label$35;
		}
		label$46:;
		label$45:;
		struct $7ASTNODE* vr$13 = RTLWIDTHDEV( DEV_NAME$1, WIDTH_ARG$1, ISFUNC$1 );
		fb$result$1 = vr$13;
	}
	goto label$43;
	label$44:;
	int32 vr$14 = HMATCH( 35, 0 );
	if( vr$14 == 0 ) goto label$47;
	{
		struct $7ASTNODE* vr$15 = CEXPRESSION(  );
		FNUM$1 = vr$15;
		if( FNUM$1 != (struct $7ASTNODE*)0u ) goto label$49;
		{
			ERRREPORT( 327, 0, (uint8*)0u );
			goto label$51;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$35;
			}
			label$51:;
			label$50:;
			struct $7ASTNODE* vr$16 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
			FNUM$1 = vr$16;
		}
		label$49:;
		label$48:;
		int32 vr$17 = HMATCH( 44, 0 );
		if( vr$17 == 0 ) goto label$53;
		{
			struct $7ASTNODE* vr$18 = HMATCHEXPR( 8 );
			WIDTH_ARG$1 = vr$18;
			if( WIDTH_ARG$1 != (struct $7ASTNODE*)0u ) goto label$55;
			{
				goto label$35;
			}
			label$55:;
			label$54:;
		}
		goto label$52;
		label$53:;
		{
			struct $7ASTNODE* vr$19 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
			WIDTH_ARG$1 = vr$19;
		}
		label$52:;
		struct $7ASTNODE* vr$20 = RTLWIDTHFILE( FNUM$1, WIDTH_ARG$1, ISFUNC$1 );
		fb$result$1 = vr$20;
	}
	goto label$43;
	label$47:;
	int32 vr$21 = HMATCH( 44, 0 );
	if( vr$21 == 0 ) goto label$56;
	{
		struct $7ASTNODE* vr$22 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
		WIDTH_ARG$1 = vr$22;
		struct $7ASTNODE* vr$23 = HMATCHEXPR( 8 );
		HEIGHT_ARG$1 = vr$23;
		if( HEIGHT_ARG$1 != (struct $7ASTNODE*)0u ) goto label$58;
		{
			goto label$35;
		}
		label$58:;
		label$57:;
		struct $7ASTNODE* vr$24 = RTLWIDTHSCREEN( WIDTH_ARG$1, HEIGHT_ARG$1, ISFUNC$1 );
		fb$result$1 = vr$24;
	}
	goto label$43;
	label$56:;
	{
		struct $7ASTNODE* vr$25 = HMATCHEXPR( 17 );
		DEV_NAME$1 = vr$25;
		if( DEV_NAME$1 != (struct $7ASTNODE*)0u ) goto label$60;
		{
			goto label$35;
		}
		label$60:;
		label$59:;
		int32 vr$28 = SYMBISSTRING( *(int32*)((uint8*)DEV_NAME$1 + 4) & 511 );
		if( vr$28 == 0 ) goto label$62;
		{
			int32 vr$29 = HMATCH( 44, 0 );
			if( vr$29 == 0 ) goto label$64;
			{
				struct $7ASTNODE* vr$30 = HMATCHEXPR( 8 );
				WIDTH_ARG$1 = vr$30;
				if( WIDTH_ARG$1 != (struct $7ASTNODE*)0u ) goto label$66;
				{
					goto label$35;
				}
				label$66:;
				label$65:;
			}
			goto label$63;
			label$64:;
			{
				struct $7ASTNODE* vr$31 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
				WIDTH_ARG$1 = vr$31;
			}
			label$63:;
			struct $7ASTNODE* vr$32 = RTLWIDTHDEV( DEV_NAME$1, WIDTH_ARG$1, ISFUNC$1 );
			fb$result$1 = vr$32;
		}
		goto label$61;
		label$62:;
		{
			WIDTH_ARG$1 = DEV_NAME$1;
			DEV_NAME$1 = (struct $7ASTNODE*)0u;
			int32 vr$33 = HMATCH( 44, 0 );
			if( vr$33 == 0 ) goto label$68;
			{
				struct $7ASTNODE* vr$34 = HMATCHEXPR( 8 );
				HEIGHT_ARG$1 = vr$34;
				if( HEIGHT_ARG$1 != (struct $7ASTNODE*)0u ) goto label$70;
				{
					goto label$35;
				}
				label$70:;
				label$69:;
			}
			goto label$67;
			label$68:;
			{
				struct $7ASTNODE* vr$35 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
				HEIGHT_ARG$1 = vr$35;
			}
			label$67:;
			struct $7ASTNODE* vr$36 = RTLWIDTHSCREEN( WIDTH_ARG$1, HEIGHT_ARG$1, ISFUNC$1 );
			fb$result$1 = vr$36;
		}
		label$61:;
	}
	label$43:;
	if( CHECKRPRNT$1 == 0 ) goto label$72;
	{
		int32 vr$37 = LEXGETTOKEN( 0 );
		if( vr$37 == 41 ) goto label$74;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$73;
		label$74:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$73:;
	}
	label$72:;
	label$71:;
	label$35:;
	return fb$result$1;
}

struct $7ASTNODE* CCOLORSTMT( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$75:;
	struct $7ASTNODE* FORE_COLOR$1;
	__builtin_memset( &FORE_COLOR$1, 0, 4 );
	struct $7ASTNODE* BACK_COLOR$1;
	BACK_COLOR$1 = (struct $7ASTNODE*)0u;
	fb$result$1 = (struct $7ASTNODE*)0u;
	LEXSKIPTOKEN( 2048 );
	if( ISFUNC$1 == 0 ) goto label$78;
	{
		int32 vr$2 = HMATCH( 40, 0 );
		if( vr$2 != -1 ) goto label$80;
		{
			struct $7ASTNODE* vr$3 = CEXPRESSION(  );
			FORE_COLOR$1 = vr$3;
			int32 vr$4 = HMATCH( 44, 0 );
			if( vr$4 != -1 ) goto label$82;
			{
				struct $7ASTNODE* vr$5 = HMATCHEXPR( -1 );
				BACK_COLOR$1 = vr$5;
				if( BACK_COLOR$1 != (struct $7ASTNODE*)0u ) goto label$84;
				{
					goto label$76;
				}
				label$84:;
				label$83:;
			}
			label$82:;
			label$81:;
			int32 vr$6 = LEXGETTOKEN( 0 );
			if( vr$6 == 41 ) goto label$86;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$85;
			label$86:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$85:;
		}
		label$80:;
		label$79:;
	}
	goto label$77;
	label$78:;
	{
		int32 vr$7 = HMATCH( 40, 0 );
		if( vr$7 != -1 ) goto label$88;
		{
			struct $7ASTNODE* vr$8 = CEXPRESSION(  );
			FORE_COLOR$1 = vr$8;
			int32 vr$9 = HMATCH( 44, 0 );
			if( vr$9 != -1 ) goto label$90;
			{
				struct $7ASTNODE* vr$10 = HMATCHEXPR( -1 );
				BACK_COLOR$1 = vr$10;
				if( BACK_COLOR$1 != (struct $7ASTNODE*)0u ) goto label$92;
				{
					goto label$76;
				}
				label$92:;
				label$91:;
				int32 vr$11 = LEXGETTOKEN( 0 );
				if( vr$11 == 41 ) goto label$94;
				{
					ERRREPORT( 7, 0, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				goto label$93;
				label$94:;
				{
					LEXSKIPTOKEN( 0 );
				}
				label$93:;
			}
			goto label$89;
			label$90:;
			{
				int32 vr$12 = LEXGETTOKEN( 0 );
				if( vr$12 == 41 ) goto label$96;
				{
					ERRREPORT( 7, 0, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				goto label$95;
				label$96:;
				{
					LEXSKIPTOKEN( 0 );
				}
				label$95:;
				int32 vr$13 = HMATCH( 44, 0 );
				if( vr$13 != -1 ) goto label$98;
				{
					struct $7ASTNODE* vr$14 = HMATCHEXPR( -1 );
					BACK_COLOR$1 = vr$14;
					if( BACK_COLOR$1 != (struct $7ASTNODE*)0u ) goto label$100;
					{
						goto label$76;
					}
					label$100:;
					label$99:;
				}
				label$98:;
				label$97:;
			}
			label$89:;
		}
		goto label$87;
		label$88:;
		{
			struct $7ASTNODE* vr$15 = CEXPRESSION(  );
			FORE_COLOR$1 = vr$15;
			int32 vr$16 = HMATCH( 44, 0 );
			if( vr$16 != -1 ) goto label$102;
			{
				struct $7ASTNODE* vr$17 = HMATCHEXPR( -1 );
				BACK_COLOR$1 = vr$17;
				if( BACK_COLOR$1 != (struct $7ASTNODE*)0u ) goto label$104;
				{
					goto label$76;
				}
				label$104:;
				label$103:;
			}
			label$102:;
			label$101:;
		}
		label$87:;
	}
	label$77:;
	struct $7ASTNODE* vr$18 = RTLCOLOR( FORE_COLOR$1, BACK_COLOR$1, ISFUNC$1 );
	fb$result$1 = vr$18;
	label$76:;
	return fb$result$1;
}

struct $7ASTNODE* CSCREENFUNCT( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$105:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	LEXSKIPTOKEN( 2048 );
	int32 MATCH_PAREN$1;
	MATCH_PAREN$1 = 0;
	struct $7ASTNODE* YEXPR$1;
	YEXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 40 ) goto label$108;
	{
		LEXSKIPTOKEN( 0 );
		MATCH_PAREN$1 = -1;
		struct $7ASTNODE* vr$2 = CEXPRESSION(  );
		YEXPR$1 = vr$2;
	}
	label$108:;
	label$107:;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$110;
	{
		struct $7ASTNODE* vr$3 = RTLPAGESET( (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u, -1 );
		fb$result$1 = vr$3;
	}
	goto label$109;
	label$110:;
	{
		struct $7ASTNODE* XEXPR$2;
		__builtin_memset( &XEXPR$2, 0, 4 );
		struct $7ASTNODE* FEXPR$2;
		__builtin_memset( &FEXPR$2, 0, 4 );
		int32 vr$6 = LEXGETTOKEN( 0 );
		if( vr$6 == 44 ) goto label$112;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$111;
		label$112:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$111:;
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8 );
		XEXPR$2 = vr$7;
		if( XEXPR$2 != (struct $7ASTNODE*)0u ) goto label$114;
		{
			goto label$106;
		}
		label$114:;
		label$113:;
		FEXPR$2 = (struct $7ASTNODE*)0u;
		int32 vr$8 = HMATCH( 44, 0 );
		if( vr$8 == 0 ) goto label$116;
		{
			struct $7ASTNODE* vr$9 = HMATCHEXPR( 8 );
			FEXPR$2 = vr$9;
			if( FEXPR$2 != (struct $7ASTNODE*)0u ) goto label$118;
			{
				goto label$106;
			}
			label$118:;
			label$117:;
		}
		label$116:;
		label$115:;
		struct $7ASTNODE* vr$10 = RTLCONSOLEREADXY( YEXPR$1, XEXPR$2, FEXPR$2 );
		fb$result$1 = vr$10;
	}
	label$109:;
	if( MATCH_PAREN$1 == 0 ) goto label$120;
	{
		int32 vr$11 = LEXGETTOKEN( 0 );
		if( vr$11 == 41 ) goto label$122;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$121;
		label$122:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$121:;
	}
	label$120:;
	label$119:;
	label$106:;
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
