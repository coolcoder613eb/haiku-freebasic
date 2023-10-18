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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $16ERRPARAMLOCATION {
	struct $8FBSYMBOL* PROC;
	int32 TK;
	int32 PARAMNUM;
	uint8* PARAMID;
};
__FB_STATIC_ASSERT( sizeof( struct $16ERRPARAMLOCATION ) == 16 );
typedef int32 $12FB_ERRMSGOPT;
struct $7FBTOKEN;
struct $7FBTOKEN {
	int32 ID;
	int32 CLASS;
	int32 DTYPE;
	union {
		uint8 TEXT[1025];
		uint32 TEXTW[1025];
	};
	int32 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int32 PRDPOS;
		int32 HASESC;
	};
	int32 SUFFIXCHAR;
	int32 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4136 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int32 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint32 CURRCHAR;
	uint32 LAHDCHAR1;
	uint32 LAHDCHAR2;
	int32 LINENUM;
	int32 LASTTK_ID;
	int32 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int32 IS_FB_EVAL;
	int32 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint32* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int32 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int32 FILEPOS;
	int32 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int32 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49416 );
struct $9FBWARNING {
	int32 LEVEL;
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBWARNING ) == 8 );
typedef int32 $11FB_LANG_OPT;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
void fb_PrintVoid( int32, int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
static void fb_ctor__error( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
uint32 HASHHASH( uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint32 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRHIDEFURTHERERRORS( void );
void ERRPUSHPARAMLOCATION( struct $8FBSYMBOL*, int32, int32, uint8* );
void ERRPOPPARAMLOCATION( void );
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
typedef int32 $7FB_LANG;
$11FB_LANG_OPT FBGETLANGOPTIONS( $7FB_LANG );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
uint8* SYMBKEYWORDGETTEXT( int32 );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
FBSTRING* SYMBPROCPTRTOSTR( struct $8FBSYMBOL* );
FBSTRING* SYMBMETHODTOSTR( struct $8FBSYMBOL* );
void ZSTRASSIGN( uint8**, uint8* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
uint8* LEXGETTEXT( void );
FBSTRING* LEXPEEKCURRENTLINE( FBSTRING*, int32 );
static uint8* HMAKEPARAMDESC( uint8* );
static int32 ERRHAVEPARAMLOCATION( void );
static void HPRINTERRMSG( int32, uint8*, $12FB_ERRMSGOPT, int32, int32, uint8* );
static uint8* HADDTOKEN( int32, int32, uint8* );
static FBSTRING* GETNOTALLOWEDMSG( $11FB_LANG_OPT, uint8* );
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
typedef int32 $10FB_OUTTYPE;
typedef int32 $10FB_BACKEND;
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
typedef int32 $12FB_ASMSYNTAX;
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
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
struct $9FB_ERRCTX {
	int32 INITED;
	int32 CNT;
	int32 HIDE_FURTHER_MESSAGES;
	int32 LASTLINE;
	int32 LASTSTMT;
	struct $5THASH UNDEFHASH;
	struct $5TLIST PARAMLOCATIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_ERRCTX ) == 64 );
static struct $9FB_ERRCTX ERRCTX$;
static struct $9FBWARNING WARNINGMSGS$[49] = { { 2, (uint8*)"Passing scalar as pointer" }, { 2, (uint8*)"Passing pointer to scalar" }, { 2, (uint8*)"Passing different pointer types" }, { 2, (uint8*)"Suspicious pointer assignment" }, { 1, (uint8*)"Implicit conversion" }, { 2, (uint8*)"Cannot export symbol without -export option" }, { 2, (uint8*)"Identifier's name too big, truncated" }, { 2, (uint8*)"Literal number too big, truncated" }, { 2, (uint8*)"Literal string too big, truncated" }, { 1, (uint8*)"UDT with pointer, var-len string, or var-len array fields" }, { 1, (uint8*)"Implicit variable allocation" }, { 1, (uint8*)"Missing closing quote in literal string" }, { 1, (uint8*)"Function result was not explicitly set" }, { 2, (uint8*)"Branch crossing local variable definition" }, { 1, (uint8*)"No explicit BYREF or BYVAL" }, { 1, (uint8*)"Possible escape sequence found in" }, { 1, (uint8*)"The type length is too large, consider passing BYREF" }, { 2, (uint8*)"The length of the parameters list is too large, consider passing UDT's BYREF" }, { 2, (uint8*)"The ANY initializer has no effect on UDT's with default constructors" }, { 3, (uint8*)"Object files or libraries with mixed multithreading (-mt) options" }, { 3, (uint8*)"Object files or libraries with mixed language (-lang) options" }, { 1, (uint8*)"Deleting ANY pointers is undefined" }, { 3, (uint8*)"Array too large for stack, consider making it var-len or SHARED" }, { 3, (uint8*)"Variable too large for stack, consider making it SHARED" }, { 1, (uint8*)"Overflow in constant conversion" }, { 1, (uint8*)"Variable following NEXT is meaningless" }, { 1, (uint8*)"Cast to non-pointer" }, { 1, (uint8*)"Return method mismatch" }, { 1, (uint8*)"Passing Pointer" }, { 1, (uint8*)"Command line option overrides directive" }, { 1, (uint8*)"Directive ignored after first pass" }, { 1, (uint8*)"'IF' statement found directly after multi-line 'ELSE'" }, { 1, (uint8*)"Shift value greater than or equal to number of bits in data type" }, { 1, (uint8*)"'=' parsed as equality operator in function argument, not assignment to BYREF function result" }, { 1, (uint8*)"Mixing signed/unsigned operands" }, { 1, (uint8*)"Mismatching parameter initializer" }, { 2, (uint8*)"" }, { 1, (uint8*)"Suspicious logic operation, mixed boolean and non-boolean operands" }, { 1, (uint8*)"Redefinition of intrinsic" }, { 0, (uint8*)"CONST qualifier discarded" }, { 0, (uint8*)"Return type mismatch" }, { 0, (uint8*)"Calling convention mismatch" }, { 0, (uint8*)"Argument count mismatch" }, { 1, (uint8*)"Suffix ignored" }, { 1, (uint8*)"FOR counter variable is unable to exceed limit value" }, { 1, (uint8*)"#cmdline ignored" }, { 1, (uint8*)"Use of reserved global or backend symbol" }, { 1, (uint8*)"Expected digit" }, { 1, (uint8*)"Up-casting discards initializer(s)" } };
static uint8* ERRORMSGS$[328] = { (uint8*)"Argument count mismatch", (uint8*)"Expected End-of-File", (uint8*)"Expected End-of-Line", (uint8*)"Duplicated definition", (uint8*)"Expected 'AS'", (uint8*)"Expected '('", (uint8*)"Expected ')'", (uint8*)"Undefined symbol", (uint8*)"Expected expression", (uint8*)"Expected '='", (uint8*)"Expected constant", (uint8*)"Expected 'TO'", (uint8*)"Expected 'NEXT'", (uint8*)"Expected identifier", (uint8*)"Expected '-'", (uint8*)"Expected ','", (uint8*)"Syntax error", (uint8*)"Element not defined", (uint8*)"Expected 'END TYPE' or 'END UNION'", (uint8*)"Type mismatch", (uint8*)"Internal!", (uint8*)"Parameter type mismatch", (uint8*)"File not found", (uint8*)"Invalid data types", (uint8*)"Invalid character", (uint8*)"File access error", (uint8*)"Recursion level too deep", (uint8*)"Expected pointer", (uint8*)"Expected 'LOOP'", (uint8*)"Expected 'WEND'", (uint8*)"Expected 'THEN'", (uint8*)"Expected 'END IF'", (uint8*)"Illegal 'END'", (uint8*)"Expected 'CASE'", (uint8*)"Expected 'END SELECT'", (uint8*)"Wrong number of dimensions", (uint8*)"Array boundaries do not match the original EXTERN declaration", (uint8*)"'SUB' or 'FUNCTION' without 'END SUB' or 'END FUNCTION'", (uint8*)"Expected 'END SUB' or 'END FUNCTION'", (uint8*)"Return type here does not match DECLARE prototype", (uint8*)"Calling convention does not match DECLARE prototype", (uint8*)"Variable not declared", (uint8*)"Variable required", (uint8*)"Illegal outside a compound statement", (uint8*)"Expected 'END ASM'", (uint8*)"Function not declared", (uint8*)"Expected ';'", (uint8*)"Undefined label", (uint8*)"Too many array dimensions", (uint8*)"Array too big", (uint8*)"User Defined Type too big", (uint8*)"Expected scalar counter", (uint8*)"Illegal outside a CONSTRUCTOR, DESTRUCTOR, FUNCTION, OPERATOR, PROPERTY or SUB block", (uint8*)"Expected var-len array", (uint8*)"Fixed-len strings cannot be returned from functions", (uint8*)"Array already dimensioned", (uint8*)"Illegal without the -ex option", (uint8*)"Type mismatch", (uint8*)"Illegal specification", (uint8*)"Expected 'END WITH'", (uint8*)"Illegal inside functions", (uint8*)"Statement in between SELECT and first CASE", (uint8*)"Expected array", (uint8*)"Expected '{'", (uint8*)"Expected '}'", (uint8*)"Expected ']'", (uint8*)"Too many expressions", (uint8*)"Expected explicit result type", (uint8*)"Range too large", (uint8*)"Forward references not allowed", (uint8*)"Incomplete type", (uint8*)"Array not dimensioned", (uint8*)"Array access, index expected", (uint8*)"Expected 'END ENUM'", (uint8*)"Var-len arrays cannot be initialized", (uint8*)"'...' ellipsis upper bound given for dynamic array (this is not supported)", (uint8*)"'...' ellipsis upper bound given for array field (this is not supported)", (uint8*)"Invalid bitfield", (uint8*)"Too many parameters", (uint8*)"Macro text too long", (uint8*)"Invalid command-line option", (uint8*)"Selected non-x86 CPU when compiling for DOS", (uint8*)"Selected -gen gas|gas64 ASM backend is incompatible with CPU", (uint8*)"-asm att used for -gen gas, but -gen gas only supports -asm intel", (uint8*)"-pic used when making executable (only works when making a shared library)", (uint8*)"-pic used, but not supported by target system (only works for non-x86 Unixes)", (uint8*)"Var-len strings cannot be initialized", (uint8*)"Recursive TYPE or UNION not allowed", (uint8*)"Recursive DEFINE not allowed", (uint8*)"Identifier cannot include periods", (uint8*)"Executable not found", (uint8*)"Array out-of-bounds", (uint8*)"Missing command-line option for", (uint8*)"Expected 'ANY'", (uint8*)"Expected 'END SCOPE'", (uint8*)"Illegal inside a compound statement or scoped block", (uint8*)"UDT function results cannot be passed by reference", (uint8*)"Ambiguous call to overloaded function", (uint8*)"No matching overloaded function", (uint8*)"Division by zero", (uint8*)"Cannot pop stack, underflow", (uint8*)"UDT's containing var-len string fields cannot be initialized", (uint8*)"Branching to scope block containing local variables", (uint8*)"Branching to other functions or to module-level", (uint8*)"Branch crossing local array, var-len string or object definition", (uint8*)"LOOP without DO", (uint8*)"NEXT without FOR", (uint8*)"WEND without WHILE", (uint8*)"END WITH without WITH", (uint8*)"END IF without IF", (uint8*)"END SELECT without SELECT", (uint8*)"END SUB or FUNCTION without SUB or FUNCTION", (uint8*)"END SCOPE without SCOPE", (uint8*)"END NAMESPACE without NAMESPACE", (uint8*)"END EXTERN without EXTERN", (uint8*)"ELSEIF without IF", (uint8*)"ELSE without IF", (uint8*)"CASE without SELECT", (uint8*)"Cannot modify a constant", (uint8*)"Expected period ('.')", (uint8*)"Expected 'END NAMESPACE'", (uint8*)"Illegal inside a NAMESPACE block", (uint8*)"Symbols defined inside namespaces cannot be removed", (uint8*)"Expected 'END EXTERN'", (uint8*)"Expected 'END SUB'", (uint8*)"Expected 'END FUNCTION'", (uint8*)"Expected 'END CONSTRUCTOR'", (uint8*)"Expected 'END DESTRUCTOR'", (uint8*)"Expected 'END OPERATOR'", (uint8*)"Expected 'END PROPERTY'", (uint8*)"Declaration outside the original namespace", (uint8*)"No end of multi-line comment, expected \x22'/\x22", (uint8*)"Too many errors, exiting", (uint8*)"Expected 'ENDMACRO'", (uint8*)"EXTERN or COMMON variables cannot be initialized", (uint8*)"EXTERN or COMMON dynamic arrays cannot have initial bounds", (uint8*)"At least one parameter must be a user-defined type", (uint8*)"Parameter or result must be a user-defined type", (uint8*)"Both parameters can't be of the same type", (uint8*)"Parameter and result can't be of the same type", (uint8*)"Invalid result type for this operator", (uint8*)"Invalid parameter type, it must be the same as the parent TYPE/CLASS", (uint8*)"Vararg parameters are not allowed in overloaded functions", (uint8*)"Illegal outside an OPERATOR block", (uint8*)"Parameter cannot be optional", (uint8*)"Only valid in -lang", (uint8*)"Default types or suffixes are only valid in -lang", (uint8*)"Suffixes are only valid in -lang", (uint8*)"Implicit variables are only valid in -lang", (uint8*)"Auto variables are only valid in -lang", (uint8*)"Invalid array index", (uint8*)"Operator must be a member function", (uint8*)"Operator cannot be a member function", (uint8*)"Method declared in anonymous UDT", (uint8*)"Constant declared in anonymous UDT", (uint8*)"Static variable declared in anonymous UDT", (uint8*)"Expected operator", (uint8*)"Declaration outside the original namespace or class", (uint8*)"A destructor should not have any parameters", (uint8*)"Expected class or UDT identifier", (uint8*)"Var-len strings cannot be part of UNION's or nested TYPE's", (uint8*)"Dynamic arrays cannot be part of UNION's or nested TYPE's", (uint8*)"Fields with constructors cannot be part of UNION's or nested TYPE's", (uint8*)"Fields with destructors cannot be part of UNION's or nested TYPE's", (uint8*)"Illegal outside a CONSTRUCTOR block", (uint8*)"Illegal outside a DESTRUCTOR block", (uint8*)"UDT's with methods must have unique names", (uint8*)"Parent is not a class or UDT", (uint8*)"CONSTRUCTOR() chain call not at top of constructor", (uint8*)"BASE() initializer not at top of constructor", (uint8*)"REDIM on UDT with non-CDECL constructor", (uint8*)"REDIM on UDT with non-CDECL destructor", (uint8*)"REDIM on UDT with non-parameterless default constructor", (uint8*)"ERASE on UDT with non-CDECL constructor", (uint8*)"ERASE on UDT with non-CDECL destructor", (uint8*)"ERASE on UDT with non-parameterless default constructor", (uint8*)"This symbol cannot be undefined", (uint8*)"RETURN mixed with 'FUNCTION =' or EXIT FUNCTION (using both styles together is unsupported when returning objects with constructors)", (uint8*)"'FUNCTION =' or EXIT FUNCTION mixed with RETURN (using both styles together is unsupported when returning objects with constructors)", (uint8*)"Missing RETURN to copy-construct function result", (uint8*)"Invalid assignment/conversion", (uint8*)"Invalid array subscript", (uint8*)"TYPE or CLASS has no default constructor", (uint8*)"Function result TYPE has no default constructor", (uint8*)"Missing BASE() initializer (base UDT without default constructor requires manual initialization)", (uint8*)"Missing default constructor implementation (base UDT without default constructor requires manual initialization)", (uint8*)"Missing UDT.constructor(byref as UDT) implementation (base UDT without default constructor requires manual initialization)", (uint8*)"Missing UDT.constructor(byref as const UDT) implementation (base UDT without default constructor requires manual initialization)", (uint8*)"Invalid priority attribute", (uint8*)"PROPERTY GET should have no parameter, or just one if indexed", (uint8*)"PROPERTY SET should have one parameter, or just two if indexed", (uint8*)"Expected 'PROPERTY'", (uint8*)"Illegal outside a PROPERTY block", (uint8*)"PROPERTY has no GET method/accessor", (uint8*)"PROPERTY has no SET method/accessor", (uint8*)"PROPERTY has no indexed GET method/accessor", (uint8*)"PROPERTY has no indexed SET method/accessor", (uint8*)"Missing overloaded operator: ", (uint8*)"The NEW[] operator does not allow explicit calls to constructors", (uint8*)"The NEW[] operator only supports the { ANY } initialization", (uint8*)"The NEW operator cannot be used with fixed-length strings", (uint8*)"Illegal member access", (uint8*)"Expected ':'", (uint8*)"The default constructor has no public access", (uint8*)"Constructor has no public access", (uint8*)"Destructor has no public access", (uint8*)"Accessing base UDT's private default constructor", (uint8*)"Accessing base UDT's private destructor", (uint8*)"Illegal non-static member access", (uint8*)"Constructor declared ABSTRACT", (uint8*)"Constructor declared VIRTUAL", (uint8*)"Destructor declared ABSTRACT", (uint8*)"Member cannot be static", (uint8*)"Member isn't static", (uint8*)"Only static members can be accessed from static functions and parameter initializers", (uint8*)"The PRIVATE and PUBLIC attributes are not allowed with REDIM, COMMON or EXTERN", (uint8*)"STATIC used here, but not the in the DECLARE statement", (uint8*)"CONST used here, but not the in the DECLARE statement", (uint8*)"VIRTUAL used here, but not the in the DECLARE statement", (uint8*)"ABSTRACT used here, but not the in the DECLARE statement", (uint8*)"Method declared VIRTUAL, but UDT does not extend OBJECT", (uint8*)"Method declared ABSTRACT, but UDT does not extend OBJECT", (uint8*)"Not overriding any virtual method", (uint8*)"Implemented body for an ABSTRACT method", (uint8*)"Override has different return type than overridden method", (uint8*)"Override has different calling convention than overridden method", (uint8*)"Implicit destructor override would have different calling convention", (uint8*)"Implicit LET operator override would have different calling convention", (uint8*)"Override is not a CONST member like the overridden method", (uint8*)"Override is a CONST member, but the overridden method is not", (uint8*)"Override has different parameters than overridden method", (uint8*)"This operator cannot be STATIC", (uint8*)"This operator is implicitly STATIC and cannot be VIRTUAL or ABSTRACT", (uint8*)"This operator is implicitly STATIC and cannot be CONST", (uint8*)"Parameter must be an integer", (uint8*)"Parameter must be a pointer", (uint8*)"Expected initializer", (uint8*)"Fields cannot be named as keywords in TYPE's that contain member functions or in CLASS'es", (uint8*)"Illegal outside a FOR compound statement", (uint8*)"Illegal outside a DO compound statement", (uint8*)"Illegal outside a WHILE compound statement", (uint8*)"Illegal outside a SELECT compound statement", (uint8*)"Expected 'FOR'", (uint8*)"Expected 'DO'", (uint8*)"Expected 'WHILE'", (uint8*)"Expected 'SELECT'", (uint8*)"No outer FOR compound statement found", (uint8*)"No outer DO compound statement found", (uint8*)"No outer WHILE compound statement found", (uint8*)"No outer SELECT compound statement found", (uint8*)"Expected 'CONSTRUCTOR', 'DESTRUCTOR', 'DO', 'FOR', 'FUNCTION', 'OPERATOR', 'PROPERTY', 'SELECT', 'SUB' or 'WHILE'", (uint8*)"Expected 'DO', 'FOR' or 'WHILE'", (uint8*)"Illegal outside a SUB block", (uint8*)"Illegal outside a FUNCTION block", (uint8*)"Ambiguous symbol access, explicit scope resolution required", (uint8*)"An ENUM, TYPE or UNION cannot be empty", (uint8*)"ENUM's declared inside EXTERN .. END EXTERN blocks don't open new scopes", (uint8*)"STATIC used on non-member procedure", (uint8*)"CONST used on non-member procedure", (uint8*)"ABSTRACT used on non-member procedure", (uint8*)"VIRTUAL used on non-member procedure", (uint8*)"Invalid initializer", (uint8*)"Objects with default [con|de]structors or methods are only allowed in the module level", (uint8*)"Static member variable in nested UDT (only allowed in toplevel UDTs)", (uint8*)"Symbol not a CLASS, ENUM, TYPE or UNION type", (uint8*)"Too many elements", (uint8*)"Only data members supported", (uint8*)"UNIONs are not allowed", (uint8*)"Arrays are not allowed", (uint8*)"COMMON variables cannot be object instances of CLASS/TYPE's with cons/destructors", (uint8*)"Cloning operators (LET, Copy constructors) can't take a byval arg of the parent's type", (uint8*)"Local symbols can't be referenced", (uint8*)"Expected 'PTR' or 'POINTER'", (uint8*)"Too many levels of pointer indirection", (uint8*)"Dynamic arrays can't be const", (uint8*)"Const UDT cannot invoke non-const method", (uint8*)"Elements must be empty for strings and arrays", (uint8*)"GOSUB disabled, use 'OPTION GOSUB' to enable", (uint8*)"Invalid -lang", (uint8*)"Can't use ANY as initializer in array with ellipsis bound", (uint8*)"Must have initializer with array with ellipsis bound", (uint8*)"Can't use ... as lower bound", (uint8*)"FOR/NEXT variable name mismatch", (uint8*)"Selected option requires an SSE FPU mode", (uint8*)"Expected relational operator ( =, >, <, <>, <=, >= )", (uint8*)"Unsupported statement in -gen gcc mode", (uint8*)"Too many labels", (uint8*)"Unsupported function", (uint8*)"Expected sub", (uint8*)"Expected '#ENDIF'", (uint8*)"Resource file given for target system that does not support them", (uint8*)"-o <file> option without corresponding input file", (uint8*)"Not extending a TYPE/UNION (a TYPE/UNION can only extend other TYPEs/UNIONs)", (uint8*)"Illegal outside a CLASS, TYPE or UNION method", (uint8*)"CLASS, TYPE or UNION not derived", (uint8*)"CLASS, TYPE or UNION has no constructor", (uint8*)"Symbol type has no Run-Time Type Info (RTTI)", (uint8*)"Types have no hierarchical relation", (uint8*)"Expected a CLASS, TYPE or UNION symbol type", (uint8*)"Casting derived UDT pointer from incompatible pointer type", (uint8*)"Casting derived UDT pointer from unrelated UDT pointer type", (uint8*)"Casting derived UDT pointer to incompatible pointer type", (uint8*)"Casting derived UDT pointer to unrelated UDT pointer type", (uint8*)"ALIAS name string is empty", (uint8*)"LIB name string is empty", (uint8*)"UDT has unimplemented abstract methods", (uint8*)"Non-virtual call to ABSTRACT method", (uint8*)"#ASSERT condition failed", (uint8*)"Expected '>'", (uint8*)"Invalid size", (uint8*)"ALIAS name here does not match ALIAS given in DECLARE prototype", (uint8*)"vararg parameters are only allowed in CDECL procedures", (uint8*)"the first parameter in a procedure may not be vararg", (uint8*)"CONST used on constructor (not needed)", (uint8*)"CONST used on destructor (not needed)", (uint8*)"Byref function result not set", (uint8*)"Function result assignment outside of the function", (uint8*)"Type mismatch in byref function result assignment", (uint8*)"-asm att|intel option given, but not supported for this target (only x86 or x86_64)", (uint8*)"Reference not initialized", (uint8*)"Incompatible reference initializer", (uint8*)"Array of references - not supported yet", (uint8*)"Invalid CASE range, start value is greater than the end value", (uint8*)"Fixed-length string combined with BYREF (not supported)", (uint8*)"Illegal use of reserved symbol", (uint8*)"Expected ',' or ';'", (uint8*)"Expected file number expression", (uint8*)"Malformed SOURCE_DATE_EPOCH environment variable" };

void ERRPREINIT( void )
{
	label$10:;
	*(int32*)((uint8*)&ERRCTX$ + 8) = 0;
	label$11:;
}

void ERRINIT( void )
{
	label$12:;
	*(int32*)&ERRCTX$ = *(int32*)&ERRCTX$ + 1;
	*(int32*)((uint8*)&ERRCTX$ + 4) = 0;
	*(int32*)((uint8*)&ERRCTX$ + 8) = 0;
	*(int32*)((uint8*)&ERRCTX$ + 12) = -1;
	*(int32*)((uint8*)&ERRCTX$ + 16) = -1;
	HASHINIT( (struct $5THASH*)((uint8*)&ERRCTX$ + 20), 64, -1 );
	LISTINIT( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32), 4, 16, -1 );
	label$13:;
}

void ERREND( void )
{
	label$14:;
	LISTEND( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32) );
	HASHEND( (struct $5THASH*)((uint8*)&ERRCTX$ + 20) );
	*(int32*)&ERRCTX$ = *(int32*)&ERRCTX$ + -1;
	label$15:;
}

void ERRHIDEFURTHERERRORS( void )
{
	label$16:;
	*(int32*)((uint8*)&ERRCTX$ + 8) = -1;
	label$17:;
}

int32 ERRGETCOUNT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$18:;
	fb$result$1 = *(int32*)((uint8*)&ERRCTX$ + 4);
	goto label$19;
	label$19:;
	return fb$result$1;
}

void ERRPUSHPARAMLOCATION( struct $8FBSYMBOL* PROC$1, int32 TK$1, int32 PARAMNUM$1, uint8* PARAMID$1 )
{
	label$20:;
	struct $16ERRPARAMLOCATION* L$1;
	if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$23;
	{
		if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$25;
		{
			if( PARAMNUM$1 <= 1 ) goto label$27;
			{
				PARAMNUM$1 = PARAMNUM$1 + -1;
			}
			label$27:;
			label$26:;
		}
		label$25:;
		label$24:;
	}
	label$23:;
	label$22:;
	void* vr$4 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32) );
	L$1 = (struct $16ERRPARAMLOCATION*)vr$4;
	*(struct $8FBSYMBOL**)L$1 = PROC$1;
	*(int32*)((uint8*)L$1 + 4) = TK$1;
	*(int32*)((uint8*)L$1 + 8) = PARAMNUM$1;
	*(uint8**)((uint8*)L$1 + 12) = PARAMID$1;
	label$21:;
}

void ERRPOPPARAMLOCATION( void )
{
	label$28:;
	void* vr$1 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32) );
	LISTDELNODE( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32), vr$1 );
	label$29:;
}

void ERRREPORTEX( int32 ERRNUM$1, uint8* MSGEX$1, int32 LINENUM$1, $12FB_ERRMSGOPT OPTIONS$1, uint8* CUSTOMTEXT$1 )
{
	label$63:;
	if( *(int32*)((uint8*)&ERRCTX$ + 8) == 0 ) goto label$66;
	{
		goto label$64;
	}
	label$66:;
	label$65:;
	if( *(int32*)&ERRCTX$ <= 0 ) goto label$68;
	{
		uint8* vr$0 = HMAKEPARAMDESC( MSGEX$1 );
		MSGEX$1 = vr$0;
	}
	label$68:;
	label$67:;
	if( LINENUM$1 != 0 ) goto label$70;
	{
		if( *(int32*)((uint8*)&PARSER$ + 28) != *(int32*)((uint8*)&ERRCTX$ + 16) ) goto label$72;
		{
			goto label$64;
		}
		label$72:;
		label$71:;
		if( *(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) == (struct $9LEX_TKCTX*)0u ) goto label$74;
		{
			LINENUM$1 = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
		}
		label$74:;
		label$73:;
		*(int32*)((uint8*)&ERRCTX$ + 12) = LINENUM$1;
		*(int32*)((uint8*)&ERRCTX$ + 16) = *(int32*)((uint8*)&PARSER$ + 28);
	}
	label$70:;
	label$69:;
	HPRINTERRMSG( ERRNUM$1, MSGEX$1, OPTIONS$1, LINENUM$1, *(int32*)((uint8*)&ENV$ + 192), CUSTOMTEXT$1 );
	*(int32*)((uint8*)&ERRCTX$ + 4) = *(int32*)((uint8*)&ERRCTX$ + 4) + 1;
	if( *(int32*)((uint8*)&ERRCTX$ + 4) < *(int32*)((uint8*)&ENV$ + 196) ) goto label$76;
	{
		HPRINTERRMSG( 133, (uint8*)0u, 0, LINENUM$1, 0, (uint8*)0u );
		ERRHIDEFURTHERERRORS(  );
	}
	label$76:;
	label$75:;
	label$64:;
}

void ERRREPORT( int32 ERRNUM$1, int32 ISBEFORE$1, uint8* CUSTOMTEXT$1 )
{
	label$93:;
	uint8* MSGEX$1;
	int32 vr$0 = ERRHAVEPARAMLOCATION(  );
	if( vr$0 == 0 ) goto label$96;
	{
		MSGEX$1 = (uint8*)0u;
	}
	goto label$95;
	label$96:;
	{
		uint8* vr$1 = HADDTOKEN( ISBEFORE$1, 0, (uint8*)0u );
		MSGEX$1 = vr$1;
	}
	label$95:;
	ERRREPORTEX( ERRNUM$1, MSGEX$1, 0, 1, CUSTOMTEXT$1 );
	label$94:;
}

void ERRREPORTWARNEX( int32 MSGNUM$1, uint8* MSGEX$1, int32 LINENUM$1, $12FB_ERRMSGOPT OPTIONS$1, uint8* CUSTOMTEXT$1 )
{
	FBSTRING TMP$495$1;
	FBSTRING TMP$496$1;
	FBSTRING TMP$497$1;
	FBSTRING TMP$498$1;
	label$97:;
	if( (-(MSGNUM$1 < 1) | -(MSGNUM$1 >= 50)) == 0 ) goto label$100;
	{
		goto label$98;
	}
	label$100:;
	label$99:;
	if( *(int32*)(((int32)(struct $9FBWARNING*)WARNINGMSGS$ + (MSGNUM$1 << (3 & 31))) + -8) >= *(int32*)((uint8*)&ENV$ + 188) ) goto label$102;
	{
		goto label$98;
	}
	label$102:;
	label$101:;
	if( *(int32*)((uint8*)&ERRCTX$ + 8) == 0 ) goto label$104;
	{
		goto label$98;
	}
	label$104:;
	label$103:;
	if( (*(int32*)((uint8*)&ENV$ + 200) & 512) == 0 ) goto label$106;
	{
		*(int32*)((uint8*)&ERRCTX$ + 4) = *(int32*)((uint8*)&ERRCTX$ + 4) + 1;
	}
	label$106:;
	label$105:;
	if( *(int32*)&ERRCTX$ <= 0 ) goto label$108;
	{
		uint8* vr$6 = HMAKEPARAMDESC( MSGEX$1 );
		MSGEX$1 = vr$6;
	}
	label$108:;
	label$107:;
	int32 vr$8 = fb_StrLen( (void*)((uint8*)&ENV$ + 304), 261 );
	if( vr$8 <= 0 ) goto label$110;
	{
		FBSTRING* vr$10 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 304) );
		fb_PrintString( 0, (FBSTRING*)vr$10, 0 );
	}
	goto label$109;
	label$110:;
	{
		if( MSGEX$1 == (uint8*)0u ) goto label$112;
		{
			FBSTRING* vr$11 = fb_StrAllocTempDescZ( MSGEX$1 );
			fb_PrintString( 0, (FBSTRING*)vr$11, 0 );
			MSGEX$1 = (uint8*)0u;
		}
		label$112:;
		label$111:;
	}
	label$109:;
	if( LINENUM$1 <= 0 ) goto label$114;
	{
		FBSTRING TMP$489$2;
		FBSTRING TMP$490$2;
		FBSTRING* vr$12 = fb_IntToStr( LINENUM$1 );
		__builtin_memset( &TMP$489$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$489$2, (void*)"(", 2, (void*)vr$12, -1 );
		__builtin_memset( &TMP$490$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$490$2, (void*)vr$15, -1, (void*)")", 2 );
		fb_PrintString( 0, (FBSTRING*)vr$18, 0 );
	}
	goto label$113;
	label$114:;
	{
		FBSTRING* vr$19 = fb_StrAllocTempDescZEx( (uint8*)"()", 2 );
		fb_PrintString( 0, (FBSTRING*)vr$19, 0 );
	}
	label$113:;
	if( (*(int32*)((uint8*)&ENV$ + 200) & 512) == 0 ) goto label$116;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)" error", 6 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 0 );
	}
	label$116:;
	label$115:;
	FBSTRING* vr$23 = fb_IntToStr( *(int32*)(((int32)(struct $9FBWARNING*)WARNINGMSGS$ + (MSGNUM$1 << (3 & 31))) + -8) );
	FBSTRING* vr$24 = fb_IntToStr( MSGNUM$1 );
	__builtin_memset( &TMP$495$1, 0, 12 );
	FBSTRING* vr$27 = fb_StrConcat( &TMP$495$1, (void*)" warning ", 10, (void*)vr$24, -1 );
	__builtin_memset( &TMP$496$1, 0, 12 );
	FBSTRING* vr$30 = fb_StrConcat( &TMP$496$1, (void*)vr$27, -1, (void*)"(", 2 );
	__builtin_memset( &TMP$497$1, 0, 12 );
	FBSTRING* vr$33 = fb_StrConcat( &TMP$497$1, (void*)vr$30, -1, (void*)vr$23, -1 );
	__builtin_memset( &TMP$498$1, 0, 12 );
	FBSTRING* vr$36 = fb_StrConcat( &TMP$498$1, (void*)vr$33, -1, (void*)"): ", 4 );
	fb_PrintString( 0, (FBSTRING*)vr$36, 0 );
	FBSTRING* vr$38 = fb_StrAllocTempDescZ( *(uint8**)(((int32)(struct $9FBWARNING*)WARNINGMSGS$ + (MSGNUM$1 << (3 & 31))) + -4) );
	fb_PrintString( 0, (FBSTRING*)vr$38, 0 );
	if( CUSTOMTEXT$1 == (uint8*)0u ) goto label$118;
	{
		FBSTRING* vr$39 = fb_StrAllocTempDescZ( CUSTOMTEXT$1 );
		fb_PrintString( 0, (FBSTRING*)vr$39, 0 );
	}
	label$118:;
	label$117:;
	if( MSGEX$1 == (uint8*)0u ) goto label$120;
	{
		if( (OPTIONS$1 & 1) == 0 ) goto label$122;
		{
			FBSTRING* vr$41 = fb_StrAllocTempDescZEx( (uint8*)", ", 2 );
			fb_PrintString( 0, (FBSTRING*)vr$41, 0 );
		}
		goto label$121;
		label$122:;
		if( (OPTIONS$1 & 2) == 0 ) goto label$123;
		{
			FBSTRING* vr$43 = fb_StrAllocTempDescZEx( (uint8*)": ", 2 );
			fb_PrintString( 0, (FBSTRING*)vr$43, 0 );
		}
		goto label$121;
		label$123:;
		{
			FBSTRING* vr$44 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
			fb_PrintString( 0, (FBSTRING*)vr$44, 0 );
		}
		label$121:;
		if( (OPTIONS$1 & 4) == 0 ) goto label$125;
		{
			FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
			fb_PrintString( 0, (FBSTRING*)vr$46, 0 );
		}
		label$125:;
		label$124:;
		FBSTRING* vr$47 = fb_StrAllocTempDescZ( MSGEX$1 );
		fb_PrintString( 0, (FBSTRING*)vr$47, 0 );
		if( (OPTIONS$1 & 4) == 0 ) goto label$127;
		{
			FBSTRING* vr$49 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
			fb_PrintString( 0, (FBSTRING*)vr$49, 0 );
		}
		label$127:;
		label$126:;
	}
	label$120:;
	label$119:;
	fb_PrintVoid( 0, 1 );
	label$98:;
}

void ERRREPORTWARN( int32 MSGNUM$1, uint8* MSGEX$1, $12FB_ERRMSGOPT OPTIONS$1, uint8* CUSTOMTEXT$1 )
{
	label$128:;
	ERRREPORTWARNEX( MSGNUM$1, MSGEX$1, *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568), OPTIONS$1, CUSTOMTEXT$1 );
	label$129:;
}

void ERRREPORTNOTALLOWED( $11FB_LANG_OPT OPT$1, int32 ERRNUM$1, uint8* MSGEX$1 )
{
	label$140:;
	FBSTRING MSG$1;
	FBSTRING* vr$0 = GETNOTALLOWEDMSG( OPT$1, MSGEX$1 );
	fb_StrInit( (void*)&MSG$1, -1, (void*)vr$0, -1, 0 );
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&MSG$1, 0, 0, (uint8*)0u );
	fb_StrDelete( (FBSTRING*)&MSG$1 );
	label$141:;
}

void ERRREPORTPARAM( struct $8FBSYMBOL* PROC$1, int32 PARAMNUM$1, uint8* PARAMID$1, int32 MSGNUM$1 )
{
	label$192:;
	ERRPUSHPARAMLOCATION( PROC$1, -1, PARAMNUM$1, PARAMID$1 );
	ERRREPORTEX( MSGNUM$1, (uint8*)0u, 0, 1, (uint8*)0u );
	ERRPOPPARAMLOCATION(  );
	label$193:;
}

void ERRREPORTPARAMWARN( struct $8FBSYMBOL* PROC$1, int32 PARAMNUM$1, uint8* PARAMID$1, int32 MSGNUM$1 )
{
	label$194:;
	ERRPUSHPARAMLOCATION( PROC$1, -1, PARAMNUM$1, PARAMID$1 );
	ERRREPORTWARN( MSGNUM$1, (uint8*)0u, 1, (uint8*)0u );
	ERRPOPPARAMLOCATION(  );
	label$195:;
}

void ERRREPORTUNDEF( int32 ERRNUM$1, uint8* ID$1 )
{
	label$196:;
	uint32 HASH$1;
	__builtin_memset( &HASH$1, 0, 4 );
	uint8* ID_CPY$1;
	__builtin_memset( &ID_CPY$1, 0, 4 );
	uint32 vr$2 = HASHHASH( (uint8*)ID$1 );
	HASH$1 = vr$2;
	void* vr$4 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&ERRCTX$ + 20), (uint8*)ID$1, HASH$1 );
	if( vr$4 == (void*)0u ) goto label$199;
	{
		goto label$197;
	}
	label$199:;
	label$198:;
	ID_CPY$1 = (uint8*)0u;
	ZSTRASSIGN( &ID_CPY$1, ID$1 );
	HASHADD( (struct $5THASH*)((uint8*)&ERRCTX$ + 20), (uint8*)ID_CPY$1, (void*)ID_CPY$1, HASH$1 );
	ERRREPORTEX( ERRNUM$1, (uint8*)ID$1, 0, 1, (uint8*)0u );
	label$197:;
}

__attribute__(( constructor )) static void fb_ctor__error( void )
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

static int32 ERRHAVEPARAMLOCATION( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	void* vr$2 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32) );
	fb$result$1 = -(vr$2 != (void*)0u);
	label$31:;
	return fb$result$1;
}

static void HPRINTERRMSG( int32 ERRNUM$1, uint8* MSGEX$1, $12FB_ERRMSGOPT OPTIONS$1, int32 LINENUM$1, int32 SHOWERROR$1, uint8* CUSTOMTEXT$1 )
{
	label$32:;
	static uint8* MSG$1;
	static FBSTRING TOKEN_POS$1;
	if( (-(ERRNUM$1 < 1) | -(ERRNUM$1 >= 329)) == 0 ) goto label$35;
	{
		MSG$1 = (uint8*)0u;
	}
	goto label$34;
	label$35:;
	{
		MSG$1 = *(uint8**)(((int32)(uint8**)ERRORMSGS$ + (ERRNUM$1 << (2 & 31))) + -4);
	}
	label$34:;
	if( MSGEX$1 != (uint8*)0u ) goto label$37;
	{
		MSGEX$1 = (uint8*)"";
	}
	label$37:;
	label$36:;
	int32 vr$5 = fb_StrLen( (void*)((uint8*)&ENV$ + 304), 261 );
	if( vr$5 <= 0 ) goto label$39;
	{
		FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 304) );
		fb_PrintString( 0, (FBSTRING*)vr$7, 0 );
		FBSTRING* vr$8 = fb_StrAllocTempDescZEx( (uint8*)"(", 1 );
		fb_PrintString( 0, (FBSTRING*)vr$8, 0 );
		if( LINENUM$1 <= 0 ) goto label$41;
		{
			FBSTRING* vr$9 = fb_IntToStr( LINENUM$1 );
			fb_PrintString( 0, (FBSTRING*)vr$9, 0 );
		}
		label$41:;
		label$40:;
		FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (uint8*)") ", 2 );
		fb_PrintString( 0, (FBSTRING*)vr$10, 0 );
	}
	label$39:;
	label$38:;
	FBSTRING* vr$11 = fb_StrAllocTempDescZEx( (uint8*)"error", 5 );
	fb_PrintString( 0, (FBSTRING*)vr$11, 0 );
	if( ERRNUM$1 < 0 ) goto label$43;
	{
		FBSTRING TMP$476$2;
		FBSTRING TMP$477$2;
		FBSTRING TMP$478$2;
		FBSTRING* vr$12 = fb_IntToStr( ERRNUM$1 );
		__builtin_memset( &TMP$476$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$476$2, (void*)" ", 2, (void*)vr$12, -1 );
		__builtin_memset( &TMP$477$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$477$2, (void*)vr$15, -1, (void*)": ", 3 );
		__builtin_memset( &TMP$478$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$478$2, (void*)vr$18, -1, (void*)MSG$1, 0 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 0 );
		if( CUSTOMTEXT$1 == (uint8*)0u ) goto label$45;
		{
			FBSTRING* vr$22 = fb_StrAllocTempDescZ( CUSTOMTEXT$1 );
			fb_PrintString( 0, (FBSTRING*)vr$22, 0 );
		}
		label$45:;
		label$44:;
		if( SHOWERROR$1 == 0 ) goto label$47;
		{
			SHOWERROR$1 = -(LINENUM$1 > 0);
		}
		label$47:;
		label$46:;
		int32 vr$24 = fb_StrLen( (void*)MSGEX$1, 0 );
		if( vr$24 <= 0 ) goto label$49;
		{
			if( (OPTIONS$1 & 1) == 0 ) goto label$51;
			{
				FBSTRING* vr$26 = fb_StrAllocTempDescZEx( (uint8*)", ", 2 );
				fb_PrintString( 0, (FBSTRING*)vr$26, 0 );
			}
			goto label$50;
			label$51:;
			if( (OPTIONS$1 & 2) == 0 ) goto label$52;
			{
				FBSTRING* vr$28 = fb_StrAllocTempDescZEx( (uint8*)": ", 2 );
				fb_PrintString( 0, (FBSTRING*)vr$28, 0 );
			}
			goto label$50;
			label$52:;
			{
				FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
				fb_PrintString( 0, (FBSTRING*)vr$29, 0 );
			}
			label$50:;
			if( (OPTIONS$1 & 4) == 0 ) goto label$54;
			{
				FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
				fb_PrintString( 0, (FBSTRING*)vr$31, 0 );
			}
			label$54:;
			label$53:;
			FBSTRING* vr$32 = fb_StrAllocTempDescZ( MSGEX$1 );
			fb_PrintString( 0, (FBSTRING*)vr$32, 0 );
			if( (OPTIONS$1 & 4) == 0 ) goto label$56;
			{
				FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
				fb_PrintString( 0, (FBSTRING*)vr$34, 0 );
			}
			label$56:;
			label$55:;
		}
		label$49:;
		label$48:;
		if( SHOWERROR$1 == 0 ) goto label$58;
		{
			static FBSTRING LN$3;
			FBSTRING* vr$37 = LEXPEEKCURRENTLINE( &TOKEN_POS$1, -((*(int32*)((uint8*)&ENV$ + 1040) & 256) != 0) );
			fb_StrAssign( (void*)&LN$3, -1, (void*)vr$37, -1, 0 );
			int32 vr$38 = fb_StrLen( (void*)&LN$3, -1 );
			if( vr$38 <= 0 ) goto label$60;
			{
				if( (*(int32*)((uint8*)&ENV$ + 1040) & 256) == 0 ) goto label$62;
				{
					FBSTRING TMP$483$5;
					FBSTRING TMP$484$5;
					__builtin_memset( &TMP$483$5, 0, 12 );
					FBSTRING* vr$42 = fb_StrConcat( &TMP$483$5, (void*)" in '", 6, (void*)&LN$3, -1 );
					__builtin_memset( &TMP$484$5, 0, 12 );
					FBSTRING* vr$45 = fb_StrConcat( &TMP$484$5, (void*)vr$42, -1, (void*)"'", 2 );
					fb_PrintString( 0, (FBSTRING*)vr$45, 1 );
				}
				goto label$61;
				label$62:;
				{
					fb_PrintVoid( 0, 1 );
					FBSTRING* vr$46 = LEXPEEKCURRENTLINE( &TOKEN_POS$1, 0 );
					fb_PrintString( 0, (FBSTRING*)vr$46, 1 );
					fb_PrintString( 0, (FBSTRING*)&TOKEN_POS$1, 1 );
				}
				label$61:;
			}
			goto label$59;
			label$60:;
			{
				fb_PrintVoid( 0, 1 );
			}
			label$59:;
		}
		goto label$57;
		label$58:;
		{
			fb_PrintVoid( 0, 1 );
		}
		label$57:;
	}
	goto label$42;
	label$43:;
	{
		FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)": ", 2 );
		fb_PrintString( 0, (FBSTRING*)vr$47, 0 );
		FBSTRING* vr$48 = fb_StrAllocTempDescZ( MSGEX$1 );
		fb_PrintString( 0, (FBSTRING*)vr$48, 1 );
	}
	label$42:;
	label$33:;
}

static uint8* HADDTOKEN( int32 ISBEFORE$1, int32 ADDCOMMA$1, uint8* MSGEX$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$77:;
	static FBSTRING RES$1;
	static FBSTRING TOKEN$1;
	fb_StrAssign( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( MSGEX$1 != (uint8*)0u ) goto label$80;
	{
		uint8* vr$1 = LEXGETTEXT(  );
		fb_StrAssign( (void*)&TOKEN$1, -1, (void*)vr$1, 0, 0 );
	}
	goto label$79;
	label$80:;
	{
		fb_StrAssign( (void*)&TOKEN$1, -1, (void*)MSGEX$1, 0, 0 );
	}
	label$79:;
	int32 vr$2 = fb_StrLen( (void*)&TOKEN$1, -1 );
	if( vr$2 <= 0 ) goto label$82;
	{
		{
			int32 TMP$485$3;
			int32 vr$3 = LEXGETTOKEN( 0 );
			TMP$485$3 = vr$3;
			if( TMP$485$3 <= 32 ) goto label$85;
			label$86:;
			if( TMP$485$3 == 257 ) goto label$85;
			label$87:;
			if( TMP$485$3 != 256 ) goto label$84;
			label$85:;
			{
			}
			goto label$83;
			label$84:;
			{
				if( ADDCOMMA$1 == 0 ) goto label$90;
				{
					fb_StrConcatAssign( (void*)&RES$1, -1, (void*)", ", 3, 0 );
				}
				label$90:;
				label$89:;
				if( ISBEFORE$1 == 0 ) goto label$92;
				{
					fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"before '", 9, 0 );
				}
				goto label$91;
				label$92:;
				{
					fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"found '", 8, 0 );
				}
				label$91:;
				fb_StrConcatAssign( (void*)&RES$1, -1, (void*)&TOKEN$1, -1, 0 );
				fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"'", 2, 0 );
			}
			label$88:;
			label$83:;
		}
	}
	label$82:;
	label$81:;
	fb$result$1 = (uint8*)*(uint8**)&RES$1;
	label$78:;
	return fb$result$1;
}

static FBSTRING* GETNOTALLOWEDMSG( $11FB_LANG_OPT OPT$1, uint8* MSGEX$1 )
{
	FBSTRING TMP$500$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$130:;
	FBSTRING MSG$1;
	fb_StrInit( (void*)&MSG$1, -1, (void*)"", 1, 0 );
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	int32 LANGS$1;
	__builtin_memset( &LANGS$1, 0, 4 );
	LANGS$1 = 0;
	{
		I$1 = 0;
		label$135:;
		{
			$11FB_LANG_OPT vr$4 = FBGETLANGOPTIONS( I$1 );
			if( (vr$4 & OPT$1) == 0 ) goto label$137;
			{
				if( LANGS$1 <= 0 ) goto label$139;
				{
					fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)" or ", 5, 0 );
				}
				label$139:;
				label$138:;
				FBSTRING* vr$7 = FBGETLANGNAME( I$1 );
				fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)vr$7, -1, 0 );
				LANGS$1 = LANGS$1 + 1;
			}
			label$137:;
			label$136:;
		}
		label$133:;
		I$1 = I$1 + 1;
		label$132:;
		if( I$1 <= 3 ) goto label$135;
		label$134:;
	}
	uint8* vr$12 = HADDTOKEN( 0, -(LANGS$1 > 0), MSGEX$1 );
	__builtin_memset( &TMP$500$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$500$1, (void*)&MSG$1, -1, (void*)vr$12, 0 );
	fb_StrAssign( (void*)&MSG$1, -1, (void*)vr$16, -1, 0 );
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&MSG$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&MSG$1 );
	goto label$131;
	fb_StrDelete( (FBSTRING*)&MSG$1 );
	label$131:;
	FBSTRING* vr$23 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$23;
}

static uint8* HMAKEPARAMDESC( uint8* MSGEX$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$142:;
	static FBSTRING DESC$1;
	struct $16ERRPARAMLOCATION* PARAMLOC$1;
	struct $8FBSYMBOL* PROC$1;
	uint8* PNAME$1;
	uint8* PID$1;
	int32 PNUM$1;
	int32 ADDPRNTS$1;
	void* vr$2 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&ERRCTX$ + 32) );
	PARAMLOC$1 = (struct $16ERRPARAMLOCATION*)vr$2;
	if( PARAMLOC$1 != (struct $16ERRPARAMLOCATION*)0u ) goto label$145;
	{
		fb$result$1 = MSGEX$1;
		goto label$143;
	}
	label$145:;
	label$144:;
	PROC$1 = *(struct $8FBSYMBOL**)PARAMLOC$1;
	PNUM$1 = *(int32*)((uint8*)PARAMLOC$1 + 8);
	PID$1 = *(uint8**)((uint8*)PARAMLOC$1 + 12);
	fb_StrAssign( (void*)&DESC$1, -1, (void*)"", 1, 0 );
	if( MSGEX$1 == (uint8*)0u ) goto label$147;
	{
		FBSTRING TMP$501$2;
		__builtin_memset( &TMP$501$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$501$2, (void*)MSGEX$1, 0, (void*)" ", 2 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$8, -1, 0 );
	}
	label$147:;
	label$146:;
	if( PNUM$1 <= 0 ) goto label$149;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"at parameter ", 14, 0 );
		FBSTRING* vr$9 = fb_IntToStr( PNUM$1 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$9, -1, 0 );
		if( PID$1 != (uint8*)0u ) goto label$151;
		{
			if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$153;
			{
				int32 TMP$503$4;
				struct $8FBSYMBOL* PARAM$4;
				PARAM$4 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
				int32 CNT$4;
				if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$154;
				TMP$503$4 = 0;
				goto label$200;
				label$154:;
				TMP$503$4 = 1;
				label$200:;
				CNT$4 = TMP$503$4;
				label$155:;
				if( PARAM$4 == (struct $8FBSYMBOL*)0u ) goto label$156;
				{
					if( CNT$4 != PNUM$1 ) goto label$158;
					{
						goto label$156;
					}
					label$158:;
					label$157:;
					CNT$4 = CNT$4 + 1;
					PARAM$4 = *(struct $8FBSYMBOL**)((uint8*)PARAM$4 + 176);
				}
				goto label$155;
				label$156:;
				if( PARAM$4 == (struct $8FBSYMBOL*)0u ) goto label$160;
				{
					PID$1 = *(uint8**)((uint8*)PARAM$4 + 16);
				}
				label$160:;
				label$159:;
			}
			label$153:;
			label$152:;
		}
		label$151:;
		label$150:;
		if( PID$1 == (uint8*)0u ) goto label$162;
		{
			int32 vr$16 = fb_StrLen( (void*)PID$1, 0 );
			if( vr$16 <= 0 ) goto label$164;
			{
				FBSTRING TMP$505$4;
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)" (", 3, 0 );
				__builtin_memset( &TMP$505$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$505$4, (void*)&DESC$1, -1, (void*)PID$1, 0 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$19, -1, 0 );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)")", 2, 0 );
			}
			label$164:;
			label$163:;
		}
		label$162:;
		label$161:;
	}
	label$149:;
	label$148:;
	if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$166;
	{
		int32 SHOWNAME$2;
		SHOWNAME$2 = -1;
		PNAME$1 = (uint8*)0u;
		if( (*(int32*)((uint8*)PROC$1 + 12) & 32) == 0 ) goto label$168;
		{
			if( *(uint8**)((uint8*)PROC$1 + 16) == (uint8*)0u ) goto label$170;
			{
				FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)PROC$1 + 16) );
				FBSTRING* vr$25 = fb_LEFT( (FBSTRING*)vr$24, 3 );
				int32 vr$26 = fb_StrCompare( (void*)vr$25, -1, (void*)"FB_", 4 );
				if( vr$26 != 0 ) goto label$172;
				{
					SHOWNAME$2 = 0;
				}
				label$172:;
				label$171:;
			}
			goto label$169;
			label$170:;
			{
				SHOWNAME$2 = 0;
			}
			label$169:;
		}
		goto label$167;
		label$168:;
		{
			static FBSTRING S$3;
			if( (*(int32*)((uint8*)PROC$1 + 12) & 16384) == 0 ) goto label$174;
			{
				FBSTRING* vr$29 = SYMBPROCPTRTOSTR( PROC$1 );
				fb_StrAssign( (void*)&S$3, -1, (void*)vr$29, -1, 0 );
				PNAME$1 = (uint8*)*(uint8**)&S$3;
			}
			goto label$173;
			label$174:;
			if( (*(int32*)((uint8*)PROC$1 + 8) & 4124) == 0 ) goto label$175;
			{
				FBSTRING* vr$32 = SYMBMETHODTOSTR( PROC$1 );
				fb_StrAssign( (void*)&S$3, -1, (void*)vr$32, -1, 0 );
				PNAME$1 = (uint8*)*(uint8**)&S$3;
			}
			label$175:;
			label$173:;
		}
		label$167:;
		if( SHOWNAME$2 == 0 ) goto label$177;
		{
			if( PNAME$1 != (uint8*)0u ) goto label$179;
			{
				ADDPRNTS$1 = -1;
				PNAME$1 = *(uint8**)((uint8*)PROC$1 + 16);
				if( PNAME$1 == (uint8*)0u ) goto label$181;
				{
					int32 vr$34 = fb_StrLen( (void*)PNAME$1, 0 );
					if( vr$34 != 0 ) goto label$183;
					{
						uint8* vr$35 = SYMBGETMANGLEDNAME( PROC$1 );
						PNAME$1 = vr$35;
					}
					label$183:;
					label$182:;
				}
				label$181:;
				label$180:;
			}
			goto label$178;
			label$179:;
			{
				ADDPRNTS$1 = 0;
			}
			label$178:;
			if( PNAME$1 == (uint8*)0u ) goto label$185;
			{
				FBSTRING TMP$508$4;
				if( PNUM$1 <= 0 ) goto label$187;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)" of ", 5, 0 );
				}
				label$187:;
				label$186:;
				__builtin_memset( &TMP$508$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$508$4, (void*)&DESC$1, -1, (void*)PNAME$1, 0 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$38, -1, 0 );
				if( ADDPRNTS$1 == 0 ) goto label$189;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"()", 3, 0 );
				}
				label$189:;
				label$188:;
			}
			label$185:;
			label$184:;
		}
		label$177:;
		label$176:;
	}
	goto label$165;
	label$166:;
	{
		FBSTRING TMP$509$2;
		if( PNUM$1 <= 0 ) goto label$191;
		{
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)" of ", 5, 0 );
		}
		label$191:;
		label$190:;
		uint8* vr$40 = SYMBKEYWORDGETTEXT( *(int32*)((uint8*)PARAMLOC$1 + 4) );
		__builtin_memset( &TMP$509$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$509$2, (void*)&DESC$1, -1, (void*)vr$40, 0 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$43, -1, 0 );
	}
	label$165:;
	fb$result$1 = (uint8*)*(uint8**)&DESC$1;
	label$143:;
	return fb$result$1;
}
