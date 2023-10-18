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
typedef int32 $9FB_ERRMSG;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astzhelper( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRPUSHPARAMLOCATION( struct $8FBSYMBOL*, int32, int32, uint8* );
void ERRPOPPARAMLOCATION( void );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDBRANCH( struct $7ASTNODE*, struct $8FBSYMBOL*, int32, int32 );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWSELFBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
void ASTREPLACEINSTANCEARG( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBRANCH( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTNEWMEM( int32, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTBUILDPTRCHK( struct $7ASTNODE* );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int32, struct $8FBSYMBOL*, int32, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIADDPAD( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINIADDCTORLIST( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLll( struct $8FBSYMBOL*, int32, int32 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTBUILDFAKEWSTRINGACCESS( struct $8FBSYMBOL* );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_( struct $7ASTNODE*, struct $7ASTNODE*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE*, int64, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDVTABLELOOKUP( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDDTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTCALLCTORTOCALL( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDIMPLICITCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, int32* );
void ASTDTORLISTDEL( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDBYREFRESULTDEREF( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int32 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
void SYMBDELSYMBOL( struct $8FBSYMBOL*, int32 );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
int32 SYMBHASDTOR( struct $8FBSYMBOL* );
int32 TYPEHASDTOR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRDELETE( struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRALLOC( struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRLEN( struct $7ASTNODE* );
struct $7ASTNODE* RTLARRAYERASE( struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* RTLARRAYBOUND( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static struct $7ASTNODE* ASTFAKEINSTPTR( struct $8FBSYMBOL* );
static struct $7ASTNODE* HCONSTBOUND( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 8 );
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
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 12 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 8 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int32 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 348 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 40 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 4 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 8 );
struct $7SYMBCTX {
	int32 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int32 CHAINPOOLHEAD;
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
	int32 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int32 FBARRAY_DATA;
	int32 FBARRAY_PTR;
	int32 FBARRAY_SIZE;
	int32 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int32 FBARRAYDIM_LBOUND;
	int32 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 99648 );
extern struct $7SYMBCTX SYMB$;
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

struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLll( struct $8FBSYMBOL* LHS$1, int32 RHS$1, int32 OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* vr$2 = ASTNEWCONSTI( (int64)RHS$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$3 = ASTNEWVAR( LHS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$4 = ASTNEWASSIGN( vr$3, vr$2, OPTIONS$1 );
	fb$result$1 = vr$4;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL* LHS$1, struct $7ASTNODE* RHS$1, int32 OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$12:;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( LHS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$2 = ASTNEWASSIGN( vr$1, RHS$1, OPTIONS$1 );
	fb$result$1 = vr$2;
	label$13:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDFAKEWSTRINGACCESS( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$2 = ASTNEWDEREF( vr$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	fb$result$1 = vr$2;
	label$15:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDFAKEWSTRINGASSIGN( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* EXPR$1, int32 OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	struct $7ASTNODE* T$1;
	T$1 = (struct $7ASTNODE*)0u;
	int32 vr$1 = ASTHASSIDEFX( EXPR$1 );
	if( vr$1 == 0 ) goto label$19;
	{
		struct $7ASTNODE* vr$3 = ASTREMSIDEFX( &EXPR$1 );
		struct $7ASTNODE* vr$4 = ASTNEWLINK( T$1, vr$3, 2 );
		T$1 = vr$4;
	}
	label$19:;
	label$18:;
	struct $7ASTNODE* vr$5 = ASTCLONETREE( EXPR$1 );
	struct $7ASTNODE* vr$6 = RTLWSTRLEN( vr$5 );
	struct $7ASTNODE* vr$7 = RTLWSTRALLOC( vr$6 );
	struct $7ASTNODE* vr$8 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( SYM$1, vr$7, OPTIONS$1 );
	struct $7ASTNODE* vr$9 = ASTNEWLINK( T$1, vr$8, 0 );
	T$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTBUILDFAKEWSTRINGACCESS( SYM$1 );
	struct $7ASTNODE* vr$11 = ASTNEWASSIGN( vr$10, EXPR$1, OPTIONS$1 );
	struct $7ASTNODE* vr$12 = ASTNEWLINK( T$1, vr$11, 2 );
	T$1 = vr$12;
	fb$result$1 = T$1;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL* LHS$1, int32 RHS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	$9AST_OPOPT OPTIONS$1;
	$6AST_OP OP$1;
	OPTIONS$1 = 1;
	if( ((*(int32*)((uint8*)LHS$1 + 28) & 511) & 480) == 0 ) goto label$23;
	{
		OPTIONS$1 = OPTIONS$1 | 2;
	}
	label$23:;
	label$22:;
	if( RHS$1 <= 0 ) goto label$25;
	{
		OP$1 = 1;
	}
	goto label$24;
	label$25:;
	{
		OP$1 = 2;
		RHS$1 = -RHS$1;
	}
	label$24:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( (int64)RHS$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$8 = ASTNEWVAR( LHS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$9 = ASTNEWSELFBOP( OP$1, vr$8, vr$7, (struct $8FBSYMBOL*)0u, OPTIONS$1 );
	fb$result$1 = vr$9;
	label$21:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDVARDEREF( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$26:;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$2 = ASTNEWDEREF( vr$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	fb$result$1 = vr$2;
	label$27:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDVARADDROF( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$28:;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$2 = ASTNEWADDROF( vr$1 );
	fb$result$1 = vr$2;
	label$29:;
	return fb$result$1;
}

struct $7ASTNODE* _Z19ASTBUILDVARDTORCALLP7ASTNODE( struct $7ASTNODE* VAREXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	if( (*(int32*)((uint8*)VAREXPR$1 + 4) & 511) != 17 ) goto label$33;
	{
		struct $7ASTNODE* vr$3 = RTLSTRDELETE( VAREXPR$1 );
		fb$result$1 = vr$3;
	}
	goto label$32;
	label$33:;
	int32 vr$6 = TYPEHASDTOR( *(int32*)((uint8*)VAREXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8) );
	if( vr$6 == 0 ) goto label$34;
	{
		struct $7ASTNODE* vr$8 = ASTBUILDDTORCALL( *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8), VAREXPR$1, 0 );
		fb$result$1 = vr$8;
	}
	label$34:;
	label$32:;
	label$31:;
	return fb$result$1;
}

struct $7ASTNODE* _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( struct $8FBSYMBOL* S$1, int32 CHECK_ACCESS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$35:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)S$1 + 64) == 0 ) goto label$38;
	{
		struct $7ASTNODE* vr$5 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$6 = RTLARRAYERASE( vr$5, -((*(int32*)((uint8*)S$1 + 4) & 4) != 0), CHECK_ACCESS$1 );
		fb$result$1 = vr$6;
	}
	goto label$37;
	label$38:;
	{
		{
			int32 TMP$92$3;
			TMP$92$3 = *(int32*)((uint8*)S$1 + 28) & 511;
			if( TMP$92$3 != 17 ) goto label$40;
			label$41:;
			{
				struct $7ASTNODE* vr$9 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$10 = RTLSTRDELETE( vr$9 );
				fb$result$1 = vr$10;
			}
			goto label$39;
			label$40:;
			if( TMP$92$3 != 39 ) goto label$42;
			label$43:;
			{
				struct $7ASTNODE* vr$11 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$12 = RTLSTRDELETE( vr$11 );
				fb$result$1 = vr$12;
			}
			goto label$39;
			label$42:;
			{
				int32 vr$13 = SYMBHASDTOR( S$1 );
				if( vr$13 == 0 ) goto label$46;
				{
					if( CHECK_ACCESS$1 == 0 ) goto label$48;
					{
						struct $8FBSYMBOL* vr$15 = SYMBGETCOMPDTOR1( *(struct $8FBSYMBOL**)((uint8*)S$1 + 32) );
						int32 vr$16 = SYMBCHECKACCESS( vr$15 );
						if( vr$16 != 0 ) goto label$50;
						{
							ERRREPORT( 206, 0, (uint8*)0u );
						}
						label$50:;
						label$49:;
					}
					label$48:;
					label$47:;
					struct $7ASTNODE* vr$17 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
					struct $7ASTNODE* vr$19 = ASTBUILDDTORCALL( *(struct $8FBSYMBOL**)((uint8*)S$1 + 32), vr$17, 0 );
					fb$result$1 = vr$19;
				}
				label$46:;
				label$45:;
			}
			label$44:;
			label$39:;
		}
	}
	label$37:;
	label$36:;
	return fb$result$1;
}

struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_( struct $7ASTNODE* N$1, struct $7ASTNODE* OFFSETEXPR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* MAYBEAFIELD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$51:;
	struct $7ASTNODE* vr$1 = ASTNEWADDROF( N$1 );
	N$1 = vr$1;
	if( OFFSETEXPR$1 == (struct $7ASTNODE*)0u ) goto label$54;
	{
		struct $7ASTNODE* vr$2 = ASTNEWBOP( 28, N$1, OFFSETEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
		N$1 = vr$2;
	}
	label$54:;
	label$53:;
	struct $7ASTNODE* vr$12 = ASTNEWCONV( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1, N$1, 24, (int32*)0u );
	N$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWDEREF( N$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	N$1 = vr$13;
	if( MAYBEAFIELD$1 == (struct $8FBSYMBOL*)0u ) goto label$56;
	{
		if( *(int32*)MAYBEAFIELD$1 != 12 ) goto label$58;
		{
			struct $7ASTNODE* vr$15 = ASTNEWFIELD( N$1, MAYBEAFIELD$1 );
			N$1 = vr$15;
		}
		label$58:;
		label$57:;
	}
	label$56:;
	label$55:;
	fb$result$1 = N$1;
	label$52:;
	return fb$result$1;
}

struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE* N$1, int64 OFFSET$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* MAYBEAFIELD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$59:;
	struct $7ASTNODE* OFFSETEXPR$1;
	if( OFFSET$1 != 0ll ) goto label$62;
	{
		OFFSETEXPR$1 = (struct $7ASTNODE*)0u;
	}
	goto label$61;
	label$62:;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( OFFSET$1, 8, (struct $8FBSYMBOL*)0u );
		OFFSETEXPR$1 = vr$1;
	}
	label$61:;
	struct $7ASTNODE* vr$2 = _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_( N$1, OFFSETEXPR$1, DTYPE$1, SUBTYPE$1, MAYBEAFIELD$1 );
	fb$result$1 = vr$2;
	label$60:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* FLD$1, int64 OFFSET$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$63:;
	struct $7ASTNODE* N$1;
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 65536) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 512) != 0)) == 0 ) goto label$66;
	{
		struct $7ASTNODE* vr$22 = ASTNEWVAR( SYM$1, 0ll, (((*(int32*)((uint8*)SYM$1 + 28) & 31) | ((*(int32*)((uint8*)SYM$1 + 28) & 480) + 32)) | ((*(int32*)((uint8*)SYM$1 + 28) & 261632) << (1 & 31))) | (*(int32*)((uint8*)SYM$1 + 28) & 32505856), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
		struct $7ASTNODE* vr$23 = ASTNEWDEREF( vr$22, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
		N$1 = vr$23;
	}
	goto label$65;
	label$66:;
	{
		struct $7ASTNODE* vr$24 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		N$1 = vr$24;
	}
	label$65:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$68;
	{
		OFFSET$1 = OFFSET$1 + *(int64*)((uint8*)FLD$1 + 48);
		struct $7ASTNODE* vr$29 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( N$1, OFFSET$1, *(int32*)((uint8*)FLD$1 + 28), *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32), FLD$1 );
		N$1 = vr$29;
	}
	goto label$67;
	label$68:;
	{
		struct $7ASTNODE* vr$32 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( N$1, OFFSET$1, *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), (struct $8FBSYMBOL*)0u );
		N$1 = vr$32;
	}
	label$67:;
	fb$result$1 = N$1;
	label$64:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDTEMPVARCLEAR( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$69:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$72;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$70;
	}
	label$72:;
	label$71:;
	struct $7ASTNODE* vr$4 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 40), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$5 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$6 = ASTNEWMEM( 107, vr$5, vr$4, 0ll );
	fb$result$1 = vr$6;
	label$70:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDWHILECOUNTERBEGIN( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* CNT$1, struct $8FBSYMBOL* LABEL$1, struct $8FBSYMBOL* EXITLABEL$1, struct $7ASTNODE* INITEXPR$1, int32 FLUSH_LABEL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$73:;
	struct $7ASTNODE* vr$1 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( CNT$1, INITEXPR$1, 0 );
	struct $7ASTNODE* vr$2 = ASTNEWLINK( TREE$1, vr$1, 0 );
	TREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWLABEL( LABEL$1, FLUSH_LABEL$1 );
	struct $7ASTNODE* vr$4 = ASTNEWLINK( TREE$1, vr$3, 0 );
	TREE$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$6 = ASTNEWVAR( CNT$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$7 = ASTNEWBOP( 45, vr$6, vr$5, (struct $8FBSYMBOL*)0u, 1 );
	struct $7ASTNODE* vr$8 = ASTBUILDBRANCH( vr$7, EXITLABEL$1, -1, 0 );
	struct $7ASTNODE* vr$9 = ASTNEWLINK( TREE$1, vr$8, 0 );
	TREE$1 = vr$9;
	fb$result$1 = TREE$1;
	label$74:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDWHILECOUNTEREND( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* CNT$1, struct $8FBSYMBOL* LABEL$1, struct $8FBSYMBOL* EXITLABEL$1, int32 FLUSH_LABEL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$75:;
	struct $7ASTNODE* vr$1 = ASTBUILDVARINC( CNT$1, -1 );
	struct $7ASTNODE* vr$2 = ASTNEWLINK( TREE$1, vr$1, 0 );
	TREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWBRANCH( 98, LABEL$1, (struct $7ASTNODE*)0u );
	struct $7ASTNODE* vr$4 = ASTNEWLINK( TREE$1, vr$3, 0 );
	TREE$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWLABEL( EXITLABEL$1, FLUSH_LABEL$1 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( TREE$1, vr$5, 0 );
	TREE$1 = vr$6;
	fb$result$1 = TREE$1;
	label$76:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDFORBEGIN( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* CNT$1, struct $8FBSYMBOL* LABEL$1, int32 INIVALUE$1, int32 FLUSH_LABEL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$77:;
	struct $7ASTNODE* vr$1 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLll( CNT$1, INIVALUE$1, 0 );
	struct $7ASTNODE* vr$2 = ASTNEWLINK( TREE$1, vr$1, 0 );
	TREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWLABEL( LABEL$1, FLUSH_LABEL$1 );
	struct $7ASTNODE* vr$4 = ASTNEWLINK( TREE$1, vr$3, 0 );
	TREE$1 = vr$4;
	fb$result$1 = TREE$1;
	label$78:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDFOREND( struct $7ASTNODE* TREE$1, struct $8FBSYMBOL* CNT$1, struct $8FBSYMBOL* LABEL$1, struct $7ASTNODE* ENDVALUE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$79:;
	struct $7ASTNODE* vr$1 = ASTBUILDVARINC( CNT$1, 1 );
	struct $7ASTNODE* vr$2 = ASTNEWLINK( TREE$1, vr$1, 0 );
	TREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWVAR( CNT$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$4 = ASTNEWBOP( 45, vr$3, ENDVALUE$1, (struct $8FBSYMBOL*)0u, 1 );
	struct $7ASTNODE* vr$5 = ASTBUILDBRANCH( vr$4, LABEL$1, 0, 0 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( TREE$1, vr$5, 0 );
	TREE$1 = vr$6;
	fb$result$1 = TREE$1;
	label$80:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDVTABLELOOKUP( struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* THISEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$81:;
	struct $7ASTNODE* P$1;
	int32 VTABLEINDEX$1;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 256) == 0 ) goto label$84;
	{
		int32 vr$3 = SYMBPROCGETVTABLEINDEX( PROC$1 );
		VTABLEINDEX$1 = vr$3;
		struct $7ASTNODE* vr$4 = ASTCLONETREE( THISEXPR$1 );
		P$1 = vr$4;
		struct $7ASTNODE* vr$5 = ASTNEWADDROF( P$1 );
		P$1 = vr$5;
		struct $7ASTNODE* vr$6 = ASTNEWCONV( 96, (struct $8FBSYMBOL*)0u, P$1, 8, (int32*)0u );
		P$1 = vr$6;
		struct $7ASTNODE* vr$7 = ASTNEWDEREF( P$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
		P$1 = vr$7;
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)(VTABLEINDEX$1 + -2), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$11 = ASTNEWBOP( 28, P$1, vr$10, (struct $8FBSYMBOL*)0u, 7 );
		P$1 = vr$11;
		struct $7ASTNODE* vr$12 = ASTNEWDEREF( P$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
		P$1 = vr$12;
		struct $8FBSYMBOL* vr$13 = SYMBADDPROCPTRFROMFUNCTION( PROC$1 );
		struct $7ASTNODE* vr$14 = ASTNEWCONV( 54, vr$13, P$1, 0, (int32*)0u );
		P$1 = vr$14;
		if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$86;
		{
			if( (*(int32*)((uint8*)PROC$1 + 8) & 512) == 0 ) goto label$88;
			{
				struct $7ASTNODE* vr$17 = ASTBUILDPTRCHK( P$1 );
				P$1 = vr$17;
			}
			label$88:;
			label$87:;
		}
		label$86:;
		label$85:;
	}
	goto label$83;
	label$84:;
	{
		P$1 = (struct $7ASTNODE*)0u;
	}
	label$83:;
	fb$result$1 = P$1;
	label$82:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* ARG1$1, struct $7ASTNODE* ARG2$1, struct $7ASTNODE* ARG3$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$89:;
	struct $7ASTNODE* P$1;
	struct $7ASTNODE* PTREXPR$1;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 256) == 0 ) goto label$92;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDVTABLELOOKUP( PROC$1, ARG1$1 );
		PTREXPR$1 = vr$3;
	}
	goto label$91;
	label$92:;
	{
		PTREXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$91:;
	struct $7ASTNODE* vr$4 = ASTNEWCALL( PROC$1, PTREXPR$1 );
	P$1 = vr$4;
	if( ARG1$1 == (struct $7ASTNODE*)0u ) goto label$94;
	{
		struct $7ASTNODE* vr$5 = ASTNEWARG( P$1, ARG1$1, -2147483648u, -1 );
		if( vr$5 != (struct $7ASTNODE*)0u ) goto label$96;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$90;
		}
		label$96:;
		label$95:;
	}
	label$94:;
	label$93:;
	if( ARG2$1 == (struct $7ASTNODE*)0u ) goto label$98;
	{
		struct $7ASTNODE* vr$6 = ASTNEWARG( P$1, ARG2$1, -2147483648u, -1 );
		if( vr$6 != (struct $7ASTNODE*)0u ) goto label$100;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$90;
		}
		label$100:;
		label$99:;
	}
	label$98:;
	label$97:;
	if( ARG3$1 == (struct $7ASTNODE*)0u ) goto label$102;
	{
		struct $7ASTNODE* vr$7 = ASTNEWARG( P$1, ARG3$1, -2147483648u, -1 );
		if( vr$7 != (struct $7ASTNODE*)0u ) goto label$104;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$90;
		}
		label$104:;
		label$103:;
	}
	label$102:;
	label$101:;
	struct $7ASTNODE* vr$8 = ASTBUILDBYREFRESULTDEREF( P$1 );
	P$1 = vr$8;
	fb$result$1 = P$1;
	label$90:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* THISEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$105:;
	struct $8FBSYMBOL* CTOR$1;
	struct $7ASTNODE* PROC$1;
	int32 PARAMS$1;
	struct $8FBSYMBOL* vr$1 = SYMBGETCOMPDEFCTOR( SYM$1 );
	CTOR$1 = vr$1;
	if( CTOR$1 != (struct $8FBSYMBOL*)0u ) goto label$108;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$106;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$2 = ASTNEWCALL( CTOR$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	ASTNEWARG( PROC$1, THISEXPR$1, -2147483648u, -1 );
	PARAMS$1 = (int32)*(int16*)((uint8*)CTOR$1 + 68) + -1;
	label$109:;
	if( PARAMS$1 <= 0 ) goto label$110;
	{
		ASTNEWARG( PROC$1, (struct $7ASTNODE*)0u, -2147483648u, -1 );
		PARAMS$1 = PARAMS$1 + -1;
	}
	goto label$109;
	label$110:;
	fb$result$1 = PROC$1;
	label$106:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDDTORCALL( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* THISEXPR$1, int32 IGNORE_VIRTUAL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$111:;
	struct $8FBSYMBOL* DTOR$1;
	struct $7ASTNODE* CALLEXPR$1;
	struct $8FBSYMBOL* vr$1 = SYMBGETCOMPDTOR1( SYM$1 );
	DTOR$1 = vr$1;
	if( IGNORE_VIRTUAL$1 == 0 ) goto label$114;
	{
		struct $7ASTNODE* vr$2 = ASTNEWCALL( DTOR$1, (struct $7ASTNODE*)0u );
		CALLEXPR$1 = vr$2;
	}
	goto label$113;
	label$114:;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDVTABLELOOKUP( DTOR$1, THISEXPR$1 );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( DTOR$1, vr$3 );
		CALLEXPR$1 = vr$4;
	}
	label$113:;
	ASTNEWARG( CALLEXPR$1, THISEXPR$1, -2147483648u, -1 );
	fb$result$1 = CALLEXPR$1;
	label$112:;
	return fb$result$1;
}

struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE* PROCEXPR$1, struct $7ASTNODE* THISEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$117:;
	ASTREPLACEINSTANCEARG( PROCEXPR$1, THISEXPR$1, -1 );
	fb$result$1 = PROCEXPR$1;
	label$118:;
	return fb$result$1;
}

struct $7ASTNODE* ASTCALLCTORTOCALL( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$119:;
	struct $8FBSYMBOL* SYM$1;
	struct $7ASTNODE* PROCEXPR$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 68) + 12);
	PROCEXPR$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	struct $7ASTNODE* vr$5 = ASTFAKEINSTPTR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
	ASTREPLACEINSTANCEARG( PROCEXPR$1, vr$5, 1 );
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	ASTDTORLISTDEL( SYM$1 );
	SYMBDELSYMBOL( SYM$1, 0 );
	ASTDELNODE( N$1 );
	fb$result$1 = PROCEXPR$1;
	label$120:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDIMPLICITCTORCALL( struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1, $12FB_PARAMMODE ARG_MODE$1, int32* IS_CTORCALL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$121:;
	int32 ERR_NUM$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* vr$2 = SYMBFINDCTOROVLPROC( SUBTYPE$1, EXPR$1, ARG_MODE$1, ($9FB_ERRMSG*)&ERR_NUM$1, 0 );
	PROC$1 = vr$2;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$124;
	{
		*IS_CTORCALL$1 = 0;
		if( ERR_NUM$1 == 0 ) goto label$126;
		{
			struct $8FBSYMBOL* vr$4 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
			ERRREPORTPARAM( vr$4, 0, (uint8*)0u, ERR_NUM$1 );
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$122;
		}
		label$126:;
		label$125:;
		fb$result$1 = EXPR$1;
		goto label$122;
	}
	label$124:;
	label$123:;
	int32 vr$5 = SYMBCHECKACCESS( PROC$1 );
	if( vr$5 != 0 ) goto label$128;
	{
		ERRREPORT( 205, 0, (uint8*)0u );
	}
	label$128:;
	label$127:;
	struct $7ASTNODE* PROCEXPR$1;
	struct $7ASTNODE* vr$6 = ASTNEWCALL( PROC$1, (struct $7ASTNODE*)0u );
	PROCEXPR$1 = vr$6;
	struct $7ASTNODE* vr$7 = ASTFAKEINSTPTR( SUBTYPE$1 );
	ASTNEWARG( PROCEXPR$1, vr$7, -2147483648u, 1 );
	ASTNEWARG( PROCEXPR$1, EXPR$1, -2147483648u, ARG_MODE$1 );
	int32 PARAMS$1;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68) + -2;
	label$129:;
	if( PARAMS$1 <= 0 ) goto label$130;
	{
		ASTNEWARG( PROCEXPR$1, (struct $7ASTNODE*)0u, -2147483648u, -1 );
		PARAMS$1 = PARAMS$1 + -1;
	}
	goto label$129;
	label$130:;
	*IS_CTORCALL$1 = -1;
	fb$result$1 = PROCEXPR$1;
	label$122:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDIMPLICITCTORCALLEX( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* EXPR$1, $12FB_PARAMMODE ARG_MODE$1, int32* IS_CTORCALL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$131:;
	struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
	if( *(int32*)EXPR$1 != 10 ) goto label$134;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) != SUBTYPE$1 ) goto label$136;
		{
			*IS_CTORCALL$1 = -1;
			struct $7ASTNODE* vr$5 = ASTCALLCTORTOCALL( EXPR$1 );
			fb$result$1 = vr$5;
			goto label$132;
		}
		label$136:;
		label$135:;
	}
	label$134:;
	label$133:;
	struct $7ASTNODE* vr$6 = ASTBUILDIMPLICITCTORCALL( SUBTYPE$1, EXPR$1, ARG_MODE$1, IS_CTORCALL$1 );
	fb$result$1 = vr$6;
	label$132:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$137:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = *(int32*)((uint8*)PROC$1 + 12) | 2;
	struct $7ASTNODE* vr$4 = ASTNEWVAR( PROC$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$5 = ASTNEWADDROF( vr$4 );
	fb$result$1 = vr$5;
	label$138:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDPROCRESULTVAR( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* RES$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	int32 vr$1 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$1 == 0 ) goto label$142;
	{
		struct $7ASTNODE* vr$3 = ASTNEWVAR( RES$1, 0ll, 52, *(struct $8FBSYMBOL**)((uint8*)RES$1 + 32) );
		struct $7ASTNODE* vr$4 = ASTNEWDEREF( vr$3, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
		fb$result$1 = vr$4;
	}
	goto label$141;
	label$142:;
	{
		struct $7ASTNODE* vr$5 = ASTNEWVAR( RES$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$5;
	}
	label$141:;
	label$140:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDTYPEINICTORLIST( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$143:;
	struct $7ASTNODE* TREE$1;
	__builtin_memset( &TREE$1, 0, 4 );
	struct $7ASTNODE* vr$4 = ASTTYPEINIBEGIN( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), -1, 0ll );
	TREE$1 = vr$4;
	ASTTYPEINIADDCTORLIST( TREE$1, SYM$1, *(int64*)((uint8*)SYM$1 + 80), -2147483648u, (struct $8FBSYMBOL*)0u );
	ASTTYPEINIEND( TREE$1, -1 );
	fb$result$1 = TREE$1;
	label$144:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDMULTIDEREF( int32 CNT$1, struct $7ASTNODE* EXPR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$145:;
	label$147:;
	if( CNT$1 <= 0 ) goto label$148;
	{
		if( (DTYPE$1 & 480) != 0 ) goto label$150;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99432) != (struct $8FBSYMBOL*)0u ) goto label$152;
			{
				ERRREPORT( 28, -1, (uint8*)0u );
				goto label$148;
			}
			label$152:;
			label$151:;
			struct $8FBSYMBOL* PROC$3;
			$9FB_ERRMSG ERR_NUM$3;
			struct $8FBSYMBOL* vr$3 = SYMBFINDUOPOVLPROC( 76, EXPR$1, &ERR_NUM$3 );
			PROC$3 = vr$3;
			if( PROC$3 == (struct $8FBSYMBOL*)0u ) goto label$154;
			{
				struct $7ASTNODE* vr$4 = ASTBUILDCALL( PROC$3, EXPR$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
				EXPR$1 = vr$4;
				if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$156;
				{
					fb$result$1 = (struct $7ASTNODE*)0u;
					goto label$146;
				}
				label$156:;
				label$155:;
				DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
			}
			goto label$153;
			label$154:;
			{
				ERRREPORT( 28, -1, (uint8*)0u );
				goto label$148;
			}
			label$153:;
		}
		goto label$149;
		label$150:;
		{
			DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856);
			{
				int32 TMP$93$4;
				int32 TMP$94$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$157;
				TMP$93$4 = 24;
				goto label$166;
				label$157:;
				TMP$93$4 = DTYPE$1 & 31;
				label$166:;
				TMP$94$4 = TMP$93$4;
				if( TMP$94$4 == 0 ) goto label$160;
				label$161:;
				if( TMP$94$4 != 23 ) goto label$159;
				label$160:;
				{
					ERRREPORT( 71, -1, (uint8*)0u );
					DTYPE$1 = 2;
				}
				goto label$158;
				label$159:;
				if( TMP$94$4 != 22 ) goto label$162;
				label$163:;
				{
					ERRREPORT( 20, -1, (uint8*)0u );
					DTYPE$1 = 2;
				}
				label$162:;
				label$158:;
			}
			if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$165;
			{
				struct $7ASTNODE* vr$19 = ASTBUILDPTRCHK( EXPR$1 );
				EXPR$1 = vr$19;
			}
			label$165:;
			label$164:;
			struct $7ASTNODE* vr$20 = ASTNEWDEREF( EXPR$1, DTYPE$1, SUBTYPE$1, 0ll );
			EXPR$1 = vr$20;
		}
		label$149:;
		CNT$1 = CNT$1 + -1;
	}
	goto label$147;
	label$148:;
	fb$result$1 = EXPR$1;
	label$146:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDARRAYDESCINITREE( struct $8FBSYMBOL* DESC$1, struct $8FBSYMBOL* ARRAY$1, struct $7ASTNODE* ARRAY_EXPR$1 )
{
	int64 TMP$95$1;
	int64 TMP$96$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$167:;
	struct $7ASTNODE* TREE$1;
	int32 DTYPE$1;
	int32 DIMENSIONS$1;
	int32 MAX_DIMENSIONS$1;
	int32 FLAGS$1;
	FLAGS$1 = 0;
	struct $8FBSYMBOL* ELM$1;
	struct $8FBSYMBOL* DIMTB$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( (-((*(int32*)((uint8*)ARRAY$1 + 4) & 8) != 0) | -((*(int32*)((uint8*)ARRAY$1 + 4) & 16) != 0)) == 0 ) goto label$170;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$168;
	}
	label$170:;
	label$169:;
	struct $7ASTNODE* vr$13 = ASTTYPEINIBEGIN( *(int32*)((uint8*)DESC$1 + 28), *(struct $8FBSYMBOL**)((uint8*)DESC$1 + 32), -(*(int32*)DESC$1 != 12), *(int64*)((uint8*)DESC$1 + 48) );
	TREE$1 = vr$13;
	DTYPE$1 = *(int32*)((uint8*)ARRAY$1 + 28);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAY$1 + 32);
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DESC$1 + 32) + 60);
	if( (*(int32*)((uint8*)ARRAY$1 + 4) & 4) == 0 ) goto label$172;
	{
		struct $7ASTNODE* vr$29 = ASTNEWCONSTI( 0ll, (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1 );
		ARRAY_EXPR$1 = vr$29;
	}
	goto label$171;
	label$172:;
	{
		if( ARRAY_EXPR$1 == (struct $7ASTNODE*)0u ) goto label$174;
		{
		}
		goto label$173;
		label$174:;
		{
			struct $7ASTNODE* vr$30 = ASTNEWVAR( ARRAY$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			ARRAY_EXPR$1 = vr$30;
		}
		label$173:;
		struct $7ASTNODE* vr$31 = ASTNEWADDROF( ARRAY_EXPR$1 );
		ARRAY_EXPR$1 = vr$31;
		FLAGS$1 = FLAGS$1 | 32;
	}
	label$171:;
	ASTTYPEINISCOPEBEGIN( TREE$1, DESC$1, 0 );
	if( (*(int32*)((uint8*)ARRAY$1 + 4) & 4) == 0 ) goto label$175;
	TMP$95$1 = 0ll;
	goto label$187;
	label$175:;
	TMP$95$1 = *(int64*)((uint8*)ARRAY$1 + 72);
	label$187:;
	struct $7ASTNODE* vr$36 = ASTNEWCONSTI( TMP$95$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$37 = ASTCLONETREE( ARRAY_EXPR$1 );
	struct $7ASTNODE* vr$38 = ASTNEWBOP( 28, vr$37, vr$36, (struct $8FBSYMBOL*)0u, 1 );
	ASTTYPEINIADDASSIGN( TREE$1, vr$38, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
	ASTTYPEINIADDASSIGN( TREE$1, ARRAY_EXPR$1, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
	if( (*(int32*)((uint8*)ARRAY$1 + 4) & 4) == 0 ) goto label$176;
	TMP$96$1 = 0ll;
	goto label$188;
	label$176:;
	int64 vr$43 = SYMBGETREALSIZE( ARRAY$1 );
	TMP$96$1 = vr$43;
	label$188:;
	struct $7ASTNODE* vr$44 = ASTNEWCONSTI( TMP$96$1, 8, (struct $8FBSYMBOL*)0u );
	ASTTYPEINIADDASSIGN( TREE$1, vr$44, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
	struct $7ASTNODE* vr$47 = ASTNEWCONSTI( *(int64*)((uint8*)ARRAY$1 + 40), 8, (struct $8FBSYMBOL*)0u );
	ASTTYPEINIADDASSIGN( TREE$1, vr$47, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
	DIMENSIONS$1 = *(int32*)((uint8*)ARRAY$1 + 64);
	if( DIMENSIONS$1 != -1 ) goto label$178;
	{
		DIMENSIONS$1 = 0;
		MAX_DIMENSIONS$1 = 8;
	}
	goto label$177;
	label$178:;
	{
		MAX_DIMENSIONS$1 = DIMENSIONS$1;
		FLAGS$1 = FLAGS$1 | 16;
	}
	label$177:;
	struct $7ASTNODE* vr$52 = ASTNEWCONSTI( (int64)DIMENSIONS$1, 8, (struct $8FBSYMBOL*)0u );
	ASTTYPEINIADDASSIGN( TREE$1, vr$52, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
	FLAGS$1 = FLAGS$1 | (MAX_DIMENSIONS$1 & 15);
	struct $7ASTNODE* vr$57 = ASTNEWCONSTI( (int64)FLAGS$1, 8, (struct $8FBSYMBOL*)0u );
	ASTTYPEINIADDASSIGN( TREE$1, vr$57, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
	ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
	struct $8FBSYMBOL* DIMTBFIELD$1;
	DIMTBFIELD$1 = ELM$1;
	DIMTB$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)ELM$1 + 32) + 60);
	ASTTYPEINISCOPEBEGIN( TREE$1, DIMTBFIELD$1, -1 );
	if( (*(int32*)((uint8*)ARRAY$1 + 4) & 16388) != 0 ) goto label$180;
	{
		{
			int32 I$3;
			I$3 = 0;
			int32 TMP$97$3;
			TMP$97$3 = *(int32*)((uint8*)ARRAY$1 + 64) + -1;
			goto label$181;
			label$184:;
			{
				ELM$1 = DIMTB$1;
				ASTTYPEINISCOPEBEGIN( TREE$1, DIMTBFIELD$1, 0 );
				struct $7ASTNODE* vr$73 = ASTNEWCONSTI( (*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)ARRAY$1 + 68) + (I$3 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)ARRAY$1 + 68) + (I$3 << (4 & 31)))) + 1ll, 8, (struct $8FBSYMBOL*)0u );
				ASTTYPEINIADDASSIGN( TREE$1, vr$73, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
				ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
				struct $7ASTNODE* vr$78 = ASTNEWCONSTI( *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)ARRAY$1 + 68) + (I$3 << (4 & 31))), 8, (struct $8FBSYMBOL*)0u );
				ASTTYPEINIADDASSIGN( TREE$1, vr$78, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
				ELM$1 = *(struct $8FBSYMBOL**)((uint8*)ELM$1 + 176);
				struct $7ASTNODE* vr$83 = ASTNEWCONSTI( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)ARRAY$1 + 68) + (I$3 << (4 & 31))) + 8), 8, (struct $8FBSYMBOL*)0u );
				ASTTYPEINIADDASSIGN( TREE$1, vr$83, ELM$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
				ASTTYPEINISCOPEEND( TREE$1, DIMTBFIELD$1 );
			}
			label$182:;
			I$3 = I$3 + 1;
			label$181:;
			if( I$3 <= TMP$97$3 ) goto label$184;
			label$183:;
		}
	}
	goto label$179;
	label$180:;
	{
		DIMENSIONS$1 = *(int32*)((uint8*)ARRAY$1 + 64);
		if( DIMENSIONS$1 != -1 ) goto label$186;
		{
			DIMENSIONS$1 = 8;
		}
		label$186:;
		label$185:;
		ASTTYPEINIADDPAD( TREE$1, (int64)DIMENSIONS$1 * *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628) + 40) );
	}
	label$179:;
	ASTTYPEINISCOPEEND( TREE$1, DIMTBFIELD$1 );
	ASTTYPEINISCOPEEND( TREE$1, DESC$1 );
	ASTTYPEINIEND( TREE$1, -1 );
	fb$result$1 = TREE$1;
	label$168:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDARRAYBOUND( struct $7ASTNODE* ARRAYEXPR$1, struct $7ASTNODE* DIMEXPR$1, int32 TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$212:;
	struct $7ASTNODE* EXPR$1;
	ERRPUSHPARAMLOCATION( (struct $8FBSYMBOL*)0u, TK$1, 2, (uint8*)"dimension" );
	struct $7ASTNODE* vr$1 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, DIMEXPR$1, 0, (int32*)0u );
	DIMEXPR$1 = vr$1;
	ERRPOPPARAMLOCATION(  );
	struct $7ASTNODE* vr$3 = HCONSTBOUND( ARRAYEXPR$1, DIMEXPR$1, -(TK$1 == 495) );
	EXPR$1 = vr$3;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$215;
	{
		struct $7ASTNODE* vr$5 = RTLARRAYBOUND( ARRAYEXPR$1, DIMEXPR$1, -(TK$1 == 495) );
		EXPR$1 = vr$5;
	}
	label$215:;
	label$214:;
	fb$result$1 = EXPR$1;
	label$213:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* LHS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$216:;
	struct $7ASTNODE* EXPR$1;
	int32 DTYPE$1;
	DTYPE$1 = 4;
	if( (*(int32*)((uint8*)LHS$1 + 4) & 512) == 0 ) goto label$219;
	{
		DTYPE$1 = DTYPE$1 | 512;
	}
	label$219:;
	label$218:;
	DTYPE$1 = ((((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856)) | 512;
	DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
	struct $7ASTNODE* vr$23 = ASTNEWADDROF( LHS$1 );
	struct $7ASTNODE* vr$24 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0u, vr$23, 16, (int32*)0u );
	struct $7ASTNODE* vr$25 = ASTNEWDEREF( vr$24, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	EXPR$1 = vr$25;
	fb$result$1 = EXPR$1;
	goto label$217;
	label$217:;
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

static struct $7ASTNODE* ASTFAKEINSTPTR( struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$115:;
	struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 52, SUBTYPE$1 );
	fb$result$1 = vr$1;
	label$116:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONSTBOUND( struct $7ASTNODE* ARRAYEXPR$1, struct $7ASTNODE* DIMEXPR$1, int32 IS_LBOUND$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$189:;
	struct $8FBSYMBOL* ARRAY$1;
	int32 DIMENSION$1;
	int64 BOUND$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		$13AST_NODECLASS TMP$98$2;
		TMP$98$2 = *($13AST_NODECLASS*)ARRAYEXPR$1;
		if( TMP$98$2 == 17 ) goto label$193;
		label$194:;
		if( TMP$98$2 != 19 ) goto label$192;
		label$193:;
		{
		}
		goto label$191;
		label$192:;
		{
			goto label$190;
		}
		label$195:;
		label$191:;
	}
	ARRAY$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 12);
	if( ARRAY$1 != (struct $8FBSYMBOL*)0u ) goto label$197;
	{
		goto label$190;
	}
	label$197:;
	label$196:;
	if( (*(int32*)((uint8*)ARRAY$1 + 4) & 16388) == 0 ) goto label$199;
	{
		goto label$190;
	}
	label$199:;
	label$198:;
	if( *(int32*)DIMEXPR$1 == 16 ) goto label$201;
	{
		goto label$190;
	}
	label$201:;
	label$200:;
	DIMENSION$1 = (int32)(*(int64*)((uint8*)DIMEXPR$1 + 24) + -1ll);
	if( (-(DIMENSION$1 >= 0) & -(DIMENSION$1 < *(int32*)((uint8*)ARRAY$1 + 64))) == 0 ) goto label$203;
	{
		if( IS_LBOUND$1 == 0 ) goto label$205;
		{
			BOUND$1 = *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)ARRAY$1 + 68) + (DIMENSION$1 << (4 & 31)));
		}
		goto label$204;
		label$205:;
		{
			BOUND$1 = *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)ARRAY$1 + 68) + (DIMENSION$1 << (4 & 31))) + 8);
			if( BOUND$1 != -9223372036854775808ull ) goto label$207;
			{
				goto label$190;
			}
			label$207:;
			label$206:;
		}
		label$204:;
	}
	goto label$202;
	label$203:;
	{
		if( DIMENSION$1 != -1 ) goto label$209;
		{
			int32 TMP$99$3;
			if( IS_LBOUND$1 == 0 ) goto label$210;
			TMP$99$3 = 1;
			goto label$220;
			label$210:;
			TMP$99$3 = *(int32*)((uint8*)ARRAY$1 + 64);
			label$220:;
			BOUND$1 = (int64)TMP$99$3;
		}
		goto label$208;
		label$209:;
		{
			int32 TMP$100$3;
			if( IS_LBOUND$1 == 0 ) goto label$211;
			TMP$100$3 = 0;
			goto label$221;
			label$211:;
			TMP$100$3 = -1;
			label$221:;
			BOUND$1 = (int64)TMP$100$3;
		}
		label$208:;
	}
	label$202:;
	struct $7ASTNODE* vr$22 = ASTNEWCONSTI( BOUND$1, 8, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$22;
	label$190:;
	return fb$result$1;
}
