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
	tmp$33 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int64 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 568 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 240 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzarray( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
static struct $7ASTNODE* HBUILDPROCPTR( struct $8FBSYMBOL* );
static void HCHECKDEFCTOR( struct $8FBSYMBOL*, int64, int64 );
static void HCHECKDTOR( struct $8FBSYMBOL*, int64, int64 );
static void HGETCTORDTORFORREDIM( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL**, struct $8FBSYMBOL** );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[17] = { { (uint8*)"fb_ArrayRedimEx", (uint8*)0ull, 11ll, 3ll, (tmp$33)0ull, 0ll, 6ll, { { 0ll, 3ll, 0ll }, { 521ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 521ll, 1ll, 0ll }, { 2147484160ll, 4ll, 0ll } } }, { (uint8*)"fb_ArrayRedimPresvEx", (uint8*)0ull, 11ll, 3ll, (tmp$33)0ull, 0ll, 6ll, { { 0ll, 3ll, 0ll }, { 521ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 521ll, 1ll, 0ll }, { 2147484160ll, 4ll, 0ll } } }, { (uint8*)"fb_ArrayRedimObj", (uint8*)0ull, 11ll, 3ll, (tmp$33)0ull, 0ll, 6ll, { { 0ll, 3ll, 0ll }, { 521ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 521ll, 1ll, 0ll }, { 2147483648ll, 4ll, 0ll } } }, { (uint8*)"fb_ArrayRedimPresvObj", (uint8*)0ull, 11ll, 3ll, (tmp$33)0ull, 0ll, 6ll, { { 0ll, 3ll, 0ll }, { 521ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 521ll, 1ll, 0ll }, { 2147483648ll, 4ll, 0ll } } }, { (uint8*)"fb_ArrayRedimTo", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 0ll, 3ll, 0ll }, { 0ll, 3ll, 0ll }, { 523ll, 1ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_ArrayDestructObj", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 0ll, 3ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_ArrayDestructStr", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_ArrayClear", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_ArrayClearObj", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 0ll, 3ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_ArrayErase", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_ArrayEraseObj", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 0ll, 3ll, 0ll }, { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_ArrayStrErase", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_ArrayLBound", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 512ll, 3ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_ArrayUBound", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 512ll, 3ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_ArraySngBoundChk", (uint8*)0ull, 32ll, -1ll, (tmp$33)0ull, 2048ll, 4ll, { { 521ll, 1ll, 0ll }, { 521ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll, 0ll } } }, { (uint8*)"fb_ArrayBoundChk", (uint8*)0ull, 32ll, -1ll, (tmp$33)0ull, 2048ll, 5ll, { { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll, 0ll } } }, { (uint8*)0ull } };

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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$43:;
	struct $7ASTNODE* PROC$1;
	int64 DTYPE$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll;
	if( DTYPE$1 != 20ll ) goto label$46;
	{
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 16ll);
		struct $8FBSYMBOL* vr$4 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
		CTOR$1 = vr$4;
		struct $8FBSYMBOL* vr$5 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		DTOR$1 = vr$5;
		struct $8FBSYMBOL* vr$7 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
		if( ((int64)-(CTOR$1 == (struct $8FBSYMBOL*)0ull) & (int64)-(vr$7 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$48;
		{
			ERRREPORT( 183ll, 0ll, (uint8*)0ull );
		}
		label$48:;
		label$47:;
	}
	goto label$45;
	label$46:;
	{
		CTOR$1 = (struct $8FBSYMBOL*)0ull;
		DTOR$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$45:;
	if( ((int64)-(CTOR$1 != (struct $8FBSYMBOL*)0ull) | (int64)-(DTOR$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$50;
	{
		HCHECKDEFCTOR( CTOR$1, -1ll, -1ll );
		HCHECKDTOR( DTOR$1, -1ll, -1ll );
		struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_ArrayClearObj", 124ll );
		struct $7ASTNODE* vr$14 = ASTNEWCALL( vr$13, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$14;
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1ll );
		if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$52;
		{
			goto label$44;
		}
		label$52:;
		label$51:;
		struct $7ASTNODE* vr$16 = HBUILDPROCPTR( CTOR$1 );
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, vr$16, 2147483648ll, -1ll );
		if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$54;
		{
			goto label$44;
		}
		label$54:;
		label$53:;
		struct $7ASTNODE* vr$18 = HBUILDPROCPTR( DTOR$1 );
		struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
		if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$56;
		{
			goto label$44;
		}
		label$56:;
		label$55:;
	}
	goto label$49;
	label$50:;
	if( DTYPE$1 != 17ll ) goto label$57;
	{
		struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_ArrayDestructStr", 122ll );
		struct $7ASTNODE* vr$21 = ASTNEWCALL( vr$20, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$21;
		struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1ll );
		if( vr$22 != (struct $7ASTNODE*)0ull ) goto label$59;
		{
			goto label$44;
		}
		label$59:;
		label$58:;
	}
	goto label$49;
	label$57:;
	{
		struct $8FBSYMBOL* vr$23 = RTLPROCLOOKUP( (uint8*)"fb_ArrayClear", 123ll );
		struct $7ASTNODE* vr$24 = ASTNEWCALL( vr$23, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$24;
		struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1ll );
		if( vr$25 != (struct $7ASTNODE*)0ull ) goto label$61;
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

struct $7ASTNODE* RTLARRAYERASE( struct $7ASTNODE* ARRAYEXPR$1, int64 IS_DYNAMIC$1, int64 CHECK_ACCESS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$62:;
	struct $7ASTNODE* PROC$1;
	int64 DTYPE$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)ARRAYEXPR$1 + 8ll) & 511ll;
	if( DTYPE$1 != 20ll ) goto label$65;
	{
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 16ll);
		struct $8FBSYMBOL* vr$4 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
		CTOR$1 = vr$4;
		struct $8FBSYMBOL* vr$5 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		DTOR$1 = vr$5;
		struct $8FBSYMBOL* vr$7 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
		if( ((int64)-(CTOR$1 == (struct $8FBSYMBOL*)0ull) & (int64)-(vr$7 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$67;
		{
			ERRREPORT( 183ll, 0ll, (uint8*)0ull );
		}
		label$67:;
		label$66:;
	}
	goto label$64;
	label$65:;
	{
		CTOR$1 = (struct $8FBSYMBOL*)0ull;
		DTOR$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$64:;
	if( ((int64)-(CTOR$1 != (struct $8FBSYMBOL*)0ull) | (int64)-(DTOR$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$69;
	{
		HCHECKDTOR( DTOR$1, CHECK_ACCESS$1, -1ll );
		if( IS_DYNAMIC$1 == 0ll ) goto label$71;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_ArrayEraseObj", 126ll );
			struct $7ASTNODE* vr$14 = ASTNEWCALL( vr$13, (struct $7ASTNODE*)0ull );
			PROC$1 = vr$14;
		}
		goto label$70;
		label$71:;
		{
			struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_ArrayDestructObj", 121ll );
			struct $7ASTNODE* vr$16 = ASTNEWCALL( vr$15, (struct $7ASTNODE*)0ull );
			PROC$1 = vr$16;
		}
		label$70:;
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1ll );
		if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$73;
		{
			goto label$63;
		}
		label$73:;
		label$72:;
		if( IS_DYNAMIC$1 == 0ll ) goto label$75;
		{
			struct $7ASTNODE* vr$18 = HBUILDPROCPTR( CTOR$1 );
			struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
			if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$77;
			{
				goto label$63;
			}
			label$77:;
			label$76:;
		}
		label$75:;
		label$74:;
		struct $7ASTNODE* vr$20 = HBUILDPROCPTR( DTOR$1 );
		struct $7ASTNODE* vr$21 = ASTNEWARG( PROC$1, vr$20, 2147483648ll, -1ll );
		if( vr$21 != (struct $7ASTNODE*)0ull ) goto label$79;
		{
			goto label$63;
		}
		label$79:;
		label$78:;
	}
	goto label$68;
	label$69:;
	if( DTYPE$1 != 17ll ) goto label$80;
	{
		if( IS_DYNAMIC$1 == 0ll ) goto label$82;
		{
			struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_ArrayStrErase", 127ll );
			struct $7ASTNODE* vr$23 = ASTNEWCALL( vr$22, (struct $7ASTNODE*)0ull );
			PROC$1 = vr$23;
		}
		goto label$81;
		label$82:;
		{
			struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_ArrayDestructStr", 122ll );
			struct $7ASTNODE* vr$25 = ASTNEWCALL( vr$24, (struct $7ASTNODE*)0ull );
			PROC$1 = vr$25;
		}
		label$81:;
		struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1ll );
		if( vr$26 != (struct $7ASTNODE*)0ull ) goto label$84;
		{
			goto label$63;
		}
		label$84:;
		label$83:;
	}
	goto label$68;
	label$80:;
	{
		if( IS_DYNAMIC$1 != 0ll ) goto label$86;
		{
			goto label$63;
		}
		label$86:;
		label$85:;
		struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_ArrayErase", 125ll );
		struct $7ASTNODE* vr$28 = ASTNEWCALL( vr$27, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$28;
		struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, ARRAYEXPR$1, DTYPE$1, -1ll );
		if( vr$29 != (struct $7ASTNODE*)0ull ) goto label$88;
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

struct $7ASTNODE* RTLARRAYREDIM( struct $7ASTNODE* ARRAYEXPR$1, int64 DIMENSIONS$1, struct $7FBARRAYIP7ASTNODEE* EXPRTB$1, int64 DOPRESERVE$1, int64 DOCLEAR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$93:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	int64 DTYPE$1;
	int64 ELEMENTLEN$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 24ll);
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll);
	ELEMENTLEN$1 = *(int64*)((uint8*)SYM$1 + 80ll);
	HGETCTORDTORFORREDIM( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), &CTOR$1, &DTOR$1 );
	if( ((int64)-(CTOR$1 == (struct $8FBSYMBOL*)0ull) & (int64)-(DTOR$1 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$96;
	{
		if( DOPRESERVE$1 != 0ll ) goto label$98;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimEx", 128ll );
			F$1 = vr$10;
		}
		goto label$97;
		label$98:;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimPresvEx", 130ll );
			F$1 = vr$11;
		}
		label$97:;
	}
	goto label$95;
	label$96:;
	{
		if( DOPRESERVE$1 != 0ll ) goto label$100;
		{
			struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimObj", 129ll );
			F$1 = vr$12;
		}
		goto label$99;
		label$100:;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimPresvObj", 131ll );
			F$1 = vr$13;
		}
		label$99:;
	}
	label$95:;
	struct $7ASTNODE* vr$14 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$14;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ARRAYEXPR$1, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$102;
	{
		goto label$94;
	}
	label$102:;
	label$101:;
	struct $7ASTNODE* vr$16 = ASTNEWCONSTI( ELEMENTLEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, vr$16, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$104;
	{
		goto label$94;
	}
	label$104:;
	label$103:;
	if( ((int64)-(CTOR$1 == (struct $8FBSYMBOL*)0ull) & (int64)-(DTOR$1 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$106;
	{
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( DOCLEAR$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, vr$21, 2147483648ll, -1ll );
		if( vr$22 != (struct $7ASTNODE*)0ull ) goto label$108;
		{
			goto label$94;
		}
		label$108:;
		label$107:;
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( (int64)-(DTYPE$1 == 17ll), 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, vr$24, 2147483648ll, -1ll );
		if( vr$25 != (struct $7ASTNODE*)0ull ) goto label$110;
		{
			goto label$94;
		}
		label$110:;
		label$109:;
	}
	goto label$105;
	label$106:;
	{
		HCHECKDEFCTOR( CTOR$1, -1ll, 0ll );
		HCHECKDTOR( DTOR$1, -1ll, 0ll );
		struct $7ASTNODE* vr$26 = HBUILDPROCPTR( CTOR$1 );
		struct $7ASTNODE* vr$27 = ASTNEWARG( PROC$1, vr$26, 2147483648ll, -1ll );
		if( vr$27 != (struct $7ASTNODE*)0ull ) goto label$112;
		{
			goto label$94;
		}
		label$112:;
		label$111:;
		struct $7ASTNODE* vr$28 = HBUILDPROCPTR( DTOR$1 );
		struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, vr$28, 2147483648ll, -1ll );
		if( vr$29 != (struct $7ASTNODE*)0ull ) goto label$114;
		{
			goto label$94;
		}
		label$114:;
		label$113:;
	}
	label$105:;
	struct $7ASTNODE* vr$30 = ASTNEWCONSTI( DIMENSIONS$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$31 = ASTNEWARG( PROC$1, vr$30, 2147483648ll, -1ll );
	if( vr$31 != (struct $7ASTNODE*)0ull ) goto label$116;
	{
		goto label$94;
	}
	label$116:;
	label$115:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$112$2;
		TMP$112$2 = DIMENSIONS$1 + -1ll;
		goto label$117;
		label$120:;
		{
			EXPR$1 = *(struct $7ASTNODE**)(((I$2 * *(int64*)((uint8*)EXPRTB$1 + 72ll)) << (3ll & 63ll)) + *(int64*)EXPRTB$1);
			if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) == 8ll ) goto label$122;
			{
				struct $7ASTNODE* vr$40 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
				EXPR$1 = vr$40;
				if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$124;
				{
					goto label$94;
				}
				label$124:;
				label$123:;
			}
			label$122:;
			label$121:;
			struct $7ASTNODE* vr$41 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
			if( vr$41 != (struct $7ASTNODE*)0ull ) goto label$126;
			{
				goto label$94;
			}
			label$126:;
			label$125:;
			EXPR$1 = *(struct $7ASTNODE**)((uint8*)(((I$2 * *(int64*)((uint8*)EXPRTB$1 + 72ll)) << (3ll & 63ll)) + *(int64*)EXPRTB$1) + 8ll);
			if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) == 8ll ) goto label$128;
			{
				struct $7ASTNODE* vr$49 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
				EXPR$1 = vr$49;
				if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$130;
				{
					goto label$94;
				}
				label$130:;
				label$129:;
			}
			label$128:;
			label$127:;
			struct $7ASTNODE* vr$50 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
			if( vr$50 != (struct $7ASTNODE*)0ull ) goto label$132;
			{
				goto label$94;
			}
			label$132:;
			label$131:;
		}
		label$118:;
		I$2 = I$2 + 1ll;
		label$117:;
		if( I$2 <= TMP$112$2 ) goto label$120;
		label$119:;
	}
	struct $7ASTNODE* vr$52 = RTLERRORCHECK( PROC$1 );
	fb$result$1 = vr$52;
	label$94:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYREDIMTO( struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* SRCEXPR$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$133:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* CTOR$1;
	struct $8FBSYMBOL* DTOR$1;
	HGETCTORDTORFORREDIM( DTYPE$1, SUBTYPE$1, &CTOR$1, &DTOR$1 );
	struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_ArrayRedimTo", 132ll );
	struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DSTEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$136;
	{
		goto label$134;
	}
	label$136:;
	label$135:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, SRCEXPR$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$138;
	{
		goto label$134;
	}
	label$138:;
	label$137:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( (int64)-((DTYPE$1 & 511ll) == 17ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$140;
	{
		goto label$134;
	}
	label$140:;
	label$139:;
	HCHECKDEFCTOR( CTOR$1, 0ll, 0ll );
	HCHECKDTOR( DTOR$1, 0ll, 0ll );
	struct $7ASTNODE* vr$11 = HBUILDPROCPTR( CTOR$1 );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$142;
	{
		goto label$134;
	}
	label$142:;
	label$141:;
	struct $7ASTNODE* vr$13 = HBUILDPROCPTR( DTOR$1 );
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$144;
	{
		goto label$134;
	}
	label$144:;
	label$143:;
	struct $7ASTNODE* vr$15 = RTLERRORCHECK( PROC$1 );
	fb$result$1 = vr$15;
	label$134:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYBOUND( struct $7ASTNODE* ARRAYEXPR$1, struct $7ASTNODE* DIMEXPR$1, int64 ISLBOUND$1 )
{
	struct $8FBSYMBOL* TMP$113$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$145:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( ISLBOUND$1 == 0ll ) goto label$147;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ArrayLBound", 133ll );
	TMP$113$1 = vr$1;
	goto label$152;
	label$147:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_ArrayUBound", 134ll );
	TMP$113$1 = vr$2;
	label$152:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$113$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, ARRAYEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$149;
	{
		goto label$146;
	}
	label$149:;
	label$148:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DIMEXPR$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$151;
	{
		goto label$146;
	}
	label$151:;
	label$150:;
	fb$result$1 = PROC$1;
	label$146:;
	return fb$result$1;
}

struct $7ASTNODE* RTLARRAYBOUNDSCHECK( struct $7ASTNODE* IDX$1, struct $7ASTNODE* LB$1, struct $7ASTNODE* RB$1, int64 LINENUM$1, uint8* MODULE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$153:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( LB$1 != (struct $7ASTNODE*)0ull ) goto label$156;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ArraySngBoundChk", 135ll );
		F$1 = vr$1;
	}
	goto label$155;
	label$156:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_ArrayBoundChk", 136ll );
		F$1 = vr$2;
	}
	label$155:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, IDX$1, 16ll, (int64*)0ull );
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, vr$4, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$158;
	{
		goto label$154;
	}
	label$158:;
	label$157:;
	if( LB$1 == (struct $7ASTNODE*)0ull ) goto label$160;
	{
		struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, LB$1, 8ll, -1ll );
		if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$162;
		{
			goto label$154;
		}
		label$162:;
		label$161:;
	}
	label$160:;
	label$159:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, RB$1, 8ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$164;
	{
		goto label$154;
	}
	label$164:;
	label$163:;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( LINENUM$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, vr$8, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$166;
	{
		goto label$154;
	}
	label$166:;
	label$165:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTSTR( MODULE$1 );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$168;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $7ASTNODE* HBUILDPROCPTR( struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$17;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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

static void HCHECKDEFCTOR( struct $8FBSYMBOL* CTOR$1, int64 CHECK_ACCESS$1, int64 IS_ERASE$1 )
{
	label$18:;
	if( CTOR$1 != (struct $8FBSYMBOL*)0ull ) goto label$21;
	{
		goto label$19;
		label$21:;
	}
	if( CHECK_ACCESS$1 == 0ll ) goto label$23;
	{
		int64 vr$0 = SYMBCHECKACCESS( CTOR$1 );
		if( vr$0 != 0ll ) goto label$25;
		{
			ERRREPORT( 204ll, 0ll, (uint8*)0ull );
		}
		label$25:;
		label$24:;
	}
	label$23:;
	label$22:;
	if( *(int64*)((uint8*)CTOR$1 + 152ll) == 3ll ) goto label$27;
	{
		$9FB_ERRMSG TMP$109$2;
		if( IS_ERASE$1 == 0ll ) goto label$28;
		TMP$109$2 = 174ll;
		goto label$169;
		label$28:;
		TMP$109$2 = 171ll;
		label$169:;
		ERRREPORT( TMP$109$2, 0ll, (uint8*)0ull );
	}
	label$27:;
	label$26:;
	if( (int64)*(int16*)((uint8*)CTOR$1 + 120ll) == 1ll ) goto label$30;
	{
		$9FB_ERRMSG TMP$110$2;
		if( IS_ERASE$1 == 0ll ) goto label$31;
		TMP$110$2 = 176ll;
		goto label$170;
		label$31:;
		TMP$110$2 = 173ll;
		label$170:;
		ERRREPORT( TMP$110$2, 0ll, (uint8*)0ull );
	}
	label$30:;
	label$29:;
	label$19:;
}

static void HCHECKDTOR( struct $8FBSYMBOL* DTOR$1, int64 CHECK_ACCESS$1, int64 IS_ERASE$1 )
{
	label$32:;
	if( DTOR$1 != (struct $8FBSYMBOL*)0ull ) goto label$35;
	{
		goto label$33;
		label$35:;
	}
	if( CHECK_ACCESS$1 == 0ll ) goto label$37;
	{
		int64 vr$0 = SYMBCHECKACCESS( DTOR$1 );
		if( vr$0 != 0ll ) goto label$39;
		{
			ERRREPORT( 206ll, 0ll, (uint8*)0ull );
		}
		label$39:;
		label$38:;
	}
	label$37:;
	label$36:;
	if( *(int64*)((uint8*)DTOR$1 + 152ll) == 3ll ) goto label$41;
	{
		$9FB_ERRMSG TMP$111$2;
		if( IS_ERASE$1 == 0ll ) goto label$42;
		TMP$111$2 = 175ll;
		goto label$171;
		label$42:;
		TMP$111$2 = 172ll;
		label$171:;
		ERRREPORT( TMP$111$2, 0ll, (uint8*)0ull );
	}
	label$41:;
	label$40:;
	label$33:;
}

static void HGETCTORDTORFORREDIM( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL** CTOR$1, struct $8FBSYMBOL** DTOR$1 )
{
	label$89:;
	if( (DTYPE$1 & 511ll) != 20ll ) goto label$92;
	{
		struct $8FBSYMBOL* vr$1 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
		*CTOR$1 = vr$1;
		struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDTOR1( SUBTYPE$1 );
		*DTOR$1 = vr$3;
	}
	goto label$91;
	label$92:;
	{
		*CTOR$1 = (struct $8FBSYMBOL*)0ull;
		*DTOR$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$91:;
	label$90:;
}
