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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 24 );
struct $16FB_CALL_ARG_LIST {
	int64 ARGS;
	struct $11FB_CALL_ARG* HEAD;
	struct $11FB_CALL_ARG* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CALL_ARG_LIST ) == 24 );
typedef int64 $12FB_PARSEROPT;
typedef int64 $9FB_ERRMSG;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $14FB_SYMBFINDOPT;
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzproccallzargs( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int64, uint8*, int64 );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTZ( int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDVTABLELOOKUP( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDFAKECALL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int64, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
struct $11FB_CALL_ARG* SYMBALLOCOVLCALLARG( struct $5TLIST*, struct $16FB_CALL_ARG_LIST*, int64 );
void SYMBFREEOVLCALLARGS( struct $5TLIST*, struct $16FB_CALL_ARG_LIST* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
static int64 HPROCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, struct $7ASTNODE**, int64*, int64*, $12FB_PARSEROPT );
static void HOVLPROCARG( int64, struct $11FB_CALL_ARG*, int64*, $12FB_PARSEROPT );
static void HMAYBEWARNABOUTEQOUTSIDEPARENS( int64, int64, struct $8FBSYMBOL* );
static struct $7ASTNODE* HGETVTABLELOOKUPIFNEEDED( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARSEROPT );
static struct $7ASTNODE* HOVLPROCARGLIST( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $16FB_CALL_ARG_LIST*, $12FB_PARSEROPT );
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

void PARSERPROCCALLINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), 128ll, 24ll, 6ll );
	label$11:;
}

void PARSERPROCCALLEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll) );
	label$13:;
}

struct $7ASTNODE* CPROCARGLIST( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* PTREXPR$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$136:;
	int64 ARGS$1;
	int64 PARAMS$1;
	int64 MODE$1;
	int64 HAVE_EQ_OUTSIDE_PARENS$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $7ASTNODE* PROCEXPR$1;
	struct $7ASTNODE* EXPR$1;
	struct $11FB_CALL_ARG* ARG$1;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 1ll) <= 0ll ) goto label$139;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll) == (struct $8FBSYMBOL*)0ull ) goto label$141;
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
	fb$result$1 = (struct $7ASTNODE*)0ull;
	HAVE_EQ_OUTSIDE_PARENS$1 = 0ll;
	int64 vr$5 = SYMBCHECKACCESS( PROC$1 );
	if( vr$5 != 0ll ) goto label$143;
	{
		$9FB_ERRMSG TMP$96$2;
		uint8* vr$6 = SYMBGETFULLPROCNAME( PROC$1 );
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 4ll) == 0ll ) goto label$144;
		TMP$96$2 = 205ll;
		goto label$192;
		label$144:;
		TMP$96$2 = 202ll;
		label$192:;
		ERRREPORTEX( TMP$96$2, (uint8*)vr$6, 0ll, 1ll, (uint8*)0ull );
		struct $7ASTNODE* vr$9 = ASTBUILDFAKECALL( PROC$1 );
		fb$result$1 = vr$9;
		goto label$137;
	}
	label$143:;
	label$142:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$146;
	{
		if( (OPTIONS$1 & 64ll) != 0ll ) goto label$148;
		{
			if( ((int64)-(BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 16ll) & 2ll) == 0ll)) == 0ll ) goto label$150;
			{
				ERRREPORT( 214ll, -1ll, (uint8*)0ull );
				struct $7ASTNODE* vr$18 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$18;
				goto label$137;
			}
			label$150:;
			label$149:;
			struct $11FB_CALL_ARG* vr$20 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), ARG_LIST$1, -1ll );
			ARG$1 = vr$20;
			struct $7ASTNODE* vr$23 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 136ll) + 104ll), (struct $8FBSYMBOL*)0ull, 0ll );
			*(struct $7ASTNODE**)ARG$1 = vr$23;
			*($12FB_PARAMMODE*)((uint8*)ARG$1 + 8ll) = -1ll;
		}
		label$148:;
		label$147:;
		struct $7ASTNODE* vr$28 = HGETVTABLELOOKUPIFNEEDED( PROC$1, *(struct $7ASTNODE**)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll), OPTIONS$1 );
		PTREXPR$1 = vr$28;
	}
	goto label$145;
	label$146:;
	{
		if( (OPTIONS$1 & 64ll) == 0ll ) goto label$152;
		{
			ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll) = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll);
			ASTDELTREE( *(struct $7ASTNODE**)ARG$1 );
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), (void*)ARG$1 );
		}
		label$152:;
		label$151:;
	}
	label$145:;
	struct $7ASTNODE* vr$35 = ASTNEWCALL( PROC$1, PTREXPR$1 );
	PROCEXPR$1 = vr$35;
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
	label$153:;
	if( ARG$1 == (struct $11FB_CALL_ARG*)0ull ) goto label$154;
	{
		struct $11FB_CALL_ARG* NXT$2;
		NXT$2 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll);
		struct $7ASTNODE* vr$43 = ASTNEWARG( PROCEXPR$1, *(struct $7ASTNODE**)ARG$1, 2147483648ll, *(int64*)((uint8*)ARG$1 + 8ll) );
		if( vr$43 != (struct $7ASTNODE*)0ull ) goto label$156;
		{
			ASTDELTREE( PROCEXPR$1 );
			struct $7ASTNODE* vr$44 = ASTBUILDFAKECALL( PROC$1 );
			fb$result$1 = vr$44;
			goto label$137;
		}
		label$156:;
		label$155:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), (void*)ARG$1 );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		ARG$1 = NXT$2;
		PARAMS$1 = PARAMS$1 + -1ll;
	}
	goto label$153;
	label$154:;
	ARGS$1 = 0ll;
	if( PARAMS$1 != 0ll ) goto label$158;
	{
		if( (OPTIONS$1 & 16ll) != 0ll ) goto label$160;
		{
			int64 vr$49 = LEXGETTOKEN( 0ll );
			if( vr$49 != 40ll ) goto label$162;
			{
				LEXSKIPTOKEN( 0ll );
				int64 vr$50 = LEXGETTOKEN( 0ll );
				if( vr$50 == 41ll ) goto label$164;
				{
					ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				}
				goto label$163;
				label$164:;
				{
					LEXSKIPTOKEN( 0ll );
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
	if( (OPTIONS$1 & 32ll) != 0ll ) goto label$166;
	{
		label$167:;
		{
			if( ARGS$1 < PARAMS$1 ) goto label$171;
			{
				if( *(int64*)((uint8*)PARAM$1 + 96ll) == 4ll ) goto label$173;
				{
					ERRREPORT( 1ll, 0ll, (uint8*)0ull );
					if( (OPTIONS$1 & 16ll) == 0ll ) goto label$175;
					{
						HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
					}
					goto label$174;
					label$175:;
					{
						HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
					}
					label$174:;
					ARGS$1 = ARGS$1 + -1ll;
					goto label$168;
				}
				label$173:;
				label$172:;
			}
			label$171:;
			label$170:;
			int64 vr$58 = HPROCARG( PROC$1, PARAM$1, ARGS$1, &EXPR$1, &MODE$1, &HAVE_EQ_OUTSIDE_PARENS$1, OPTIONS$1 );
			if( vr$58 != 0ll ) goto label$177;
			{
				goto label$168;
			}
			label$177:;
			label$176:;
			struct $7ASTNODE* vr$59 = ASTNEWARG( PROCEXPR$1, EXPR$1, 2147483648ll, MODE$1 );
			if( vr$59 != (struct $7ASTNODE*)0ull ) goto label$179;
			{
				if( (OPTIONS$1 & 16ll) == 0ll ) goto label$181;
				{
					HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
				}
				goto label$180;
				label$181:;
				{
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				}
				label$180:;
				ASTDELTREE( PROCEXPR$1 );
				struct $7ASTNODE* vr$61 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$61;
				goto label$137;
			}
			label$179:;
			label$178:;
			ARGS$1 = ARGS$1 + 1ll;
			if( ARGS$1 >= PARAMS$1 ) goto label$183;
			{
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
			}
			label$183:;
			label$182:;
		}
		label$169:;
		int64 vr$64 = HMATCH( 44ll, 0ll );
		if( vr$64 != 0ll ) goto label$167;
		label$168:;
	}
	label$166:;
	label$165:;
	HMAYBEWARNABOUTEQOUTSIDEPARENS( ARGS$1, HAVE_EQ_OUTSIDE_PARENS$1, PROC$1 );
	label$184:;
	if( ARGS$1 >= PARAMS$1 ) goto label$185;
	{
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$187;
		{
			goto label$185;
		}
		label$187:;
		label$186:;
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$189;
		{
			ERRREPORT( 1ll, 0ll, (uint8*)0ull );
			ASTDELTREE( PROCEXPR$1 );
			struct $7ASTNODE* vr$67 = ASTBUILDFAKECALL( PROC$1 );
			fb$result$1 = vr$67;
			goto label$137;
		}
		label$189:;
		label$188:;
		struct $7ASTNODE* vr$68 = ASTNEWARG( PROCEXPR$1, (struct $7ASTNODE*)0ull, 2147483648ll, -1ll );
		if( vr$68 != (struct $7ASTNODE*)0ull ) goto label$191;
		{
			ASTDELTREE( PROCEXPR$1 );
			struct $7ASTNODE* vr$69 = ASTBUILDFAKECALL( PROC$1 );
			fb$result$1 = vr$69;
			goto label$137;
		}
		label$191:;
		label$190:;
		ARGS$1 = ARGS$1 + 1ll;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static int64 HPROCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* PARAM$1, int64 ARGNUM$1, struct $7ASTNODE** EXPR$1, int64* AMODE$1, int64* HAVE_EQ_OUTSIDE_PARENS$1, $12FB_PARSEROPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	int64 PMODE$1;
	int64 OLD_DTYPE$1;
	struct $8FBSYMBOL* OLDSYM$1;
	fb$result$1 = 0ll;
	PMODE$1 = *(int64*)((uint8*)PARAM$1 + 96ll);
	*AMODE$1 = -1ll;
	*EXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$4 = LEXGETTOKEN( 0ll );
	if( vr$4 != 319ll ) goto label$17;
	{
		LEXSKIPTOKEN( 2048ll );
		*AMODE$1 = 1ll;
	}
	label$17:;
	label$16:;
	OLDSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll);
	OLD_DTYPE$1 = *(int64*)((uint8*)&PARSER$ + 312ll);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll);
	*(int64*)((uint8*)&PARSER$ + 312ll) = *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll;
	*(int64*)((uint8*)&PARSER$ + 328ll) = 0ll;
	struct $7ASTNODE* vr$9 = CEXPRESSION(  );
	*EXPR$1 = vr$9;
	*HAVE_EQ_OUTSIDE_PARENS$1 = *HAVE_EQ_OUTSIDE_PARENS$1 | *(int64*)((uint8*)&PARSER$ + 328ll);
	goto label$19;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) | 1ll;
	}
	goto label$18;
	label$19:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) & -2ll;
	}
	label$18:;
	if( *EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$21;
	{
		if( (OPTIONS$1 & 16ll) == 0ll ) goto label$23;
		{
			*EXPR$1 = (struct $7ASTNODE*)0ull;
		}
		goto label$22;
		label$23:;
		{
			if( ((int64)-(ARGNUM$1 == 0ll) & (int64)-(*AMODE$1 == -1ll)) == 0ll ) goto label$25;
			{
				int64 vr$23 = HMATCH( 319ll, 2048ll );
				if( vr$23 == 0ll ) goto label$27;
				{
					*AMODE$1 = 1ll;
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
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = OLDSYM$1;
	*(int64*)((uint8*)&PARSER$ + 312ll) = OLD_DTYPE$1;
	if( *EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$29;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$31;
		{
			if( PMODE$1 != 4ll ) goto label$33;
			{
				goto label$15;
			}
			label$33:;
			label$32:;
			ERRREPORT( 1ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$32 = ASTNEWCONSTZ( *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
			*EXPR$1 = vr$32;
		}
		label$31:;
		label$30:;
	}
	goto label$28;
	label$29:;
	{
		if( PMODE$1 != 3ll ) goto label$35;
		{
			int64 vr$34 = LEXGETTOKEN( 0ll );
			if( vr$34 != 40ll ) goto label$37;
			{
				int64 vr$35 = LEXGETLOOKAHEAD( 1ll, 0ll );
				if( vr$35 != 41ll ) goto label$39;
				{
					if( *AMODE$1 == -1ll ) goto label$41;
					{
						ERRREPORT( 22ll, 0ll, (uint8*)0ull );
					}
					label$41:;
					label$40:;
					LEXSKIPTOKEN( 0ll );
					LEXSKIPTOKEN( 0ll );
					*AMODE$1 = 3ll;
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
	if( *AMODE$1 == -1ll ) goto label$43;
	{
		if( *AMODE$1 == PMODE$1 ) goto label$45;
		{
			if( PMODE$1 == 4ll ) goto label$47;
			{
				if( *AMODE$1 == 1ll ) goto label$49;
				{
					if( *AMODE$1 == PMODE$1 ) goto label$51;
					{
						ERRREPORT( 22ll, 0ll, (uint8*)0ull );
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
	fb$result$1 = -1ll;
	label$15:;
	return fb$result$1;
}

static void HOVLPROCARG( int64 ARGNUM$1, struct $11FB_CALL_ARG* ARG$1, int64* HAVE_EQ_OUTSIDE_PARENS$1, $12FB_PARSEROPT OPTIONS$1 )
{
	label$52:;
	struct $8FBSYMBOL* OLDSYM$1;
	int64 OLD_DTYPE$1;
	*(struct $7ASTNODE**)ARG$1 = (struct $7ASTNODE*)0ull;
	*($12FB_PARAMMODE*)((uint8*)ARG$1 + 8ll) = -1ll;
	int64 vr$2 = HMATCH( 319ll, 2048ll );
	if( vr$2 == 0ll ) goto label$55;
	{
		*($12FB_PARAMMODE*)((uint8*)ARG$1 + 8ll) = 1ll;
	}
	label$55:;
	label$54:;
	OLDSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll);
	OLD_DTYPE$1 = *(int64*)((uint8*)&PARSER$ + 312ll);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)&PARSER$ + 312ll) = 2147483648ll;
	*(int64*)((uint8*)&PARSER$ + 328ll) = 0ll;
	struct $7ASTNODE* vr$4 = CEXPRESSION(  );
	*(struct $7ASTNODE**)ARG$1 = vr$4;
	if( *(struct $7ASTNODE**)ARG$1 != (struct $7ASTNODE*)0ull ) goto label$57;
	{
		if( (OPTIONS$1 & 16ll) == 0ll ) goto label$59;
		{
			*(struct $7ASTNODE**)ARG$1 = (struct $7ASTNODE*)0ull;
		}
		goto label$58;
		label$59:;
		{
			if( ((int64)-(ARGNUM$1 == 0ll) & (int64)-(*(int64*)((uint8*)ARG$1 + 8ll) == -1ll)) == 0ll ) goto label$61;
			{
				int64 vr$13 = HMATCH( 319ll, 2048ll );
				if( vr$13 == 0ll ) goto label$63;
				{
					*($12FB_PARAMMODE*)((uint8*)ARG$1 + 8ll) = 1ll;
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
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = OLDSYM$1;
	*(int64*)((uint8*)&PARSER$ + 312ll) = OLD_DTYPE$1;
	*HAVE_EQ_OUTSIDE_PARENS$1 = *HAVE_EQ_OUTSIDE_PARENS$1 | *(int64*)((uint8*)&PARSER$ + 328ll);
	if( *(struct $7ASTNODE**)ARG$1 == (struct $7ASTNODE*)0ull ) goto label$65;
	{
		int64 vr$21 = LEXGETTOKEN( 0ll );
		if( vr$21 != 40ll ) goto label$67;
		{
			int64 vr$22 = LEXGETLOOKAHEAD( 1ll, 0ll );
			if( vr$22 != 41ll ) goto label$69;
			{
				if( *(int64*)((uint8*)ARG$1 + 8ll) == -1ll ) goto label$71;
				{
					ERRREPORT( 22ll, 0ll, (uint8*)0ull );
				}
				label$71:;
				label$70:;
				LEXSKIPTOKEN( 0ll );
				LEXSKIPTOKEN( 0ll );
				*($12FB_PARAMMODE*)((uint8*)ARG$1 + 8ll) = 3ll;
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

static void HMAYBEWARNABOUTEQOUTSIDEPARENS( int64 ARGS$1, int64 HAVE_EQ_OUTSIDE_PARENS$1, struct $8FBSYMBOL* PROC$1 )
{
	label$72:;
	int64 WARN$1;
	WARN$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) != 0ll);
	if( WARN$1 != 0ll ) goto label$75;
	{
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 1ll) <= 0ll ) goto label$77;
		{
			label$78:;
			{
				PROC$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll);
				if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$82;
				{
					goto label$79;
				}
				label$82:;
				label$81:;
				WARN$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) != 0ll);
			}
			label$80:;
			if( WARN$1 == 0ll ) goto label$78;
			label$79:;
		}
		label$77:;
		label$76:;
	}
	label$75:;
	label$74:;
	WARN$1 = WARN$1 & (int64)-(ARGS$1 == 1ll);
	WARN$1 = WARN$1 & HAVE_EQ_OUTSIDE_PARENS$1;
	if( WARN$1 == 0ll ) goto label$84;
	{
		ERRREPORTWARN( 34ll, (uint8*)0ull, 1ll, (uint8*)0ull );
	}
	label$84:;
	label$83:;
	label$73:;
}

static struct $7ASTNODE* HGETVTABLELOOKUPIFNEEDED( struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* THISEXPR$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$85:;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( (OPTIONS$1 & 2048ll) == 0ll ) goto label$88;
	{
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 512ll) == 0ll ) goto label$90;
		{
			ERRREPORT( 307ll, 0ll, (uint8*)0ull );
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
	struct $11FB_CALL_ARG* TMP$93$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$91:;
	int64 I$1;
	int64 PARAMS$1;
	int64 ARGS$1;
	int64 HAVE_EQ_OUTSIDE_PARENS$1;
	struct $7ASTNODE* PROCEXPR$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* OVLPROC$1;
	struct $11FB_CALL_ARG* ARG$1;
	struct $11FB_CALL_ARG* NXT$1;
	$9FB_ERRMSG ERR_NUM$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	HAVE_EQ_OUTSIDE_PARENS$1 = 0ll;
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 194ll);
	ARGS$1 = *(int64*)ARG_LIST$1;
	if( (OPTIONS$1 & 64ll) == 0ll ) goto label$94;
	{
		ARGS$1 = ARGS$1 + -1ll;
	}
	label$94:;
	label$93:;
	if( (OPTIONS$1 & 32ll) != 0ll ) goto label$96;
	{
		int64 INIT_ARGS$2;
		INIT_ARGS$2 = ARGS$1;
		label$97:;
		{
			if( ARGS$1 <= PARAMS$1 ) goto label$101;
			{
				ERRREPORT( 1ll, 0ll, (uint8*)0ull );
				if( (OPTIONS$1 & 16ll) == 0ll ) goto label$103;
				{
					HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
				}
				goto label$102;
				label$103:;
				{
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				}
				label$102:;
				ARGS$1 = ARGS$1 + -1ll;
				goto label$98;
			}
			label$101:;
			label$100:;
			struct $11FB_CALL_ARG* vr$10 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), ARG_LIST$1, 0ll );
			ARG$1 = vr$10;
			HOVLPROCARG( ARGS$1 - INIT_ARGS$2, ARG$1, &HAVE_EQ_OUTSIDE_PARENS$1, OPTIONS$1 );
			int64 vr$13 = LEXGETTOKEN( 0ll );
			if( vr$13 == 44ll ) goto label$105;
			{
				if( *(struct $7ASTNODE**)ARG$1 == (struct $7ASTNODE*)0ull ) goto label$107;
				{
					ARGS$1 = ARGS$1 + 1ll;
				}
				label$107:;
				label$106:;
				goto label$98;
			}
			label$105:;
			label$104:;
			LEXSKIPTOKEN( 0ll );
			ARGS$1 = ARGS$1 + 1ll;
		}
		label$99:;
		goto label$97;
		label$98:;
	}
	label$96:;
	label$95:;
	HMAYBEWARNABOUTEQOUTSIDEPARENS( ARGS$1, HAVE_EQ_OUTSIDE_PARENS$1, PROC$1 );
	$14FB_SYMBFINDOPT FIND_OPTIONS$1;
	FIND_OPTIONS$1 = 0ll;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 32ll) == 0ll ) goto label$109;
	{
		if( (OPTIONS$1 & 128ll) == 0ll ) goto label$111;
		{
			FIND_OPTIONS$1 = 1ll;
		}
		label$111:;
		label$110:;
	}
	label$109:;
	label$108:;
	if( (OPTIONS$1 & 64ll) == 0ll ) goto label$112;
	TMP$93$1 = *(struct $11FB_CALL_ARG**)((uint8*)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll) + 16ll);
	goto label$193;
	label$112:;
	TMP$93$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
	label$193:;
	struct $8FBSYMBOL* vr$25 = SYMBFINDCLOSESTOVLPROC( PROC$1, ARGS$1, TMP$93$1, &ERR_NUM$1, FIND_OPTIONS$1 );
	OVLPROC$1 = vr$25;
	if( OVLPROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$114;
	{
		SYMBFREEOVLCALLARGS( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), ARG_LIST$1 );
		if( ERR_NUM$1 != 0ll ) goto label$116;
		{
			ERR_NUM$1 = 99ll;
		}
		label$116:;
		label$115:;
		ERRREPORTPARAM( PROC$1, 0ll, (uint8*)0ull, ERR_NUM$1 );
		struct $7ASTNODE* vr$27 = ASTBUILDFAKECALL( PROC$1 );
		fb$result$1 = vr$27;
		goto label$92;
	}
	label$114:;
	label$113:;
	PROC$1 = OVLPROC$1;
	int64 vr$28 = SYMBCHECKACCESS( PROC$1 );
	if( vr$28 != 0ll ) goto label$118;
	{
		$9FB_ERRMSG TMP$94$2;
		uint8* vr$29 = SYMBGETFULLPROCNAME( PROC$1 );
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 4ll) == 0ll ) goto label$119;
		TMP$94$2 = 205ll;
		goto label$194;
		label$119:;
		TMP$94$2 = 202ll;
		label$194:;
		ERRREPORTEX( TMP$94$2, (uint8*)vr$29, 0ll, 1ll, (uint8*)0ull );
		struct $7ASTNODE* vr$32 = ASTBUILDFAKECALL( PROC$1 );
		fb$result$1 = vr$32;
		goto label$92;
	}
	label$118:;
	label$117:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$121;
	{
		if( (OPTIONS$1 & 64ll) != 0ll ) goto label$123;
		{
			if( ((int64)-(BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 16ll) & 2ll) == 0ll)) == 0ll ) goto label$125;
			{
				ERRREPORT( 214ll, -1ll, (uint8*)0ull );
				struct $7ASTNODE* vr$41 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$41;
				goto label$92;
			}
			label$125:;
			label$124:;
			struct $11FB_CALL_ARG* vr$43 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), ARG_LIST$1, -1ll );
			ARG$1 = vr$43;
			struct $7ASTNODE* vr$46 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 136ll) + 104ll), (struct $8FBSYMBOL*)0ull, 0ll );
			*(struct $7ASTNODE**)ARG$1 = vr$46;
			*($12FB_PARAMMODE*)((uint8*)ARG$1 + 8ll) = -1ll;
		}
		label$123:;
		label$122:;
		ARGS$1 = ARGS$1 + 1ll;
		struct $7ASTNODE* vr$52 = HGETVTABLELOOKUPIFNEEDED( PROC$1, *(struct $7ASTNODE**)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll), OPTIONS$1 );
		PROCEXPR$1 = vr$52;
	}
	goto label$120;
	label$121:;
	{
		if( (OPTIONS$1 & 64ll) == 0ll ) goto label$127;
		{
			ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll) = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll);
			ASTDELTREE( *(struct $7ASTNODE**)ARG$1 );
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), (void*)ARG$1 );
		}
		label$127:;
		label$126:;
		PROCEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$120:;
	struct $7ASTNODE* vr$59 = ASTNEWCALL( PROC$1, PROCEXPR$1 );
	PROCEXPR$1 = vr$59;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
	{
		I$1 = 0ll;
		int64 TMP$95$2;
		TMP$95$2 = ARGS$1 + -1ll;
		goto label$128;
		label$131:;
		{
			NXT$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll);
			struct $7ASTNODE* vr$66 = ASTNEWARG( PROCEXPR$1, *(struct $7ASTNODE**)ARG$1, 2147483648ll, *(int64*)((uint8*)ARG$1 + 8ll) );
			if( vr$66 != (struct $7ASTNODE*)0ull ) goto label$133;
			{
				ERRREPORT( 22ll, 0ll, (uint8*)0ull );
				ASTDELTREE( PROCEXPR$1 );
				struct $7ASTNODE* vr$67 = ASTBUILDFAKECALL( PROC$1 );
				fb$result$1 = vr$67;
				goto label$92;
			}
			label$133:;
			label$132:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 232ll), (void*)ARG$1 );
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
			ARG$1 = NXT$1;
		}
		label$129:;
		I$1 = I$1 + 1ll;
		label$128:;
		if( I$1 <= TMP$95$2 ) goto label$131;
		label$130:;
	}
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
	label$134:;
	if( ARGS$1 >= PARAMS$1 ) goto label$135;
	{
		ASTNEWARG( PROCEXPR$1, (struct $7ASTNODE*)0ull, 2147483648ll, -1ll );
		ARGS$1 = ARGS$1 + 1ll;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	goto label$134;
	label$135:;
	fb$result$1 = PROCEXPR$1;
	label$92:;
	return fb$result$1;
}
