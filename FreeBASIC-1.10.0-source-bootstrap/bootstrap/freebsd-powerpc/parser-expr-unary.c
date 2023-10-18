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
typedef int32 $12FB_PARSEROPT;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $11AST_CONVOPT;
typedef int32 $14FB_SYMBFINDOPT;
typedef int32 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzexprzunary( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTSKIPCONSTCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWUOP( int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDMULTIDEREF( int32, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int32 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDSELFUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
int32 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* );
int32 SYMBISSTRING( int32 );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $14FB_SYMBTYPEOPT;
int32 CSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32*, $14FB_SYMBTYPEOPT );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $8FBSYMBOL* CIDENTIFIERORUDTMEMBER( struct $8FBSYMBOL**, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CRELEXPRESSION( void );
struct $7ASTNODE* CEXPEXPRESSION( void );
struct $7ASTNODE* CHIGHESTPRECEXPR( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CDEREFEXPRESSION( void );
struct $7ASTNODE* CPROCPTRBODY( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* CADDROFEXPRESSION( void );
struct $7ASTNODE* CPARENTEXPRESSION( void );
struct $7ASTNODE* CATOM( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CMEMBERACCESS( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* CMEMBERDEREF( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* CFUNCPTRORMEMBERDEREF( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* );
struct $7ASTNODE* COPERATORNEW( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
FBSTRING* PPTYPEOF( void );
static struct $7ASTNODE* HCAST( $11AST_CONVOPT );
static struct $7ASTNODE* HPPDEFINEDEXPR( void );
static struct $8FBSYMBOL* HPROCPTRRESOLVEOVERLOAD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, boolean );
static void HCHECKEMPTYPROCPARENS( void );
static struct $7ASTNODE* HPROCPTRBODY( struct $8FBSYMBOL*, struct $8FBSYMBOL*, boolean, int32 );
static struct $7ASTNODE* HVARPTRBODY( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
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

struct $7ASTNODE* CNEGNOTEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	struct $7ASTNODE* NEGEXPR$1;
	{
		int32 TMP$93$2;
		int32 vr$1 = LEXGETTOKEN( 0 );
		TMP$93$2 = vr$1;
		if( TMP$93$2 != 45 ) goto label$19;
		label$20:;
		{
			LEXSKIPTOKEN( 0 );
			struct $7ASTNODE* vr$2 = CEXPEXPRESSION(  );
			NEGEXPR$1 = vr$2;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$22;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				NEGEXPR$1 = vr$3;
			}
			goto label$21;
			label$22:;
			{
				struct $7ASTNODE* vr$4 = ASTNEWUOP( 54, NEGEXPR$1 );
				NEGEXPR$1 = vr$4;
			}
			label$21:;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$24;
			{
				ERRREPORT( 20, 0, (uint8*)0u );
				struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				NEGEXPR$1 = vr$5;
			}
			label$24:;
			label$23:;
			fb$result$1 = NEGEXPR$1;
			goto label$17;
		}
		goto label$18;
		label$19:;
		if( TMP$93$2 != 43 ) goto label$25;
		label$26:;
		{
			LEXSKIPTOKEN( 0 );
			struct $7ASTNODE* vr$6 = CEXPEXPRESSION(  );
			NEGEXPR$1 = vr$6;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$28;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				NEGEXPR$1 = vr$7;
			}
			goto label$27;
			label$28:;
			{
				struct $7ASTNODE* vr$8 = ASTNEWUOP( 53, NEGEXPR$1 );
				NEGEXPR$1 = vr$8;
			}
			label$27:;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$30;
			{
				ERRREPORT( 20, 0, (uint8*)0u );
				struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				NEGEXPR$1 = vr$9;
			}
			label$30:;
			label$29:;
			fb$result$1 = NEGEXPR$1;
			goto label$17;
		}
		goto label$18;
		label$25:;
		if( TMP$93$2 != 295 ) goto label$31;
		label$32:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$10 = CRELEXPRESSION(  );
			NEGEXPR$1 = vr$10;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$34;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				struct $7ASTNODE* vr$11 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				NEGEXPR$1 = vr$11;
			}
			goto label$33;
			label$34:;
			{
				struct $7ASTNODE* vr$12 = ASTNEWUOP( 52, NEGEXPR$1 );
				NEGEXPR$1 = vr$12;
			}
			label$33:;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$36;
			{
				ERRREPORT( 20, 0, (uint8*)0u );
				struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				NEGEXPR$1 = vr$13;
			}
			label$36:;
			label$35:;
			fb$result$1 = NEGEXPR$1;
			goto label$17;
		}
		label$31:;
		label$18:;
	}
	struct $7ASTNODE* vr$14 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0u, (struct $10FBSYMCHAIN*)0u );
	fb$result$1 = vr$14;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$37:;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 DTYPE$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$40;
	{
		goto label$38;
		label$40:;
	}
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
	{
		int32 TMP$94$2;
		uint32 TMP$95$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$41;
		TMP$94$2 = 24;
		goto label$68;
		label$41:;
		TMP$94$2 = DTYPE$1 & 31;
		label$68:;
		TMP$95$2 = (uint32)TMP$94$2;
		goto label$43;
		label$44:;
		{
			int32 vr$5 = LEXGETTOKEN( 0 );
			if( vr$5 != 91 ) goto label$46;
			{
				struct $7ASTNODE* vr$6 = CMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, -1 );
				EXPR$1 = vr$6;
			}
			label$46:;
			label$45:;
			fb$result$1 = EXPR$1;
			goto label$38;
		}
		goto label$42;
		label$47:;
		{
			{
				int32 TMP$96$4;
				int32 vr$7 = LEXGETTOKEN( 0 );
				TMP$96$4 = vr$7;
				if( TMP$96$4 != 46 ) goto label$49;
				label$50:;
				{
					LEXSKIPTOKEN( 64 );
					struct $7ASTNODE* vr$8 = CMEMBERACCESS( DTYPE$1, SUBTYPE$1, EXPR$1 );
					EXPR$1 = vr$8;
					if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$52;
					{
						fb$result$1 = (struct $7ASTNODE*)0u;
						goto label$38;
					}
					label$52:;
					label$51:;
					DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4);
					SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
				}
				goto label$48;
				label$49:;
				if( TMP$96$4 == 400 ) goto label$54;
				label$55:;
				if( TMP$96$4 != 91 ) goto label$53;
				label$54:;
				{
					struct $7ASTNODE* vr$11 = CMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, -1 );
					EXPR$1 = vr$11;
				}
				label$53:;
				label$48:;
			}
		}
		goto label$42;
		label$43:;
		static const void* tmp$98[17] = {
			&&label$44,
			&&label$42,
			&&label$42,
			&&label$44,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$42,
			&&label$44,
			&&label$44,
			&&label$42,
			&&label$47,
		};
		if( (TMP$95$2 - 4u) > 16u ) goto label$42;
		goto *tmp$98[TMP$95$2 - 4u];
		label$42:;
	}
	if( (DTYPE$1 & 480) == 0 ) goto label$57;
	{
		int32 ISFUNCPTR$2;
		ISFUNCPTR$2 = 0;
		int32 ISFIELD$2;
		ISFIELD$2 = 0;
		{
			int32 TMP$97$3;
			int32 vr$13 = LEXGETTOKEN( 0 );
			TMP$97$3 = vr$13;
			if( TMP$97$3 != 40 ) goto label$59;
			label$60:;
			{
				ISFUNCPTR$2 = -((DTYPE$1 & 511) == 54);
				ISFIELD$2 = ISFUNCPTR$2;
			}
			goto label$58;
			label$59:;
			if( TMP$97$3 == 400 ) goto label$62;
			label$63:;
			if( TMP$97$3 != 91 ) goto label$61;
			label$62:;
			{
				ISFIELD$2 = -1;
			}
			goto label$58;
			label$61:;
			if( TMP$97$3 != 46 ) goto label$64;
			label$65:;
			{
				ERRREPORT( 265, -1, (uint8*)0u );
			}
			label$64:;
			label$58:;
		}
		if( ISFIELD$2 == 0 ) goto label$67;
		{
			struct $7ASTNODE* vr$16 = CFUNCPTRORMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, ISFUNCPTR$2, -1 );
			EXPR$1 = vr$16;
		}
		label$67:;
		label$66:;
	}
	label$57:;
	label$56:;
	fb$result$1 = EXPR$1;
	label$38:;
	return fb$result$1;
}

struct $7ASTNODE* CHIGHESTPRECEXPR( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$69:;
	struct $7ASTNODE* EXPR$1;
	{
		int32 TMP$99$2;
		int32 vr$1 = LEXGETTOKEN( 0 );
		TMP$99$2 = vr$1;
		if( TMP$99$2 != 64 ) goto label$72;
		label$73:;
		{
			goto label$75;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
			}
			goto label$74;
			label$75:;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
			}
			label$74:;
			struct $7ASTNODE* vr$4 = CADDROFEXPRESSION(  );
			fb$result$1 = vr$4;
			goto label$70;
		}
		goto label$71;
		label$72:;
		if( TMP$99$2 != 42 ) goto label$76;
		label$77:;
		{
			goto label$79;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
			}
			goto label$78;
			label$79:;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
			}
			label$78:;
			struct $7ASTNODE* vr$7 = CDEREFEXPRESSION(  );
			fb$result$1 = vr$7;
			goto label$70;
		}
		goto label$71;
		label$76:;
		if( TMP$99$2 != 40 ) goto label$80;
		label$81:;
		{
			int32 IS_OPT$3;
			IS_OPT$3 = -((*(int32*)((uint8*)&PARSER$ + 152) & 1) != 0);
			struct $7ASTNODE* vr$10 = CPARENTEXPRESSION(  );
			EXPR$1 = vr$10;
			if( IS_OPT$3 == 0 ) goto label$83;
			{
				fb$result$1 = EXPR$1;
				goto label$70;
			}
			label$83:;
			label$82:;
		}
		goto label$71;
		label$80:;
		{
			{
				uint32 TMP$100$4;
				int32 vr$11 = LEXGETTOKEN( 0 );
				TMP$100$4 = (uint32)vr$11;
				goto label$86;
				label$87:;
				{
					struct $7ASTNODE* vr$12 = CADDROFEXPRESSION(  );
					fb$result$1 = vr$12;
					goto label$70;
				}
				goto label$85;
				label$88:;
				{
					LEXSKIPTOKEN( 2048 );
					struct $7ASTNODE* vr$13 = HCAST( 0 );
					EXPR$1 = vr$13;
				}
				goto label$85;
				label$89:;
				{
					LEXSKIPTOKEN( 2048 );
					struct $7ASTNODE* vr$14 = HCAST( 4 );
					EXPR$1 = vr$14;
				}
				goto label$85;
				label$90:;
				{
					struct $7ASTNODE* vr$15 = COPERATORNEW(  );
					EXPR$1 = vr$15;
				}
				goto label$85;
				label$91:;
				{
					if( (*(int32*)((uint8*)&PARSER$ + 152) & 1024) == 0 ) goto label$93;
					{
						{
							int32 TMP$101$7;
							int32 vr$17 = LEXGETTOKEN( 0 );
							TMP$101$7 = vr$17;
							if( TMP$101$7 != 377 ) goto label$95;
							label$96:;
							{
								FBSTRING TMP$102$8;
								__builtin_memset( &TMP$102$8, 0, 12 );
								FBSTRING* vr$19 = PPTYPEOF(  );
								fb_StrAssign( (void*)&TMP$102$8, -1, (void*)vr$19, -1, 0 );
								struct $7ASTNODE* vr$21 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&TMP$102$8 );
								fb$result$1 = vr$21;
								fb_StrDelete( (FBSTRING*)&TMP$102$8 );
								goto label$70;
							}
							goto label$94;
							label$95:;
							if( TMP$101$7 != 315 ) goto label$97;
							label$98:;
							{
								struct $7ASTNODE* vr$23 = HPPDEFINEDEXPR(  );
								fb$result$1 = vr$23;
								goto label$70;
							}
							label$97:;
							label$94:;
						}
					}
					label$93:;
					label$92:;
					goto label$100;
					{
						*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
					}
					goto label$99;
					label$100:;
					{
						*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
					}
					label$99:;
					struct $7ASTNODE* vr$26 = CATOM( BASE_PARENT$1, CHAIN_$1 );
					fb$result$1 = vr$26;
					goto label$70;
				}
				goto label$85;
				label$86:;
				static const void* tmp$103[29] = {
					&&label$90,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$87,
					&&label$87,
					&&label$87,
					&&label$87,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$91,
					&&label$89,
					&&label$88,
				};
				if( (TMP$100$4 - 389u) > 28u ) goto label$91;
				goto *tmp$103[TMP$100$4 - 389u];
				label$85:;
			}
		}
		label$84:;
		label$71:;
	}
	struct $7ASTNODE* vr$27 = CSTRIDXORMEMBERDEREF( EXPR$1 );
	fb$result$1 = vr$27;
	label$70:;
	return fb$result$1;
}

struct $7ASTNODE* CDEREFEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$138:;
	int32 DEREFCNT$1;
	struct $7ASTNODE* EXPR$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 42 ) goto label$141;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$139;
	}
	label$141:;
	label$140:;
	DEREFCNT$1 = 0;
	label$142:;
	{
		LEXSKIPTOKEN( 0 );
		DEREFCNT$1 = DEREFCNT$1 + 1;
	}
	label$144:;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 42 ) goto label$142;
	label$143:;
	struct $7ASTNODE* vr$4 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0u, (struct $10FBSYMCHAIN*)0u );
	EXPR$1 = vr$4;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$146;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$5;
		goto label$139;
	}
	label$146:;
	label$145:;
	struct $7ASTNODE* vr$8 = ASTBUILDMULTIDEREF( DEREFCNT$1, EXPR$1, *(int32*)((uint8*)EXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
	fb$result$1 = vr$8;
	label$139:;
	return fb$result$1;
}

struct $7ASTNODE* CPROCPTRBODY( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$181:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $7ASTNODE* EXPR$1;
	int32 IS_VTABLE_INDEX$1;
	IS_VTABLE_INDEX$1 = 0;
	if( DTYPE$1 != 20 ) goto label$184;
	{
		BASE_PARENT$1 = SUBTYPE$1;
		CHAIN_$1 = (struct $10FBSYMCHAIN*)0u;
	}
	goto label$183;
	label$184:;
	{
		struct $10FBSYMCHAIN* vr$2 = CIDENTIFIER( &BASE_PARENT$1, 56 );
		CHAIN_$1 = vr$2;
	}
	label$183:;
	struct $8FBSYMBOL* vr$4 = CIDENTIFIERORUDTMEMBER( &BASE_PARENT$1, CHAIN_$1 );
	SYM$1 = vr$4;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$186;
	{
		ERRREPORT( 8, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$5;
		goto label$182;
	}
	label$186:;
	label$185:;
	if( *(int32*)SYM$1 == 3 ) goto label$188;
	{
		ERRREPORT( 24, -1, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
		struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$7;
		goto label$182;
	}
	label$188:;
	label$187:;
	HCHECKEMPTYPROCPARENS(  );
	int32 vr$8 = HMATCH( 44, 0 );
	if( vr$8 == 0 ) goto label$190;
	{
		int32 DTYPE$2;
		DTYPE$2 = 0;
		struct $8FBSYMBOL* SUBTYPE$2;
		SUBTYPE$2 = (struct $8FBSYMBOL*)0u;
		int32 IS_EXACT$2;
		IS_EXACT$2 = 0;
		int32 vr$9 = LEXGETTOKEN( 0 );
		if( vr$9 != 354 ) goto label$192;
		{
			IS_VTABLE_INDEX$1 = -1;
			LEXSKIPTOKEN( 2048 );
		}
		label$192:;
		label$191:;
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 41 ) goto label$194;
		{
			int64 TMP$108$3;
			int32 TMP$109$3;
			TMP$109$3 = 0;
			TMP$108$3 = 0ll;
			int32 vr$15 = CSYMBOLTYPE( &DTYPE$2, &SUBTYPE$2, &TMP$108$3, &TMP$109$3, 1 );
			if( vr$15 != 0 ) goto label$196;
			{
				ERRREPORT( 24, -1, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$16;
				goto label$182;
			}
			label$196:;
			label$195:;
			{
				int32 TMP$110$4;
				TMP$110$4 = DTYPE$2 & 511;
				if( TMP$110$4 != 0 ) goto label$198;
				label$199:;
				{
				}
				goto label$197;
				label$198:;
				if( TMP$110$4 != 54 ) goto label$200;
				label$201:;
				{
					IS_EXACT$2 = -1;
				}
				goto label$197;
				label$200:;
				{
					ERRREPORT( 24, -1, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
					struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
					fb$result$1 = vr$18;
					goto label$182;
				}
				label$202:;
				label$197:;
			}
		}
		label$194:;
		label$193:;
		struct $8FBSYMBOL* OLDSYM$2;
		OLDSYM$2 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160);
		int32 OLD_DTYPE$2;
		OLD_DTYPE$2 = *(int32*)((uint8*)&PARSER$ + 156);
		*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = SUBTYPE$2;
		*(int32*)((uint8*)&PARSER$ + 156) = DTYPE$2;
		struct $7ASTNODE* vr$20 = HPROCPTRBODY( BASE_PARENT$1, SYM$1, (boolean)(IS_EXACT$2 != 0), IS_VTABLE_INDEX$1 );
		EXPR$1 = vr$20;
		*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = OLDSYM$2;
		*(int32*)((uint8*)&PARSER$ + 156) = OLD_DTYPE$2;
	}
	goto label$189;
	label$190:;
	{
		struct $7ASTNODE* vr$21 = HPROCPTRBODY( BASE_PARENT$1, SYM$1, (boolean)0, IS_VTABLE_INDEX$1 );
		EXPR$1 = vr$21;
	}
	label$189:;
	fb$result$1 = EXPR$1;
	goto label$182;
	label$182:;
	return fb$result$1;
}

struct $7ASTNODE* CADDROFEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$220:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = (struct $7ASTNODE*)0u;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 64 ) goto label$223;
	{
		LEXSKIPTOKEN( 0 );
		int32 CHECK_ID$2;
		CHECK_ID$2 = -1;
		if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) == (struct $13FB_CMPSTMTSTK*)0u ) goto label$225;
		{
			int32 vr$2 = LEXGETTOKEN( 0 );
			if( vr$2 != 46 ) goto label$227;
			{
				int32 vr$3 = LEXGETLOOKAHEAD( 1, 64 );
				CHECK_ID$2 = -(vr$3 == 46);
			}
			label$227:;
			label$226:;
		}
		label$225:;
		label$224:;
		struct $10FBSYMCHAIN* CHAIN_$2;
		CHAIN_$2 = (struct $10FBSYMCHAIN*)0u;
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = (struct $8FBSYMBOL*)0u;
		struct $8FBSYMBOL* BASE_PARENT$2;
		BASE_PARENT$2 = (struct $8FBSYMBOL*)0u;
		if( CHECK_ID$2 == 0 ) goto label$229;
		{
			struct $10FBSYMCHAIN* vr$6 = CIDENTIFIER( &BASE_PARENT$2, 50 );
			CHAIN_$2 = vr$6;
			struct $8FBSYMBOL* vr$7 = SYMBFINDBYCLASS( CHAIN_$2, 3 );
			SYM$2 = vr$7;
		}
		label$229:;
		label$228:;
		if( SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$231;
		{
			LEXSKIPTOKEN( 4096 );
			HCHECKEMPTYPROCPARENS(  );
			struct $7ASTNODE* vr$8 = HPROCPTRBODY( BASE_PARENT$2, SYM$2, (boolean)0, 0 );
			fb$result$1 = vr$8;
			goto label$221;
		}
		label$231:;
		label$230:;
		struct $7ASTNODE* vr$9 = HVARPTRBODY( BASE_PARENT$2, CHAIN_$2 );
		fb$result$1 = vr$9;
		goto label$221;
	}
	label$223:;
	label$222:;
	{
		uint32 TMP$113$2;
		int32 vr$10 = LEXGETTOKEN( 0 );
		TMP$113$2 = (uint32)vr$10;
		goto label$233;
		label$234:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$11 = HMATCH( 40, 0 );
			if( vr$11 != 0 ) goto label$236;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$12;
				goto label$221;
			}
			label$236:;
			label$235:;
			struct $7ASTNODE* vr$13 = HVARPTRBODY( (struct $8FBSYMBOL*)0u, (struct $10FBSYMCHAIN*)0u );
			EXPR$1 = vr$13;
			int32 vr$14 = HMATCH( 41, 0 );
			if( vr$14 != 0 ) goto label$238;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			label$238:;
			label$237:;
		}
		goto label$232;
		label$239:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$15 = HMATCH( 40, 0 );
			if( vr$15 != 0 ) goto label$241;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$16;
				goto label$221;
			}
			label$241:;
			label$240:;
			struct $7ASTNODE* vr$17 = CPROCPTRBODY( 0, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$17;
			int32 vr$18 = HMATCH( 41, 0 );
			if( vr$18 != 0 ) goto label$243;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			label$243:;
			label$242:;
		}
		goto label$232;
		label$244:;
		{
			int32 TMP$114$3;
			LEXSKIPTOKEN( 2048 );
			int32 vr$19 = HMATCH( 40, 0 );
			if( vr$19 != 0 ) goto label$246;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$20 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$20;
				goto label$221;
			}
			label$246:;
			label$245:;
			struct $7ASTNODE* vr$21 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0u, (struct $10FBSYMCHAIN*)0u );
			EXPR$1 = vr$21;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$248;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$22;
				goto label$221;
			}
			label$248:;
			label$247:;
			int32 DTYPE$3;
			DTYPE$3 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			if( (DTYPE$3 & 480) == 0 ) goto label$249;
			TMP$114$3 = 24;
			goto label$268;
			label$249:;
			TMP$114$3 = DTYPE$3 & 31;
			label$268:;
			if( TMP$114$3 != 20 ) goto label$251;
			{
				struct $8FBSYMBOL* SYM$4;
				SYM$4 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
				if( (-((*(int32*)((uint8*)SYM$4 + 120) & 131072) != 0) | -((*(int32*)((uint8*)SYM$4 + 120) & 65536) != 0)) == 0 ) goto label$253;
				{
					ASTTRYOVLSTRINGCONV( &EXPR$1 );
					DTYPE$3 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
				}
				label$253:;
				label$252:;
			}
			label$251:;
			label$250:;
			int32 vr$38 = SYMBISSTRING( DTYPE$3 );
			if( vr$38 != 0 ) goto label$255;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				ASTDELTREE( EXPR$1 );
				struct $7ASTNODE* vr$39 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$39;
				goto label$221;
			}
			label$255:;
			label$254:;
			struct $7ASTNODE* T$3;
			struct $7ASTNODE* vr$40 = ASTSKIPNOCONVCAST( EXPR$1 );
			T$3 = vr$40;
			{
				uint32 TMP$115$4;
				TMP$115$4 = *(uint32*)T$3;
				goto label$257;
				label$258:;
				{
				}
				goto label$256;
				label$259:;
				{
					ERRREPORTEX( 24, (uint8*)"for STRPTR", 0, 1, (uint8*)0u );
				}
				goto label$256;
				label$257:;
				static const void* tmp$117[20] = {
					&&label$258,
					&&label$258,
					&&label$258,
					&&label$258,
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
					&&label$258,
				};
				if( (TMP$115$4 - 17u) > 19u ) goto label$259;
				goto *tmp$117[TMP$115$4 - 17u];
				label$256:;
			}
			{
				if( DTYPE$3 != 17 ) goto label$261;
				label$262:;
				{
					struct $7ASTNODE* vr$42 = ASTBUILDSTRPTR( EXPR$1 );
					EXPR$1 = vr$42;
				}
				goto label$260;
				label$261:;
				if( DTYPE$3 != 7 ) goto label$263;
				label$264:;
				{
					struct $7ASTNODE* vr$43 = ASTNEWADDROF( EXPR$1 );
					struct $7ASTNODE* vr$44 = ASTNEWCONV( 39, (struct $8FBSYMBOL*)0u, vr$43, 0, (int32*)0u );
					EXPR$1 = vr$44;
				}
				goto label$260;
				label$263:;
				{
					struct $7ASTNODE* vr$45 = ASTNEWADDROF( EXPR$1 );
					struct $7ASTNODE* vr$46 = ASTNEWCONV( 36, (struct $8FBSYMBOL*)0u, vr$45, 0, (int32*)0u );
					EXPR$1 = vr$46;
				}
				label$265:;
				label$260:;
			}
			int32 vr$47 = HMATCH( 41, 0 );
			if( vr$47 != 0 ) goto label$267;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			label$267:;
			label$266:;
		}
		goto label$232;
		label$233:;
		static const void* tmp$118[4] = {
			&&label$234,
			&&label$244,
			&&label$239,
			&&label$244,
		};
		if( (TMP$113$2 - 396u) > 3u ) goto label$232;
		goto *tmp$118[TMP$113$2 - 396u];
		label$232:;
	}
	struct $7ASTNODE* vr$48 = CSTRIDXORMEMBERDEREF( EXPR$1 );
	fb$result$1 = vr$48;
	label$221:;
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

static struct $7ASTNODE* HPPDEFINEDEXPR( void )
{
	struct $8FBSYMBOL* TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	int32 IS_DEFINED$1;
	LEXSKIPTOKEN( 2050 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$13;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$12;
	label$13:;
	{
		LEXSKIPTOKEN( 2 );
	}
	label$12:;
	TMP$92$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$3 = CIDENTIFIERORUDTMEMBER( &TMP$92$1, (struct $10FBSYMCHAIN*)0u );
	IS_DEFINED$1 = -(vr$3 != (struct $8FBSYMBOL*)0u);
	int32 vr$5 = HMATCH( 41, 0 );
	if( vr$5 != 0 ) goto label$15;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	label$15:;
	label$14:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( (int64)IS_DEFINED$1, 8, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$7;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HCAST( $11AST_CONVOPT OPTIONS$1 )
{
	int64 TMP$104$1;
	int32 TMP$105$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$101:;
	int32 DTYPE$1;
	int32 ERRMSG$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $7ASTNODE* EXPR$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$104;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
		struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$2;
		goto label$102;
	}
	label$104:;
	label$103:;
	LEXSKIPTOKEN( 0 );
	TMP$105$1 = 0;
	TMP$104$1 = 0ll;
	int32 vr$7 = CSYMBOLTYPE( &DTYPE$1, &SUBTYPE$1, &TMP$104$1, &TMP$105$1, 1 );
	if( vr$7 != 0 ) goto label$106;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		HSKIPUNTIL( 44, 0, 0, 0 );
		if( (OPTIONS$1 & 4) == 0 ) goto label$108;
		{
			DTYPE$1 = 32;
		}
		goto label$107;
		label$108:;
		{
			DTYPE$1 = 8;
		}
		label$107:;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	}
	label$106:;
	label$105:;
	{
		int32 TMP$106$2;
		uint32 TMP$107$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$109;
		TMP$106$2 = 24;
		goto label$269;
		label$109:;
		TMP$106$2 = DTYPE$1 & 31;
		label$269:;
		TMP$107$2 = (uint32)TMP$106$2;
		goto label$111;
		label$112:;
		{
			ERRREPORT( 24, -1, (uint8*)0u );
			if( (OPTIONS$1 & 4) == 0 ) goto label$114;
			{
				DTYPE$1 = 32;
			}
			goto label$113;
			label$114:;
			{
				DTYPE$1 = 8;
			}
			label$113:;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$110;
		label$115:;
		{
			if( (OPTIONS$1 & 4) == 0 ) goto label$117;
			{
				if( (*(int32*)((uint8*)&ENV$ + 200) & 16) == 0 ) goto label$119;
				{
					ERRREPORTWARN( 27, (uint8*)0u, 1, (uint8*)0u );
				}
				label$119:;
				label$118:;
			}
			label$117:;
			label$116:;
		}
		goto label$110;
		label$120:;
		{
			OPTIONS$1 = OPTIONS$1 | 4;
		}
		goto label$110;
		label$121:;
		{
			if( (OPTIONS$1 & 4) == 0 ) goto label$123;
			{
				ERRREPORTWARN( 27, (uint8*)0u, 1, (uint8*)0u );
			}
			label$123:;
			label$122:;
		}
		goto label$110;
		label$111:;
		static const void* tmp$119[25] = {
			&&label$112,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$115,
			&&label$115,
			&&label$115,
			&&label$115,
			&&label$115,
			&&label$115,
			&&label$115,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$112,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$120,
		};
		if( TMP$107$2 > 24u ) goto label$121;
		goto *tmp$119[TMP$107$2 - 0u];
		label$110:;
	}
	int32 vr$16 = LEXGETTOKEN( 0 );
	if( vr$16 == 44 ) goto label$125;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$124;
	label$125:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$124:;
	struct $7ASTNODE* vr$17 = CEXPRESSION(  );
	EXPR$1 = vr$17;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$127;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$18 = ASTNEWCONSTZ( DTYPE$1, SUBTYPE$1 );
		EXPR$1 = vr$18;
	}
	label$127:;
	label$126:;
	OPTIONS$1 = OPTIONS$1 | 2;
	if( (-((*(int32*)((uint8*)&ENV$ + 200) & 64) == 0) & -((*(int32*)((uint8*)&ENV$ + 200) & 128) == 0)) == 0 ) goto label$129;
	{
		OPTIONS$1 = OPTIONS$1 | 32;
	}
	label$129:;
	label$128:;
	struct $7ASTNODE* vr$28 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$1, OPTIONS$1 | 64, &ERRMSG$1 );
	EXPR$1 = vr$28;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$131;
	{
		if( ERRMSG$1 != 0 ) goto label$133;
		{
			if( (OPTIONS$1 & 4) == 0 ) goto label$135;
			{
				ERRMSG$1 = 28;
			}
			goto label$134;
			label$135:;
			{
				ERRMSG$1 = 20;
			}
			label$134:;
		}
		label$133:;
		label$132:;
		ERRREPORT( ERRMSG$1, -1, (uint8*)0u );
		struct $7ASTNODE* vr$30 = ASTNEWCONSTZ( DTYPE$1, SUBTYPE$1 );
		EXPR$1 = vr$30;
	}
	label$131:;
	label$130:;
	int32 vr$31 = LEXGETTOKEN( 0 );
	if( vr$31 == 41 ) goto label$137;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$136;
	label$137:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$136:;
	fb$result$1 = EXPR$1;
	label$102:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HPROCPTRRESOLVEOVERLOAD( struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1, boolean CHECK_EXACT$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$147:;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = OVL_HEAD_PROC$1;
	if( (*(int32*)((uint8*)OVL_HEAD_PROC$1 + 8) & 16) == 0 ) goto label$150;
	{
		$6AST_OP OP$2;
		OP$2 = *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)OVL_HEAD_PROC$1 + 112) + 40);
		struct $8FBSYMBOL* vr$5 = SYMBFINDOPOVLPROC( OP$2, OVL_HEAD_PROC$1, PROC$1 );
		SYM$1 = vr$5;
	}
	goto label$149;
	label$150:;
	if( *(int32*)PROC$1 != 3 ) goto label$151;
	{
		$14FB_SYMBFINDOPT FINDOPTS$2;
		FINDOPTS$2 = 0;
		if( (*(int32*)((uint8*)OVL_HEAD_PROC$1 + 8) & 32) == 0 ) goto label$153;
		{
			if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 0 ) goto label$155;
			{
				FINDOPTS$2 = 1;
			}
			label$155:;
			label$154:;
		}
		label$153:;
		label$152:;
		struct $8FBSYMBOL* vr$11 = SYMBFINDOVERLOADPROC( OVL_HEAD_PROC$1, PROC$1, FINDOPTS$2 );
		SYM$1 = vr$11;
	}
	label$151:;
	label$149:;
	fb$result$1 = SYM$1;
	goto label$148;
	label$148:;
	return fb$result$1;
}

static void HCHECKEMPTYPROCPARENS( void )
{
	label$156:;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 40 ) goto label$159;
	{
		LEXSKIPTOKEN( 0 );
		int32 vr$1 = HMATCH( 41, 0 );
		if( vr$1 != 0 ) goto label$161;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		label$161:;
		label$160:;
	}
	label$159:;
	label$158:;
	label$157:;
}

static struct $7ASTNODE* HPROCPTRBODY( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PROC$1, boolean CHECK_EXACT$1, int32 IS_VTABLE_INDEX$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$162:;
	if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) == (struct $8FBSYMBOL*)0u ) goto label$165;
	{
		if( (-((*(int32*)((uint8*)PROC$1 + 8) & 1) != 0) | -CHECK_EXACT$1) == 0 ) goto label$167;
		{
			struct $8FBSYMBOL* SYM$3;
			struct $8FBSYMBOL* vr$6 = HPROCPTRRESOLVEOVERLOAD( PROC$1, *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160), (boolean)0 );
			SYM$3 = vr$6;
			if( SYM$3 == (struct $8FBSYMBOL*)0u ) goto label$169;
			{
				PROC$1 = SYM$3;
			}
			goto label$168;
			label$169:;
			if( CHECK_EXACT$1 == (boolean)0 ) goto label$170;
			{
				ERRREPORT( 99, -1, (uint8*)0u );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$7;
				goto label$163;
			}
			label$170:;
			label$168:;
		}
		label$167:;
		label$166:;
	}
	label$165:;
	label$164:;
	int32 vr$8 = SYMBCHECKACCESS( PROC$1 );
	if( vr$8 != 0 ) goto label$172;
	{
		uint8* vr$9 = SYMBGETFULLPROCNAME( PROC$1 );
		ERRREPORTEX( 202, (uint8*)vr$9, 0, 1, (uint8*)0u );
	}
	label$172:;
	label$171:;
	tmp$33 CALLBACK$1;
	CALLBACK$1 = *(tmp$33*)((uint8*)PROC$1 + 100);
	if( CALLBACK$1 == (tmp$33)0u ) goto label$174;
	{
		(CALLBACK$1)( PROC$1 );
	}
	label$174:;
	label$173:;
	if( IS_VTABLE_INDEX$1 == 0 ) goto label$176;
	{
		int32 VTABLEINDEX$2;
		VTABLEINDEX$2 = -1;
		if( (-((*(int32*)((uint8*)PROC$1 + 8) & 512) != 0) | -((*(int32*)((uint8*)PROC$1 + 8) & 256) != 0)) == 0 ) goto label$178;
		{
			int32 vr$18 = SYMBPROCGETVTABLEINDEX( PROC$1 );
			VTABLEINDEX$2 = vr$18 + -2;
		}
		label$178:;
		label$177:;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( (int64)VTABLEINDEX$2, 8, (struct $8FBSYMBOL*)0u );
		EXPR$2 = vr$21;
		fb$result$1 = EXPR$2;
		goto label$163;
	}
	label$176:;
	label$175:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 512) == 0 ) goto label$180;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$24 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$2 = vr$24;
		struct $8FBSYMBOL* vr$25 = SYMBADDPROCPTRFROMFUNCTION( PROC$1 );
		struct $7ASTNODE* vr$26 = ASTNEWCONV( 54, vr$25, EXPR$2, 0, (int32*)0u );
		EXPR$2 = vr$26;
		fb$result$1 = EXPR$2;
		goto label$163;
	}
	label$180:;
	label$179:;
	struct $7ASTNODE* vr$27 = ASTBUILDPROCADDROF( PROC$1 );
	fb$result$1 = vr$27;
	goto label$163;
	label$163:;
	return fb$result$1;
}

static struct $7ASTNODE* HVARPTRBODY( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$203:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CHIGHESTPRECEXPR( BASE_PARENT$1, CHAIN_$1 );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$206;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$2;
		goto label$204;
	}
	label$206:;
	label$205:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$3 = ASTSKIPCONSTCASTS( EXPR$1 );
	T$1 = vr$3;
	{
		uint32 TMP$111$2;
		TMP$111$2 = *(uint32*)T$1;
		goto label$208;
		label$209:;
		{
		}
		goto label$207;
		label$210:;
		{
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)T$1 + 12) + 116) <= 0 ) goto label$212;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				ASTDELTREE( EXPR$1 );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$7;
				goto label$204;
			}
			label$212:;
			label$211:;
		}
		goto label$207;
		label$213:;
		{
			ERRREPORTEX( 24, (uint8*)"for @ or VARPTR", 0, 1, (uint8*)0u );
			ASTDELTREE( EXPR$1 );
			struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$8;
			goto label$204;
		}
		goto label$207;
		label$208:;
		static const void* tmp$120[27] = {
			&&label$209,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$209,
			&&label$209,
			&&label$210,
			&&label$209,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$213,
			&&label$209,
		};
		if( (TMP$111$2 - 10u) > 26u ) goto label$213;
		goto *tmp$120[TMP$111$2 - 10u];
		label$207:;
	}
	{
		struct $8FBSYMBOL* PROC$2;
		$9FB_ERRMSG ERR_NUM$2;
		struct $8FBSYMBOL* vr$10 = SYMBFINDSELFUOPOVLPROC( 22, EXPR$1, &ERR_NUM$2 );
		PROC$2 = vr$10;
		if( PROC$2 == (struct $8FBSYMBOL*)0u ) goto label$215;
		{
			struct $7ASTNODE* vr$11 = ASTBUILDCALL( PROC$2, EXPR$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
			EXPR$1 = vr$11;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$217;
			{
				struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$1 = vr$12;
			}
			label$217:;
			label$216:;
			fb$result$1 = EXPR$1;
			goto label$204;
		}
		goto label$214;
		label$215:;
		{
			if( ERR_NUM$2 == 0 ) goto label$219;
			{
				struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$13;
				goto label$204;
			}
			label$219:;
			label$218:;
		}
		label$214:;
	}
	struct $7ASTNODE* vr$14 = ASTNEWADDROF( EXPR$1 );
	fb$result$1 = vr$14;
	label$204:;
	return fb$result$1;
}
