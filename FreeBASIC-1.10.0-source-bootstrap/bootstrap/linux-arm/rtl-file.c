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
typedef int32 $10FBOPENKIND;
typedef int32 $13FB_COMPTARGET;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzfile( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int32, uint8*, int32 );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int32 );
int32 SYMBISSTRING( int32 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
int64 RTLCALCEXPRLEN( struct $7ASTNODE* );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
int32 RTLPRINTER_CB( struct $8FBSYMBOL* );
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
typedef int32 $10FB_BACKEND;
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[72] = { { (uint8*)"fb_FileOpen", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 6, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_FileOpenEncod", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenShort", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 6, { { 529, 2, 0 }, { 523, 1, 0 }, { 529, 2, 0 }, { 523, 1, 0 }, { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_FileOpenCons", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenErr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenPipe", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenScrn", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenLpt", (uint8*)0u, 11, -1, (tmp$33)&RTLPRINTER_CB, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenCom", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 7, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileOpenQB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 6, { { 529, 2, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_FileClose", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_FileCloseAll", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"fb_FilePut", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 523, 1, 0 }, { 512, 2, 0 }, { 521, 1, 0 } } }, { (uint8*)"fb_FilePutLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 525, 1, 0 }, { 512, 2, 0 }, { 521, 1, 0 } } }, { (uint8*)"fb_FilePutStr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 523, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FilePutStrLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 525, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FilePutArray", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 523, 1, 0 }, { 512, 3, 0 } } }, { (uint8*)"fb_FilePutArrayLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 525, 1, 0 }, { 512, 3, 0 } } }, { (uint8*)"fb_FileGet", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 523, 1, 0 }, { 0, 2, 0 }, { 521, 1, 0 } } }, { (uint8*)"fb_FileGetLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 525, 1, 0 }, { 0, 2, 0 }, { 521, 1, 0 } } }, { (uint8*)"fb_FileGetStr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 523, 1, 0 }, { 0, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FileGetWstr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 523, 1, 0 }, { 7, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FileGetStrLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 525, 1, 0 }, { 0, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FileGetWstrLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 525, 1, 0 }, { 7, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FileGetArray", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 523, 1, 0 }, { 0, 3, 0 } } }, { (uint8*)"fb_FileGetArrayLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 525, 1, 0 }, { 0, 3, 0 } } }, { (uint8*)"fb_FileGetIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 523, 1, 0 }, { 0, 2, 0 }, { 521, 1, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetLargeIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 525, 1, 0 }, { 0, 2, 0 }, { 521, 1, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetStrIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 523, 1, 0 }, { 0, 2, 0 }, { 520, 1, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetWstrIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 523, 1, 0 }, { 7, 2, 0 }, { 520, 1, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetStrLargeIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 525, 1, 0 }, { 0, 2, 0 }, { 520, 1, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetWstrLargeIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 525, 1, 0 }, { 7, 2, 0 }, { 520, 1, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetArrayIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 523, 1, 0 }, { 0, 3, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileGetArrayLargeIOB", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 525, 1, 0 }, { 0, 3, 0 }, { 9, 2, 0 } } }, { (uint8*)"fb_FileTell", (uint8*)0u, 13, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_FileSeek", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 2, { { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_FileSeekLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 2, { { 523, 1, 0 }, { 525, 1, 0 } } }, { (uint8*)"fb_FileStrInput", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 520, 1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_FileLineInput", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 0, 2, 0 }, { 520, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_FileLineInputWstr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 39, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_LineInput", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 6, { { 529, 2, 0 }, { 0, 2, 0 }, { 520, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_LineInputWstr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 5, { { 1063, 1, 0 }, { 39, 1, 0 }, { 520, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_FileInput", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_ConsoleInput", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 529, 2, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_InputBool", (uint8*)0u, 11, -1, (tmp$33)0u, 128, 1, { { 1, 2, 0 } } }, { (uint8*)"fb_InputByte", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 2, 2, 0 } } }, { (uint8*)"fb_InputUbyte", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 3, 2, 0 } } }, { (uint8*)"fb_InputShort", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 5, 2, 0 } } }, { (uint8*)"fb_InputUshort", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 6, 2, 0 } } }, { (uint8*)"fb_InputInt", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 11, 2, 0 } } }, { (uint8*)"fb_InputUint", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 12, 2, 0 } } }, { (uint8*)"fb_InputLongint", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 13, 2, 0 } } }, { (uint8*)"fb_InputUlongint", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 14, 2, 0 } } }, { (uint8*)"fb_InputSingle", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 15, 2, 0 } } }, { (uint8*)"fb_InputDouble", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 16, 2, 0 } } }, { (uint8*)"fb_InputString", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 0, 2, 0 }, { 520, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_InputWstr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 2, { { 39, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_FileLock", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 524, 1, 0 }, { 524, 1, -1, 0 } } }, { (uint8*)"fb_FileLockLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 525, 1, 0 }, { 525, 1, -1, 0 } } }, { (uint8*)"fb_FileUnlock", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 524, 1, 0 }, { 524, 1, -1, 0 } } }, { (uint8*)"fb_FileUnlockLarge", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 525, 1, 0 }, { 525, 1, -1, 0 } } }, { (uint8*)"fb_rename", (uint8*)"rename", 11, 3, (tmp$33)0u, 0, 2, { { 1060, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_FileWstrInput", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 520, 1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"freefile", (uint8*)"fb_FileFree", 11, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"eof", (uint8*)"fb_FileEof", 11, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"kill", (uint8*)"fb_FileKill", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"reset", (uint8*)"fb_FileReset", 0, -1, (tmp$33)0u, 1, 0 }, { (uint8*)"reset", (uint8*)"fb_FileResetEx", 0, -1, (tmp$33)0u, 1, 1, { { 523, 1, 0 } } }, { (uint8*)"lof", (uint8*)"fb_FileSize", 13, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"loc", (uint8*)"fb_FileLocation", 13, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"lpos", (uint8*)"fb_LPos", 11, -1, (tmp$33)&RTLPRINTER_CB, 0, 1, { { 523, 1, 0 } } }, { (uint8*)0u } };

void RTLFILEMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLFILEMODEND( void )
{
	label$12:;
	label$13:;
}

struct $7ASTNODE* RTLFILEOPEN( struct $7ASTNODE* FILENAME$1, struct $7ASTNODE* FMODE$1, struct $7ASTNODE* FACCESS$1, struct $7ASTNODE* FLOCK$1, struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* FLEN$1, struct $7ASTNODE* FENCODING$1, int32 ISFUNC$1, $10FBOPENKIND OPENKIND$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 DOENCODING$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DOENCODING$1 = -1;
	{
		if( OPENKIND$1 != 0 ) goto label$17;
		label$18:;
		{
			if( FENCODING$1 != (struct $7ASTNODE*)0u ) goto label$20;
			{
				struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileOpen", 224 );
				F$1 = vr$1;
				DOENCODING$1 = 0;
			}
			goto label$19;
			label$20:;
			{
				struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenEncod", 225 );
				F$1 = vr$2;
			}
			label$19:;
		}
		goto label$16;
		label$17:;
		if( OPENKIND$1 != 1 ) goto label$21;
		label$22:;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenCons", 227 );
			F$1 = vr$3;
		}
		goto label$16;
		label$21:;
		if( OPENKIND$1 != 2 ) goto label$23;
		label$24:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenErr", 228 );
			F$1 = vr$4;
		}
		goto label$16;
		label$23:;
		if( OPENKIND$1 != 3 ) goto label$25;
		label$26:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenPipe", 229 );
			F$1 = vr$5;
		}
		goto label$16;
		label$25:;
		if( OPENKIND$1 != 4 ) goto label$27;
		label$28:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenScrn", 230 );
			F$1 = vr$6;
		}
		goto label$16;
		label$27:;
		if( OPENKIND$1 != 5 ) goto label$29;
		label$30:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenLpt", 231 );
			F$1 = vr$7;
		}
		goto label$16;
		label$29:;
		if( OPENKIND$1 != 6 ) goto label$31;
		label$32:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenCom", 232 );
			F$1 = vr$8;
		}
		goto label$16;
		label$31:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenQB", 233 );
			F$1 = vr$9;
			DOENCODING$1 = 0;
			{
				$13FB_COMPTARGET TMP$172$4;
				TMP$172$4 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
				if( TMP$172$4 == 0 ) goto label$36;
				label$37:;
				if( TMP$172$4 != 1 ) goto label$35;
				label$36:;
				{
					FBADDLIB( (uint8*)"gdi32" );
					FBADDLIB( (uint8*)"winspool" );
				}
				label$35:;
				label$34:;
			}
		}
		label$33:;
		label$16:;
	}
	struct $7ASTNODE* vr$10 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$10;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, FILENAME$1, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$39;
	{
		goto label$15;
	}
	label$39:;
	label$38:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, FMODE$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$41;
	{
		goto label$15;
	}
	label$41:;
	label$40:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, FACCESS$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$43;
	{
		goto label$15;
	}
	label$43:;
	label$42:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, FLOCK$1, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$45;
	{
		goto label$15;
	}
	label$45:;
	label$44:;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$47;
	{
		goto label$15;
	}
	label$47:;
	label$46:;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, FLEN$1, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$49;
	{
		goto label$15;
	}
	label$49:;
	label$48:;
	if( DOENCODING$1 == 0 ) goto label$51;
	{
		if( FENCODING$1 != (struct $7ASTNODE*)0u ) goto label$53;
		{
			struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 36, (struct $8FBSYMBOL*)0u );
			FENCODING$1 = vr$17;
		}
		label$53:;
		label$52:;
		struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, FENCODING$1, -2147483648u, -1 );
		if( vr$18 != (struct $7ASTNODE*)0u ) goto label$55;
		{
			goto label$15;
		}
		label$55:;
		label$54:;
	}
	label$51:;
	label$50:;
	if( ISFUNC$1 != 0 ) goto label$57;
	{
		struct $7ASTNODE* vr$19 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$19 );
	}
	label$57:;
	label$56:;
	fb$result$1 = PROC$1;
	label$15:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEOPENSHORT( struct $7ASTNODE* FILENAME$1, struct $7ASTNODE* FMODE$1, struct $7ASTNODE* FACCESS$1, struct $7ASTNODE* FLOCK$1, struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* FLEN$1, int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$58:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenShort", 226 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FMODE$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$61;
	{
		goto label$59;
	}
	label$61:;
	label$60:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$63;
	{
		goto label$59;
	}
	label$63:;
	label$62:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, FILENAME$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$65;
	{
		goto label$59;
	}
	label$65:;
	label$64:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, FLEN$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$67;
	{
		goto label$59;
	}
	label$67:;
	label$66:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, FACCESS$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$69;
	{
		goto label$59;
	}
	label$69:;
	label$68:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, FLOCK$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$71;
	{
		goto label$59;
	}
	label$71:;
	label$70:;
	if( ISFUNC$1 != 0 ) goto label$73;
	{
		struct $7ASTNODE* vr$9 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$9 );
	}
	label$73:;
	label$72:;
	fb$result$1 = PROC$1;
	label$59:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILECLOSE( struct $7ASTNODE* FILENUM$1, int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$74:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( FILENUM$1 == (struct $7ASTNODE*)0u ) goto label$77;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileClose", 234 );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
		PROC$1 = vr$2;
		struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
		if( vr$3 != (struct $7ASTNODE*)0u ) goto label$79;
		{
			goto label$75;
		}
		label$79:;
		label$78:;
	}
	goto label$76;
	label$77:;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_FileCloseAll", 235 );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0u );
		PROC$1 = vr$5;
	}
	label$76:;
	if( ISFUNC$1 != 0 ) goto label$81;
	{
		struct $7ASTNODE* vr$6 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$6 );
	}
	label$81:;
	label$80:;
	fb$result$1 = PROC$1;
	label$75:;
	return fb$result$1;
}

int32 RTLFILESEEK( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* NEWPOS$1 )
{
	int32 TMP$175$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$82:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 POS_DTYPE$1;
	fb$result$1 = 0;
	POS_DTYPE$1 = *(int32*)((uint8*)NEWPOS$1 + 4) & 511;
	if( (POS_DTYPE$1 & 480) == 0 ) goto label$84;
	TMP$175$1 = 24;
	goto label$91;
	label$84:;
	TMP$175$1 = POS_DTYPE$1 & 31;
	label$91:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$175$1 * 28)) + 4) != 8 ) goto label$86;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_FileSeekLarge", 262 );
		F$1 = vr$6;
	}
	goto label$85;
	label$86:;
	{
		struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_FileSeek", 261 );
		F$1 = vr$7;
	}
	label$85:;
	struct $7ASTNODE* vr$8 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$8;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$88;
	{
		goto label$83;
	}
	label$88:;
	label$87:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, NEWPOS$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$90;
	{
		goto label$83;
	}
	label$90:;
	label$89:;
	struct $7ASTNODE* vr$11 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$11 );
	fb$result$1 = -1;
	label$83:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILETELL( struct $7ASTNODE* FILENUM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$92:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileTell", 260 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$95;
	{
		goto label$93;
	}
	label$95:;
	label$94:;
	fb$result$1 = PROC$1;
	label$93:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEPUT( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* SRC$1, struct $7ASTNODE* ELEMENTS$1, int32 ISFUNC$1 )
{
	int32 TMP$176$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$96:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* BYTES$1;
	int32 DTYPE$1;
	int32 O_DTYPE$1;
	int32 ISSTRING$1;
	int32 ISLARGE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)SRC$1 + 4) & 511;
	int32 vr$3 = SYMBISSTRING( DTYPE$1 );
	ISSTRING$1 = vr$3;
	if( OFFSET$1 != (struct $7ASTNODE*)0u ) goto label$99;
	{
		struct $7ASTNODE* vr$4 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		OFFSET$1 = vr$4;
	}
	label$99:;
	label$98:;
	O_DTYPE$1 = *(int32*)((uint8*)OFFSET$1 + 4) & 511;
	if( (O_DTYPE$1 & 480) == 0 ) goto label$100;
	TMP$176$1 = 24;
	goto label$126;
	label$100:;
	TMP$176$1 = O_DTYPE$1 & 31;
	label$126:;
	ISLARGE$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$176$1 * 28)) + 4) == 8);
	if( ISSTRING$1 == 0 ) goto label$102;
	{
		if( ISLARGE$1 == 0 ) goto label$104;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_FilePutStrLarge", 239 );
			F$1 = vr$11;
		}
		goto label$103;
		label$104:;
		{
			struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_FilePutStr", 238 );
			F$1 = vr$12;
		}
		label$103:;
	}
	goto label$101;
	label$102:;
	{
		if( ISLARGE$1 == 0 ) goto label$106;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_FilePutLarge", 237 );
			F$1 = vr$13;
		}
		goto label$105;
		label$106:;
		{
			struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_FilePut", 236 );
			F$1 = vr$14;
		}
		label$105:;
	}
	label$101:;
	struct $7ASTNODE* vr$15 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$15;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$108;
	{
		goto label$97;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, OFFSET$1, -2147483648u, -1 );
	if( vr$17 != (struct $7ASTNODE*)0u ) goto label$110;
	{
		goto label$97;
	}
	label$110:;
	label$109:;
	if( ISSTRING$1 == 0 ) goto label$112;
	{
		int64 vr$18 = RTLCALCSTRLEN( SRC$1, DTYPE$1 );
		LGT$1 = vr$18;
	}
	goto label$111;
	label$112:;
	{
		int64 vr$19 = RTLCALCEXPRLEN( SRC$1 );
		LGT$1 = vr$19;
	}
	label$111:;
	if( ELEMENTS$1 != (struct $7ASTNODE*)0u ) goto label$114;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		BYTES$1 = vr$20;
	}
	goto label$113;
	label$114:;
	{
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$22 = ASTNEWBOP( 30, ELEMENTS$1, vr$21, (struct $8FBSYMBOL*)0u, 1 );
		BYTES$1 = vr$22;
	}
	label$113:;
	if( (*(int32*)((uint8*)SRC$1 + 4) & 511) != 20 ) goto label$116;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 8) + 120) & 4) == 0 ) goto label$118;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 10 );
		}
		label$118:;
		label$117:;
	}
	goto label$115;
	label$116:;
	if( ((*(int32*)((uint8*)SRC$1 + 4) & 511) & 480) == 0 ) goto label$119;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 29 );
	}
	label$119:;
	label$115:;
	struct $7ASTNODE* vr$33 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$33 != (struct $7ASTNODE*)0u ) goto label$121;
	{
		goto label$97;
	}
	label$121:;
	label$120:;
	struct $7ASTNODE* vr$34 = ASTNEWARG( PROC$1, BYTES$1, -2147483648u, -1 );
	if( vr$34 != (struct $7ASTNODE*)0u ) goto label$123;
	{
		goto label$97;
	}
	label$123:;
	label$122:;
	if( ISFUNC$1 != 0 ) goto label$125;
	{
		struct $7ASTNODE* vr$35 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$35 );
	}
	label$125:;
	label$124:;
	fb$result$1 = PROC$1;
	label$97:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEPUTARRAY( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* SRC$1, int32 ISFUNC$1 )
{
	int32 TMP$177$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$127:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 O_DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( OFFSET$1 != (struct $7ASTNODE*)0u ) goto label$130;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		OFFSET$1 = vr$1;
	}
	label$130:;
	label$129:;
	O_DTYPE$1 = *(int32*)((uint8*)OFFSET$1 + 4) & 511;
	if( (O_DTYPE$1 & 480) == 0 ) goto label$131;
	TMP$177$1 = 24;
	goto label$147;
	label$131:;
	TMP$177$1 = O_DTYPE$1 & 31;
	label$147:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$177$1 * 28)) + 4) != 8 ) goto label$133;
	{
		struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_FilePutArrayLarge", 243 );
		F$1 = vr$7;
	}
	goto label$132;
	label$133:;
	{
		struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_FilePutArray", 242 );
		F$1 = vr$8;
	}
	label$132:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$135;
	{
		goto label$128;
	}
	label$135:;
	label$134:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, OFFSET$1, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$137;
	{
		goto label$128;
	}
	label$137:;
	label$136:;
	if( (*(int32*)((uint8*)SRC$1 + 4) & 511) != 20 ) goto label$139;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 8) + 120) & 4) == 0 ) goto label$141;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 10 );
		}
		label$141:;
		label$140:;
	}
	goto label$138;
	label$139:;
	if( ((*(int32*)((uint8*)SRC$1 + 4) & 511) & 480) == 0 ) goto label$142;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 29 );
	}
	label$142:;
	label$138:;
	struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$22 != (struct $7ASTNODE*)0u ) goto label$144;
	{
		goto label$128;
	}
	label$144:;
	label$143:;
	if( ISFUNC$1 != 0 ) goto label$146;
	{
		struct $7ASTNODE* vr$23 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$23 );
	}
	label$146:;
	label$145:;
	fb$result$1 = PROC$1;
	label$128:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEGET( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* DST$1, struct $7ASTNODE* ELEMENTS$1, struct $7ASTNODE* IOBYTES$1, int32 ISFUNC$1 )
{
	int32 TMP$178$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$148:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* BYTES$1;
	int32 DTYPE$1;
	int32 O_DTYPE$1;
	int32 ISSTRING$1;
	int32 ISLARGE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)DST$1 + 4) & 511;
	int32 vr$3 = SYMBISSTRING( DTYPE$1 );
	ISSTRING$1 = vr$3;
	int32 ISWSTR$1;
	ISWSTR$1 = -(DTYPE$1 == 7);
	if( OFFSET$1 != (struct $7ASTNODE*)0u ) goto label$151;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		OFFSET$1 = vr$5;
	}
	label$151:;
	label$150:;
	O_DTYPE$1 = *(int32*)((uint8*)OFFSET$1 + 4) & 511;
	if( (O_DTYPE$1 & 480) == 0 ) goto label$152;
	TMP$178$1 = 24;
	goto label$198;
	label$152:;
	TMP$178$1 = O_DTYPE$1 & 31;
	label$198:;
	ISLARGE$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$178$1 * 28)) + 4) == 8);
	if( IOBYTES$1 == (struct $7ASTNODE*)0u ) goto label$154;
	{
		if( ISSTRING$1 == 0 ) goto label$156;
		{
			if( ISLARGE$1 == 0 ) goto label$158;
			{
				if( ISWSTR$1 == 0 ) goto label$160;
				{
					struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstrLargeIOB", 257 );
					F$1 = vr$12;
				}
				goto label$159;
				label$160:;
				{
					struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStrLargeIOB", 255 );
					F$1 = vr$13;
				}
				label$159:;
			}
			goto label$157;
			label$158:;
			{
				if( ISWSTR$1 == 0 ) goto label$162;
				{
					struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstrIOB", 256 );
					F$1 = vr$14;
				}
				goto label$161;
				label$162:;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStrIOB", 254 );
					F$1 = vr$15;
				}
				label$161:;
			}
			label$157:;
		}
		goto label$155;
		label$156:;
		{
			if( ISLARGE$1 == 0 ) goto label$164;
			{
				struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_FileGetLargeIOB", 253 );
				F$1 = vr$16;
			}
			goto label$163;
			label$164:;
			{
				struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_FileGetIOB", 252 );
				F$1 = vr$17;
			}
			label$163:;
		}
		label$155:;
	}
	goto label$153;
	label$154:;
	{
		if( ISSTRING$1 == 0 ) goto label$166;
		{
			if( ISLARGE$1 == 0 ) goto label$168;
			{
				if( ISWSTR$1 == 0 ) goto label$170;
				{
					struct $8FBSYMBOL* vr$18 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstrLarge", 249 );
					F$1 = vr$18;
				}
				goto label$169;
				label$170:;
				{
					struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStrLarge", 247 );
					F$1 = vr$19;
				}
				label$169:;
			}
			goto label$167;
			label$168:;
			{
				if( ISWSTR$1 == 0 ) goto label$172;
				{
					struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstr", 248 );
					F$1 = vr$20;
				}
				goto label$171;
				label$172:;
				{
					struct $8FBSYMBOL* vr$21 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStr", 246 );
					F$1 = vr$21;
				}
				label$171:;
			}
			label$167:;
		}
		goto label$165;
		label$166:;
		{
			if( ISLARGE$1 == 0 ) goto label$174;
			{
				struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_FileGetLarge", 245 );
				F$1 = vr$22;
			}
			goto label$173;
			label$174:;
			{
				struct $8FBSYMBOL* vr$23 = RTLPROCLOOKUP( (uint8*)"fb_FileGet", 244 );
				F$1 = vr$23;
			}
			label$173:;
		}
		label$165:;
	}
	label$153:;
	struct $7ASTNODE* vr$24 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$24;
	struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$25 != (struct $7ASTNODE*)0u ) goto label$176;
	{
		goto label$149;
	}
	label$176:;
	label$175:;
	struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, OFFSET$1, -2147483648u, -1 );
	if( vr$26 != (struct $7ASTNODE*)0u ) goto label$178;
	{
		goto label$149;
	}
	label$178:;
	label$177:;
	if( ISSTRING$1 == 0 ) goto label$180;
	{
		int64 vr$27 = RTLCALCSTRLEN( DST$1, DTYPE$1 );
		LGT$1 = vr$27;
	}
	goto label$179;
	label$180:;
	{
		int64 vr$28 = RTLCALCEXPRLEN( DST$1 );
		LGT$1 = vr$28;
	}
	label$179:;
	if( ELEMENTS$1 != (struct $7ASTNODE*)0u ) goto label$182;
	{
		struct $7ASTNODE* vr$29 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		BYTES$1 = vr$29;
	}
	goto label$181;
	label$182:;
	{
		struct $7ASTNODE* vr$30 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$31 = ASTNEWBOP( 30, ELEMENTS$1, vr$30, (struct $8FBSYMBOL*)0u, 1 );
		BYTES$1 = vr$31;
	}
	label$181:;
	if( DTYPE$1 != 20 ) goto label$184;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 8) + 120) & 4) == 0 ) goto label$186;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 10 );
		}
		label$186:;
		label$185:;
	}
	goto label$183;
	label$184:;
	if( ((*(int32*)((uint8*)DST$1 + 4) & 511) & 480) == 0 ) goto label$187;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 29 );
	}
	label$187:;
	label$183:;
	struct $7ASTNODE* vr$40 = ASTNEWARG( PROC$1, DST$1, -2147483648u, -1 );
	if( vr$40 != (struct $7ASTNODE*)0u ) goto label$189;
	{
		goto label$149;
	}
	label$189:;
	label$188:;
	struct $7ASTNODE* vr$41 = ASTNEWARG( PROC$1, BYTES$1, -2147483648u, -1 );
	if( vr$41 != (struct $7ASTNODE*)0u ) goto label$191;
	{
		goto label$149;
	}
	label$191:;
	label$190:;
	if( IOBYTES$1 == (struct $7ASTNODE*)0u ) goto label$193;
	{
		struct $7ASTNODE* vr$42 = ASTNEWARG( PROC$1, IOBYTES$1, -2147483648u, -1 );
		if( vr$42 != (struct $7ASTNODE*)0u ) goto label$195;
		{
			goto label$149;
		}
		label$195:;
		label$194:;
	}
	label$193:;
	label$192:;
	if( ISFUNC$1 != 0 ) goto label$197;
	{
		struct $7ASTNODE* vr$43 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$43 );
	}
	label$197:;
	label$196:;
	fb$result$1 = PROC$1;
	label$149:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEGETARRAY( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* DST$1, struct $7ASTNODE* IOBYTES$1, int32 ISFUNC$1 )
{
	int32 TMP$179$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$199:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 O_DTYPE$1;
	int32 ISLARGE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( OFFSET$1 != (struct $7ASTNODE*)0u ) goto label$202;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		OFFSET$1 = vr$1;
	}
	label$202:;
	label$201:;
	O_DTYPE$1 = *(int32*)((uint8*)OFFSET$1 + 4) & 511;
	if( (O_DTYPE$1 & 480) == 0 ) goto label$203;
	TMP$179$1 = 24;
	goto label$227;
	label$203:;
	TMP$179$1 = O_DTYPE$1 & 31;
	label$227:;
	ISLARGE$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$179$1 * 28)) + 4) == 8);
	if( IOBYTES$1 == (struct $7ASTNODE*)0u ) goto label$205;
	{
		if( ISLARGE$1 == 0 ) goto label$207;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArrayLargeIOB", 259 );
			F$1 = vr$8;
		}
		goto label$206;
		label$207:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArrayIOB", 258 );
			F$1 = vr$9;
		}
		label$206:;
	}
	goto label$204;
	label$205:;
	{
		if( ISLARGE$1 == 0 ) goto label$209;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArrayLarge", 251 );
			F$1 = vr$10;
		}
		goto label$208;
		label$209:;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArray", 250 );
			F$1 = vr$11;
		}
		label$208:;
	}
	label$204:;
	struct $7ASTNODE* vr$12 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$211;
	{
		goto label$200;
	}
	label$211:;
	label$210:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, OFFSET$1, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$213;
	{
		goto label$200;
	}
	label$213:;
	label$212:;
	if( (*(int32*)((uint8*)DST$1 + 4) & 511) != 20 ) goto label$215;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 8) + 120) & 4) == 0 ) goto label$217;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 10 );
		}
		label$217:;
		label$216:;
	}
	goto label$214;
	label$215:;
	if( ((*(int32*)((uint8*)DST$1 + 4) & 511) & 480) == 0 ) goto label$218;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), 3, (uint8*)0u, 29 );
	}
	label$218:;
	label$214:;
	struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, DST$1, -2147483648u, -1 );
	if( vr$25 != (struct $7ASTNODE*)0u ) goto label$220;
	{
		goto label$200;
	}
	label$220:;
	label$219:;
	if( IOBYTES$1 == (struct $7ASTNODE*)0u ) goto label$222;
	{
		struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, IOBYTES$1, -2147483648u, -1 );
		if( vr$26 != (struct $7ASTNODE*)0u ) goto label$224;
		{
			goto label$200;
		}
		label$224:;
		label$223:;
	}
	label$222:;
	label$221:;
	if( ISFUNC$1 != 0 ) goto label$226;
	{
		struct $7ASTNODE* vr$27 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$27 );
	}
	label$226:;
	label$225:;
	fb$result$1 = PROC$1;
	label$200:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILESTRINPUT( struct $7ASTNODE* BYTESEXPR$1, struct $7ASTNODE* FILENUM$1, int32 TK$1 )
{
	struct $8FBSYMBOL* TMP$180$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$228:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( TK$1 != 479 ) goto label$230;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileWstrInput", 264 );
	TMP$180$1 = vr$1;
	goto label$235;
	label$230:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_FileStrInput", 263 );
	TMP$180$1 = vr$2;
	label$235:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$180$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, BYTESEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$232;
	{
		goto label$229;
	}
	label$232:;
	label$231:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$234;
	{
		goto label$229;
	}
	label$234:;
	label$233:;
	fb$result$1 = PROC$1;
	label$229:;
	return fb$result$1;
}

int32 RTLFILELINEINPUT( int32 ISFILE$1, struct $7ASTNODE* EXPR$1, struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* MAXLENEXPR$1, int32 ADDQUESTION$1, int32 ADDNEWLINE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$236:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 ARGS$1;
	int32 DTYPE$1;
	int64 LGT$1;
	fb$result$1 = 0;
	if( ISFILE$1 == 0 ) goto label$239;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileLineInput", 265 );
		F$1 = vr$1;
		ARGS$1 = 4;
	}
	goto label$238;
	label$239:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_LineInput", 267 );
		F$1 = vr$2;
		ARGS$1 = 6;
	}
	label$238:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	if( (-(ISFILE$1 == 0) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$241;
	{
		struct $8FBSYMBOL* vr$7 = SYMBALLOCSTRCONST( (uint8*)"", 0 );
		struct $7ASTNODE* vr$8 = ASTNEWVAR( vr$7, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$8;
	}
	label$241:;
	label$240:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$243;
	{
		goto label$237;
	}
	label$243:;
	label$242:;
	DTYPE$1 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
	int64 vr$12 = RTLCALCSTRLEN( DSTEXPR$1, DTYPE$1 );
	LGT$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DSTEXPR$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$245;
	{
		goto label$237;
	}
	label$245:;
	label$244:;
	if( (-(LGT$1 == 0ll) & -(MAXLENEXPR$1 != (struct $7ASTNODE*)0u)) == 0 ) goto label$247;
	{
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, MAXLENEXPR$1, -2147483648u, -1 );
		if( vr$17 != (struct $7ASTNODE*)0u ) goto label$249;
		{
			goto label$237;
		}
		label$249:;
		label$248:;
	}
	goto label$246;
	label$247:;
	{
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
		if( vr$19 != (struct $7ASTNODE*)0u ) goto label$251;
		{
			goto label$237;
		}
		label$251:;
		label$250:;
	}
	label$246:;
	struct $7ASTNODE* vr$22 = ASTNEWCONSTI( (int64)-(DTYPE$1 == 18), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, vr$22, -2147483648u, -1 );
	if( vr$23 != (struct $7ASTNODE*)0u ) goto label$253;
	{
		goto label$237;
	}
	label$253:;
	label$252:;
	if( ARGS$1 != 6 ) goto label$255;
	{
		struct $7ASTNODE* vr$25 = ASTNEWCONSTI( (int64)ADDQUESTION$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, vr$25, -2147483648u, -1 );
		if( vr$26 != (struct $7ASTNODE*)0u ) goto label$257;
		{
			goto label$237;
		}
		label$257:;
		label$256:;
		struct $7ASTNODE* vr$28 = ASTNEWCONSTI( (int64)ADDNEWLINE$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, vr$28, -2147483648u, -1 );
		if( vr$29 != (struct $7ASTNODE*)0u ) goto label$259;
		{
			goto label$237;
		}
		label$259:;
		label$258:;
	}
	label$255:;
	label$254:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$237:;
	return fb$result$1;
}

int32 RTLFILELINEINPUTWSTR( int32 ISFILE$1, struct $7ASTNODE* EXPR$1, struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* MAXLENEXPR$1, int32 ADDQUESTION$1, int32 ADDNEWLINE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$260:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 ARGS$1;
	int32 DTYPE$1;
	int64 LGT$1;
	fb$result$1 = 0;
	if( ISFILE$1 == 0 ) goto label$263;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileLineInputWstr", 266 );
		F$1 = vr$1;
		ARGS$1 = 3;
	}
	goto label$262;
	label$263:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_LineInputWstr", 268 );
		F$1 = vr$2;
		ARGS$1 = 5;
	}
	label$262:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	if( (-(ISFILE$1 == 0) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$265;
	{
		struct $8FBSYMBOL* vr$7 = SYMBALLOCWSTRCONST( (uint32*)L"", 0 );
		struct $7ASTNODE* vr$8 = ASTNEWVAR( vr$7, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$8;
	}
	label$265:;
	label$264:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$267;
	{
		goto label$261;
	}
	label$267:;
	label$266:;
	DTYPE$1 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
	int64 vr$12 = RTLCALCSTRLEN( DSTEXPR$1, DTYPE$1 );
	LGT$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DSTEXPR$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$269;
	{
		goto label$261;
	}
	label$269:;
	label$268:;
	if( (-(LGT$1 == 0ll) & -(MAXLENEXPR$1 != (struct $7ASTNODE*)0u)) == 0 ) goto label$271;
	{
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, MAXLENEXPR$1, -2147483648u, -1 );
		if( vr$17 != (struct $7ASTNODE*)0u ) goto label$273;
		{
			goto label$261;
		}
		label$273:;
		label$272:;
	}
	goto label$270;
	label$271:;
	{
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
		if( vr$19 != (struct $7ASTNODE*)0u ) goto label$275;
		{
			goto label$261;
		}
		label$275:;
		label$274:;
	}
	label$270:;
	if( ARGS$1 != 5 ) goto label$277;
	{
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( (int64)ADDQUESTION$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, vr$21, -2147483648u, -1 );
		if( vr$22 != (struct $7ASTNODE*)0u ) goto label$279;
		{
			goto label$261;
		}
		label$279:;
		label$278:;
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( (int64)ADDNEWLINE$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, vr$24, -2147483648u, -1 );
		if( vr$25 != (struct $7ASTNODE*)0u ) goto label$281;
		{
			goto label$261;
		}
		label$281:;
		label$280:;
	}
	label$277:;
	label$276:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$261:;
	return fb$result$1;
}

int32 RTLFILEINPUT( int32 ISFILE$1, struct $7ASTNODE* EXPR$1, int32 ADDQUESTION$1, int32 ADDNEWLINE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$282:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 ARGS$1;
	fb$result$1 = 0;
	if( ISFILE$1 == 0 ) goto label$285;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileInput", 269 );
		F$1 = vr$1;
		ARGS$1 = 1;
	}
	goto label$284;
	label$285:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_ConsoleInput", 270 );
		F$1 = vr$2;
		ARGS$1 = 3;
	}
	label$284:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	if( (-(ISFILE$1 == 0) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$287;
	{
		struct $8FBSYMBOL* vr$7 = SYMBALLOCSTRCONST( (uint8*)"", 0 );
		struct $7ASTNODE* vr$8 = ASTNEWVAR( vr$7, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$8;
	}
	label$287:;
	label$286:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$289;
	{
		goto label$283;
	}
	label$289:;
	label$288:;
	if( ARGS$1 != 3 ) goto label$291;
	{
		struct $7ASTNODE* vr$11 = ASTNEWCONSTI( (int64)ADDQUESTION$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
		if( vr$12 != (struct $7ASTNODE*)0u ) goto label$293;
		{
			goto label$283;
		}
		label$293:;
		label$292:;
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( (int64)ADDNEWLINE$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, -1 );
		if( vr$15 != (struct $7ASTNODE*)0u ) goto label$295;
		{
			goto label$283;
		}
		label$295:;
		label$294:;
	}
	label$291:;
	label$290:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$283:;
	return fb$result$1;
}

int32 RTLFILEINPUTGET( struct $7ASTNODE* DSTEXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$296:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 ARGS$1;
	int32 DTYPE$1;
	int64 LGT$1;
	fb$result$1 = 0;
	ARGS$1 = 1;
	DTYPE$1 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
	{
		int32 TMP$182$2;
		uint32 TMP$183$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$298;
		TMP$182$2 = 24;
		goto label$331;
		label$298:;
		TMP$182$2 = DTYPE$1 & 31;
		label$331:;
		TMP$183$2 = (uint32)TMP$182$2;
		goto label$300;
		label$301:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_InputString", 282 );
			F$1 = vr$5;
			ARGS$1 = 3;
		}
		goto label$299;
		label$302:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_InputWstr", 283 );
			F$1 = vr$6;
			ARGS$1 = 2;
		}
		goto label$299;
		label$303:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_InputBool", 271 );
			F$1 = vr$7;
		}
		goto label$299;
		label$304:;
		{
			{
				int32 TMP$184$4;
				uint32 TMP$185$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$305;
				TMP$184$4 = 24;
				goto label$332;
				label$305:;
				TMP$184$4 = DTYPE$1 & 31;
				label$332:;
				TMP$185$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$184$4 * 28)) + 20);
				goto label$307;
				label$308:;
				{
					struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_InputByte", 272 );
					F$1 = vr$11;
				}
				goto label$306;
				label$309:;
				{
					struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_InputUbyte", 273 );
					F$1 = vr$12;
				}
				goto label$306;
				label$310:;
				{
					struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_InputShort", 274 );
					F$1 = vr$13;
				}
				goto label$306;
				label$311:;
				{
					struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_InputUshort", 275 );
					F$1 = vr$14;
				}
				goto label$306;
				label$312:;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_InputInt", 276 );
					F$1 = vr$15;
				}
				goto label$306;
				label$313:;
				{
					struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_InputUint", 277 );
					F$1 = vr$16;
				}
				goto label$306;
				label$314:;
				{
					struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_InputLongint", 278 );
					F$1 = vr$17;
				}
				goto label$306;
				label$315:;
				{
					struct $8FBSYMBOL* vr$18 = RTLPROCLOOKUP( (uint8*)"fb_InputUlongint", 279 );
					F$1 = vr$18;
				}
				goto label$306;
				label$307:;
				static const void* tmp$186[8] = {
					&&label$308,
					&&label$309,
					&&label$310,
					&&label$311,
					&&label$312,
					&&label$313,
					&&label$314,
					&&label$315,
				};
				if( (TMP$185$4 - 1u) > 7u ) goto label$306;
				goto *tmp$186[TMP$185$4 - 1u];
				label$306:;
			}
		}
		goto label$299;
		label$316:;
		{
			struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_InputSingle", 280 );
			F$1 = vr$19;
		}
		goto label$299;
		label$317:;
		{
			struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_InputDouble", 281 );
			F$1 = vr$20;
		}
		goto label$299;
		label$318:;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			goto label$297;
		}
		goto label$299;
		label$300:;
		static const void* tmp$187[24] = {
			&&label$303,
			&&label$304,
			&&label$304,
			&&label$301,
			&&label$304,
			&&label$304,
			&&label$302,
			&&label$304,
			&&label$304,
			&&label$304,
			&&label$304,
			&&label$304,
			&&label$304,
			&&label$304,
			&&label$316,
			&&label$317,
			&&label$301,
			&&label$301,
			&&label$318,
			&&label$318,
			&&label$318,
			&&label$318,
			&&label$318,
			&&label$304,
		};
		if( (TMP$183$2 - 1u) > 23u ) goto label$318;
		goto *tmp$187[TMP$183$2 - 1u];
		label$299:;
	}
	struct $7ASTNODE* vr$21 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$21;
	if( ARGS$1 <= 1 ) goto label$320;
	{
		int64 vr$22 = RTLCALCSTRLEN( DSTEXPR$1, DTYPE$1 );
		LGT$1 = vr$22;
	}
	label$320:;
	label$319:;
	struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, DSTEXPR$1, -2147483648u, -1 );
	if( vr$23 != (struct $7ASTNODE*)0u ) goto label$322;
	{
		goto label$297;
	}
	label$322:;
	label$321:;
	if( ARGS$1 <= 1 ) goto label$324;
	{
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, vr$24, -2147483648u, -1 );
		if( vr$25 != (struct $7ASTNODE*)0u ) goto label$326;
		{
			goto label$297;
		}
		label$326:;
		label$325:;
		if( ARGS$1 <= 2 ) goto label$328;
		{
			struct $7ASTNODE* vr$28 = ASTNEWCONSTI( (int64)-(DTYPE$1 == 18), 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, vr$28, -2147483648u, -1 );
			if( vr$29 != (struct $7ASTNODE*)0u ) goto label$330;
			{
				goto label$297;
			}
			label$330:;
			label$329:;
		}
		label$328:;
		label$327:;
	}
	label$324:;
	label$323:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$297:;
	return fb$result$1;
}

int32 RTLFILELOCK( int32 ISLOCK$1, struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* INIEXPR$1, struct $7ASTNODE* ENDEXPR$1 )
{
	int32 TMP$188$1;
	int32 TMP$189$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$333:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 ISLARGE$1;
	int32 I_DTYPE$1;
	int32 E_DTYPE$1;
	fb$result$1 = 0;
	I_DTYPE$1 = *(int32*)((uint8*)INIEXPR$1 + 4) & 511;
	E_DTYPE$1 = *(int32*)((uint8*)ENDEXPR$1 + 4) & 511;
	if( (I_DTYPE$1 & 480) == 0 ) goto label$335;
	TMP$188$1 = 24;
	goto label$349;
	label$335:;
	TMP$188$1 = I_DTYPE$1 & 31;
	label$349:;
	if( (E_DTYPE$1 & 480) == 0 ) goto label$336;
	TMP$189$1 = 24;
	goto label$350;
	label$336:;
	TMP$189$1 = E_DTYPE$1 & 31;
	label$350:;
	ISLARGE$1 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$188$1 * 28)) + 4) == 8) | -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$189$1 * 28)) + 4) == 8);
	if( ISLOCK$1 == 0 ) goto label$338;
	{
		if( ISLARGE$1 == 0 ) goto label$340;
		{
			struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_FileLockLarge", 285 );
			F$1 = vr$14;
		}
		goto label$339;
		label$340:;
		{
			struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_FileLock", 284 );
			F$1 = vr$15;
		}
		label$339:;
	}
	goto label$337;
	label$338:;
	{
		if( ISLARGE$1 == 0 ) goto label$342;
		{
			struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_FileUnlockLarge", 287 );
			F$1 = vr$16;
		}
		goto label$341;
		label$342:;
		{
			struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_FileUnlock", 286 );
			F$1 = vr$17;
		}
		label$341:;
	}
	label$337:;
	struct $7ASTNODE* vr$18 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$18;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, FILENUM$1, -2147483648u, -1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$344;
	{
		goto label$334;
	}
	label$344:;
	label$343:;
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, INIEXPR$1, -2147483648u, -1 );
	if( vr$20 != (struct $7ASTNODE*)0u ) goto label$346;
	{
		goto label$334;
	}
	label$346:;
	label$345:;
	struct $7ASTNODE* vr$21 = ASTNEWARG( PROC$1, ENDEXPR$1, -2147483648u, -1 );
	if( vr$21 != (struct $7ASTNODE*)0u ) goto label$348;
	{
		goto label$334;
	}
	label$348:;
	label$347:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$334:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILERENAME( struct $7ASTNODE* FILENAME_NEW$1, struct $7ASTNODE* FILENAME_OLD$1, int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$351:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_rename", 288 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILENAME_OLD$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$354;
	{
		goto label$352;
	}
	label$354:;
	label$353:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, FILENAME_NEW$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$356;
	{
		goto label$352;
	}
	label$356:;
	label$355:;
	if( ISFUNC$1 != 0 ) goto label$358;
	{
		struct $7ASTNODE* vr$5 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$5 );
	}
	label$358:;
	label$357:;
	fb$result$1 = PROC$1;
	label$352:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWIDTHFILE( struct $7ASTNODE* FNUM$1, struct $7ASTNODE* WIDTH_ARG$1, int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$359:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WidthFile", 291 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FNUM$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$362;
	{
		goto label$360;
	}
	label$362:;
	label$361:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, WIDTH_ARG$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$364;
	{
		goto label$360;
	}
	label$364:;
	label$363:;
	if( ISFUNC$1 != 0 ) goto label$366;
	{
		struct $7ASTNODE* vr$5 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$5 );
	}
	label$366:;
	label$365:;
	fb$result$1 = PROC$1;
	label$360:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzfile( void )
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
