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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 12 );
struct $16FB_CALL_ARG_LIST {
	int32 ARGS;
	struct $11FB_CALL_ARG* HEAD;
	struct $11FB_CALL_ARG* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CALL_ARG_LIST ) == 12 );
typedef int32 $12FB_PARSEROPT;
typedef int32 $9FB_ERRMSG;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $14FB_SYMBFINDOPT;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzproccallzargs( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDVTABLELOOKUP( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDFAKECALL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int32, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
struct $11FB_CALL_ARG* SYMBALLOCOVLCALLARG( struct $5TLIST*, struct $16FB_CALL_ARG_LIST*, int32 );
void SYMBFREEOVLCALLARGS( struct $5TLIST*, struct $16FB_CALL_ARG_LIST* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static int32 HPROCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32, struct $7ASTNODE**, int32*, int32*, $12FB_PARSEROPT );
static void HOVLPROCARG( int32, struct $11FB_CALL_ARG*, int32*, $12FB_PARSEROPT );
static void HMAYBEWARNABOUTEQOUTSIDEPARENS( int32, int32, struct $8FBSYMBOL* );
static struct $7ASTNODE* HGETVTABLELOOKUPIFNEEDED( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARSEROPT );
static struct $7ASTNODE* HOVLPROCARGLIST( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $16FB_CALL_ARG_LIST*, $12FB_PARSEROPT );
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

void PARSERPROCCALLINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PARSER$ + 116), 128, 12, 6 );
	label$11:;
}

void PARSERPROCCALLEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PARSER$ + 116) );
	label$13:;
}

struct $7ASTNODE* CPROCARGLIST( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* PTREXPR$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$136:;
	int32 ARGS$1;
	int32 PARAMS$1;
	int32 MODE$1;
	int32 HAVE_EQ_OUTSIDE_PARENS$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $7ASTNODE* PROCEXPR$1;
	struct $7ASTNODE* EXPR$1;
	struct $11FB_CALL_ARG* ARG$1;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 1) <= 0 ) goto label$139;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108) == (struct $8FBSYMBOL*)0u ) goto label$141;
		{
			struct $7ASTNODE* vr$4 = HOVLPROCARGLIST( BASE_PARENT$1, PROC$1, ARG_LIST$1, OPTIONS$1 );
			fb$result$1 = vr$4;
			goto label$137;
		}
		label$141:;
		label$140:;
	}
	label$139:;
	label$138:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	HAVE_EQ_OUTSIDE_PARENS$1 = 0;
	int32 vr$5 = SYMBCHECKACCESS( PROC$1 );
	if( vr$5 != 0 ) goto label$143;
	{
		$9FB_ERRMSG TMP$95$2;
		uint8* vr$6 = SYMBGETFULLPROCNAME( PROC$1 );
		if( (*(int32*)((uint8*)PROC$1 + 8) & 4) == 0 ) goto label$144;
		TMP$95$2 = 205;
		goto label$192;
		label$144:;
		TMP$95$2 = 202;
		label$192:;
		ERRREPORTEX( TMP$95$2, (uint8*)vr$6, 0, 1, (uint8*)0u );
		struct $7ASTNODE* vr$9 = ASTBUILDFAKECALL( PROC$1 );
		fb$result$1 = vr$9;
		goto label$137;
	}
	label$143:;
	label$142:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$146;
	{
		if( (OPTIONS$1 & 64) != 0 ) goto label$148;
		{
			if( (-(BASE_PARENT$1 != (struct $8FBSYMBOL*)0u) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 2) == 0)) == 0 ) goto label$150;
			{
				ERRREPORT( 214, -1, (uint8*)0u );
				struct $7ASTNODE* vr$18 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$18;
				goto label$137;
			}
			label$150:;
			label$149:;
			struct $11FB_CALL_ARG* vr$20 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 116), ARG_LIST$1, -1 );
			ARG$1 = vr$20;
			struct $7ASTNODE* vr$23 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 76) + 60), (struct $8FBSYMBOL*)0u, 0ll );
			*(struct $7ASTNODE**)ARG$1 = vr$23;
			*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = -1;
		}
		label$148:;
		label$147:;
		struct $7ASTNODE* vr$28 = HGETVTABLELOOKUPIFNEEDED( PROC$1, *(struct $7ASTNODE**)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4), OPTIONS$1 );
		PTREXPR$1 = vr$28;
	}
	goto label$145;
	label$146:;
	{
		if( (OPTIONS$1 & 64) == 0 ) goto label$152;
		{
			ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4) = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
			ASTDELTREE( *(struct $7ASTNODE**)ARG$1 );
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 116), (void*)ARG$1 );
		}
		label$152:;
		label$151:;
	}
	label$145:;
	struct $7ASTNODE* vr$35 = ASTNEWCALL( PROC$1, PTREXPR$1 );
	PROCEXPR$1 = vr$35;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
	label$153:;
	if( ARG$1 == (struct $11FB_CALL_ARG*)0u ) goto label$154;
	{
		struct $11FB_CALL_ARG* NXT$2;
		NXT$2 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
		struct $7ASTNODE* vr$43 = ASTNEWARG( PROCEXPR$1, *(struct $7ASTNODE**)ARG$1, -2147483648u, *(int32*)((uint8*)ARG$1 + 4) );
		if( vr$43 != (struct $7ASTNODE*)0u ) goto label$156;
		{
			ASTDELTREE( PROCEXPR$1 );
			struct $7ASTNODE* vr$44 = ASTBUILDFAKECALL( PROC$1 );
			fb$result$1 = vr$44;
			goto label$137;
		}
		label$156:;
		label$155:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 116), (void*)ARG$1 );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		ARG$1 = NXT$2;
		PARAMS$1 = PARAMS$1 + -1;
	}
	goto label$153;
	label$154:;
	ARGS$1 = 0;
	if( PARAMS$1 != 0 ) goto label$158;
	{
		if( (OPTIONS$1 & 16) != 0 ) goto label$160;
		{
			int32 vr$49 = LEXGETTOKEN( 0 );
			if( vr$49 != 40 ) goto label$162;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$50 = LEXGETTOKEN( 0 );
				if( vr$50 == 41 ) goto label$164;
				{
					ERRREPORT( 7, 0, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				goto label$163;
				label$164:;
				{
					LEXSKIPTOKEN( 0 );
				}
				label$163:;
			}
			label$162:;
			label$161:;
		}
		label$160:;
		label$159:;
		fb$result$1 = PROCEXPR$1;
		goto label$137;
	}
	label$158:;
	label$157:;
	if( (OPTIONS$1 & 32) != 0 ) goto label$166;
	{
		label$167:;
		{
			if( ARGS$1 < PARAMS$1 ) goto label$171;
			{
				if( *(int32*)((uint8*)PARAM$1 + 56) == 4 ) goto label$173;
				{
					ERRREPORT( 1, 0, (uint8*)0u );
					if( (OPTIONS$1 & 16) == 0 ) goto label$175;
					{
						HSKIPUNTIL( 41, 0, 0, 0 );
					}
					goto label$174;
					label$175:;
					{
						HSKIPUNTIL( -1, 0, 0, 0 );
					}
					label$174:;
					ARGS$1 = ARGS$1 + -1;
					goto label$168;
				}
				label$173:;
				label$172:;
			}
			label$171:;
			label$170:;
			int32 vr$58 = HPROCARG( PROC$1, PARAM$1, ARGS$1, &EXPR$1, &MODE$1, &HAVE_EQ_OUTSIDE_PARENS$1, OPTIONS$1 );
			if( vr$58 != 0 ) goto label$177;
			{
				goto label$168;
			}
			label$177:;
			label$176:;
			struct $7ASTNODE* vr$59 = ASTNEWARG( PROCEXPR$1, EXPR$1, -2147483648u, MODE$1 );
			if( vr$59 != (struct $7ASTNODE*)0u ) goto label$179;
			{
				if( (OPTIONS$1 & 16) == 0 ) goto label$181;
				{
					HSKIPUNTIL( 41, 0, 0, 0 );
				}
				goto label$180;
				label$181:;
				{
					HSKIPUNTIL( -1, 0, 0, 0 );
				}
				label$180:;
				ASTDELTREE( PROCEXPR$1 );
				struct $7ASTNODE* vr$61 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$61;
				goto label$137;
			}
			label$179:;
			label$178:;
			ARGS$1 = ARGS$1 + 1;
			if( ARGS$1 >= PARAMS$1 ) goto label$183;
			{
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
			}
			label$183:;
			label$182:;
		}
		label$169:;
		int32 vr$64 = HMATCH( 44, 0 );
		if( vr$64 != 0 ) goto label$167;
		label$168:;
	}
	label$166:;
	label$165:;
	HMAYBEWARNABOUTEQOUTSIDEPARENS( ARGS$1, HAVE_EQ_OUTSIDE_PARENS$1, PROC$1 );
	label$184:;
	if( ARGS$1 >= PARAMS$1 ) goto label$185;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$187;
		{
			goto label$185;
		}
		label$187:;
		label$186:;
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u ) goto label$189;
		{
			ERRREPORT( 1, 0, (uint8*)0u );
			ASTDELTREE( PROCEXPR$1 );
			struct $7ASTNODE* vr$67 = ASTBUILDFAKECALL( PROC$1 );
			fb$result$1 = vr$67;
			goto label$137;
		}
		label$189:;
		label$188:;
		struct $7ASTNODE* vr$68 = ASTNEWARG( PROCEXPR$1, (struct $7ASTNODE*)0u, -2147483648u, -1 );
		if( vr$68 != (struct $7ASTNODE*)0u ) goto label$191;
		{
			ASTDELTREE( PROCEXPR$1 );
			struct $7ASTNODE* vr$69 = ASTBUILDFAKECALL( PROC$1 );
			fb$result$1 = vr$69;
			goto label$137;
		}
		label$191:;
		label$190:;
		ARGS$1 = ARGS$1 + 1;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$184;
	label$185:;
	fb$result$1 = PROCEXPR$1;
	label$137:;
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

static int32 HPROCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* PARAM$1, int32 ARGNUM$1, struct $7ASTNODE** EXPR$1, int32* AMODE$1, int32* HAVE_EQ_OUTSIDE_PARENS$1, $12FB_PARSEROPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	int32 PMODE$1;
	int32 OLD_DTYPE$1;
	struct $8FBSYMBOL* OLDSYM$1;
	fb$result$1 = 0;
	PMODE$1 = *(int32*)((uint8*)PARAM$1 + 56);
	*AMODE$1 = -1;
	*EXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$4 = LEXGETTOKEN( 0 );
	if( vr$4 != 319 ) goto label$17;
	{
		LEXSKIPTOKEN( 2048 );
		*AMODE$1 = 1;
	}
	label$17:;
	label$16:;
	OLDSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160);
	OLD_DTYPE$1 = *(int32*)((uint8*)&PARSER$ + 156);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32);
	*(int32*)((uint8*)&PARSER$ + 156) = *(int32*)((uint8*)PARAM$1 + 28) & 511;
	*(int32*)((uint8*)&PARSER$ + 164) = 0;
	struct $7ASTNODE* vr$9 = CEXPRESSION(  );
	*EXPR$1 = vr$9;
	*HAVE_EQ_OUTSIDE_PARENS$1 = *HAVE_EQ_OUTSIDE_PARENS$1 | *(int32*)((uint8*)&PARSER$ + 164);
	goto label$19;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
	}
	goto label$18;
	label$19:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
	}
	label$18:;
	if( *EXPR$1 != (struct $7ASTNODE*)0u ) goto label$21;
	{
		if( (OPTIONS$1 & 16) == 0 ) goto label$23;
		{
			*EXPR$1 = (struct $7ASTNODE*)0u;
		}
		goto label$22;
		label$23:;
		{
			if( (-(ARGNUM$1 == 0) & -(*AMODE$1 == -1)) == 0 ) goto label$25;
			{
				int32 vr$23 = HMATCH( 319, 2048 );
				if( vr$23 == 0 ) goto label$27;
				{
					*AMODE$1 = 1;
					struct $7ASTNODE* vr$25 = CEXPRESSION(  );
					*EXPR$1 = vr$25;
				}
				label$27:;
				label$26:;
			}
			label$25:;
			label$24:;
		}
		label$22:;
	}
	label$21:;
	label$20:;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = OLDSYM$1;
	*(int32*)((uint8*)&PARSER$ + 156) = OLD_DTYPE$1;
	if( *EXPR$1 != (struct $7ASTNODE*)0u ) goto label$29;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u ) goto label$31;
		{
			if( PMODE$1 != 4 ) goto label$33;
			{
				goto label$15;
			}
			label$33:;
			label$32:;
			ERRREPORT( 1, 0, (uint8*)0u );
			struct $7ASTNODE* vr$32 = ASTNEWCONSTZ( *(int32*)((uint8*)PARAM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
			*EXPR$1 = vr$32;
		}
		label$31:;
		label$30:;
	}
	goto label$28;
	label$29:;
	{
		if( PMODE$1 != 3 ) goto label$35;
		{
			int32 vr$34 = LEXGETTOKEN( 0 );
			if( vr$34 != 40 ) goto label$37;
			{
				int32 vr$35 = LEXGETLOOKAHEAD( 1, 0 );
				if( vr$35 != 41 ) goto label$39;
				{
					if( *AMODE$1 == -1 ) goto label$41;
					{
						ERRREPORT( 22, 0, (uint8*)0u );
					}
					label$41:;
					label$40:;
					LEXSKIPTOKEN( 0 );
					LEXSKIPTOKEN( 0 );
					*AMODE$1 = 3;
				}
				label$39:;
				label$38:;
			}
			label$37:;
			label$36:;
		}
		label$35:;
		label$34:;
	}
	label$28:;
	if( *AMODE$1 == -1 ) goto label$43;
	{
		if( *AMODE$1 == PMODE$1 ) goto label$45;
		{
			if( PMODE$1 == 4 ) goto label$47;
			{
				if( *AMODE$1 == 1 ) goto label$49;
				{
					if( *AMODE$1 == PMODE$1 ) goto label$51;
					{
						ERRREPORT( 22, 0, (uint8*)0u );
						*AMODE$1 = PMODE$1;
					}
					label$51:;
					label$50:;
				}
				label$49:;
				label$48:;
			}
			label$47:;
			label$46:;
		}
		label$45:;
		label$44:;
	}
	label$43:;
	label$42:;
	fb$result$1 = -1;
	label$15:;
	return fb$result$1;
}

static void HOVLPROCARG( int32 ARGNUM$1, struct $11FB_CALL_ARG* ARG$1, int32* HAVE_EQ_OUTSIDE_PARENS$1, $12FB_PARSEROPT OPTIONS$1 )
{
	label$52:;
	struct $8FBSYMBOL* OLDSYM$1;
	int32 OLD_DTYPE$1;
	*(struct $7ASTNODE**)ARG$1 = (struct $7ASTNODE*)0u;
	*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = -1;
	int32 vr$2 = HMATCH( 319, 2048 );
	if( vr$2 == 0 ) goto label$55;
	{
		*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = 1;
	}
	label$55:;
	label$54:;
	OLDSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160);
	OLD_DTYPE$1 = *(int32*)((uint8*)&PARSER$ + 156);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&PARSER$ + 156) = -2147483648u;
	*(int32*)((uint8*)&PARSER$ + 164) = 0;
	struct $7ASTNODE* vr$4 = CEXPRESSION(  );
	*(struct $7ASTNODE**)ARG$1 = vr$4;
	if( *(struct $7ASTNODE**)ARG$1 != (struct $7ASTNODE*)0u ) goto label$57;
	{
		if( (OPTIONS$1 & 16) == 0 ) goto label$59;
		{
			*(struct $7ASTNODE**)ARG$1 = (struct $7ASTNODE*)0u;
		}
		goto label$58;
		label$59:;
		{
			if( (-(ARGNUM$1 == 0) & -(*(int32*)((uint8*)ARG$1 + 4) == -1)) == 0 ) goto label$61;
			{
				int32 vr$13 = HMATCH( 319, 2048 );
				if( vr$13 == 0 ) goto label$63;
				{
					*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = 1;
					struct $7ASTNODE* vr$15 = CEXPRESSION(  );
					*(struct $7ASTNODE**)ARG$1 = vr$15;
				}
				label$63:;
				label$62:;
			}
			label$61:;
			label$60:;
		}
		label$58:;
	}
	label$57:;
	label$56:;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = OLDSYM$1;
	*(int32*)((uint8*)&PARSER$ + 156) = OLD_DTYPE$1;
	*HAVE_EQ_OUTSIDE_PARENS$1 = *HAVE_EQ_OUTSIDE_PARENS$1 | *(int32*)((uint8*)&PARSER$ + 164);
	if( *(struct $7ASTNODE**)ARG$1 == (struct $7ASTNODE*)0u ) goto label$65;
	{
		int32 vr$21 = LEXGETTOKEN( 0 );
		if( vr$21 != 40 ) goto label$67;
		{
			int32 vr$22 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$22 != 41 ) goto label$69;
			{
				if( *(int32*)((uint8*)ARG$1 + 4) == -1 ) goto label$71;
				{
					ERRREPORT( 22, 0, (uint8*)0u );
				}
				label$71:;
				label$70:;
				LEXSKIPTOKEN( 0 );
				LEXSKIPTOKEN( 0 );
				*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = 3;
			}
			label$69:;
			label$68:;
		}
		label$67:;
		label$66:;
	}
	label$65:;
	label$64:;
	label$53:;
}

static void HMAYBEWARNABOUTEQOUTSIDEPARENS( int32 ARGS$1, int32 HAVE_EQ_OUTSIDE_PARENS$1, struct $8FBSYMBOL* PROC$1 )
{
	label$72:;
	int32 WARN$1;
	WARN$1 = -((*(int32*)((uint8*)PROC$1 + 8) & 2048) != 0);
	if( WARN$1 != 0 ) goto label$75;
	{
		if( (*(int32*)((uint8*)PROC$1 + 8) & 1) <= 0 ) goto label$77;
		{
			label$78:;
			{
				PROC$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108);
				if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$82;
				{
					goto label$79;
				}
				label$82:;
				label$81:;
				WARN$1 = -((*(int32*)((uint8*)PROC$1 + 8) & 2048) != 0);
			}
			label$80:;
			if( WARN$1 == 0 ) goto label$78;
			label$79:;
		}
		label$77:;
		label$76:;
	}
	label$75:;
	label$74:;
	WARN$1 = WARN$1 & -(ARGS$1 == 1);
	WARN$1 = WARN$1 & HAVE_EQ_OUTSIDE_PARENS$1;
	if( WARN$1 == 0 ) goto label$84;
	{
		ERRREPORTWARN( 34, (uint8*)0u, 1, (uint8*)0u );
	}
	label$84:;
	label$83:;
	label$73:;
}

static struct $7ASTNODE* HGETVTABLELOOKUPIFNEEDED( struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* THISEXPR$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$85:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( (OPTIONS$1 & 2048) == 0 ) goto label$88;
	{
		if( (*(int32*)((uint8*)PROC$1 + 8) & 512) == 0 ) goto label$90;
		{
			ERRREPORT( 307, 0, (uint8*)0u );
		}
		label$90:;
		label$89:;
	}
	goto label$87;
	label$88:;
	{
		struct $7ASTNODE* vr$4 = ASTBUILDVTABLELOOKUP( PROC$1, THISEXPR$1 );
		fb$result$1 = vr$4;
	}
	label$87:;
	label$86:;
	return fb$result$1;
}

static struct $7ASTNODE* HOVLPROCARGLIST( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PROC$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $11FB_CALL_ARG* TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$91:;
	int32 I$1;
	int32 PARAMS$1;
	int32 ARGS$1;
	int32 HAVE_EQ_OUTSIDE_PARENS$1;
	struct $7ASTNODE* PROCEXPR$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* OVLPROC$1;
	struct $11FB_CALL_ARG* ARG$1;
	struct $11FB_CALL_ARG* NXT$1;
	$9FB_ERRMSG ERR_NUM$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	HAVE_EQ_OUTSIDE_PARENS$1 = 0;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 106);
	ARGS$1 = *(int32*)ARG_LIST$1;
	if( (OPTIONS$1 & 64) == 0 ) goto label$94;
	{
		ARGS$1 = ARGS$1 + -1;
	}
	label$94:;
	label$93:;
	if( (OPTIONS$1 & 32) != 0 ) goto label$96;
	{
		int32 INIT_ARGS$2;
		INIT_ARGS$2 = ARGS$1;
		label$97:;
		{
			if( ARGS$1 <= PARAMS$1 ) goto label$101;
			{
				ERRREPORT( 1, 0, (uint8*)0u );
				if( (OPTIONS$1 & 16) == 0 ) goto label$103;
				{
					HSKIPUNTIL( 41, 0, 0, 0 );
				}
				goto label$102;
				label$103:;
				{
					HSKIPUNTIL( -1, 0, 0, 0 );
				}
				label$102:;
				ARGS$1 = ARGS$1 + -1;
				goto label$98;
			}
			label$101:;
			label$100:;
			struct $11FB_CALL_ARG* vr$10 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 116), ARG_LIST$1, 0 );
			ARG$1 = vr$10;
			HOVLPROCARG( ARGS$1 - INIT_ARGS$2, ARG$1, &HAVE_EQ_OUTSIDE_PARENS$1, OPTIONS$1 );
			int32 vr$13 = LEXGETTOKEN( 0 );
			if( vr$13 == 44 ) goto label$105;
			{
				if( *(struct $7ASTNODE**)ARG$1 == (struct $7ASTNODE*)0u ) goto label$107;
				{
					ARGS$1 = ARGS$1 + 1;
				}
				label$107:;
				label$106:;
				goto label$98;
			}
			label$105:;
			label$104:;
			LEXSKIPTOKEN( 0 );
			ARGS$1 = ARGS$1 + 1;
		}
		label$99:;
		goto label$97;
		label$98:;
	}
	label$96:;
	label$95:;
	HMAYBEWARNABOUTEQOUTSIDEPARENS( ARGS$1, HAVE_EQ_OUTSIDE_PARENS$1, PROC$1 );
	$14FB_SYMBFINDOPT FIND_OPTIONS$1;
	FIND_OPTIONS$1 = 0;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 32) == 0 ) goto label$109;
	{
		if( (OPTIONS$1 & 128) == 0 ) goto label$111;
		{
			FIND_OPTIONS$1 = 1;
		}
		label$111:;
		label$110:;
	}
	label$109:;
	label$108:;
	if( (OPTIONS$1 & 64) == 0 ) goto label$112;
	TMP$92$1 = *(struct $11FB_CALL_ARG**)((uint8*)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4) + 8);
	goto label$193;
	label$112:;
	TMP$92$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
	label$193:;
	struct $8FBSYMBOL* vr$25 = SYMBFINDCLOSESTOVLPROC( PROC$1, ARGS$1, TMP$92$1, &ERR_NUM$1, FIND_OPTIONS$1 );
	OVLPROC$1 = vr$25;
	if( OVLPROC$1 != (struct $8FBSYMBOL*)0u ) goto label$114;
	{
		SYMBFREEOVLCALLARGS( (struct $5TLIST*)((uint8*)&PARSER$ + 116), ARG_LIST$1 );
		if( ERR_NUM$1 != 0 ) goto label$116;
		{
			ERR_NUM$1 = 99;
		}
		label$116:;
		label$115:;
		ERRREPORTPARAM( PROC$1, 0, (uint8*)0u, ERR_NUM$1 );
		struct $7ASTNODE* vr$27 = ASTBUILDFAKECALL( PROC$1 );
		fb$result$1 = vr$27;
		goto label$92;
	}
	label$114:;
	label$113:;
	PROC$1 = OVLPROC$1;
	int32 vr$28 = SYMBCHECKACCESS( PROC$1 );
	if( vr$28 != 0 ) goto label$118;
	{
		$9FB_ERRMSG TMP$93$2;
		uint8* vr$29 = SYMBGETFULLPROCNAME( PROC$1 );
		if( (*(int32*)((uint8*)PROC$1 + 8) & 4) == 0 ) goto label$119;
		TMP$93$2 = 205;
		goto label$194;
		label$119:;
		TMP$93$2 = 202;
		label$194:;
		ERRREPORTEX( TMP$93$2, (uint8*)vr$29, 0, 1, (uint8*)0u );
		struct $7ASTNODE* vr$32 = ASTBUILDFAKECALL( PROC$1 );
		fb$result$1 = vr$32;
		goto label$92;
	}
	label$118:;
	label$117:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$121;
	{
		if( (OPTIONS$1 & 64) != 0 ) goto label$123;
		{
			if( (-(BASE_PARENT$1 != (struct $8FBSYMBOL*)0u) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 2) == 0)) == 0 ) goto label$125;
			{
				ERRREPORT( 214, -1, (uint8*)0u );
				struct $7ASTNODE* vr$41 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$41;
				goto label$92;
			}
			label$125:;
			label$124:;
			struct $11FB_CALL_ARG* vr$43 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 116), ARG_LIST$1, -1 );
			ARG$1 = vr$43;
			struct $7ASTNODE* vr$46 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 76) + 60), (struct $8FBSYMBOL*)0u, 0ll );
			*(struct $7ASTNODE**)ARG$1 = vr$46;
			*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = -1;
		}
		label$123:;
		label$122:;
		ARGS$1 = ARGS$1 + 1;
		struct $7ASTNODE* vr$52 = HGETVTABLELOOKUPIFNEEDED( PROC$1, *(struct $7ASTNODE**)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4), OPTIONS$1 );
		PROCEXPR$1 = vr$52;
	}
	goto label$120;
	label$121:;
	{
		if( (OPTIONS$1 & 64) == 0 ) goto label$127;
		{
			ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4) = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
			ASTDELTREE( *(struct $7ASTNODE**)ARG$1 );
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 116), (void*)ARG$1 );
		}
		label$127:;
		label$126:;
		PROCEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$120:;
	struct $7ASTNODE* vr$59 = ASTNEWCALL( PROC$1, PROCEXPR$1 );
	PROCEXPR$1 = vr$59;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
	{
		I$1 = 0;
		int32 TMP$94$2;
		TMP$94$2 = ARGS$1 + -1;
		goto label$128;
		label$131:;
		{
			NXT$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
			struct $7ASTNODE* vr$66 = ASTNEWARG( PROCEXPR$1, *(struct $7ASTNODE**)ARG$1, -2147483648u, *(int32*)((uint8*)ARG$1 + 4) );
			if( vr$66 != (struct $7ASTNODE*)0u ) goto label$133;
			{
				ERRREPORT( 22, 0, (uint8*)0u );
				ASTDELTREE( PROCEXPR$1 );
				struct $7ASTNODE* vr$67 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$67;
				goto label$92;
			}
			label$133:;
			label$132:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 116), (void*)ARG$1 );
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
			ARG$1 = NXT$1;
		}
		label$129:;
		I$1 = I$1 + 1;
		label$128:;
		if( I$1 <= TMP$94$2 ) goto label$131;
		label$130:;
	}
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	label$134:;
	if( ARGS$1 >= PARAMS$1 ) goto label$135;
	{
		ASTNEWARG( PROCEXPR$1, (struct $7ASTNODE*)0u, -2147483648u, -1 );
		ARGS$1 = ARGS$1 + 1;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$134;
	label$135:;
	fb$result$1 = PROCEXPR$1;
	label$92:;
	return fb$result$1;
}
