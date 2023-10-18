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
typedef int64 $10FBOPENKIND;
typedef int64 $13FB_COMPTARGET;
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
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzfile( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int64, uint8*, int64 );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int64 );
int64 SYMBISSTRING( int64 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
int64 RTLCALCEXPRLEN( struct $7ASTNODE* );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int64 );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[72] = { { (uint8*)"fb_FileOpen", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 6ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenEncod", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenShort", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 6ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_FileOpenCons", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenErr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenPipe", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenScrn", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenLpt", (uint8*)0ull, 11ll, -1ll, (tmp$33)&RTLPRINTER_CB, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenCom", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 7ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileOpenQB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 6ll, { { 529ll, 2ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_FileClose", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_FileCloseAll", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 0ll }, { (uint8*)"fb_FilePut", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 521ll, 1ll, 0ll } } }, { (uint8*)"fb_FilePutLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 521ll, 1ll, 0ll } } }, { (uint8*)"fb_FilePutStr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FilePutStrLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FilePutArray", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 512ll, 3ll, 0ll } } }, { (uint8*)"fb_FilePutArrayLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 512ll, 3ll, 0ll } } }, { (uint8*)"fb_FileGet", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 521ll, 1ll, 0ll } } }, { (uint8*)"fb_FileGetLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 521ll, 1ll, 0ll } } }, { (uint8*)"fb_FileGetStr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FileGetWstr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 7ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FileGetStrLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FileGetWstrLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 7ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FileGetArray", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_FileGetArrayLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 0ll, 3ll, 0ll } } }, { (uint8*)"fb_FileGetIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 521ll, 1ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetLargeIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 521ll, 1ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetStrIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetWstrIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 7ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetStrLargeIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetWstrLargeIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 7ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetArrayIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 3ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileGetArrayLargeIOB", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 0ll, 3ll, 0ll }, { 9ll, 2ll, 0ll } } }, { (uint8*)"fb_FileTell", (uint8*)0ull, 13ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_FileSeek", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_FileSeekLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll } } }, { (uint8*)"fb_FileStrInput", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_FileLineInput", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 523ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_FileLineInputWstr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_LineInput", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 6ll, { { 529ll, 2ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_LineInputWstr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 1063ll, 1ll, 0ll }, { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_FileInput", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_ConsoleInput", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_InputBool", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 1ll, 2ll, 0ll } } }, { (uint8*)"fb_InputByte", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 2ll, 2ll, 0ll } } }, { (uint8*)"fb_InputUbyte", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 3ll, 2ll, 0ll } } }, { (uint8*)"fb_InputShort", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 5ll, 2ll, 0ll } } }, { (uint8*)"fb_InputUshort", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 6ll, 2ll, 0ll } } }, { (uint8*)"fb_InputInt", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 11ll, 2ll, 0ll } } }, { (uint8*)"fb_InputUint", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 12ll, 2ll, 0ll } } }, { (uint8*)"fb_InputLongint", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 13ll, 2ll, 0ll } } }, { (uint8*)"fb_InputUlongint", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 14ll, 2ll, 0ll } } }, { (uint8*)"fb_InputSingle", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 15ll, 2ll, 0ll } } }, { (uint8*)"fb_InputDouble", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 16ll, 2ll, 0ll } } }, { (uint8*)"fb_InputString", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_InputWstr", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_FileLock", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_FileLockLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 525ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_FileUnlock", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 524ll, 1ll, 0ll }, { 524ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_FileUnlockLarge", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 523ll, 1ll, 0ll }, { 525ll, 1ll, 0ll }, { 525ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_rename", (uint8*)"rename", 11ll, 3ll, (tmp$33)0ull, 0ll, 2ll, { { 1060ll, 1ll, 0ll }, { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_FileWstrInput", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"freefile", (uint8*)"fb_FileFree", 11ll, -1ll, (tmp$33)0ull, 0ll, 0ll }, { (uint8*)"eof", (uint8*)"fb_FileEof", 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"kill", (uint8*)"fb_FileKill", 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"reset", (uint8*)"fb_FileReset", 0ll, -1ll, (tmp$33)0ull, 1ll, 0ll }, { (uint8*)"reset", (uint8*)"fb_FileResetEx", 0ll, -1ll, (tmp$33)0ull, 1ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"lof", (uint8*)"fb_FileSize", 13ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"loc", (uint8*)"fb_FileLocation", 13ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"lpos", (uint8*)"fb_LPos", 11ll, -1ll, (tmp$33)&RTLPRINTER_CB, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)0ull } };

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

struct $7ASTNODE* RTLFILEOPEN( struct $7ASTNODE* FILENAME$1, struct $7ASTNODE* FMODE$1, struct $7ASTNODE* FACCESS$1, struct $7ASTNODE* FLOCK$1, struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* FLEN$1, struct $7ASTNODE* FENCODING$1, int64 ISFUNC$1, $10FBOPENKIND OPENKIND$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 DOENCODING$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DOENCODING$1 = -1ll;
	{
		if( OPENKIND$1 != 0ll ) goto label$17;
		label$18:;
		{
			if( FENCODING$1 != (struct $7ASTNODE*)0ull ) goto label$20;
			{
				struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileOpen", 224ll );
				F$1 = vr$1;
				DOENCODING$1 = 0ll;
			}
			goto label$19;
			label$20:;
			{
				struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenEncod", 225ll );
				F$1 = vr$2;
			}
			label$19:;
		}
		goto label$16;
		label$17:;
		if( OPENKIND$1 != 1ll ) goto label$21;
		label$22:;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenCons", 227ll );
			F$1 = vr$3;
		}
		goto label$16;
		label$21:;
		if( OPENKIND$1 != 2ll ) goto label$23;
		label$24:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenErr", 228ll );
			F$1 = vr$4;
		}
		goto label$16;
		label$23:;
		if( OPENKIND$1 != 3ll ) goto label$25;
		label$26:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenPipe", 229ll );
			F$1 = vr$5;
		}
		goto label$16;
		label$25:;
		if( OPENKIND$1 != 4ll ) goto label$27;
		label$28:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenScrn", 230ll );
			F$1 = vr$6;
		}
		goto label$16;
		label$27:;
		if( OPENKIND$1 != 5ll ) goto label$29;
		label$30:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenLpt", 231ll );
			F$1 = vr$7;
		}
		goto label$16;
		label$29:;
		if( OPENKIND$1 != 6ll ) goto label$31;
		label$32:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenCom", 232ll );
			F$1 = vr$8;
		}
		goto label$16;
		label$31:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenQB", 233ll );
			F$1 = vr$9;
			DOENCODING$1 = 0ll;
			{
				$13FB_COMPTARGET TMP$172$4;
				TMP$172$4 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
				if( TMP$172$4 == 0ll ) goto label$36;
				label$37:;
				if( TMP$172$4 != 1ll ) goto label$35;
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
	struct $7ASTNODE* vr$10 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$10;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, FILENAME$1, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$39;
	{
		goto label$15;
	}
	label$39:;
	label$38:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, FMODE$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$41;
	{
		goto label$15;
	}
	label$41:;
	label$40:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, FACCESS$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$43;
	{
		goto label$15;
	}
	label$43:;
	label$42:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, FLOCK$1, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$45;
	{
		goto label$15;
	}
	label$45:;
	label$44:;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$47;
	{
		goto label$15;
	}
	label$47:;
	label$46:;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, FLEN$1, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$49;
	{
		goto label$15;
	}
	label$49:;
	label$48:;
	if( DOENCODING$1 == 0ll ) goto label$51;
	{
		if( FENCODING$1 != (struct $7ASTNODE*)0ull ) goto label$53;
		{
			struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 36ll, (struct $8FBSYMBOL*)0ull );
			FENCODING$1 = vr$17;
		}
		label$53:;
		label$52:;
		struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, FENCODING$1, 2147483648ll, -1ll );
		if( vr$18 != (struct $7ASTNODE*)0ull ) goto label$55;
		{
			goto label$15;
		}
		label$55:;
		label$54:;
	}
	label$51:;
	label$50:;
	if( ISFUNC$1 != 0ll ) goto label$57;
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

struct $7ASTNODE* RTLFILEOPENSHORT( struct $7ASTNODE* FILENAME$1, struct $7ASTNODE* FMODE$1, struct $7ASTNODE* FACCESS$1, struct $7ASTNODE* FLOCK$1, struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* FLEN$1, int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$58:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileOpenShort", 226ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FMODE$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$61;
	{
		goto label$59;
	}
	label$61:;
	label$60:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$63;
	{
		goto label$59;
	}
	label$63:;
	label$62:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, FILENAME$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$65;
	{
		goto label$59;
	}
	label$65:;
	label$64:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, FLEN$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$67;
	{
		goto label$59;
	}
	label$67:;
	label$66:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, FACCESS$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$69;
	{
		goto label$59;
	}
	label$69:;
	label$68:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, FLOCK$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$71;
	{
		goto label$59;
	}
	label$71:;
	label$70:;
	if( ISFUNC$1 != 0ll ) goto label$73;
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

struct $7ASTNODE* RTLFILECLOSE( struct $7ASTNODE* FILENUM$1, int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$74:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( FILENUM$1 == (struct $7ASTNODE*)0ull ) goto label$77;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileClose", 234ll );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$2;
		struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
		if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$79;
		{
			goto label$75;
		}
		label$79:;
		label$78:;
	}
	goto label$76;
	label$77:;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_FileCloseAll", 235ll );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$5;
	}
	label$76:;
	if( ISFUNC$1 != 0ll ) goto label$81;
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

int64 RTLFILESEEK( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* NEWPOS$1 )
{
	int64 TMP$175$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$82:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 POS_DTYPE$1;
	fb$result$1 = 0ll;
	POS_DTYPE$1 = *(int64*)((uint8*)NEWPOS$1 + 8ll) & 511ll;
	if( (POS_DTYPE$1 & 480ll) == 0ll ) goto label$84;
	TMP$175$1 = 24ll;
	goto label$91;
	label$84:;
	TMP$175$1 = POS_DTYPE$1 & 31ll;
	label$91:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$175$1 * 56ll)) + 8ll) != 8ll ) goto label$86;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_FileSeekLarge", 262ll );
		F$1 = vr$6;
	}
	goto label$85;
	label$86:;
	{
		struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_FileSeek", 261ll );
		F$1 = vr$7;
	}
	label$85:;
	struct $7ASTNODE* vr$8 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$8;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$88;
	{
		goto label$83;
	}
	label$88:;
	label$87:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, NEWPOS$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$90;
	{
		goto label$83;
	}
	label$90:;
	label$89:;
	struct $7ASTNODE* vr$11 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$11 );
	fb$result$1 = -1ll;
	label$83:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILETELL( struct $7ASTNODE* FILENUM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$92:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileTell", 260ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$95;
	{
		goto label$93;
	}
	label$95:;
	label$94:;
	fb$result$1 = PROC$1;
	label$93:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEPUT( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* SRC$1, struct $7ASTNODE* ELEMENTS$1, int64 ISFUNC$1 )
{
	int64 TMP$176$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$96:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* BYTES$1;
	int64 DTYPE$1;
	int64 O_DTYPE$1;
	int64 ISSTRING$1;
	int64 ISLARGE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)SRC$1 + 8ll) & 511ll;
	int64 vr$3 = SYMBISSTRING( DTYPE$1 );
	ISSTRING$1 = vr$3;
	if( OFFSET$1 != (struct $7ASTNODE*)0ull ) goto label$99;
	{
		struct $7ASTNODE* vr$4 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		OFFSET$1 = vr$4;
	}
	label$99:;
	label$98:;
	O_DTYPE$1 = *(int64*)((uint8*)OFFSET$1 + 8ll) & 511ll;
	if( (O_DTYPE$1 & 480ll) == 0ll ) goto label$100;
	TMP$176$1 = 24ll;
	goto label$126;
	label$100:;
	TMP$176$1 = O_DTYPE$1 & 31ll;
	label$126:;
	ISLARGE$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$176$1 * 56ll)) + 8ll) == 8ll);
	if( ISSTRING$1 == 0ll ) goto label$102;
	{
		if( ISLARGE$1 == 0ll ) goto label$104;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_FilePutStrLarge", 239ll );
			F$1 = vr$11;
		}
		goto label$103;
		label$104:;
		{
			struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_FilePutStr", 238ll );
			F$1 = vr$12;
		}
		label$103:;
	}
	goto label$101;
	label$102:;
	{
		if( ISLARGE$1 == 0ll ) goto label$106;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_FilePutLarge", 237ll );
			F$1 = vr$13;
		}
		goto label$105;
		label$106:;
		{
			struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_FilePut", 236ll );
			F$1 = vr$14;
		}
		label$105:;
	}
	label$101:;
	struct $7ASTNODE* vr$15 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$15;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$108;
	{
		goto label$97;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, OFFSET$1, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$110;
	{
		goto label$97;
	}
	label$110:;
	label$109:;
	if( ISSTRING$1 == 0ll ) goto label$112;
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
	if( ELEMENTS$1 != (struct $7ASTNODE*)0ull ) goto label$114;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		BYTES$1 = vr$20;
	}
	goto label$113;
	label$114:;
	{
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$22 = ASTNEWBOP( 30ll, ELEMENTS$1, vr$21, (struct $8FBSYMBOL*)0ull, 1ll );
		BYTES$1 = vr$22;
	}
	label$113:;
	if( (*(int64*)((uint8*)SRC$1 + 8ll) & 511ll) != 20ll ) goto label$116;
	{
		if( ((int64)*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 16ll) + 208ll) & 4ll) == 0ll ) goto label$118;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 10ll );
		}
		label$118:;
		label$117:;
	}
	goto label$115;
	label$116:;
	if( ((*(int64*)((uint8*)SRC$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$119;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 29ll );
	}
	label$119:;
	label$115:;
	struct $7ASTNODE* vr$34 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$34 != (struct $7ASTNODE*)0ull ) goto label$121;
	{
		goto label$97;
	}
	label$121:;
	label$120:;
	struct $7ASTNODE* vr$35 = ASTNEWARG( PROC$1, BYTES$1, 2147483648ll, -1ll );
	if( vr$35 != (struct $7ASTNODE*)0ull ) goto label$123;
	{
		goto label$97;
	}
	label$123:;
	label$122:;
	if( ISFUNC$1 != 0ll ) goto label$125;
	{
		struct $7ASTNODE* vr$36 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$36 );
	}
	label$125:;
	label$124:;
	fb$result$1 = PROC$1;
	label$97:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEPUTARRAY( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* SRC$1, int64 ISFUNC$1 )
{
	int64 TMP$177$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$127:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 O_DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( OFFSET$1 != (struct $7ASTNODE*)0ull ) goto label$130;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		OFFSET$1 = vr$1;
	}
	label$130:;
	label$129:;
	O_DTYPE$1 = *(int64*)((uint8*)OFFSET$1 + 8ll) & 511ll;
	if( (O_DTYPE$1 & 480ll) == 0ll ) goto label$131;
	TMP$177$1 = 24ll;
	goto label$147;
	label$131:;
	TMP$177$1 = O_DTYPE$1 & 31ll;
	label$147:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$177$1 * 56ll)) + 8ll) != 8ll ) goto label$133;
	{
		struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_FilePutArrayLarge", 243ll );
		F$1 = vr$7;
	}
	goto label$132;
	label$133:;
	{
		struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_FilePutArray", 242ll );
		F$1 = vr$8;
	}
	label$132:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$135;
	{
		goto label$128;
	}
	label$135:;
	label$134:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, OFFSET$1, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$137;
	{
		goto label$128;
	}
	label$137:;
	label$136:;
	if( (*(int64*)((uint8*)SRC$1 + 8ll) & 511ll) != 20ll ) goto label$139;
	{
		if( ((int64)*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 16ll) + 208ll) & 4ll) == 0ll ) goto label$141;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 10ll );
		}
		label$141:;
		label$140:;
	}
	goto label$138;
	label$139:;
	if( ((*(int64*)((uint8*)SRC$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$142;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 29ll );
	}
	label$142:;
	label$138:;
	struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$23 != (struct $7ASTNODE*)0ull ) goto label$144;
	{
		goto label$128;
	}
	label$144:;
	label$143:;
	if( ISFUNC$1 != 0ll ) goto label$146;
	{
		struct $7ASTNODE* vr$24 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$24 );
	}
	label$146:;
	label$145:;
	fb$result$1 = PROC$1;
	label$128:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEGET( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* DST$1, struct $7ASTNODE* ELEMENTS$1, struct $7ASTNODE* IOBYTES$1, int64 ISFUNC$1 )
{
	int64 TMP$178$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$148:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* BYTES$1;
	int64 DTYPE$1;
	int64 O_DTYPE$1;
	int64 ISSTRING$1;
	int64 ISLARGE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)DST$1 + 8ll) & 511ll;
	int64 vr$3 = SYMBISSTRING( DTYPE$1 );
	ISSTRING$1 = vr$3;
	int64 ISWSTR$1;
	ISWSTR$1 = (int64)-(DTYPE$1 == 7ll);
	if( OFFSET$1 != (struct $7ASTNODE*)0ull ) goto label$151;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		OFFSET$1 = vr$5;
	}
	label$151:;
	label$150:;
	O_DTYPE$1 = *(int64*)((uint8*)OFFSET$1 + 8ll) & 511ll;
	if( (O_DTYPE$1 & 480ll) == 0ll ) goto label$152;
	TMP$178$1 = 24ll;
	goto label$198;
	label$152:;
	TMP$178$1 = O_DTYPE$1 & 31ll;
	label$198:;
	ISLARGE$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$178$1 * 56ll)) + 8ll) == 8ll);
	if( IOBYTES$1 == (struct $7ASTNODE*)0ull ) goto label$154;
	{
		if( ISSTRING$1 == 0ll ) goto label$156;
		{
			if( ISLARGE$1 == 0ll ) goto label$158;
			{
				if( ISWSTR$1 == 0ll ) goto label$160;
				{
					struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstrLargeIOB", 257ll );
					F$1 = vr$12;
				}
				goto label$159;
				label$160:;
				{
					struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStrLargeIOB", 255ll );
					F$1 = vr$13;
				}
				label$159:;
			}
			goto label$157;
			label$158:;
			{
				if( ISWSTR$1 == 0ll ) goto label$162;
				{
					struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstrIOB", 256ll );
					F$1 = vr$14;
				}
				goto label$161;
				label$162:;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStrIOB", 254ll );
					F$1 = vr$15;
				}
				label$161:;
			}
			label$157:;
		}
		goto label$155;
		label$156:;
		{
			if( ISLARGE$1 == 0ll ) goto label$164;
			{
				struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_FileGetLargeIOB", 253ll );
				F$1 = vr$16;
			}
			goto label$163;
			label$164:;
			{
				struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_FileGetIOB", 252ll );
				F$1 = vr$17;
			}
			label$163:;
		}
		label$155:;
	}
	goto label$153;
	label$154:;
	{
		if( ISSTRING$1 == 0ll ) goto label$166;
		{
			if( ISLARGE$1 == 0ll ) goto label$168;
			{
				if( ISWSTR$1 == 0ll ) goto label$170;
				{
					struct $8FBSYMBOL* vr$18 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstrLarge", 249ll );
					F$1 = vr$18;
				}
				goto label$169;
				label$170:;
				{
					struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStrLarge", 247ll );
					F$1 = vr$19;
				}
				label$169:;
			}
			goto label$167;
			label$168:;
			{
				if( ISWSTR$1 == 0ll ) goto label$172;
				{
					struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_FileGetWstr", 248ll );
					F$1 = vr$20;
				}
				goto label$171;
				label$172:;
				{
					struct $8FBSYMBOL* vr$21 = RTLPROCLOOKUP( (uint8*)"fb_FileGetStr", 246ll );
					F$1 = vr$21;
				}
				label$171:;
			}
			label$167:;
		}
		goto label$165;
		label$166:;
		{
			if( ISLARGE$1 == 0ll ) goto label$174;
			{
				struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_FileGetLarge", 245ll );
				F$1 = vr$22;
			}
			goto label$173;
			label$174:;
			{
				struct $8FBSYMBOL* vr$23 = RTLPROCLOOKUP( (uint8*)"fb_FileGet", 244ll );
				F$1 = vr$23;
			}
			label$173:;
		}
		label$165:;
	}
	label$153:;
	struct $7ASTNODE* vr$24 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$24;
	struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$25 != (struct $7ASTNODE*)0ull ) goto label$176;
	{
		goto label$149;
	}
	label$176:;
	label$175:;
	struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, OFFSET$1, 2147483648ll, -1ll );
	if( vr$26 != (struct $7ASTNODE*)0ull ) goto label$178;
	{
		goto label$149;
	}
	label$178:;
	label$177:;
	if( ISSTRING$1 == 0ll ) goto label$180;
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
	if( ELEMENTS$1 != (struct $7ASTNODE*)0ull ) goto label$182;
	{
		struct $7ASTNODE* vr$29 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		BYTES$1 = vr$29;
	}
	goto label$181;
	label$182:;
	{
		struct $7ASTNODE* vr$30 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$31 = ASTNEWBOP( 30ll, ELEMENTS$1, vr$30, (struct $8FBSYMBOL*)0ull, 1ll );
		BYTES$1 = vr$31;
	}
	label$181:;
	if( DTYPE$1 != 20ll ) goto label$184;
	{
		if( ((int64)*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 16ll) + 208ll) & 4ll) == 0ll ) goto label$186;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 10ll );
		}
		label$186:;
		label$185:;
	}
	goto label$183;
	label$184:;
	if( ((*(int64*)((uint8*)DST$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$187;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 29ll );
	}
	label$187:;
	label$183:;
	struct $7ASTNODE* vr$41 = ASTNEWARG( PROC$1, DST$1, 2147483648ll, -1ll );
	if( vr$41 != (struct $7ASTNODE*)0ull ) goto label$189;
	{
		goto label$149;
	}
	label$189:;
	label$188:;
	struct $7ASTNODE* vr$42 = ASTNEWARG( PROC$1, BYTES$1, 2147483648ll, -1ll );
	if( vr$42 != (struct $7ASTNODE*)0ull ) goto label$191;
	{
		goto label$149;
	}
	label$191:;
	label$190:;
	if( IOBYTES$1 == (struct $7ASTNODE*)0ull ) goto label$193;
	{
		struct $7ASTNODE* vr$43 = ASTNEWARG( PROC$1, IOBYTES$1, 2147483648ll, -1ll );
		if( vr$43 != (struct $7ASTNODE*)0ull ) goto label$195;
		{
			goto label$149;
		}
		label$195:;
		label$194:;
	}
	label$193:;
	label$192:;
	if( ISFUNC$1 != 0ll ) goto label$197;
	{
		struct $7ASTNODE* vr$44 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$44 );
	}
	label$197:;
	label$196:;
	fb$result$1 = PROC$1;
	label$149:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILEGETARRAY( struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* OFFSET$1, struct $7ASTNODE* DST$1, struct $7ASTNODE* IOBYTES$1, int64 ISFUNC$1 )
{
	int64 TMP$179$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$199:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 O_DTYPE$1;
	int64 ISLARGE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( OFFSET$1 != (struct $7ASTNODE*)0ull ) goto label$202;
	{
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		OFFSET$1 = vr$1;
	}
	label$202:;
	label$201:;
	O_DTYPE$1 = *(int64*)((uint8*)OFFSET$1 + 8ll) & 511ll;
	if( (O_DTYPE$1 & 480ll) == 0ll ) goto label$203;
	TMP$179$1 = 24ll;
	goto label$227;
	label$203:;
	TMP$179$1 = O_DTYPE$1 & 31ll;
	label$227:;
	ISLARGE$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$179$1 * 56ll)) + 8ll) == 8ll);
	if( IOBYTES$1 == (struct $7ASTNODE*)0ull ) goto label$205;
	{
		if( ISLARGE$1 == 0ll ) goto label$207;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArrayLargeIOB", 259ll );
			F$1 = vr$8;
		}
		goto label$206;
		label$207:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArrayIOB", 258ll );
			F$1 = vr$9;
		}
		label$206:;
	}
	goto label$204;
	label$205:;
	{
		if( ISLARGE$1 == 0ll ) goto label$209;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArrayLarge", 251ll );
			F$1 = vr$10;
		}
		goto label$208;
		label$209:;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_FileGetArray", 250ll );
			F$1 = vr$11;
		}
		label$208:;
	}
	label$204:;
	struct $7ASTNODE* vr$12 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$211;
	{
		goto label$200;
	}
	label$211:;
	label$210:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, OFFSET$1, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$213;
	{
		goto label$200;
	}
	label$213:;
	label$212:;
	if( (*(int64*)((uint8*)DST$1 + 8ll) & 511ll) != 20ll ) goto label$215;
	{
		if( ((int64)*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 16ll) + 208ll) & 4ll) == 0ll ) goto label$217;
		{
			ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 10ll );
		}
		label$217:;
		label$216:;
	}
	goto label$214;
	label$215:;
	if( ((*(int64*)((uint8*)DST$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$218;
	{
		ERRREPORTPARAMWARN( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), 3ll, (uint8*)0ull, 29ll );
	}
	label$218:;
	label$214:;
	struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, DST$1, 2147483648ll, -1ll );
	if( vr$26 != (struct $7ASTNODE*)0ull ) goto label$220;
	{
		goto label$200;
	}
	label$220:;
	label$219:;
	if( IOBYTES$1 == (struct $7ASTNODE*)0ull ) goto label$222;
	{
		struct $7ASTNODE* vr$27 = ASTNEWARG( PROC$1, IOBYTES$1, 2147483648ll, -1ll );
		if( vr$27 != (struct $7ASTNODE*)0ull ) goto label$224;
		{
			goto label$200;
		}
		label$224:;
		label$223:;
	}
	label$222:;
	label$221:;
	if( ISFUNC$1 != 0ll ) goto label$226;
	{
		struct $7ASTNODE* vr$28 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$28 );
	}
	label$226:;
	label$225:;
	fb$result$1 = PROC$1;
	label$200:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILESTRINPUT( struct $7ASTNODE* BYTESEXPR$1, struct $7ASTNODE* FILENUM$1, int64 TK$1 )
{
	struct $8FBSYMBOL* TMP$180$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$228:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( TK$1 != 479ll ) goto label$230;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileWstrInput", 264ll );
	TMP$180$1 = vr$1;
	goto label$235;
	label$230:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_FileStrInput", 263ll );
	TMP$180$1 = vr$2;
	label$235:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$180$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, BYTESEXPR$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$232;
	{
		goto label$229;
	}
	label$232:;
	label$231:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$234;
	{
		goto label$229;
	}
	label$234:;
	label$233:;
	fb$result$1 = PROC$1;
	label$229:;
	return fb$result$1;
}

int64 RTLFILELINEINPUT( int64 ISFILE$1, struct $7ASTNODE* EXPR$1, struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* MAXLENEXPR$1, int64 ADDQUESTION$1, int64 ADDNEWLINE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$236:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 ARGS$1;
	int64 DTYPE$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	if( ISFILE$1 == 0ll ) goto label$239;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileLineInput", 265ll );
		F$1 = vr$1;
		ARGS$1 = 4ll;
	}
	goto label$238;
	label$239:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_LineInput", 267ll );
		F$1 = vr$2;
		ARGS$1 = 6ll;
	}
	label$238:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	if( ((int64)-(ISFILE$1 == 0ll) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$241;
	{
		struct $8FBSYMBOL* vr$7 = SYMBALLOCSTRCONST( (uint8*)"", 0ll );
		struct $7ASTNODE* vr$8 = ASTNEWVAR( vr$7, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$8;
	}
	label$241:;
	label$240:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$243;
	{
		goto label$237;
	}
	label$243:;
	label$242:;
	DTYPE$1 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
	int64 vr$12 = RTLCALCSTRLEN( DSTEXPR$1, DTYPE$1 );
	LGT$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DSTEXPR$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$245;
	{
		goto label$237;
	}
	label$245:;
	label$244:;
	if( ((int64)-(LGT$1 == 0ll) & (int64)-(MAXLENEXPR$1 != (struct $7ASTNODE*)0ull)) == 0ll ) goto label$247;
	{
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, MAXLENEXPR$1, 2147483648ll, -1ll );
		if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$249;
		{
			goto label$237;
		}
		label$249:;
		label$248:;
	}
	goto label$246;
	label$247:;
	{
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
		if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$251;
		{
			goto label$237;
		}
		label$251:;
		label$250:;
	}
	label$246:;
	struct $7ASTNODE* vr$21 = ASTNEWCONSTI( (int64)-(DTYPE$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, vr$21, 2147483648ll, -1ll );
	if( vr$22 != (struct $7ASTNODE*)0ull ) goto label$253;
	{
		goto label$237;
	}
	label$253:;
	label$252:;
	if( ARGS$1 != 6ll ) goto label$255;
	{
		struct $7ASTNODE* vr$23 = ASTNEWCONSTI( ADDQUESTION$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$24 = ASTNEWARG( PROC$1, vr$23, 2147483648ll, -1ll );
		if( vr$24 != (struct $7ASTNODE*)0ull ) goto label$257;
		{
			goto label$237;
		}
		label$257:;
		label$256:;
		struct $7ASTNODE* vr$25 = ASTNEWCONSTI( ADDNEWLINE$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$26 = ASTNEWARG( PROC$1, vr$25, 2147483648ll, -1ll );
		if( vr$26 != (struct $7ASTNODE*)0ull ) goto label$259;
		{
			goto label$237;
		}
		label$259:;
		label$258:;
	}
	label$255:;
	label$254:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$237:;
	return fb$result$1;
}

int64 RTLFILELINEINPUTWSTR( int64 ISFILE$1, struct $7ASTNODE* EXPR$1, struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* MAXLENEXPR$1, int64 ADDQUESTION$1, int64 ADDNEWLINE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$260:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 ARGS$1;
	int64 DTYPE$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	if( ISFILE$1 == 0ll ) goto label$263;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileLineInputWstr", 266ll );
		F$1 = vr$1;
		ARGS$1 = 3ll;
	}
	goto label$262;
	label$263:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_LineInputWstr", 268ll );
		F$1 = vr$2;
		ARGS$1 = 5ll;
	}
	label$262:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	if( ((int64)-(ISFILE$1 == 0ll) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$265;
	{
		struct $8FBSYMBOL* vr$7 = SYMBALLOCWSTRCONST( (uint32*)L"", 0ll );
		struct $7ASTNODE* vr$8 = ASTNEWVAR( vr$7, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$8;
	}
	label$265:;
	label$264:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$267;
	{
		goto label$261;
	}
	label$267:;
	label$266:;
	DTYPE$1 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
	int64 vr$12 = RTLCALCSTRLEN( DSTEXPR$1, DTYPE$1 );
	LGT$1 = vr$12;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DSTEXPR$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$269;
	{
		goto label$261;
	}
	label$269:;
	label$268:;
	if( ((int64)-(LGT$1 == 0ll) & (int64)-(MAXLENEXPR$1 != (struct $7ASTNODE*)0ull)) == 0ll ) goto label$271;
	{
		struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, MAXLENEXPR$1, 2147483648ll, -1ll );
		if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$273;
		{
			goto label$261;
		}
		label$273:;
		label$272:;
	}
	goto label$270;
	label$271:;
	{
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
		if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$275;
		{
			goto label$261;
		}
		label$275:;
		label$274:;
	}
	label$270:;
	if( ARGS$1 != 5ll ) goto label$277;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( ADDQUESTION$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$21 = ASTNEWARG( PROC$1, vr$20, 2147483648ll, -1ll );
		if( vr$21 != (struct $7ASTNODE*)0ull ) goto label$279;
		{
			goto label$261;
		}
		label$279:;
		label$278:;
		struct $7ASTNODE* vr$22 = ASTNEWCONSTI( ADDNEWLINE$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, vr$22, 2147483648ll, -1ll );
		if( vr$23 != (struct $7ASTNODE*)0ull ) goto label$281;
		{
			goto label$261;
		}
		label$281:;
		label$280:;
	}
	label$277:;
	label$276:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$261:;
	return fb$result$1;
}

int64 RTLFILEINPUT( int64 ISFILE$1, struct $7ASTNODE* EXPR$1, int64 ADDQUESTION$1, int64 ADDNEWLINE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$282:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 ARGS$1;
	fb$result$1 = 0ll;
	if( ISFILE$1 == 0ll ) goto label$285;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_FileInput", 269ll );
		F$1 = vr$1;
		ARGS$1 = 1ll;
	}
	goto label$284;
	label$285:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_ConsoleInput", 270ll );
		F$1 = vr$2;
		ARGS$1 = 3ll;
	}
	label$284:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	if( ((int64)-(ISFILE$1 == 0ll) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$287;
	{
		struct $8FBSYMBOL* vr$7 = SYMBALLOCSTRCONST( (uint8*)"", 0ll );
		struct $7ASTNODE* vr$8 = ASTNEWVAR( vr$7, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$8;
	}
	label$287:;
	label$286:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$289;
	{
		goto label$283;
	}
	label$289:;
	label$288:;
	if( ARGS$1 != 3ll ) goto label$291;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( ADDQUESTION$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, 2147483648ll, -1ll );
		if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$293;
		{
			goto label$283;
		}
		label$293:;
		label$292:;
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( ADDNEWLINE$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, vr$12, 2147483648ll, -1ll );
		if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$295;
		{
			goto label$283;
		}
		label$295:;
		label$294:;
	}
	label$291:;
	label$290:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$283:;
	return fb$result$1;
}

int64 RTLFILEINPUTGET( struct $7ASTNODE* DSTEXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$296:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 ARGS$1;
	int64 DTYPE$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	ARGS$1 = 1ll;
	DTYPE$1 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
	{
		int64 TMP$182$2;
		uint64 TMP$183$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$298;
		TMP$182$2 = 24ll;
		goto label$331;
		label$298:;
		TMP$182$2 = DTYPE$1 & 31ll;
		label$331:;
		TMP$183$2 = (uint64)TMP$182$2;
		goto label$300;
		label$301:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_InputString", 282ll );
			F$1 = vr$5;
			ARGS$1 = 3ll;
		}
		goto label$299;
		label$302:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_InputWstr", 283ll );
			F$1 = vr$6;
			ARGS$1 = 2ll;
		}
		goto label$299;
		label$303:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_InputBool", 271ll );
			F$1 = vr$7;
		}
		goto label$299;
		label$304:;
		{
			{
				int64 TMP$184$4;
				uint64 TMP$185$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$305;
				TMP$184$4 = 24ll;
				goto label$332;
				label$305:;
				TMP$184$4 = DTYPE$1 & 31ll;
				label$332:;
				TMP$185$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$184$4 * 56ll)) + 40ll);
				goto label$307;
				label$308:;
				{
					struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_InputByte", 272ll );
					F$1 = vr$11;
				}
				goto label$306;
				label$309:;
				{
					struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_InputUbyte", 273ll );
					F$1 = vr$12;
				}
				goto label$306;
				label$310:;
				{
					struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_InputShort", 274ll );
					F$1 = vr$13;
				}
				goto label$306;
				label$311:;
				{
					struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_InputUshort", 275ll );
					F$1 = vr$14;
				}
				goto label$306;
				label$312:;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_InputInt", 276ll );
					F$1 = vr$15;
				}
				goto label$306;
				label$313:;
				{
					struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_InputUint", 277ll );
					F$1 = vr$16;
				}
				goto label$306;
				label$314:;
				{
					struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_InputLongint", 278ll );
					F$1 = vr$17;
				}
				goto label$306;
				label$315:;
				{
					struct $8FBSYMBOL* vr$18 = RTLPROCLOOKUP( (uint8*)"fb_InputUlongint", 279ll );
					F$1 = vr$18;
				}
				goto label$306;
				label$307:;
				static const void* tmp$186[8ll] = {
					&&label$308,
					&&label$309,
					&&label$310,
					&&label$311,
					&&label$312,
					&&label$313,
					&&label$314,
					&&label$315,
				};
				if( (TMP$185$4 - 1ull) > 7ull ) goto label$306;
				goto *tmp$186[TMP$185$4 - 1ull];
				label$306:;
			}
		}
		goto label$299;
		label$316:;
		{
			struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_InputSingle", 280ll );
			F$1 = vr$19;
		}
		goto label$299;
		label$317:;
		{
			struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_InputDouble", 281ll );
			F$1 = vr$20;
		}
		goto label$299;
		label$318:;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			goto label$297;
		}
		goto label$299;
		label$300:;
		static const void* tmp$187[24ll] = {
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
		if( (TMP$183$2 - 1ull) > 23ull ) goto label$318;
		goto *tmp$187[TMP$183$2 - 1ull];
		label$299:;
	}
	struct $7ASTNODE* vr$21 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$21;
	if( ARGS$1 <= 1ll ) goto label$320;
	{
		int64 vr$22 = RTLCALCSTRLEN( DSTEXPR$1, DTYPE$1 );
		LGT$1 = vr$22;
	}
	label$320:;
	label$319:;
	struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, DSTEXPR$1, 2147483648ll, -1ll );
	if( vr$23 != (struct $7ASTNODE*)0ull ) goto label$322;
	{
		goto label$297;
	}
	label$322:;
	label$321:;
	if( ARGS$1 <= 1ll ) goto label$324;
	{
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$25 = ASTNEWARG( PROC$1, vr$24, 2147483648ll, -1ll );
		if( vr$25 != (struct $7ASTNODE*)0ull ) goto label$326;
		{
			goto label$297;
		}
		label$326:;
		label$325:;
		if( ARGS$1 <= 2ll ) goto label$328;
		{
			struct $7ASTNODE* vr$27 = ASTNEWCONSTI( (int64)-(DTYPE$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$28 = ASTNEWARG( PROC$1, vr$27, 2147483648ll, -1ll );
			if( vr$28 != (struct $7ASTNODE*)0ull ) goto label$330;
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
	fb$result$1 = -1ll;
	label$297:;
	return fb$result$1;
}

int64 RTLFILELOCK( int64 ISLOCK$1, struct $7ASTNODE* FILENUM$1, struct $7ASTNODE* INIEXPR$1, struct $7ASTNODE* ENDEXPR$1 )
{
	int64 TMP$188$1;
	int64 TMP$189$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$333:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 ISLARGE$1;
	int64 I_DTYPE$1;
	int64 E_DTYPE$1;
	fb$result$1 = 0ll;
	I_DTYPE$1 = *(int64*)((uint8*)INIEXPR$1 + 8ll) & 511ll;
	E_DTYPE$1 = *(int64*)((uint8*)ENDEXPR$1 + 8ll) & 511ll;
	if( (I_DTYPE$1 & 480ll) == 0ll ) goto label$335;
	TMP$188$1 = 24ll;
	goto label$349;
	label$335:;
	TMP$188$1 = I_DTYPE$1 & 31ll;
	label$349:;
	if( (E_DTYPE$1 & 480ll) == 0ll ) goto label$336;
	TMP$189$1 = 24ll;
	goto label$350;
	label$336:;
	TMP$189$1 = E_DTYPE$1 & 31ll;
	label$350:;
	ISLARGE$1 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$188$1 * 56ll)) + 8ll) == 8ll) | (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$189$1 * 56ll)) + 8ll) == 8ll);
	if( ISLOCK$1 == 0ll ) goto label$338;
	{
		if( ISLARGE$1 == 0ll ) goto label$340;
		{
			struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_FileLockLarge", 285ll );
			F$1 = vr$14;
		}
		goto label$339;
		label$340:;
		{
			struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_FileLock", 284ll );
			F$1 = vr$15;
		}
		label$339:;
	}
	goto label$337;
	label$338:;
	{
		if( ISLARGE$1 == 0ll ) goto label$342;
		{
			struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_FileUnlockLarge", 287ll );
			F$1 = vr$16;
		}
		goto label$341;
		label$342:;
		{
			struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_FileUnlock", 286ll );
			F$1 = vr$17;
		}
		label$341:;
	}
	label$337:;
	struct $7ASTNODE* vr$18 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$18;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, FILENUM$1, 2147483648ll, -1ll );
	if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$344;
	{
		goto label$334;
	}
	label$344:;
	label$343:;
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, INIEXPR$1, 2147483648ll, -1ll );
	if( vr$20 != (struct $7ASTNODE*)0ull ) goto label$346;
	{
		goto label$334;
	}
	label$346:;
	label$345:;
	struct $7ASTNODE* vr$21 = ASTNEWARG( PROC$1, ENDEXPR$1, 2147483648ll, -1ll );
	if( vr$21 != (struct $7ASTNODE*)0ull ) goto label$348;
	{
		goto label$334;
	}
	label$348:;
	label$347:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$334:;
	return fb$result$1;
}

struct $7ASTNODE* RTLFILERENAME( struct $7ASTNODE* FILENAME_NEW$1, struct $7ASTNODE* FILENAME_OLD$1, int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$351:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_rename", 288ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILENAME_OLD$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$354;
	{
		goto label$352;
	}
	label$354:;
	label$353:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, FILENAME_NEW$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$356;
	{
		goto label$352;
	}
	label$356:;
	label$355:;
	if( ISFUNC$1 != 0ll ) goto label$358;
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

struct $7ASTNODE* RTLWIDTHFILE( struct $7ASTNODE* FNUM$1, struct $7ASTNODE* WIDTH_ARG$1, int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$359:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WidthFile", 291ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FNUM$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$362;
	{
		goto label$360;
	}
	label$362:;
	label$361:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, WIDTH_ARG$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$364;
	{
		goto label$360;
	}
	label$364:;
	label$363:;
	if( ISFUNC$1 != 0ll ) goto label$366;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}
