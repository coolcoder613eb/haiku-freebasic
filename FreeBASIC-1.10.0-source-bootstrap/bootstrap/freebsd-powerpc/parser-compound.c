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
typedef int32 $15FB_CMPSTMT_MASK;
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
typedef int32 $9FB_ERRMSG;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzcompound( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void* STACKPUSH( struct $6TSTACK* );
void STACKPOP( struct $6TSTACK* );
void* STACKGETTOS( struct $6TSTACK* );
void ASTSCOPEBREAK( struct $8FBSYMBOL* );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEADCLASS( int32, $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 CCOMPSTMTCHECK( void );
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
void CIFSTMTBEGIN( void );
void CIFSTMTNEXT( void );
void CIFSTMTEND( void );
void CFORSTMTBEGIN( void );
void CFORSTMTEND( void );
void CDOSTMTBEGIN( void );
void CDOSTMTEND( void );
void CWHILESTMTBEGIN( void );
void CWHILESTMTEND( void );
void CSELECTSTMTBEGIN( void );
void CSELECTSTMTNEXT( void );
void CSELECTSTMTEND( void );
void CPROCSTMTEND( void );
void CEXITSTATEMENT( void );
void CENDSTATEMENT( void );
void CCONTINUESTATEMENT( void );
void CWITHSTMTBEGIN( void );
void CWITHSTMTEND( void );
void CSCOPESTMTBEGIN( void );
void CSCOPESTMTEND( void );
void CNAMESPACESTMTBEGIN( void );
void CNAMESPACESTMTEND( void );
void CUSINGSTMT( void );
void CEXTERNSTMTBEGIN( void );
void CEXTERNSTMTEND( void );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HSKIPCOMPOUND( int32, int32, $8LEXCHECK );
int32 RTLEXITAPP( struct $7ASTNODE* );
void PARSERSELECTSTMTINIT( void );
void PARSERSELECTSTMTEND( void );
void PARSERSELCONSTSTMTINIT( void );
void PARSERSELCONSTSTMTEND( void );
static void CCOMPOUNDEND( void );
static int32 HCHECKFORCTORRESULT( void );
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 8 );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
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

void PARSERCOMPOUNDSTMTSETCTX( void )
{
	label$10:;
	*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32) = (struct $13FB_CMPSTMTSTK*)0u;
	*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36) = (struct $13FB_CMPSTMTSTK*)0u;
	*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40) = (struct $13FB_CMPSTMTSTK*)0u;
	*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 44) = (struct $13FB_CMPSTMTSTK*)0u;
	*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 48) = (struct $13FB_CMPSTMTSTK*)0u;
	*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) = (struct $13FB_CMPSTMTSTK*)0u;
	label$11:;
}

void PARSERCOMPOUNDSTMTINIT( void )
{
	label$12:;
	PARSERSELECTSTMTINIT(  );
	PARSERSELCONSTSTMTINIT(  );
	label$13:;
}

void PARSERCOMPOUNDSTMTEND( void )
{
	label$14:;
	PARSERSELCONSTSTMTEND(  );
	PARSERSELECTSTMTEND(  );
	label$15:;
}

int32 CCOMPOUNDSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$19;
	{
		if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == -2147483648u ) goto label$21;
		{
			fb$result$1 = 0;
			goto label$17;
		}
		label$21:;
		label$20:;
	}
	label$19:;
	label$18:;
	{
		uint32 TMP$93$2;
		int32 vr$3 = LEXGETTOKEN( 0 );
		TMP$93$2 = (uint32)vr$3;
		goto label$23;
		label$24:;
		{
			int32 vr$4 = CCOMPSTMTISALLOWED( 1 );
			if( vr$4 != 0 ) goto label$26;
			{
				HSKIPCOMPOUND( 266, 266, 0 );
				goto label$17;
			}
			label$26:;
			label$25:;
			CIFSTMTBEGIN(  );
		}
		goto label$22;
		label$27:;
		{
			int32 vr$5 = CCOMPSTMTISALLOWED( 1 );
			if( vr$5 != 0 ) goto label$29;
			{
				HSKIPCOMPOUND( 281, 283, 0 );
				goto label$17;
			}
			label$29:;
			label$28:;
			CFORSTMTBEGIN(  );
		}
		goto label$22;
		label$30:;
		{
			int32 vr$6 = CCOMPSTMTISALLOWED( 1 );
			if( vr$6 != 0 ) goto label$32;
			{
				HSKIPCOMPOUND( 278, 279, 0 );
				goto label$17;
			}
			label$32:;
			label$31:;
			CDOSTMTBEGIN(  );
		}
		goto label$22;
		label$33:;
		{
			int32 vr$7 = CCOMPSTMTISALLOWED( 1 );
			if( vr$7 != 0 ) goto label$35;
			{
				HSKIPCOMPOUND( 273, 275, 0 );
				goto label$17;
			}
			label$35:;
			label$34:;
			CWHILESTMTBEGIN(  );
		}
		goto label$22;
		label$36:;
		{
			int32 vr$8 = CCOMPSTMTISALLOWED( 1 );
			if( vr$8 != 0 ) goto label$38;
			{
				HSKIPCOMPOUND( 270, 270, 0 );
				goto label$17;
			}
			label$38:;
			label$37:;
			CSELECTSTMTBEGIN(  );
		}
		goto label$22;
		label$39:;
		{
			int32 vr$9 = CCOMPSTMTISALLOWED( 1 );
			if( vr$9 != 0 ) goto label$41;
			{
				HSKIPCOMPOUND( 280, 280, 0 );
				goto label$17;
			}
			label$41:;
			label$40:;
			CWITHSTMTBEGIN(  );
		}
		goto label$22;
		label$42:;
		{
			int32 vr$10 = CCOMPSTMTISALLOWED( 1 );
			if( vr$10 != 0 ) goto label$44;
			{
				HSKIPCOMPOUND( 285, 285, 0 );
				goto label$17;
			}
			label$44:;
			label$43:;
			CSCOPESTMTBEGIN(  );
		}
		goto label$22;
		label$45:;
		{
			CNAMESPACESTMTBEGIN(  );
		}
		goto label$22;
		label$46:;
		{
			CEXTERNSTMTBEGIN(  );
		}
		goto label$22;
		label$47:;
		{
			CIFSTMTNEXT(  );
		}
		goto label$22;
		label$48:;
		{
			CSELECTSTMTNEXT(  );
		}
		goto label$22;
		label$49:;
		{
			CDOSTMTEND(  );
		}
		goto label$22;
		label$50:;
		{
			CFORSTMTEND(  );
		}
		goto label$22;
		label$51:;
		{
			CWHILESTMTEND(  );
		}
		goto label$22;
		label$52:;
		{
			CEXITSTATEMENT(  );
		}
		goto label$22;
		label$53:;
		{
			CCONTINUESTATEMENT(  );
		}
		goto label$22;
		label$54:;
		{
			int32 vr$11 = LEXGETLOOKAHEADCLASS( 1, 0 );
			if( vr$11 == 1 ) goto label$56;
			{
				int32 vr$12 = CCOMPSTMTISALLOWED( 1 );
				if( vr$12 != 0 ) goto label$58;
				{
					HSKIPCOMPOUND( -1, -1, 0 );
					goto label$17;
				}
				label$58:;
				label$57:;
				CENDSTATEMENT(  );
			}
			goto label$55;
			label$56:;
			{
				CCOMPOUNDEND(  );
			}
			label$55:;
		}
		goto label$22;
		label$59:;
		{
			CIFSTMTEND(  );
		}
		goto label$22;
		label$60:;
		{
			CUSINGSTMT(  );
		}
		goto label$22;
		label$61:;
		{
			fb$result$1 = 0;
			goto label$17;
		}
		goto label$22;
		label$23:;
		static const void* tmp$94[75] = {
			&&label$24,
			&&label$61,
			&&label$47,
			&&label$47,
			&&label$36,
			&&label$48,
			&&label$61,
			&&label$33,
			&&label$61,
			&&label$51,
			&&label$53,
			&&label$52,
			&&label$30,
			&&label$49,
			&&label$39,
			&&label$27,
			&&label$61,
			&&label$50,
			&&label$61,
			&&label$42,
			&&label$45,
			&&label$60,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$46,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$59,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$54,
		};
		if( (TMP$93$2 - 266u) > 74u ) goto label$61;
		goto *tmp$94[TMP$93$2 - 266u];
		label$22:;
	}
	fb$result$1 = -1;
	label$17:;
	return fb$result$1;
}

void CENDSTATEMENT( void )
{
	label$62:;
	struct $7ASTNODE* ERRLEVEL$1;
	LEXSKIPTOKEN( 2048 );
	{
		uint32 TMP$95$2;
		int32 vr$0 = LEXGETTOKEN( 0 );
		TMP$95$2 = (uint32)vr$0;
		goto label$65;
		label$66:;
		{
			ERRLEVEL$1 = (struct $7ASTNODE*)0u;
		}
		goto label$64;
		label$67:;
		{
			struct $7ASTNODE* vr$1 = CEXPRESSION(  );
			ERRLEVEL$1 = vr$1;
		}
		goto label$64;
		label$65:;
		static const void* tmp$96[85] = {
			&&label$66,
			&&label$66,
			&&label$66,
			&&label$66,
			&&label$66,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$66,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$66,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$67,
			&&label$66,
		};
		if( (TMP$95$2 - 256u) > 84u ) goto label$67;
		goto *tmp$96[TMP$95$2 - 256u];
		label$64:;
	}
	RTLEXITAPP( ERRLEVEL$1 );
	label$63:;
}

void CEXITSTATEMENT( void )
{
	label$74:;
	struct $8FBSYMBOL* LABEL$1;
	LABEL$1 = (struct $8FBSYMBOL*)0u;
	LEXSKIPTOKEN( 2048 );
	int32 vr$0 = CCOMPSTMTISALLOWED( 9 );
	if( vr$0 != 0 ) goto label$77;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
	}
	label$77:;
	label$76:;
	int32 TK$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	TK$1 = vr$1;
	{
		uint32 TMP$97$2;
		TMP$97$2 = (uint32)TK$1;
		goto label$79;
		label$80:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$82;
			{
				ERRREPORT( 239, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$75;
			}
			label$82:;
			label$81:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32);
			label$83:;
			int32 vr$2 = LEXGETTOKEN( 0 );
			if( vr$2 != 44 ) goto label$84;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$3 = LEXGETTOKEN( 0 );
				if( vr$3 == 281 ) goto label$86;
				{
					ERRREPORT( 243, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$86:;
				label$85:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 136);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$88;
				{
					ERRREPORT( 247, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$88:;
				label$87:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$83;
			label$84:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 132);
		}
		goto label$78;
		label$89:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$91;
			{
				ERRREPORT( 240, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$75;
			}
			label$91:;
			label$90:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36);
			label$92:;
			int32 vr$6 = LEXGETTOKEN( 0 );
			if( vr$6 != 44 ) goto label$93;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$7 = LEXGETTOKEN( 0 );
				if( vr$7 == 278 ) goto label$95;
				{
					ERRREPORT( 244, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$95:;
				label$94:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 32);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$97;
				{
					ERRREPORT( 248, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$97:;
				label$96:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$92;
			label$93:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 28);
		}
		goto label$78;
		label$98:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$100;
			{
				ERRREPORT( 241, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$75;
			}
			label$100:;
			label$99:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40);
			label$101:;
			int32 vr$10 = LEXGETTOKEN( 0 );
			if( vr$10 != 44 ) goto label$102;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$11 = LEXGETTOKEN( 0 );
				if( vr$11 == 273 ) goto label$104;
				{
					ERRREPORT( 245, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$104:;
				label$103:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 24);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$106;
				{
					ERRREPORT( 249, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$106:;
				label$105:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$101;
			label$102:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 20);
		}
		goto label$78;
		label$107:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 44) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$109;
			{
				ERRREPORT( 242, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$75;
			}
			label$109:;
			label$108:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 44);
			label$110:;
			int32 vr$14 = LEXGETTOKEN( 0 );
			if( vr$14 != 44 ) goto label$111;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$15 = LEXGETTOKEN( 0 );
				if( vr$15 == 270 ) goto label$113;
				{
					ERRREPORT( 246, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$113:;
				label$112:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 64);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$115;
				{
					ERRREPORT( 250, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$75;
				}
				label$115:;
				label$114:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$110;
			label$111:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 60);
		}
		goto label$78;
		label$116:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 48) == (struct $13FB_CMPSTMTSTK*)0u ) goto label$118;
			{
				LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 48) + 24);
			}
			label$118:;
			label$117:;
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$120;
			{
				int32 ERRMSG$4;
				__builtin_memset( &ERRMSG$4, 0, 4 );
				{
					uint32 TMP$98$5;
					TMP$98$5 = (uint32)TK$1;
					goto label$122;
					label$123:;
					{
						ERRMSG$4 = 253;
					}
					goto label$121;
					label$124:;
					{
						ERRMSG$4 = 193;
					}
					goto label$121;
					label$125:;
					{
						ERRMSG$4 = 144;
					}
					goto label$121;
					label$126:;
					{
						ERRMSG$4 = 165;
					}
					goto label$121;
					label$127:;
					{
						ERRMSG$4 = 166;
					}
					goto label$121;
					label$128:;
					{
						ERRMSG$4 = 254;
					}
					goto label$121;
					label$122:;
					static const void* tmp$100[6] = {
						&&label$123,
						&&label$128,
						&&label$126,
						&&label$127,
						&&label$125,
						&&label$124,
					};
					if( (TMP$98$5 - 345u) > 5u ) goto label$128;
					goto *tmp$100[TMP$98$5 - 345u];
					label$121:;
				}
				ERRREPORT( ERRMSG$4, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$75;
			}
			label$120:;
			label$119:;
			$9FB_ERRMSG ERRNUM$3;
			ERRNUM$3 = 0;
			{
				uint32 TMP$99$4;
				int32 vr$20 = LEXGETTOKEN( 0 );
				TMP$99$4 = (uint32)vr$20;
				goto label$130;
				label$131:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 511) != 0 ) goto label$133;
					{
						if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 4156) == 0 ) goto label$135;
						{
							ERRNUM$3 = 253;
						}
						label$135:;
						label$134:;
					}
					goto label$132;
					label$133:;
					{
						ERRNUM$3 = 253;
					}
					label$132:;
				}
				goto label$129;
				label$136:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 511) == 0 ) goto label$138;
					{
						if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 4156) == 0 ) goto label$140;
						{
							ERRNUM$3 = 254;
						}
						goto label$139;
						label$140:;
						{
							int32 vr$29 = HCHECKFORCTORRESULT(  );
							ERRNUM$3 = vr$29;
						}
						label$139:;
					}
					goto label$137;
					label$138:;
					{
						ERRNUM$3 = 254;
					}
					label$137:;
				}
				goto label$129;
				label$141:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 32) == 0 ) goto label$143;
					{
						int32 vr$32 = HCHECKFORCTORRESULT(  );
						ERRNUM$3 = vr$32;
					}
					goto label$142;
					label$143:;
					{
						ERRNUM$3 = 193;
					}
					label$142:;
				}
				goto label$129;
				label$144:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 16) == 0 ) goto label$146;
					{
						int32 vr$35 = HCHECKFORCTORRESULT(  );
						ERRNUM$3 = vr$35;
					}
					goto label$145;
					label$146:;
					{
						ERRNUM$3 = 144;
					}
					label$145:;
				}
				goto label$129;
				label$147:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 4) != 0 ) goto label$149;
					{
						ERRNUM$3 = 165;
					}
					label$149:;
					label$148:;
				}
				goto label$129;
				label$150:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 8) != 0 ) goto label$152;
					{
						ERRNUM$3 = 166;
					}
					label$152:;
					label$151:;
				}
				goto label$129;
				label$130:;
				static const void* tmp$101[6] = {
					&&label$131,
					&&label$136,
					&&label$147,
					&&label$150,
					&&label$144,
					&&label$141,
				};
				if( (TMP$99$4 - 345u) > 5u ) goto label$129;
				goto *tmp$101[TMP$99$4 - 345u];
				label$129:;
			}
			if( ERRNUM$3 == 0 ) goto label$154;
			{
				ERRREPORT( ERRNUM$3, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$75;
			}
			label$154:;
			label$153:;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$78;
		label$155:;
		{
			ERRREPORT( 251, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			goto label$75;
		}
		goto label$78;
		label$79:;
		static const void* tmp$102[81] = {
			&&label$107,
			&&label$155,
			&&label$155,
			&&label$98,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$89,
			&&label$155,
			&&label$155,
			&&label$80,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$155,
			&&label$116,
			&&label$116,
			&&label$116,
			&&label$116,
			&&label$116,
			&&label$116,
		};
		if( (TMP$97$2 - 270u) > 80u ) goto label$155;
		goto *tmp$102[TMP$97$2 - 270u];
		label$78:;
	}
	ASTSCOPEBREAK( LABEL$1 );
	label$75:;
}

void CCONTINUESTATEMENT( void )
{
	label$156:;
	struct $8FBSYMBOL* LABEL$1;
	LABEL$1 = (struct $8FBSYMBOL*)0u;
	LEXSKIPTOKEN( 2048 );
	{
		uint32 TMP$103$2;
		int32 vr$0 = LEXGETTOKEN( 0 );
		TMP$103$2 = (uint32)vr$0;
		goto label$159;
		label$160:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$162;
			{
				ERRREPORT( 239, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$157;
			}
			label$162:;
			label$161:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32);
			label$163:;
			int32 vr$1 = LEXGETTOKEN( 0 );
			if( vr$1 != 44 ) goto label$164;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$2 = LEXGETTOKEN( 0 );
				if( vr$2 == 281 ) goto label$166;
				{
					ERRREPORT( 243, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$157;
				}
				label$166:;
				label$165:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 136);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$168;
				{
					ERRREPORT( 247, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$157;
				}
				label$168:;
				label$167:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$163;
			label$164:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 128);
		}
		goto label$158;
		label$169:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$171;
			{
				ERRREPORT( 240, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$157;
			}
			label$171:;
			label$170:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36);
			label$172:;
			int32 vr$5 = LEXGETTOKEN( 0 );
			if( vr$5 != 44 ) goto label$173;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$6 = LEXGETTOKEN( 0 );
				if( vr$6 == 278 ) goto label$175;
				{
					ERRREPORT( 244, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$157;
				}
				label$175:;
				label$174:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 32);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$177;
				{
					ERRREPORT( 248, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$157;
				}
				label$177:;
				label$176:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$172;
			label$173:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 24);
		}
		goto label$158;
		label$178:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$180;
			{
				ERRREPORT( 241, 0, (uint8*)0u );
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$157;
			}
			label$180:;
			label$179:;
			LEXSKIPTOKEN( 2048 );
			struct $13FB_CMPSTMTSTK* STK$3;
			STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40);
			label$181:;
			int32 vr$9 = LEXGETTOKEN( 0 );
			if( vr$9 != 44 ) goto label$182;
			{
				LEXSKIPTOKEN( 0 );
				int32 vr$10 = LEXGETTOKEN( 0 );
				if( vr$10 == 273 ) goto label$184;
				{
					ERRREPORT( 245, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$157;
				}
				label$184:;
				label$183:;
				STK$3 = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$3 + 24);
				if( STK$3 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$186;
				{
					ERRREPORT( 249, 0, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					goto label$157;
				}
				label$186:;
				label$185:;
				LEXSKIPTOKEN( 2048 );
			}
			goto label$181;
			label$182:;
			LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$3 + 16);
		}
		goto label$158;
		label$187:;
		{
			ERRREPORT( 252, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			goto label$157;
		}
		goto label$158;
		label$159:;
		static const void* tmp$104[9] = {
			&&label$178,
			&&label$187,
			&&label$187,
			&&label$187,
			&&label$187,
			&&label$169,
			&&label$187,
			&&label$187,
			&&label$160,
		};
		if( (TMP$103$2 - 273u) > 8u ) goto label$187;
		goto *tmp$104[TMP$103$2 - 273u];
		label$158:;
	}
	ASTSCOPEBREAK( LABEL$1 );
	label$157:;
}

int32 CCOMPSTMTCHECK( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$201:;
	int32 ERRMSG$1;
	__builtin_memset( &ERRMSG$1, 0, 4 );
	struct $13FB_CMPSTMTSTK* STK$1;
	__builtin_memset( &STK$1, 0, 4 );
	void* vr$4 = STACKGETTOS( (struct $6TSTACK*)&PARSER$ );
	STK$1 = (struct $13FB_CMPSTMTSTK*)vr$4;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$204;
	{
		fb$result$1 = -1;
		goto label$202;
	}
	label$204:;
	label$203:;
	{
		uint32 TMP$106$2;
		TMP$106$2 = *(uint32*)STK$1;
		goto label$206;
		label$207:;
		{
			ERRMSG$1 = 32;
		}
		goto label$205;
		label$208:;
		{
			ERRMSG$1 = 35;
		}
		goto label$205;
		label$209:;
		{
			ERRMSG$1 = 95;
		}
		goto label$205;
		label$210:;
		{
			ERRMSG$1 = 60;
		}
		goto label$205;
		label$211:;
		{
			ERRMSG$1 = 121;
		}
		goto label$205;
		label$212:;
		{
			ERRMSG$1 = 124;
		}
		goto label$205;
		label$213:;
		{
			{
				uint32 TMP$107$4;
				TMP$107$4 = *(uint32*)((uint8*)STK$1 + 16);
				goto label$215;
				label$216:;
				{
					ERRMSG$1 = 125;
				}
				goto label$214;
				label$217:;
				{
					ERRMSG$1 = 126;
				}
				goto label$214;
				label$218:;
				{
					ERRMSG$1 = 127;
				}
				goto label$214;
				label$219:;
				{
					ERRMSG$1 = 128;
				}
				goto label$214;
				label$220:;
				{
					ERRMSG$1 = 129;
				}
				goto label$214;
				label$221:;
				{
					ERRMSG$1 = 130;
				}
				goto label$214;
				label$215:;
				static const void* tmp$108[6] = {
					&&label$216,
					&&label$217,
					&&label$218,
					&&label$219,
					&&label$220,
					&&label$221,
				};
				if( (TMP$107$4 - 345u) > 5u ) goto label$214;
				goto *tmp$108[TMP$107$4 - 345u];
				label$214:;
			}
		}
		goto label$205;
		label$222:;
		{
			ERRMSG$1 = 29;
		}
		goto label$205;
		label$223:;
		{
			ERRMSG$1 = 30;
		}
		goto label$205;
		label$224:;
		{
			ERRMSG$1 = 13;
		}
		goto label$205;
		label$206:;
		static const void* tmp$109[81] = {
			&&label$207,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$208,
			&&label$205,
			&&label$205,
			&&label$223,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$222,
			&&label$205,
			&&label$210,
			&&label$224,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$209,
			&&label$211,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$212,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$213,
		};
		if( (TMP$106$2 - 266u) > 80u ) goto label$205;
		goto *tmp$109[TMP$106$2 - 266u];
		label$205:;
	}
	ERRREPORT( ERRMSG$1, 0, (uint8*)0u );
	fb$result$1 = 0;
	label$202:;
	return fb$result$1;
}

struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN ID$1, $15FB_CMPSTMT_MASK ALLOWMASK$1 )
{
	struct $13FB_CMPSTMTSTK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$225:;
	static struct $13FB_CMPSTMTSTK* STK$1;
	void* vr$2 = STACKPUSH( (struct $6TSTACK*)&PARSER$ );
	STK$1 = (struct $13FB_CMPSTMTSTK*)vr$2;
	*(int32*)STK$1 = ID$1;
	*($15FB_CMPSTMT_MASK*)((uint8*)STK$1 + 4) = ALLOWMASK$1;
	*(struct $7ASTNODE**)((uint8*)STK$1 + 8) = (struct $7ASTNODE*)0u;
	{
		uint32 TMP$110$2;
		TMP$110$2 = (uint32)ID$1;
		goto label$228;
		label$229:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 32) = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36);
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36) = STK$1;
		}
		goto label$227;
		label$230:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 136) = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32);
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32) = STK$1;
		}
		goto label$227;
		label$231:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 64) = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 44);
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 44) = STK$1;
		}
		goto label$227;
		label$232:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 24) = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40);
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40) = STK$1;
		}
		goto label$227;
		label$233:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 28) = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 48);
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 48) = STK$1;
		}
		goto label$227;
		label$234:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 24) = *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52);
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) = STK$1;
		}
		goto label$227;
		label$228:;
		static const void* tmp$111[77] = {
			&&label$231,
			&&label$227,
			&&label$227,
			&&label$232,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$229,
			&&label$227,
			&&label$234,
			&&label$230,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$227,
			&&label$233,
		};
		if( (TMP$110$2 - 270u) > 76u ) goto label$227;
		goto *tmp$111[TMP$110$2 - 270u];
		label$227:;
	}
	*($8FB_TOKEN*)((uint8*)&PARSER$ + 24) = ID$1;
	fb$result$1 = STK$1;
	label$226:;
	return fb$result$1;
}

struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN FORID$1, int32 SHOWERROR$1 )
{
	struct $13FB_CMPSTMTSTK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$235:;
	static struct $13FB_CMPSTMTSTK* STK$1;
	static int32 ISERROR$1;
	void* vr$2 = STACKGETTOS( (struct $6TSTACK*)&PARSER$ );
	STK$1 = (struct $13FB_CMPSTMTSTK*)vr$2;
	ISERROR$1 = -(STK$1 == (struct $13FB_CMPSTMTSTK*)0u);
	if( ISERROR$1 != 0 ) goto label$238;
	{
		ISERROR$1 = -(*(int32*)STK$1 != FORID$1);
	}
	label$238:;
	label$237:;
	if( ISERROR$1 == 0 ) goto label$240;
	{
		if( SHOWERROR$1 == 0 ) goto label$242;
		{
			if( STK$1 == (struct $13FB_CMPSTMTSTK*)0u ) goto label$244;
			{
				CCOMPSTMTCHECK(  );
			}
			goto label$243;
			label$244:;
			{
				static int32 ERRMSG$4;
				{
					uint32 TMP$112$5;
					TMP$112$5 = (uint32)FORID$1;
					goto label$246;
					label$247:;
					{
						ERRMSG$4 = 106;
					}
					goto label$245;
					label$248:;
					{
						ERRMSG$4 = 115;
					}
					goto label$245;
					label$249:;
					{
						ERRMSG$4 = 107;
					}
					goto label$245;
					label$250:;
					{
						ERRMSG$4 = 110;
					}
					goto label$245;
					label$251:;
					{
						ERRMSG$4 = 113;
					}
					goto label$245;
					label$252:;
					{
						ERRMSG$4 = 111;
					}
					goto label$245;
					label$253:;
					{
						ERRMSG$4 = 108;
					}
					goto label$245;
					label$254:;
					{
						ERRMSG$4 = 109;
					}
					goto label$245;
					label$255:;
					{
						ERRMSG$4 = 112;
					}
					goto label$245;
					label$256:;
					{
						ERRMSG$4 = 114;
					}
					goto label$245;
					label$246:;
					static const void* tmp$113[81] = {
						&&label$250,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$252,
						&&label$245,
						&&label$245,
						&&label$253,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$247,
						&&label$245,
						&&label$254,
						&&label$249,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$251,
						&&label$256,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$248,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$245,
						&&label$255,
					};
					if( (TMP$112$5 - 266u) > 80u ) goto label$245;
					goto *tmp$113[TMP$112$5 - 266u];
					label$245:;
				}
				ERRREPORT( ERRMSG$4, 0, (uint8*)0u );
			}
			label$243:;
		}
		label$242:;
		label$241:;
		fb$result$1 = (struct $13FB_CMPSTMTSTK*)0u;
	}
	goto label$239;
	label$240:;
	{
		fb$result$1 = STK$1;
	}
	label$239:;
	label$236:;
	return fb$result$1;
}

void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$257:;
	{
		uint32 TMP$114$2;
		TMP$114$2 = *(uint32*)STK$1;
		goto label$260;
		label$261:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 36) = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 32);
		}
		goto label$259;
		label$262:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 32) = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 136);
		}
		goto label$259;
		label$263:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 44) = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 64);
		}
		goto label$259;
		label$264:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 40) = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 24);
		}
		goto label$259;
		label$265:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 48) = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 28);
		}
		goto label$259;
		label$266:;
		{
			*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) = *(struct $13FB_CMPSTMTSTK**)((uint8*)STK$1 + 24);
		}
		goto label$259;
		label$260:;
		static const void* tmp$115[77] = {
			&&label$263,
			&&label$259,
			&&label$259,
			&&label$264,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$261,
			&&label$259,
			&&label$266,
			&&label$262,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$259,
			&&label$265,
		};
		if( (TMP$114$2 - 270u) > 76u ) goto label$259;
		goto *tmp$115[TMP$114$2 - 270u];
		label$259:;
	}
	STACKPOP( (struct $6TSTACK*)&PARSER$ );
	void* vr$9 = STACKGETTOS( (struct $6TSTACK*)&PARSER$ );
	STK$1 = (struct $13FB_CMPSTMTSTK*)vr$9;
	if( STK$1 == (struct $13FB_CMPSTMTSTK*)0u ) goto label$268;
	{
		*($8FB_TOKEN*)((uint8*)&PARSER$ + 24) = *($8FB_TOKEN*)STK$1;
	}
	goto label$267;
	label$268:;
	{
		*($8FB_TOKEN*)((uint8*)&PARSER$ + 24) = 0;
	}
	label$267:;
	label$258:;
}

int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK ALLOWMASK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$269:;
	struct $13FB_CMPSTMTSTK* STK$1;
	int32 ERRMSG$1;
	void* vr$2 = STACKGETTOS( (struct $6TSTACK*)&PARSER$ );
	STK$1 = (struct $13FB_CMPSTMTSTK*)vr$2;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$272;
	{
		fb$result$1 = -1;
		goto label$270;
	}
	label$272:;
	label$271:;
	if( (*(int32*)((uint8*)STK$1 + 4) & ALLOWMASK$1) == 0 ) goto label$274;
	{
		fb$result$1 = -1;
		goto label$270;
	}
	label$274:;
	label$273:;
	if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$276;
	{
		if( *(int32*)STK$1 != 270 ) goto label$278;
		{
			ERRMSG$1 = 62;
		}
		goto label$277;
		label$278:;
		{
			ERRMSG$1 = 61;
		}
		label$277:;
	}
	goto label$275;
	label$276:;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$280;
		{
			if( *(int32*)STK$1 != 270 ) goto label$282;
			{
				ERRMSG$1 = 62;
			}
			goto label$281;
			label$282:;
			{
				ERRMSG$1 = 96;
			}
			label$281:;
		}
		goto label$279;
		label$280:;
		{
			ERRMSG$1 = 122;
		}
		label$279:;
	}
	label$275:;
	ERRREPORTEX( ERRMSG$1, (uint8*)"", 0, 1, (uint8*)0u );
	fb$result$1 = 0;
	label$270:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static int32 HCHECKFORCTORRESULT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$68:;
	if( (*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) & 1) == 0 ) goto label$71;
	{
		int32 vr$4 = SYMBHASCTOR( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) );
		if( (vr$4 & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 2048) == 0)) == 0 ) goto label$73;
		{
			fb$result$1 = 180;
			goto label$69;
		}
		label$73:;
		label$72:;
	}
	label$71:;
	label$70:;
	*($12FB_PROCSTATS*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) | 2;
	fb$result$1 = 0;
	label$69:;
	return fb$result$1;
}

static void CCOMPOUNDEND( void )
{
	label$188:;
	{
		uint32 TMP$105$2;
		int32 vr$0 = LEXGETLOOKAHEAD( 1, 0 );
		TMP$105$2 = (uint32)vr$0;
		goto label$191;
		label$192:;
		{
			CIFSTMTEND(  );
		}
		goto label$190;
		label$193:;
		{
			CSELECTSTMTEND(  );
		}
		goto label$190;
		label$194:;
		{
			CPROCSTMTEND(  );
		}
		goto label$190;
		label$195:;
		{
			CSCOPESTMTEND(  );
		}
		goto label$190;
		label$196:;
		{
			CWITHSTMTEND(  );
		}
		goto label$190;
		label$197:;
		{
			CNAMESPACESTMTEND(  );
		}
		goto label$190;
		label$198:;
		{
			CEXTERNSTMTEND(  );
		}
		goto label$190;
		label$199:;
		{
			CENDSTATEMENT(  );
		}
		goto label$190;
		label$200:;
		{
			ERRREPORT( 33, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		goto label$190;
		label$191:;
		static const void* tmp$116[85] = {
			&&label$192,
			&&label$200,
			&&label$199,
			&&label$200,
			&&label$193,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$196,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$195,
			&&label$197,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$198,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$199,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$199,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$200,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$194,
		};
		if( (TMP$105$2 - 266u) > 84u ) goto label$200;
		goto *tmp$116[TMP$105$2 - 266u];
		label$190:;
	}
	label$189:;
}
