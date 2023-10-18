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
typedef FBSTRING* (*tmp$27)( void );
struct $7SYMBDEF {
	uint8* NAME;
	uint8* VALUE;
	int32 FLAGS;
	tmp$27 PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBDEF ) == 16 );
typedef int32 $15FB_DEFINE_FLAGS;
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int32 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 12 );
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
struct $9SYMBMACRO {
	uint8* NAME;
	$15FB_DEFINE_FLAGS FLAGS;
	tmp$28 PROCZ;
	tmp$29 PROCW;
	int32 NPARAMS;
	uint8* PARAMS[5];
};
__FB_STATIC_ASSERT( sizeof( struct $9SYMBMACRO ) == 40 );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
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
typedef int32 $7FB_LANG;
typedef int32 $10FB_BACKEND;
typedef int32 $12FB_ASMSYNTAX;
typedef int32 $9FB_ERRMSG;
struct $21SYMB_DEF_UNIQUEID_ELM;
struct $21SYMB_DEF_UNIQUEID_ELM {
	uint8* NAME;
	struct $21SYMB_DEF_UNIQUEID_ELM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $21SYMB_DEF_UNIQUEID_ELM ) == 8 );
struct $23SYMB_DEF_UNIQUEID_STACK {
	struct $21SYMB_DEF_UNIQUEID_ELM* TOP;
};
__FB_STATIC_ASSERT( sizeof( struct $23SYMB_DEF_UNIQUEID_STACK ) == 4 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 120 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
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
#define fb_D2UL( value ) ((uint64)__builtin_nearbyint( value ))
void fb_ArrayStrErase( struct $7FBARRAYIvE* );
void* malloc( uint32 );
void* calloc( uint32, uint32 );
void free( void* );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
uint32* fb_WstrAlloc( int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_WstrToStr( uint32* );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
uint32* fb_WstrMid( uint32*, int32, int32 );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
FBSTRING* fb_TRIM( FBSTRING* );
boolean fb_VALBOOL( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
uint64 fb_VALULNG( FBSTRING* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
FBSTRING* fb_GetEnviron( FBSTRING* );
static void fb_ctor__symbzdefine( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
uint32 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint32 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint32 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
int32 FBGETOPTION( int32 );
int32 FBIS64BIT( void );
int32 FBGETCPUFAMILY( void );
int32 FBISHOSTBIGENDIAN( void );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTISCONSTANT( struct $7ASTNODE* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
uint32* ASTCONSTFLUSHTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int32, int32, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int32, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
uint8* SYMBGETCONSTSTRASSTR( struct $8FBSYMBOL* );
uint32* SYMBGETCONSTSTRASWSTR( struct $8FBSYMBOL* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
void SYMBMANGLERESETABBREV( void );
typedef int32 $12FB_MANGLEOPT;
void SYMBMANGLETYPE( FBSTRING*, int32, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
FBSTRING* SYMBTYPETOSTR( int32, struct $8FBSYMBOL*, int64, int32 );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
void HUCASE( uint8*, uint8* );
void ZSTRASSIGN( uint8**, uint8* );
void ZSTRASSIGNW( uint8**, uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
uint32* HREPLACEW( uint32*, uint32*, uint32* );
uint8* HREPLACECHAR( uint8*, int32, int32 );
int32 HSTR2LONG( FBSTRING*, int32* );
int32 HSTR2TOK( uint8*, struct $7FBARRAYI8FBSTRINGE* );
int32 HSTR2ARGS( uint8*, struct $7FBARRAYI8FBSTRINGE* );
FBSTRING* FBGETINPUTFILEPARENTDIR( void );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
void LEXINIT( int32, int32 );
void LEXPUSHCTX( void );
void LEXPOPCTX( void );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
void CTYPEOF( int32*, struct $8FBSYMBOL**, int64*, int32*, struct $8FBSYMBOL** );
struct $8FBSYMBOL* CIDENTIFIERORUDTMEMBER( struct $8FBSYMBOL**, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CEXPRESSION( void );
void CUDTTYPEMEMBER( int32*, struct $8FBSYMBOL**, int64*, int32*, struct $8FBSYMBOL** );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
double fb_Now( void );
FBSTRING* fb_StrFormat( double, FBSTRING* );
static FBSTRING* HDEFFILE_CB( void );
static FBSTRING* HDEFPATH_CB( void );
static FBSTRING* HDEFFUNCTION_CB( void );
static FBSTRING* HDEFLINE_CB( void );
static double UNIXTIMETODATESERIAL( int64 );
static boolean HCHECKSOURCEDATEEPOCH( FBSTRING* );
static double HGETCOMPILETIME( void );
static FBSTRING* HDEFDATE_CB( void );
static FBSTRING* HDEFDATEISO_CB( void );
static FBSTRING* HDEFTIME_CB( void );
static FBSTRING* HDEFMULTITHREAD_CB( void );
static FBSTRING* HDEFOPTBYVAL_CB( void );
static FBSTRING* HDEFOPTDYNAMIC_CB( void );
static FBSTRING* HDEFOPTESCAPE_CB( void );
static FBSTRING* HDEFOPTEXPLICIT_CB( void );
static FBSTRING* HDEFOPTPRIVATE_CB( void );
static FBSTRING* HDEFOPTGOSUB_CB( void );
static FBSTRING* HDEFGUI_CB( void );
static FBSTRING* HDEFOPTIMIZE_CB( void );
static FBSTRING* HDEFOUTEXE_CB( void );
static FBSTRING* HDEFOUTLIB_CB( void );
static FBSTRING* HDEFOUTDLL_CB( void );
static FBSTRING* HDEFOUTOBJ_CB( void );
static FBSTRING* HDEFDEBUG_CB( void );
static FBSTRING* HDEFERR_CB( void );
static FBSTRING* HDEFLANG_CB( void );
static FBSTRING* HDEFBACKEND_CB( void );
static FBSTRING* HDEFFPU_CB( void );
static FBSTRING* HDEFFPMODE_CB( void );
static FBSTRING* HDEFGCC_CB( void );
static FBSTRING* HDEFASM_CB( void );
static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB*, int32 );
static uint32* HMACRO_GETARGW( struct $11LEXPP_ARGTB*, int32 );
static FBSTRING* HMACRO_EVALZ( uint8*, int32* );
static uint32* HMACRO_EVALW( uint32*, int32* );
static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFJOINW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFEVALZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFEVALW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFIIFZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFIIFW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFQUERYSYMZ_CB( struct $11LEXPP_ARGTB*, int32* );
static void HRESETDEFHASH( void );
static void HDELDEFINEPARAMS( struct $8FBSYMBOL* );
static void HDELDEFINETOKENS( struct $8FBSYMBOL* );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
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
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int32 LEVEL;
	int32 SKIPPING;
	int32 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 232 );
extern struct $6PP_CTX PP$;
static struct $7SYMBDEF DEFTB$[37] = { { (uint8*)"__FB_VERSION__", (uint8*)"1.10.0", 1, (tmp$27)0u }, { (uint8*)"__FB_BUILD_DATE__", (uint8*)"10-18-2023", 1, (tmp$27)0u }, { (uint8*)"__FB_BUILD_DATE_ISO__", (uint8*)"2023-10-18", 1, (tmp$27)0u }, { (uint8*)"__FB_VER_MAJOR__", (uint8*)"1", 0, (tmp$27)0u }, { (uint8*)"__FB_VER_MINOR__", (uint8*)"10", 0, (tmp$27)0u }, { (uint8*)"__FB_VER_PATCH__", (uint8*)"0", 0, (tmp$27)0u }, { (uint8*)"__FB_SIGNATURE__", (uint8*)"FreeBASIC 1.10.0", 1, (tmp$27)0u }, { (uint8*)"__FB_BUILD_SHA1__", (uint8*)"", 1, (tmp$27)0u }, { (uint8*)"__FB_MT__", (uint8*)0u, 0, (tmp$27)&HDEFMULTITHREAD_CB }, { (uint8*)"__FILE__", (uint8*)0u, 1, (tmp$27)&HDEFFILE_CB }, { (uint8*)"__FILE_NQ__", (uint8*)0u, 0, (tmp$27)&HDEFFILE_CB }, { (uint8*)"__FUNCTION__", (uint8*)0u, 1, (tmp$27)&HDEFFUNCTION_CB }, { (uint8*)"__FUNCTION_NQ__", (uint8*)0u, 0, (tmp$27)&HDEFFUNCTION_CB }, { (uint8*)"__LINE__", (uint8*)0u, 0, (tmp$27)&HDEFLINE_CB }, { (uint8*)"__DATE__", (uint8*)0u, 1, (tmp$27)&HDEFDATE_CB }, { (uint8*)"__DATE_ISO__", (uint8*)0u, 1, (tmp$27)&HDEFDATEISO_CB }, { (uint8*)"__TIME__", (uint8*)0u, 1, (tmp$27)&HDEFTIME_CB }, { (uint8*)"__PATH__", (uint8*)0u, 1, (tmp$27)&HDEFPATH_CB }, { (uint8*)"__FB_OPTION_BYVAL__", (uint8*)0u, 0, (tmp$27)&HDEFOPTBYVAL_CB }, { (uint8*)"__FB_OPTION_DYNAMIC__", (uint8*)0u, 0, (tmp$27)&HDEFOPTDYNAMIC_CB }, { (uint8*)"__FB_OPTION_ESCAPE__", (uint8*)0u, 0, (tmp$27)&HDEFOPTESCAPE_CB }, { (uint8*)"__FB_OPTION_EXPLICIT__", (uint8*)0u, 0, (tmp$27)&HDEFOPTEXPLICIT_CB }, { (uint8*)"__FB_OPTION_PRIVATE__", (uint8*)0u, 0, (tmp$27)&HDEFOPTPRIVATE_CB }, { (uint8*)"__FB_OPTION_GOSUB__", (uint8*)0u, 0, (tmp$27)&HDEFOPTGOSUB_CB }, { (uint8*)"__FB_OUT_EXE__", (uint8*)0u, 0, (tmp$27)&HDEFOUTEXE_CB }, { (uint8*)"__FB_OUT_LIB__", (uint8*)0u, 0, (tmp$27)&HDEFOUTLIB_CB }, { (uint8*)"__FB_OUT_DLL__", (uint8*)0u, 0, (tmp$27)&HDEFOUTDLL_CB }, { (uint8*)"__FB_OUT_OBJ__", (uint8*)0u, 0, (tmp$27)&HDEFOUTOBJ_CB }, { (uint8*)"__FB_DEBUG__", (uint8*)0u, 0, (tmp$27)&HDEFDEBUG_CB }, { (uint8*)"__FB_ERR__", (uint8*)0u, 0, (tmp$27)&HDEFERR_CB }, { (uint8*)"__FB_LANG__", (uint8*)0u, 1, (tmp$27)&HDEFLANG_CB }, { (uint8*)"__FB_BACKEND__", (uint8*)0u, 1, (tmp$27)&HDEFBACKEND_CB }, { (uint8*)"__FB_FPU__", (uint8*)0u, 1, (tmp$27)&HDEFFPU_CB }, { (uint8*)"__FB_FPMODE__", (uint8*)0u, 1, (tmp$27)&HDEFFPMODE_CB }, { (uint8*)"__FB_GCC__", (uint8*)0u, 0, (tmp$27)&HDEFGCC_CB }, { (uint8*)"__FB_GUI__", (uint8*)0u, 0, (tmp$27)&HDEFGUI_CB }, { (uint8*)"__FB_OPTIMIZE__", (uint8*)0u, 0, (tmp$27)&HDEFOPTIMIZE_CB } };
static struct $9SYMBMACRO MACROTB$[13] = { { (uint8*)"__FB_UNIQUEID_PUSH__", 0, (tmp$28)&HDEFUNIQUEIDPUSH_CB, (tmp$29)0u, 1, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID__", 0, (tmp$28)&HDEFUNIQUEID_CB, (tmp$29)0u, 1, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID_POP__", 0, (tmp$28)&HDEFUNIQUEIDPOP_CB, (tmp$29)0u, 1, { (uint8*)"ID" } }, { (uint8*)"__FB_ARG_COUNT__", 4, (tmp$28)&HDEFARGCOUNT_CB, (tmp$29)0u, 1, { (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_EXTRACT__", 4, (tmp$28)&HDEFARGEXTRACT_CB, (tmp$29)0u, 2, { (uint8*)"ARGNUM", (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_LEFTOF__", 4, (tmp$28)&HDEFARGLEFT_CB, (tmp$29)0u, 3, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_ARG_RIGHTOF__", 4, (tmp$28)&HDEFARGRIGHT_CB, (tmp$29)0u, 3, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_JOIN__", 0, (tmp$28)&HDEFJOINZ_CB, (tmp$29)&HDEFJOINW_CB, 2, { (uint8*)"L", (uint8*)"R" } }, { (uint8*)"__FB_QUOTE__", 0, (tmp$28)&HDEFQUOTEZ_CB, (tmp$29)&HDEFQUOTEW_CB, 1, { (uint8*)"ARG" } }, { (uint8*)"__FB_UNQUOTE__", 0, (tmp$28)&HDEFUNQUOTEZ_CB, (tmp$29)&HDEFUNQUOTEW_CB, 1, { (uint8*)"ARG" } }, { (uint8*)"__FB_EVAL__", 0, (tmp$28)&HDEFEVALZ_CB, (tmp$29)&HDEFEVALW_CB, 1, { (uint8*)"ARG" } }, { (uint8*)"__FB_IIF__", 0, (tmp$28)&HDEFIIFZ_CB, (tmp$29)&HDEFIIFW_CB, 3, { (uint8*)"CMPEXPR", (uint8*)"TEXPR", (uint8*)"FEXPR" } }, { (uint8*)"__FB_QUERY_SYMBOL__", 0, (tmp$28)&HDEFQUERYSYMZ_CB, (tmp$29)0u, 2, { (uint8*)"WHAT", (uint8*)"SYM" } } };

void SYMBDEFINEINIT( int32 ISMAIN$1 )
{
	FBSTRING TMP$218$1;
	FBSTRING TMP$219$1;
	FBSTRING TMP$220$1;
	label$428:;
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 12 );
	uint8* DEF$1;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 98696), 500, 12, 6 );
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 98728), 1000, 16, 6 );
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 98760), 16, -1 );
	{
		int32 I$2;
		I$2 = 0;
		label$433:;
		{
			fb_StrAssign( (void*)&VALUE$1, -1, *(void**)(((int32)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (4 & 31))) + 4), 0, 0 );
			if( *(uint8**)(((int32)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (4 & 31))) + 4) == (uint8*)0u ) goto label$435;
			{
				if( (*(int32*)(((int32)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (4 & 31))) + 8) & 1) == 0 ) goto label$437;
				{
					FBSTRING TMP$214$5;
					FBSTRING TMP$215$5;
					__builtin_memset( &TMP$214$5, 0, 12 );
					FBSTRING* vr$12 = fb_StrConcat( &TMP$214$5, (void*)"\x22", 2, (void*)&VALUE$1, -1 );
					__builtin_memset( &TMP$215$5, 0, 12 );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$215$5, (void*)vr$12, -1, (void*)"\x22", 2 );
					fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$15, -1, 0 );
				}
				label$437:;
				label$436:;
			}
			label$435:;
			label$434:;
			int32 vr$20 = fb_StrLen( (void*)&VALUE$1, -1 );
			SYMBADDDEFINE( *(uint8**)((int32)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (4 & 31))), (uint8*)*(uint8**)&VALUE$1, vr$20, 0, *(tmp$27*)(((int32)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (4 & 31))) + 12), *($15FB_DEFINE_FLAGS*)(((int32)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (4 & 31))) + 8) );
		}
		label$431:;
		I$2 = I$2 + 1;
		label$430:;
		if( I$2 <= 36 ) goto label$433;
		label$432:;
	}
	__builtin_memset( &TMP$220$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)&ENV$ + 268) );
	FBSTRING* vr$25 = fb_StrUcase2( (FBSTRING*)vr$24, 0 );
	__builtin_memset( &TMP$218$1, 0, 12 );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$218$1, (void*)"__FB_", 6, (void*)vr$25, -1 );
	__builtin_memset( &TMP$219$1, 0, 12 );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$219$1, (void*)vr$28, -1, (void*)"__", 3 );
	fb_StrAssign( (void*)&TMP$220$1, -1, (void*)vr$31, -1, 0 );
	SYMBADDDEFINE( (uint8*)*(uint8**)&TMP$220$1, (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$220$1 );
	if( *(int32*)((uint8*)&ENV$ + 108) != 11 ) goto label$439;
	{
		SYMBADDDEFINE( (uint8*)"__FB_LINUX__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$439:;
	label$438:;
	if( (*(int32*)((uint8*)&ENV$ + 284) & 1) == 0 ) goto label$441;
	{
		SYMBADDDEFINE( (uint8*)"__FB_UNIX__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	goto label$440;
	label$441:;
	{
		SYMBADDDEFINE( (uint8*)"__FB_PCOS__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$440:;
	int32 vr$35 = FBIS64BIT(  );
	if( vr$35 == 0 ) goto label$443;
	{
		SYMBADDDEFINE( (uint8*)"__FB_64BIT__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$443:;
	label$442:;
	{
		int32 TMP$225$2;
		int32 vr$36 = FBGETCPUFAMILY(  );
		TMP$225$2 = vr$36;
		if( TMP$225$2 == 2 ) goto label$446;
		label$447:;
		if( TMP$225$2 != 3 ) goto label$445;
		label$446:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_ARM__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
		}
		goto label$444;
		label$445:;
		if( TMP$225$2 == 0 ) goto label$449;
		label$450:;
		if( TMP$225$2 != 1 ) goto label$448;
		label$449:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_X86__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
			SYMBADDDEFINE( (uint8*)"__FB_ASM__", (uint8*)0u, 0, 0, (tmp$27)&HDEFASM_CB, 1 );
		}
		goto label$444;
		label$448:;
		if( TMP$225$2 == 4 ) goto label$452;
		label$453:;
		if( TMP$225$2 == 5 ) goto label$452;
		label$454:;
		if( TMP$225$2 != 6 ) goto label$451;
		label$452:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_PPC__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
		}
		label$451:;
		label$444:;
	}
	int32 vr$37 = FBISHOSTBIGENDIAN(  );
	if( vr$37 == 0 ) goto label$456;
	{
		SYMBADDDEFINE( (uint8*)"__FB_BIGENDIAN__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$456:;
	label$455:;
	if( ISMAIN$1 == 0 ) goto label$458;
	{
		SYMBADDDEFINE( (uint8*)"__FB_MAIN__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$458:;
	label$457:;
	if( *(int32*)((uint8*)&ENV$ + 116) < 1 ) goto label$460;
	{
		SYMBADDDEFINE( (uint8*)"__FB_SSE__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$460:;
	label$459:;
	FBSTRING* vr$38 = fb_IntToStr( *(int32*)((uint8*)&ENV$ + 124) );
	fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$38, -1, 0 );
	int32 vr$41 = fb_StrLen( (void*)&VALUE$1, -1 );
	SYMBADDDEFINE( (uint8*)"__FB_VECTORIZE__", (uint8*)*(uint8**)&VALUE$1, vr$41, 0, (tmp$27)0u, 0 );
	*(int32*)((uint8*)&SYMB$ + 98772) = 0;
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 98776), 32, 0 );
	{
		int32 I$2;
		I$2 = 0;
		label$464:;
		{
			struct $11FB_DEFPARAM* FIRSTPARAM$3;
			struct $11FB_DEFPARAM* vr$44 = SYMBADDDEFINEPARAM( (struct $11FB_DEFPARAM*)0u, *(uint8**)(((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + 20) );
			FIRSTPARAM$3 = vr$44;
			struct $11FB_DEFPARAM* LASTPARAM$3;
			LASTPARAM$3 = FIRSTPARAM$3;
			{
				int32 J$4;
				J$4 = 1;
				int32 TMP$234$4;
				TMP$234$4 = *(int32*)(((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + 16) + -1;
				goto label$465;
				label$468:;
				{
					struct $11FB_DEFPARAM* vr$51 = SYMBADDDEFINEPARAM( LASTPARAM$3, *(uint8**)((uint8*)((uint8*)((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + (J$4 << (2 & 31))) + 20) );
					LASTPARAM$3 = vr$51;
				}
				label$466:;
				J$4 = J$4 + 1;
				label$465:;
				if( J$4 <= TMP$234$4 ) goto label$468;
				label$467:;
			}
			struct $8FBSYMBOL* SYM$3;
			struct $8FBSYMBOL* vr$57 = SYMBADDDEFINEMACRO( *(uint8**)((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)), (struct $9FB_DEFTOK*)0u, *(int32*)(((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + 16), FIRSTPARAM$3, *(int32*)(((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + 4) | 8 );
			SYM$3 = vr$57;
			*(tmp$28*)((uint8*)SYM$3 + 76) = *(tmp$28*)(((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + 8);
			*(tmp$29*)((uint8*)SYM$3 + 80) = *(tmp$29*)(((int32)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 40)) + 12);
		}
		label$462:;
		I$2 = I$2 + 1;
		label$461:;
		if( I$2 <= 12 ) goto label$464;
		label$463:;
	}
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	label$429:;
}

void SYMBDEFINEEND( void )
{
	label$469:;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 98776) );
	*(int32*)((uint8*)&SYMB$ + 98772) = 0;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 98760) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 98696) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 98728) );
	label$470:;
}

struct $8FBSYMBOL* SYMBADDDEFINE( uint8* SYMBOL$1, uint8* TEXT$1, int32 LGT$1, int32 ISARGLESS$1, tmp$27 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$471:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420), 5, SYMBOL$1, (uint8*)0u, 4, (struct $8FBSYMBOL*)0u, 0, 0 );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$474;
	{
		goto label$472;
	}
	label$474:;
	label$473:;
	void* vr$4 = XALLOCATE( LGT$1 + 1 );
	*(uint8**)((uint8*)SYM$1 + 64) = (uint8*)vr$4;
	fb_StrAssign( *(void**)((uint8*)SYM$1 + 64), 0, (void*)TEXT$1, 0, 0 );
	*(int64*)((uint8*)SYM$1 + 40) = (int64)LGT$1;
	*(int32*)((uint8*)SYM$1 + 56) = 0;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 60) = (struct $11FB_DEFPARAM*)0u;
	*(int32*)((uint8*)SYM$1 + 68) = ISARGLESS$1;
	*(tmp$27*)((uint8*)SYM$1 + 76) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 72) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$472:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEW( uint8* SYMBOL$1, uint32* TEXT$1, int32 LGT$1, int32 ISARGLESS$1, tmp$27 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$475:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420), 5, (uint8*)SYMBOL$1, (uint8*)0u, 7, (struct $8FBSYMBOL*)0u, 0, 0 );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$478;
	{
		goto label$476;
	}
	label$478:;
	label$477:;
	void* vr$5 = XALLOCATE( (LGT$1 << (2 & 31)) + 4 );
	*(uint32**)((uint8*)SYM$1 + 64) = (uint32*)vr$5;
	fb_WstrAssign( *(uint32**)((uint8*)SYM$1 + 64), 0, (uint32*)TEXT$1 );
	*(int64*)((uint8*)SYM$1 + 40) = (int64)LGT$1;
	*(int32*)((uint8*)SYM$1 + 56) = 0;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 60) = (struct $11FB_DEFPARAM*)0u;
	*(int32*)((uint8*)SYM$1 + 68) = ISARGLESS$1;
	*(tmp$27*)((uint8*)SYM$1 + 76) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 72) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$476:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8* SYMBOL$1, struct $9FB_DEFTOK* TOKHEAD$1, int32 PARAMS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$479:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420), 5, SYMBOL$1, (uint8*)0u, -2147483648u, (struct $8FBSYMBOL*)0u, 0, 0 );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$482;
	{
		goto label$480;
	}
	label$482:;
	label$481:;
	*(struct $9FB_DEFTOK**)((uint8*)SYM$1 + 64) = TOKHEAD$1;
	*(int32*)((uint8*)SYM$1 + 56) = PARAMS$1;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 60) = PARAMHEAD$1;
	*(int32*)((uint8*)SYM$1 + 68) = 0;
	*(tmp$28*)((uint8*)SYM$1 + 76) = (tmp$28)0u;
	*(tmp$29*)((uint8*)SYM$1 + 80) = (tmp$29)0u;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 72) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$480:;
	return fb$result$1;
}

struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM* LASTPARAM$1, uint8* ID$1 )
{
	struct $11FB_DEFPARAM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$489:;
	static struct $11FB_DEFPARAM* PARAM$1;
	static uint32 INDEX$1;
	fb$result$1 = (struct $11FB_DEFPARAM*)0u;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98696) );
	PARAM$1 = (struct $11FB_DEFPARAM*)vr$2;
	if( LASTPARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$492;
	{
		*(struct $11FB_DEFPARAM**)((uint8*)LASTPARAM$1 + 8) = PARAM$1;
	}
	goto label$491;
	label$492:;
	{
		if( *(int32*)((uint8*)&SYMB$ + 98772) <= 0 ) goto label$494;
		{
			HRESETDEFHASH(  );
		}
		label$494:;
		label$493:;
	}
	label$491:;
	int32 vr$4 = fb_StrLen( (void*)ID$1, 0 );
	void* vr$6 = XALLOCATE( vr$4 + 1 );
	*(uint8**)PARAM$1 = (uint8*)vr$6;
	HUCASE( ID$1, *(uint8**)PARAM$1 );
	uint32 vr$10 = HASHHASH( (uint8*)*(uint8**)PARAM$1 );
	INDEX$1 = vr$10;
	void* vr$13 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 98776), (uint8*)*(uint8**)PARAM$1, INDEX$1 );
	if( vr$13 == (void*)0u ) goto label$496;
	{
		if( *(uint8**)PARAM$1 == (uint8*)0u ) goto label$498;
		{
			free( *(void**)PARAM$1 );
		}
		label$498:;
		label$497:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98696), (void*)PARAM$1 );
		fb$result$1 = (struct $11FB_DEFPARAM*)0u;
		goto label$490;
	}
	label$496:;
	label$495:;
	struct $8HASHITEM* vr$19 = HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 98776), (uint8*)*(uint8**)PARAM$1, (void*)PARAM$1, INDEX$1 );
	*(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (*(int32*)((uint8*)&SYMB$ + 98772) << (3 & 31))) + 92) = vr$19;
	*(uint32*)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (*(int32*)((uint8*)&SYMB$ + 98772) << (3 & 31))) + 96) = INDEX$1;
	*(int32*)((uint8*)PARAM$1 + 4) = *(int32*)((uint8*)&SYMB$ + 98772);
	*(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 8) = (struct $11FB_DEFPARAM*)0u;
	*(int32*)((uint8*)&SYMB$ + 98772) = *(int32*)((uint8*)&SYMB$ + 98772) + 1;
	fb$result$1 = PARAM$1;
	label$490:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK* LASTTOK$1, $14FB_DEFTOK_TYPE DTYPE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$499:;
	static struct $9FB_DEFTOK* T$1;
	fb$result$1 = (struct $9FB_DEFTOK*)0u;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98728) );
	T$1 = (struct $9FB_DEFTOK*)vr$2;
	if( LASTTOK$1 == (struct $9FB_DEFTOK*)0u ) goto label$502;
	{
		*(struct $9FB_DEFTOK**)((uint8*)LASTTOK$1 + 12) = T$1;
	}
	label$502:;
	label$501:;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 8) = LASTTOK$1;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 12) = (struct $9FB_DEFTOK*)0u;
	*($14FB_DEFTOK_TYPE*)T$1 = DTYPE$1;
	{
		uint32 TMP$236$2;
		TMP$236$2 = (uint32)DTYPE$1;
		goto label$504;
		label$505:;
		{
			*(uint8**)((uint8*)T$1 + 4) = (uint8*)0u;
		}
		goto label$503;
		label$506:;
		{
			*(uint32**)((uint8*)T$1 + 4) = (uint32*)0u;
		}
		goto label$503;
		label$504:;
		static const void* tmp$237[2] = {
			&&label$505,
			&&label$506,
		};
		if( (TMP$236$2 - 2u) > 1u ) goto label$503;
		goto *tmp$237[TMP$236$2 - 2u];
		label$503:;
	}
	fb$result$1 = T$1;
	label$500:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* TOK$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$507:;
	if( *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 8) == (struct $9FB_DEFTOK*)0u ) goto label$510;
	{
		*(struct $9FB_DEFTOK**)((uint8*)*(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 8) + 12) = (struct $9FB_DEFTOK*)0u;
		fb$result$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 8);
	}
	goto label$509;
	label$510:;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0u;
	}
	label$509:;
	{
		$14FB_DEFTOK_TYPE TMP$238$2;
		TMP$238$2 = *($14FB_DEFTOK_TYPE*)TOK$1;
		if( TMP$238$2 != 2 ) goto label$512;
		label$513:;
		{
			if( *(uint8**)((uint8*)TOK$1 + 4) == (uint8*)0u ) goto label$515;
			{
				free( *(void**)((uint8*)TOK$1 + 4) );
			}
			label$515:;
			label$514:;
		}
		goto label$511;
		label$512:;
		if( TMP$238$2 != 3 ) goto label$516;
		label$517:;
		{
			if( *(uint32**)((uint8*)TOK$1 + 4) == (uint32*)0u ) goto label$519;
			{
				free( *(void**)((uint8*)TOK$1 + 4) );
			}
			label$519:;
			label$518:;
		}
		label$516:;
		label$511:;
	}
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98728), (void*)TOK$1 );
	label$508:;
	return fb$result$1;
}

int32 SYMBDELDEFINE( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$530:;
	fb$result$1 = 0;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$533;
	{
		goto label$531;
	}
	label$533:;
	label$532:;
	if( *(int32*)((uint8*)S$1 + 56) != 0 ) goto label$535;
	{
		if( (*(int32*)((uint8*)S$1 + 28) & 511) == 7 ) goto label$537;
		{
			if( *(uint8**)((uint8*)S$1 + 64) == (uint8*)0u ) goto label$539;
			{
				free( *(void**)((uint8*)S$1 + 64) );
			}
			label$539:;
			label$538:;
		}
		goto label$536;
		label$537:;
		{
			if( *(uint32**)((uint8*)S$1 + 64) == (uint32*)0u ) goto label$541;
			{
				free( *(void**)((uint8*)S$1 + 64) );
			}
			label$541:;
			label$540:;
		}
		label$536:;
	}
	goto label$534;
	label$535:;
	{
		HDELDEFINETOKENS( S$1 );
	}
	label$534:;
	HDELDEFINEPARAMS( S$1 );
	SYMBFREESYMBOL( S$1 );
	fb$result$1 = -1;
	label$531:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__symbzdefine( void )
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

static FBSTRING* HDEFFILE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$10:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)((uint8*)&ENV$ + 304), 261, 0 );
	label$11:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFPATH_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$12:;
	FBSTRING* vr$1 = FBGETINPUTFILEPARENTDIR(  );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$13:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFUNCTION_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$14:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 12) & 4096) == 0 ) goto label$17;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)"__FB_MAINPROC__", 16, 0 );
	}
	goto label$16;
	label$17:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 12) & 8192) == 0 ) goto label$18;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)"__FB_MODLEVELPROC__", 20, 0 );
	}
	goto label$16;
	label$18:;
	{
		uint8* vr$7 = SYMBGETFULLPROCNAME( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) );
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$7, 0, 0 );
	}
	label$16:;
	label$15:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static FBSTRING* HDEFLINE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$19:;
	FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$20:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static double UNIXTIMETODATESERIAL( int64 DAT$1 )
{
	double fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$21:;
	fb$result$1 = ((double)DAT$1 / 0x1.518p+16) + 0x1.8F84p+14;
	goto label$22;
	label$22:;
	return fb$result$1;
}

static boolean HCHECKSOURCEDATEEPOCH( FBSTRING* S$1 )
{
	boolean fb$result$1;
	__builtin_memset( &fb$result$1, 0, 1 );
	label$23:;
	FBSTRING TMP$1;
	__builtin_memset( &TMP$1, 0, 12 );
	double VALUE$1;
	__builtin_memset( &VALUE$1, 0, 8 );
	FBSTRING* vr$3 = fb_TRIM( (FBSTRING*)S$1 );
	fb_StrAssign( (void*)&TMP$1, -1, (void*)vr$3, -1, 0 );
	int32 vr$6 = fb_StrLen( (void*)&TMP$1, -1 );
	if( vr$6 != 0 ) goto label$26;
	{
		fb$result$1 = (boolean)0;
		fb_StrDelete( (FBSTRING*)&TMP$1 );
		goto label$24;
	}
	label$26:;
	label$25:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$94$2;
		int32 vr$9 = fb_StrLen( (void*)&TMP$1, -1 );
		TMP$94$2 = vr$9 + -1;
		goto label$27;
		label$30:;
		{
			if( (-((int32)*(uint8*)((uint8*)*(uint8**)S$1 + I$2) < 48) | -((int32)*(uint8*)((uint8*)*(uint8**)S$1 + I$2) > 57)) == 0 ) goto label$32;
			{
				fb$result$1 = (boolean)0;
				fb_StrDelete( (FBSTRING*)&TMP$1 );
				goto label$24;
			}
			label$32:;
			label$31:;
		}
		label$28:;
		I$2 = I$2 + 1;
		label$27:;
		if( I$2 <= TMP$94$2 ) goto label$30;
		label$29:;
	}
	uint64 vr$22 = fb_VALULNG( (FBSTRING*)S$1 );
	VALUE$1 = (double)vr$22;
	if( fb_D2UL( VALUE$1 ) <= 253402300799ull ) goto label$34;
	{
		fb$result$1 = (boolean)0;
		fb_StrDelete( (FBSTRING*)&TMP$1 );
		goto label$24;
	}
	label$34:;
	label$33:;
	fb$result$1 = (boolean)1;
	fb_StrDelete( (FBSTRING*)&TMP$1 );
	goto label$24;
	fb_StrDelete( (FBSTRING*)&TMP$1 );
	label$24:;
	return fb$result$1;
}

static double HGETCOMPILETIME( void )
{
	double fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$35:;
	static int32 USAGE$1 = 0;
	static double SOURCE_DATE_EPOCH$1 = 0x0p+0;
	if( USAGE$1 != 0 ) goto label$38;
	{
		FBSTRING RET$2;
		__builtin_memset( &RET$2, 0, 12 );
		USAGE$1 = 1;
		FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"SOURCE_DATE_EPOCH", 17 );
		FBSTRING* vr$3 = fb_GetEnviron( (FBSTRING*)vr$2 );
		fb_StrAssign( (void*)&RET$2, -1, (void*)vr$3, -1, 0 );
		int32 vr$6 = fb_StrLen( (void*)&RET$2, -1 );
		if( vr$6 <= 0 ) goto label$40;
		{
			boolean vr$8 = HCHECKSOURCEDATEEPOCH( &RET$2 );
			if( vr$8 == (boolean)0 ) goto label$42;
			{
				uint64 vr$10 = fb_VALULNG( (FBSTRING*)&RET$2 );
				double vr$11 = UNIXTIMETODATESERIAL( (int64)vr$10 );
				SOURCE_DATE_EPOCH$1 = vr$11;
				USAGE$1 = 2;
			}
			goto label$41;
			label$42:;
			{
				ERRREPORTEX( 328, (uint8*)0u, 0, 1, (uint8*)0u );
			}
			label$41:;
		}
		label$40:;
		label$39:;
		fb_StrDelete( (FBSTRING*)&RET$2 );
	}
	label$38:;
	label$37:;
	if( USAGE$1 != 2 ) goto label$44;
	{
		fb$result$1 = SOURCE_DATE_EPOCH$1;
	}
	goto label$43;
	label$44:;
	{
		double vr$13 = fb_Now(  );
		fb$result$1 = vr$13;
	}
	label$43:;
	label$36:;
	return fb$result$1;
}

static FBSTRING* HDEFDATE_CB( void )
{
	FBSTRING TMP$97$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$45:;
	__builtin_memset( &TMP$97$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$97$1, -1, (void*)"mm-dd-yyyy", 11, 0 );
	double vr$4 = HGETCOMPILETIME(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$97$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$5, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$97$1 );
	label$46:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFDATEISO_CB( void )
{
	FBSTRING TMP$99$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$47:;
	__builtin_memset( &TMP$99$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$99$1, -1, (void*)"yyyy-mm-dd", 11, 0 );
	double vr$4 = HGETCOMPILETIME(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$99$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$5, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$99$1 );
	label$48:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFTIME_CB( void )
{
	FBSTRING TMP$101$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$49:;
	__builtin_memset( &TMP$101$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$101$1, -1, (void*)"hh:nn:ss", 9, 0 );
	double vr$4 = HGETCOMPILETIME(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$101$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$5, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$101$1 );
	label$50:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFMULTITHREAD_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$51:;
	FBSTRING* vr$1 = fb_IntToStr( *(int32*)((uint8*)&ENV$ + 232) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$52:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFOPTBYVAL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$53:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 1080) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$54:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTDYNAMIC_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$55:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 1096) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$56:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTESCAPE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$57:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 1092) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$58:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTEXPLICIT_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$59:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 1084) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$60:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTPRIVATE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$61:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 1088) == 0) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$62:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTGOSUB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$63:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 1100) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$64:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFGUI_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$65:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 256) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$66:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTIMIZE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$67:;
	int32 vr$1 = FBGETOPTION( 8 );
	FBSTRING* vr$2 = fb_IntToStr( vr$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$68:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTEXE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$69:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 0) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$70:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTLIB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$71:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$72:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTDLL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$73:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 2) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$74:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTOBJ_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$75:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 3) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$76:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFDEBUG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$77:;
	FBSTRING* vr$1 = fb_IntToStr( *(int32*)((uint8*)&ENV$ + 144) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$78:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFERR_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$79:;
	int32 RES$1;
	RES$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 156) == 0 ) goto label$82;
	{
		RES$1 = 1;
	}
	label$82:;
	label$81:;
	if( *(int32*)((uint8*)&ENV$ + 160) == 0 ) goto label$84;
	{
		RES$1 = RES$1 | 2;
	}
	label$84:;
	label$83:;
	if( *(int32*)((uint8*)&ENV$ + 164) == 0 ) goto label$86;
	{
		RES$1 = RES$1 | 4;
	}
	label$86:;
	label$85:;
	if( *(int32*)((uint8*)&ENV$ + 172) == 0 ) goto label$88;
	{
		RES$1 = RES$1 | 8;
	}
	label$88:;
	label$87:;
	if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$90;
	{
		RES$1 = RES$1 | 16;
	}
	label$90:;
	label$89:;
	if( *(int32*)((uint8*)&ENV$ + 152) == 0 ) goto label$92;
	{
		RES$1 = RES$1 | 32;
	}
	label$92:;
	label$91:;
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$94;
	{
		RES$1 = RES$1 | 64;
	}
	label$94:;
	label$93:;
	if( *(int32*)((uint8*)&ENV$ + 144) == 0 ) goto label$96;
	{
		RES$1 = RES$1 | 128;
	}
	label$96:;
	label$95:;
	if( *(int32*)((uint8*)&ENV$ + 168) == 0 ) goto label$98;
	{
		RES$1 = RES$1 | 256;
	}
	label$98:;
	label$97:;
	if( *(int32*)((uint8*)&ENV$ + 180) == 0 ) goto label$100;
	{
		RES$1 = RES$1 | 512;
	}
	label$100:;
	label$99:;
	FBSTRING* vr$10 = fb_IntToStr( RES$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$10, -1, 0 );
	label$80:;
	FBSTRING* vr$13 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$13;
}

static FBSTRING* HDEFLANG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$101:;
	FBSTRING* vr$1 = FBGETLANGNAME( *($7FB_LANG*)((uint8*)&ENV$ + 136) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$102:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFBACKEND_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$103:;
	FBSTRING* vr$1 = FBGETBACKENDNAME( *($10FB_BACKEND*)((uint8*)&ENV$ + 104) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$104:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFPU_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$105:;
	{
		int32 TMP$102$2;
		int32 vr$1 = FBGETOPTION( 5 );
		TMP$102$2 = vr$1;
		if( TMP$102$2 != 0 ) goto label$108;
		label$109:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"x87", 4, 0 );
			goto label$106;
		}
		goto label$107;
		label$108:;
		if( TMP$102$2 != 1 ) goto label$110;
		label$111:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"sse", 4, 0 );
			goto label$106;
		}
		goto label$107;
		label$110:;
		{
		}
		label$112:;
		label$107:;
	}
	label$106:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFFPMODE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$113:;
	{
		int32 TMP$105$2;
		int32 vr$1 = FBGETOPTION( 6 );
		TMP$105$2 = vr$1;
		if( TMP$105$2 != 0 ) goto label$116;
		label$117:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"precise", 8, 0 );
			goto label$114;
		}
		goto label$115;
		label$116:;
		if( TMP$105$2 != 1 ) goto label$118;
		label$119:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"fast", 5, 0 );
			goto label$114;
		}
		goto label$115;
		label$118:;
		{
		}
		label$120:;
		label$115:;
	}
	label$114:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFGCC_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$121:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 104) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$122:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFASM_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$123:;
	{
		$12FB_ASMSYNTAX TMP$108$2;
		TMP$108$2 = *($12FB_ASMSYNTAX*)((uint8*)&ENV$ + 132);
		if( TMP$108$2 != 0 ) goto label$126;
		label$127:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"intel", 6, 0 );
		}
		goto label$125;
		label$126:;
		if( TMP$108$2 != 1 ) goto label$128;
		label$129:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"att", 4, 0 );
		}
		label$128:;
		label$125:;
	}
	label$124:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB* ARGTB$1, int32 NUM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$130:;
	uint8* RES$1;
	RES$1 = (uint8*)0u;
	if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$133;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint8*)0u ) goto label$135;
		{
			fb$result$1 = (uint8*)0u;
			goto label$131;
		}
		label$135:;
		label$134:;
		ZSTRASSIGN( &RES$1, DT$2 );
	}
	goto label$132;
	label$133:;
	{
		uint32* DT$2;
		DT$2 = *(uint32**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint32*)0u ) goto label$137;
		{
			fb$result$1 = (uint8*)0u;
			goto label$131;
		}
		label$137:;
		label$136:;
		ZSTRASSIGNW( &RES$1, DT$2 );
	}
	label$132:;
	fb$result$1 = RES$1;
	label$131:;
	return fb$result$1;
}

static uint32* HMACRO_GETARGW( struct $11LEXPP_ARGTB* ARGTB$1, int32 NUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$138:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$141;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint8*)0u ) goto label$143;
		{
			fb$result$1 = (uint32*)0u;
			goto label$139;
		}
		label$143:;
		label$142:;
		DWSTRCONCATASSIGNA( &RES$1, (uint8*)DT$2 );
	}
	goto label$140;
	label$141:;
	{
		uint32* DT$2;
		DT$2 = *(uint32**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint32*)0u ) goto label$145;
		{
			fb$result$1 = (uint32*)0u;
			goto label$139;
		}
		label$145:;
		label$144:;
		DWSTRCONCATASSIGN( &RES$1, (uint32*)DT$2 );
	}
	label$140:;
	fb$result$1 = *(uint32**)&RES$1;
	label$139:;
	return fb$result$1;
}

static FBSTRING* HMACRO_EVALZ( uint8* ARG$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$146:;
	struct $8DZSTRING RES$1;
	__builtin_memset( &RES$1, 0, 12 );
	DZSTRASSIGN( &RES$1, (uint8*)0u );
	if( *(int32*)((uint8*)&ENV$ + 900) < 16 ) goto label$149;
	{
		*ERRNUM$1 = 27;
		fb_StrInit( (void*)&fb$result$1, -1, *(void**)&RES$1, 0, 0 );
		goto label$147;
	}
	label$149:;
	label$148:;
	if( ARG$1 == (uint8*)0u ) goto label$151;
	{
		LEXPUSHCTX(  );
		LEXINIT( 0, -1 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + 1;
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), (uint8*)ARG$1 );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600);
		int32 vr$13 = fb_StrLen( (void*)ARG$1, 0 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + vr$13;
		DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), (uint8*)"\x0A" );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + 1;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$23 = CEXPRESSION(  );
		EXPR$2 = vr$23;
		$9FB_ERRMSG ERRMSG$2;
		ERRMSG$2 = 0;
		if( EXPR$2 == (struct $7ASTNODE*)0u ) goto label$153;
		{
			struct $7ASTNODE* vr$24 = ASTOPTIMIZETREE( EXPR$2 );
			EXPR$2 = vr$24;
			if( *(int32*)EXPR$2 != 16 ) goto label$155;
			{
				FBSTRING TMP$112$4;
				__builtin_memset( &TMP$112$4, 0, 12 );
				FBSTRING* vr$27 = ASTCONSTFLUSHTOSTR( EXPR$2 );
				fb_StrAssign( (void*)&TMP$112$4, -1, (void*)vr$27, -1, 0 );
				DZSTRASSIGN( &RES$1, (uint8*)*(uint8**)&TMP$112$4 );
				fb_StrDelete( (FBSTRING*)&TMP$112$4 );
				int32 vr$31 = LEXGETTOKEN( 0 );
				if( vr$31 == 257 ) goto label$157;
				{
					ERRMSG$2 = 17;
				}
				label$157:;
				label$156:;
			}
			goto label$154;
			label$155:;
			int32 vr$32 = ASTISCONSTANT( EXPR$2 );
			if( vr$32 == 0 ) goto label$158;
			{
				uint8* vr$34 = SYMBGETCONSTSTRASSTR( *(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 12) );
				DZSTRASSIGN( &RES$1, (uint8*)vr$34 );
				int32 vr$36 = LEXGETTOKEN( 0 );
				if( vr$36 == 257 ) goto label$160;
				{
					ERRMSG$2 = 17;
				}
				label$160:;
				label$159:;
				ASTDELTREE( EXPR$2 );
			}
			goto label$154;
			label$158:;
			{
				ASTDELTREE( EXPR$2 );
				ERRMSG$2 = 11;
				DZSTRASSIGN( &RES$1, (uint8*)"\x00" );
			}
			label$154:;
		}
		goto label$152;
		label$153:;
		{
			ERRMSG$2 = 17;
		}
		label$152:;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + -1;
		LEXPOPCTX(  );
		if( ERRMSG$2 == 0 ) goto label$162;
		{
			ERRREPORTEX( ERRMSG$2, (uint8*)ARG$1, 0, 1, (uint8*)0u );
			HSKIPUNTIL( 257, -1, 0, 0 );
		}
		label$162:;
		label$161:;
	}
	label$151:;
	label$150:;
	fb_StrAssign( (void*)&fb$result$1, -1, *(void**)&RES$1, 0, 0 );
	label$147:;
	FBSTRING* vr$43 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$43;
}

static uint32* HMACRO_EVALW( uint32* ARG$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$163:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( *(int32*)((uint8*)&ENV$ + 900) < 16 ) goto label$166;
	{
		*ERRNUM$1 = 27;
		fb$result$1 = *(uint32**)&RES$1;
		goto label$164;
	}
	label$166:;
	label$165:;
	if( ARG$1 == (uint32*)0u ) goto label$168;
	{
		LEXPUSHCTX(  );
		LEXINIT( 0, -1 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + 1;
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), (uint32*)ARG$1 );
		*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = *(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600);
		int32 vr$10 = fb_WstrLen( (uint32*)ARG$1 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + vr$10;
		DWSTRCONCATASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), (uint32*)L"\x0000000A" );
		*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = *(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + 1;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$20 = CEXPRESSION(  );
		EXPR$2 = vr$20;
		$9FB_ERRMSG ERRMSG$2;
		ERRMSG$2 = 0;
		if( EXPR$2 == (struct $7ASTNODE*)0u ) goto label$170;
		{
			struct $7ASTNODE* vr$21 = ASTOPTIMIZETREE( EXPR$2 );
			EXPR$2 = vr$21;
			if( *(int32*)EXPR$2 != 16 ) goto label$172;
			{
				uint32* vr$23 = ASTCONSTFLUSHTOWSTR( EXPR$2 );
				DWSTRASSIGN( &RES$1, (uint32*)vr$23 );
				int32 vr$24 = LEXGETTOKEN( 0 );
				if( vr$24 == 257 ) goto label$174;
				{
					ERRMSG$2 = 17;
				}
				label$174:;
				label$173:;
			}
			goto label$171;
			label$172:;
			int32 vr$25 = ASTISCONSTANT( EXPR$2 );
			if( vr$25 == 0 ) goto label$175;
			{
				uint32* vr$27 = SYMBGETCONSTSTRASWSTR( *(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 12) );
				DWSTRASSIGN( &RES$1, (uint32*)vr$27 );
				int32 vr$28 = LEXGETTOKEN( 0 );
				if( vr$28 == 257 ) goto label$177;
				{
					ERRMSG$2 = 17;
				}
				label$177:;
				label$176:;
				ASTDELTREE( EXPR$2 );
			}
			goto label$171;
			label$175:;
			{
				ASTDELTREE( EXPR$2 );
				ERRMSG$2 = 11;
				DWSTRASSIGN( &RES$1, (uint32*)L"\x00000000\x00000000" );
			}
			label$171:;
		}
		goto label$169;
		label$170:;
		{
			ERRMSG$2 = 17;
		}
		label$169:;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + -1;
		LEXPOPCTX(  );
		if( ERRMSG$2 == 0 ) goto label$179;
		{
			FBSTRING TMP$116$3;
			__builtin_memset( &TMP$116$3, 0, 12 );
			FBSTRING* vr$33 = fb_WstrToStr( (uint32*)ARG$1 );
			fb_StrAssign( (void*)&TMP$116$3, -1, (void*)vr$33, -1, 0 );
			ERRREPORTEX( ERRMSG$2, (uint8*)*(uint8**)&TMP$116$3, 0, 1, (uint8*)0u );
			fb_StrDelete( (FBSTRING*)&TMP$116$3 );
			HSKIPUNTIL( 257, -1, 0, 0 );
		}
		label$179:;
		label$178:;
	}
	label$168:;
	label$167:;
	fb$result$1 = *(uint32**)&RES$1;
	label$164:;
	return fb$result$1;
}

static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$180:;
	if( *(int32*)((uint8*)&PP$ + 220) == 0 ) goto label$183;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$181;
	}
	label$183:;
	label$182:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0u ) goto label$185;
	{
		*ERRNUM$1 = 1;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$181;
	}
	label$185:;
	label$184:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98760), (uint8*)ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( STK$1 != (struct $23SYMB_DEF_UNIQUEID_STACK*)0u ) goto label$187;
	{
		void* vr$7 = calloc( 4u, 1u );
		STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$7;
		HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 98760), (uint8*)ID$1, (void*)STK$1, 4294967295u );
	}
	goto label$186;
	label$187:;
	{
		if( ID$1 == (uint8*)0u ) goto label$189;
		{
			free( (void*)ID$1 );
		}
		label$189:;
		label$188:;
	}
	label$186:;
	struct $21SYMB_DEF_UNIQUEID_ELM* ELM$1;
	void* vr$9 = malloc( 8u );
	ELM$1 = (struct $21SYMB_DEF_UNIQUEID_ELM*)vr$9;
	uint8* UID$1;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)1 );
	UID$1 = vr$10;
	int32 vr$11 = fb_StrLen( (void*)UID$1, 0 );
	void* vr$13 = malloc( (uint32)(vr$11 + 1) );
	*(uint8**)ELM$1 = (uint8*)vr$13;
	fb_StrAssign( *(void**)ELM$1, 0, (void*)UID$1, 0, 0 );
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)ELM$1 + 4) = *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1;
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = ELM$1;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	label$181:;
	FBSTRING* vr$21 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$21;
}

static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$190:;
	if( *(int32*)((uint8*)&PP$ + 220) == 0 ) goto label$193;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$191;
	}
	label$193:;
	label$192:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0u ) goto label$195;
	{
		*ERRNUM$1 = 1;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$191;
	}
	label$195:;
	label$194:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98760), (uint8*)ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0u ) goto label$197;
	{
		free( (void*)ID$1 );
	}
	label$197:;
	label$196:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0u ) goto label$199;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0u ) goto label$201;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1, 0, 0 );
			goto label$191;
		}
		label$201:;
		label$200:;
	}
	label$199:;
	label$198:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	label$191:;
	FBSTRING* vr$13 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$13;
}

static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$202:;
	if( *(int32*)((uint8*)&PP$ + 220) == 0 ) goto label$205;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$203;
	}
	label$205:;
	label$204:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0u ) goto label$207;
	{
		*ERRNUM$1 = 1;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$203;
	}
	label$207:;
	label$206:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98760), (uint8*)ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0u ) goto label$209;
	{
		free( (void*)ID$1 );
	}
	label$209:;
	label$208:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0u ) goto label$211;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0u ) goto label$213;
		{
			free( *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 );
			*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = *(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 + 4);
		}
		goto label$212;
		label$213:;
		{
			*ERRNUM$1 = 17;
		}
		label$212:;
	}
	goto label$210;
	label$211:;
	{
		*ERRNUM$1 = 17;
	}
	label$210:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	label$203:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$214:;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$217;
	{
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)ARGTB$1 + 384) );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
		goto label$215;
	}
	label$217:;
	label$216:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"0", 2, 0 );
	label$215:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$218:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* NUMSTR$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	NUMSTR$1 = vr$2;
	if( NUMSTR$1 == (uint8*)0u ) goto label$221;
	{
		FBSTRING VARSTR$2;
		FBSTRING* vr$3 = HMACRO_EVALZ( NUMSTR$1, ERRNUM$1 );
		fb_StrInit( (void*)&VARSTR$2, -1, (void*)vr$3, -1, 0 );
		int32 INDEX$2;
		__builtin_memset( &INDEX$2, 0, 4 );
		int32 vr$8 = HSTR2LONG( &VARSTR$2, &INDEX$2 );
		if( vr$8 == 0 ) goto label$223;
		{
			if( INDEX$2 < 0 ) goto label$225;
			{
				uint32 NUMVARARGS$4;
				NUMVARARGS$4 = (uint32)(*(int32*)((uint8*)ARGTB$1 + 384) + -1);
				if( (uint32)INDEX$2 >= NUMVARARGS$4 ) goto label$227;
				{
					uint8* ARGSTRING$5;
					uint8* vr$11 = HMACRO_GETARGZ( ARGTB$1, 1 );
					ARGSTRING$5 = vr$11;
					struct $7FBARRAYI8FBSTRINGE VARARGS$5;
					*(FBSTRING**)&VARARGS$5 = (FBSTRING*)0u;
					*(FBSTRING**)((uint8*)&VARARGS$5 + 4) = (FBSTRING*)0u;
					*(int32*)((uint8*)&VARARGS$5 + 8) = 0;
					*(int32*)((uint8*)&VARARGS$5 + 12) = 12;
					*(int32*)((uint8*)&VARARGS$5 + 16) = 0;
					*(int32*)((uint8*)&VARARGS$5 + 20) = 8;
					__builtin_memset( (void*)((uint8*)&VARARGS$5 + 24), 0, 96 );
					int32 vr$14 = HSTR2ARGS( (uint8*)ARGSTRING$5, &VARARGS$5 );
					if( vr$14 <= 0 ) goto label$229;
					{
						fb_StrAssign( (void*)&RES$1, -1, (void*)((INDEX$2 * 12) + *(int32*)&VARARGS$5), -1, 0 );
					}
					label$229:;
					label$228:;
					if( ARGSTRING$5 == (uint8*)0u ) goto label$231;
					{
						free( (void*)ARGSTRING$5 );
					}
					label$231:;
					label$230:;
					fb_ArrayStrErase( (struct $7FBARRAYIvE*)&VARARGS$5 );
				}
				label$227:;
				label$226:;
			}
			goto label$224;
			label$225:;
			{
				*ERRNUM$1 = 17;
			}
			label$224:;
		}
		goto label$222;
		label$223:;
		{
			*ERRNUM$1 = 17;
		}
		label$222:;
		if( NUMSTR$1 == (uint8*)0u ) goto label$233;
		{
			free( (void*)NUMSTR$1 );
		}
		label$233:;
		label$232:;
		fb_StrDelete( (FBSTRING*)&VARSTR$2 );
	}
	goto label$220;
	label$221:;
	{
		*ERRNUM$1 = 1;
	}
	label$220:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$219;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$219:;
	FBSTRING* vr$29 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$29;
}

static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$234:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2 );
	RET$1 = vr$4;
	if( (-(ARG$1 != (uint8*)0u) & -(SEP$1 != (uint8*)0u)) == 0 ) goto label$237;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0u;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 4) = (FBSTRING*)0u;
		*(int32*)((uint8*)&TOKENS$2 + 8) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 12) = 12;
		*(int32*)((uint8*)&TOKENS$2 + 16) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 20) = 8;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 24), 0, 96 );
		int32 NUMTOKS$2;
		int32 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0 ) goto label$239;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$117$4;
				TMP$117$4 = NUMTOKS$2 + -1;
				goto label$240;
				label$243:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 12) + *(int32*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1, (void*)SEP$1, 0 );
					if( vr$16 != 0 ) goto label$245;
					{
						{
							int32 J$7;
							J$7 = 0;
							int32 TMP$118$7;
							TMP$118$7 = I$4 + -1;
							goto label$246;
							label$249:;
							{
								if( J$7 <= 0 ) goto label$251;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1, (void*)" ", 2, 0 );
								}
								label$251:;
								label$250:;
								fb_StrConcatAssign( (void*)&RES$1, -1, (void*)((J$7 * 12) + *(int32*)&TOKENS$2), -1, 0 );
							}
							label$247:;
							J$7 = J$7 + 1;
							label$246:;
							if( J$7 <= TMP$118$7 ) goto label$249;
							label$248:;
						}
						goto label$242;
					}
					label$245:;
					label$244:;
				}
				label$241:;
				I$4 = I$4 + 1;
				label$240:;
				if( I$4 <= TMP$117$4 ) goto label$243;
				label$242:;
			}
			int32 vr$26 = fb_StrLen( (void*)&RES$1, -1 );
			if( vr$26 != 0 ) goto label$253;
			{
				fb_StrAssign( (void*)&RES$1, -1, (void*)RET$1, 0, 0 );
			}
			label$253:;
			label$252:;
		}
		goto label$238;
		label$239:;
		{
			*ERRNUM$1 = 17;
		}
		label$238:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$236;
	label$237:;
	{
		*ERRNUM$1 = 1;
	}
	label$236:;
	if( RET$1 == (uint8*)0u ) goto label$255;
	{
		free( (void*)RET$1 );
	}
	label$255:;
	label$254:;
	if( SEP$1 == (uint8*)0u ) goto label$257;
	{
		free( (void*)SEP$1 );
	}
	label$257:;
	label$256:;
	if( ARG$1 == (uint8*)0u ) goto label$259;
	{
		free( (void*)ARG$1 );
	}
	label$259:;
	label$258:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$235;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$235:;
	FBSTRING* vr$36 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$36;
}

static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$260:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2 );
	RET$1 = vr$4;
	if( (-(ARG$1 != (uint8*)0u) & -(SEP$1 != (uint8*)0u)) == 0 ) goto label$263;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0u;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 4) = (FBSTRING*)0u;
		*(int32*)((uint8*)&TOKENS$2 + 8) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 12) = 12;
		*(int32*)((uint8*)&TOKENS$2 + 16) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 20) = 8;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 24), 0, 96 );
		int32 NUMTOKS$2;
		int32 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0 ) goto label$265;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$120$4;
				TMP$120$4 = NUMTOKS$2 + -1;
				goto label$266;
				label$269:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 12) + *(int32*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1, (void*)SEP$1, 0 );
					if( vr$16 != 0 ) goto label$271;
					{
						{
							int32 J$7;
							J$7 = I$4 + 1;
							int32 TMP$121$7;
							TMP$121$7 = NUMTOKS$2 + -1;
							goto label$272;
							label$275:;
							{
								int32 vr$20 = fb_StrLen( (void*)&RES$1, -1 );
								if( vr$20 <= 0 ) goto label$277;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1, (void*)" ", 2, 0 );
								}
								label$277:;
								label$276:;
								fb_StrConcatAssign( (void*)&RES$1, -1, (void*)((J$7 * 12) + *(int32*)&TOKENS$2), -1, 0 );
							}
							label$273:;
							J$7 = J$7 + 1;
							label$272:;
							if( J$7 <= TMP$121$7 ) goto label$275;
							label$274:;
						}
						goto label$268;
					}
					label$271:;
					label$270:;
				}
				label$267:;
				I$4 = I$4 + 1;
				label$266:;
				if( I$4 <= TMP$120$4 ) goto label$269;
				label$268:;
			}
			int32 vr$29 = fb_StrLen( (void*)&RES$1, -1 );
			if( vr$29 != 0 ) goto label$279;
			{
				fb_StrAssign( (void*)&RES$1, -1, (void*)RET$1, 0, 0 );
			}
			label$279:;
			label$278:;
		}
		goto label$264;
		label$265:;
		{
			*ERRNUM$1 = 17;
		}
		label$264:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$262;
	label$263:;
	{
		*ERRNUM$1 = 1;
	}
	label$262:;
	if( RET$1 == (uint8*)0u ) goto label$281;
	{
		free( (void*)RET$1 );
	}
	label$281:;
	label$280:;
	if( SEP$1 == (uint8*)0u ) goto label$283;
	{
		free( (void*)SEP$1 );
	}
	label$283:;
	label$282:;
	if( ARG$1 == (uint8*)0u ) goto label$285;
	{
		free( (void*)ARG$1 );
	}
	label$285:;
	label$284:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$261:;
	FBSTRING* vr$38 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$38;
}

static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$286:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* L$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	L$1 = vr$2;
	uint8* R$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	R$1 = vr$3;
	if( (-(L$1 != (uint8*)0u) & -(R$1 != (uint8*)0u)) == 0 ) goto label$289;
	{
		FBSTRING TMP$122$2;
		__builtin_memset( &TMP$122$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$122$2, (void*)L$1, 0, (void*)R$1, 0 );
		fb_StrAssign( (void*)&RES$1, -1, (void*)vr$9, -1, 0 );
	}
	goto label$288;
	label$289:;
	{
		*ERRNUM$1 = 1;
	}
	label$288:;
	if( L$1 == (uint8*)0u ) goto label$291;
	{
		free( (void*)L$1 );
	}
	label$291:;
	label$290:;
	if( R$1 == (uint8*)0u ) goto label$293;
	{
		free( (void*)R$1 );
	}
	label$293:;
	label$292:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$287:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

static uint32* HDEFJOINW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$294:;
	uint32* L$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	L$1 = vr$1;
	uint32* R$1;
	uint32* vr$2 = HMACRO_GETARGW( ARGTB$1, 1 );
	R$1 = vr$2;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( (-(L$1 != (uint32*)0u) & -(R$1 != (uint32*)0u)) == 0 ) goto label$297;
	{
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L$1 );
		DWSTRCONCATASSIGN( &RES$1, (uint32*)R$1 );
	}
	goto label$296;
	label$297:;
	{
		*ERRNUM$1 = 1;
	}
	label$296:;
	fb$result$1 = *(uint32**)&RES$1;
	label$295:;
	return fb$result$1;
}

static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$298:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( ARG$1 == (uint8*)0u ) goto label$301;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"$\x22", 3, 0 );
		FBSTRING* vr$4 = HREPLACE( ARG$1, (uint8*)"\x22", (uint8*)"\x22\x22" );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)vr$4, -1, 0 );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"\x22", 2, 0 );
	}
	goto label$300;
	label$301:;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"\x22\x22", 3, 0 );
	}
	label$300:;
	if( ARG$1 == (uint8*)0u ) goto label$303;
	{
		free( (void*)ARG$1 );
	}
	label$303:;
	label$302:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$299:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static uint32* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$304:;
	uint32* ARG$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( ARG$1 == (uint32*)0u ) goto label$307;
	{
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"$\x00000022" );
		uint32* vr$2 = HREPLACEW( ARG$1, (uint32*)L"\x00000022", (uint32*)L"\x00000022\x00000022" );
		DWSTRCONCATASSIGN( &RES$1, (uint32*)vr$2 );
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"\x00000022" );
	}
	goto label$306;
	label$307:;
	{
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"\x00000022\x00000022" );
	}
	label$306:;
	fb$result$1 = *(uint32**)&RES$1;
	label$305:;
	return fb$result$1;
}

static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$308:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( ARG$1 == (uint8*)0u ) goto label$311;
	{
		int32 TMP$130$2;
		int32 TMP$132$2;
		int32 LENGTH$2;
		int32 vr$3 = fb_StrLen( (void*)ARG$1, 0 );
		LENGTH$2 = vr$3;
		if( LENGTH$2 < 3 ) goto label$312;
		TMP$130$2 = -(((-((uint32)(int32)*ARG$1 == 36u) & -((uint32)(int32)*(uint8*)((uint8*)ARG$1 + 1) == 34u)) & -((uint32)(int32)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1) == 34u)) != 0);
		goto label$542;
		label$312:;
		TMP$130$2 = 0;
		label$542:;
		if( TMP$130$2 == 0 ) goto label$314;
		{
			FBSTRING TMP$131$3;
			__builtin_memset( &TMP$131$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$19 = fb_StrMid( (FBSTRING*)vr$18, 3, LENGTH$2 + -3 );
			fb_StrAssign( (void*)&TMP$131$3, -1, (void*)vr$19, -1, 0 );
			FBSTRING* vr$21 = HREPLACE( (uint8*)*(uint8**)&TMP$131$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$21, -1, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$131$3 );
		}
		goto label$313;
		label$314:;
		if( LENGTH$2 < 2 ) goto label$316;
		TMP$132$2 = -((-((uint32)(int32)*ARG$1 == 34u) & -((uint32)(int32)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1) == 34u)) != 0);
		goto label$543;
		label$316:;
		TMP$132$2 = 0;
		label$543:;
		if( TMP$132$2 == 0 ) goto label$315;
		{
			FBSTRING TMP$133$3;
			__builtin_memset( &TMP$133$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$35 = fb_StrMid( (FBSTRING*)vr$34, 2, LENGTH$2 + -2 );
			fb_StrAssign( (void*)&TMP$133$3, -1, (void*)vr$35, -1, 0 );
			FBSTRING* vr$37 = HREPLACE( (uint8*)*(uint8**)&TMP$133$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$37, -1, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$133$3 );
		}
		goto label$313;
		label$315:;
		{
			fb_StrAssign( (void*)&RES$1, -1, (void*)ARG$1, 0, 0 );
		}
		label$313:;
	}
	label$311:;
	label$310:;
	if( ARG$1 == (uint8*)0u ) goto label$318;
	{
		free( (void*)ARG$1 );
	}
	label$318:;
	label$317:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$309:;
	FBSTRING* vr$45 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$45;
}

static uint32* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$319:;
	uint32* ARG$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( ARG$1 == (uint32*)0u ) goto label$322;
	{
		int32 TMP$134$2;
		int32 TMP$136$2;
		int32 LENGTH$2;
		int32 vr$2 = fb_WstrLen( (uint32*)ARG$1 );
		LENGTH$2 = vr$2;
		if( LENGTH$2 < 3 ) goto label$323;
		TMP$134$2 = -(((-(*(uint32*)ARG$1 == 36u) & -(*(uint32*)((uint8*)ARG$1 + 4) == 34u)) & -(*(uint32*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (2 & 31))) + -4) == 34u)) != 0);
		goto label$544;
		label$323:;
		TMP$134$2 = 0;
		label$544:;
		if( TMP$134$2 == 0 ) goto label$325;
		{
			uint32* TMP$135$3;
			uint32* vr$14 = fb_WstrMid( (uint32*)ARG$1, 3, LENGTH$2 + -3 );
			TMP$135$3 = vr$14;
			uint32* vr$15 = HREPLACEW( TMP$135$3, (uint32*)L"\x00000022\x00000022", (uint32*)L"\x00000022" );
			DWSTRASSIGN( &RES$1, (uint32*)vr$15 );
			fb_WstrDelete( (uint32*)TMP$135$3 );
		}
		goto label$324;
		label$325:;
		if( LENGTH$2 < 2 ) goto label$327;
		TMP$136$2 = -((-(*(uint32*)ARG$1 == 34u) & -(*(uint32*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (2 & 31))) + -4) == 34u)) != 0);
		goto label$545;
		label$327:;
		TMP$136$2 = 0;
		label$545:;
		if( TMP$136$2 == 0 ) goto label$326;
		{
			uint32* TMP$137$3;
			uint32* vr$24 = fb_WstrMid( (uint32*)ARG$1, 2, LENGTH$2 + -2 );
			TMP$137$3 = vr$24;
			uint32* vr$25 = HREPLACEW( TMP$137$3, (uint32*)L"\x00000022\x00000022", (uint32*)L"\x00000022" );
			DWSTRASSIGN( &RES$1, (uint32*)vr$25 );
			fb_WstrDelete( (uint32*)TMP$137$3 );
		}
		goto label$324;
		label$326:;
		{
			DWSTRASSIGN( &RES$1, (uint32*)ARG$1 );
		}
		label$324:;
	}
	label$322:;
	label$321:;
	fb$result$1 = *(uint32**)&RES$1;
	label$320:;
	return fb$result$1;
}

static FBSTRING* HDEFEVALZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$328:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	FBSTRING* vr$2 = HMACRO_EVALZ( ARG$1, ERRNUM$1 );
	fb_StrInit( (void*)&RES$1, -1, (void*)vr$2, -1, 0 );
	if( ARG$1 == (uint8*)0u ) goto label$331;
	{
		free( (void*)ARG$1 );
	}
	label$331:;
	label$330:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$329:;
	FBSTRING* vr$8 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$8;
}

static uint32* HDEFEVALW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$332:;
	uint32* ARG$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	uint32* vr$2 = HMACRO_EVALW( ARG$1, ERRNUM$1 );
	DWSTRASSIGN( &RES$1, (uint32*)vr$2 );
	fb$result$1 = *(uint32**)&RES$1;
	label$333:;
	return fb$result$1;
}

static FBSTRING* HDEFIIFZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$334:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* CEXPR$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	CEXPR$1 = vr$2;
	uint8* TEXPR$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	TEXPR$1 = vr$3;
	uint8* FEXPR$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2 );
	FEXPR$1 = vr$4;
	if( ((-(CEXPR$1 != (uint8*)0u) & -(TEXPR$1 != (uint8*)0u)) & -(FEXPR$1 != (uint8*)0u)) == 0 ) goto label$337;
	{
		FBSTRING TMP$138$2;
		FBSTRING VARSTR$2;
		FBSTRING* vr$10 = HMACRO_EVALZ( CEXPR$1, ERRNUM$1 );
		fb_StrInit( (void*)&VARSTR$2, -1, (void*)vr$10, -1, 0 );
		boolean VALUE$2;
		boolean vr$13 = fb_VALBOOL( (FBSTRING*)&VARSTR$2 );
		VALUE$2 = vr$13;
		boolean vr$15 = fb_VALBOOL( (FBSTRING*)&VARSTR$2 );
		if( vr$15 == (boolean)0 ) goto label$338;
		fb_StrInit( (void*)&TMP$138$2, -1, (void*)TEXPR$1, 0, 0 );
		goto label$546;
		label$338:;
		fb_StrInit( (void*)&TMP$138$2, -1, (void*)FEXPR$1, 0, 0 );
		label$546:;
		fb_StrAssign( (void*)&RES$1, -1, (void*)&TMP$138$2, -1, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$138$2 );
		fb_StrDelete( (FBSTRING*)&VARSTR$2 );
	}
	goto label$336;
	label$337:;
	{
		*ERRNUM$1 = 1;
	}
	label$336:;
	if( FEXPR$1 == (uint8*)0u ) goto label$340;
	{
		free( (void*)FEXPR$1 );
	}
	label$340:;
	label$339:;
	if( TEXPR$1 == (uint8*)0u ) goto label$342;
	{
		free( (void*)TEXPR$1 );
	}
	label$342:;
	label$341:;
	if( CEXPR$1 == (uint8*)0u ) goto label$344;
	{
		free( (void*)CEXPR$1 );
	}
	label$344:;
	label$343:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$335:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}

static uint32* HDEFIIFW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$345:;
	static struct $8DWSTRING RES$1;
	static struct $8DWSTRING WVARSTR$1;
	uint32* CEXPR$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	CEXPR$1 = vr$1;
	uint32* TEXPR$1;
	uint32* vr$2 = HMACRO_GETARGW( ARGTB$1, 1 );
	TEXPR$1 = vr$2;
	uint32* FEXPR$1;
	uint32* vr$3 = HMACRO_GETARGW( ARGTB$1, 2 );
	FEXPR$1 = vr$3;
	if( ((-(CEXPR$1 != (uint32*)0u) & -(TEXPR$1 != (uint32*)0u)) & -(FEXPR$1 != (uint32*)0u)) == 0 ) goto label$348;
	{
		uint32* TMP$139$2;
		int32 VALUE$2;
		VALUE$2 = 0;
		FBSTRING VARSTR$2;
		__builtin_memset( &VARSTR$2, 0, 12 );
		uint32* vr$10 = HMACRO_EVALW( CEXPR$1, ERRNUM$1 );
		DWSTRASSIGN( &WVARSTR$1, (uint32*)vr$10 );
		FBSTRING* vr$11 = fb_UIntToStr( *(uint32*)&WVARSTR$1 );
		fb_StrAssign( (void*)&VARSTR$2, -1, (void*)vr$11, -1, 0 );
		boolean vr$14 = fb_VALBOOL( (FBSTRING*)&VARSTR$2 );
		if( vr$14 == (boolean)0 ) goto label$349;
		int32 vr$15 = fb_WstrLen( (uint32*)TEXPR$1 );
		uint32* vr$16 = fb_WstrAlloc( vr$15 );
		TMP$139$2 = vr$16;
		uint32* vr$17 = fb_WstrAssign( TMP$139$2, 0, (uint32*)TEXPR$1 );
		goto label$547;
		label$349:;
		int32 vr$18 = fb_WstrLen( (uint32*)FEXPR$1 );
		uint32* vr$19 = fb_WstrAlloc( vr$18 );
		TMP$139$2 = vr$19;
		uint32* vr$20 = fb_WstrAssign( TMP$139$2, 0, (uint32*)FEXPR$1 );
		label$547:;
		DWSTRASSIGN( &RES$1, (uint32*)TMP$139$2 );
		fb_WstrDelete( (uint32*)TMP$139$2 );
		fb_StrDelete( (FBSTRING*)&VARSTR$2 );
	}
	goto label$347;
	label$348:;
	{
		*ERRNUM$1 = 1;
	}
	label$347:;
	fb$result$1 = *(uint32**)&RES$1;
	label$346:;
	return fb$result$1;
}

static FBSTRING* HDEFQUERYSYMZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$350:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( *(int32*)((uint8*)&ENV$ + 900) < 16 ) goto label$353;
	{
		*ERRNUM$1 = 27;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
		fb_StrDelete( (FBSTRING*)&RES$1 );
		goto label$351;
	}
	label$353:;
	label$352:;
	uint8* WEXPR$1;
	uint8* vr$6 = HMACRO_GETARGZ( ARGTB$1, 0 );
	WEXPR$1 = vr$6;
	uint8* SEXPR$1;
	uint8* vr$7 = HMACRO_GETARGZ( ARGTB$1, 1 );
	SEXPR$1 = vr$7;
	if( (-(WEXPR$1 != (uint8*)0u) & -(SEXPR$1 != (uint8*)0u)) == 0 ) goto label$355;
	{
		FBSTRING WHATSTR$2;
		FBSTRING* vr$11 = HMACRO_EVALZ( WEXPR$1, ERRNUM$1 );
		fb_StrInit( (void*)&WHATSTR$2, -1, (void*)vr$11, -1, 0 );
		int32 WHATVALUE$2;
		int32 vr$14 = fb_VALINT( (FBSTRING*)&WHATSTR$2 );
		WHATVALUE$2 = vr$14;
		int32 vr$17 = HSTR2LONG( &WHATSTR$2, &WHATVALUE$2 );
		if( vr$17 == 0 ) goto label$357;
		{
			$11FB_DATATYPE DTYPE$3;
			DTYPE$3 = -2147483648u;
			int32 IS_FIXLENSTR$3;
			__builtin_memset( &IS_FIXLENSTR$3, 0, 4 );
			int32 RETRY$3;
			RETRY$3 = 0;
			int64 LGT$3;
			__builtin_memset( &LGT$3, 0, 8 );
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = (struct $8FBSYMBOL*)0u;
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = (struct $8FBSYMBOL*)0u;
			int32 QUERYVALUE$3;
			QUERYVALUE$3 = WHATVALUE$2 & 255;
			int32 FILTERVALUE$3;
			FILTERVALUE$3 = WHATVALUE$2 & 65280;
			$9FB_ERRMSG ERRMSG$3;
			ERRMSG$3 = 0;
			LEXPUSHCTX(  );
			LEXINIT( 0, -1 );
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + 1;
			DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), (uint8*)SEXPR$1 );
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600);
			int32 vr$30 = fb_StrLen( (void*)SEXPR$1, 0 );
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + vr$30;
			if( FILTERVALUE$3 != 0 ) goto label$359;
			{
				{
					if( QUERYVALUE$3 == 3 ) goto label$362;
					label$363:;
					if( QUERYVALUE$3 == 4 ) goto label$362;
					label$364:;
					if( QUERYVALUE$3 == 5 ) goto label$362;
					label$365:;
					if( QUERYVALUE$3 != 6 ) goto label$361;
					label$362:;
					{
						FILTERVALUE$3 = FILTERVALUE$3 | 256;
					}
					goto label$360;
					label$361:;
					{
						FILTERVALUE$3 = FILTERVALUE$3 | 768;
					}
					label$366:;
					label$360:;
				}
			}
			label$359:;
			label$358:;
			if( (FILTERVALUE$3 & 256) == 0 ) goto label$368;
			{
				{
					int32 TMP$140$5;
					int32 vr$36 = LEXGETCLASS( 0 );
					TMP$140$5 = vr$36;
					if( TMP$140$5 == 0 ) goto label$371;
					label$372:;
					if( TMP$140$5 == 1 ) goto label$371;
					label$373:;
					if( TMP$140$5 == 2 ) goto label$371;
					label$374:;
					if( TMP$140$5 != 5 ) goto label$370;
					label$371:;
					{
						struct $8FBSYMBOL* TMP$141$6;
						TMP$141$6 = (struct $8FBSYMBOL*)0u;
						struct $8FBSYMBOL* vr$38 = CIDENTIFIERORUDTMEMBER( &TMP$141$6, (struct $10FBSYMCHAIN*)0u );
						SYM$3 = vr$38;
					}
					label$370:;
					label$369:;
				}
				if( SYM$3 == (struct $8FBSYMBOL*)0u ) goto label$376;
				{
					{
						$12FB_SYMBCLASS TMP$142$6;
						TMP$142$6 = *($12FB_SYMBCLASS*)SYM$3;
						if( TMP$142$6 != 6 ) goto label$378;
						label$379:;
						{
							DTYPE$3 = *($11FB_DATATYPE*)((uint8*)SYM$3 + 28);
							if( DTYPE$3 != -2147483648u ) goto label$381;
							{
								{
									if( QUERYVALUE$3 == 0 ) goto label$384;
									label$385:;
									if( QUERYVALUE$3 != 6 ) goto label$383;
									label$384:;
									{
										LEXSKIPTOKEN( 0 );
									}
									goto label$382;
									label$383:;
									{
										SYM$3 = (struct $8FBSYMBOL*)0u;
										RETRY$3 = -1;
									}
									label$386:;
									label$382:;
								}
							}
							goto label$380;
							label$381:;
							{
								LEXSKIPTOKEN( 0 );
							}
							label$380:;
						}
						goto label$377;
						label$378:;
						if( TMP$142$6 != 10 ) goto label$387;
						label$388:;
						{
							LEXSKIPTOKEN( 0 );
							DTYPE$3 = *($11FB_DATATYPE*)((uint8*)SYM$3 + 28);
							SUBTYPE$3 = SYM$3;
							int32 vr$42 = LEXGETTOKEN( 0 );
							if( vr$42 != 46 ) goto label$390;
							{
								CUDTTYPEMEMBER( (int32*)&DTYPE$3, &SUBTYPE$3, &LGT$3, &IS_FIXLENSTR$3, &SYM$3 );
							}
							label$390:;
							label$389:;
						}
						goto label$377;
						label$387:;
						{
							LEXSKIPTOKEN( 0 );
							DTYPE$3 = *($11FB_DATATYPE*)((uint8*)SYM$3 + 28);
							SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)SYM$3 + 32);
						}
						label$391:;
						label$377:;
					}
				}
				label$376:;
				label$375:;
				int32 vr$50 = LEXGETTOKEN( 0 );
				if( vr$50 == 256 ) goto label$393;
				{
					RETRY$3 = -1;
				}
				label$393:;
				label$392:;
				if( RETRY$3 == 0 ) goto label$395;
				{
					SYM$3 = (struct $8FBSYMBOL*)0u;
					LEXINIT( 0, -1 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), (uint8*)SEXPR$1 );
					*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600);
					int32 vr$56 = fb_StrLen( (void*)SEXPR$1, 0 );
					*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + vr$56;
				}
				label$395:;
				label$394:;
			}
			label$368:;
			label$367:;
			if( (FILTERVALUE$3 & 512) == 0 ) goto label$397;
			{
				if( SYM$3 != (struct $8FBSYMBOL*)0u ) goto label$399;
				{
					CTYPEOF( (int32*)&DTYPE$3, &SUBTYPE$3, &LGT$3, &IS_FIXLENSTR$3, &SYM$3 );
				}
				label$399:;
				label$398:;
			}
			label$397:;
			label$396:;
			{
				if( QUERYVALUE$3 != 0 ) goto label$401;
				label$402:;
				{
					if( SYM$3 == (struct $8FBSYMBOL*)0u ) goto label$404;
					{
						FBSTRING* vr$66 = fb_IntToStr( *(int32*)SYM$3 );
						fb_StrAssign( (void*)&RES$1, -1, (void*)vr$66, -1, 0 );
					}
					goto label$403;
					label$404:;
					if( SUBTYPE$3 == (struct $8FBSYMBOL*)0u ) goto label$405;
					{
						FBSTRING* vr$69 = fb_IntToStr( *(int32*)SUBTYPE$3 );
						fb_StrAssign( (void*)&RES$1, -1, (void*)vr$69, -1, 0 );
					}
					goto label$403;
					label$405:;
					{
						fb_StrAssign( (void*)&RES$1, -1, (void*)"0", 2, 0 );
					}
					label$403:;
				}
				goto label$400;
				label$401:;
				if( QUERYVALUE$3 != 1 ) goto label$406;
				label$407:;
				{
					FBSTRING* vr$72 = fb_IntToStr( DTYPE$3 );
					fb_StrAssign( (void*)&RES$1, -1, (void*)vr$72, -1, 0 );
				}
				goto label$400;
				label$406:;
				if( QUERYVALUE$3 != 2 ) goto label$408;
				label$409:;
				{
					int32 TMP$143$5;
					if( (DTYPE$3 & 480) == 0 ) goto label$410;
					TMP$143$5 = 24;
					goto label$548;
					label$410:;
					TMP$143$5 = DTYPE$3 & 31;
					label$548:;
					FBSTRING* vr$77 = fb_IntToStr( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$143$5 * 28)) );
					fb_StrAssign( (void*)&RES$1, -1, (void*)vr$77, -1, 0 );
				}
				goto label$400;
				label$408:;
				if( QUERYVALUE$3 == 3 ) goto label$412;
				label$413:;
				if( QUERYVALUE$3 != 4 ) goto label$411;
				label$412:;
				{
					FBSTRING* vr$79 = SYMBTYPETOSTR( DTYPE$3, SUBTYPE$3, LGT$3, IS_FIXLENSTR$3 );
					FBSTRING* vr$80 = fb_StrUcase2( (FBSTRING*)vr$79, 0 );
					fb_StrAssign( (void*)&RES$1, -1, (void*)vr$80, -1, 0 );
					if( QUERYVALUE$3 != 4 ) goto label$415;
					{
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 32, 95 );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 46, 95 );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 40, 95 );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 41, 95 );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 42, 95 );
					}
					label$415:;
					label$414:;
				}
				goto label$400;
				label$411:;
				if( QUERYVALUE$3 != 5 ) goto label$416;
				label$417:;
				{
					if( SYM$3 == (struct $8FBSYMBOL*)0u ) goto label$419;
					{
						SYMBMANGLETYPE( &RES$1, DTYPE$3, SYM$3, 0 );
						SYMBMANGLERESETABBREV(  );
					}
					goto label$418;
					label$419:;
					if( SUBTYPE$3 == (struct $8FBSYMBOL*)0u ) goto label$420;
					{
						SYMBMANGLETYPE( &RES$1, DTYPE$3, SUBTYPE$3, 0 );
						SYMBMANGLERESETABBREV(  );
					}
					goto label$418;
					label$420:;
					{
						fb_StrAssign( (void*)&RES$1, -1, (void*)"0", 2, 0 );
					}
					label$418:;
				}
				goto label$400;
				label$416:;
				if( QUERYVALUE$3 != 6 ) goto label$421;
				label$422:;
				{
					FBSTRING* vr$86 = fb_IntToStr( -(SYM$3 != (struct $8FBSYMBOL*)0u) );
					fb_StrAssign( (void*)&RES$1, -1, (void*)vr$86, -1, 0 );
				}
				goto label$400;
				label$421:;
				{
					*ERRNUM$1 = 17;
					fb_StrAssign( (void*)&RES$1, -1, (void*)"-1", 3, 0 );
				}
				label$423:;
				label$400:;
			}
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + -1;
			LEXPOPCTX(  );
		}
		goto label$356;
		label$357:;
		{
			*ERRNUM$1 = 17;
		}
		label$356:;
		fb_StrDelete( (FBSTRING*)&WHATSTR$2 );
	}
	goto label$354;
	label$355:;
	{
		*ERRNUM$1 = 1;
	}
	label$354:;
	if( WEXPR$1 == (uint8*)0u ) goto label$425;
	{
		free( (void*)WEXPR$1 );
	}
	label$425:;
	label$424:;
	if( SEXPR$1 == (uint8*)0u ) goto label$427;
	{
		free( (void*)SEXPR$1 );
	}
	label$427:;
	label$426:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$351:;
	FBSTRING* vr$100 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$100;
}

static void HRESETDEFHASH( void )
{
	label$483:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	{
		I$1 = 0;
		int32 TMP$235$2;
		TMP$235$2 = *(int32*)((uint8*)&SYMB$ + 98772) + -1;
		goto label$485;
		label$488:;
		{
			HASHDEL( (struct $5THASH*)((uint8*)&SYMB$ + 98776), *(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (I$1 << (3 & 31))) + 92), *(uint32*)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (I$1 << (3 & 31))) + 96) );
		}
		label$486:;
		I$1 = I$1 + 1;
		label$485:;
		if( I$1 <= TMP$235$2 ) goto label$488;
		label$487:;
	}
	*(int32*)((uint8*)&SYMB$ + 98772) = 0;
	label$484:;
}

static void HDELDEFINEPARAMS( struct $8FBSYMBOL* S$1 )
{
	label$520:;
	struct $11FB_DEFPARAM* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 4 );
	struct $11FB_DEFPARAM* NXT$1;
	__builtin_memset( &NXT$1, 0, 4 );
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 60);
	label$522:;
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$523;
	{
		NXT$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 8);
		if( *(uint8**)PARAM$1 == (uint8*)0u ) goto label$525;
		{
			free( *(void**)PARAM$1 );
		}
		label$525:;
		label$524:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98696), (void*)PARAM$1 );
		PARAM$1 = NXT$1;
	}
	goto label$522;
	label$523:;
	label$521:;
}

static void HDELDEFINETOKENS( struct $8FBSYMBOL* S$1 )
{
	label$526:;
	struct $9FB_DEFTOK* TOK$1;
	__builtin_memset( &TOK$1, 0, 4 );
	struct $9FB_DEFTOK* NXT$1;
	__builtin_memset( &NXT$1, 0, 4 );
	TOK$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 64);
	label$528:;
	if( TOK$1 == (struct $9FB_DEFTOK*)0u ) goto label$529;
	{
		NXT$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 12);
		SYMBDELDEFINETOK( TOK$1 );
		TOK$1 = NXT$1;
	}
	goto label$528;
	label$529:;
	label$527:;
}
