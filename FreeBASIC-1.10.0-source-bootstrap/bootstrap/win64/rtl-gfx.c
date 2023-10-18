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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $13FB_COMPTARGET;
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzgfx( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int64 FBRESTARTGETCOUNT( void );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int64 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
int64 SYMBISSTRING( int64 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
static int64 HGFXLIB_CB( struct $8FBSYMBOL* );
static int64 HPORTS_CB( struct $8FBSYMBOL* );
static struct $7ASTNODE* HGETPUTTER( int64 );
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
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[71] = { { (uint8*)"fb_GfxPset", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 6ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxPoint", (uint8*)0ull, 12ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 3ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxLine", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 65535ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxEllipse", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 10ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxPaint", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 8ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxDraw", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 2ll, { { 32ll, 1ll, -1ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_GfxDrawString", (uint8*)0ull, 8ll, -1ll, (tmp$34)&HGFXLIB_CB, 2ll, 11ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 1056ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, -1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxView", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 7ll, { { 523ll, 1ll, -1ll, -32768ll }, { 523ll, 1ll, -1ll, -32768ll }, { 523ll, 1ll, -1ll, -32768ll }, { 523ll, 1ll, -1ll, -32768ll }, { 524ll, 1ll, -1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxWindow", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 5ll, { { 527ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_GfxPalette", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 4ll, { { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"fb_GfxPaletteUsing", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 1ll, { { 1067ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxPaletteUsing64", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 1ll, { { 1069ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxPaletteGet", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 4ll, { { 523ll, 1ll, -1ll, -1ll }, { 11ll, 2ll, 0ll }, { 11ll, 2ll, 0ll }, { 11ll, 2ll, 0ll } } }, { (uint8*)"fb_GfxPaletteGet64", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 4ll, { { 523ll, 1ll, -1ll, -1ll }, { 13ll, 2ll, 0ll }, { 13ll, 2ll, 0ll }, { 13ll, 2ll, 0ll } } }, { (uint8*)"fb_GfxPaletteGetUsing", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 1ll, { { 43ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxPaletteGetUsing64", (uint8*)0ull, 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 1ll, { { 45ll, 1ll, 0ll } } }, { (uint8*)"fb_GfxPut", (uint8*)0ull, 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 2ll, 14ll, { { 32ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 1056ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 4294901760ll }, { 523ll, 1ll, -1ll, 4294901760ll }, { 523ll, 1ll, -1ll, 4294901760ll }, { 523ll, 1ll, -1ll, 4294901760ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, -1ll }, { 32ll, 1ll, -1ll, 0ll }, { 32ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_GfxGet", (uint8*)0ull, 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 1026ll, 8ll, { { 1056ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 512ll, 3ll, 0ll } } }, { (uint8*)"fb_GfxGetQB", (uint8*)0ull, 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 514ll, 8ll, { { 1056ll, 1ll, -1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 527ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_GfxScreen", (uint8*)0ull, 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 8ll }, { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_GfxScreenQB", (uint8*)0ull, 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"screenres", (uint8*)"fb_GfxScreenRes", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 130ll, 6ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 8ll }, { 523ll, 1ll, -1ll, 1ll }, { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"bload", (uint8*)"fb_GfxBload", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 1026ll, 3ll, { { 529ll, 2ll, 0ll }, { 32ll, 1ll, -1ll, 0ll }, { 32ll, 1ll, -1ll, 0ll } } }, { (uint8*)"bload", (uint8*)"fb_GfxBloadQB", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 514ll, 3ll, { { 529ll, 2ll, 0ll }, { 32ll, 1ll, -1ll, 0ll }, { 32ll, 1ll, -1ll, 0ll } } }, { (uint8*)"bsave", (uint8*)"fb_GfxBsave", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 3ll, 4ll, { { 529ll, 2ll, 0ll }, { 1056ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll }, { 1056ll, 1ll, -1ll, 0ll } } }, { (uint8*)"bsave", (uint8*)"fb_GfxBsaveEx", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 3ll, 5ll, { { 529ll, 2ll, 0ll }, { 1056ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll }, { 1056ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"flip", (uint8*)"fb_GfxFlip", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 2ll, { { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"screencopy", (uint8*)"fb_GfxFlip", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 2ll, { { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"pointcoord", (uint8*)"fb_GfxCursor", 15ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"pmap", (uint8*)"fb_GfxPMap", 15ll, -1ll, (tmp$34)&HGFXLIB_CB, 0ll, 2ll, { { 527ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"out", (uint8*)"fb_Out", 11ll, -1ll, (tmp$34)&HPORTS_CB, 2ll, 2ll, { { 518ll, 1ll, 0ll }, { 515ll, 1ll, 0ll } } }, { (uint8*)"inp", (uint8*)"fb_In", 11ll, -1ll, (tmp$34)&HPORTS_CB, 0ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"wait", (uint8*)"fb_Wait", 11ll, -1ll, (tmp$34)&HPORTS_CB, 2ll, 3ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"screensync", (uint8*)"fb_GfxWaitVSync", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 0ll }, { (uint8*)"screenset", (uint8*)"fb_GfxPageSet", 11ll, 3ll, (tmp$34)&HGFXLIB_CB, 128ll, 2ll, { { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"screenlock", (uint8*)"fb_GfxLock", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 0ll }, { (uint8*)"screenunlock", (uint8*)"fb_GfxUnlock", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 2ll, { { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"screenptr", (uint8*)"fb_GfxScreenPtr", 32ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 0ll }, { (uint8*)"windowtitle", (uint8*)"fb_GfxSetWindowTitle", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"multikey", (uint8*)"fb_Multikey", 11ll, -1ll, (tmp$34)0ull, 128ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"getmouse", (uint8*)"fb_GetMouse", 11ll, -1ll, (tmp$34)0ull, 129ll, 5ll, { { 11ll, 2ll, 0ll, 0ll }, { 11ll, 2ll, 0ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll } } }, { (uint8*)"getmouse", (uint8*)"fb_GetMouse64", 11ll, -1ll, (tmp$34)0ull, 129ll, 5ll, { { 13ll, 2ll, 0ll, 0ll }, { 13ll, 2ll, 0ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll } } }, { (uint8*)"setmouse", (uint8*)"fb_SetMouse", 11ll, -1ll, (tmp$34)0ull, 128ll, 4ll, { { 523ll, 1ll, -1ll, 2147483648ll }, { 523ll, 1ll, -1ll, 2147483648ll }, { 523ll, 1ll, -1ll, -1ll }, { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"getjoystick", (uint8*)"fb_GfxGetJoystick", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 10ll, { { 523ll, 1ll, 0ll, 0ll }, { 8ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll }, { 15ll, 2ll, -1ll, 0ll } } }, { (uint8*)"stick", (uint8*)"fb_GfxStickQB", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 256ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"strig", (uint8*)"fb_GfxStrigQB", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 256ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"screeninfo", (uint8*)"fb_GfxScreenInfo32", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 7ll, { { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 17ll, 2ll, -1ll, 0ll } } }, { (uint8*)"screeninfo", (uint8*)"fb_GfxScreenInfo64", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 7ll, { { 13ll, 2ll, 0ll }, { 13ll, 2ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 17ll, 2ll, -1ll, 0ll } } }, { (uint8*)"screenlist", (uint8*)"fb_GfxScreenList", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 1ll, { { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_GfxImageCreate", (uint8*)0ull, 32ll, -1ll, (tmp$34)&HGFXLIB_CB, 1024ll, 5ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_GfxImageCreateQB", (uint8*)0ull, 32ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 5ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"imagedestroy", (uint8*)"fb_GfxImageDestroy", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 1ll, { { 1056ll, 1ll, 0ll } } }, { (uint8*)"imageinfo", (uint8*)"fb_GfxImageInfo32", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 7ll, { { 1056ll, 1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll }, { 32ll, 2ll, -1ll, 0ll }, { 11ll, 2ll, -1ll, 0ll } } }, { (uint8*)"imageinfo", (uint8*)"fb_GfxImageInfo64", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 7ll, { { 1056ll, 1ll, 0ll }, { 13ll, 2ll, 0ll }, { 13ll, 2ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll }, { 32ll, 2ll, -1ll, 0ll }, { 13ll, 2ll, -1ll, 0ll } } }, { (uint8*)"imageconvertrow", (uint8*)"fb_GfxImageConvertRow", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 6ll, { { 1056ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"screenevent", (uint8*)"fb_GfxEvent", 11ll, -1ll, (tmp$34)&HGFXLIB_CB, 128ll, 1ll, { { 32ll, 1ll, -1ll, 0ll } } }, { (uint8*)"screencontrol", (uint8*)"fb_GfxControl_s", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 2ll, { { 523ll, 1ll, 0ll }, { 17ll, 2ll } } }, { (uint8*)"screencontrol", (uint8*)"fb_GfxControl_i32", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 5ll, { { 523ll, 1ll, 0ll }, { 11ll, 2ll, -1ll, 2147483648ll }, { 11ll, 2ll, -1ll, 2147483648ll }, { 11ll, 2ll, -1ll, 2147483648ll }, { 11ll, 2ll, -1ll, 2147483648ll } } }, { (uint8*)"screencontrol", (uint8*)"fb_GfxControl_i64", 0ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 5ll, { { 523ll, 1ll, 0ll }, { 13ll, 2ll, 0ll }, { 13ll, 2ll, -1ll, 2147483648ll }, { 13ll, 2ll, -1ll, 2147483648ll }, { 13ll, 2ll, -1ll, 2147483648ll } } }, { (uint8*)"screenglproc", (uint8*)"fb_GfxGetGLProcAddress", 32ll, -1ll, (tmp$34)&HGFXLIB_CB, 129ll, 1ll, { { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutTrans", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutPSet", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutPReset", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutAnd", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutOr", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutXor", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutAlpha", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutBlend", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutAdd", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_hPutCustom", (uint8*)0ull, 0ll, 3ll, (tmp$34)&HGFXLIB_CB, 0ll, 9ll, { { 1059ll, 1ll, 0ll }, { 35ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)0ull } };

void RTLGFXMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLGFXMODEND( void )
{
	label$12:;
	label$13:;
}

int64 RTLGFXPSET( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* CEXPR$1, int64 COORDTYPE$1, int64 ISPRESET$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$40:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPset", 301ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$43;
	{
		goto label$41;
	}
	label$43:;
	label$42:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$45;
	{
		goto label$41;
	}
	label$45:;
	label$44:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$47;
	{
		goto label$41;
	}
	label$47:;
	label$46:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, CEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$49;
	{
		goto label$41;
	}
	label$49:;
	label$48:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( COORDTYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$51;
	{
		goto label$41;
	}
	label$51:;
	label$50:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( ISPRESET$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$53;
	{
		goto label$41;
	}
	label$53:;
	label$52:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$41:;
	return fb$result$1;
}

struct $7ASTNODE* RTLGFXPOINT( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPoint", 302ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$59;
	{
		goto label$55;
	}
	label$59:;
	label$58:;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$61;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTF( -0x1.FFFFFCp+22, 15ll );
		YEXPR$1 = vr$5;
	}
	label$61:;
	label$60:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, YEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$63;
	{
		goto label$55;
	}
	label$63:;
	label$62:;
	fb$result$1 = PROC$1;
	label$55:;
	return fb$result$1;
}

int64 RTLGFXLINE( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, struct $7ASTNODE* CEXPR$1, int64 LINETYPE$1, struct $7ASTNODE* STYLEEXPR$1, int64 COORDTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$64:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxLine", 303ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$67;
	{
		goto label$65;
	}
	label$67:;
	label$66:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, X1EXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$69;
	{
		goto label$65;
	}
	label$69:;
	label$68:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, Y1EXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$71;
	{
		goto label$65;
	}
	label$71:;
	label$70:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, X2EXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$73;
	{
		goto label$65;
	}
	label$73:;
	label$72:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, Y2EXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$75;
	{
		goto label$65;
	}
	label$75:;
	label$74:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, CEXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$77;
	{
		goto label$65;
	}
	label$77:;
	label$76:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( LINETYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$79;
	{
		goto label$65;
	}
	label$79:;
	label$78:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, STYLEEXPR$1, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$81;
	{
		goto label$65;
	}
	label$81:;
	label$80:;
	struct $7ASTNODE* vr$12 = ASTNEWCONSTI( COORDTYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, vr$12, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$83;
	{
		goto label$65;
	}
	label$83:;
	label$82:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$65:;
	return fb$result$1;
}

int64 RTLGFXCIRCLE( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* RADEXPR$1, struct $7ASTNODE* CEXPR$1, struct $7ASTNODE* ASPEXPR$1, struct $7ASTNODE* INIEXPR$1, struct $7ASTNODE* ENDEXPR$1, int64 FILLFLAG$1, int64 COORDTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$84:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxEllipse", 304ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$87;
	{
		goto label$85;
	}
	label$87:;
	label$86:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$89;
	{
		goto label$85;
	}
	label$89:;
	label$88:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$91;
	{
		goto label$85;
	}
	label$91:;
	label$90:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, RADEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$93;
	{
		goto label$85;
	}
	label$93:;
	label$92:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, CEXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$95;
	{
		goto label$85;
	}
	label$95:;
	label$94:;
	if( ASPEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$97;
	{
		struct $7ASTNODE* vr$8 = ASTNEWCONSTF( 0x0p+0, 15ll );
		ASPEXPR$1 = vr$8;
	}
	label$97:;
	label$96:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, ASPEXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$99;
	{
		goto label$85;
	}
	label$99:;
	label$98:;
	if( INIEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$101;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTF( 0x0p+0, 15ll );
		INIEXPR$1 = vr$10;
	}
	label$101:;
	label$100:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, INIEXPR$1, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$103;
	{
		goto label$85;
	}
	label$103:;
	label$102:;
	if( ENDEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$105;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTF( 0x1.921FB82C2BD7Fp+2, 15ll );
		ENDEXPR$1 = vr$12;
	}
	label$105:;
	label$104:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, ENDEXPR$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$107;
	{
		goto label$85;
	}
	label$107:;
	label$106:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( FILLFLAG$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$109;
	{
		goto label$85;
	}
	label$109:;
	label$108:;
	struct $7ASTNODE* vr$16 = ASTNEWCONSTI( COORDTYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, vr$16, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$111;
	{
		goto label$85;
	}
	label$111:;
	label$110:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$85:;
	return fb$result$1;
}

int64 RTLGFXPAINT( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* PEXPR$1, struct $7ASTNODE* BEXPR$1, int64 COORD_TYPE$1 )
{
	int64 TMP$196$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$112:;
	struct $7ASTNODE* PROC$1;
	int64 PATTERN$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaint", 305ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$115;
	{
		goto label$113;
	}
	label$115:;
	label$114:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$117;
	{
		goto label$113;
	}
	label$117:;
	label$116:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$119;
	{
		goto label$113;
	}
	label$119:;
	label$118:;
	int64 vr$8 = SYMBISSTRING( *(int64*)((uint8*)PEXPR$1 + 8ll) & 511ll );
	if( vr$8 == 0ll ) goto label$121;
	{
		PATTERN$1 = -1ll;
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 4294901760ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
		if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$123;
		{
			goto label$113;
		}
		label$123:;
		label$122:;
	}
	goto label$120;
	label$121:;
	{
		PATTERN$1 = 0ll;
		struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, PEXPR$1, 2147483648ll, -1ll );
		if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$125;
		{
			goto label$113;
		}
		label$125:;
		label$124:;
	}
	label$120:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, BEXPR$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$127;
	{
		goto label$113;
	}
	label$127:;
	label$126:;
	if( PATTERN$1 == 0ll ) goto label$129;
	{
		struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, PEXPR$1, 2147483648ll, -1ll );
		if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$131;
		{
			goto label$113;
		}
		label$131:;
		label$130:;
	}
	goto label$128;
	label$129:;
	{
		struct $8FBSYMBOL* vr$14 = SYMBALLOCSTRCONST( (uint8*)"", 0ll );
		struct $7ASTNODE* vr$15 = ASTNEWVAR( vr$14, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, 2147483648ll, -1ll );
		if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$133;
		{
			goto label$113;
		}
		label$133:;
		label$132:;
	}
	label$128:;
	if( PATTERN$1 == 0ll ) goto label$134;
	TMP$196$1 = 1ll;
	goto label$139;
	label$134:;
	TMP$196$1 = 0ll;
	label$139:;
	struct $7ASTNODE* vr$17 = ASTNEWCONSTI( TMP$196$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, vr$17, 2147483648ll, -1ll );
	if( vr$18 != (struct $7ASTNODE*)0ull ) goto label$136;
	{
		goto label$113;
	}
	label$136:;
	label$135:;
	struct $7ASTNODE* vr$19 = ASTNEWCONSTI( COORD_TYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, vr$19, 2147483648ll, -1ll );
	if( vr$20 != (struct $7ASTNODE*)0ull ) goto label$138;
	{
		goto label$113;
	}
	label$138:;
	label$137:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$113:;
	return fb$result$1;
}

int64 RTLGFXDRAW( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* CEXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$140:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxDraw", 306ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$143;
	{
		goto label$141;
	}
	label$143:;
	label$142:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, CEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$145;
	{
		goto label$141;
	}
	label$145:;
	label$144:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$141:;
	return fb$result$1;
}

int64 RTLGFXDRAWSTRING( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* SEXPR$1, struct $7ASTNODE* CEXPR$1, struct $7ASTNODE* FEXPR$1, int64 COORD_TYPE$1, int64 MODE$1, struct $7ASTNODE* ALPHAEXPR$1, struct $7ASTNODE* FUNCEXPR$1, struct $7ASTNODE* PARAMEXPR$1 )
{
	struct $7ASTNODE* TMP$197$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$146:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* PUTTER$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxDrawString", 307ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$149;
	{
		goto label$147;
	}
	label$149:;
	label$148:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$151;
	{
		goto label$147;
	}
	label$151:;
	label$150:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$153;
	{
		goto label$147;
	}
	label$153:;
	label$152:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( COORD_TYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$155;
	{
		goto label$147;
	}
	label$155:;
	label$154:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, SEXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$157;
	{
		goto label$147;
	}
	label$157:;
	label$156:;
	if( ALPHAEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$159;
	{
		CEXPR$1 = ALPHAEXPR$1;
	}
	label$159:;
	label$158:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, CEXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$161;
	{
		goto label$147;
	}
	label$161:;
	label$160:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, FEXPR$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$163;
	{
		goto label$147;
	}
	label$163:;
	label$162:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$165;
	{
		goto label$147;
	}
	label$165:;
	label$164:;
	if( FEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$166;
	struct $7ASTNODE* vr$13 = HGETPUTTER( MODE$1 );
	TMP$197$1 = vr$13;
	goto label$175;
	label$166:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
	TMP$197$1 = vr$14;
	label$175:;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, TMP$197$1, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$168;
	{
		goto label$147;
	}
	label$168:;
	label$167:;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, FUNCEXPR$1, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$170;
	{
		goto label$147;
	}
	label$170:;
	label$169:;
	if( PARAMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$172;
	{
		struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		PARAMEXPR$1 = vr$17;
	}
	label$172:;
	label$171:;
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, PARAMEXPR$1, 2147483648ll, -1ll );
	if( vr$18 != (struct $7ASTNODE*)0ull ) goto label$174;
	{
		goto label$147;
	}
	label$174:;
	label$173:;
	struct $7ASTNODE* vr$19 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$19 );
	fb$result$1 = -1ll;
	label$147:;
	return fb$result$1;
}

int64 RTLGFXVIEW( struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, struct $7ASTNODE* FILLEXPR$1, struct $7ASTNODE* BORDEXPR$1, int64 SCREENFLAG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$176:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxView", 308ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, X1EXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$179;
	{
		goto label$177;
	}
	label$179:;
	label$178:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, Y1EXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$181;
	{
		goto label$177;
	}
	label$181:;
	label$180:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, X2EXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$183;
	{
		goto label$177;
	}
	label$183:;
	label$182:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, Y2EXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$185;
	{
		goto label$177;
	}
	label$185:;
	label$184:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, FILLEXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$187;
	{
		goto label$177;
	}
	label$187:;
	label$186:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, BORDEXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$189;
	{
		goto label$177;
	}
	label$189:;
	label$188:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( SCREENFLAG$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$191;
	{
		goto label$177;
	}
	label$191:;
	label$190:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$177:;
	return fb$result$1;
}

int64 RTLGFXWINDOW( struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, int64 SCREENFLAG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$192:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxWindow", 309ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	if( X1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$195;
	{
		struct $7ASTNODE* vr$3 = ASTNEWCONSTF( 0x0p+0, 15ll );
		X1EXPR$1 = vr$3;
	}
	label$195:;
	label$194:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, X1EXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$197;
	{
		goto label$193;
	}
	label$197:;
	label$196:;
	if( Y1EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$199;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTF( 0x0p+0, 15ll );
		Y1EXPR$1 = vr$5;
	}
	label$199:;
	label$198:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, Y1EXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$201;
	{
		goto label$193;
	}
	label$201:;
	label$200:;
	if( X2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$203;
	{
		struct $7ASTNODE* vr$7 = ASTNEWCONSTF( 0x0p+0, 15ll );
		X2EXPR$1 = vr$7;
	}
	label$203:;
	label$202:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, X2EXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$205;
	{
		goto label$193;
	}
	label$205:;
	label$204:;
	if( Y2EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$207;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTF( 0x0p+0, 15ll );
		Y2EXPR$1 = vr$9;
	}
	label$207:;
	label$206:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, Y2EXPR$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$209;
	{
		goto label$193;
	}
	label$209:;
	label$208:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( SCREENFLAG$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$211;
	{
		goto label$193;
	}
	label$211:;
	label$210:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$193:;
	return fb$result$1;
}

int64 RTLGFXPALETTE( struct $7ASTNODE* ATTEXPR$1, struct $7ASTNODE* REXPR$1, struct $7ASTNODE* GEXPR$1, struct $7ASTNODE* BEXPR$1, int64 ISGET$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$212:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 GBDEFVAL$1;
	int64 GBMODE$1;
	fb$result$1 = 0ll;
	if( ISGET$1 == 0ll ) goto label$215;
	{
		int64 TMP$198$2;
		if( ((*(int64*)((uint8*)REXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$216;
		TMP$198$2 = 24ll;
		goto label$233;
		label$216:;
		TMP$198$2 = (*(int64*)((uint8*)REXPR$1 + 8ll) & 511ll) & 31ll;
		label$233:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$198$2 * 56ll)) + 8ll) != 8ll ) goto label$218;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGet64", 314ll );
			F$1 = vr$8;
		}
		goto label$217;
		label$218:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGet", 313ll );
			F$1 = vr$9;
		}
		label$217:;
	}
	goto label$214;
	label$215:;
	{
		struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_GfxPalette", 310ll );
		F$1 = vr$10;
	}
	label$214:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ATTEXPR$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$220;
	{
		goto label$213;
	}
	label$220:;
	label$219:;
	if( REXPR$1 != (struct $7ASTNODE*)0ull ) goto label$222;
	{
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		REXPR$1 = vr$13;
	}
	label$222:;
	label$221:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, REXPR$1, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$224;
	{
		goto label$213;
	}
	label$224:;
	label$223:;
	if( GEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$226;
	{
		GBMODE$1 = -1ll;
	}
	goto label$225;
	label$226:;
	{
		if( ISGET$1 == 0ll ) goto label$228;
		{
			GBDEFVAL$1 = 0ll;
		}
		goto label$227;
		label$228:;
		{
			GBDEFVAL$1 = -1ll;
		}
		label$227:;
		struct $7ASTNODE* vr$15 = ASTNEWCONSTI( GBDEFVAL$1, 8ll, (struct $8FBSYMBOL*)0ull );
		GEXPR$1 = vr$15;
		struct $7ASTNODE* vr$16 = ASTNEWCONSTI( GBDEFVAL$1, 8ll, (struct $8FBSYMBOL*)0ull );
		BEXPR$1 = vr$16;
		GBMODE$1 = 1ll;
	}
	label$225:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, GEXPR$1, 2147483648ll, GBMODE$1 );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$230;
	{
		goto label$213;
	}
	label$230:;
	label$229:;
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, BEXPR$1, 2147483648ll, GBMODE$1 );
	if( vr$18 != (struct $7ASTNODE*)0ull ) goto label$232;
	{
		goto label$213;
	}
	label$232:;
	label$231:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$213:;
	return fb$result$1;
}

int64 RTLGFXPALETTEUSING( struct $7ASTNODE* ARRAYEXPR$1, int64 ISGET$1, int64 IS64BIT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$234:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = 0ll;
	if( IS64BIT$1 == 0ll ) goto label$237;
	{
		if( ISGET$1 == 0ll ) goto label$239;
		{
			struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGetUsing64", 316ll );
			F$1 = vr$1;
		}
		goto label$238;
		label$239:;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteUsing64", 312ll );
			F$1 = vr$2;
		}
		label$238:;
	}
	goto label$236;
	label$237:;
	{
		if( ISGET$1 == 0ll ) goto label$241;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGetUsing", 315ll );
			F$1 = vr$3;
		}
		goto label$240;
		label$241:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteUsing", 311ll );
			F$1 = vr$4;
		}
		label$240:;
	}
	label$236:;
	struct $7ASTNODE* vr$5 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, ARRAYEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$243;
	{
		goto label$235;
	}
	label$243:;
	label$242:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$235:;
	return fb$result$1;
}

int64 RTLGFXPUT( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* ARRAYEXPR$1, struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* Y2EXPR$1, int64 MODE$1, struct $7ASTNODE* ALPHAEXPR$1, struct $7ASTNODE* FUNCEXPR$1, struct $7ASTNODE* PARAMEXPR$1, int64 COORDTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$244:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPut", 317ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$247;
	{
		goto label$245;
	}
	label$247:;
	label$246:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$249;
	{
		goto label$245;
	}
	label$249:;
	label$248:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$251;
	{
		goto label$245;
	}
	label$251:;
	label$250:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, ARRAYEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$253;
	{
		goto label$245;
	}
	label$253:;
	label$252:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, X1EXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$255;
	{
		goto label$245;
	}
	label$255:;
	label$254:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, X2EXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$257;
	{
		goto label$245;
	}
	label$257:;
	label$256:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, Y1EXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$259;
	{
		goto label$245;
	}
	label$259:;
	label$258:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, Y2EXPR$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$261;
	{
		goto label$245;
	}
	label$261:;
	label$260:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( COORDTYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$263;
	{
		goto label$245;
	}
	label$263:;
	label$262:;
	struct $7ASTNODE* vr$13 = ASTNEWCONSTI( MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$265;
	{
		goto label$245;
	}
	label$265:;
	label$264:;
	struct $7ASTNODE* vr$15 = HGETPUTTER( MODE$1 );
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$267;
	{
		goto label$245;
	}
	label$267:;
	label$266:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, ALPHAEXPR$1, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$269;
	{
		goto label$245;
	}
	label$269:;
	label$268:;
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, FUNCEXPR$1, 2147483648ll, -1ll );
	if( vr$18 != (struct $7ASTNODE*)0ull ) goto label$271;
	{
		goto label$245;
	}
	label$271:;
	label$270:;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, PARAMEXPR$1, 2147483648ll, -1ll );
	if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$273;
	{
		goto label$245;
	}
	label$273:;
	label$272:;
	struct $7ASTNODE* vr$20 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$20 );
	fb$result$1 = -1ll;
	label$245:;
	return fb$result$1;
}

int64 RTLGFXGET( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, struct $7ASTNODE* ARRAYEXPR$1, int64 COORDTYPE$1, struct $7ASTNODE* DESCEXPR$1 )
{
	struct $8FBSYMBOL* TMP$199$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$274:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 0ll ) goto label$276;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxGet", 328ll );
	TMP$199$1 = vr$1;
	goto label$297;
	label$276:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_GfxGetQB", 329ll );
	TMP$199$1 = vr$2;
	label$297:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$199$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, TARGET$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$278;
	{
		goto label$275;
	}
	label$278:;
	label$277:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, X1EXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$280;
	{
		goto label$275;
	}
	label$280:;
	label$279:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, Y1EXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$282;
	{
		goto label$275;
	}
	label$282:;
	label$281:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, X2EXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$284;
	{
		goto label$275;
	}
	label$284:;
	label$283:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, Y2EXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$286;
	{
		goto label$275;
	}
	label$286:;
	label$285:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, ARRAYEXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$288;
	{
		goto label$275;
	}
	label$288:;
	label$287:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( COORDTYPE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$290;
	{
		goto label$275;
	}
	label$290:;
	label$289:;
	if( DESCEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$292;
	{
		struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, DESCEXPR$1, 2147483648ll, -1ll );
		if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$294;
		{
			goto label$275;
		}
		label$294:;
		label$293:;
	}
	goto label$291;
	label$292:;
	{
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, 2147483648ll, 1ll );
		if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$296;
		{
			goto label$275;
		}
		label$296:;
		label$295:;
	}
	label$291:;
	struct $7ASTNODE* vr$15 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$15 );
	fb$result$1 = -1ll;
	label$275:;
	return fb$result$1;
}

int64 RTLGFXSCREENSET( struct $7ASTNODE* MEXPR$1, struct $7ASTNODE* DEXPR$1, struct $7ASTNODE* PEXPR$1, struct $7ASTNODE* FEXPR$1, struct $7ASTNODE* REXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$298:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxScreen", 330ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, MEXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$301;
	{
		goto label$299;
	}
	label$301:;
	label$300:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, DEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$303;
	{
		goto label$299;
	}
	label$303:;
	label$302:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, PEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$305;
	{
		goto label$299;
	}
	label$305:;
	label$304:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, FEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$307;
	{
		goto label$299;
	}
	label$307:;
	label$306:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, REXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$309;
	{
		goto label$299;
	}
	label$309:;
	label$308:;
	struct $7ASTNODE* vr$8 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$8 );
	fb$result$1 = -1ll;
	label$299:;
	return fb$result$1;
}

int64 RTLGFXSCREENSETQB( struct $7ASTNODE* MODE$1, struct $7ASTNODE* ACTIVE$1, struct $7ASTNODE* VISIBLE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$310:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxScreenQB", 331ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, MODE$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$313;
	{
		goto label$311;
	}
	label$313:;
	label$312:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, ACTIVE$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$315;
	{
		goto label$311;
	}
	label$315:;
	label$314:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, VISIBLE$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$317;
	{
		goto label$311;
	}
	label$317:;
	label$316:;
	struct $7ASTNODE* vr$6 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$6 );
	fb$result$1 = -1ll;
	label$311:;
	return fb$result$1;
}

struct $7ASTNODE* RTLGFXIMAGECREATE( struct $7ASTNODE* WEXPR$1, struct $7ASTNODE* HEXPR$1, struct $7ASTNODE* CEXPR$1, struct $7ASTNODE* DEXPR$1, int64 FLAGS$1 )
{
	struct $8FBSYMBOL* TMP$200$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$318:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 0ll ) goto label$320;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxImageCreate", 332ll );
	TMP$200$1 = vr$1;
	goto label$331;
	label$320:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_GfxImageCreateQB", 333ll );
	TMP$200$1 = vr$2;
	label$331:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$200$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, WEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$322;
	{
		goto label$319;
	}
	label$322:;
	label$321:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, HEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$324;
	{
		goto label$319;
	}
	label$324:;
	label$323:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, CEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$326;
	{
		goto label$319;
	}
	label$326:;
	label$325:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, DEXPR$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$328;
	{
		goto label$319;
	}
	label$328:;
	label$327:;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( FLAGS$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, vr$8, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$330;
	{
		goto label$319;
	}
	label$330:;
	label$329:;
	fb$result$1 = PROC$1;
	label$319:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzgfx( void )
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

static int64 HPORTS_CB( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	static int64 RESTART_COUNT$1;
	static int64 LIBSADDED$1 = 0ll;
	int64 vr$1 = FBRESTARTGETCOUNT(  );
	if( RESTART_COUNT$1 == vr$1 ) goto label$17;
	{
		int64 vr$2 = FBRESTARTGETCOUNT(  );
		RESTART_COUNT$1 = vr$2;
		LIBSADDED$1 = 0ll;
	}
	label$17:;
	label$16:;
	if( LIBSADDED$1 != 0ll ) goto label$19;
	{
		LIBSADDED$1 = -1ll;
		{
			$13FB_COMPTARGET TMP$193$3;
			TMP$193$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
			if( TMP$193$3 == 0ll ) goto label$22;
			label$23:;
			if( TMP$193$3 != 1ll ) goto label$21;
			label$22:;
			{
				FBADDLIB( (uint8*)"advapi32" );
			}
			label$21:;
			label$20:;
		}
	}
	label$19:;
	label$18:;
	fb$result$1 = -1ll;
	label$15:;
	return fb$result$1;
}

static int64 HGFXLIB_CB( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	*(int64*)((uint8*)&ENV$ + 472ll) = -1ll;
	fb$result$1 = -1ll;
	label$25:;
	return fb$result$1;
}

static struct $7ASTNODE* HGETPUTTER( int64 MODE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$26:;
	struct $8FBSYMBOL* PROC$1;
	{
		uint64 TMP$195$2;
		TMP$195$2 = (uint64)MODE$1;
		goto label$29;
		label$30:;
		{
			struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_hPutTrans", 318ll );
			PROC$1 = vr$1;
		}
		goto label$28;
		label$31:;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_hPutPSet", 319ll );
			PROC$1 = vr$2;
		}
		goto label$28;
		label$32:;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_hPutPReset", 320ll );
			PROC$1 = vr$3;
		}
		goto label$28;
		label$33:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_hPutAnd", 321ll );
			PROC$1 = vr$4;
		}
		goto label$28;
		label$34:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_hPutOr", 322ll );
			PROC$1 = vr$5;
		}
		goto label$28;
		label$35:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_hPutXor", 323ll );
			PROC$1 = vr$6;
		}
		goto label$28;
		label$36:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_hPutAlpha", 324ll );
			PROC$1 = vr$7;
		}
		goto label$28;
		label$37:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_hPutBlend", 325ll );
			PROC$1 = vr$8;
		}
		goto label$28;
		label$38:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_hPutAdd", 326ll );
			PROC$1 = vr$9;
		}
		goto label$28;
		label$39:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_hPutCustom", 327ll );
			PROC$1 = vr$10;
		}
		goto label$28;
		label$29:;
		static const void* tmp$201[10ll] = {
			&&label$30,
			&&label$31,
			&&label$32,
			&&label$33,
			&&label$34,
			&&label$35,
			&&label$36,
			&&label$38,
			&&label$39,
			&&label$37,
		};
		if( TMP$195$2 > 9ull ) goto label$39;
		goto *tmp$201[TMP$195$2 - 0ull];
		label$28:;
	}
	struct $7ASTNODE* vr$11 = ASTBUILDPROCADDROF( PROC$1 );
	fb$result$1 = vr$11;
	label$27:;
	return fb$result$1;
}
