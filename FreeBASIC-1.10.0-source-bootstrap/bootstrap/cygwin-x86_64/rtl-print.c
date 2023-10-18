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
typedef int64 $11FB_DATATYPE;
typedef int64 $11FB_FUNCMODE;
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
typedef int64 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int64 ISOPT;
	int64 OPTVAL;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 32 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$34 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int64 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 568 );
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
typedef int64 $13FB_COMPTARGET;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzprint( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int64 FBRESTARTGETCOUNT( void );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWOVLCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
int64 RTLPRINTER_CB( struct $8FBSYMBOL* );
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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
static struct $8FBARRAY2IlE tmp$82$;
typedef int64 $10FB_OUTTYPE;
typedef int64 $10FB_BACKEND;
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[55] = { { (uint8*)"fb_PrintVoid", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 2ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintBool", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 128ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 513ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintByte", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 514ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUByte", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintShort", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 517ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUShort", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintInt", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUInt", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintLongint", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 525ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintULongint", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintSingle", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintDouble", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 528ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintString", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintWstr", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintVoid", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 2ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintBool", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 128ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 513ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintByte", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 514ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintUByte", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintShort", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 517ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintUShort", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintInt", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintUInt", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintLongint", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 525ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintULongint", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintSingle", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintDouble", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 528ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintString", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintWstr", (uint8*)0ull, 0ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintSPC", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 2ll, { { 523ll, 1ll, -1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintTab", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 2ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteVoid", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 2ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteBool", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 128ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 513ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteByte", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 514ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteUByte", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteShort", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 517ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteUShort", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteInt", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteUInt", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteLongint", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 525ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteULongint", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteSingle", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteDouble", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 528ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteString", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WriteWstr", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, -1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingInit", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_PrintUsingStr", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingWstr", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingSingle", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingDouble", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 528ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingLongint", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingULongint", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingBoolean", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 513ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_PrintUsingEnd", (uint8*)0ull, 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_LPrintUsingInit", (uint8*)0ull, 11ll, -1ll, (tmp$34)&RTLPRINTER_CB, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)0ull } };

void RTLPRINTMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLPRINTMODEND( void )
{
	label$12:;
	label$13:;
}

int64 RTLPRINT( struct $7ASTNODE* FILEEXPR$1, int64 ISCOMMA$1, int64 ISSEMICOLON$1, struct $7ASTNODE* EXPR$1, int64 ISLPRINT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 MASK$1;
	fb$result$1 = 0ll;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$17;
	{
		if( ISLPRINT$1 == 0ll ) goto label$19;
		{
			struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_LPrintVoid", 174ll );
			F$1 = vr$1;
		}
		goto label$18;
		label$19:;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_PrintVoid", 160ll );
			F$1 = vr$2;
		}
		label$18:;
	}
	goto label$16;
	label$17:;
	{
		ASTTRYOVLSTRINGCONV( &EXPR$1 );
		{
			int64 TMP$148$3;
			int64 TMP$149$3;
			if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$20;
			TMP$148$3 = 24ll;
			goto label$89;
			label$20:;
			TMP$148$3 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
			label$89:;
			TMP$149$3 = TMP$148$3;
			if( TMP$149$3 == 20ll ) goto label$23;
			label$24:;
			if( TMP$149$3 != 10ll ) goto label$22;
			label$23:;
			{
				struct $7ASTNODE* vr$10 = ASTNEWOVLCONV( 17ll, (struct $8FBSYMBOL*)0ull, EXPR$1 );
				EXPR$1 = vr$10;
				if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$26;
				{
					goto label$15;
				}
				label$26:;
				label$25:;
			}
			goto label$21;
			label$22:;
			{
				if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) == 0ll ) goto label$29;
				{
					struct $7ASTNODE* vr$13 = ASTNEWCONV( 9ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
					EXPR$1 = vr$13;
				}
				label$29:;
				label$28:;
			}
			label$27:;
			label$21:;
		}
		{
			uint64 TMP$150$3;
			TMP$150$3 = (uint64)(*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll);
			goto label$31;
			label$32:;
			{
				if( ISLPRINT$1 == 0ll ) goto label$34;
				{
					struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_LPrintString", 186ll );
					F$1 = vr$16;
				}
				goto label$33;
				label$34:;
				{
					struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_PrintString", 172ll );
					F$1 = vr$17;
				}
				label$33:;
			}
			goto label$30;
			label$35:;
			{
				if( ISLPRINT$1 == 0ll ) goto label$37;
				{
					struct $8FBSYMBOL* vr$18 = RTLPROCLOOKUP( (uint8*)"fb_LPrintWstr", 187ll );
					F$1 = vr$18;
				}
				goto label$36;
				label$37:;
				{
					struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_PrintWstr", 173ll );
					F$1 = vr$19;
				}
				label$36:;
			}
			goto label$30;
			label$38:;
			{
				if( ISLPRINT$1 == 0ll ) goto label$40;
				{
					struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_LPrintBool", 175ll );
					F$1 = vr$20;
				}
				goto label$39;
				label$40:;
				{
					struct $8FBSYMBOL* vr$21 = RTLPROCLOOKUP( (uint8*)"fb_PrintBool", 161ll );
					F$1 = vr$21;
				}
				label$39:;
			}
			goto label$30;
			label$41:;
			{
				{
					int64 TMP$151$5;
					uint64 TMP$152$5;
					if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) == 0ll ) goto label$42;
					TMP$151$5 = 24ll;
					goto label$90;
					label$42:;
					TMP$151$5 = *(int64*)((uint8*)EXPR$1 + 8ll) & 31ll;
					label$90:;
					TMP$152$5 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$151$5 * 56ll)) + 40ll);
					goto label$44;
					label$45:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$47;
						{
							struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_LPrintByte", 176ll );
							F$1 = vr$27;
						}
						goto label$46;
						label$47:;
						{
							struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_PrintByte", 162ll );
							F$1 = vr$28;
						}
						label$46:;
					}
					goto label$43;
					label$48:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$50;
						{
							struct $8FBSYMBOL* vr$29 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUByte", 177ll );
							F$1 = vr$29;
						}
						goto label$49;
						label$50:;
						{
							struct $8FBSYMBOL* vr$30 = RTLPROCLOOKUP( (uint8*)"fb_PrintUByte", 163ll );
							F$1 = vr$30;
						}
						label$49:;
					}
					goto label$43;
					label$51:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$53;
						{
							struct $8FBSYMBOL* vr$31 = RTLPROCLOOKUP( (uint8*)"fb_LPrintShort", 178ll );
							F$1 = vr$31;
						}
						goto label$52;
						label$53:;
						{
							struct $8FBSYMBOL* vr$32 = RTLPROCLOOKUP( (uint8*)"fb_PrintShort", 164ll );
							F$1 = vr$32;
						}
						label$52:;
					}
					goto label$43;
					label$54:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$56;
						{
							struct $8FBSYMBOL* vr$33 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUShort", 179ll );
							F$1 = vr$33;
						}
						goto label$55;
						label$56:;
						{
							struct $8FBSYMBOL* vr$34 = RTLPROCLOOKUP( (uint8*)"fb_PrintUShort", 165ll );
							F$1 = vr$34;
						}
						label$55:;
					}
					goto label$43;
					label$57:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$59;
						{
							struct $8FBSYMBOL* vr$35 = RTLPROCLOOKUP( (uint8*)"fb_LPrintInt", 180ll );
							F$1 = vr$35;
						}
						goto label$58;
						label$59:;
						{
							struct $8FBSYMBOL* vr$36 = RTLPROCLOOKUP( (uint8*)"fb_PrintInt", 166ll );
							F$1 = vr$36;
						}
						label$58:;
					}
					goto label$43;
					label$60:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$62;
						{
							struct $8FBSYMBOL* vr$37 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUInt", 181ll );
							F$1 = vr$37;
						}
						goto label$61;
						label$62:;
						{
							struct $8FBSYMBOL* vr$38 = RTLPROCLOOKUP( (uint8*)"fb_PrintUInt", 167ll );
							F$1 = vr$38;
						}
						label$61:;
					}
					goto label$43;
					label$63:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$65;
						{
							struct $8FBSYMBOL* vr$39 = RTLPROCLOOKUP( (uint8*)"fb_LPrintLongint", 182ll );
							F$1 = vr$39;
						}
						goto label$64;
						label$65:;
						{
							struct $8FBSYMBOL* vr$40 = RTLPROCLOOKUP( (uint8*)"fb_PrintLongint", 168ll );
							F$1 = vr$40;
						}
						label$64:;
					}
					goto label$43;
					label$66:;
					{
						if( ISLPRINT$1 == 0ll ) goto label$68;
						{
							struct $8FBSYMBOL* vr$41 = RTLPROCLOOKUP( (uint8*)"fb_LPrintULongint", 183ll );
							F$1 = vr$41;
						}
						goto label$67;
						label$68:;
						{
							struct $8FBSYMBOL* vr$42 = RTLPROCLOOKUP( (uint8*)"fb_PrintULongint", 169ll );
							F$1 = vr$42;
						}
						label$67:;
					}
					goto label$43;
					label$44:;
					static const void* tmp$153[8ll] = {
						&&label$45,
						&&label$48,
						&&label$51,
						&&label$54,
						&&label$57,
						&&label$60,
						&&label$63,
						&&label$66,
					};
					if( (TMP$152$5 - 1ull) > 7ull ) goto label$43;
					goto *tmp$153[TMP$152$5 - 1ull];
					label$43:;
				}
			}
			goto label$30;
			label$69:;
			{
				if( ISLPRINT$1 == 0ll ) goto label$71;
				{
					struct $8FBSYMBOL* vr$43 = RTLPROCLOOKUP( (uint8*)"fb_LPrintSingle", 184ll );
					F$1 = vr$43;
				}
				goto label$70;
				label$71:;
				{
					struct $8FBSYMBOL* vr$44 = RTLPROCLOOKUP( (uint8*)"fb_PrintSingle", 170ll );
					F$1 = vr$44;
				}
				label$70:;
			}
			goto label$30;
			label$72:;
			{
				if( ISLPRINT$1 == 0ll ) goto label$74;
				{
					struct $8FBSYMBOL* vr$45 = RTLPROCLOOKUP( (uint8*)"fb_LPrintDouble", 185ll );
					F$1 = vr$45;
				}
				goto label$73;
				label$74:;
				{
					struct $8FBSYMBOL* vr$46 = RTLPROCLOOKUP( (uint8*)"fb_PrintDouble", 171ll );
					F$1 = vr$46;
				}
				label$73:;
			}
			goto label$30;
			label$75:;
			{
				goto label$15;
			}
			goto label$30;
			label$31:;
			static const void* tmp$154[18ll] = {
				&&label$38,
				&&label$41,
				&&label$41,
				&&label$32,
				&&label$41,
				&&label$41,
				&&label$35,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$69,
				&&label$72,
				&&label$32,
				&&label$32,
			};
			if( (TMP$150$3 - 1ull) > 17ull ) goto label$75;
			goto *tmp$154[TMP$150$3 - 1ull];
			label$30:;
		}
	}
	label$16:;
	struct $7ASTNODE* vr$47 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$47;
	struct $7ASTNODE* vr$48 = ASTNEWARG( PROC$1, FILEEXPR$1, 2147483648ll, -1ll );
	if( vr$48 != (struct $7ASTNODE*)0ull ) goto label$77;
	{
		goto label$15;
	}
	label$77:;
	label$76:;
	if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$79;
	{
		struct $7ASTNODE* vr$49 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
		if( vr$49 != (struct $7ASTNODE*)0ull ) goto label$81;
		{
			goto label$15;
		}
		label$81:;
		label$80:;
	}
	label$79:;
	label$78:;
	MASK$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$83;
	{
		MASK$1 = MASK$1 | 16ll;
		label$83:;
	}
	if( ISCOMMA$1 == 0ll ) goto label$85;
	{
		MASK$1 = MASK$1 | 2ll;
	}
	goto label$84;
	label$85:;
	if( ISSEMICOLON$1 != 0ll ) goto label$86;
	{
		MASK$1 = MASK$1 | 1ll;
	}
	label$86:;
	label$84:;
	struct $7ASTNODE* vr$53 = ASTNEWCONSTI( MASK$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$54 = ASTNEWARG( PROC$1, vr$53, 2147483648ll, -1ll );
	if( vr$54 != (struct $7ASTNODE*)0ull ) goto label$88;
	{
		goto label$15;
	}
	label$88:;
	label$87:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$15:;
	return fb$result$1;
}

int64 RTLPRINTSPCTAB( struct $7ASTNODE* FILEEXPR$1, struct $7ASTNODE* EXPR$1, int64 ISTAB$1, int64 ISLPRINT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$91:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	if( ISLPRINT$1 == 0ll ) goto label$94;
	{
		RTLPRINTER_CB( (struct $8FBSYMBOL*)0ull );
	}
	label$94:;
	label$93:;
	if( ISTAB$1 == 0ll ) goto label$96;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_PrintTab", 189ll );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$2;
	}
	goto label$95;
	label$96:;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_PrintSPC", 188ll );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$4;
	}
	label$95:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, FILEEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$98;
	{
		goto label$92;
	}
	label$98:;
	label$97:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$100;
	{
		goto label$92;
	}
	label$100:;
	label$99:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$92:;
	return fb$result$1;
}

int64 RTLWRITE( struct $7ASTNODE* FILEEXPR$1, int64 ISCOMMA$1, struct $7ASTNODE* EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$101:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 MASK$1;
	fb$result$1 = 0ll;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$104;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WriteVoid", 190ll );
		F$1 = vr$1;
	}
	goto label$103;
	label$104:;
	{
		ASTTRYOVLSTRINGCONV( &EXPR$1 );
		{
			int64 TMP$155$3;
			TMP$155$3 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
			if( TMP$155$3 == 20ll ) goto label$107;
			label$108:;
			if( TMP$155$3 != 10ll ) goto label$106;
			label$107:;
			{
				struct $7ASTNODE* vr$5 = ASTNEWOVLCONV( 17ll, (struct $8FBSYMBOL*)0ull, EXPR$1 );
				EXPR$1 = vr$5;
				if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$110;
				{
					goto label$102;
				}
				label$110:;
				label$109:;
			}
			goto label$105;
			label$106:;
			{
				if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) == 0ll ) goto label$113;
				{
					struct $7ASTNODE* vr$8 = ASTNEWCONV( 9ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
					EXPR$1 = vr$8;
				}
				label$113:;
				label$112:;
			}
			label$111:;
			label$105:;
		}
		{
			uint64 TMP$156$3;
			TMP$156$3 = (uint64)(*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll);
			goto label$115;
			label$116:;
			{
				struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_WriteString", 202ll );
				F$1 = vr$11;
			}
			goto label$114;
			label$117:;
			{
				struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_WriteWstr", 203ll );
				F$1 = vr$12;
			}
			goto label$114;
			label$118:;
			{
				struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_WriteBool", 191ll );
				F$1 = vr$13;
			}
			goto label$114;
			label$119:;
			{
				{
					int64 TMP$157$5;
					uint64 TMP$158$5;
					if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) == 0ll ) goto label$120;
					TMP$157$5 = 24ll;
					goto label$144;
					label$120:;
					TMP$157$5 = *(int64*)((uint8*)EXPR$1 + 8ll) & 31ll;
					label$144:;
					TMP$158$5 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$157$5 * 56ll)) + 40ll);
					goto label$122;
					label$123:;
					{
						struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_WriteByte", 192ll );
						F$1 = vr$19;
					}
					goto label$121;
					label$124:;
					{
						struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_WriteUByte", 193ll );
						F$1 = vr$20;
					}
					goto label$121;
					label$125:;
					{
						struct $8FBSYMBOL* vr$21 = RTLPROCLOOKUP( (uint8*)"fb_WriteShort", 194ll );
						F$1 = vr$21;
					}
					goto label$121;
					label$126:;
					{
						struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_WriteUShort", 195ll );
						F$1 = vr$22;
					}
					goto label$121;
					label$127:;
					{
						struct $8FBSYMBOL* vr$23 = RTLPROCLOOKUP( (uint8*)"fb_WriteInt", 196ll );
						F$1 = vr$23;
					}
					goto label$121;
					label$128:;
					{
						struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_WriteUInt", 197ll );
						F$1 = vr$24;
					}
					goto label$121;
					label$129:;
					{
						struct $8FBSYMBOL* vr$25 = RTLPROCLOOKUP( (uint8*)"fb_WriteLongint", 198ll );
						F$1 = vr$25;
					}
					goto label$121;
					label$130:;
					{
						struct $8FBSYMBOL* vr$26 = RTLPROCLOOKUP( (uint8*)"fb_WriteULongint", 199ll );
						F$1 = vr$26;
					}
					goto label$121;
					label$122:;
					static const void* tmp$159[8ll] = {
						&&label$123,
						&&label$124,
						&&label$125,
						&&label$126,
						&&label$127,
						&&label$128,
						&&label$129,
						&&label$130,
					};
					if( (TMP$158$5 - 1ull) > 7ull ) goto label$121;
					goto *tmp$159[TMP$158$5 - 1ull];
					label$121:;
				}
			}
			goto label$114;
			label$131:;
			{
				struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_WriteSingle", 200ll );
				F$1 = vr$27;
			}
			goto label$114;
			label$132:;
			{
				struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_WriteDouble", 201ll );
				F$1 = vr$28;
			}
			goto label$114;
			label$133:;
			{
				goto label$102;
			}
			goto label$114;
			label$115:;
			static const void* tmp$160[18ll] = {
				&&label$118,
				&&label$119,
				&&label$119,
				&&label$116,
				&&label$119,
				&&label$119,
				&&label$117,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$131,
				&&label$132,
				&&label$116,
				&&label$116,
			};
			if( (TMP$156$3 - 1ull) > 17ull ) goto label$133;
			goto *tmp$160[TMP$156$3 - 1ull];
			label$114:;
		}
	}
	label$103:;
	struct $7ASTNODE* vr$29 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$29;
	struct $7ASTNODE* vr$30 = ASTNEWARG( PROC$1, FILEEXPR$1, 2147483648ll, -1ll );
	if( vr$30 != (struct $7ASTNODE*)0ull ) goto label$135;
	{
		goto label$102;
	}
	label$135:;
	label$134:;
	if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$137;
	{
		struct $7ASTNODE* vr$31 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
		if( vr$31 != (struct $7ASTNODE*)0ull ) goto label$139;
		{
			goto label$102;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	MASK$1 = 0ll;
	if( ISCOMMA$1 == 0ll ) goto label$141;
	{
		MASK$1 = MASK$1 | 2ll;
	}
	goto label$140;
	label$141:;
	{
		MASK$1 = MASK$1 | 1ll;
	}
	label$140:;
	struct $7ASTNODE* vr$34 = ASTNEWCONSTI( MASK$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$35 = ASTNEWARG( PROC$1, vr$34, 2147483648ll, -1ll );
	if( vr$35 != (struct $7ASTNODE*)0ull ) goto label$143;
	{
		goto label$102;
	}
	label$143:;
	label$142:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$102:;
	return fb$result$1;
}

int64 RTLPRINTUSINGINIT( struct $7ASTNODE* USINGEXPR$1, int64 ISLPRINT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$145:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = 0ll;
	if( ISLPRINT$1 == 0ll ) goto label$148;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUsingInit", 213ll );
		F$1 = vr$1;
	}
	goto label$147;
	label$148:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingInit", 204ll );
		F$1 = vr$2;
	}
	label$147:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, USINGEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$150;
	{
		goto label$146;
	}
	label$150:;
	label$149:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$146:;
	return fb$result$1;
}

int64 RTLPRINTUSINGEND( struct $7ASTNODE* FILEEXPR$1, int64 ISLPRINT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$151:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	if( ISLPRINT$1 == 0ll ) goto label$154;
	{
		RTLPRINTER_CB( (struct $8FBSYMBOL*)0ull );
	}
	label$154:;
	label$153:;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingEnd", 212ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILEEXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$156;
	{
		goto label$152;
	}
	label$156:;
	label$155:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$152:;
	return fb$result$1;
}

int64 RTLPRINTUSING( struct $7ASTNODE* FILEEXPR$1, struct $7ASTNODE* EXPR$1, int64 ISCOMMA$1, int64 ISSEMICOLON$1, int64 ISLPRINT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$157:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 MASK$1;
	fb$result$1 = 0ll;
	if( ISLPRINT$1 == 0ll ) goto label$160;
	{
		RTLPRINTER_CB( (struct $8FBSYMBOL*)0ull );
	}
	label$160:;
	label$159:;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$162;
	{
		goto label$158;
	}
	label$162:;
	label$161:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	{
		int64 TMP$161$2;
		TMP$161$2 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
		if( TMP$161$2 == 20ll ) goto label$165;
		label$166:;
		if( TMP$161$2 != 10ll ) goto label$164;
		label$165:;
		{
			struct $7ASTNODE* vr$4 = ASTNEWOVLCONV( 16ll, (struct $8FBSYMBOL*)0ull, EXPR$1 );
			EXPR$1 = vr$4;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$168;
			{
				goto label$158;
			}
			label$168:;
			label$167:;
		}
		label$164:;
		label$163:;
	}
	{
		int64 TMP$162$2;
		TMP$162$2 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
		if( TMP$162$2 == 18ll ) goto label$171;
		label$172:;
		if( TMP$162$2 == 17ll ) goto label$171;
		label$173:;
		if( TMP$162$2 != 4ll ) goto label$170;
		label$171:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingStr", 205ll );
			F$1 = vr$7;
		}
		goto label$169;
		label$170:;
		if( TMP$162$2 != 7ll ) goto label$174;
		label$175:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingWstr", 206ll );
			F$1 = vr$8;
		}
		goto label$169;
		label$174:;
		if( TMP$162$2 != 15ll ) goto label$176;
		label$177:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingSingle", 207ll );
			F$1 = vr$9;
		}
		goto label$169;
		label$176:;
		if( TMP$162$2 == 13ll ) goto label$179;
		label$180:;
		if( TMP$162$2 == 8ll ) goto label$179;
		label$181:;
		if( TMP$162$2 == 11ll ) goto label$179;
		label$182:;
		if( TMP$162$2 == 5ll ) goto label$179;
		label$183:;
		if( TMP$162$2 != 2ll ) goto label$178;
		label$179:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingLongint", 209ll );
			F$1 = vr$10;
		}
		goto label$169;
		label$178:;
		if( TMP$162$2 == 14ll ) goto label$185;
		label$186:;
		if( TMP$162$2 == 9ll ) goto label$185;
		label$187:;
		if( TMP$162$2 == 12ll ) goto label$185;
		label$188:;
		if( TMP$162$2 == 6ll ) goto label$185;
		label$189:;
		if( TMP$162$2 != 3ll ) goto label$184;
		label$185:;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingULongint", 210ll );
			F$1 = vr$11;
		}
		goto label$169;
		label$184:;
		if( TMP$162$2 != 1ll ) goto label$190;
		label$191:;
		{
			struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingBoolean", 211ll );
			F$1 = vr$12;
		}
		goto label$169;
		label$190:;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingDouble", 208ll );
			F$1 = vr$13;
		}
		label$192:;
		label$169:;
	}
	struct $7ASTNODE* vr$14 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$14;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, FILEEXPR$1, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$194;
	{
		goto label$158;
	}
	label$194:;
	label$193:;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$196;
	{
		goto label$158;
	}
	label$196:;
	label$195:;
	if( (ISCOMMA$1 | ISSEMICOLON$1) == 0ll ) goto label$198;
	{
		MASK$1 = 0ll;
	}
	goto label$197;
	label$198:;
	{
		MASK$1 = 2147483649ll;
	}
	label$197:;
	struct $7ASTNODE* vr$18 = ASTNEWCONSTI( MASK$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
	if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$200;
	{
		goto label$158;
	}
	label$200:;
	label$199:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$158:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWIDTHDEV( struct $7ASTNODE* DEVICE$1, struct $7ASTNODE* WIDTH_ARG$1, int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$201:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	RTLPRINTER_CB( (struct $8FBSYMBOL*)0ull );
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WidthDev", 290ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, DEVICE$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$204;
	{
		goto label$202;
	}
	label$204:;
	label$203:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, WIDTH_ARG$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$206;
	{
		goto label$202;
	}
	label$206:;
	label$205:;
	if( ISFUNC$1 != 0ll ) goto label$208;
	{
		struct $7ASTNODE* vr$5 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$5 );
	}
	label$208:;
	label$207:;
	fb$result$1 = PROC$1;
	label$202:;
	return fb$result$1;
}

int64 RTLPRINTER_CB( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$209:;
	static int64 RESTART_COUNT$1;
	static int64 LIBSADDED$1 = 0ll;
	int64 vr$1 = FBRESTARTGETCOUNT(  );
	if( RESTART_COUNT$1 == vr$1 ) goto label$212;
	{
		int64 vr$2 = FBRESTARTGETCOUNT(  );
		RESTART_COUNT$1 = vr$2;
		LIBSADDED$1 = 0ll;
	}
	label$212:;
	label$211:;
	if( LIBSADDED$1 != 0ll ) goto label$214;
	{
		LIBSADDED$1 = -1ll;
		{
			$13FB_COMPTARGET TMP$164$3;
			TMP$164$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
			if( TMP$164$3 == 0ll ) goto label$217;
			label$218:;
			if( TMP$164$3 != 1ll ) goto label$216;
			label$217:;
			{
				FBADDLIB( (uint8*)"winspool" );
				FBADDLIB( (uint8*)"gdi32" );
			}
			label$216:;
			label$215:;
		}
	}
	label$214:;
	label$213:;
	fb$result$1 = -1ll;
	label$210:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzprint( void )
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
