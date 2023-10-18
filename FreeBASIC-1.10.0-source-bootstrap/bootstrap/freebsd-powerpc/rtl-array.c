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
typedef int32 $11FB_DATATYPE;
typedef int32 $11FB_FUNCMODE;
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
typedef int32 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int32 ISOPT;
	int32 OPTVAL;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 16 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$33 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int32 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 284 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 120 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzarray( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
static struct $7ASTNODE* HBUILDPROCPTR( struct $8FBSYMBOL* );
static void HCHECKDEFCTOR( struct $8FBSYMBOL*, int32, int32 );
static void HCHECKDTOR( struct $8FBSYMBOL*, int32, int32 );
static void HGETCTORDTORFORREDIM( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL**, struct $8FBSYMBOL** );
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[17] = { { (uint8*)"fb_ArrayRedimEx", (uint8*)0u, 11, 3, (tmp$33)0u, 0, 6, { { 0, 3, 0 }, { 521, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 521, 1, 0 }, { -2147483136, 4, 0 } } }, { (uint8*)"fb_ArrayRedimPresvEx", (uint8*)0u, 11, 3, (tmp$33)0u, 0, 6, { { 0, 3, 0 }, { 521, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 521, 1, 0 }, { -2147483136, 4, 0 } } }, { (uint8*)"fb_ArrayRedimObj", (uint8*)0u, 11, 3, (tmp$33)0u, 0, 6, { { 0, 3, 0 }, { 521, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 }, { 521, 1, 0 }, { -2147483648u, 4, 0 } } }, { (uint8*)"fb_ArrayRedimPresvObj", (uint8*)0u, 11, 3, (tmp$33)0u, 0, 6, { { 0, 3, 0 }, { 521, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 }, { 521, 1, 0 }, { -2147483648u, 4, 0 } } }, { (uint8*)"fb_ArrayRedimTo", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 0, 3, 0 }, { 0, 3, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_ArrayDestructObj", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 0, 3, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_ArrayDestructStr", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 1, { { 0, 3, 0 } } }, { (uint8*)"fb_ArrayClear", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 0, 3, 0 } } }, { (uint8*)"fb_ArrayClearObj", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 0, 3, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_ArrayErase", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 0, 3, 0 } } }, { (uint8*)"fb_ArrayEraseObj", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 0, 3, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_ArrayStrErase", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 1, { { 0, 3, 0 } } }, { (uint8*)"fb_ArrayLBound", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 2, { { 512, 3, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_ArrayUBound", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 2, { { 512, 3, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_ArraySngBoundChk", (uint8*)0u, 32, -1, (tmp$33)0u, 2048, 4, { { 521, 1, 0 }, { 521, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0, 0 } } }, { (uint8*)"fb_ArrayBoundChk", (uint8*)0u, 32, -1, (tmp$33)0u, 2048, 5, { { 520, 1, 0 }, { 520, 1, 0 }, { 520, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0, 0 } } }, { (uint8*)0u } };

void RTLARRAYMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLARRAYMODEND( void )
{
	label$12:;
	label$13:;
}

struct $7ASTNODE* RTLARRAYCLEAR( struct $7ASTNODE* ARRAYEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$43:;
	struct $7ASTNODE* PROC$1;
	int32 DTYPE$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511;
	if( DTYPE$1 != 20 ) goto label$46;
	{
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 8);
		struct $8FBSYMBOL* vr$4 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
		CTOR$1 = vr$4;
		struct $8FBSYMBOL* vr$5 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		DTOR$1 = vr$5;
		struct $8FBSYMBOL* vr$7 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
		if( (-(CTOR$1 == (struct $8FBSYMBOL*)0u) & -(vr$7 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$48;
		{
			ERRREPORT( 183, 0, (uint8*)0u );
		}
		label$48:;
		label$47:;
	}
	goto label$45;
	label$46:;
	{
		CTOR$1 = (struct $8FBSYMBOL*)0u;
		DTOR$1 = (struct $8FBSYMBOL*)0u;
	}
	label$45:;
	if( (-(CTOR$1 != (struct $8FBSYMBOL*)0u) | -(DTOR$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$50;
	{
		HCHECKDEFCTOR( CTOR$1, -1, -1 );
		HCHECKDTOR( DTOR$1, -1, -1 );
		struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_ArrayClearObj", 124 );
		struct $7ASTNODE* vr$14 = ASTNEWCALL( vr$13, (struct $7ASTNODE*)0u );
		PROC$1 = vr$14;
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1 );
		if( vr$15 != (struct $7ASTNODE*)0u ) goto label$52;
		{
			goto label$44;
		}
		label$52:;
		label$51:;
		struct $7ASTNODE* vr$16 = HBUILDPROCPTR( CTOR$1 );
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, vr$16, -2147483648u, -1 );
		if( vr$17 != (struct $7ASTNODE*)0u ) goto label$54;
		{
			goto label$44;
		}
		label$54:;
		label$53:;
		struct $7ASTNODE* vr$18 = HBUILDPROCPTR( DTOR$1 );
		struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
		if( vr$19 != (struct $7ASTNODE*)0u ) goto label$56;
		{
			goto label$44;
		}
		label$56:;
		label$55:;
	}
	goto label$49;
	label$50:;
	if( DTYPE$1 != 17 ) goto label$57;
	{
		struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_ArrayDestructStr", 122 );
		struct $7ASTNODE* vr$21 = ASTNEWCALL( vr$20, (struct $7ASTNODE*)0u );
		PROC$1 = vr$21;
		struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1 );
		if( vr$22 != (struct $7ASTNODE*)0u ) goto label$59;
		{
			goto label$44;
		}
		label$59:;
		label$58:;
	}
	goto label$49;
	label$57:;
	{
		struct $8FBSYMBOL* vr$23 = RTLPROCLOOKUP( (uint8*)"fb_ArrayClear", 123 );
		struct $7ASTNODE* vr$24 = ASTNEWCALL( vr$23, (struct $7ASTNODE*)0u );
		PROC$1 = vr$24;
		struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1 );
		if( vr$25 != (struct $7ASTNODE*)0u ) goto label$61;
		{
			goto label$44;
		}
		label$61:;
		label$60:;
	}
	label$49:;
	fb$result$1 = PROC$1;
	label$44:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYERASE( struct $7ASTNODE* ARRAYEXPR$1, int32 IS_DYNAMIC$1, int32 CHECK_ACCESS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	struct $7ASTNODE* PROC$1;
	int32 DTYPE$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)ARRAYEXPR$1 + 4) & 511;
	if( DTYPE$1 != 20 ) goto label$65;
	{
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 8);
		struct $8FBSYMBOL* vr$4 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
		CTOR$1 = vr$4;
		struct $8FBSYMBOL* vr$5 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		DTOR$1 = vr$5;
		struct $8FBSYMBOL* vr$7 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
		if( (-(CTOR$1 == (struct $8FBSYMBOL*)0u) & -(vr$7 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$67;
		{
			ERRREPORT( 183, 0, (uint8*)0u );
		}
		label$67:;
		label$66:;
	}
	goto label$64;
	label$65:;
	{
		CTOR$1 = (struct $8FBSYMBOL*)0u;
		DTOR$1 = (struct $8FBSYMBOL*)0u;
	}
	label$64:;
	if( (-(CTOR$1 != (struct $8FBSYMBOL*)0u) | -(DTOR$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$69;
	{
		HCHECKDTOR( DTOR$1, CHECK_ACCESS$1, -1 );
		if( IS_DYNAMIC$1 == 0 ) goto label$71;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_ArrayEraseObj", 126 );
			struct $7ASTNODE* vr$14 = ASTNEWCALL( vr$13, (struct $7ASTNODE*)0u );
			PROC$1 = vr$14;
		}
		goto label$70;
		label$71:;
		{
			struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_ArrayDestructObj", 121 );
			struct $7ASTNODE* vr$16 = ASTNEWCALL( vr$15, (struct $7ASTNODE*)0u );
			PROC$1 = vr$16;
		}
		label$70:;
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1 );
		if( vr$17 != (struct $7ASTNODE*)0u ) goto label$73;
		{
			goto label$63;
		}
		label$73:;
		label$72:;
		if( IS_DYNAMIC$1 == 0 ) goto label$75;
		{
			struct $7ASTNODE* vr$18 = HBUILDPROCPTR( CTOR$1 );
			struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
			if( vr$19 != (struct $7ASTNODE*)0u ) goto label$77;
			{
				goto label$63;
			}
			label$77:;
			label$76:;
		}
		label$75:;
		label$74:;
		struct $7ASTNODE* vr$20 = HBUILDPROCPTR( DTOR$1 );
		struct $7ASTNODE* vr$21 = ASTNEWARG( PROC$1, vr$20, -2147483648u, -1 );
		if( vr$21 != (struct $7ASTNODE*)0u ) goto label$79;
		{
			goto label$63;
		}
		label$79:;
		label$78:;
	}
	goto label$68;
	label$69:;
	if( DTYPE$1 != 17 ) goto label$80;
	{
		if( IS_DYNAMIC$1 == 0 ) goto label$82;
		{
			struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_ArrayStrErase", 127 );
			struct $7ASTNODE* vr$23 = ASTNEWCALL( vr$22, (struct $7ASTNODE*)0u );
			PROC$1 = vr$23;
		}
		goto label$81;
		label$82:;
		{
			struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_ArrayDestructStr", 122 );
			struct $7ASTNODE* vr$25 = ASTNEWCALL( vr$24, (struct $7ASTNODE*)0u );
			PROC$1 = vr$25;
		}
		label$81:;
		struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1 );
		if( vr$26 != (struct $7ASTNODE*)0u ) goto label$84;
		{
			goto label$63;
		}
		label$84:;
		label$83:;
	}
	goto label$68;
	label$80:;
	{
		if( IS_DYNAMIC$1 != 0 ) goto label$86;
		{
			goto label$63;
		}
		label$86:;
		label$85:;
		struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_ArrayErase", 125 );
		struct $7ASTNODE* vr$28 = ASTNEWCALL( vr$27, (struct $7ASTNODE*)0u );
		PROC$1 = vr$28;
		struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1 );
		if( vr$29 != (struct $7ASTNODE*)0u ) goto label$88;
		{
			goto label$63;
		}
		label$88:;
		label$87:;
	}
	label$68:;
	fb$result$1 = PROC$1;
	label$63:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYREDIM( struct $7ASTNODE* ARRAYEXPR$1, int32 DIMENSIONS$1, struct $7FBARRAYIP7ASTNODEE* EXPRTB$1, int32 DOPRESERVE$1, int32 DOCLEAR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$93:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	int32 DTYPE$1;
	int64 ELEMENTLEN$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 12);
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28);
	ELEMENTLEN$1 = *(int64*)((uint8*)SYM$1 + 40);
	HGETCTORDTORFORREDIM( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), &CTOR$1, &DTOR$1 );
	if( (-(CTOR$1 == (struct $8FBSYMBOL*)0u) & -(DTOR$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$96;
	{
		if( DOPRESERVE$1 != 0 ) goto label$98;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimEx", 128 );
			F$1 = vr$10;
		}
		goto label$97;
		label$98:;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimPresvEx", 130 );
			F$1 = vr$11;
		}
		label$97:;
	}
	goto label$95;
	label$96:;
	{
		if( DOPRESERVE$1 != 0 ) goto label$100;
		{
			struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimObj", 129 );
			F$1 = vr$12;
		}
		goto label$99;
		label$100:;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimPresvObj", 131 );
			F$1 = vr$13;
		}
		label$99:;
	}
	label$95:;
	struct $7ASTNODE* vr$14 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$14;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ARRAYEXPR$1, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$102;
	{
		goto label$94;
	}
	label$102:;
	label$101:;
	struct $7ASTNODE* vr$16 = ASTNEWCONSTI( ELEMENTLEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, vr$16, -2147483648u, -1 );
	if( vr$17 != (struct $7ASTNODE*)0u ) goto label$104;
	{
		goto label$94;
	}
	label$104:;
	label$103:;
	if( (-(CTOR$1 == (struct $8FBSYMBOL*)0u) & -(DTOR$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$106;
	{
		struct $7ASTNODE* vr$22 = ASTNEWCONSTI( (int64)DOCLEAR$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, vr$22, -2147483648u, -1 );
		if( vr$23 != (struct $7ASTNODE*)0u ) goto label$108;
		{
			goto label$94;
		}
		label$108:;
		label$107:;
		struct $7ASTNODE* vr$26 = ASTNEWCONSTI( (int64)-(DTYPE$1 == 17), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$27 = ASTNEWARG( PROC$1, vr$26, -2147483648u, -1 );
		if( vr$27 != (struct $7ASTNODE*)0u ) goto label$110;
		{
			goto label$94;
		}
		label$110:;
		label$109:;
	}
	goto label$105;
	label$106:;
	{
		HCHECKDEFCTOR( CTOR$1, -1, 0 );
		HCHECKDTOR( DTOR$1, -1, 0 );
		struct $7ASTNODE* vr$28 = HBUILDPROCPTR( CTOR$1 );
		struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, vr$28, -2147483648u, -1 );
		if( vr$29 != (struct $7ASTNODE*)0u ) goto label$112;
		{
			goto label$94;
		}
		label$112:;
		label$111:;
		struct $7ASTNODE* vr$30 = HBUILDPROCPTR( DTOR$1 );
		struct $7ASTNODE* vr$31 = ASTNEWARG( PROC$1, vr$30, -2147483648u, -1 );
		if( vr$31 != (struct $7ASTNODE*)0u ) goto label$114;
		{
			goto label$94;
		}
		label$114:;
		label$113:;
	}
	label$105:;
	struct $7ASTNODE* vr$33 = ASTNEWCONSTI( (int64)DIMENSIONS$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$34 = ASTNEWARG( PROC$1, vr$33, -2147483648u, -1 );
	if( vr$34 != (struct $7ASTNODE*)0u ) goto label$116;
	{
		goto label$94;
	}
	label$116:;
	label$115:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$112$2;
		TMP$112$2 = DIMENSIONS$1 + -1;
		goto label$117;
		label$120:;
		{
			EXPR$1 = *(struct $7ASTNODE**)(((I$2 * *(int32*)((uint8*)EXPRTB$1 + 36)) << (2 & 31)) + *(int32*)EXPRTB$1);
			if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) == 8 ) goto label$122;
			{
				struct $7ASTNODE* vr$43 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
				EXPR$1 = vr$43;
				if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$124;
				{
					goto label$94;
				}
				label$124:;
				label$123:;
			}
			label$122:;
			label$121:;
			struct $7ASTNODE* vr$44 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
			if( vr$44 != (struct $7ASTNODE*)0u ) goto label$126;
			{
				goto label$94;
			}
			label$126:;
			label$125:;
			EXPR$1 = *(struct $7ASTNODE**)((uint8*)(((I$2 * *(int32*)((uint8*)EXPRTB$1 + 36)) << (2 & 31)) + *(int32*)EXPRTB$1) + 4);
			if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) == 8 ) goto label$128;
			{
				struct $7ASTNODE* vr$52 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
				EXPR$1 = vr$52;
				if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$130;
				{
					goto label$94;
				}
				label$130:;
				label$129:;
			}
			label$128:;
			label$127:;
			struct $7ASTNODE* vr$53 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
			if( vr$53 != (struct $7ASTNODE*)0u ) goto label$132;
			{
				goto label$94;
			}
			label$132:;
			label$131:;
		}
		label$118:;
		I$2 = I$2 + 1;
		label$117:;
		if( I$2 <= TMP$112$2 ) goto label$120;
		label$119:;
	}
	struct $7ASTNODE* vr$55 = RTLERRORCHECK( PROC$1 );
	fb$result$1 = vr$55;
	label$94:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYREDIMTO( struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* SRCEXPR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$133:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	HGETCTORDTORFORREDIM( DTYPE$1, SUBTYPE$1, &CTOR$1, &DTOR$1 );
	struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimTo", 132 );
	struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0u );
	PROC$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DSTEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$136;
	{
		goto label$134;
	}
	label$136:;
	label$135:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, SRCEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$138;
	{
		goto label$134;
	}
	label$138:;
	label$137:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)-((DTYPE$1 & 511) == 17), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$140;
	{
		goto label$134;
	}
	label$140:;
	label$139:;
	HCHECKDEFCTOR( CTOR$1, 0, 0 );
	HCHECKDTOR( DTOR$1, 0, 0 );
	struct $7ASTNODE* vr$12 = HBUILDPROCPTR( CTOR$1 );
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, vr$12, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$142;
	{
		goto label$134;
	}
	label$142:;
	label$141:;
	struct $7ASTNODE* vr$14 = HBUILDPROCPTR( DTOR$1 );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$144;
	{
		goto label$134;
	}
	label$144:;
	label$143:;
	struct $7ASTNODE* vr$16 = RTLERRORCHECK( PROC$1 );
	fb$result$1 = vr$16;
	label$134:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYBOUND( struct $7ASTNODE* ARRAYEXPR$1, struct $7ASTNODE* DIMEXPR$1, int32 ISLBOUND$1 )
{
	struct $8FBSYMBOL* TMP$113$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$145:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( ISLBOUND$1 == 0 ) goto label$147;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ArrayLBound", 133 );
	TMP$113$1 = vr$1;
	goto label$152;
	label$147:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_ArrayUBound", 134 );
	TMP$113$1 = vr$2;
	label$152:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$113$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, ARRAYEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$149;
	{
		goto label$146;
	}
	label$149:;
	label$148:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DIMEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$151;
	{
		goto label$146;
	}
	label$151:;
	label$150:;
	fb$result$1 = PROC$1;
	label$146:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYBOUNDSCHECK( struct $7ASTNODE* IDX$1, struct $7ASTNODE* LB$1, struct $7ASTNODE* RB$1, int32 LINENUM$1, uint8* MODULE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$153:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( LB$1 != (struct $7ASTNODE*)0u ) goto label$156;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ArraySngBoundChk", 135 );
		F$1 = vr$1;
	}
	goto label$155;
	label$156:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_ArrayBoundChk", 136 );
		F$1 = vr$2;
	}
	label$155:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, IDX$1, 16, (int32*)0u );
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, vr$4, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$158;
	{
		goto label$154;
	}
	label$158:;
	label$157:;
	if( LB$1 == (struct $7ASTNODE*)0u ) goto label$160;
	{
		struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, LB$1, 8, -1 );
		if( vr$6 != (struct $7ASTNODE*)0u ) goto label$162;
		{
			goto label$154;
		}
		label$162:;
		label$161:;
	}
	label$160:;
	label$159:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, RB$1, 8, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$164;
	{
		goto label$154;
	}
	label$164:;
	label$163:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( (int64)LINENUM$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$166;
	{
		goto label$154;
	}
	label$166:;
	label$165:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTSTR( MODULE$1 );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$168;
	{
		goto label$154;
	}
	label$168:;
	label$167:;
	fb$result$1 = PROC$1;
	label$154:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzarray( void )
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

static struct $7ASTNODE* HBUILDPROCPTR( struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$17;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$1;
		goto label$15;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$2 = ASTBUILDPROCADDROF( PROC$1 );
	fb$result$1 = vr$2;
	label$15:;
	return fb$result$1;
}

static void HCHECKDEFCTOR( struct $8FBSYMBOL* CTOR$1, int32 CHECK_ACCESS$1, int32 IS_ERASE$1 )
{
	label$18:;
	if( CTOR$1 != (struct $8FBSYMBOL*)0u ) goto label$21;
	{
		goto label$19;
		label$21:;
	}
	if( CHECK_ACCESS$1 == 0 ) goto label$23;
	{
		int32 vr$0 = SYMBCHECKACCESS( CTOR$1 );
		if( vr$0 != 0 ) goto label$25;
		{
			ERRREPORT( 204, 0, (uint8*)0u );
		}
		label$25:;
		label$24:;
	}
	label$23:;
	label$22:;
	if( *(int32*)((uint8*)CTOR$1 + 84) == 3 ) goto label$27;
	{
		$9FB_ERRMSG TMP$109$2;
		if( IS_ERASE$1 == 0 ) goto label$28;
		TMP$109$2 = 174;
		goto label$169;
		label$28:;
		TMP$109$2 = 171;
		label$169:;
		ERRREPORT( TMP$109$2, 0, (uint8*)0u );
	}
	label$27:;
	label$26:;
	if( (int32)*(int16*)((uint8*)CTOR$1 + 68) == 1 ) goto label$30;
	{
		$9FB_ERRMSG TMP$110$2;
		if( IS_ERASE$1 == 0 ) goto label$31;
		TMP$110$2 = 176;
		goto label$170;
		label$31:;
		TMP$110$2 = 173;
		label$170:;
		ERRREPORT( TMP$110$2, 0, (uint8*)0u );
	}
	label$30:;
	label$29:;
	label$19:;
}

static void HCHECKDTOR( struct $8FBSYMBOL* DTOR$1, int32 CHECK_ACCESS$1, int32 IS_ERASE$1 )
{
	label$32:;
	if( DTOR$1 != (struct $8FBSYMBOL*)0u ) goto label$35;
	{
		goto label$33;
		label$35:;
	}
	if( CHECK_ACCESS$1 == 0 ) goto label$37;
	{
		int32 vr$0 = SYMBCHECKACCESS( DTOR$1 );
		if( vr$0 != 0 ) goto label$39;
		{
			ERRREPORT( 206, 0, (uint8*)0u );
		}
		label$39:;
		label$38:;
	}
	label$37:;
	label$36:;
	if( *(int32*)((uint8*)DTOR$1 + 84) == 3 ) goto label$41;
	{
		$9FB_ERRMSG TMP$111$2;
		if( IS_ERASE$1 == 0 ) goto label$42;
		TMP$111$2 = 175;
		goto label$171;
		label$42:;
		TMP$111$2 = 172;
		label$171:;
		ERRREPORT( TMP$111$2, 0, (uint8*)0u );
	}
	label$41:;
	label$40:;
	label$33:;
}

static void HGETCTORDTORFORREDIM( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL** CTOR$1, struct $8FBSYMBOL** DTOR$1 )
{
	label$89:;
	if( (DTYPE$1 & 511) != 20 ) goto label$92;
	{
		struct $8FBSYMBOL* vr$1 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
		*CTOR$1 = vr$1;
		struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		*DTOR$1 = vr$3;
	}
	goto label$91;
	label$92:;
	{
		*CTOR$1 = (struct $8FBSYMBOL*)0u;
		*DTOR$1 = (struct $8FBSYMBOL*)0u;
	}
	label$91:;
	label$90:;
}
