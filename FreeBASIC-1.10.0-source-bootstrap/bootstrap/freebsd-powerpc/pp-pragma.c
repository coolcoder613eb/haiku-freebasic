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
struct $15LEXPP_PRAGMASTK {
	int32 TOS;
	int64 STK[8];
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $15LEXPP_PRAGMASTK ) == 72 );
struct $15LEXPP_PRAGMAOPT {
	uint8 TK[16];
	int32 OPT;
	int32 FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $15LEXPP_PRAGMAOPT ) == 24 );
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
typedef int32 $20LEXPP_PRAGMAOPT_ENUM;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
static void fb_ctor__ppzpragma( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void FBSETOPTION( int32, int32 );
int32 FBGETOPTION( int32 );
void FBCHANGEOPTION( int32, int32 );
void FBPRAGMAONCE( void );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
int32 HISVALIDSYMBOLNAME( uint8* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXPPONLYEMITTOKEN( void );
void LEXPPONLYEMITTEXT( FBSTRING* );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 PARSERINLINEASMADDKEYWORD( uint8* );
int32 PARSERGLOBALASMADDKEYWORD( uint8* );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $7ASTNODE* CEXPRESSION( void );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static void PRAGMAPUSH( $20LEXPP_PRAGMAOPT_ENUM, int64 );
static void PRAGMAPOP( $20LEXPP_PRAGMAOPT_ENUM, int64* );
static void PRAGMARESERVE( void );
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
typedef int32 $12FB_PARSEROPT;
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
static struct $15LEXPP_PRAGMASTK PRAGMASTK$[4];
static struct $15LEXPP_PRAGMAOPT PRAGMAOPT$[4] = { { "msbitfields", 34, 11 }, { "once", 0, 4 }, { "constness", 128, 27 }, { "reserve", 0, 4 } };

void PPPRAGMAINIT( void )
{
	label$10:;
	{
		int32 I$2;
		I$2 = 0;
		label$15:;
		{
			*(int32*)((int32)(struct $15LEXPP_PRAGMASTK*)PRAGMASTK$ + (I$2 * 72)) = 0;
		}
		label$13:;
		I$2 = I$2 + 1;
		label$12:;
		if( I$2 <= 3 ) goto label$15;
		label$14:;
	}
	label$11:;
}

void PPPRAGMAEND( void )
{
	label$16:;
	label$17:;
}

void PPPRAGMA( void )
{
	label$77:;
	FBSTRING TK$1;
	__builtin_memset( &TK$1, 0, 12 );
	int32 P$1;
	P$1 = -1;
	int32 ISPOP$1;
	ISPOP$1 = 0;
	int32 ISPUSH$1;
	ISPUSH$1 = 0;
	int64 VALUE$1;
	uint8* vr$1 = LEXGETTEXT(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)vr$2, 0 );
	fb_StrAssign( (void*)&TK$1, -1, (void*)vr$3, -1, 0 );
	int32 vr$6 = fb_StrCompare( (void*)&TK$1, -1, (void*)"push", 5 );
	if( vr$6 != 0 ) goto label$80;
	{
		ISPUSH$1 = -1;
	}
	goto label$79;
	label$80:;
	int32 vr$8 = fb_StrCompare( (void*)&TK$1, -1, (void*)"pop", 4 );
	if( vr$8 != 0 ) goto label$81;
	{
		ISPOP$1 = -1;
	}
	label$81:;
	label$79:;
	if( (ISPOP$1 | ISPUSH$1) == 0 ) goto label$83;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 40 ) goto label$85;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$84;
		label$85:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$84:;
		uint8* vr$11 = LEXGETTEXT(  );
		FBSTRING* vr$12 = fb_StrAllocTempDescZ( (uint8*)vr$11 );
		FBSTRING* vr$13 = fb_StrLcase2( (FBSTRING*)vr$12, 0 );
		fb_StrAssign( (void*)&TK$1, -1, (void*)vr$13, -1, 0 );
	}
	label$83:;
	label$82:;
	{
		int32 I$2;
		I$2 = 0;
		label$89:;
		{
			int32 vr$18 = fb_StrCompare( (void*)&TK$1, -1, (void*)((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (I$2 * 24)), 16 );
			if( vr$18 != 0 ) goto label$91;
			{
				P$1 = I$2;
				goto label$88;
			}
			label$91:;
			label$90:;
		}
		label$87:;
		I$2 = I$2 + 1;
		label$86:;
		if( I$2 <= 3 ) goto label$89;
		label$88:;
	}
	if( P$1 != -1 ) goto label$93;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		if( (ISPOP$1 | ISPUSH$1) == 0 ) goto label$95;
		{
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$94;
		label$95:;
		{
			HSKIPUNTIL( 257, 0, 0, 0 );
		}
		label$94:;
		fb_StrDelete( (FBSTRING*)&TK$1 );
		goto label$78;
	}
	label$93:;
	label$92:;
	if( (ISPUSH$1 | ISPOP$1) == 0 ) goto label$97;
	{
		if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 1) != 0 ) goto label$99;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			if( (ISPOP$1 | ISPUSH$1) == 0 ) goto label$101;
			{
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$100;
			label$101:;
			{
				HSKIPUNTIL( 257, 0, 0, 0 );
			}
			label$100:;
			fb_StrDelete( (FBSTRING*)&TK$1 );
			goto label$78;
		}
		label$99:;
		label$98:;
	}
	label$97:;
	label$96:;
	LEXSKIPTOKEN( 2048 );
	if( ISPOP$1 == 0 ) goto label$103;
	{
		PRAGMAPOP( P$1, &VALUE$1 );
		if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 8) == 0 ) goto label$105;
		{
			if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$107;
			{
				FBSTRING TMP$108$4;
				FBSTRING TMP$109$4;
				FBSTRING TMP$110$4;
				__builtin_memset( &TMP$110$4, 0, 12 );
				__builtin_memset( &TMP$108$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$108$4, (void*)"#pragma pop(", 13, (void*)((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)), 16 );
				__builtin_memset( &TMP$109$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$109$4, (void*)vr$35, -1, (void*)")", 2 );
				fb_StrAssign( (void*)&TMP$110$4, -1, (void*)vr$38, -1, 0 );
				LEXPPONLYEMITTEXT( &TMP$110$4 );
				fb_StrDelete( (FBSTRING*)&TMP$110$4 );
			}
			label$107:;
			label$106:;
		}
		label$105:;
		label$104:;
	}
	goto label$102;
	label$103:;
	{
		VALUE$1 = 0ll;
		if( ISPUSH$1 == 0 ) goto label$109;
		{
			if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 16) == 0 ) goto label$111;
			{
				PRAGMAPUSH( P$1, (int64)-((*(int32*)((uint8*)&ENV$ + 200) & *(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 16)) != 0) );
			}
			goto label$110;
			label$111:;
			{
				int32 vr$49 = FBGETOPTION( *(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 16) );
				PRAGMAPUSH( P$1, (int64)vr$49 );
			}
			label$110:;
			int32 vr$51 = LEXGETTOKEN( 0 );
			if( vr$51 != 44 ) goto label$113;
			{
				LEXSKIPTOKEN( 0 );
			}
			goto label$112;
			label$113:;
			{
				VALUE$1 = -1ll;
			}
			label$112:;
		}
		goto label$108;
		label$109:;
		{
			int32 vr$52 = LEXGETTOKEN( 0 );
			if( vr$52 != 299 ) goto label$115;
			{
				if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 2) != 0 ) goto label$117;
				{
					ERRREPORT( 17, 0, (uint8*)0u );
					HSKIPUNTIL( 257, 0, 0, 0 );
					fb_StrDelete( (FBSTRING*)&TK$1 );
					goto label$78;
				}
				label$117:;
				label$116:;
				LEXSKIPTOKEN( 0 );
			}
			goto label$114;
			label$115:;
			{
				VALUE$1 = -1ll;
			}
			label$114:;
		}
		label$108:;
		if( VALUE$1 != 0ll ) goto label$119;
		{
			struct $7ASTNODE* vr$56 = CEXPRESSION(  );
			int64 vr$57 = CCONSTINTEXPR( vr$56, 8 );
			VALUE$1 = vr$57;
			if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 16) == 0 ) goto label$121;
			{
				VALUE$1 = (int64)-(VALUE$1 != 0ll);
			}
			label$121:;
			label$120:;
		}
		label$119:;
		label$118:;
		if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 8) == 0 ) goto label$123;
		{
			if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$125;
			{
				if( ISPUSH$1 == 0 ) goto label$127;
				{
					FBSTRING TMP$113$5;
					FBSTRING TMP$114$5;
					FBSTRING TMP$115$5;
					FBSTRING TMP$116$5;
					FBSTRING TMP$117$5;
					__builtin_memset( &TMP$117$5, 0, 12 );
					FBSTRING* vr$65 = fb_LongintToStr( VALUE$1 );
					__builtin_memset( &TMP$113$5, 0, 12 );
					FBSTRING* vr$70 = fb_StrConcat( &TMP$113$5, (void*)"#pragma push(", 14, (void*)((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)), 16 );
					__builtin_memset( &TMP$114$5, 0, 12 );
					FBSTRING* vr$73 = fb_StrConcat( &TMP$114$5, (void*)vr$70, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$115$5, 0, 12 );
					FBSTRING* vr$76 = fb_StrConcat( &TMP$115$5, (void*)vr$73, -1, (void*)vr$65, -1 );
					__builtin_memset( &TMP$116$5, 0, 12 );
					FBSTRING* vr$79 = fb_StrConcat( &TMP$116$5, (void*)vr$76, -1, (void*)")", 2 );
					fb_StrAssign( (void*)&TMP$117$5, -1, (void*)vr$79, -1, 0 );
					LEXPPONLYEMITTEXT( &TMP$117$5 );
					fb_StrDelete( (FBSTRING*)&TMP$117$5 );
				}
				goto label$126;
				label$127:;
				{
					FBSTRING TMP$120$5;
					FBSTRING TMP$121$5;
					FBSTRING TMP$122$5;
					FBSTRING TMP$123$5;
					__builtin_memset( &TMP$123$5, 0, 12 );
					FBSTRING* vr$84 = fb_LongintToStr( VALUE$1 );
					__builtin_memset( &TMP$120$5, 0, 12 );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$120$5, (void*)"#pragma ", 9, (void*)((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)), 16 );
					__builtin_memset( &TMP$121$5, 0, 12 );
					FBSTRING* vr$92 = fb_StrConcat( &TMP$121$5, (void*)vr$89, -1, (void*)" = ", 4 );
					__builtin_memset( &TMP$122$5, 0, 12 );
					FBSTRING* vr$95 = fb_StrConcat( &TMP$122$5, (void*)vr$92, -1, (void*)vr$84, -1 );
					fb_StrAssign( (void*)&TMP$123$5, -1, (void*)vr$95, -1, 0 );
					LEXPPONLYEMITTEXT( &TMP$123$5 );
					fb_StrDelete( (FBSTRING*)&TMP$123$5 );
				}
				label$126:;
			}
			label$125:;
			label$124:;
		}
		label$123:;
		label$122:;
	}
	label$102:;
	if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 4) == 0 ) goto label$129;
	{
		{
			if( P$1 != 1 ) goto label$131;
			label$132:;
			{
				FBPRAGMAONCE(  );
			}
			goto label$130;
			label$131:;
			if( P$1 != 3 ) goto label$133;
			label$134:;
			{
				PRAGMARESERVE(  );
			}
			label$133:;
			label$130:;
		}
	}
	goto label$128;
	label$129:;
	{
		if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 3) == 0 ) goto label$136;
		{
			if( (*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 20) & 16) == 0 ) goto label$138;
			{
				int32 vr$108 = FBGETOPTION( 27 );
				VALUE$1 = (VALUE$1 & (int64)*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 16)) | (int64)(vr$108 & ~(*(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 16)));
				FBSETOPTION( 27, (int32)VALUE$1 );
			}
			goto label$137;
			label$138:;
			{
				FBCHANGEOPTION( *(int32*)(((int32)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 * 24)) + 16), (int32)VALUE$1 );
			}
			label$137:;
		}
		label$136:;
		label$135:;
	}
	label$128:;
	if( (ISPOP$1 | ISPUSH$1) == 0 ) goto label$140;
	{
		int32 vr$118 = LEXGETTOKEN( 0 );
		if( vr$118 == 41 ) goto label$142;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$141;
		label$142:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$141:;
	}
	label$140:;
	label$139:;
	fb_StrDelete( (FBSTRING*)&TK$1 );
	label$78:;
}

__attribute__(( constructor )) static void fb_ctor__ppzpragma( void )
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

static void PRAGMAPUSH( $20LEXPP_PRAGMAOPT_ENUM PRAGMAIDX$1, int64 VALUE$1 )
{
	label$18:;
	{
		struct $15LEXPP_PRAGMASTK* TMP$98$2;
		TMP$98$2 = (struct $15LEXPP_PRAGMASTK*)((int32)(struct $15LEXPP_PRAGMASTK*)PRAGMASTK$ + (PRAGMAIDX$1 * 72));
		if( *(int32*)TMP$98$2 < 8 ) goto label$21;
		{
			ERRREPORT( 27, 0, (uint8*)0u );
			goto label$19;
		}
		label$21:;
		label$20:;
		*(int64*)((uint8*)((uint8*)TMP$98$2 + (*(int32*)TMP$98$2 << (3 & 31))) + 8) = VALUE$1;
		*(int32*)TMP$98$2 = *(int32*)TMP$98$2 + 1;
	}
	label$19:;
}

static void PRAGMAPOP( $20LEXPP_PRAGMAOPT_ENUM PRAGMAIDX$1, int64* VALUE$1 )
{
	label$22:;
	{
		struct $15LEXPP_PRAGMASTK* TMP$99$2;
		TMP$99$2 = (struct $15LEXPP_PRAGMASTK*)((int32)(struct $15LEXPP_PRAGMASTK*)PRAGMASTK$ + (PRAGMAIDX$1 * 72));
		if( *(int32*)TMP$99$2 > 0 ) goto label$25;
		{
			ERRREPORT( 101, 0, (uint8*)0u );
			*VALUE$1 = 0ll;
			goto label$23;
		}
		label$25:;
		label$24:;
		*(int32*)TMP$99$2 = *(int32*)TMP$99$2 + -1;
		*VALUE$1 = *(int64*)((uint8*)((uint8*)TMP$99$2 + (*(int32*)TMP$99$2 << (3 & 31))) + 8);
	}
	label$23:;
}

static void PRAGMARESERVE( void )
{
	label$26:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $8FBSYMBOL* SYM$1;
	uint8* ID$1;
	int32 HAVEASM$1;
	HAVEASM$1 = 0;
	int32 HAVEEXTERN$1;
	HAVEEXTERN$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$29;
	{
		FBSTRING TMP$101$2;
		__builtin_memset( &TMP$101$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$101$2, -1, (void*)"#pragma reserve", 16, 0 );
		LEXPPONLYEMITTEXT( &TMP$101$2 );
		fb_StrDelete( (FBSTRING*)&TMP$101$2 );
	}
	label$29:;
	label$28:;
	int32 vr$4 = LEXGETTOKEN( 0 );
	if( vr$4 != 40 ) goto label$31;
	{
		LEXSKIPTOKEN( 0 );
		if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$33;
		{
			LEXPPONLYEMITTOKEN(  );
		}
		label$33:;
		label$32:;
		label$34:;
		{
			{
				int32 TMP$102$4;
				int32 vr$5 = LEXGETTOKEN( 0 );
				TMP$102$4 = vr$5;
				if( TMP$102$4 == 344 ) goto label$39;
				label$40:;
				if( TMP$102$4 != 306 ) goto label$38;
				label$39:;
				{
					if( *(uint32*)((uint8*)&PARSER$ + 100) <= 0u ) goto label$42;
					{
						if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$44;
						{
							uint8* vr$6 = LEXGETTEXT(  );
							ERRREPORTEX( 61, (uint8*)vr$6, 0, 1, (uint8*)0u );
						}
						goto label$43;
						label$44:;
						{
							uint8* vr$7 = LEXGETTEXT(  );
							ERRREPORTEX( 96, (uint8*)vr$7, 0, 1, (uint8*)0u );
						}
						label$43:;
						HSKIPUNTIL( 257, 0, 0, 0 );
						goto label$27;
					}
					label$42:;
					label$41:;
					int32 vr$8 = LEXGETTOKEN( 0 );
					int32 vr$12 = LEXGETTOKEN( 0 );
					if( ((-(vr$8 == 344) & -(HAVEASM$1 == -1)) | (-(vr$12 == 306) & -(HAVEEXTERN$1 == -1))) == 0 ) goto label$46;
					{
						uint8* vr$17 = LEXGETTEXT(  );
						ERRREPORTEX( 17, (uint8*)vr$17, 0, 1, (uint8*)0u );
						HSKIPUNTIL( 257, 0, 0, 0 );
						goto label$27;
					}
					label$46:;
					label$45:;
					{
						int32 TMP$103$6;
						int32 vr$18 = LEXGETTOKEN( 0 );
						TMP$103$6 = vr$18;
						if( TMP$103$6 != 344 ) goto label$48;
						label$49:;
						{
							HAVEASM$1 = -1;
						}
						goto label$47;
						label$48:;
						if( TMP$103$6 != 306 ) goto label$50;
						label$51:;
						{
							HAVEEXTERN$1 = -1;
						}
						label$50:;
						label$47:;
					}
					LEXSKIPTOKEN( 2048 );
				}
				goto label$37;
				label$38:;
				if( TMP$102$4 != 44 ) goto label$52;
				label$53:;
				{
					LEXSKIPTOKEN( 0 );
				}
				goto label$37;
				label$52:;
				{
					goto label$35;
				}
				label$54:;
				label$37:;
			}
			if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$56;
			{
				LEXPPONLYEMITTOKEN(  );
			}
			label$56:;
			label$55:;
		}
		label$36:;
		goto label$34;
		label$35:;
		int32 vr$19 = LEXGETTOKEN( 0 );
		if( vr$19 == 41 ) goto label$58;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$57;
		label$58:;
		{
			if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$60;
			{
				LEXPPONLYEMITTOKEN(  );
			}
			label$60:;
			label$59:;
			LEXSKIPTOKEN( 0 );
		}
		label$57:;
	}
	label$31:;
	label$30:;
	struct $10FBSYMCHAIN* vr$21 = CIDENTIFIER( &BASE_PARENT$1, 0 );
	CHAIN_$1 = vr$21;
	uint8* vr$22 = LEXGETTEXT(  );
	ID$1 = vr$22;
	int32 vr$23 = HISVALIDSYMBOLNAME( ID$1 );
	if( vr$23 != 0 ) goto label$62;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		goto label$27;
	}
	label$62:;
	label$61:;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$64;
	{
		LEXPPONLYEMITTOKEN(  );
	}
	label$64:;
	label$63:;
	if( HAVEASM$1 != -1 ) goto label$66;
	{
		int32 vr$24 = PARSERINLINEASMADDKEYWORD( (uint8*)ID$1 );
		if( vr$24 != 0 ) goto label$68;
		{
			ERRREPORTEX( 4, (uint8*)ID$1, 0, 1, (uint8*)0u );
			HSKIPUNTIL( 257, 0, 0, 0 );
			goto label$27;
		}
		label$68:;
		label$67:;
	}
	label$66:;
	label$65:;
	if( HAVEEXTERN$1 != -1 ) goto label$70;
	{
		int32 vr$25 = PARSERGLOBALASMADDKEYWORD( (uint8*)ID$1 );
		if( vr$25 != 0 ) goto label$72;
		{
			ERRREPORTEX( 4, (uint8*)ID$1, 0, 1, (uint8*)0u );
			HSKIPUNTIL( 257, 0, 0, 0 );
			goto label$27;
		}
		label$72:;
		label$71:;
	}
	label$70:;
	label$69:;
	if( (-(HAVEASM$1 == -1) | -(HAVEEXTERN$1 == -1)) == 0 ) goto label$74;
	{
		LEXSKIPTOKEN( 2048 );
		goto label$27;
	}
	label$74:;
	label$73:;
	struct $8FBSYMBOL* vr$29 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544), *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 98540), 16, (uint8*)ID$1, (uint8*)0u, -2147483648u, (struct $8FBSYMBOL*)0u, 128, 0 );
	SYM$1 = vr$29;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$76;
	{
		ERRREPORTEX( 4, (uint8*)ID$1, 0, 1, (uint8*)0u );
		HSKIPUNTIL( 257, 0, 0, 0 );
		goto label$27;
	}
	label$76:;
	label$75:;
	LEXSKIPTOKEN( 2048 );
	label$27:;
}
