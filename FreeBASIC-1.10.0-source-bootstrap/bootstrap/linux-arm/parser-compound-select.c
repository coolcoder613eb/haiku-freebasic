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
typedef int32 $13AST_NODECLASS;
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
typedef int32 $11FB_DATATYPE;
struct $8FBSYMBOL;
struct $7ASTNODE;
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
typedef int32 $8FB_TOKEN;
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
typedef int32 $11FB_CASETYPE;
struct $9FBCASECTX {
	$11FB_CASETYPE TYP;
	int32 OP;
	struct $7ASTNODE* EXPR1;
	struct $7ASTNODE* EXPR2;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBCASECTX ) == 16 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzcompoundzselect( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTSCOPEBEGIN( void );
void ASTSCOPEEND( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
void ASTADDUNSCOPED( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWBRANCH( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int32 );
int32 ASTGETINVERSELOGOP( int32 );
struct $7ASTNODE* ASTGETEFFECTIVENODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREBUILDWITHOUTEFFECTIVEPART( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDFAKEWSTRINGACCESS( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDFAKEWSTRINGASSIGN( struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDIMPLICITVAR( int32, struct $8FBSYMBOL*, int32 );
int32 HFBRELOP2IRRELOP( int32 );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int32 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
void CSELCONSTSTMTBEGIN( void );
void CSELCONSTSTMTNEXT( struct $13FB_CMPSTMTSTK* );
void CSELCONSTSTMTEND( struct $13FB_CMPSTMTSTK* );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static void HCASEEXPRESSION( struct $9FBCASECTX*, struct $8FBSYMBOL* );
static int32 HFLUSHCASEEXPR( struct $9FBCASECTX*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32 );
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
struct $5FBCTX {
	int32 BASE;
	struct $9FBCASECTX CASETB[1024];
};
__FB_STATIC_ASSERT( sizeof( struct $5FBCTX ) == 16388 );
static struct $5FBCTX CTX$;

void PARSERSELECTSTMTINIT( void )
{
	label$10:;
	*(int32*)&CTX$ = 0;
	label$11:;
}

void PARSERSELECTSTMTEND( void )
{
	label$12:;
	label$13:;
}

void CSELECTSTMTBEGIN( void )
{
	label$14:;
	struct $7ASTNODE* EXPR$1;
	int32 DTYPE$1;
	int32 OPTIONS$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* EL$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	LEXSKIPTOKEN( 2048 );
	int32 vr$0 = HMATCH( 271, 2048 );
	if( vr$0 != 0 ) goto label$17;
	{
		ERRREPORT( 34, 0, (uint8*)0u );
	}
	label$17:;
	label$16:;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 376 ) goto label$19;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$2 = HMATCH( 335, 2048 );
		if( vr$2 == 0 ) goto label$21;
		{
			CSELCONSTSTMTBEGIN(  );
			goto label$15;
		}
		label$21:;
		label$20:;
		ERRREPORT( 17, 0, (uint8*)0u );
	}
	label$19:;
	label$18:;
	struct $7ASTNODE* OUTERSCOPENODE$1;
	struct $7ASTNODE* vr$3 = ASTSCOPEBEGIN(  );
	OUTERSCOPENODE$1 = vr$3;
	if( OUTERSCOPENODE$1 != (struct $7ASTNODE*)0u ) goto label$23;
	{
		ERRREPORT( 27, 0, (uint8*)0u );
	}
	label$23:;
	label$22:;
	struct $7ASTNODE* vr$4 = CEXPRESSION(  );
	EXPR$1 = vr$4;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$25;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$5;
	}
	label$25:;
	label$24:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 20 ) goto label$27;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$9;
	}
	label$27:;
	label$26:;
	struct $8FBSYMBOL* vr$10 = SYMBADDLABEL( (uint8*)0u, 0 );
	EL$1 = vr$10;
	SYM$1 = (struct $8FBSYMBOL*)0u;
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
	struct $7ASTNODE* EFFECTIVEEXPR$1;
	struct $7ASTNODE* vr$13 = ASTGETEFFECTIVENODE( EXPR$1 );
	EFFECTIVEEXPR$1 = vr$13;
	if( *(int32*)EFFECTIVEEXPR$1 != 17 ) goto label$29;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)EFFECTIVEEXPR$1 + 12);
		struct $7ASTNODE* vr$16 = ASTREBUILDWITHOUTEFFECTIVEPART( EXPR$1 );
		ASTADD( vr$16 );
	}
	goto label$28;
	label$29:;
	{
		int32 TMP$95$2;
		{
			int32 TMP$93$3;
			int32 TMP$94$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$30;
			TMP$93$3 = 24;
			goto label$47;
			label$30:;
			TMP$93$3 = DTYPE$1 & 31;
			label$47:;
			TMP$94$3 = TMP$93$3;
			if( TMP$94$3 == 18 ) goto label$33;
			label$34:;
			if( TMP$94$3 != 4 ) goto label$32;
			label$33:;
			{
				DTYPE$1 = 17;
			}
			label$32:;
			label$31:;
		}
		OPTIONS$1 = 0;
		if( (*(int32*)((uint8*)&ENV$ + 1040) & 2) != 0 ) goto label$36;
		{
			OPTIONS$1 = OPTIONS$1 | 2;
		}
		label$36:;
		label$35:;
		if( (DTYPE$1 & 480) == 0 ) goto label$37;
		TMP$95$2 = 24;
		goto label$48;
		label$37:;
		TMP$95$2 = DTYPE$1 & 31;
		label$48:;
		if( TMP$95$2 == 7 ) goto label$39;
		{
			int32 TMP$96$3;
			struct $8FBSYMBOL* vr$23 = SYMBADDIMPLICITVAR( DTYPE$1, SUBTYPE$1, OPTIONS$1 );
			SYM$1 = vr$23;
			if( (DTYPE$1 & 480) == 0 ) goto label$40;
			TMP$96$3 = 24;
			goto label$49;
			label$40:;
			TMP$96$3 = DTYPE$1 & 31;
			label$49:;
			if( TMP$96$3 == 17 ) goto label$42;
			{
				*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 2048;
			}
			label$42:;
			label$41:;
			if( (OPTIONS$1 & 2) == 0 ) goto label$44;
			{
				struct $7ASTNODE* vr$30 = ASTNEWDECL( SYM$1, -1 );
				ASTADDUNSCOPED( vr$30 );
				struct $7ASTNODE* vr$31 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$32 = ASTNEWASSIGN( vr$31, EXPR$1, 0 );
				ASTADD( vr$32 );
			}
			goto label$43;
			label$44:;
			{
				struct $7ASTNODE* vr$33 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$34 = ASTNEWASSIGN( vr$33, EXPR$1, 64 );
				struct $7ASTNODE* vr$35 = ASTNEWDECL( SYM$1, 0 );
				struct $7ASTNODE* vr$36 = ASTNEWLINK( vr$35, vr$34, 0 );
				ASTADD( vr$36 );
			}
			label$43:;
		}
		goto label$38;
		label$39:;
		{
			struct $8FBSYMBOL* vr$37 = SYMBADDIMPLICITVAR( 39, (struct $8FBSYMBOL*)0u, OPTIONS$1 );
			SYM$1 = vr$37;
			*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 16777216;
			if( (OPTIONS$1 & 2) == 0 ) goto label$46;
			{
				struct $7ASTNODE* vr$42 = ASTNEWDECL( SYM$1, -1 );
				ASTADDUNSCOPED( vr$42 );
				struct $7ASTNODE* vr$43 = ASTBUILDFAKEWSTRINGASSIGN( SYM$1, EXPR$1, 0 );
				ASTADD( vr$43 );
			}
			goto label$45;
			label$46:;
			{
				struct $7ASTNODE* vr$44 = ASTBUILDFAKEWSTRINGASSIGN( SYM$1, EXPR$1, 64 );
				struct $7ASTNODE* vr$45 = ASTNEWDECL( SYM$1, 0 );
				struct $7ASTNODE* vr$46 = ASTNEWLINK( vr$45, vr$44, 0 );
				ASTADD( vr$46 );
			}
			label$45:;
		}
		label$38:;
	}
	label$28:;
	struct $13FB_CMPSTMTSTK* vr$47 = CCOMPSTMTPUSH( 270, 0 );
	STK$1 = vr$47;
	*(int32*)((uint8*)STK$1 + 16) = 0;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 20) = SYM$1;
	*(int32*)((uint8*)STK$1 + 24) = 0;
	struct $8FBSYMBOL* vr$51 = SYMBADDLABEL( (uint8*)0u, 0 );
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56) = vr$51;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 60) = EL$1;
	*(struct $7ASTNODE**)((uint8*)STK$1 + 68) = OUTERSCOPENODE$1;
	label$15:;
}

void CSELECTSTMTNEXT( void )
{
	label$77:;
	struct $8FBSYMBOL* IL$1;
	struct $8FBSYMBOL* NL$1;
	int32 CNT$1;
	int32 I$1;
	int32 CNTBASE$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 270, 0 );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$80;
	{
		ERRREPORT( 118, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$78;
	}
	label$80:;
	label$79:;
	if( *(int32*)((uint8*)STK$1 + 24) != -1 ) goto label$82;
	{
		ERRREPORT( 35, 0, (uint8*)0u );
	}
	label$82:;
	label$81:;
	*($15FB_CMPSTMT_MASK*)((uint8*)STK$1 + 4) = 1;
	if( *(int32*)((uint8*)STK$1 + 16) == 0 ) goto label$84;
	{
		CSELCONSTSTMTNEXT( STK$1 );
		goto label$78;
	}
	label$84:;
	label$83:;
	LEXSKIPTOKEN( 2048 );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 8) == (struct $7ASTNODE*)0u ) goto label$86;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 8) );
		*(struct $7ASTNODE**)((uint8*)STK$1 + 8) = (struct $7ASTNODE*)0u;
	}
	label$86:;
	label$85:;
	if( *(int32*)((uint8*)STK$1 + 24) <= 0 ) goto label$88;
	{
		struct $7ASTNODE* vr$9 = ASTNEWBRANCH( 98, *(struct $8FBSYMBOL**)((uint8*)STK$1 + 60), (struct $7ASTNODE*)0u );
		ASTADD( vr$9 );
		struct $7ASTNODE* vr$11 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 56), -1 );
		ASTADD( vr$11 );
		struct $8FBSYMBOL* vr$12 = SYMBADDLABEL( (uint8*)0u, 4 );
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56) = vr$12;
	}
	label$88:;
	label$87:;
	int32 vr$14 = LEXGETTOKEN( 0 );
	if( vr$14 != 268 ) goto label$90;
	{
		LEXSKIPTOKEN( 2048 );
		struct $7ASTNODE* vr$15 = ASTSCOPEBEGIN(  );
		*(struct $7ASTNODE**)((uint8*)STK$1 + 8) = vr$15;
		*(int32*)((uint8*)STK$1 + 24) = -1;
		goto label$78;
	}
	label$90:;
	label$89:;
	CNT$1 = 0;
	CNTBASE$1 = *(int32*)&CTX$;
	label$91:;
	{
		HCASEEXPRESSION( (struct $9FBCASECTX*)((uint8*)((uint8*)&CTX$ + ((CNTBASE$1 + CNT$1) << (4 & 31))) + 4), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 20) );
		CNT$1 = CNT$1 + 1;
		int32 vr$24 = LEXGETTOKEN( 0 );
		if( vr$24 == 44 ) goto label$95;
		{
			goto label$92;
		}
		label$95:;
		label$94:;
		LEXSKIPTOKEN( 0 );
	}
	label$93:;
	goto label$91;
	label$92:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + CNT$1;
	struct $8FBSYMBOL* vr$26 = SYMBADDLABEL( (uint8*)0u, 4 );
	IL$1 = vr$26;
	{
		I$1 = 0;
		int32 TMP$100$2;
		TMP$100$2 = CNT$1 + -1;
		goto label$96;
		label$99:;
		{
			if( I$1 >= (CNT$1 + -1) ) goto label$101;
			{
				struct $8FBSYMBOL* vr$29 = SYMBADDLABEL( (uint8*)0u, 0 );
				NL$1 = vr$29;
			}
			goto label$100;
			label$101:;
			{
				NL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$1 + 56);
			}
			label$100:;
			if( *(int32*)((uint8*)((uint8*)&CTX$ + ((CNTBASE$1 + I$1) << (4 & 31))) + 4) == 3 ) goto label$103;
			{
				int32 vr$41 = HFLUSHCASEEXPR( (struct $9FBCASECTX*)((uint8*)((uint8*)&CTX$ + ((CNTBASE$1 + I$1) << (4 & 31))) + 4), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 20), IL$1, NL$1, -(I$1 == (CNT$1 + -1)) );
				if( vr$41 != 0 ) goto label$105;
				{
					ERRREPORT( 24, -1, (uint8*)0u );
				}
				label$105:;
				label$104:;
			}
			label$103:;
			label$102:;
			if( I$1 >= (CNT$1 + -1) ) goto label$107;
			{
				struct $7ASTNODE* vr$43 = ASTNEWLABEL( NL$1, -1 );
				ASTADD( vr$43 );
			}
			label$107:;
			label$106:;
		}
		label$97:;
		I$1 = I$1 + 1;
		label$96:;
		if( I$1 <= TMP$100$2 ) goto label$99;
		label$98:;
	}
	*(int32*)&CTX$ = *(int32*)&CTX$ - CNT$1;
	struct $7ASTNODE* vr$46 = ASTNEWLABEL( IL$1, -1 );
	ASTADD( vr$46 );
	struct $7ASTNODE* vr$47 = ASTSCOPEBEGIN(  );
	*(struct $7ASTNODE**)((uint8*)STK$1 + 8) = vr$47;
	*(int32*)((uint8*)STK$1 + 24) = *(int32*)((uint8*)STK$1 + 24) + 1;
	label$78:;
}

void CSELECTSTMTEND( void )
{
	label$108:;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 270, -1 );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$111;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$109;
	}
	label$111:;
	label$110:;
	if( *(int32*)((uint8*)STK$1 + 24) != 0 ) goto label$113;
	{
		ERRREPORT( 34, 0, (uint8*)0u );
	}
	label$113:;
	label$112:;
	if( *(int32*)((uint8*)STK$1 + 16) == 0 ) goto label$115;
	{
		CSELCONSTSTMTEND( STK$1 );
		goto label$109;
	}
	label$115:;
	label$114:;
	LEXSKIPTOKEN( 2048 );
	LEXSKIPTOKEN( 2048 );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 8) == (struct $7ASTNODE*)0u ) goto label$117;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 8) );
	}
	label$117:;
	label$116:;
	struct $7ASTNODE* vr$6 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 56), -1 );
	ASTADD( vr$6 );
	struct $7ASTNODE* vr$8 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 60), -1 );
	ASTADD( vr$8 );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 68) == (struct $7ASTNODE*)0u ) goto label$119;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 68) );
	}
	label$119:;
	label$118:;
	CCOMPSTMTPOP( STK$1 );
	label$109:;
}

__attribute__(( constructor )) static void fb_ctor__parserzcompoundzselect( void )
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

static void HCASEEXPRESSION( struct $9FBCASECTX* CASECTX$1, struct $8FBSYMBOL* SYM$1 )
{
	label$50:;
	*(int32*)((uint8*)CASECTX$1 + 4) = 45;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 272 ) goto label$53;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$2 = LEXGETTOKEN( 0 );
		int32 vr$3 = HFBRELOP2IRRELOP( vr$2 );
		*(int32*)((uint8*)CASECTX$1 + 4) = vr$3;
		LEXSKIPTOKEN( 0 );
		*($11FB_CASETYPE*)CASECTX$1 = 2;
	}
	goto label$52;
	label$53:;
	{
		*($11FB_CASETYPE*)CASECTX$1 = 0;
	}
	label$52:;
	struct $7ASTNODE* vr$7 = CEXPRESSION(  );
	*(struct $7ASTNODE**)((uint8*)CASECTX$1 + 8) = vr$7;
	if( *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 8) != (struct $7ASTNODE*)0u ) goto label$55;
	{
		int32 TMP$97$2;
		ERRREPORT( 9, 0, (uint8*)0u );
		if( (*(int32*)((uint8*)SYM$1 + 12) & 16777216) == 0 ) goto label$56;
		TMP$97$2 = 7;
		goto label$120;
		label$56:;
		TMP$97$2 = *(int32*)((uint8*)SYM$1 + 28) & 511;
		label$120:;
		struct $7ASTNODE* vr$14 = ASTNEWCONSTZ( TMP$97$2, (struct $8FBSYMBOL*)0u );
		*(struct $7ASTNODE**)((uint8*)CASECTX$1 + 8) = vr$14;
	}
	label$55:;
	label$54:;
	int32 vr$16 = LEXGETTOKEN( 0 );
	if( vr$16 != 284 ) goto label$58;
	{
		LEXSKIPTOKEN( 2048 );
		if( *(int32*)CASECTX$1 == 0 ) goto label$60;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			HSKIPUNTIL( 44, 0, 0, 0 );
			*($11FB_CASETYPE*)CASECTX$1 = 0;
		}
		goto label$59;
		label$60:;
		{
			*($11FB_CASETYPE*)CASECTX$1 = 1;
			struct $7ASTNODE* vr$20 = CEXPRESSION(  );
			*(struct $7ASTNODE**)((uint8*)CASECTX$1 + 12) = vr$20;
			if( *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 12) != (struct $7ASTNODE*)0u ) goto label$62;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				HSKIPUNTIL( 44, 0, 0, 0 );
				*($11FB_CASETYPE*)CASECTX$1 = 0;
			}
			label$62:;
			label$61:;
		}
		label$59:;
	}
	label$58:;
	label$57:;
	label$51:;
}

static int32 HFLUSHCASEEXPR( struct $9FBCASECTX* CASECTX$1, struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* INILABEL$1, struct $8FBSYMBOL* NXTLABEL$1, int32 ISLAST$1 )
{
	struct $7ASTNODE* TMP$98$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$63:;
	struct $7ASTNODE* EXPR$1;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 16777216) == 0 ) goto label$65;
	struct $7ASTNODE* vr$3 = ASTBUILDFAKEWSTRINGACCESS( SYM$1 );
	TMP$98$1 = vr$3;
	goto label$121;
	label$65:;
	struct $7ASTNODE* vr$4 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	TMP$98$1 = vr$4;
	label$121:;
	EXPR$1 = TMP$98$1;
	if( *(int32*)CASECTX$1 == 1 ) goto label$67;
	{
		if( ISLAST$1 == 0 ) goto label$69;
		{
			int32 vr$8 = ASTGETINVERSELOGOP( *(int32*)((uint8*)CASECTX$1 + 4) );
			struct $7ASTNODE* vr$9 = ASTNEWBOP( vr$8, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 8), NXTLABEL$1, 0 );
			EXPR$1 = vr$9;
		}
		goto label$68;
		label$69:;
		{
			struct $7ASTNODE* vr$12 = ASTNEWBOP( *(int32*)((uint8*)CASECTX$1 + 4), EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 8), INILABEL$1, 0 );
			EXPR$1 = vr$12;
		}
		label$68:;
	}
	goto label$66;
	label$67:;
	{
		struct $7ASTNODE* TMP$99$2;
		struct $7ASTNODE* vr$14 = ASTNEWBOP( 47, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 8), NXTLABEL$1, 0 );
		EXPR$1 = vr$14;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$71;
		{
			fb$result$1 = 0;
			goto label$64;
		}
		label$71:;
		label$70:;
		ASTADD( EXPR$1 );
		if( (*(int32*)((uint8*)SYM$1 + 12) & 16777216) == 0 ) goto label$72;
		struct $7ASTNODE* vr$17 = ASTBUILDFAKEWSTRINGACCESS( SYM$1 );
		TMP$99$2 = vr$17;
		goto label$122;
		label$72:;
		struct $7ASTNODE* vr$18 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		TMP$99$2 = vr$18;
		label$122:;
		EXPR$1 = TMP$99$2;
		if( ISLAST$1 == 0 ) goto label$74;
		{
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 46, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 12), NXTLABEL$1, 0 );
			EXPR$1 = vr$20;
		}
		goto label$73;
		label$74:;
		{
			struct $7ASTNODE* vr$22 = ASTNEWBOP( 50, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 12), INILABEL$1, 0 );
			EXPR$1 = vr$22;
		}
		label$73:;
	}
	label$66:;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$76;
	{
		fb$result$1 = 0;
		goto label$64;
	}
	label$76:;
	label$75:;
	ASTADD( EXPR$1 );
	fb$result$1 = -1;
	label$64:;
	return fb$result$1;
}
