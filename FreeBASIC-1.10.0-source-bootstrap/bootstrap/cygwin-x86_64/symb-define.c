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
typedef FBSTRING* (*tmp$28)( void );
struct $7SYMBDEF {
	uint8* NAME;
	uint8* VALUE;
	int64 FLAGS;
	tmp$28 PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBDEF ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int64 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 24 );
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
struct $9SYMBMACRO {
	uint8* NAME;
	$15FB_DEFINE_FLAGS FLAGS;
	tmp$29 PROCZ;
	tmp$30 PROCW;
	int64 NPARAMS;
	uint8* PARAMS[5];
};
__FB_STATIC_ASSERT( sizeof( struct $9SYMBMACRO ) == 80 );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
struct $7FBTOKEN;
struct $7FBTOKEN {
	int64 ID;
	int64 CLASS;
	int64 DTYPE;
	union {
		uint8 TEXT[1025];
		uint16 TEXTW[1025];
	};
	int64 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int64 PRDPOS;
		int64 HASESC;
	};
	int64 SUFFIXCHAR;
	int64 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 2128 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int64 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint64 CURRCHAR;
	uint64 LAHDCHAR1;
	uint64 LAHDCHAR2;
	int64 LINENUM;
	int64 LASTTK_ID;
	int64 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int64 IS_FB_EVAL;
	int64 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint16* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int64 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint16* BUFFPTRW;
			uint16 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 25104 );
typedef int64 $7FB_LANG;
typedef int64 $10FB_BACKEND;
typedef int64 $12FB_ASMSYNTAX;
typedef int64 $9FB_ERRMSG;
struct $21SYMB_DEF_UNIQUEID_ELM;
struct $21SYMB_DEF_UNIQUEID_ELM {
	uint8* NAME;
	struct $21SYMB_DEF_UNIQUEID_ELM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $21SYMB_DEF_UNIQUEID_ELM ) == 16 );
struct $23SYMB_DEF_UNIQUEID_STACK {
	struct $21SYMB_DEF_UNIQUEID_ELM* TOP;
};
__FB_STATIC_ASSERT( sizeof( struct $23SYMB_DEF_UNIQUEID_STACK ) == 8 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 240 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 240 );
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
#define fb_D2UL( value ) ((uint64)__builtin_nearbyint( value ))
void fb_ArrayStrErase( struct $7FBARRAYIvE* );
void* malloc( uint64 );
void* calloc( uint64, uint64 );
void free( void* );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint16* fb_WstrAssign( uint16*, int64, uint16* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
uint16* fb_WstrAlloc( int64 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_WstrToStr( uint16* );
uint16* fb_StrToWstr( uint8* );
FBSTRING* fb_StrMid( FBSTRING*, int64, int64 );
uint16* fb_WstrMid( uint16*, int64, int64 );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint16* );
FBSTRING* fb_TRIM( FBSTRING* );
boolean fb_VALBOOL( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
uint64 fb_VALULNG( FBSTRING* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
FBSTRING* fb_GetEnviron( FBSTRING* );
static void fb_ctor__symbzdefine( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int64, int64 );
void HASHEND( struct $5THASH* );
uint64 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint64 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint64 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
int64 FBGETOPTION( int64 );
int64 FBIS64BIT( void );
int64 FBGETCPUFAMILY( void );
int64 FBISHOSTBIGENDIAN( void );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTISCONSTANT( struct $7ASTNODE* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
uint16* ASTCONSTFLUSHTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int64, int64, tmp$28, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int64, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
uint8* SYMBGETCONSTSTRASSTR( struct $8FBSYMBOL* );
uint16* SYMBGETCONSTSTRASWSTR( struct $8FBSYMBOL* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
void SYMBMANGLERESETABBREV( void );
typedef int64 $12FB_MANGLEOPT;
void SYMBMANGLETYPE( FBSTRING*, int64, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
FBSTRING* SYMBTYPETOSTR( int64, struct $8FBSYMBOL*, int64, int64 );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
void HUCASE( uint8*, uint8* );
void ZSTRASSIGN( uint8**, uint8* );
void ZSTRASSIGNW( uint8**, uint16* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
uint16* HREPLACEW( uint16*, uint16*, uint16* );
uint8* HREPLACECHAR( uint8*, int64, int64 );
int64 HSTR2LONG( FBSTRING*, int32* );
int64 HSTR2TOK( uint8*, struct $7FBARRAYI8FBSTRINGE* );
int64 HSTR2ARGS( uint8*, struct $7FBARRAYI8FBSTRINGE* );
FBSTRING* FBGETINPUTFILEPARENTDIR( void );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint16* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint16* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
void LEXINIT( int64, int64 );
void LEXPUSHCTX( void );
void LEXPOPCTX( void );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
void CTYPEOF( int64*, struct $8FBSYMBOL**, int64*, int64*, struct $8FBSYMBOL** );
struct $8FBSYMBOL* CIDENTIFIERORUDTMEMBER( struct $8FBSYMBOL**, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CEXPRESSION( void );
void CUDTTYPEMEMBER( int64*, struct $8FBSYMBOL**, int64*, int64*, struct $8FBSYMBOL** );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
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
static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB*, int64 );
static uint16* HMACRO_GETARGW( struct $11LEXPP_ARGTB*, int64 );
static FBSTRING* HMACRO_EVALZ( uint8*, int64* );
static uint16* HMACRO_EVALW( uint16*, int64* );
static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFJOINW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFEVALZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFEVALW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFIIFZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFIIFW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFQUERYSYMZ_CB( struct $11LEXPP_ARGTB*, int64* );
static void HRESETDEFHASH( void );
static void HDELDEFINEPARAMS( struct $8FBSYMBOL* );
static void HDELDEFINETOKENS( struct $8FBSYMBOL* );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
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
typedef int64 $13FB_COMPTARGET;
typedef int64 $10FB_CPUTYPE;
typedef int64 $10FB_FPUTYPE;
typedef int64 $9FB_FPMODE;
typedef int64 $17FB_VECTORIZELEVEL;
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int64 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 426784 );
extern struct $7LEX_CTX LEX$;
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
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int64 LEVEL;
	int64 SKIPPING;
	int64 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 408 );
extern struct $6PP_CTX PP$;
static struct $7SYMBDEF DEFTB$[37] = { { (uint8*)"__FB_VERSION__", (uint8*)"1.10.0", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_BUILD_DATE__", (uint8*)"10-18-2023", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_BUILD_DATE_ISO__", (uint8*)"2023-10-18", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_VER_MAJOR__", (uint8*)"1", 0ll, (tmp$28)0ull }, { (uint8*)"__FB_VER_MINOR__", (uint8*)"10", 0ll, (tmp$28)0ull }, { (uint8*)"__FB_VER_PATCH__", (uint8*)"0", 0ll, (tmp$28)0ull }, { (uint8*)"__FB_SIGNATURE__", (uint8*)"FreeBASIC 1.10.0", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_BUILD_SHA1__", (uint8*)"", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_MT__", (uint8*)0ull, 0ll, (tmp$28)&HDEFMULTITHREAD_CB }, { (uint8*)"__FILE__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFILE_CB }, { (uint8*)"__FILE_NQ__", (uint8*)0ull, 0ll, (tmp$28)&HDEFFILE_CB }, { (uint8*)"__FUNCTION__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFUNCTION_CB }, { (uint8*)"__FUNCTION_NQ__", (uint8*)0ull, 0ll, (tmp$28)&HDEFFUNCTION_CB }, { (uint8*)"__LINE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFLINE_CB }, { (uint8*)"__DATE__", (uint8*)0ull, 1ll, (tmp$28)&HDEFDATE_CB }, { (uint8*)"__DATE_ISO__", (uint8*)0ull, 1ll, (tmp$28)&HDEFDATEISO_CB }, { (uint8*)"__TIME__", (uint8*)0ull, 1ll, (tmp$28)&HDEFTIME_CB }, { (uint8*)"__PATH__", (uint8*)0ull, 1ll, (tmp$28)&HDEFPATH_CB }, { (uint8*)"__FB_OPTION_BYVAL__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTBYVAL_CB }, { (uint8*)"__FB_OPTION_DYNAMIC__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTDYNAMIC_CB }, { (uint8*)"__FB_OPTION_ESCAPE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTESCAPE_CB }, { (uint8*)"__FB_OPTION_EXPLICIT__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTEXPLICIT_CB }, { (uint8*)"__FB_OPTION_PRIVATE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTPRIVATE_CB }, { (uint8*)"__FB_OPTION_GOSUB__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTGOSUB_CB }, { (uint8*)"__FB_OUT_EXE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTEXE_CB }, { (uint8*)"__FB_OUT_LIB__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTLIB_CB }, { (uint8*)"__FB_OUT_DLL__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTDLL_CB }, { (uint8*)"__FB_OUT_OBJ__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTOBJ_CB }, { (uint8*)"__FB_DEBUG__", (uint8*)0ull, 0ll, (tmp$28)&HDEFDEBUG_CB }, { (uint8*)"__FB_ERR__", (uint8*)0ull, 0ll, (tmp$28)&HDEFERR_CB }, { (uint8*)"__FB_LANG__", (uint8*)0ull, 1ll, (tmp$28)&HDEFLANG_CB }, { (uint8*)"__FB_BACKEND__", (uint8*)0ull, 1ll, (tmp$28)&HDEFBACKEND_CB }, { (uint8*)"__FB_FPU__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFPU_CB }, { (uint8*)"__FB_FPMODE__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFPMODE_CB }, { (uint8*)"__FB_GCC__", (uint8*)0ull, 0ll, (tmp$28)&HDEFGCC_CB }, { (uint8*)"__FB_GUI__", (uint8*)0ull, 0ll, (tmp$28)&HDEFGUI_CB }, { (uint8*)"__FB_OPTIMIZE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTIMIZE_CB } };
static struct $9SYMBMACRO MACROTB$[13] = { { (uint8*)"__FB_UNIQUEID_PUSH__", 0ll, (tmp$29)&HDEFUNIQUEIDPUSH_CB, (tmp$30)0ull, 1ll, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID__", 0ll, (tmp$29)&HDEFUNIQUEID_CB, (tmp$30)0ull, 1ll, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID_POP__", 0ll, (tmp$29)&HDEFUNIQUEIDPOP_CB, (tmp$30)0ull, 1ll, { (uint8*)"ID" } }, { (uint8*)"__FB_ARG_COUNT__", 4ll, (tmp$29)&HDEFARGCOUNT_CB, (tmp$30)0ull, 1ll, { (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_EXTRACT__", 4ll, (tmp$29)&HDEFARGEXTRACT_CB, (tmp$30)0ull, 2ll, { (uint8*)"ARGNUM", (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_LEFTOF__", 4ll, (tmp$29)&HDEFARGLEFT_CB, (tmp$30)0ull, 3ll, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_ARG_RIGHTOF__", 4ll, (tmp$29)&HDEFARGRIGHT_CB, (tmp$30)0ull, 3ll, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_JOIN__", 0ll, (tmp$29)&HDEFJOINZ_CB, (tmp$30)&HDEFJOINW_CB, 2ll, { (uint8*)"L", (uint8*)"R" } }, { (uint8*)"__FB_QUOTE__", 0ll, (tmp$29)&HDEFQUOTEZ_CB, (tmp$30)&HDEFQUOTEW_CB, 1ll, { (uint8*)"ARG" } }, { (uint8*)"__FB_UNQUOTE__", 0ll, (tmp$29)&HDEFUNQUOTEZ_CB, (tmp$30)&HDEFUNQUOTEW_CB, 1ll, { (uint8*)"ARG" } }, { (uint8*)"__FB_EVAL__", 0ll, (tmp$29)&HDEFEVALZ_CB, (tmp$30)&HDEFEVALW_CB, 1ll, { (uint8*)"ARG" } }, { (uint8*)"__FB_IIF__", 0ll, (tmp$29)&HDEFIIFZ_CB, (tmp$30)&HDEFIIFW_CB, 3ll, { (uint8*)"CMPEXPR", (uint8*)"TEXPR", (uint8*)"FEXPR" } }, { (uint8*)"__FB_QUERY_SYMBOL__", 0ll, (tmp$29)&HDEFQUERYSYMZ_CB, (tmp$30)0ull, 2ll, { (uint8*)"WHAT", (uint8*)"SYM" } } };

void SYMBDEFINEINIT( int64 ISMAIN$1 )
{
	FBSTRING TMP$225$1;
	FBSTRING TMP$226$1;
	FBSTRING TMP$227$1;
	label$428:;
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 24ll );
	uint8* DEF$1;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll), 500ll, 24ll, 6ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll), 1000ll, 32ll, 6ll );
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), 16ll, -1ll );
	{
		int64 I$2;
		I$2 = 0ll;
		label$433:;
		{
			fb_StrAssign( (void*)&VALUE$1, -1ll, *(void**)(((int64)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (5ll & 63ll))) + 8ll), 0ll, 0 );
			if( *(uint8**)(((int64)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (5ll & 63ll))) + 8ll) == (uint8*)0ull ) goto label$435;
			{
				if( (*(int64*)(((int64)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (5ll & 63ll))) + 16ll) & 1ll) == 0ll ) goto label$437;
				{
					FBSTRING TMP$221$5;
					FBSTRING TMP$222$5;
					__builtin_memset( &TMP$221$5, 0, 24ll );
					FBSTRING* vr$12 = fb_StrConcat( &TMP$221$5, (void*)"\x22", 2ll, (void*)&VALUE$1, -1ll );
					__builtin_memset( &TMP$222$5, 0, 24ll );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$222$5, (void*)vr$12, -1ll, (void*)"\x22", 2ll );
					fb_StrAssign( (void*)&VALUE$1, -1ll, (void*)vr$15, -1ll, 0 );
				}
				label$437:;
				label$436:;
			}
			label$435:;
			label$434:;
			int64 vr$20 = fb_StrLen( (void*)&VALUE$1, -1ll );
			SYMBADDDEFINE( *(uint8**)((int64)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (5ll & 63ll))), (uint8*)*(uint8**)&VALUE$1, vr$20, 0ll, *(tmp$28*)(((int64)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (5ll & 63ll))) + 24ll), *($15FB_DEFINE_FLAGS*)(((int64)(struct $7SYMBDEF*)DEFTB$ + (I$2 << (5ll & 63ll))) + 16ll) );
		}
		label$431:;
		I$2 = I$2 + 1ll;
		label$430:;
		if( I$2 <= 36ll ) goto label$433;
		label$432:;
	}
	__builtin_memset( &TMP$227$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)&ENV$ + 536ll) );
	FBSTRING* vr$25 = fb_StrUcase2( (FBSTRING*)vr$24, 0 );
	__builtin_memset( &TMP$225$1, 0, 24ll );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$225$1, (void*)"__FB_", 6ll, (void*)vr$25, -1ll );
	__builtin_memset( &TMP$226$1, 0, 24ll );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$226$1, (void*)vr$28, -1ll, (void*)"__", 3ll );
	fb_StrAssign( (void*)&TMP$227$1, -1ll, (void*)vr$31, -1ll, 0 );
	SYMBADDDEFINE( (uint8*)*(uint8**)&TMP$227$1, (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$227$1 );
	if( *(int64*)((uint8*)&ENV$ + 216ll) != 11ll ) goto label$439;
	{
		SYMBADDDEFINE( (uint8*)"__FB_LINUX__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$439:;
	label$438:;
	if( (*(int64*)((uint8*)&ENV$ + 568ll) & 1ll) == 0ll ) goto label$441;
	{
		SYMBADDDEFINE( (uint8*)"__FB_UNIX__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	goto label$440;
	label$441:;
	{
		SYMBADDDEFINE( (uint8*)"__FB_PCOS__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$440:;
	int64 vr$35 = FBIS64BIT(  );
	if( vr$35 == 0ll ) goto label$443;
	{
		SYMBADDDEFINE( (uint8*)"__FB_64BIT__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$443:;
	label$442:;
	{
		int64 TMP$232$2;
		int64 vr$36 = FBGETCPUFAMILY(  );
		TMP$232$2 = vr$36;
		if( TMP$232$2 == 2ll ) goto label$446;
		label$447:;
		if( TMP$232$2 != 3ll ) goto label$445;
		label$446:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_ARM__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
		}
		goto label$444;
		label$445:;
		if( TMP$232$2 == 0ll ) goto label$449;
		label$450:;
		if( TMP$232$2 != 1ll ) goto label$448;
		label$449:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_X86__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
			SYMBADDDEFINE( (uint8*)"__FB_ASM__", (uint8*)0ull, 0ll, 0ll, (tmp$28)&HDEFASM_CB, 1ll );
		}
		goto label$444;
		label$448:;
		if( TMP$232$2 == 4ll ) goto label$452;
		label$453:;
		if( TMP$232$2 == 5ll ) goto label$452;
		label$454:;
		if( TMP$232$2 != 6ll ) goto label$451;
		label$452:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_PPC__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
		}
		label$451:;
		label$444:;
	}
	int64 vr$37 = FBISHOSTBIGENDIAN(  );
	if( vr$37 == 0ll ) goto label$456;
	{
		SYMBADDDEFINE( (uint8*)"__FB_BIGENDIAN__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$456:;
	label$455:;
	if( ISMAIN$1 == 0ll ) goto label$458;
	{
		SYMBADDDEFINE( (uint8*)"__FB_MAIN__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$458:;
	label$457:;
	if( *(int64*)((uint8*)&ENV$ + 232ll) < 1ll ) goto label$460;
	{
		SYMBADDDEFINE( (uint8*)"__FB_SSE__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$460:;
	label$459:;
	FBSTRING* vr$38 = fb_LongintToStr( *(int64*)((uint8*)&ENV$ + 248ll) );
	fb_StrAssign( (void*)&VALUE$1, -1ll, (void*)vr$38, -1ll, 0 );
	int64 vr$41 = fb_StrLen( (void*)&VALUE$1, -1ll );
	SYMBADDDEFINE( (uint8*)"__FB_VECTORIZE__", (uint8*)*(uint8**)&VALUE$1, vr$41, 0ll, (tmp$28)0ull, 0ll );
	*(int64*)((uint8*)&SYMB$ + 197496ll) = 0ll;
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), 32ll, 0ll );
	{
		int64 I$2;
		I$2 = 0ll;
		label$464:;
		{
			struct $11FB_DEFPARAM* FIRSTPARAM$3;
			struct $11FB_DEFPARAM* vr$44 = SYMBADDDEFINEPARAM( (struct $11FB_DEFPARAM*)0ull, *(uint8**)(((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + 40ll) );
			FIRSTPARAM$3 = vr$44;
			struct $11FB_DEFPARAM* LASTPARAM$3;
			LASTPARAM$3 = FIRSTPARAM$3;
			{
				int64 J$4;
				J$4 = 1ll;
				int64 TMP$241$4;
				TMP$241$4 = *(int64*)(((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + 32ll) + -1ll;
				goto label$465;
				label$468:;
				{
					struct $11FB_DEFPARAM* vr$51 = SYMBADDDEFINEPARAM( LASTPARAM$3, *(uint8**)((uint8*)((uint8*)((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + (J$4 << (3ll & 63ll))) + 40ll) );
					LASTPARAM$3 = vr$51;
				}
				label$466:;
				J$4 = J$4 + 1ll;
				label$465:;
				if( J$4 <= TMP$241$4 ) goto label$468;
				label$467:;
			}
			struct $8FBSYMBOL* SYM$3;
			struct $8FBSYMBOL* vr$57 = SYMBADDDEFINEMACRO( *(uint8**)((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)), (struct $9FB_DEFTOK*)0ull, *(int64*)(((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + 32ll), FIRSTPARAM$3, *(int64*)(((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + 8ll) | 8ll );
			SYM$3 = vr$57;
			*(tmp$29*)((uint8*)SYM$3 + 136ll) = *(tmp$29*)(((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + 16ll);
			*(tmp$30*)((uint8*)SYM$3 + 144ll) = *(tmp$30*)(((int64)(struct $9SYMBMACRO*)MACROTB$ + (I$2 * 80ll)) + 24ll);
		}
		label$462:;
		I$2 = I$2 + 1ll;
		label$461:;
		if( I$2 <= 12ll ) goto label$464;
		label$463:;
	}
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	label$429:;
}

void SYMBDEFINEEND( void )
{
	label$469:;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll) );
	*(int64*)((uint8*)&SYMB$ + 197496ll) = 0ll;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll) );
	label$470:;
}

struct $8FBSYMBOL* SYMBADDDEFINE( uint8* SYMBOL$1, uint8* TEXT$1, int64 LGT$1, int64 ISARGLESS$1, tmp$28 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$471:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll), 5ll, SYMBOL$1, (uint8*)0ull, 4ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$474;
	{
		goto label$472;
	}
	label$474:;
	label$473:;
	void* vr$5 = XALLOCATE( (int32)(LGT$1 + 1ll) );
	*(uint8**)((uint8*)SYM$1 + 112ll) = (uint8*)vr$5;
	fb_StrAssign( *(void**)((uint8*)SYM$1 + 112ll), 0ll, (void*)TEXT$1, 0ll, 0 );
	*(int64*)((uint8*)SYM$1 + 80ll) = LGT$1;
	*(int64*)((uint8*)SYM$1 + 96ll) = 0ll;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 104ll) = (struct $11FB_DEFPARAM*)0ull;
	*(int64*)((uint8*)SYM$1 + 120ll) = ISARGLESS$1;
	*(tmp$28*)((uint8*)SYM$1 + 136ll) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 128ll) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$472:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEW( uint8* SYMBOL$1, uint16* TEXT$1, int64 LGT$1, int64 ISARGLESS$1, tmp$28 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$475:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll), 5ll, (uint8*)SYMBOL$1, (uint8*)0ull, 7ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$478;
	{
		goto label$476;
	}
	label$478:;
	label$477:;
	void* vr$6 = XALLOCATE( (int32)((LGT$1 << (1ll & 63ll)) + 2ll) );
	*(uint16**)((uint8*)SYM$1 + 112ll) = (uint16*)vr$6;
	fb_WstrAssign( *(uint16**)((uint8*)SYM$1 + 112ll), 0ll, (uint16*)TEXT$1 );
	*(int64*)((uint8*)SYM$1 + 80ll) = LGT$1;
	*(int64*)((uint8*)SYM$1 + 96ll) = 0ll;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 104ll) = (struct $11FB_DEFPARAM*)0ull;
	*(int64*)((uint8*)SYM$1 + 120ll) = ISARGLESS$1;
	*(tmp$28*)((uint8*)SYM$1 + 136ll) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 128ll) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$476:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8* SYMBOL$1, struct $9FB_DEFTOK* TOKHEAD$1, int64 PARAMS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$479:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll), 5ll, SYMBOL$1, (uint8*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$482;
	{
		goto label$480;
	}
	label$482:;
	label$481:;
	*(struct $9FB_DEFTOK**)((uint8*)SYM$1 + 112ll) = TOKHEAD$1;
	*(int64*)((uint8*)SYM$1 + 96ll) = PARAMS$1;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 104ll) = PARAMHEAD$1;
	*(int64*)((uint8*)SYM$1 + 120ll) = 0ll;
	*(tmp$29*)((uint8*)SYM$1 + 136ll) = (tmp$29)0ull;
	*(tmp$30*)((uint8*)SYM$1 + 144ll) = (tmp$30)0ull;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 128ll) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$480:;
	return fb$result$1;
}

struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM* LASTPARAM$1, uint8* ID$1 )
{
	struct $11FB_DEFPARAM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$489:;
	static struct $11FB_DEFPARAM* PARAM$1;
	static uint64 INDEX$1;
	fb$result$1 = (struct $11FB_DEFPARAM*)0ull;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll) );
	PARAM$1 = (struct $11FB_DEFPARAM*)vr$2;
	if( LASTPARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$492;
	{
		*(struct $11FB_DEFPARAM**)((uint8*)LASTPARAM$1 + 16ll) = PARAM$1;
	}
	goto label$491;
	label$492:;
	{
		if( *(int64*)((uint8*)&SYMB$ + 197496ll) <= 0ll ) goto label$494;
		{
			HRESETDEFHASH(  );
		}
		label$494:;
		label$493:;
	}
	label$491:;
	int64 vr$4 = fb_StrLen( (void*)ID$1, 0ll );
	void* vr$7 = XALLOCATE( (int32)(vr$4 + 1ll) );
	*(uint8**)PARAM$1 = (uint8*)vr$7;
	HUCASE( ID$1, *(uint8**)PARAM$1 );
	uint64 vr$11 = HASHHASH( (uint8*)*(uint8**)PARAM$1 );
	INDEX$1 = vr$11;
	void* vr$14 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), (uint8*)*(uint8**)PARAM$1, INDEX$1 );
	if( vr$14 == (void*)0ull ) goto label$496;
	{
		if( *(uint8**)PARAM$1 == (uint8*)0ull ) goto label$498;
		{
			free( *(void**)PARAM$1 );
		}
		label$498:;
		label$497:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll), (void*)PARAM$1 );
		fb$result$1 = (struct $11FB_DEFPARAM*)0ull;
		goto label$490;
	}
	label$496:;
	label$495:;
	struct $8HASHITEM* vr$20 = HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), (uint8*)*(uint8**)PARAM$1, (void*)PARAM$1, INDEX$1 );
	*(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (*(int64*)((uint8*)&SYMB$ + 197496ll) << (4ll & 63ll))) + 184ll) = vr$20;
	*(uint64*)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (*(int64*)((uint8*)&SYMB$ + 197496ll) << (4ll & 63ll))) + 192ll) = INDEX$1;
	*(int64*)((uint8*)PARAM$1 + 8ll) = *(int64*)((uint8*)&SYMB$ + 197496ll);
	*(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll) = (struct $11FB_DEFPARAM*)0ull;
	*(int64*)((uint8*)&SYMB$ + 197496ll) = *(int64*)((uint8*)&SYMB$ + 197496ll) + 1ll;
	fb$result$1 = PARAM$1;
	label$490:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK* LASTTOK$1, $14FB_DEFTOK_TYPE DTYPE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$499:;
	static struct $9FB_DEFTOK* T$1;
	fb$result$1 = (struct $9FB_DEFTOK*)0ull;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll) );
	T$1 = (struct $9FB_DEFTOK*)vr$2;
	if( LASTTOK$1 == (struct $9FB_DEFTOK*)0ull ) goto label$502;
	{
		*(struct $9FB_DEFTOK**)((uint8*)LASTTOK$1 + 24ll) = T$1;
	}
	label$502:;
	label$501:;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 16ll) = LASTTOK$1;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 24ll) = (struct $9FB_DEFTOK*)0ull;
	*($14FB_DEFTOK_TYPE*)T$1 = DTYPE$1;
	{
		uint64 TMP$243$2;
		TMP$243$2 = (uint64)DTYPE$1;
		goto label$504;
		label$505:;
		{
			*(uint8**)((uint8*)T$1 + 8ll) = (uint8*)0ull;
		}
		goto label$503;
		label$506:;
		{
			*(uint16**)((uint8*)T$1 + 8ll) = (uint16*)0ull;
		}
		goto label$503;
		label$504:;
		static const void* tmp$244[2ll] = {
			&&label$505,
			&&label$506,
		};
		if( (TMP$243$2 - 2ull) > 1ull ) goto label$503;
		goto *tmp$244[TMP$243$2 - 2ull];
		label$503:;
	}
	fb$result$1 = T$1;
	label$500:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* TOK$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$507:;
	if( *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 16ll) == (struct $9FB_DEFTOK*)0ull ) goto label$510;
	{
		*(struct $9FB_DEFTOK**)((uint8*)*(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 16ll) + 24ll) = (struct $9FB_DEFTOK*)0ull;
		fb$result$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 16ll);
	}
	goto label$509;
	label$510:;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0ull;
	}
	label$509:;
	{
		$14FB_DEFTOK_TYPE TMP$245$2;
		TMP$245$2 = *($14FB_DEFTOK_TYPE*)TOK$1;
		if( TMP$245$2 != 2ll ) goto label$512;
		label$513:;
		{
			if( *(uint8**)((uint8*)TOK$1 + 8ll) == (uint8*)0ull ) goto label$515;
			{
				free( *(void**)((uint8*)TOK$1 + 8ll) );
			}
			label$515:;
			label$514:;
		}
		goto label$511;
		label$512:;
		if( TMP$245$2 != 3ll ) goto label$516;
		label$517:;
		{
			if( *(uint16**)((uint8*)TOK$1 + 8ll) == (uint16*)0ull ) goto label$519;
			{
				free( *(void**)((uint8*)TOK$1 + 8ll) );
			}
			label$519:;
			label$518:;
		}
		label$516:;
		label$511:;
	}
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll), (void*)TOK$1 );
	label$508:;
	return fb$result$1;
}

int64 SYMBDELDEFINE( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$530:;
	fb$result$1 = 0ll;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$533;
	{
		goto label$531;
	}
	label$533:;
	label$532:;
	if( *(int64*)((uint8*)S$1 + 96ll) != 0ll ) goto label$535;
	{
		if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$537;
		{
			if( *(uint8**)((uint8*)S$1 + 112ll) == (uint8*)0ull ) goto label$539;
			{
				free( *(void**)((uint8*)S$1 + 112ll) );
			}
			label$539:;
			label$538:;
		}
		goto label$536;
		label$537:;
		{
			if( *(uint16**)((uint8*)S$1 + 112ll) == (uint16*)0ull ) goto label$541;
			{
				free( *(void**)((uint8*)S$1 + 112ll) );
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
	fb$result$1 = -1ll;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static FBSTRING* HDEFFILE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$10:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)((uint8*)&ENV$ + 608ll), 261ll, 0 );
	label$11:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFPATH_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$12:;
	FBSTRING* vr$1 = FBGETINPUTFILEPARENTDIR(  );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$13:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFUNCTION_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$14:;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 24ll) & 4096ll) == 0ll ) goto label$17;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"__FB_MAINPROC__", 16ll, 0 );
	}
	goto label$16;
	label$17:;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 24ll) & 8192ll) == 0ll ) goto label$18;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"__FB_MODLEVELPROC__", 20ll, 0 );
	}
	goto label$16;
	label$18:;
	{
		uint8* vr$7 = SYMBGETFULLPROCNAME( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) );
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$7, 0ll, 0 );
	}
	label$16:;
	label$15:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static FBSTRING* HDEFLINE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$19:;
	FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$20:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static double UNIXTIMETODATESERIAL( int64 DAT$1 )
{
	double fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$21:;
	fb$result$1 = ((double)DAT$1 / 0x1.518p+16) + 0x1.8F84p+14;
	goto label$22;
	label$22:;
	return fb$result$1;
}

static boolean HCHECKSOURCEDATEEPOCH( FBSTRING* S$1 )
{
	boolean fb$result$1;
	__builtin_memset( &fb$result$1, 0, 1ll );
	label$23:;
	FBSTRING TMP$1;
	__builtin_memset( &TMP$1, 0, 24ll );
	double VALUE$1;
	__builtin_memset( &VALUE$1, 0, 8ll );
	FBSTRING* vr$3 = fb_TRIM( (FBSTRING*)S$1 );
	fb_StrAssign( (void*)&TMP$1, -1ll, (void*)vr$3, -1ll, 0 );
	int64 vr$6 = fb_StrLen( (void*)&TMP$1, -1ll );
	if( vr$6 != 0ll ) goto label$26;
	{
		fb$result$1 = (boolean)0ll;
		fb_StrDelete( (FBSTRING*)&TMP$1 );
		goto label$24;
	}
	label$26:;
	label$25:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$95$2;
		int64 vr$9 = fb_StrLen( (void*)&TMP$1, -1ll );
		TMP$95$2 = vr$9 + -1ll;
		goto label$27;
		label$30:;
		{
			if( ((int64)-((int64)*(uint8*)((uint8*)*(uint8**)S$1 + I$2) < 48ll) | (int64)-((int64)*(uint8*)((uint8*)*(uint8**)S$1 + I$2) > 57ll)) == 0ll ) goto label$32;
			{
				fb$result$1 = (boolean)0ll;
				fb_StrDelete( (FBSTRING*)&TMP$1 );
				goto label$24;
			}
			label$32:;
			label$31:;
		}
		label$28:;
		I$2 = I$2 + 1ll;
		label$27:;
		if( I$2 <= TMP$95$2 ) goto label$30;
		label$29:;
	}
	uint64 vr$22 = fb_VALULNG( (FBSTRING*)S$1 );
	VALUE$1 = (double)vr$22;
	if( fb_D2UL( VALUE$1 ) <= 253402300799ull ) goto label$34;
	{
		fb$result$1 = (boolean)0ll;
		fb_StrDelete( (FBSTRING*)&TMP$1 );
		goto label$24;
	}
	label$34:;
	label$33:;
	fb$result$1 = (boolean)1ll;
	fb_StrDelete( (FBSTRING*)&TMP$1 );
	goto label$24;
	fb_StrDelete( (FBSTRING*)&TMP$1 );
	label$24:;
	return fb$result$1;
}

static double HGETCOMPILETIME( void )
{
	double fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$35:;
	static int64 USAGE$1 = 0ll;
	static double SOURCE_DATE_EPOCH$1 = 0x0p+0;
	if( USAGE$1 != 0ll ) goto label$38;
	{
		FBSTRING RET$2;
		__builtin_memset( &RET$2, 0, 24ll );
		USAGE$1 = 1ll;
		FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"SOURCE_DATE_EPOCH", 17ll );
		FBSTRING* vr$3 = fb_GetEnviron( (FBSTRING*)vr$2 );
		fb_StrAssign( (void*)&RET$2, -1ll, (void*)vr$3, -1ll, 0 );
		int64 vr$6 = fb_StrLen( (void*)&RET$2, -1ll );
		if( vr$6 <= 0ll ) goto label$40;
		{
			boolean vr$8 = HCHECKSOURCEDATEEPOCH( &RET$2 );
			if( vr$8 == (boolean)0ll ) goto label$42;
			{
				uint64 vr$10 = fb_VALULNG( (FBSTRING*)&RET$2 );
				double vr$11 = UNIXTIMETODATESERIAL( (int64)vr$10 );
				SOURCE_DATE_EPOCH$1 = vr$11;
				USAGE$1 = 2ll;
			}
			goto label$41;
			label$42:;
			{
				ERRREPORTEX( 328ll, (uint8*)0ull, 0ll, 1ll, (uint8*)0ull );
			}
			label$41:;
		}
		label$40:;
		label$39:;
		fb_StrDelete( (FBSTRING*)&RET$2 );
	}
	label$38:;
	label$37:;
	if( USAGE$1 != 2ll ) goto label$44;
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
	FBSTRING TMP$98$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$45:;
	__builtin_memset( &TMP$98$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$98$1, -1ll, (void*)"mm-dd-yyyy", 11ll, 0 );
	double vr$4 = HGETCOMPILETIME(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$98$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$5, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$98$1 );
	label$46:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFDATEISO_CB( void )
{
	FBSTRING TMP$100$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$47:;
	__builtin_memset( &TMP$100$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$100$1, -1ll, (void*)"yyyy-mm-dd", 11ll, 0 );
	double vr$4 = HGETCOMPILETIME(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$100$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$5, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$100$1 );
	label$48:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFTIME_CB( void )
{
	FBSTRING TMP$102$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$49:;
	__builtin_memset( &TMP$102$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$102$1, -1ll, (void*)"hh:nn:ss", 9ll, 0 );
	double vr$4 = HGETCOMPILETIME(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$102$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$5, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$102$1 );
	label$50:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFMULTITHREAD_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$51:;
	FBSTRING* vr$1 = fb_LongintToStr( *(int64*)((uint8*)&ENV$ + 464ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$52:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFOPTBYVAL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$53:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1504ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$54:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTDYNAMIC_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$55:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1536ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$56:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTESCAPE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$57:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1528ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$58:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTEXPLICIT_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$59:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1512ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$60:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTPRIVATE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$61:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1520ll) == 0ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$62:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTGOSUB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$63:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1544ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$64:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFGUI_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$65:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 512ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$66:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTIMIZE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$67:;
	int64 vr$1 = FBGETOPTION( 8ll );
	FBSTRING* vr$2 = fb_LongintToStr( vr$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$68:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTEXE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$69:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 0ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$70:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTLIB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$71:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$72:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTDLL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$73:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 2ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$74:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTOBJ_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$75:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 3ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$76:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFDEBUG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$77:;
	FBSTRING* vr$1 = fb_LongintToStr( *(int64*)((uint8*)&ENV$ + 288ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$78:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFERR_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$79:;
	int64 RES$1;
	RES$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 312ll) == 0ll ) goto label$82;
	{
		RES$1 = 1ll;
	}
	label$82:;
	label$81:;
	if( *(int64*)((uint8*)&ENV$ + 320ll) == 0ll ) goto label$84;
	{
		RES$1 = RES$1 | 2ll;
	}
	label$84:;
	label$83:;
	if( *(int64*)((uint8*)&ENV$ + 328ll) == 0ll ) goto label$86;
	{
		RES$1 = RES$1 | 4ll;
	}
	label$86:;
	label$85:;
	if( *(int64*)((uint8*)&ENV$ + 344ll) == 0ll ) goto label$88;
	{
		RES$1 = RES$1 | 8ll;
	}
	label$88:;
	label$87:;
	if( *(int64*)((uint8*)&ENV$ + 352ll) == 0ll ) goto label$90;
	{
		RES$1 = RES$1 | 16ll;
	}
	label$90:;
	label$89:;
	if( *(int64*)((uint8*)&ENV$ + 304ll) == 0ll ) goto label$92;
	{
		RES$1 = RES$1 | 32ll;
	}
	label$92:;
	label$91:;
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$94;
	{
		RES$1 = RES$1 | 64ll;
	}
	label$94:;
	label$93:;
	if( *(int64*)((uint8*)&ENV$ + 288ll) == 0ll ) goto label$96;
	{
		RES$1 = RES$1 | 128ll;
	}
	label$96:;
	label$95:;
	if( *(int64*)((uint8*)&ENV$ + 336ll) == 0ll ) goto label$98;
	{
		RES$1 = RES$1 | 256ll;
	}
	label$98:;
	label$97:;
	if( *(int64*)((uint8*)&ENV$ + 360ll) == 0ll ) goto label$100;
	{
		RES$1 = RES$1 | 512ll;
	}
	label$100:;
	label$99:;
	FBSTRING* vr$10 = fb_LongintToStr( RES$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$10, -1ll, 0 );
	label$80:;
	FBSTRING* vr$13 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$13;
}

static FBSTRING* HDEFLANG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$101:;
	FBSTRING* vr$1 = FBGETLANGNAME( *($7FB_LANG*)((uint8*)&ENV$ + 272ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$102:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFBACKEND_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$103:;
	FBSTRING* vr$1 = FBGETBACKENDNAME( *($10FB_BACKEND*)((uint8*)&ENV$ + 208ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$104:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFPU_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$105:;
	{
		int64 TMP$103$2;
		int64 vr$1 = FBGETOPTION( 5ll );
		TMP$103$2 = vr$1;
		if( TMP$103$2 != 0ll ) goto label$108;
		label$109:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"x87", 4ll, 0 );
			goto label$106;
		}
		goto label$107;
		label$108:;
		if( TMP$103$2 != 1ll ) goto label$110;
		label$111:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"sse", 4ll, 0 );
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$113:;
	{
		int64 TMP$106$2;
		int64 vr$1 = FBGETOPTION( 6ll );
		TMP$106$2 = vr$1;
		if( TMP$106$2 != 0ll ) goto label$116;
		label$117:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"precise", 8ll, 0 );
			goto label$114;
		}
		goto label$115;
		label$116:;
		if( TMP$106$2 != 1ll ) goto label$118;
		label$119:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"fast", 5ll, 0 );
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$121:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$122:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFASM_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$123:;
	{
		$12FB_ASMSYNTAX TMP$109$2;
		TMP$109$2 = *($12FB_ASMSYNTAX*)((uint8*)&ENV$ + 264ll);
		if( TMP$109$2 != 0ll ) goto label$126;
		label$127:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"intel", 6ll, 0 );
		}
		goto label$125;
		label$126:;
		if( TMP$109$2 != 1ll ) goto label$128;
		label$129:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"att", 4ll, 0 );
		}
		label$128:;
		label$125:;
	}
	label$124:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB* ARGTB$1, int64 NUM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$130:;
	uint8* RES$1;
	RES$1 = (uint8*)0ull;
	if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$133;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint8*)0ull ) goto label$135;
		{
			fb$result$1 = (uint8*)0ull;
			goto label$131;
		}
		label$135:;
		label$134:;
		ZSTRASSIGN( &RES$1, DT$2 );
	}
	goto label$132;
	label$133:;
	{
		uint16* DT$2;
		DT$2 = *(uint16**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint16*)0ull ) goto label$137;
		{
			fb$result$1 = (uint8*)0ull;
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

static uint16* HMACRO_GETARGW( struct $11LEXPP_ARGTB* ARGTB$1, int64 NUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$138:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$141;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint8*)0ull ) goto label$143;
		{
			fb$result$1 = (uint16*)0ull;
			goto label$139;
		}
		label$143:;
		label$142:;
		DWSTRCONCATASSIGNA( &RES$1, (uint8*)DT$2 );
	}
	goto label$140;
	label$141:;
	{
		uint16* DT$2;
		DT$2 = *(uint16**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint16*)0ull ) goto label$145;
		{
			fb$result$1 = (uint16*)0ull;
			goto label$139;
		}
		label$145:;
		label$144:;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)DT$2 );
	}
	label$140:;
	fb$result$1 = *(uint16**)&RES$1;
	label$139:;
	return fb$result$1;
}

static FBSTRING* HMACRO_EVALZ( uint8* ARG$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$146:;
	struct $8DZSTRING RES$1;
	__builtin_memset( &RES$1, 0, 24ll );
	DZSTRASSIGN( &RES$1, (uint8*)0ull );
	if( *(int64*)((uint8*)&ENV$ + 1272ll) < 16ll ) goto label$149;
	{
		*ERRNUM$1 = 27ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, *(void**)&RES$1, 0ll, 0 );
		goto label$147;
	}
	label$149:;
	label$148:;
	if( ARG$1 == (uint8*)0ull ) goto label$151;
	{
		LEXPUSHCTX(  );
		LEXINIT( 0ll, -1ll );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) + 1ll;
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), (uint8*)ARG$1 );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll);
		int64 vr$13 = fb_StrLen( (void*)ARG$1, 0ll );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + vr$13;
		DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), (uint8*)"\x0A" );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll);
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + 1ll;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$23 = CEXPRESSION(  );
		EXPR$2 = vr$23;
		$9FB_ERRMSG ERRMSG$2;
		ERRMSG$2 = 0ll;
		if( EXPR$2 == (struct $7ASTNODE*)0ull ) goto label$153;
		{
			struct $7ASTNODE* vr$24 = ASTOPTIMIZETREE( EXPR$2 );
			EXPR$2 = vr$24;
			if( *(int64*)EXPR$2 != 16ll ) goto label$155;
			{
				FBSTRING TMP$113$4;
				__builtin_memset( &TMP$113$4, 0, 24ll );
				FBSTRING* vr$27 = ASTCONSTFLUSHTOSTR( EXPR$2 );
				fb_StrAssign( (void*)&TMP$113$4, -1ll, (void*)vr$27, -1ll, 0 );
				DZSTRASSIGN( &RES$1, (uint8*)*(uint8**)&TMP$113$4 );
				fb_StrDelete( (FBSTRING*)&TMP$113$4 );
				int64 vr$31 = LEXGETTOKEN( 0ll );
				if( vr$31 == 257ll ) goto label$157;
				{
					ERRMSG$2 = 17ll;
				}
				label$157:;
				label$156:;
			}
			goto label$154;
			label$155:;
			int64 vr$32 = ASTISCONSTANT( EXPR$2 );
			if( vr$32 == 0ll ) goto label$158;
			{
				uint8* vr$34 = SYMBGETCONSTSTRASSTR( *(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 24ll) );
				DZSTRASSIGN( &RES$1, (uint8*)vr$34 );
				int64 vr$36 = LEXGETTOKEN( 0ll );
				if( vr$36 == 257ll ) goto label$160;
				{
					ERRMSG$2 = 17ll;
				}
				label$160:;
				label$159:;
				ASTDELTREE( EXPR$2 );
			}
			goto label$154;
			label$158:;
			{
				ASTDELTREE( EXPR$2 );
				ERRMSG$2 = 11ll;
				DZSTRASSIGN( &RES$1, (uint8*)"\x00" );
			}
			label$154:;
		}
		goto label$152;
		label$153:;
		{
			ERRMSG$2 = 17ll;
		}
		label$152:;
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) + -1ll;
		LEXPOPCTX(  );
		if( ERRMSG$2 == 0ll ) goto label$162;
		{
			ERRREPORTEX( ERRMSG$2, (uint8*)ARG$1, 0ll, 1ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, -1ll, 0ll, 0ll );
		}
		label$162:;
		label$161:;
	}
	label$151:;
	label$150:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)&RES$1, 0ll, 0 );
	label$147:;
	FBSTRING* vr$43 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$43;
}

static uint16* HMACRO_EVALW( uint16* ARG$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$163:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( *(int64*)((uint8*)&ENV$ + 1272ll) < 16ll ) goto label$166;
	{
		*ERRNUM$1 = 27ll;
		fb$result$1 = *(uint16**)&RES$1;
		goto label$164;
	}
	label$166:;
	label$165:;
	if( ARG$1 == (uint16*)0ull ) goto label$168;
	{
		uint16* TMP$115$2;
		LEXPUSHCTX(  );
		LEXINIT( 0ll, -1ll );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) + 1ll;
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), (uint16*)ARG$1 );
		*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = *(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll);
		int64 vr$10 = fb_WstrLen( (uint16*)ARG$1 );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + vr$10;
		uint16* vr$13 = fb_StrToWstr( (uint8*)"\x0A" );
		TMP$115$2 = vr$13;
		DWSTRCONCATASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), (uint16*)TMP$115$2 );
		fb_WstrDelete( (uint16*)TMP$115$2 );
		*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = *(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll);
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + 1ll;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$21 = CEXPRESSION(  );
		EXPR$2 = vr$21;
		$9FB_ERRMSG ERRMSG$2;
		ERRMSG$2 = 0ll;
		if( EXPR$2 == (struct $7ASTNODE*)0ull ) goto label$170;
		{
			struct $7ASTNODE* vr$22 = ASTOPTIMIZETREE( EXPR$2 );
			EXPR$2 = vr$22;
			if( *(int64*)EXPR$2 != 16ll ) goto label$172;
			{
				uint16* vr$24 = ASTCONSTFLUSHTOWSTR( EXPR$2 );
				DWSTRASSIGN( &RES$1, (uint16*)vr$24 );
				int64 vr$25 = LEXGETTOKEN( 0ll );
				if( vr$25 == 257ll ) goto label$174;
				{
					ERRMSG$2 = 17ll;
				}
				label$174:;
				label$173:;
			}
			goto label$171;
			label$172:;
			int64 vr$26 = ASTISCONSTANT( EXPR$2 );
			if( vr$26 == 0ll ) goto label$175;
			{
				uint16* vr$28 = SYMBGETCONSTSTRASWSTR( *(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 24ll) );
				DWSTRASSIGN( &RES$1, (uint16*)vr$28 );
				int64 vr$29 = LEXGETTOKEN( 0ll );
				if( vr$29 == 257ll ) goto label$177;
				{
					ERRMSG$2 = 17ll;
				}
				label$177:;
				label$176:;
				ASTDELTREE( EXPR$2 );
			}
			goto label$171;
			label$175:;
			{
				ASTDELTREE( EXPR$2 );
				ERRMSG$2 = 11ll;
				DWSTRASSIGN( &RES$1, (uint16*)L"\x0000\x0000" );
			}
			label$171:;
		}
		goto label$169;
		label$170:;
		{
			ERRMSG$2 = 17ll;
		}
		label$169:;
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) + -1ll;
		LEXPOPCTX(  );
		if( ERRMSG$2 == 0ll ) goto label$179;
		{
			FBSTRING TMP$117$3;
			__builtin_memset( &TMP$117$3, 0, 24ll );
			FBSTRING* vr$34 = fb_WstrToStr( (uint16*)ARG$1 );
			fb_StrAssign( (void*)&TMP$117$3, -1ll, (void*)vr$34, -1ll, 0 );
			ERRREPORTEX( ERRMSG$2, (uint8*)*(uint8**)&TMP$117$3, 0ll, 1ll, (uint8*)0ull );
			fb_StrDelete( (FBSTRING*)&TMP$117$3 );
			HSKIPUNTIL( 257ll, -1ll, 0ll, 0ll );
		}
		label$179:;
		label$178:;
	}
	label$168:;
	label$167:;
	fb$result$1 = *(uint16**)&RES$1;
	label$164:;
	return fb$result$1;
}

static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$180:;
	if( *(int64*)((uint8*)&PP$ + 392ll) == 0ll ) goto label$183;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$181;
	}
	label$183:;
	label$182:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0ull ) goto label$185;
	{
		*ERRNUM$1 = 1ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$181;
	}
	label$185:;
	label$184:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), (uint8*)ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( STK$1 != (struct $23SYMB_DEF_UNIQUEID_STACK*)0ull ) goto label$187;
	{
		void* vr$7 = calloc( 8ull, 1ull );
		STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$7;
		HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), (uint8*)ID$1, (void*)STK$1, 18446744073709551615ull );
	}
	goto label$186;
	label$187:;
	{
		if( ID$1 == (uint8*)0ull ) goto label$189;
		{
			free( (void*)ID$1 );
		}
		label$189:;
		label$188:;
	}
	label$186:;
	struct $21SYMB_DEF_UNIQUEID_ELM* ELM$1;
	void* vr$9 = malloc( 16ull );
	ELM$1 = (struct $21SYMB_DEF_UNIQUEID_ELM*)vr$9;
	uint8* UID$1;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)1ll );
	UID$1 = vr$10;
	int64 vr$11 = fb_StrLen( (void*)UID$1, 0ll );
	void* vr$13 = malloc( (uint64)(vr$11 + 1ll) );
	*(uint8**)ELM$1 = (uint8*)vr$13;
	fb_StrAssign( *(void**)ELM$1, 0ll, (void*)UID$1, 0ll, 0 );
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)ELM$1 + 8ll) = *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1;
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = ELM$1;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	label$181:;
	FBSTRING* vr$21 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$21;
}

static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$190:;
	if( *(int64*)((uint8*)&PP$ + 392ll) == 0ll ) goto label$193;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$191;
	}
	label$193:;
	label$192:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0ull ) goto label$195;
	{
		*ERRNUM$1 = 1ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$191;
	}
	label$195:;
	label$194:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), (uint8*)ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0ull ) goto label$197;
	{
		free( (void*)ID$1 );
	}
	label$197:;
	label$196:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0ull ) goto label$199;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0ull ) goto label$201;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1, 0ll, 0 );
			goto label$191;
		}
		label$201:;
		label$200:;
	}
	label$199:;
	label$198:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	label$191:;
	FBSTRING* vr$13 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$13;
}

static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$202:;
	if( *(int64*)((uint8*)&PP$ + 392ll) == 0ll ) goto label$205;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$203;
	}
	label$205:;
	label$204:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0ull ) goto label$207;
	{
		*ERRNUM$1 = 1ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$203;
	}
	label$207:;
	label$206:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), (uint8*)ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0ull ) goto label$209;
	{
		free( (void*)ID$1 );
	}
	label$209:;
	label$208:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0ull ) goto label$211;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0ull ) goto label$213;
		{
			free( *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 );
			*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = *(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 + 8ll);
		}
		goto label$212;
		label$213:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$212:;
	}
	goto label$210;
	label$211:;
	{
		*ERRNUM$1 = 17ll;
	}
	label$210:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	label$203:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$214:;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$217;
	{
		FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)ARGTB$1 + 768ll) );
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
		goto label$215;
	}
	label$217:;
	label$216:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"0", 2ll, 0 );
	label$215:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$218:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* NUMSTR$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	NUMSTR$1 = vr$2;
	if( NUMSTR$1 == (uint8*)0ull ) goto label$221;
	{
		FBSTRING VARSTR$2;
		FBSTRING* vr$3 = HMACRO_EVALZ( NUMSTR$1, ERRNUM$1 );
		fb_StrInit( (void*)&VARSTR$2, -1ll, (void*)vr$3, -1ll, 0 );
		int32 INDEX$2;
		__builtin_memset( &INDEX$2, 0, 4ll );
		int64 vr$8 = HSTR2LONG( &VARSTR$2, &INDEX$2 );
		if( vr$8 == 0ll ) goto label$223;
		{
			if( (int64)INDEX$2 < 0ll ) goto label$225;
			{
				uint32 NUMVARARGS$4;
				NUMVARARGS$4 = (uint32)(*(int64*)((uint8*)ARGTB$1 + 768ll) + -1ll);
				if( (int64)INDEX$2 >= (int64)NUMVARARGS$4 ) goto label$227;
				{
					uint8* ARGSTRING$5;
					uint8* vr$15 = HMACRO_GETARGZ( ARGTB$1, 1ll );
					ARGSTRING$5 = vr$15;
					struct $7FBARRAYI8FBSTRINGE VARARGS$5;
					*(FBSTRING**)&VARARGS$5 = (FBSTRING*)0ull;
					*(FBSTRING**)((uint8*)&VARARGS$5 + 8ll) = (FBSTRING*)0ull;
					*(int64*)((uint8*)&VARARGS$5 + 16ll) = 0ll;
					*(int64*)((uint8*)&VARARGS$5 + 24ll) = 24ll;
					*(int64*)((uint8*)&VARARGS$5 + 32ll) = 0ll;
					*(int64*)((uint8*)&VARARGS$5 + 40ll) = 8ll;
					__builtin_memset( (void*)((uint8*)&VARARGS$5 + 48ll), 0, 192ll );
					int64 vr$18 = HSTR2ARGS( (uint8*)ARGSTRING$5, &VARARGS$5 );
					if( vr$18 <= 0ll ) goto label$229;
					{
						fb_StrAssign( (void*)&RES$1, -1ll, (void*)(((int64)INDEX$2 * 24ll) + *(int64*)&VARARGS$5), -1ll, 0 );
					}
					label$229:;
					label$228:;
					if( ARGSTRING$5 == (uint8*)0ull ) goto label$231;
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
				*ERRNUM$1 = 17ll;
			}
			label$224:;
		}
		goto label$222;
		label$223:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$222:;
		if( NUMSTR$1 == (uint8*)0ull ) goto label$233;
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
		*ERRNUM$1 = 1ll;
	}
	label$220:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$219;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$219:;
	FBSTRING* vr$34 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$34;
}

static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$234:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2ll );
	RET$1 = vr$4;
	if( ((int64)-(ARG$1 != (uint8*)0ull) & (int64)-(SEP$1 != (uint8*)0ull)) == 0ll ) goto label$237;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0ull;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 8ll) = (FBSTRING*)0ull;
		*(int64*)((uint8*)&TOKENS$2 + 16ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 24ll) = 24ll;
		*(int64*)((uint8*)&TOKENS$2 + 32ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 40ll) = 8ll;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 48ll), 0, 192ll );
		int64 NUMTOKS$2;
		int64 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0ll ) goto label$239;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$118$4;
				TMP$118$4 = NUMTOKS$2 + -1ll;
				goto label$240;
				label$243:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 24ll) + *(int64*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1ll, (void*)SEP$1, 0ll );
					if( (int64)vr$16 != 0ll ) goto label$245;
					{
						{
							int64 J$7;
							J$7 = 0ll;
							int64 TMP$119$7;
							TMP$119$7 = I$4 + -1ll;
							goto label$246;
							label$249:;
							{
								if( J$7 <= 0ll ) goto label$251;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)" ", 2ll, 0 );
								}
								label$251:;
								label$250:;
								fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)((J$7 * 24ll) + *(int64*)&TOKENS$2), -1ll, 0 );
							}
							label$247:;
							J$7 = J$7 + 1ll;
							label$246:;
							if( J$7 <= TMP$119$7 ) goto label$249;
							label$248:;
						}
						goto label$242;
					}
					label$245:;
					label$244:;
				}
				label$241:;
				I$4 = I$4 + 1ll;
				label$240:;
				if( I$4 <= TMP$118$4 ) goto label$243;
				label$242:;
			}
			int64 vr$27 = fb_StrLen( (void*)&RES$1, -1ll );
			if( vr$27 != 0ll ) goto label$253;
			{
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)RET$1, 0ll, 0 );
			}
			label$253:;
			label$252:;
		}
		goto label$238;
		label$239:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$238:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$236;
	label$237:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$236:;
	if( RET$1 == (uint8*)0ull ) goto label$255;
	{
		free( (void*)RET$1 );
	}
	label$255:;
	label$254:;
	if( SEP$1 == (uint8*)0ull ) goto label$257;
	{
		free( (void*)SEP$1 );
	}
	label$257:;
	label$256:;
	if( ARG$1 == (uint8*)0ull ) goto label$259;
	{
		free( (void*)ARG$1 );
	}
	label$259:;
	label$258:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$235;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$235:;
	FBSTRING* vr$37 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$37;
}

static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$260:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2ll );
	RET$1 = vr$4;
	if( ((int64)-(ARG$1 != (uint8*)0ull) & (int64)-(SEP$1 != (uint8*)0ull)) == 0ll ) goto label$263;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0ull;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 8ll) = (FBSTRING*)0ull;
		*(int64*)((uint8*)&TOKENS$2 + 16ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 24ll) = 24ll;
		*(int64*)((uint8*)&TOKENS$2 + 32ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 40ll) = 8ll;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 48ll), 0, 192ll );
		int64 NUMTOKS$2;
		int64 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0ll ) goto label$265;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$121$4;
				TMP$121$4 = NUMTOKS$2 + -1ll;
				goto label$266;
				label$269:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 24ll) + *(int64*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1ll, (void*)SEP$1, 0ll );
					if( (int64)vr$16 != 0ll ) goto label$271;
					{
						{
							int64 J$7;
							J$7 = I$4 + 1ll;
							int64 TMP$122$7;
							TMP$122$7 = NUMTOKS$2 + -1ll;
							goto label$272;
							label$275:;
							{
								int64 vr$21 = fb_StrLen( (void*)&RES$1, -1ll );
								if( vr$21 <= 0ll ) goto label$277;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)" ", 2ll, 0 );
								}
								label$277:;
								label$276:;
								fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)((J$7 * 24ll) + *(int64*)&TOKENS$2), -1ll, 0 );
							}
							label$273:;
							J$7 = J$7 + 1ll;
							label$272:;
							if( J$7 <= TMP$122$7 ) goto label$275;
							label$274:;
						}
						goto label$268;
					}
					label$271:;
					label$270:;
				}
				label$267:;
				I$4 = I$4 + 1ll;
				label$266:;
				if( I$4 <= TMP$121$4 ) goto label$269;
				label$268:;
			}
			int64 vr$30 = fb_StrLen( (void*)&RES$1, -1ll );
			if( vr$30 != 0ll ) goto label$279;
			{
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)RET$1, 0ll, 0 );
			}
			label$279:;
			label$278:;
		}
		goto label$264;
		label$265:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$264:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$262;
	label$263:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$262:;
	if( RET$1 == (uint8*)0ull ) goto label$281;
	{
		free( (void*)RET$1 );
	}
	label$281:;
	label$280:;
	if( SEP$1 == (uint8*)0ull ) goto label$283;
	{
		free( (void*)SEP$1 );
	}
	label$283:;
	label$282:;
	if( ARG$1 == (uint8*)0ull ) goto label$285;
	{
		free( (void*)ARG$1 );
	}
	label$285:;
	label$284:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$261:;
	FBSTRING* vr$39 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$39;
}

static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$286:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* L$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	L$1 = vr$2;
	uint8* R$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	R$1 = vr$3;
	if( ((int64)-(L$1 != (uint8*)0ull) & (int64)-(R$1 != (uint8*)0ull)) == 0ll ) goto label$289;
	{
		FBSTRING TMP$123$2;
		__builtin_memset( &TMP$123$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$123$2, (void*)L$1, 0ll, (void*)R$1, 0ll );
		fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$9, -1ll, 0 );
	}
	goto label$288;
	label$289:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$288:;
	if( L$1 == (uint8*)0ull ) goto label$291;
	{
		free( (void*)L$1 );
	}
	label$291:;
	label$290:;
	if( R$1 == (uint8*)0ull ) goto label$293;
	{
		free( (void*)R$1 );
	}
	label$293:;
	label$292:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$287:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

static uint16* HDEFJOINW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$294:;
	uint16* L$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	L$1 = vr$1;
	uint16* R$1;
	uint16* vr$2 = HMACRO_GETARGW( ARGTB$1, 1ll );
	R$1 = vr$2;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( ((int64)-(L$1 != (uint16*)0ull) & (int64)-(R$1 != (uint16*)0ull)) == 0ll ) goto label$297;
	{
		DWSTRCONCATASSIGN( &RES$1, (uint16*)L$1 );
		DWSTRCONCATASSIGN( &RES$1, (uint16*)R$1 );
	}
	goto label$296;
	label$297:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$296:;
	fb$result$1 = *(uint16**)&RES$1;
	label$295:;
	return fb$result$1;
}

static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$298:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	if( ARG$1 == (uint8*)0ull ) goto label$301;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"$\x22", 3ll, 0 );
		FBSTRING* vr$4 = HREPLACE( ARG$1, (uint8*)"\x22", (uint8*)"\x22\x22" );
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)vr$4, -1ll, 0 );
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"\x22", 2ll, 0 );
	}
	goto label$300;
	label$301:;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"\x22\x22", 3ll, 0 );
	}
	label$300:;
	if( ARG$1 == (uint8*)0ull ) goto label$303;
	{
		free( (void*)ARG$1 );
	}
	label$303:;
	label$302:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$299:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static uint16* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$304:;
	uint16* ARG$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( ARG$1 == (uint16*)0ull ) goto label$307;
	{
		uint16* TMP$128$2;
		uint16* TMP$129$2;
		uint16* TMP$130$2;
		uint16* TMP$131$2;
		uint16* vr$2 = fb_StrToWstr( (uint8*)"$\x22" );
		TMP$128$2 = vr$2;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$128$2 );
		fb_WstrDelete( (uint16*)TMP$128$2 );
		uint16* vr$3 = fb_StrToWstr( (uint8*)"\x22\x22" );
		TMP$130$2 = vr$3;
		uint16* vr$4 = fb_StrToWstr( (uint8*)"\x22" );
		TMP$129$2 = vr$4;
		uint16* vr$5 = HREPLACEW( ARG$1, TMP$129$2, TMP$130$2 );
		DWSTRCONCATASSIGN( &RES$1, (uint16*)vr$5 );
		fb_WstrDelete( (uint16*)TMP$130$2 );
		fb_WstrDelete( (uint16*)TMP$129$2 );
		uint16* vr$6 = fb_StrToWstr( (uint8*)"\x22" );
		TMP$131$2 = vr$6;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$131$2 );
		fb_WstrDelete( (uint16*)TMP$131$2 );
	}
	goto label$306;
	label$307:;
	{
		uint16* TMP$132$2;
		uint16* vr$7 = fb_StrToWstr( (uint8*)"\x22\x22" );
		TMP$132$2 = vr$7;
		DWSTRCONCATASSIGN( &RES$1, (uint16*)TMP$132$2 );
		fb_WstrDelete( (uint16*)TMP$132$2 );
	}
	label$306:;
	fb$result$1 = *(uint16**)&RES$1;
	label$305:;
	return fb$result$1;
}

static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$308:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	if( ARG$1 == (uint8*)0ull ) goto label$311;
	{
		int64 TMP$133$2;
		int64 TMP$135$2;
		int64 LENGTH$2;
		int64 vr$3 = fb_StrLen( (void*)ARG$1, 0ll );
		LENGTH$2 = vr$3;
		if( LENGTH$2 < 3ll ) goto label$312;
		TMP$133$2 = (int64)-((((int64)-((uint64)(int64)*ARG$1 == 36ull) & (int64)-((uint64)(int64)*(uint8*)((uint8*)ARG$1 + 1ll) == 34ull)) & (int64)-((uint64)(int64)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1ll) == 34ull)) != 0ll);
		goto label$542;
		label$312:;
		TMP$133$2 = 0ll;
		label$542:;
		if( TMP$133$2 == 0ll ) goto label$314;
		{
			FBSTRING TMP$134$3;
			__builtin_memset( &TMP$134$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$19 = fb_StrMid( (FBSTRING*)vr$18, 3ll, LENGTH$2 + -3ll );
			fb_StrAssign( (void*)&TMP$134$3, -1ll, (void*)vr$19, -1ll, 0 );
			FBSTRING* vr$21 = HREPLACE( (uint8*)*(uint8**)&TMP$134$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$21, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$134$3 );
		}
		goto label$313;
		label$314:;
		if( LENGTH$2 < 2ll ) goto label$316;
		TMP$135$2 = (int64)-(((int64)-((uint64)(int64)*ARG$1 == 34ull) & (int64)-((uint64)(int64)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1ll) == 34ull)) != 0ll);
		goto label$543;
		label$316:;
		TMP$135$2 = 0ll;
		label$543:;
		if( TMP$135$2 == 0ll ) goto label$315;
		{
			FBSTRING TMP$136$3;
			__builtin_memset( &TMP$136$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$35 = fb_StrMid( (FBSTRING*)vr$34, 2ll, LENGTH$2 + -2ll );
			fb_StrAssign( (void*)&TMP$136$3, -1ll, (void*)vr$35, -1ll, 0 );
			FBSTRING* vr$37 = HREPLACE( (uint8*)*(uint8**)&TMP$136$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$37, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$136$3 );
		}
		goto label$313;
		label$315:;
		{
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)ARG$1, 0ll, 0 );
		}
		label$313:;
	}
	label$311:;
	label$310:;
	if( ARG$1 == (uint8*)0ull ) goto label$318;
	{
		free( (void*)ARG$1 );
	}
	label$318:;
	label$317:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$309:;
	FBSTRING* vr$45 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$45;
}

static uint16* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$319:;
	uint16* ARG$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( ARG$1 == (uint16*)0ull ) goto label$322;
	{
		int64 TMP$137$2;
		int64 TMP$141$2;
		int64 LENGTH$2;
		int64 vr$2 = fb_WstrLen( (uint16*)ARG$1 );
		LENGTH$2 = vr$2;
		if( LENGTH$2 < 3ll ) goto label$323;
		TMP$137$2 = (int64)-((((int64)-((uint64)(int64)*ARG$1 == 36ull) & (int64)-((uint64)(int64)*(uint16*)((uint8*)ARG$1 + 2ll) == 34ull)) & (int64)-((uint64)(int64)*(uint16*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (1ll & 63ll))) + -2ll) == 34ull)) != 0ll);
		goto label$544;
		label$323:;
		TMP$137$2 = 0ll;
		label$544:;
		if( TMP$137$2 == 0ll ) goto label$325;
		{
			uint16* TMP$138$3;
			uint16* TMP$139$3;
			uint16* TMP$140$3;
			uint16* vr$16 = fb_StrToWstr( (uint8*)"\x22" );
			TMP$140$3 = vr$16;
			uint16* vr$17 = fb_StrToWstr( (uint8*)"\x22\x22" );
			TMP$139$3 = vr$17;
			uint16* vr$19 = fb_WstrMid( (uint16*)ARG$1, 3ll, LENGTH$2 + -3ll );
			TMP$138$3 = vr$19;
			uint16* vr$20 = HREPLACEW( TMP$138$3, TMP$139$3, TMP$140$3 );
			DWSTRASSIGN( &RES$1, (uint16*)vr$20 );
			fb_WstrDelete( (uint16*)TMP$140$3 );
			fb_WstrDelete( (uint16*)TMP$139$3 );
			fb_WstrDelete( (uint16*)TMP$138$3 );
		}
		goto label$324;
		label$325:;
		if( LENGTH$2 < 2ll ) goto label$327;
		TMP$141$2 = (int64)-(((int64)-((uint64)(int64)*ARG$1 == 34ull) & (int64)-((uint64)(int64)*(uint16*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (1ll & 63ll))) + -2ll) == 34ull)) != 0ll);
		goto label$545;
		label$327:;
		TMP$141$2 = 0ll;
		label$545:;
		if( TMP$141$2 == 0ll ) goto label$326;
		{
			uint16* TMP$142$3;
			uint16* TMP$143$3;
			uint16* TMP$144$3;
			uint16* vr$30 = fb_StrToWstr( (uint8*)"\x22" );
			TMP$144$3 = vr$30;
			uint16* vr$31 = fb_StrToWstr( (uint8*)"\x22\x22" );
			TMP$143$3 = vr$31;
			uint16* vr$33 = fb_WstrMid( (uint16*)ARG$1, 2ll, LENGTH$2 + -2ll );
			TMP$142$3 = vr$33;
			uint16* vr$34 = HREPLACEW( TMP$142$3, TMP$143$3, TMP$144$3 );
			DWSTRASSIGN( &RES$1, (uint16*)vr$34 );
			fb_WstrDelete( (uint16*)TMP$144$3 );
			fb_WstrDelete( (uint16*)TMP$143$3 );
			fb_WstrDelete( (uint16*)TMP$142$3 );
		}
		goto label$324;
		label$326:;
		{
			DWSTRASSIGN( &RES$1, (uint16*)ARG$1 );
		}
		label$324:;
	}
	label$322:;
	label$321:;
	fb$result$1 = *(uint16**)&RES$1;
	label$320:;
	return fb$result$1;
}

static FBSTRING* HDEFEVALZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$328:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	FBSTRING* vr$2 = HMACRO_EVALZ( ARG$1, ERRNUM$1 );
	fb_StrInit( (void*)&RES$1, -1ll, (void*)vr$2, -1ll, 0 );
	if( ARG$1 == (uint8*)0ull ) goto label$331;
	{
		free( (void*)ARG$1 );
	}
	label$331:;
	label$330:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$329:;
	FBSTRING* vr$8 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$8;
}

static uint16* HDEFEVALW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$332:;
	uint16* ARG$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	uint16* vr$2 = HMACRO_EVALW( ARG$1, ERRNUM$1 );
	DWSTRASSIGN( &RES$1, (uint16*)vr$2 );
	fb$result$1 = *(uint16**)&RES$1;
	label$333:;
	return fb$result$1;
}

static FBSTRING* HDEFIIFZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$334:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* CEXPR$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	CEXPR$1 = vr$2;
	uint8* TEXPR$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	TEXPR$1 = vr$3;
	uint8* FEXPR$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2ll );
	FEXPR$1 = vr$4;
	if( (((int64)-(CEXPR$1 != (uint8*)0ull) & (int64)-(TEXPR$1 != (uint8*)0ull)) & (int64)-(FEXPR$1 != (uint8*)0ull)) == 0ll ) goto label$337;
	{
		FBSTRING TMP$145$2;
		FBSTRING VARSTR$2;
		FBSTRING* vr$10 = HMACRO_EVALZ( CEXPR$1, ERRNUM$1 );
		fb_StrInit( (void*)&VARSTR$2, -1ll, (void*)vr$10, -1ll, 0 );
		boolean VALUE$2;
		boolean vr$13 = fb_VALBOOL( (FBSTRING*)&VARSTR$2 );
		VALUE$2 = vr$13;
		boolean vr$15 = fb_VALBOOL( (FBSTRING*)&VARSTR$2 );
		if( vr$15 == (boolean)0ll ) goto label$338;
		fb_StrInit( (void*)&TMP$145$2, -1ll, (void*)TEXPR$1, 0ll, 0 );
		goto label$546;
		label$338:;
		fb_StrInit( (void*)&TMP$145$2, -1ll, (void*)FEXPR$1, 0ll, 0 );
		label$546:;
		fb_StrAssign( (void*)&RES$1, -1ll, (void*)&TMP$145$2, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$145$2 );
		fb_StrDelete( (FBSTRING*)&VARSTR$2 );
	}
	goto label$336;
	label$337:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$336:;
	if( FEXPR$1 == (uint8*)0ull ) goto label$340;
	{
		free( (void*)FEXPR$1 );
	}
	label$340:;
	label$339:;
	if( TEXPR$1 == (uint8*)0ull ) goto label$342;
	{
		free( (void*)TEXPR$1 );
	}
	label$342:;
	label$341:;
	if( CEXPR$1 == (uint8*)0ull ) goto label$344;
	{
		free( (void*)CEXPR$1 );
	}
	label$344:;
	label$343:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$335:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}

static uint16* HDEFIIFW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$345:;
	static struct $8DWSTRING RES$1;
	static struct $8DWSTRING WVARSTR$1;
	uint16* CEXPR$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	CEXPR$1 = vr$1;
	uint16* TEXPR$1;
	uint16* vr$2 = HMACRO_GETARGW( ARGTB$1, 1ll );
	TEXPR$1 = vr$2;
	uint16* FEXPR$1;
	uint16* vr$3 = HMACRO_GETARGW( ARGTB$1, 2ll );
	FEXPR$1 = vr$3;
	if( (((int64)-(CEXPR$1 != (uint16*)0ull) & (int64)-(TEXPR$1 != (uint16*)0ull)) & (int64)-(FEXPR$1 != (uint16*)0ull)) == 0ll ) goto label$348;
	{
		uint16* TMP$146$2;
		int32 VALUE$2;
		VALUE$2 = 0;
		FBSTRING VARSTR$2;
		__builtin_memset( &VARSTR$2, 0, 24ll );
		uint16* vr$10 = HMACRO_EVALW( CEXPR$1, ERRNUM$1 );
		DWSTRASSIGN( &WVARSTR$1, (uint16*)vr$10 );
		FBSTRING* vr$11 = fb_ULongintToStr( *(uint64*)&WVARSTR$1 );
		fb_StrAssign( (void*)&VARSTR$2, -1ll, (void*)vr$11, -1ll, 0 );
		boolean vr$14 = fb_VALBOOL( (FBSTRING*)&VARSTR$2 );
		if( vr$14 == (boolean)0ll ) goto label$349;
		int64 vr$15 = fb_WstrLen( (uint16*)TEXPR$1 );
		uint16* vr$16 = fb_WstrAlloc( vr$15 );
		TMP$146$2 = vr$16;
		uint16* vr$17 = fb_WstrAssign( TMP$146$2, 0ll, (uint16*)TEXPR$1 );
		goto label$547;
		label$349:;
		int64 vr$18 = fb_WstrLen( (uint16*)FEXPR$1 );
		uint16* vr$19 = fb_WstrAlloc( vr$18 );
		TMP$146$2 = vr$19;
		uint16* vr$20 = fb_WstrAssign( TMP$146$2, 0ll, (uint16*)FEXPR$1 );
		label$547:;
		DWSTRASSIGN( &RES$1, (uint16*)TMP$146$2 );
		fb_WstrDelete( (uint16*)TMP$146$2 );
		fb_StrDelete( (FBSTRING*)&VARSTR$2 );
	}
	goto label$347;
	label$348:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$347:;
	fb$result$1 = *(uint16**)&RES$1;
	label$346:;
	return fb$result$1;
}

static FBSTRING* HDEFQUERYSYMZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$350:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	if( *(int64*)((uint8*)&ENV$ + 1272ll) < 16ll ) goto label$353;
	{
		*ERRNUM$1 = 27ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&RES$1 );
		goto label$351;
	}
	label$353:;
	label$352:;
	uint8* WEXPR$1;
	uint8* vr$6 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	WEXPR$1 = vr$6;
	uint8* SEXPR$1;
	uint8* vr$7 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	SEXPR$1 = vr$7;
	if( ((int64)-(WEXPR$1 != (uint8*)0ull) & (int64)-(SEXPR$1 != (uint8*)0ull)) == 0ll ) goto label$355;
	{
		FBSTRING WHATSTR$2;
		FBSTRING* vr$11 = HMACRO_EVALZ( WEXPR$1, ERRNUM$1 );
		fb_StrInit( (void*)&WHATSTR$2, -1ll, (void*)vr$11, -1ll, 0 );
		int32 WHATVALUE$2;
		int32 vr$14 = fb_VALINT( (FBSTRING*)&WHATSTR$2 );
		WHATVALUE$2 = vr$14;
		int64 vr$17 = HSTR2LONG( &WHATSTR$2, &WHATVALUE$2 );
		if( vr$17 == 0ll ) goto label$357;
		{
			$11FB_DATATYPE DTYPE$3;
			DTYPE$3 = 2147483648ll;
			int64 IS_FIXLENSTR$3;
			__builtin_memset( &IS_FIXLENSTR$3, 0, 8ll );
			int64 RETRY$3;
			RETRY$3 = 0ll;
			int64 LGT$3;
			__builtin_memset( &LGT$3, 0, 8ll );
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = (struct $8FBSYMBOL*)0ull;
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = (struct $8FBSYMBOL*)0ull;
			int32 QUERYVALUE$3;
			QUERYVALUE$3 = (int32)((int64)WHATVALUE$2 & 255ll);
			int32 FILTERVALUE$3;
			FILTERVALUE$3 = (int32)((int64)WHATVALUE$2 & 65280ll);
			$9FB_ERRMSG ERRMSG$3;
			ERRMSG$3 = 0ll;
			LEXPUSHCTX(  );
			LEXINIT( 0ll, -1ll );
			*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) + 1ll;
			DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), (uint8*)SEXPR$1 );
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll);
			int64 vr$34 = fb_StrLen( (void*)SEXPR$1, 0ll );
			*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + vr$34;
			if( (int64)FILTERVALUE$3 != 0ll ) goto label$359;
			{
				{
					if( (int64)QUERYVALUE$3 == 3ll ) goto label$362;
					label$363:;
					if( (int64)QUERYVALUE$3 == 4ll ) goto label$362;
					label$364:;
					if( (int64)QUERYVALUE$3 == 5ll ) goto label$362;
					label$365:;
					if( (int64)QUERYVALUE$3 != 6ll ) goto label$361;
					label$362:;
					{
						FILTERVALUE$3 = (int32)((int64)FILTERVALUE$3 | 256ll);
					}
					goto label$360;
					label$361:;
					{
						FILTERVALUE$3 = (int32)((int64)FILTERVALUE$3 | 768ll);
					}
					label$366:;
					label$360:;
				}
			}
			label$359:;
			label$358:;
			if( ((int64)FILTERVALUE$3 & 256ll) == 0ll ) goto label$368;
			{
				{
					int64 TMP$147$5;
					int64 vr$50 = LEXGETCLASS( 0ll );
					TMP$147$5 = vr$50;
					if( TMP$147$5 == 0ll ) goto label$371;
					label$372:;
					if( TMP$147$5 == 1ll ) goto label$371;
					label$373:;
					if( TMP$147$5 == 2ll ) goto label$371;
					label$374:;
					if( TMP$147$5 != 5ll ) goto label$370;
					label$371:;
					{
						struct $8FBSYMBOL* TMP$148$6;
						TMP$148$6 = (struct $8FBSYMBOL*)0ull;
						struct $8FBSYMBOL* vr$52 = CIDENTIFIERORUDTMEMBER( &TMP$148$6, (struct $10FBSYMCHAIN*)0ull );
						SYM$3 = vr$52;
					}
					label$370:;
					label$369:;
				}
				if( SYM$3 == (struct $8FBSYMBOL*)0ull ) goto label$376;
				{
					{
						$12FB_SYMBCLASS TMP$149$6;
						TMP$149$6 = *($12FB_SYMBCLASS*)SYM$3;
						if( TMP$149$6 != 6ll ) goto label$378;
						label$379:;
						{
							DTYPE$3 = *($11FB_DATATYPE*)((uint8*)SYM$3 + 56ll);
							if( DTYPE$3 != 2147483648ll ) goto label$381;
							{
								{
									if( (int64)QUERYVALUE$3 == 0ll ) goto label$384;
									label$385:;
									if( (int64)QUERYVALUE$3 != 6ll ) goto label$383;
									label$384:;
									{
										LEXSKIPTOKEN( 0ll );
									}
									goto label$382;
									label$383:;
									{
										SYM$3 = (struct $8FBSYMBOL*)0ull;
										RETRY$3 = -1ll;
									}
									label$386:;
									label$382:;
								}
							}
							goto label$380;
							label$381:;
							{
								LEXSKIPTOKEN( 0ll );
							}
							label$380:;
						}
						goto label$377;
						label$378:;
						if( TMP$149$6 != 10ll ) goto label$387;
						label$388:;
						{
							LEXSKIPTOKEN( 0ll );
							DTYPE$3 = *($11FB_DATATYPE*)((uint8*)SYM$3 + 56ll);
							SUBTYPE$3 = SYM$3;
							int64 vr$58 = LEXGETTOKEN( 0ll );
							if( vr$58 != 46ll ) goto label$390;
							{
								CUDTTYPEMEMBER( (int64*)&DTYPE$3, &SUBTYPE$3, &LGT$3, &IS_FIXLENSTR$3, &SYM$3 );
							}
							label$390:;
							label$389:;
						}
						goto label$377;
						label$387:;
						{
							LEXSKIPTOKEN( 0ll );
							DTYPE$3 = *($11FB_DATATYPE*)((uint8*)SYM$3 + 56ll);
							SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)SYM$3 + 64ll);
						}
						label$391:;
						label$377:;
					}
				}
				label$376:;
				label$375:;
				int64 vr$66 = LEXGETTOKEN( 0ll );
				if( vr$66 == 256ll ) goto label$393;
				{
					RETRY$3 = -1ll;
				}
				label$393:;
				label$392:;
				if( RETRY$3 == 0ll ) goto label$395;
				{
					SYM$3 = (struct $8FBSYMBOL*)0ull;
					LEXINIT( 0ll, -1ll );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), (uint8*)SEXPR$1 );
					*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll);
					int64 vr$72 = fb_StrLen( (void*)SEXPR$1, 0ll );
					*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + vr$72;
				}
				label$395:;
				label$394:;
			}
			label$368:;
			label$367:;
			if( ((int64)FILTERVALUE$3 & 512ll) == 0ll ) goto label$397;
			{
				if( SYM$3 != (struct $8FBSYMBOL*)0ull ) goto label$399;
				{
					CTYPEOF( (int64*)&DTYPE$3, &SUBTYPE$3, &LGT$3, &IS_FIXLENSTR$3, &SYM$3 );
				}
				label$399:;
				label$398:;
			}
			label$397:;
			label$396:;
			{
				if( (int64)QUERYVALUE$3 != 0ll ) goto label$401;
				label$402:;
				{
					if( SYM$3 == (struct $8FBSYMBOL*)0ull ) goto label$404;
					{
						FBSTRING* vr$84 = fb_LongintToStr( *(int64*)SYM$3 );
						fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$84, -1ll, 0 );
					}
					goto label$403;
					label$404:;
					if( SUBTYPE$3 == (struct $8FBSYMBOL*)0ull ) goto label$405;
					{
						FBSTRING* vr$87 = fb_LongintToStr( *(int64*)SUBTYPE$3 );
						fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$87, -1ll, 0 );
					}
					goto label$403;
					label$405:;
					{
						fb_StrAssign( (void*)&RES$1, -1ll, (void*)"0", 2ll, 0 );
					}
					label$403:;
				}
				goto label$400;
				label$401:;
				if( (int64)QUERYVALUE$3 != 1ll ) goto label$406;
				label$407:;
				{
					FBSTRING* vr$91 = fb_LongintToStr( DTYPE$3 );
					fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$91, -1ll, 0 );
				}
				goto label$400;
				label$406:;
				if( (int64)QUERYVALUE$3 != 2ll ) goto label$408;
				label$409:;
				{
					int64 TMP$150$5;
					if( (DTYPE$3 & 480ll) == 0ll ) goto label$410;
					TMP$150$5 = 24ll;
					goto label$548;
					label$410:;
					TMP$150$5 = DTYPE$3 & 31ll;
					label$548:;
					FBSTRING* vr$97 = fb_LongintToStr( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$150$5 * 56ll)) );
					fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$97, -1ll, 0 );
				}
				goto label$400;
				label$408:;
				if( (int64)QUERYVALUE$3 == 3ll ) goto label$412;
				label$413:;
				if( (int64)QUERYVALUE$3 != 4ll ) goto label$411;
				label$412:;
				{
					FBSTRING* vr$101 = SYMBTYPETOSTR( DTYPE$3, SUBTYPE$3, LGT$3, IS_FIXLENSTR$3 );
					FBSTRING* vr$102 = fb_StrUcase2( (FBSTRING*)vr$101, 0 );
					fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$102, -1ll, 0 );
					if( (int64)QUERYVALUE$3 != 4ll ) goto label$415;
					{
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 32ll, 95ll );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 46ll, 95ll );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 40ll, 95ll );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 41ll, 95ll );
						HREPLACECHAR( (uint8*)*(uint8**)&RES$1, 42ll, 95ll );
					}
					label$415:;
					label$414:;
				}
				goto label$400;
				label$411:;
				if( (int64)QUERYVALUE$3 != 5ll ) goto label$416;
				label$417:;
				{
					if( SYM$3 == (struct $8FBSYMBOL*)0ull ) goto label$419;
					{
						SYMBMANGLETYPE( &RES$1, DTYPE$3, SYM$3, 0ll );
						SYMBMANGLERESETABBREV(  );
					}
					goto label$418;
					label$419:;
					if( SUBTYPE$3 == (struct $8FBSYMBOL*)0ull ) goto label$420;
					{
						SYMBMANGLETYPE( &RES$1, DTYPE$3, SUBTYPE$3, 0ll );
						SYMBMANGLERESETABBREV(  );
					}
					goto label$418;
					label$420:;
					{
						fb_StrAssign( (void*)&RES$1, -1ll, (void*)"0", 2ll, 0 );
					}
					label$418:;
				}
				goto label$400;
				label$416:;
				if( (int64)QUERYVALUE$3 != 6ll ) goto label$421;
				label$422:;
				{
					FBSTRING* vr$111 = fb_LongintToStr( (int64)-(SYM$3 != (struct $8FBSYMBOL*)0ull) );
					fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$111, -1ll, 0 );
				}
				goto label$400;
				label$421:;
				{
					*ERRNUM$1 = 17ll;
					fb_StrAssign( (void*)&RES$1, -1ll, (void*)"-1", 3ll, 0 );
				}
				label$423:;
				label$400:;
			}
			*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) + -1ll;
			LEXPOPCTX(  );
		}
		goto label$356;
		label$357:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$356:;
		fb_StrDelete( (FBSTRING*)&WHATSTR$2 );
	}
	goto label$354;
	label$355:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$354:;
	if( WEXPR$1 == (uint8*)0ull ) goto label$425;
	{
		free( (void*)WEXPR$1 );
	}
	label$425:;
	label$424:;
	if( SEXPR$1 == (uint8*)0ull ) goto label$427;
	{
		free( (void*)SEXPR$1 );
	}
	label$427:;
	label$426:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$351:;
	FBSTRING* vr$125 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$125;
}

static void HRESETDEFHASH( void )
{
	label$483:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	{
		I$1 = 0ll;
		int64 TMP$242$2;
		TMP$242$2 = *(int64*)((uint8*)&SYMB$ + 197496ll) + -1ll;
		goto label$485;
		label$488:;
		{
			HASHDEL( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), *(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (I$1 << (4ll & 63ll))) + 184ll), *(uint64*)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (I$1 << (4ll & 63ll))) + 192ll) );
		}
		label$486:;
		I$1 = I$1 + 1ll;
		label$485:;
		if( I$1 <= TMP$242$2 ) goto label$488;
		label$487:;
	}
	*(int64*)((uint8*)&SYMB$ + 197496ll) = 0ll;
	label$484:;
}

static void HDELDEFINEPARAMS( struct $8FBSYMBOL* S$1 )
{
	label$520:;
	struct $11FB_DEFPARAM* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 8ll );
	struct $11FB_DEFPARAM* NXT$1;
	__builtin_memset( &NXT$1, 0, 8ll );
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 104ll);
	label$522:;
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$523;
	{
		NXT$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll);
		if( *(uint8**)PARAM$1 == (uint8*)0ull ) goto label$525;
		{
			free( *(void**)PARAM$1 );
		}
		label$525:;
		label$524:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll), (void*)PARAM$1 );
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
	__builtin_memset( &TOK$1, 0, 8ll );
	struct $9FB_DEFTOK* NXT$1;
	__builtin_memset( &NXT$1, 0, 8ll );
	TOK$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 112ll);
	label$528:;
	if( TOK$1 == (struct $9FB_DEFTOK*)0ull ) goto label$529;
	{
		NXT$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 24ll);
		SYMBDELDEFINETOK( TOK$1 );
		TOK$1 = NXT$1;
	}
	goto label$528;
	label$529:;
	label$527:;
}
