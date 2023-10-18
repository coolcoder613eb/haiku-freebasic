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
struct $15LEXPP_PRAGMASTK {
	int64 TOS;
	int64 STK[8];
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $15LEXPP_PRAGMASTK ) == 72 );
struct $15LEXPP_PRAGMAOPT {
	uint8 TK[16];
	int64 OPT;
	int64 FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $15LEXPP_PRAGMAOPT ) == 32 );
typedef int64 $13AST_NODECLASS;
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
struct $7ASTNODE;
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
		uint32* LITTEXTW;
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
typedef int64 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
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
		uint32* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint32* DATA;
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
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int64* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $20LEXPP_PRAGMAOPT_ENUM;
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
static void fb_ctor__ppzpragma( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void FBSETOPTION( int64, int64 );
int64 FBGETOPTION( int64 );
void FBCHANGEOPTION( int64, int64 );
void FBPRAGMAONCE( void );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
int64 HISVALIDSYMBOLNAME( uint8* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXPPONLYEMITTOKEN( void );
void LEXPPONLYEMITTEXT( FBSTRING* );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 PARSERINLINEASMADDKEYWORD( uint8* );
int64 PARSERGLOBALASMADDKEYWORD( uint8* );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $7ASTNODE* CEXPRESSION( void );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
static void PRAGMAPUSH( $20LEXPP_PRAGMAOPT_ENUM, int64 );
static void PRAGMAPOP( $20LEXPP_PRAGMAOPT_ENUM, int64* );
static void PRAGMARESERVE( void );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
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
static struct $8FBARRAY2IlE tmp$81$;
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
typedef int64 $8FB_TOKEN;
typedef int64 $15FB_CMPSTMT_MASK;
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
static struct $15LEXPP_PRAGMASTK PRAGMASTK$[4];
static struct $15LEXPP_PRAGMAOPT PRAGMAOPT$[4] = { { "msbitfields", 34ll, 11ll }, { "once", 0ll, 4ll }, { "constness", 128ll, 27ll }, { "reserve", 0ll, 4ll } };

void PPPRAGMAINIT( void )
{
	label$10:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$15:;
		{
			*(int64*)((int64)(struct $15LEXPP_PRAGMASTK*)PRAGMASTK$ + (I$2 * 72ll)) = 0ll;
		}
		label$13:;
		I$2 = I$2 + 1ll;
		label$12:;
		if( I$2 <= 3ll ) goto label$15;
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
	__builtin_memset( &TK$1, 0, 24ll );
	int64 P$1;
	P$1 = -1ll;
	int64 ISPOP$1;
	ISPOP$1 = 0ll;
	int64 ISPUSH$1;
	ISPUSH$1 = 0ll;
	int64 VALUE$1;
	uint8* vr$1 = LEXGETTEXT(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)vr$2, 0 );
	fb_StrAssign( (void*)&TK$1, -1ll, (void*)vr$3, -1ll, 0 );
	int32 vr$6 = fb_StrCompare( (void*)&TK$1, -1ll, (void*)"push", 5ll );
	if( (int64)vr$6 != 0ll ) goto label$80;
	{
		ISPUSH$1 = -1ll;
	}
	goto label$79;
	label$80:;
	int32 vr$9 = fb_StrCompare( (void*)&TK$1, -1ll, (void*)"pop", 4ll );
	if( (int64)vr$9 != 0ll ) goto label$81;
	{
		ISPOP$1 = -1ll;
	}
	label$81:;
	label$79:;
	if( (ISPOP$1 | ISPUSH$1) == 0ll ) goto label$83;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$12 = LEXGETTOKEN( 0ll );
		if( vr$12 == 40ll ) goto label$85;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$84;
		label$85:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$84:;
		uint8* vr$13 = LEXGETTEXT(  );
		FBSTRING* vr$14 = fb_StrAllocTempDescZ( (uint8*)vr$13 );
		FBSTRING* vr$15 = fb_StrLcase2( (FBSTRING*)vr$14, 0 );
		fb_StrAssign( (void*)&TK$1, -1ll, (void*)vr$15, -1ll, 0 );
	}
	label$83:;
	label$82:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$89:;
		{
			int32 vr$20 = fb_StrCompare( (void*)&TK$1, -1ll, (void*)((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (I$2 << (5ll & 63ll))), 16ll );
			if( (int64)vr$20 != 0ll ) goto label$91;
			{
				P$1 = I$2;
				goto label$88;
			}
			label$91:;
			label$90:;
		}
		label$87:;
		I$2 = I$2 + 1ll;
		label$86:;
		if( I$2 <= 3ll ) goto label$89;
		label$88:;
	}
	if( P$1 != -1ll ) goto label$93;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		if( (ISPOP$1 | ISPUSH$1) == 0ll ) goto label$95;
		{
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$94;
		label$95:;
		{
			HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
		}
		label$94:;
		fb_StrDelete( (FBSTRING*)&TK$1 );
		goto label$78;
	}
	label$93:;
	label$92:;
	if( (ISPUSH$1 | ISPOP$1) == 0ll ) goto label$97;
	{
		if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 1ll) != 0ll ) goto label$99;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			if( (ISPOP$1 | ISPUSH$1) == 0ll ) goto label$101;
			{
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$100;
			label$101:;
			{
				HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
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
	LEXSKIPTOKEN( 2048ll );
	if( ISPOP$1 == 0ll ) goto label$103;
	{
		PRAGMAPOP( P$1, &VALUE$1 );
		if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 8ll) == 0ll ) goto label$105;
		{
			if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$107;
			{
				FBSTRING TMP$108$4;
				FBSTRING TMP$109$4;
				FBSTRING TMP$110$4;
				__builtin_memset( &TMP$110$4, 0, 24ll );
				__builtin_memset( &TMP$108$4, 0, 24ll );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$108$4, (void*)"#pragma pop(", 13ll, (void*)((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))), 16ll );
				__builtin_memset( &TMP$109$4, 0, 24ll );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$109$4, (void*)vr$38, -1ll, (void*)")", 2ll );
				fb_StrAssign( (void*)&TMP$110$4, -1ll, (void*)vr$41, -1ll, 0 );
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
		if( ISPUSH$1 == 0ll ) goto label$109;
		{
			if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 16ll) == 0ll ) goto label$111;
			{
				PRAGMAPUSH( P$1, (int64)-((*(int64*)((uint8*)&ENV$ + 400ll) & *(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 16ll)) != 0ll) );
			}
			goto label$110;
			label$111:;
			{
				int64 vr$51 = FBGETOPTION( *(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 16ll) );
				PRAGMAPUSH( P$1, vr$51 );
			}
			label$110:;
			int64 vr$52 = LEXGETTOKEN( 0ll );
			if( vr$52 != 44ll ) goto label$113;
			{
				LEXSKIPTOKEN( 0ll );
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
			int64 vr$53 = LEXGETTOKEN( 0ll );
			if( vr$53 != 299ll ) goto label$115;
			{
				if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 2ll) != 0ll ) goto label$117;
				{
					ERRREPORT( 17ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
					fb_StrDelete( (FBSTRING*)&TK$1 );
					goto label$78;
				}
				label$117:;
				label$116:;
				LEXSKIPTOKEN( 0ll );
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
			struct $7ASTNODE* vr$57 = CEXPRESSION(  );
			int64 vr$58 = CCONSTINTEXPR( vr$57, 8ll );
			VALUE$1 = vr$58;
			if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 16ll) == 0ll ) goto label$121;
			{
				VALUE$1 = (int64)-(VALUE$1 != 0ll);
			}
			label$121:;
			label$120:;
		}
		label$119:;
		label$118:;
		if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 8ll) == 0ll ) goto label$123;
		{
			if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$125;
			{
				if( ISPUSH$1 == 0ll ) goto label$127;
				{
					FBSTRING TMP$113$5;
					FBSTRING TMP$114$5;
					FBSTRING TMP$115$5;
					FBSTRING TMP$116$5;
					FBSTRING TMP$117$5;
					__builtin_memset( &TMP$117$5, 0, 24ll );
					FBSTRING* vr$65 = fb_LongintToStr( VALUE$1 );
					__builtin_memset( &TMP$113$5, 0, 24ll );
					FBSTRING* vr$70 = fb_StrConcat( &TMP$113$5, (void*)"#pragma push(", 14ll, (void*)((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))), 16ll );
					__builtin_memset( &TMP$114$5, 0, 24ll );
					FBSTRING* vr$73 = fb_StrConcat( &TMP$114$5, (void*)vr$70, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$115$5, 0, 24ll );
					FBSTRING* vr$76 = fb_StrConcat( &TMP$115$5, (void*)vr$73, -1ll, (void*)vr$65, -1ll );
					__builtin_memset( &TMP$116$5, 0, 24ll );
					FBSTRING* vr$79 = fb_StrConcat( &TMP$116$5, (void*)vr$76, -1ll, (void*)")", 2ll );
					fb_StrAssign( (void*)&TMP$117$5, -1ll, (void*)vr$79, -1ll, 0 );
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
					__builtin_memset( &TMP$123$5, 0, 24ll );
					FBSTRING* vr$84 = fb_LongintToStr( VALUE$1 );
					__builtin_memset( &TMP$120$5, 0, 24ll );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$120$5, (void*)"#pragma ", 9ll, (void*)((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))), 16ll );
					__builtin_memset( &TMP$121$5, 0, 24ll );
					FBSTRING* vr$92 = fb_StrConcat( &TMP$121$5, (void*)vr$89, -1ll, (void*)" = ", 4ll );
					__builtin_memset( &TMP$122$5, 0, 24ll );
					FBSTRING* vr$95 = fb_StrConcat( &TMP$122$5, (void*)vr$92, -1ll, (void*)vr$84, -1ll );
					fb_StrAssign( (void*)&TMP$123$5, -1ll, (void*)vr$95, -1ll, 0 );
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
	if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 4ll) == 0ll ) goto label$129;
	{
		{
			if( P$1 != 1ll ) goto label$131;
			label$132:;
			{
				FBPRAGMAONCE(  );
			}
			goto label$130;
			label$131:;
			if( P$1 != 3ll ) goto label$133;
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
		if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 3ll) == 0ll ) goto label$136;
		{
			if( (*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 24ll) & 16ll) == 0ll ) goto label$138;
			{
				int64 vr$107 = FBGETOPTION( 27ll );
				VALUE$1 = (VALUE$1 & *(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 16ll)) | (vr$107 & ~(*(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 16ll)));
				FBSETOPTION( 27ll, VALUE$1 );
			}
			goto label$137;
			label$138:;
			{
				FBCHANGEOPTION( *(int64*)(((int64)(struct $15LEXPP_PRAGMAOPT*)PRAGMAOPT$ + (P$1 << (5ll & 63ll))) + 16ll), VALUE$1 );
			}
			label$137:;
		}
		label$136:;
		label$135:;
	}
	label$128:;
	if( (ISPOP$1 | ISPUSH$1) == 0ll ) goto label$140;
	{
		int64 vr$114 = LEXGETTOKEN( 0ll );
		if( vr$114 == 41ll ) goto label$142;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$141;
		label$142:;
		{
			LEXSKIPTOKEN( 0ll );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void PRAGMAPUSH( $20LEXPP_PRAGMAOPT_ENUM PRAGMAIDX$1, int64 VALUE$1 )
{
	label$18:;
	{
		struct $15LEXPP_PRAGMASTK* TMP$98$2;
		TMP$98$2 = (struct $15LEXPP_PRAGMASTK*)((int64)(struct $15LEXPP_PRAGMASTK*)PRAGMASTK$ + (PRAGMAIDX$1 * 72ll));
		if( *(int64*)TMP$98$2 < 8ll ) goto label$21;
		{
			ERRREPORT( 27ll, 0ll, (uint8*)0ull );
			goto label$19;
		}
		label$21:;
		label$20:;
		*(int64*)((uint8*)((uint8*)TMP$98$2 + (*(int64*)TMP$98$2 << (3ll & 63ll))) + 8ll) = VALUE$1;
		*(int64*)TMP$98$2 = *(int64*)TMP$98$2 + 1ll;
	}
	label$19:;
}

static void PRAGMAPOP( $20LEXPP_PRAGMAOPT_ENUM PRAGMAIDX$1, int64* VALUE$1 )
{
	label$22:;
	{
		struct $15LEXPP_PRAGMASTK* TMP$99$2;
		TMP$99$2 = (struct $15LEXPP_PRAGMASTK*)((int64)(struct $15LEXPP_PRAGMASTK*)PRAGMASTK$ + (PRAGMAIDX$1 * 72ll));
		if( *(int64*)TMP$99$2 > 0ll ) goto label$25;
		{
			ERRREPORT( 101ll, 0ll, (uint8*)0ull );
			*VALUE$1 = 0ll;
			goto label$23;
		}
		label$25:;
		label$24:;
		*(int64*)TMP$99$2 = *(int64*)TMP$99$2 + -1ll;
		*VALUE$1 = *(int64*)((uint8*)((uint8*)TMP$99$2 + (*(int64*)TMP$99$2 << (3ll & 63ll))) + 8ll);
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
	int64 HAVEASM$1;
	HAVEASM$1 = 0ll;
	int64 HAVEEXTERN$1;
	HAVEEXTERN$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$29;
	{
		FBSTRING TMP$101$2;
		__builtin_memset( &TMP$101$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$101$2, -1ll, (void*)"#pragma reserve", 16ll, 0 );
		LEXPPONLYEMITTEXT( &TMP$101$2 );
		fb_StrDelete( (FBSTRING*)&TMP$101$2 );
	}
	label$29:;
	label$28:;
	int64 vr$4 = LEXGETTOKEN( 0ll );
	if( vr$4 != 40ll ) goto label$31;
	{
		LEXSKIPTOKEN( 0ll );
		if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$33;
		{
			LEXPPONLYEMITTOKEN(  );
		}
		label$33:;
		label$32:;
		label$34:;
		{
			{
				int64 TMP$102$4;
				int64 vr$5 = LEXGETTOKEN( 0ll );
				TMP$102$4 = vr$5;
				if( TMP$102$4 == 344ll ) goto label$39;
				label$40:;
				if( TMP$102$4 != 306ll ) goto label$38;
				label$39:;
				{
					if( *(uint64*)((uint8*)&PARSER$ + 200ll) <= 0ull ) goto label$42;
					{
						if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll) ) goto label$44;
						{
							uint8* vr$6 = LEXGETTEXT(  );
							ERRREPORTEX( 61ll, (uint8*)vr$6, 0ll, 1ll, (uint8*)0ull );
						}
						goto label$43;
						label$44:;
						{
							uint8* vr$7 = LEXGETTEXT(  );
							ERRREPORTEX( 96ll, (uint8*)vr$7, 0ll, 1ll, (uint8*)0ull );
						}
						label$43:;
						HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
						goto label$27;
					}
					label$42:;
					label$41:;
					int64 vr$8 = LEXGETTOKEN( 0ll );
					int64 vr$12 = LEXGETTOKEN( 0ll );
					if( (((int64)-(vr$8 == 344ll) & (int64)-(HAVEASM$1 == -1ll)) | ((int64)-(vr$12 == 306ll) & (int64)-(HAVEEXTERN$1 == -1ll))) == 0ll ) goto label$46;
					{
						uint8* vr$17 = LEXGETTEXT(  );
						ERRREPORTEX( 17ll, (uint8*)vr$17, 0ll, 1ll, (uint8*)0ull );
						HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
						goto label$27;
					}
					label$46:;
					label$45:;
					{
						int64 TMP$103$6;
						int64 vr$18 = LEXGETTOKEN( 0ll );
						TMP$103$6 = vr$18;
						if( TMP$103$6 != 344ll ) goto label$48;
						label$49:;
						{
							HAVEASM$1 = -1ll;
						}
						goto label$47;
						label$48:;
						if( TMP$103$6 != 306ll ) goto label$50;
						label$51:;
						{
							HAVEEXTERN$1 = -1ll;
						}
						label$50:;
						label$47:;
					}
					LEXSKIPTOKEN( 2048ll );
				}
				goto label$37;
				label$38:;
				if( TMP$102$4 != 44ll ) goto label$52;
				label$53:;
				{
					LEXSKIPTOKEN( 0ll );
				}
				goto label$37;
				label$52:;
				{
					goto label$35;
				}
				label$54:;
				label$37:;
			}
			if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$56;
			{
				LEXPPONLYEMITTOKEN(  );
			}
			label$56:;
			label$55:;
		}
		label$36:;
		goto label$34;
		label$35:;
		int64 vr$19 = LEXGETTOKEN( 0ll );
		if( vr$19 == 41ll ) goto label$58;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$57;
		label$58:;
		{
			if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$60;
			{
				LEXPPONLYEMITTOKEN(  );
			}
			label$60:;
			label$59:;
			LEXSKIPTOKEN( 0ll );
		}
		label$57:;
	}
	label$31:;
	label$30:;
	struct $10FBSYMCHAIN* vr$21 = CIDENTIFIER( &BASE_PARENT$1, 0ll );
	CHAIN_$1 = vr$21;
	uint8* vr$22 = LEXGETTEXT(  );
	ID$1 = vr$22;
	int64 vr$23 = HISVALIDSYMBOLNAME( ID$1 );
	if( vr$23 != 0ll ) goto label$62;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		goto label$27;
	}
	label$62:;
	label$61:;
	if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$64;
	{
		LEXPPONLYEMITTOKEN(  );
	}
	label$64:;
	label$63:;
	if( HAVEASM$1 != -1ll ) goto label$66;
	{
		int64 vr$24 = PARSERINLINEASMADDKEYWORD( (uint8*)ID$1 );
		if( vr$24 != 0ll ) goto label$68;
		{
			ERRREPORTEX( 4ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
			goto label$27;
		}
		label$68:;
		label$67:;
	}
	label$66:;
	label$65:;
	if( HAVEEXTERN$1 != -1ll ) goto label$70;
	{
		int64 vr$25 = PARSERGLOBALASMADDKEYWORD( (uint8*)ID$1 );
		if( vr$25 != 0ll ) goto label$72;
		{
			ERRREPORTEX( 4ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
			goto label$27;
		}
		label$72:;
		label$71:;
	}
	label$70:;
	label$69:;
	if( ((int64)-(HAVEASM$1 == -1ll) | (int64)-(HAVEEXTERN$1 == -1ll)) == 0ll ) goto label$74;
	{
		LEXSKIPTOKEN( 2048ll );
		goto label$27;
	}
	label$74:;
	label$73:;
	struct $8FBSYMBOL* vr$29 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll), *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll), 16ll, (uint8*)ID$1, (uint8*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull, 128ll, 0ll );
	SYM$1 = vr$29;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$76;
	{
		ERRREPORTEX( 4ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
		HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
		goto label$27;
	}
	label$76:;
	label$75:;
	LEXSKIPTOKEN( 2048ll );
	label$27:;
}
