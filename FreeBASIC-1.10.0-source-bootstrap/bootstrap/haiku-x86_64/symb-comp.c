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
typedef int64 $11FB_FUNCMODE;
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
typedef FBSTRING* (*tmp$28)( void*, int64* );
typedef uint32* (*tmp$29)( void*, int64* );
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
struct $18SYMBDEFAULTMEMBERS {
	struct $8FBSYMBOL* DEFCTOR;
	struct $8FBSYMBOL* DTOR1;
	struct $8FBSYMBOL* DTOR0;
	struct $8FBSYMBOL* COPYCTOR;
	struct $8FBSYMBOL* COPYCTORCONST;
	struct $8FBSYMBOL* COPYLETOPCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $18SYMBDEFAULTMEMBERS ) == 48 );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $11FB_SYMBNEST {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMBOLTB* SYMTB;
	struct $8FBHASHTB* HASHTB;
	struct $8FBSYMBOL* NS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_SYMBNEST ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 72 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 240 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int64, void*, int64 );
static void fb_ctor__symbzcomp( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
void* LISTNEWNODE( struct $5TLIST* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
int64 STACKNEW( struct $6TSTACK*, int64, int64, int64 );
int64 STACKFREE( struct $6TSTACK* );
void* STACKPUSH( struct $6TSTACK* );
void STACKPOP( struct $6TSTACK* );
void* STACKGETTOS( struct $6TSTACK* );
void ASTPROCBEGIN( struct $8FBSYMBOL*, int64 );
int64 ASTPROCEND( int64 );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDBRANCH( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, int64 );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBRANCH( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWMEM( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIBEGIN( int64, struct $8FBSYMBOL*, int64, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE*, struct $8FBSYMBOL* );
void ASTTYPEINICOPYELEMENTS( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
void ASTTYPEINIREPLACEELEMENT( struct $7ASTNODE*, int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDVARDEREF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE*, int64, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDFORBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64 );
struct $7ASTNODE* ASTBUILDFOREND( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
void SYMBPROCCHECKOVERRIDDEN( struct $8FBSYMBOL*, int64 );
int64 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int64, int64, int64, $13FB_SYMBATTRIB, int64 );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int64, struct $7FBARRAYI10FBARRAYDIME*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int64 );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
struct $8FBSYMBOL* SYMBADDOPERATOR( struct $8FBSYMBOL*, $6AST_OP, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDCTOR( struct $8FBSYMBOL*, uint8*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
void SYMBHASHLISTADD( struct $8FBHASHTB* );
void SYMBHASHLISTADDBEFORE( struct $8FBHASHTB*, struct $8FBHASHTB* );
void SYMBHASHLISTDEL( struct $8FBHASHTB* );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int64 );
void SYMBNESTEND( int64 );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void SYMBUDTALLOCEXT( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
void SYMBCHECKCOMPLETOP( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTINITABLEFIELD( struct $8FBSYMBOL* );
void SYMBHASHLISTINSERTNAMESPACE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBHASHLISTREMOVENAMESPACE( struct $8FBSYMBOL* );
struct $7ASTNODE* RTLARRAYREDIMTO( struct $7ASTNODE*, struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* SYMBGETCOMPCOPYCTOR( struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HDECLAREPROC( struct $8FBSYMBOL*, $6AST_OP, int64, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, $11FB_FUNCMODE );
static void HSETMINIMUMVTABLESIZE( struct $8FBSYMBOL* );
static void HBUILDRTTI( struct $8FBSYMBOL* );
static void HBUILDVTABLE( struct $8FBSYMBOL* );
static void HPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HPROCEND( void );
static void HADDCTORBODY( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void HASSIGNDYNAMICARRAY( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HASSIGNLIST( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HCOPYUNIONFIELDS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HADDLETOPBODY( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static int64 HHASBYREFSELFPARAM( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
static void HINSERTNESTED( struct $8FBSYMBOL*, struct $8FBHASHTB*, struct $8FBSYMBOL* );
static void HREMOVENESTED( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HINSERTIMPORTED( struct $8FBSYMBOL* );
static void HREMOVEIMPORTED( struct $8FBSYMBOL* );
void SYMBCOMPDELFROMIMPORTLIST( struct $8FBSYMBOL* );
void SYMBCOMPDELFROMEXPORTLIST( struct $8FBSYMBOL* );
extern struct $10AST_OPINFO AST_OPTB$[121];
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 16 );
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
typedef int64 $10FB_OUTTYPE;
typedef int64 $10FB_BACKEND;
typedef int64 $13FB_COMPTARGET;
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

void SYMBCOMPINIT( void )
{
	label$10:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$15:;
		{
			*(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (I$2 << (3ll & 63ll))) + 198208ll) = (struct $8FBSYMBOL*)0ull;
		}
		label$13:;
		I$2 = I$2 + 1ll;
		label$12:;
		if( I$2 <= 120ll ) goto label$15;
		label$14:;
	}
	STACKNEW( (struct $6TSTACK*)((uint8*)&SYMB$ + 197048ll), 16ll, 32ll, 0ll );
	label$11:;
}

void SYMBCOMPEND( void )
{
	label$16:;
	STACKFREE( (struct $6TSTACK*)((uint8*)&SYMB$ + 197048ll) );
	label$17:;
}

void SYMBUDTALLOCEXT( struct $8FBSYMBOL* UDT$1 )
{
	label$18:;
	if( *(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) != (struct $12FB_STRUCTEXT*)0ull ) goto label$21;
	{
		void* vr$1 = XCALLOCATE( 320 );
		*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) = (struct $12FB_STRUCTEXT*)vr$1;
	}
	label$21:;
	label$20:;
	label$19:;
}

void SYMBUDTDECLAREDEFAULTMEMBERS( struct $18SYMBDEFAULTMEMBERS* DEFAULT$1, struct $8FBSYMBOL* UDT$1, $11FB_FUNCMODE MODE$1 )
{
	label$87:;
	int64 MISSING_BASE_DEFCTOR$1;
	if( *(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) == (struct $8FBSYMBOL*)0ull ) goto label$90;
	{
		struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDEFCTOR( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) + 64ll) );
		struct $8FBSYMBOL* vr$7 = SYMBGETCOMPCTORHEAD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) + 64ll) );
		MISSING_BASE_DEFCTOR$1 = (int64)-(vr$3 == (struct $8FBSYMBOL*)0ull) & (int64)-(vr$7 != (struct $8FBSYMBOL*)0ull);
	}
	goto label$89;
	label$90:;
	{
		MISSING_BASE_DEFCTOR$1 = 0ll;
	}
	label$89:;
	*(struct $8FBSYMBOL**)DEFAULT$1 = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 24ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 32ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 40ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 8ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 16ll) = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$25 = SYMBGETCOMPCTORHEAD( UDT$1 );
	if( (((int64)-(((int64)*(int32*)((uint8*)UDT$1 + 208ll) & 8ll) != 0ll) | (int64)-(((int64)*(int32*)((uint8*)UDT$1 + 208ll) & 4096ll) != 0ll)) & (int64)-(vr$25 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$92;
	{
		if( MISSING_BASE_DEFCTOR$1 == 0ll ) goto label$94;
		{
			ERRREPORT( 186ll, 0ll, (uint8*)0ull );
		}
		goto label$93;
		label$94:;
		{
			struct $8FBSYMBOL* vr$28 = HDECLAREPROC( UDT$1, -1ll, 2147483648ll, 8388608ll, 5ll, MODE$1 );
			*(struct $8FBSYMBOL**)DEFAULT$1 = vr$28;
		}
		label$93:;
	}
	label$92:;
	label$91:;
	if( ((int64)*(int32*)((uint8*)UDT$1 + 208ll) & 8ll) == 0ll ) goto label$96;
	{
		SYMBUDTALLOCEXT( UDT$1 );
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$98;
		{
			struct $8FBSYMBOL* vr$35 = HDECLAREPROC( UDT$1, 0ll, 532ll, 8388608ll, 17ll, MODE$1 );
			*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 40ll) = vr$35;
			SYMBPROCCHECKOVERRIDDEN( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 40ll), -1ll );
		}
		label$98:;
		label$97:;
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 24ll) != (struct $8FBSYMBOL*)0ull ) goto label$100;
		{
			if( MISSING_BASE_DEFCTOR$1 == 0ll ) goto label$102;
			{
				ERRREPORT( 188ll, 0ll, (uint8*)0ull );
			}
			goto label$101;
			label$102:;
			{
				struct $8FBSYMBOL* vr$40 = HDECLAREPROC( UDT$1, -1ll, 532ll, 8388608ll, 5ll, MODE$1 );
				*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 32ll) = vr$40;
			}
			label$101:;
		}
		label$100:;
		label$99:;
		if( ((int64)-(*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 48ll) != (struct $8FBSYMBOL*)0ull) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 16ll) == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$104;
		{
			if( MISSING_BASE_DEFCTOR$1 == 0ll ) goto label$106;
			{
				ERRREPORT( 187ll, 0ll, (uint8*)0ull );
			}
			goto label$105;
			label$106:;
			{
				struct $8FBSYMBOL* vr$49 = HDECLAREPROC( UDT$1, -1ll, 20ll, 8388608ll, 5ll, MODE$1 );
				*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 24ll) = vr$49;
			}
			label$105:;
		}
		label$104:;
		label$103:;
	}
	label$96:;
	label$95:;
	if( ((int64)*(int32*)((uint8*)UDT$1 + 208ll) & 16ll) == 0ll ) goto label$108;
	{
		SYMBUDTALLOCEXT( UDT$1 );
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 32ll) != (struct $8FBSYMBOL*)0ull ) goto label$110;
		{
			struct $8FBSYMBOL* vr$56 = HDECLAREPROC( UDT$1, -1ll, 2147483648ll, 8388608ll, 8ll, MODE$1 );
			*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 8ll) = vr$56;
			if( (int64)*(int16*)((uint8*)UDT$1 + 74ll) != 4ll ) goto label$112;
			{
				struct $8FBSYMBOL* vr$60 = HDECLAREPROC( UDT$1, -1ll, 2147483648ll, 8388608ll, 4096ll, MODE$1 );
				*(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 16ll) = vr$60;
			}
			label$112:;
			label$111:;
			SYMBPROCCHECKOVERRIDDEN( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 8ll), -1ll );
		}
		label$110:;
		label$109:;
	}
	label$108:;
	label$107:;
	label$88:;
}

void SYMBUDTIMPLEMENTDEFAULTMEMBERS( struct $18SYMBDEFAULTMEMBERS* DEFAULT$1, struct $8FBSYMBOL* UDT$1 )
{
	label$113:;
	if( (*(int64*)((uint8*)UDT$1 + 24ll) & 4194304ll) == 0ll ) goto label$116;
	{
		SYMBUDTALLOCEXT( UDT$1 );
		HSETMINIMUMVTABLESIZE( UDT$1 );
		if( UDT$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199240ll) ) goto label$118;
		{
			HBUILDRTTI( UDT$1 );
			HBUILDVTABLE( UDT$1 );
		}
		label$118:;
		label$117:;
	}
	label$116:;
	label$115:;
	if( *(struct $8FBSYMBOL**)DEFAULT$1 == (struct $8FBSYMBOL*)0ull ) goto label$120;
	{
		HADDCTORBODY( UDT$1, *(struct $8FBSYMBOL**)DEFAULT$1, 0ll );
	}
	label$120:;
	label$119:;
	if( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 40ll) == (struct $8FBSYMBOL*)0ull ) goto label$122;
	{
		HADDLETOPBODY( UDT$1, *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 40ll) );
	}
	label$122:;
	label$121:;
	if( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 32ll) == (struct $8FBSYMBOL*)0ull ) goto label$124;
	{
		HADDCTORBODY( UDT$1, *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 32ll), -1ll );
	}
	label$124:;
	label$123:;
	if( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$126;
	{
		HADDCTORBODY( UDT$1, *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 24ll), -1ll );
	}
	label$126:;
	label$125:;
	if( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 8ll) == (struct $8FBSYMBOL*)0ull ) goto label$128;
	{
		HADDCTORBODY( UDT$1, *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 8ll), 0ll );
	}
	label$128:;
	label$127:;
	if( *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 16ll) == (struct $8FBSYMBOL*)0ull ) goto label$130;
	{
		HADDCTORBODY( UDT$1, *(struct $8FBSYMBOL**)((uint8*)DEFAULT$1 + 16ll), 0ll );
	}
	label$130:;
	label$129:;
	label$114:;
}

int64 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$141:;
	struct $8FBSYMBOL* vr$1 = SYMBGETCOMPCOPYCTOR( SYM$1 );
	struct $8FBSYMBOL* vr$3 = SYMBGETCOMPDTOR1( SYM$1 );
	fb$result$1 = ((int64)-(vr$1 == (struct $8FBSYMBOL*)0ull) & (int64)-(vr$3 == (struct $8FBSYMBOL*)0ull)) & (int64)-((*(int64*)((uint8*)SYM$1 + 24ll) & 4194304ll) == 0ll);
	label$142:;
	return fb$result$1;
}

void SYMBSETCOMPCTORHEAD( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PROC$1 )
{
	label$143:;
	if( *(int64*)SYM$1 != 10ll ) goto label$146;
	{
		SYMBUDTALLOCEXT( SYM$1 );
		if( *(struct $8FBSYMBOL**)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) != (struct $8FBSYMBOL*)0ull ) goto label$148;
		{
			*(struct $8FBSYMBOL**)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) = PROC$1;
		}
		label$148:;
		label$147:;
	}
	label$146:;
	label$145:;
	label$144:;
}

void SYMBCHECKCOMPCTOR( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PROC$1 )
{
	label$149:;
	if( *(int64*)SYM$1 != 10ll ) goto label$152;
	{
		{
			int16 TMP$88$3;
			TMP$88$3 = *(int16*)((uint8*)PROC$1 + 120ll);
			if( (int64)TMP$88$3 != 1ll ) goto label$154;
			label$155:;
			{
				*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 8ll) = PROC$1;
			}
			goto label$153;
			label$154:;
			if( (int64)TMP$88$3 != 2ll ) goto label$156;
			label$157:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 16ll) != (struct $8FBSYMBOL*)0ull ) goto label$159;
				{
					int64 vr$8 = HHASBYREFSELFPARAM( PROC$1, 20ll, SYM$1 );
					if( vr$8 == 0ll ) goto label$161;
					{
						*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 16ll) = PROC$1;
					}
					label$161:;
					label$160:;
				}
				label$159:;
				label$158:;
				if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 24ll) != (struct $8FBSYMBOL*)0ull ) goto label$163;
				{
					int64 vr$13 = HHASBYREFSELFPARAM( PROC$1, 532ll, SYM$1 );
					if( vr$13 == 0ll ) goto label$165;
					{
						*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 24ll) = PROC$1;
					}
					label$165:;
					label$164:;
				}
				label$163:;
				label$162:;
			}
			label$156:;
			label$153:;
		}
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 8ll) != (struct $8FBSYMBOL*)0ull ) goto label$167;
		{
			if( (int64)*(int16*)((uint8*)PROC$1 + 122ll) != ((int64)*(int16*)((uint8*)PROC$1 + 120ll) + -1ll) ) goto label$169;
			{
				*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 8ll) = PROC$1;
			}
			label$169:;
			label$168:;
		}
		label$167:;
		label$166:;
	}
	label$152:;
	label$151:;
	label$150:;
}

void SYMBSETCOMPDTOR1( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PROC$1 )
{
	label$170:;
	if( *(int64*)SYM$1 != 10ll ) goto label$173;
	{
		SYMBUDTALLOCEXT( SYM$1 );
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 32ll) != (struct $8FBSYMBOL*)0ull ) goto label$175;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 32ll) = PROC$1;
		}
		label$175:;
		label$174:;
	}
	label$173:;
	label$172:;
	label$171:;
}

void SYMBSETCOMPDTOR0( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PROC$1 )
{
	label$176:;
	if( *(int64*)SYM$1 != 10ll ) goto label$179;
	{
		SYMBUDTALLOCEXT( SYM$1 );
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 40ll) != (struct $8FBSYMBOL*)0ull ) goto label$181;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 40ll) = PROC$1;
		}
		label$181:;
		label$180:;
	}
	label$179:;
	label$178:;
	label$177:;
}

struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$182:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$185;
	{
		if( *(int64*)SYM$1 != 10ll ) goto label$187;
		{
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$189;
			{
				fb$result$1 = *(struct $8FBSYMBOL**)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll);
			}
			label$189:;
			label$188:;
		}
		label$187:;
		label$186:;
	}
	label$185:;
	label$184:;
	label$183:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$190:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$193;
	{
		if( *(int64*)SYM$1 != 10ll ) goto label$195;
		{
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$197;
			{
				fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 8ll);
			}
			label$197:;
			label$196:;
		}
		label$195:;
		label$194:;
	}
	label$193:;
	label$192:;
	label$191:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$202:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$205;
	{
		if( *(int64*)SYM$1 != 10ll ) goto label$207;
		{
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$209;
			{
				fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 32ll);
			}
			label$209:;
			label$208:;
		}
		label$207:;
		label$206:;
	}
	label$205:;
	label$204:;
	label$203:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBGETCOMPDTOR0( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$210:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$213;
	{
		if( *(int64*)SYM$1 != 10ll ) goto label$215;
		{
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$217;
			{
				fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 40ll);
			}
			label$217:;
			label$216:;
		}
		label$215:;
		label$214:;
	}
	label$213:;
	label$212:;
	label$211:;
	return fb$result$1;
}

void SYMBCHECKCOMPLETOP( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PROC$1 )
{
	label$218:;
	if( *(int64*)SYM$1 != 10ll ) goto label$221;
	{
		int64 vr$1 = HHASBYREFSELFPARAM( PROC$1, 20ll, SYM$1 );
		if( vr$1 == 0ll ) goto label$223;
		{
			SYMBUDTALLOCEXT( SYM$1 );
			*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 48ll) = PROC$1;
		}
		label$223:;
		label$222:;
		int64 vr$4 = HHASBYREFSELFPARAM( PROC$1, 532ll, SYM$1 );
		if( vr$4 == 0ll ) goto label$225;
		{
			SYMBUDTALLOCEXT( SYM$1 );
			*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 56ll) = PROC$1;
		}
		label$225:;
		label$224:;
	}
	label$221:;
	label$220:;
	label$219:;
}

int64 SYMBCOMPHASCOPYLETOPS( struct $8FBSYMBOL* UDT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$226:;
	if( *(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$229;
	{
		fb$result$1 = (int64)-(*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 48ll) != (struct $8FBSYMBOL*)0ull) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 56ll) != (struct $8FBSYMBOL*)0ull);
	}
	label$229:;
	label$228:;
	label$227:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL* SYM$1, $6AST_OP OP$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$230:;
	if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$233;
	{
		{
			$12FB_SYMBCLASS TMP$89$3;
			TMP$89$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$89$3 != 10ll ) goto label$235;
			label$236:;
			{
				if( *(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) != (struct $12FB_STRUCTEXT*)0ull ) goto label$238;
				{
					fb$result$1 = (struct $8FBSYMBOL*)0ull;
					goto label$231;
				}
				label$238:;
				label$237:;
				fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + (OP$1 << (3ll & 63ll))) + 64ll);
			}
			goto label$234;
			label$235:;
			if( TMP$89$3 != 9ll ) goto label$239;
			label$240:;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
			}
			goto label$234;
			label$239:;
			if( TMP$89$3 != 11ll ) goto label$241;
			label$242:;
			{
			}
			label$241:;
			label$234:;
		}
	}
	goto label$232;
	label$233:;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (3ll & 63ll))) + 198208ll);
	}
	label$232:;
	label$231:;
	return fb$result$1;
}

void SYMBSETCOMPOPOVLHEAD( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PROC$1 )
{
	label$243:;
	$6AST_OP OP$1;
	OP$1 = *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll);
	if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$246;
	{
		if( *(int64*)SYM$1 != 10ll ) goto label$248;
		{
			SYMBUDTALLOCEXT( SYM$1 );
			*(struct $8FBSYMBOL**)((uint8*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + (OP$1 << (3ll & 63ll))) + 64ll) = PROC$1;
		}
		label$248:;
		label$247:;
		if( OP$1 != 0ll ) goto label$250;
		{
			SYMBCHECKCOMPLETOP( SYM$1, PROC$1 );
		}
		label$250:;
		label$249:;
	}
	goto label$245;
	label$246:;
	{
		*(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (3ll & 63ll))) + 198208ll) = PROC$1;
	}
	label$245:;
	label$244:;
}

int64 SYMBCOMPADDVIRTUAL( struct $8FBSYMBOL* UDT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$251:;
	SYMBUDTALLOCEXT( UDT$1 );
	HSETMINIMUMVTABLESIZE( UDT$1 );
	fb$result$1 = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 288ll);
	*(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 288ll) = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 288ll) + 1ll;
	label$252:;
	return fb$result$1;
}

int64 SYMBCOMPGETABSTRACTCOUNT( struct $8FBSYMBOL* UDT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$253:;
	if( *(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$256;
	{
		fb$result$1 = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 312ll);
	}
	label$256:;
	label$255:;
	label$254:;
	return fb$result$1;
}

void SYMBNESTBEGIN( struct $8FBSYMBOL* SYM$1, int64 INSERT_CHAIN$1 )
{
	label$291:;
	struct $11FB_SYMBNEST* N$1;
	struct $8FBHASHTB* HASHTB$1;
	struct $10FBSYMBOLTB* SYMBTB$1;
	void* vr$1 = STACKPUSH( (struct $6TSTACK*)((uint8*)&SYMB$ + 197048ll) );
	N$1 = (struct $11FB_SYMBNEST*)vr$1;
	*(struct $8FBSYMBOL**)N$1 = SYM$1;
	*(struct $10FBSYMBOLTB**)((uint8*)N$1 + 8ll) = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll);
	*(struct $8FBHASHTB**)((uint8*)N$1 + 16ll) = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll);
	if( *(int64*)SYM$1 != 3ll ) goto label$294;
	{
		SYMBTB$1 = (struct $10FBSYMBOLTB*)((uint8*)SYM$1 + 96ll);
		HASHTB$1 = (struct $8FBHASHTB*)0ull;
	}
	goto label$293;
	label$294:;
	{
		SYMBTB$1 = (struct $10FBSYMBOLTB*)((uint8*)SYM$1 + 96ll);
		HASHTB$1 = (struct $8FBHASHTB*)((uint8*)SYM$1 + 120ll);
	}
	label$293:;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = SYMBTB$1;
	if( HASHTB$1 == (struct $8FBHASHTB*)0ull ) goto label$296;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
		*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) = SYM$1;
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll) = HASHTB$1;
		if( *(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$298;
		{
			void* vr$15 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
			*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) = (struct $13FBNAMESPC_EXT*)vr$15;
		}
		label$298:;
		label$297:;
		*(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 32ll) = *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 32ll) + 1ll;
		if( *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 32ll) == 1ll ) goto label$300;
		{
			SYMBHASHLISTREMOVENAMESPACE( SYM$1 );
		}
		label$300:;
		label$299:;
		SYMBHASHLISTADD( HASHTB$1 );
		if( INSERT_CHAIN$1 == 0ll ) goto label$302;
		{
			HINSERTNESTED( SYM$1, HASHTB$1, *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
		}
		label$302:;
		label$301:;
		HINSERTIMPORTED( SYM$1 );
	}
	label$296:;
	label$295:;
	label$292:;
}

void SYMBNESTEND( int64 REMOVE_CHAIN$1 )
{
	label$303:;
	struct $11FB_SYMBNEST* N$1;
	struct $8FBHASHTB* HASHTB$1;
	struct $8FBSYMBOL* SYM$1;
	void* vr$1 = STACKGETTOS( (struct $6TSTACK*)((uint8*)&SYMB$ + 197048ll) );
	N$1 = (struct $11FB_SYMBNEST*)vr$1;
	SYM$1 = *(struct $8FBSYMBOL**)N$1;
	if( *(int64*)SYM$1 != 3ll ) goto label$306;
	{
		HASHTB$1 = (struct $8FBHASHTB*)0ull;
	}
	goto label$305;
	label$306:;
	{
		HASHTB$1 = (struct $8FBHASHTB*)((uint8*)SYM$1 + 120ll);
	}
	label$305:;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = *(struct $10FBSYMBOLTB**)((uint8*)N$1 + 8ll);
	if( HASHTB$1 == (struct $8FBHASHTB*)0ull ) goto label$308;
	{
		HREMOVEIMPORTED( SYM$1 );
		if( REMOVE_CHAIN$1 == 0ll ) goto label$310;
		{
			HREMOVENESTED( SYM$1, *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
		}
		label$310:;
		label$309:;
		*(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 32ll) = *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 32ll) + -1ll;
		SYMBHASHLISTDEL( HASHTB$1 );
		if( *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 32ll) == 0ll ) goto label$312;
		{
			SYMBHASHLISTINSERTNAMESPACE( SYM$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll) );
		}
		label$312:;
		label$311:;
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll) = *(struct $8FBHASHTB**)((uint8*)N$1 + 16ll);
		*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	}
	label$308:;
	label$307:;
	STACKPOP( (struct $6TSTACK*)((uint8*)&SYMB$ + 197048ll) );
	label$304:;
}

void SYMBCOMPADDTOIMPORTLIST( struct $8FBSYMBOL* IMP_$1 )
{
	label$313:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 120ll);
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$316;
	{
		void* vr$3 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
		*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) = (struct $13FBNAMESPC_EXT*)vr$3;
	}
	label$316:;
	label$315:;
	if( *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 8ll) == (struct $8FBSYMBOL*)0ull ) goto label$318;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 8ll) + 112ll) = IMP_$1;
	}
	goto label$317;
	label$318:;
	{
		*(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) = IMP_$1;
	}
	label$317:;
	*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 104ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 8ll);
	*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 8ll) = IMP_$1;
	label$314:;
}

void SYMBCOMPDELFROMIMPORTLIST( struct $8FBSYMBOL* IMP_$1 )
{
	label$319:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 120ll);
	if( *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 104ll) != (struct $8FBSYMBOL*)0ull ) goto label$322;
	{
		*(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll);
	}
	goto label$321;
	label$322:;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 104ll) + 112ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll);
	}
	label$321:;
	if( *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll) != (struct $8FBSYMBOL*)0ull ) goto label$324;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 8ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 104ll);
	}
	goto label$323;
	label$324:;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll) + 104ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 104ll);
	}
	label$323:;
	label$320:;
}

void SYMBCOMPADDTOEXPORTLIST( struct $8FBSYMBOL* IMP_$1 )
{
	label$325:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 96ll);
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$328;
	{
		void* vr$3 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
		*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) = (struct $13FBNAMESPC_EXT*)vr$3;
	}
	label$328:;
	label$327:;
	if( *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$330;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 24ll) + 136ll) = IMP_$1;
	}
	goto label$329;
	label$330:;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 16ll) = IMP_$1;
	}
	label$329:;
	*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 128ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 24ll);
	*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 136ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 24ll) = IMP_$1;
	label$326:;
}

void SYMBCOMPDELFROMEXPORTLIST( struct $8FBSYMBOL* IMP_$1 )
{
	label$331:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 96ll);
	if( *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 128ll) != (struct $8FBSYMBOL*)0ull ) goto label$334;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 16ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 136ll);
	}
	goto label$333;
	label$334:;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 128ll) + 136ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 136ll);
	}
	label$333:;
	if( *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 136ll) != (struct $8FBSYMBOL*)0ull ) goto label$336;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 24ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 128ll);
	}
	goto label$335;
	label$336:;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 136ll) + 128ll) = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 128ll);
	}
	label$335:;
	label$332:;
}

void SYMBCOMPDELIMPORTLIST( struct $8FBSYMBOL* SYM$1 )
{
	label$337:;
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$340;
	{
		goto label$338;
	}
	label$340:;
	label$339:;
	struct $8FBSYMBOL* EXP_$1;
	EXP_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) + 16ll);
	label$341:;
	if( EXP_$1 == (struct $8FBSYMBOL*)0ull ) goto label$342;
	{
		SYMBCOMPDELFROMIMPORTLIST( EXP_$1 );
		struct $8FBSYMBOL* NXT$2;
		NXT$2 = *(struct $8FBSYMBOL**)((uint8*)EXP_$1 + 136ll);
		SYMBCOMPDELFROMEXPORTLIST( EXP_$1 );
		*(struct $8FBSYMBOL**)((uint8*)EXP_$1 + 96ll) = (struct $8FBSYMBOL*)0ull;
		EXP_$1 = NXT$2;
	}
	goto label$341;
	label$342:;
	label$338:;
}

void SYMBCOMPRTTIINIT( void )
{
	label$343:;
	struct $8FBSYMBOL* RTTITYPE$1;
	struct $8FBSYMBOL* OBJTYPE$1;
	struct $8FBSYMBOL* OBJRTTI$1;
	struct $8FBSYMBOL* CTOR$1;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$90$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $8FBSYMBOL* vr$0 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, (struct $8FBSYMBOL*)0ull, (uint8*)"fb_RTTI$", (uint8*)"fb_RTTI$", 0ll, 0ll, 0ll, 0ll, 0ll );
	RTTITYPE$1 = vr$0;
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199232ll) = RTTITYPE$1;
	SYMBADDFIELD( RTTITYPE$1, (uint8*)"stdlibvtable", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$90$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( RTTITYPE$1, (uint8*)"id", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$90$1, 36ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	SYMBADDFIELD( RTTITYPE$1, (uint8*)"rttibase", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$90$1, 52ll, RTTITYPE$1, 0ll, 0ll, 0ll );
	SYMBSTRUCTEND( RTTITYPE$1, 0ll );
	uint8* PTYPENAME$1;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$346;
	{
		PTYPENAME$1 = (uint8*)"__OBJECT";
	}
	goto label$345;
	label$346:;
	{
		PTYPENAME$1 = (uint8*)"OBJECT";
	}
	label$345:;
	struct $8FBSYMBOL* vr$1 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, (struct $8FBSYMBOL*)0ull, PTYPENAME$1, (uint8*)"fb_Object$", 0ll, 0ll, 0ll, 0ll, 0ll );
	OBJTYPE$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199240ll) = OBJTYPE$1;
	*($12FB_SYMBSTATS*)((uint8*)OBJTYPE$1 + 24ll) = *(int64*)((uint8*)OBJTYPE$1 + 24ll) | 4194304ll;
	*($12FB_SYMBSTATS*)((uint8*)OBJTYPE$1 + 24ll) = *(int64*)((uint8*)OBJTYPE$1 + 24ll) | 262144ll;
	SYMBNESTBEGIN( OBJTYPE$1, 0ll );
	SYMBADDFIELD( OBJTYPE$1, (uint8*)"vptr$", 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$90$1, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, 0ll );
	$11FB_FUNCMODE MODE$1;
	MODE$1 = 3ll;
	struct $8FBSYMBOL* vr$8 = SYMBPREADDPROC( (uint8*)0ull );
	CTOR$1 = vr$8;
	SYMBADDPROCINSTANCEPARAM( OBJTYPE$1, CTOR$1 );
	SYMBADDCTOR( CTOR$1, (uint8*)0ull, 0ll, 7ll, MODE$1, 0ll );
	struct $8FBSYMBOL* vr$9 = SYMBPREADDPROC( (uint8*)0ull );
	CTOR$1 = vr$9;
	SYMBADDPROCINSTANCEPARAM( OBJTYPE$1, CTOR$1 );
	SYMBADDPROCPARAM( CTOR$1, (uint8*)"__FB_RHS__", 532ll, OBJTYPE$1, 0ll, 2ll, 0ll, 0ll );
	SYMBADDCTOR( CTOR$1, (uint8*)0ull, 0ll, 7ll, MODE$1, 0ll );
	SYMBSTRUCTEND( OBJTYPE$1, -1ll );
	struct $8FBSYMBOL* vr$10 = SYMBADDVAR( (uint8*)0ull, (uint8*)"__fb_ZTS6Object", 20ll, *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199232ll), 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$90$1, 17ll, 1ll );
	OBJRTTI$1 = vr$10;
	SYMBUDTALLOCEXT( OBJTYPE$1 );
	*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)OBJTYPE$1 + 240ll) + 304ll) = OBJRTTI$1;
	label$344:;
}

void SYMBCOMPRTTIEND( void )
{
	label$347:;
	label$348:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $8FBSYMBOL* HDECLAREPROC( struct $8FBSYMBOL* UDT$1, $6AST_OP OP$1, int64 RHSDTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, $11FB_FUNCMODE MODE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$22:;
	struct $8FBSYMBOL* PROC$1;
	SYMBNESTBEGIN( UDT$1, -1ll );
	struct $8FBSYMBOL* vr$1 = SYMBPREADDPROC( (uint8*)0ull );
	PROC$1 = vr$1;
	SYMBADDPROCINSTANCEPARAM( UDT$1, PROC$1 );
	if( RHSDTYPE$1 == 2147483648ll ) goto label$25;
	{
		SYMBADDPROCPARAM( PROC$1, (uint8*)"__FB_RHS__", RHSDTYPE$1, UDT$1, 0ll, 2ll, 0ll, 0ll );
	}
	label$25:;
	label$24:;
	ATTRIB$1 = ATTRIB$1 | 64ll;
	PATTRIB$1 = PATTRIB$1 | 2ll;
	if( OP$1 != -1ll ) goto label$27;
	{
		struct $8FBSYMBOL* vr$4 = SYMBADDCTOR( PROC$1, (uint8*)0ull, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
		PROC$1 = vr$4;
	}
	goto label$26;
	label$27:;
	{
		struct $8FBSYMBOL* vr$5 = SYMBADDOPERATOR( PROC$1, OP$1, (uint8*)0ull, 0ll, (struct $8FBSYMBOL*)0ull, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
		PROC$1 = vr$5;
	}
	label$26:;
	SYMBNESTEND( -1ll );
	fb$result$1 = PROC$1;
	label$23:;
	return fb$result$1;
}

static void HSETMINIMUMVTABLESIZE( struct $8FBSYMBOL* UDT$1 )
{
	label$28:;
	if( *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 288ll) != 0ll ) goto label$31;
	{
		*(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 288ll) = 2ll;
	}
	label$31:;
	label$30:;
	label$29:;
}

static void HBUILDRTTI( struct $8FBSYMBOL* UDT$1 )
{
	label$32:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$84$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $7ASTNODE* INITREE$1;
	struct $7ASTNODE* RTTIBASE$1;
	struct $8FBSYMBOL* RTTI$1;
	struct $8FBSYMBOL* FLD$1;
	SYMBNESTBEGIN( UDT$1, -1ll );
	struct $8FBSYMBOL* vr$0 = SYMBADDVAR( (uint8*)0ull, (uint8*)0ull, 20ll, *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199232ll), 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$84$1, 8390659ll, 1ll );
	RTTI$1 = vr$0;
	*($12FB_SYMBSTATS*)((uint8*)RTTI$1 + 24ll) = *(int64*)((uint8*)RTTI$1 + 24ll) | 256ll;
	SYMBNESTEND( -1ll );
	*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 304ll) = RTTI$1;
	struct $7ASTNODE* vr$6 = ASTTYPEINIBEGIN( 20ll, *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199232ll), 0ll, 0ll );
	INITREE$1 = vr$6;
	ASTTYPEINISCOPEBEGIN( INITREE$1, RTTI$1, 0ll );
	struct $8FBSYMBOL* vr$7 = SYMBUDTGETFIRSTFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199232ll) );
	FLD$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 32ll, (struct $8FBSYMBOL*)0ull );
	ASTTYPEINIADDASSIGN( INITREE$1, vr$8, FLD$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
	struct $8FBSYMBOL* vr$9 = SYMBUDTGETNEXTINITABLEFIELD( FLD$1 );
	FLD$1 = vr$9;
	uint8* vr$10 = SYMBGETMANGLEDNAME( UDT$1 );
	struct $8FBSYMBOL* vr$11 = SYMBALLOCSTRCONST( vr$10, -1ll );
	struct $7ASTNODE* vr$12 = ASTNEWVAR( vr$11, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$13 = ASTNEWADDROF( vr$12 );
	ASTTYPEINIADDASSIGN( INITREE$1, vr$13, FLD$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
	struct $8FBSYMBOL* vr$14 = SYMBUDTGETNEXTINITABLEFIELD( FLD$1 );
	FLD$1 = vr$14;
	if( *(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) == (struct $8FBSYMBOL*)0ull ) goto label$35;
	{
		struct $7ASTNODE* vr$20 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) + 64ll) + 240ll) + 304ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$21 = ASTNEWADDROF( vr$20 );
		RTTIBASE$1 = vr$21;
	}
	goto label$34;
	label$35:;
	{
		struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 32ll, (struct $8FBSYMBOL*)0ull );
		RTTIBASE$1 = vr$22;
	}
	label$34:;
	ASTTYPEINIADDASSIGN( INITREE$1, RTTIBASE$1, FLD$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
	ASTTYPEINISCOPEEND( INITREE$1, RTTI$1 );
	ASTTYPEINIEND( INITREE$1, -1ll );
	*(struct $7ASTNODE**)((uint8*)RTTI$1 + 96ll) = INITREE$1;
	label$33:;
}

static void HBUILDVTABLE( struct $8FBSYMBOL* UDT$1 )
{
	label$36:;
	static struct $10FBARRAYDIM DTB$1[1];
	static struct $8FBARRAY1I10FBARRAYDIME tmp$85$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 16ll, 16ll, 1ll, 49ll, { { 1ll, 0ll, 0ll } } };
	struct $7ASTNODE* INITREE$1;
	struct $7ASTNODE* BASEVTABLEINITREE$1;
	struct $8FBSYMBOL* MEMBER$1;
	struct $8FBSYMBOL* RTTI$1;
	struct $8FBSYMBOL* VTABLE$1;
	int64 I$1;
	int64 BASEVTABLEELEMENTS$1;
	SYMBNESTBEGIN( UDT$1, -1ll );
	*(int64*)((int64)(struct $10FBARRAYDIM*)DTB$1 + 8ll) = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 288ll) + -1ll;
	struct $8FBSYMBOL* vr$3 = SYMBADDVAR( (uint8*)0ull, (uint8*)0ull, 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 1ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$85$1, 8390659ll, 1ll );
	VTABLE$1 = vr$3;
	*($12FB_SYMBSTATS*)((uint8*)VTABLE$1 + 24ll) = *(int64*)((uint8*)VTABLE$1 + 24ll) | 1024ll;
	SYMBNESTEND( -1ll );
	BASEVTABLEELEMENTS$1 = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) + 64ll) + 240ll) + 288ll);
	if( BASEVTABLEELEMENTS$1 <= 2ll ) goto label$39;
	{
		BASEVTABLEINITREE$1 = *(struct $7ASTNODE**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) + 64ll) + 240ll) + 296ll) + 96ll);
	}
	goto label$38;
	label$39:;
	{
		BASEVTABLEINITREE$1 = (struct $7ASTNODE*)0ull;
	}
	label$38:;
	struct $7ASTNODE* vr$16 = ASTTYPEINIBEGIN( 32ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	INITREE$1 = vr$16;
	ASTTYPEINISCOPEBEGIN( INITREE$1, VTABLE$1, -1ll );
	struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 32ll, (struct $8FBSYMBOL*)0ull );
	ASTTYPEINIADDASSIGN( INITREE$1, vr$17, VTABLE$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
	RTTI$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 304ll);
	struct $7ASTNODE* vr$20 = ASTNEWVAR( RTTI$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$21 = ASTNEWADDROF( vr$20 );
	ASTTYPEINIADDASSIGN( INITREE$1, vr$21, VTABLE$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
	I$1 = 2ll;
	if( BASEVTABLEINITREE$1 == (struct $7ASTNODE*)0ull ) goto label$41;
	{
		ASTTYPEINICOPYELEMENTS( INITREE$1, BASEVTABLEINITREE$1, 2ll );
		I$1 = (I$1 + BASEVTABLEELEMENTS$1) + -2ll;
	}
	label$41:;
	label$40:;
	label$42:;
	if( I$1 > *(int64*)((int64)(struct $10FBARRAYDIM*)DTB$1 + 8ll) ) goto label$43;
	{
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( 0ll, 32ll, (struct $8FBSYMBOL*)0ull );
		ASTTYPEINIADDASSIGN( INITREE$1, vr$24, VTABLE$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
		I$1 = I$1 + 1ll;
	}
	goto label$42;
	label$43:;
	ASTTYPEINISCOPEEND( INITREE$1, VTABLE$1 );
	ASTTYPEINIEND( INITREE$1, -1ll );
	*(struct $7ASTNODE**)((uint8*)VTABLE$1 + 96ll) = INITREE$1;
	MEMBER$1 = *(struct $8FBSYMBOL**)((uint8*)UDT$1 + 104ll);
	label$44:;
	if( MEMBER$1 == (struct $8FBSYMBOL*)0ull ) goto label$45;
	{
		if( *(int64*)MEMBER$1 != 3ll ) goto label$47;
		{
			int64 vr$29 = SYMBPROCGETVTABLEINDEX( MEMBER$1 );
			I$1 = vr$29;
			if( ((int64)-(I$1 > 0ll) & (int64)-((*(int64*)((uint8*)MEMBER$1 + 16ll) & 512ll) == 0ll)) == 0ll ) goto label$49;
			{
				struct $7ASTNODE* vr$35 = ASTBUILDPROCADDROF( MEMBER$1 );
				ASTTYPEINIREPLACEELEMENT( INITREE$1, I$1, vr$35 );
			}
			label$49:;
			label$48:;
		}
		label$47:;
		label$46:;
		MEMBER$1 = *(struct $8FBSYMBOL**)((uint8*)MEMBER$1 + 312ll);
	}
	goto label$44;
	label$45:;
	*(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)UDT$1 + 240ll) + 296ll) = VTABLE$1;
	label$37:;
}

static void HPROCBEGIN( struct $8FBSYMBOL* UDT$1, struct $8FBSYMBOL* PROC$1 )
{
	label$50:;
	SYMBNESTBEGIN( UDT$1, -1ll );
	ASTPROCBEGIN( PROC$1, 0ll );
	label$51:;
}

static void HPROCEND( void )
{
	label$52:;
	ASTPROCEND( 0ll );
	SYMBNESTEND( -1ll );
	label$53:;
}

static void HADDCTORBODY( struct $8FBSYMBOL* UDT$1, struct $8FBSYMBOL* PROC$1, int64 IS_COPYCTOR$1 )
{
	label$54:;
	HPROCBEGIN( UDT$1, PROC$1 );
	if( IS_COPYCTOR$1 == 0ll ) goto label$57;
	{
		struct $7ASTNODE* vr$2 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll) + 104ll), (struct $8FBSYMBOL*)0ull, 0ll );
		struct $7ASTNODE* vr$5 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll), (struct $8FBSYMBOL*)0ull, 0ll );
		struct $7ASTNODE* vr$6 = ASTNEWASSIGN( vr$5, vr$2, 0ll );
		ASTADD( vr$6 );
	}
	label$57:;
	label$56:;
	HPROCEND(  );
	*($12FB_SYMBSTATS*)((uint8*)UDT$1 + 24ll) = *(int64*)((uint8*)UDT$1 + 24ll) | 8388608ll;
	label$55:;
}

static void HASSIGNDYNAMICARRAY( struct $8FBSYMBOL* FLD$1, struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* RHS$1 )
{
	label$60:;
	int64 DTYPE$1;
	struct $8FBSYMBOL* DST$1;
	struct $8FBSYMBOL* SRC$1;
	struct $8FBSYMBOL* LIMIT$1;
	struct $8FBSYMBOL* LOOPLABEL$1;
	struct $8FBSYMBOL* EXITLABEL$1;
	DTYPE$1 = *(int64*)((uint8*)FLD$1 + 56ll);
	struct $7ASTNODE* vr$2 = ASTBUILDVARFIELD( RHS$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$3 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$4 = RTLARRAYREDIMTO( vr$3, vr$2, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
	ASTADD( vr$4 );
	DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
	struct $8FBSYMBOL* vr$14 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	LOOPLABEL$1 = vr$14;
	struct $8FBSYMBOL* vr$15 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	EXITLABEL$1 = vr$15;
	struct $8FBSYMBOL* vr$17 = SYMBADDTEMPVAR( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
	DST$1 = vr$17;
	struct $8FBSYMBOL* vr$19 = SYMBADDTEMPVAR( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
	SRC$1 = vr$19;
	struct $8FBSYMBOL* vr$21 = SYMBADDTEMPVAR( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
	LIMIT$1 = vr$21;
	struct $7ASTNODE* vr$23 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$24 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$23, *(int64*)((uint8*)&SYMB$ + 199184ll), DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll), (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$25 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( DST$1, vr$24, 64ll );
	ASTADD( vr$25 );
	struct $7ASTNODE* vr$27 = ASTBUILDVARFIELD( RHS$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$28 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$27, *(int64*)((uint8*)&SYMB$ + 199184ll), DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll), (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$29 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( SRC$1, vr$28, 64ll );
	ASTADD( vr$29 );
	struct $7ASTNODE* vr$30 = ASTBUILDVARFIELD( RHS$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$31 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$30, *(int64*)((uint8*)&SYMB$ + 199192ll), 9ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$32 = ASTNEWVAR( SRC$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$33 = ASTNEWBOP( 28ll, vr$32, vr$31, (struct $8FBSYMBOL*)0ull, 1ll );
	struct $7ASTNODE* vr$34 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( LIMIT$1, vr$33, 64ll );
	ASTADD( vr$34 );
	struct $7ASTNODE* vr$35 = ASTNEWLABEL( LOOPLABEL$1, -1ll );
	ASTADD( vr$35 );
	struct $7ASTNODE* vr$36 = ASTNEWVAR( LIMIT$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$37 = ASTNEWVAR( SRC$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$38 = ASTNEWBOP( 49ll, vr$37, vr$36, (struct $8FBSYMBOL*)0ull, 1ll );
	struct $7ASTNODE* vr$39 = ASTBUILDBRANCH( vr$38, EXITLABEL$1, -1ll, 0ll );
	ASTADD( vr$39 );
	struct $7ASTNODE* vr$40 = ASTBUILDVARDEREF( SRC$1 );
	struct $7ASTNODE* vr$41 = ASTBUILDVARDEREF( DST$1 );
	struct $7ASTNODE* vr$42 = ASTNEWASSIGN( vr$41, vr$40, 0ll );
	ASTADD( vr$42 );
	struct $7ASTNODE* vr$43 = ASTBUILDVARINC( DST$1, 1ll );
	ASTADD( vr$43 );
	struct $7ASTNODE* vr$44 = ASTBUILDVARINC( SRC$1, 1ll );
	ASTADD( vr$44 );
	struct $7ASTNODE* vr$45 = ASTNEWBRANCH( 98ll, LOOPLABEL$1, (struct $7ASTNODE*)0ull );
	ASTADD( vr$45 );
	struct $7ASTNODE* vr$46 = ASTNEWLABEL( EXITLABEL$1, -1ll );
	ASTADD( vr$46 );
	label$61:;
}

static void HASSIGNLIST( struct $8FBSYMBOL* FLD$1, struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* RHS$1 )
{
	label$62:;
	static struct $8FBSYMBOL* CNT$1;
	static struct $8FBSYMBOL* LABEL$1;
	static struct $8FBSYMBOL* DST$1;
	static struct $8FBSYMBOL* SRC$1;
	static struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll);
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
	CNT$1 = vr$1;
	struct $8FBSYMBOL* vr$2 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	LABEL$1 = vr$2;
	struct $8FBSYMBOL* vr$20 = SYMBADDTEMPVAR( ((((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 32505856ll), SUBTYPE$1 );
	DST$1 = vr$20;
	struct $8FBSYMBOL* vr$38 = SYMBADDTEMPVAR( ((((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 32505856ll), SUBTYPE$1 );
	SRC$1 = vr$38;
	struct $7ASTNODE* vr$39 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$40 = ASTNEWADDROF( vr$39 );
	struct $7ASTNODE* vr$41 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( DST$1, vr$40, 64ll );
	ASTADD( vr$41 );
	struct $7ASTNODE* vr$42 = ASTBUILDVARFIELD( RHS$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$43 = ASTNEWADDROF( vr$42 );
	struct $7ASTNODE* vr$44 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( SRC$1, vr$43, 64ll );
	ASTADD( vr$44 );
	struct $7ASTNODE* vr$45 = ASTBUILDFORBEGIN( (struct $7ASTNODE*)0ull, CNT$1, LABEL$1, 0ll, -1ll );
	ASTADD( vr$45 );
	struct $7ASTNODE* vr$46 = ASTBUILDVARDEREF( SRC$1 );
	struct $7ASTNODE* vr$47 = ASTBUILDVARDEREF( DST$1 );
	struct $7ASTNODE* vr$48 = ASTNEWASSIGN( vr$47, vr$46, 0ll );
	ASTADD( vr$48 );
	struct $7ASTNODE* vr$49 = ASTBUILDVARINC( DST$1, 1ll );
	ASTADD( vr$49 );
	struct $7ASTNODE* vr$50 = ASTBUILDVARINC( SRC$1, 1ll );
	ASTADD( vr$50 );
	struct $7ASTNODE* vr$52 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 128ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$53 = ASTBUILDFOREND( (struct $7ASTNODE*)0ull, CNT$1, LABEL$1, vr$52 );
	ASTADD( vr$53 );
	label$63:;
}

static struct $8FBSYMBOL* HCOPYUNIONFIELDS( struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* RHS$1, struct $8FBSYMBOL* BASE_FLD$1 )
{
	int64 TMP$86$1;
	int64 TMP$87$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$64:;
	struct $8FBSYMBOL* FLD$1;
	int64 BYTES$1;
	int64 LGT$1;
	int64 BASE_OFS$1;
	FLD$1 = BASE_FLD$1;
	BYTES$1 = 0ll;
	BASE_OFS$1 = *(int64*)((uint8*)BASE_FLD$1 + 88ll);
	label$66:;
	{
		int64 vr$2 = SYMBGETREALSIZE( FLD$1 );
		LGT$1 = (vr$2 + *(int64*)((uint8*)FLD$1 + 88ll)) - BASE_OFS$1;
		if( LGT$1 <= BYTES$1 ) goto label$70;
		{
			BYTES$1 = LGT$1;
		}
		label$70:;
		label$69:;
		FLD$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 312ll);
	}
	label$68:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$71;
	TMP$86$1 = (int64)-((struct $8FBSYMBOL*)(int64)-(*(int64*)FLD$1 == 12ll) != (struct $8FBSYMBOL*)0ull);
	goto label$349;
	label$71:;
	TMP$86$1 = 0ll;
	label$349:;
	if( TMP$86$1 == 0ll ) goto label$72;
	TMP$87$1 = (int64)-((*(int64*)((uint8*)FLD$1 + 24ll) & 16777216ll) != 0ll);
	goto label$350;
	label$72:;
	TMP$87$1 = 0ll;
	label$350:;
	if( TMP$87$1 != 0ll ) goto label$66;
	label$67:;
	struct $7ASTNODE* vr$13 = ASTBUILDVARFIELD( RHS$1, BASE_FLD$1, 0ll );
	struct $7ASTNODE* vr$14 = ASTBUILDVARFIELD( THIS_$1, BASE_FLD$1, 0ll );
	struct $7ASTNODE* vr$15 = ASTNEWMEM( 105ll, vr$14, vr$13, BYTES$1 );
	ASTADD( vr$15 );
	fb$result$1 = FLD$1;
	label$65:;
	return fb$result$1;
}

static void HADDLETOPBODY( struct $8FBSYMBOL* UDT$1, struct $8FBSYMBOL* LETPROC$1 )
{
	label$73:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* THIS_$1;
	struct $8FBSYMBOL* RHS$1;
	int64 DO_COPY$1;
	HPROCBEGIN( UDT$1, LETPROC$1 );
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LETPROC$1 + 136ll) + 104ll);
	RHS$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LETPROC$1 + 144ll) + 104ll);
	FLD$1 = *(struct $8FBSYMBOL**)((uint8*)UDT$1 + 104ll);
	label$75:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$76;
	{
		DO_COPY$1 = (int64)-(*(int64*)FLD$1 == 12ll) & (int64)-((*(int64*)((uint8*)FLD$1 + 8ll) & 8192ll) == 0ll);
		if( *(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) == (struct $8FBSYMBOL*)0ull ) goto label$78;
		{
			DO_COPY$1 = DO_COPY$1 & ((int64)-(FLD$1 != *(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll)) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)UDT$1 + 176ll) + 64ll) != *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199240ll)));
		}
		label$78:;
		label$77:;
		if( DO_COPY$1 == 0ll ) goto label$80;
		{
			if( (*(int64*)((uint8*)FLD$1 + 24ll) & 16777216ll) == 0ll ) goto label$82;
			{
				struct $8FBSYMBOL* vr$21 = HCOPYUNIONFIELDS( THIS_$1, RHS$1, FLD$1 );
				FLD$1 = vr$21;
				goto label$75;
			}
			label$82:;
			label$81:;
			if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) == 0ll ) goto label$84;
			{
				HASSIGNDYNAMICARRAY( FLD$1, THIS_$1, RHS$1 );
			}
			goto label$83;
			label$84:;
			{
				if( *(int64*)((uint8*)FLD$1 + 104ll) != 0ll ) goto label$86;
				{
					struct $7ASTNODE* vr$25 = ASTBUILDVARFIELD( RHS$1, FLD$1, 0ll );
					struct $7ASTNODE* vr$26 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
					struct $7ASTNODE* vr$27 = ASTNEWASSIGN( vr$26, vr$25, 0ll );
					ASTADD( vr$27 );
				}
				goto label$85;
				label$86:;
				{
					HASSIGNLIST( FLD$1, THIS_$1, RHS$1 );
				}
				label$85:;
			}
			label$83:;
		}
		label$80:;
		label$79:;
		FLD$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 312ll);
	}
	goto label$75;
	label$76:;
	HPROCEND(  );
	*($12FB_SYMBSTATS*)((uint8*)UDT$1 + 24ll) = *(int64*)((uint8*)UDT$1 + 24ll) | 8388608ll;
	label$74:;
}

static int64 HHASBYREFSELFPARAM( struct $8FBSYMBOL* PROC$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$131:;
	struct $8FBSYMBOL* PARAM$1;
	fb$result$1 = 0ll;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	if( *(int64*)((uint8*)PARAM$1 + 96ll) == 2ll ) goto label$134;
	{
		goto label$132;
	}
	label$134:;
	label$133:;
	if( *(int64*)((uint8*)PARAM$1 + 56ll) != ((DTYPE$1 & -512ll) | 23ll) ) goto label$136;
	{
		if( *(uint64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) + 264ll) != *(uint64*)((uint8*)SUBTYPE$1 + 264ll) ) goto label$138;
		{
			int32 vr$14 = fb_StrCompare( *(void**)*(struct $8HASHITEM**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) + 256ll), 0ll, *(void**)*(struct $8HASHITEM**)((uint8*)SUBTYPE$1 + 256ll), 0ll );
			if( (int64)vr$14 != 0ll ) goto label$140;
			{
				fb$result$1 = -1ll;
				goto label$132;
			}
			label$140:;
			label$139:;
		}
		label$138:;
		label$137:;
	}
	label$136:;
	label$135:;
	fb$result$1 = (int64)-(*(int64*)((uint8*)PARAM$1 + 56ll) == DTYPE$1) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) == SUBTYPE$1);
	label$132:;
	return fb$result$1;
}

static struct $8FBSYMBOL* SYMBGETCOMPCOPYCTOR( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$198:;
	if( *(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) == (struct $12FB_STRUCTEXT*)0ull ) goto label$201;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SYM$1 + 240ll) + 16ll);
	}
	label$201:;
	label$200:;
	label$199:;
	return fb$result$1;
}

static void HINSERTNESTED( struct $8FBSYMBOL* SYM$1, struct $8FBHASHTB* LASTTB$1, struct $8FBSYMBOL* BASE_NS$1 )
{
	label$257:;
	struct $8FBHASHTB* HASHTB$1;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll);
	label$259:;
	if( NS$1 == BASE_NS$1 ) goto label$260;
	{
		HASHTB$1 = (struct $8FBHASHTB*)((uint8*)NS$1 + 120ll);
		if( *(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$262;
		{
			void* vr$6 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
			*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) = (struct $13FBNAMESPC_EXT*)vr$6;
		}
		label$262:;
		label$261:;
		*(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 32ll) = *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 32ll) + 1ll;
		if( *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 32ll) == 1ll ) goto label$264;
		{
			SYMBHASHLISTREMOVENAMESPACE( NS$1 );
		}
		label$264:;
		label$263:;
		SYMBHASHLISTADDBEFORE( LASTTB$1, HASHTB$1 );
		LASTTB$1 = HASHTB$1;
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
	}
	goto label$259;
	label$260:;
	label$258:;
}

static void HREMOVENESTED( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* BASE_NS$1 )
{
	label$265:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll);
	label$267:;
	if( NS$1 == BASE_NS$1 ) goto label$268;
	{
		*(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 32ll) = *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 32ll) + -1ll;
		SYMBHASHLISTDEL( (struct $8FBHASHTB*)((uint8*)NS$1 + 120ll) );
		if( *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 32ll) == 0ll ) goto label$270;
		{
			SYMBHASHLISTINSERTNAMESPACE( NS$1, *(struct $8FBSYMBOL**)((uint8*)NS$1 + 104ll) );
		}
		label$270:;
		label$269:;
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
	}
	goto label$267;
	label$268:;
	label$266:;
}

static void HINSERTIMPORTED( struct $8FBSYMBOL* SYM$1 )
{
	label$271:;
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$274;
	{
		goto label$272;
	}
	label$274:;
	label$273:;
	struct $8FBSYMBOL* IMP_$1;
	IMP_$1 = *(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll);
	label$275:;
	if( IMP_$1 == (struct $8FBSYMBOL*)0ull ) goto label$276;
	{
		struct $8FBSYMBOL* NS$2;
		NS$2 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 96ll);
		if( NS$2 == (struct $8FBSYMBOL*)0ull ) goto label$278;
		{
			*(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$2 + 168ll) + 32ll) = *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$2 + 168ll) + 32ll) + 1ll;
			if( *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$2 + 168ll) + 32ll) != 1ll ) goto label$280;
			{
				SYMBHASHLISTINSERTNAMESPACE( NS$2, *(struct $8FBSYMBOL**)((uint8*)NS$2 + 104ll) );
			}
			label$280:;
			label$279:;
		}
		label$278:;
		label$277:;
		IMP_$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll);
	}
	goto label$275;
	label$276:;
	label$272:;
}

static void HREMOVEIMPORTED( struct $8FBSYMBOL* SYM$1 )
{
	label$281:;
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$284;
	{
		goto label$282;
	}
	label$284:;
	label$283:;
	struct $8FBSYMBOL* IMP_$1;
	IMP_$1 = *(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)SYM$1 + 168ll);
	label$285:;
	if( IMP_$1 == (struct $8FBSYMBOL*)0ull ) goto label$286;
	{
		struct $8FBSYMBOL* NS$2;
		NS$2 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 96ll);
		if( NS$2 == (struct $8FBSYMBOL*)0ull ) goto label$288;
		{
			*(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$2 + 168ll) + 32ll) = *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$2 + 168ll) + 32ll) + -1ll;
			if( *(int64*)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$2 + 168ll) + 32ll) != 0ll ) goto label$290;
			{
				SYMBHASHLISTREMOVENAMESPACE( NS$2 );
			}
			label$290:;
			label$289:;
		}
		label$288:;
		label$287:;
		IMP_$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll);
	}
	goto label$285;
	label$286:;
	label$282:;
}
