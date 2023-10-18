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
typedef int32 $9FOR_FLAGS;
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
typedef int32 $13AST_NODECLASS;
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
	int32 MULT;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
typedef int32 $9FB_ERRMSG;
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 12 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I11FB_CALL_ARGE {
	struct $11FB_CALL_ARG* DATA;
	struct $11FB_CALL_ARG* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I11FB_CALL_ARGE ) == 36 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
static void fb_ctor__parserzcompoundzfor( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTSCOPEBEGIN( void );
void ASTSCOPEEND( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
void ASTADDUNSCOPED( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDBRANCH( struct $7ASTNODE*, struct $8FBSYMBOL*, int32, int32 );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWSELFBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
int32 ASTCONSTGEZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONST( union $7FBVALUE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWBRANCH( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int32, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDIMPLICITVAR( int32, struct $8FBSYMBOL*, int32 );
int64 SYMBCALCDEREFLEN( int32, struct $8FBSYMBOL* );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
int32 TYPETOSIGNED( int32 );
int32 TYPETOUNSIGNED( int32 );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
typedef int32 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int32, struct $8FBSYMBOL* );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int32 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int32 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CVARIABLE( struct $10FBSYMCHAIN*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $8FBSYMBOL* CVARDECL( $13FB_SYMBATTRIB, int32, int32, int32 );
static struct $7ASTNODE* HUDTCALLOPOVL( struct $8FBSYMBOL*, $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static void HFLUSHBOP( int32, struct $17FB_CMPSTMT_FORELM*, struct $17FB_CMPSTMT_FORELM*, struct $8FBSYMBOL* );
static void HFLUSHSELFBOP( int32, struct $17FB_CMPSTMT_FORELM*, struct $17FB_CMPSTMT_FORELM* );
static struct $7ASTNODE* HELMTOEXPR( struct $17FB_CMPSTMT_FORELM* );
static void HUDTFOR( struct $13FB_CMPSTMTSTK* );
static void HUDTSTEP( struct $13FB_CMPSTMTSTK* );
static void HUDTNEXT( struct $13FB_CMPSTMTSTK* );
static void HSCALARSTEP( struct $13FB_CMPSTMTSTK* );
static void HSCALARNEXT( struct $13FB_CMPSTMTSTK* );
static struct $8FBSYMBOL* HADDIMPLICITVAR( int32, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HSTORETEMP( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HSTEPEXPRESSION( int32, struct $8FBSYMBOL*, struct $17FB_CMPSTMT_FORELM* );
static int32 HCALLCTOR( struct $8FBSYMBOL* );
static void HFORASSIGN( struct $13FB_CMPSTMTSTK*, int32*, int32, struct $8FBSYMBOL*, $9FOR_FLAGS, struct $7ASTNODE* );
static void HFORTO( struct $13FB_CMPSTMTSTK*, int32*, int32, struct $8FBSYMBOL*, $9FOR_FLAGS );
static void HFORSTEP( struct $13FB_CMPSTMTSTK*, int32*, int32, struct $8FBSYMBOL*, $9FOR_FLAGS );
static void HFORSTMTCLOSE( struct $13FB_CMPSTMTSTK* );
extern struct $10AST_OPINFO AST_OPTB$[121];
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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

void CFORSTMTBEGIN( void )
{
	label$149:;
	$9FOR_FLAGS FLAGS$1;
	FLAGS$1 = 0;
	struct $8FBSYMBOL* SYM$1;
	LEXSKIPTOKEN( 2048 );
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $10FBSYMCHAIN* vr$1 = CIDENTIFIER( &BASE_PARENT$1, 38 );
	CHAIN_$1 = vr$1;
	struct $7ASTNODE* OUTERSCOPENODE$1;
	struct $7ASTNODE* vr$2 = ASTSCOPEBEGIN(  );
	OUTERSCOPENODE$1 = vr$2;
	if( OUTERSCOPENODE$1 != (struct $7ASTNODE*)0u ) goto label$152;
	{
		ERRREPORT( 27, 0, (uint8*)0u );
	}
	label$152:;
	label$151:;
	struct $7ASTNODE* IDEXPR$1;
	struct $7ASTNODE* EXPR$1;
	int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
	if( vr$3 != 376 ) goto label$154;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		struct $8FBSYMBOL* vr$5 = CVARDECL( 0, 0, vr$4, -1 );
		SYM$1 = vr$5;
		if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$156;
		{
			struct $8FBSYMBOL* vr$6 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWVAR( vr$6, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			IDEXPR$1 = vr$7;
		}
		goto label$155;
		label$156:;
		{
			FLAGS$1 = FLAGS$1 | 4;
			struct $7ASTNODE* vr$9 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			IDEXPR$1 = vr$9;
		}
		label$155:;
	}
	goto label$153;
	label$154:;
	int32 vr$10 = LEXGETLOOKAHEAD( 1, 0 );
	if( vr$10 != 40 ) goto label$157;
	{
		ERRREPORT( 52, -1, (uint8*)0u );
		HSKIPUNTIL( 41, 0, 0, 0 );
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$12 = ASTNEWVAR( vr$11, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		IDEXPR$1 = vr$12;
	}
	goto label$153;
	label$157:;
	{
		struct $7ASTNODE* vr$13 = CVARIABLE( CHAIN_$1, -1 );
		IDEXPR$1 = vr$13;
		if( IDEXPR$1 != (struct $7ASTNODE*)0u ) goto label$159;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			struct $8FBSYMBOL* vr$14 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$15 = ASTNEWVAR( vr$14, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			IDEXPR$1 = vr$15;
		}
		label$159:;
		label$158:;
		if( *(int32*)IDEXPR$1 == 17 ) goto label$161;
		{
			ERRREPORT( 52, -1, (uint8*)0u );
			ASTDELTREE( IDEXPR$1 );
			struct $8FBSYMBOL* vr$17 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$18 = ASTNEWVAR( vr$17, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			IDEXPR$1 = vr$18;
		}
		label$161:;
		label$160:;
	}
	label$153:;
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)IDEXPR$1 + 4) & 511;
	struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)IDEXPR$1 + 8);
	if( (*(int32*)((uint8*)IDEXPR$1 + 4) & 512) == 0 ) goto label$163;
	{
		ERRREPORT( 119, 0, (uint8*)0u );
	}
	label$163:;
	label$162:;
	{
		uint32 TMP$98$2;
		TMP$98$2 = (uint32)DTYPE$1;
		goto label$165;
		label$166:;
		{
			ERRREPORT( 20, -1, (uint8*)0u );
			ASTDELTREE( IDEXPR$1 );
			struct $8FBSYMBOL* vr$24 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$25 = ASTNEWVAR( vr$24, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			IDEXPR$1 = vr$25;
			DTYPE$1 = *(int32*)((uint8*)IDEXPR$1 + 4) & 511;
		}
		goto label$164;
		label$167:;
		{
		}
		goto label$164;
		label$168:;
		{
		}
		goto label$164;
		label$169:;
		{
		}
		goto label$164;
		label$170:;
		{
		}
		goto label$164;
		label$171:;
		{
		}
		goto label$164;
		label$172:;
		{
		}
		goto label$164;
		label$173:;
		{
		}
		goto label$164;
		label$174:;
		{
		}
		goto label$164;
		label$175:;
		{
			FLAGS$1 = FLAGS$1 | 1;
			int32 vr$30 = SYMBHASCTOR( *(struct $8FBSYMBOL**)((uint8*)IDEXPR$1 + 12) );
			if( vr$30 == 0 ) goto label$177;
			{
				FLAGS$1 = FLAGS$1 | 2;
			}
			label$177:;
			label$176:;
		}
		goto label$164;
		label$178:;
		{
			if( (DTYPE$1 & 480) != 0 ) goto label$180;
			{
				ERRREPORT( 52, -1, (uint8*)0u );
				ASTDELTREE( IDEXPR$1 );
				struct $8FBSYMBOL* vr$33 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$34 = ASTNEWVAR( vr$33, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				IDEXPR$1 = vr$34;
				DTYPE$1 = *(int32*)((uint8*)IDEXPR$1 + 4) & 511;
			}
			label$180:;
			label$179:;
		}
		goto label$164;
		label$165:;
		static const void* tmp$104[20] = {
			&&label$166,
			&&label$167,
			&&label$167,
			&&label$169,
			&&label$168,
			&&label$168,
			&&label$169,
			&&label$170,
			&&label$170,
			&&label$171,
			&&label$172,
			&&label$172,
			&&label$173,
			&&label$173,
			&&label$174,
			&&label$174,
			&&label$178,
			&&label$178,
			&&label$178,
			&&label$175,
		};
		if( (TMP$98$2 - 1u) > 19u ) goto label$178;
		goto *tmp$104[TMP$98$2 - 1u];
		label$164:;
	}
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $13FB_CMPSTMTSTK* vr$37 = CCOMPSTMTPUSH( 281, 1 );
	STK$1 = vr$37;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) = *(struct $8FBSYMBOL**)((uint8*)IDEXPR$1 + 12);
	*(int32*)((uint8*)STK$1 + 40) = DTYPE$1;
	int32 ISCONST$1;
	ISCONST$1 = 0;
	HFORASSIGN( STK$1, &ISCONST$1, DTYPE$1, SUBTYPE$1, FLAGS$1, IDEXPR$1 );
	HFORTO( STK$1, &ISCONST$1, DTYPE$1, SUBTYPE$1, FLAGS$1 );
	HFORSTEP( STK$1, &ISCONST$1, DTYPE$1, SUBTYPE$1, FLAGS$1 );
	struct $8FBSYMBOL* IL$1;
	struct $8FBSYMBOL* TL$1;
	struct $8FBSYMBOL* EL$1;
	struct $8FBSYMBOL* CL$1;
	struct $8FBSYMBOL* vr$44 = SYMBADDLABEL( (uint8*)0u, 0 );
	TL$1 = vr$44;
	struct $8FBSYMBOL* vr$45 = SYMBADDLABEL( (uint8*)0u, 0 );
	CL$1 = vr$45;
	struct $8FBSYMBOL* vr$46 = SYMBADDLABEL( (uint8*)0u, 0 );
	EL$1 = vr$46;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 132) = EL$1;
	if( (FLAGS$1 & 1) == 0 ) goto label$182;
	{
		HUDTFOR( STK$1 );
	}
	label$182:;
	label$181:;
	if( (-(*(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) == (struct $8FBSYMBOL*)0u) & -(*(struct $8FBSYMBOL**)((uint8*)STK$1 + 96) == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$184;
	{
		int32 TOOBIG$2;
		TOOBIG$2 = 0;
		if( *(int64*)((uint8*)STK$1 + 104) == 0ll ) goto label$186;
		{
			{
				int32 TMP$99$4;
				uint32 TMP$100$4;
				if( (*(int32*)((uint8*)STK$1 + 40) & 480) == 0 ) goto label$187;
				TMP$99$4 = 24;
				goto label$213;
				label$187:;
				TMP$99$4 = *(int32*)((uint8*)STK$1 + 40) & 31;
				label$213:;
				TMP$100$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$4 * 28)) + 20);
				goto label$189;
				label$190:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) >= 127ll);
				}
				goto label$188;
				label$191:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) >= 255ll);
				}
				goto label$188;
				label$192:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) >= 32767ll);
				}
				goto label$188;
				label$193:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) >= 65535ll);
				}
				goto label$188;
				label$194:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) >= 2147483647ll);
				}
				goto label$188;
				label$195:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) >= 4294967295ll);
				}
				goto label$188;
				label$196:;
				{
					TOOBIG$2 = -(*(uint64*)((uint8*)STK$1 + 56) >= 9223372036854775807ull);
				}
				goto label$188;
				label$197:;
				{
					TOOBIG$2 = -(*(uint64*)((uint8*)STK$1 + 56) >= 18446744073709551615ull);
				}
				goto label$188;
				label$189:;
				static const void* tmp$105[8] = {
					&&label$190,
					&&label$191,
					&&label$192,
					&&label$193,
					&&label$194,
					&&label$195,
					&&label$196,
					&&label$197,
				};
				if( (TMP$100$4 - 1u) > 7u ) goto label$188;
				goto *tmp$105[TMP$100$4 - 1u];
				label$188:;
			}
		}
		goto label$185;
		label$186:;
		{
			{
				int32 TMP$101$4;
				uint32 TMP$102$4;
				if( (*(int32*)((uint8*)STK$1 + 40) & 480) == 0 ) goto label$198;
				TMP$101$4 = 24;
				goto label$214;
				label$198:;
				TMP$101$4 = *(int32*)((uint8*)STK$1 + 40) & 31;
				label$214:;
				TMP$102$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$4 * 28)) + 20);
				goto label$200;
				label$201:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) <= 0ll);
				}
				goto label$199;
				label$202:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) <= -128ll);
				}
				goto label$199;
				label$203:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) <= -32768ll);
				}
				goto label$199;
				label$204:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) <= -2147483648ll);
				}
				goto label$199;
				label$205:;
				{
					TOOBIG$2 = -(*(int64*)((uint8*)STK$1 + 56) == -9223372036854775808ull);
				}
				goto label$199;
				label$200:;
				static const void* tmp$106[8] = {
					&&label$202,
					&&label$201,
					&&label$203,
					&&label$201,
					&&label$204,
					&&label$201,
					&&label$205,
					&&label$201,
				};
				if( (TMP$102$4 - 1u) > 7u ) goto label$199;
				goto *tmp$106[TMP$102$4 - 1u];
				label$199:;
			}
		}
		label$185:;
		if( TOOBIG$2 == 0 ) goto label$207;
		{
			ERRREPORTWARN( 45, (uint8*)0u, 1, (uint8*)0u );
		}
		label$207:;
		label$206:;
	}
	label$184:;
	label$183:;
	if( ISCONST$1 != 3 ) goto label$209;
	{
		$6AST_OP TMP$103$2;
		struct $7ASTNODE* vr$94 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)STK$1 + 56), *(int32*)((uint8*)STK$1 + 64), (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$98 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)STK$1 + 32), *(int32*)((uint8*)STK$1 + 40), (struct $8FBSYMBOL*)0u );
		if( *(int64*)((uint8*)STK$1 + 104) == 0ll ) goto label$210;
		TMP$103$2 = 50;
		goto label$215;
		label$210:;
		TMP$103$2 = 49;
		label$215:;
		struct $7ASTNODE* vr$100 = ASTNEWBOP( TMP$103$2, vr$98, vr$94, (struct $8FBSYMBOL*)0u, 1 );
		EXPR$1 = vr$100;
		int64 vr$101 = ASTCONSTFLUSHTOINT( EXPR$1, 8 );
		if( vr$101 != 0ll ) goto label$212;
		{
			struct $7ASTNODE* vr$102 = ASTNEWBRANCH( 98, EL$1, (struct $7ASTNODE*)0u );
			ASTADD( vr$102 );
		}
		label$212:;
		label$211:;
	}
	goto label$208;
	label$209:;
	{
		struct $7ASTNODE* vr$103 = ASTNEWBRANCH( 98, TL$1, (struct $7ASTNODE*)0u );
		ASTADD( vr$103 );
	}
	label$208:;
	struct $8FBSYMBOL* vr$104 = SYMBADDLABEL( (uint8*)0u, 4 );
	IL$1 = vr$104;
	struct $7ASTNODE* vr$105 = ASTNEWLABEL( IL$1, -1 );
	ASTADD( vr$105 );
	struct $7ASTNODE* vr$106 = ASTSCOPEBEGIN(  );
	*(struct $7ASTNODE**)((uint8*)STK$1 + 8) = vr$106;
	*(struct $7ASTNODE**)((uint8*)STK$1 + 16) = OUTERSCOPENODE$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 120) = TL$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 124) = IL$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 128) = CL$1;
	label$150:;
}

void CFORSTMTEND( void )
{
	label$250:;
	struct $13FB_CMPSTMTSTK* STK$1;
	LEXSKIPTOKEN( 2048 );
	label$252:;
	{
		struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 281, -1 );
		STK$1 = vr$0;
		if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$256;
		{
			HSKIPUNTIL( -1, 0, 0, 0 );
			goto label$251;
		}
		label$256:;
		label$255:;
		HFORSTMTCLOSE( STK$1 );
		int32 vr$1 = LEXGETCLASS( 0 );
		if( vr$1 == 0 ) goto label$258;
		{
			CCOMPSTMTPOP( STK$1 );
			goto label$253;
		}
		label$258:;
		label$257:;
		struct $10FBSYMCHAIN* CHAIN_$2;
		struct $8FBSYMBOL* BASE_PARENT$2;
		struct $10FBSYMCHAIN* vr$3 = CIDENTIFIER( &BASE_PARENT$2, 38 );
		CHAIN_$2 = vr$3;
		struct $7ASTNODE* IDEXPR$2;
		struct $7ASTNODE* vr$4 = CVARIABLE( CHAIN_$2, -1 );
		IDEXPR$2 = vr$4;
		if( IDEXPR$2 != (struct $7ASTNODE*)0u ) goto label$260;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
		}
		goto label$259;
		label$260:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)IDEXPR$2 + 12) == *(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) ) goto label$262;
			{
				ERRREPORT( 283, 0, (uint8*)0u );
			}
			label$262:;
			label$261:;
			if( (*(int32*)((uint8*)&ENV$ + 200) & 8) == 0 ) goto label$264;
			{
				ERRREPORTWARN( 26, (uint8*)*(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IDEXPR$2 + 12) + 16), 1, (uint8*)0u );
			}
			label$264:;
			label$263:;
			ASTDELTREE( IDEXPR$2 );
		}
		label$259:;
		CCOMPSTMTPOP( STK$1 );
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 44 ) goto label$266;
		{
			goto label$253;
		}
		label$266:;
		label$265:;
		LEXSKIPTOKEN( 0 );
	}
	label$254:;
	goto label$252;
	label$253:;
	label$251:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static struct $7ASTNODE* HELMTOEXPR( struct $17FB_CMPSTMT_FORELM* V$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	if( *(struct $8FBSYMBOL**)V$1 == (struct $8FBSYMBOL*)0u ) goto label$13;
	{
		struct $7ASTNODE* vr$3 = ASTNEWVAR( *(struct $8FBSYMBOL**)V$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$3;
	}
	goto label$12;
	label$13:;
	{
		struct $7ASTNODE* vr$7 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)V$1 + 8), *(int32*)((uint8*)V$1 + 16), (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$7;
	}
	label$12:;
	label$11:;
	return fb$result$1;
}

static void HUDTFOR( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* STEP_EXPR$1;
	STEP_EXPR$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)STK$1 + 140) == 0 ) goto label$17;
	{
		struct $7ASTNODE* vr$3 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 72) );
		STEP_EXPR$1 = vr$3;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$6 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24) );
	struct $7ASTNODE* vr$9 = HUDTCALLOPOVL( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) + 32), 24, vr$6, STEP_EXPR$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$9;
	if( PROC$1 == (struct $7ASTNODE*)0u ) goto label$19;
	{
		ASTADD( PROC$1 );
	}
	label$19:;
	label$18:;
	label$15:;
}

static void HUDTSTEP( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$20:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* STEP_EXPR$1;
	STEP_EXPR$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)STK$1 + 140) == 0 ) goto label$23;
	{
		struct $7ASTNODE* vr$3 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 72) );
		STEP_EXPR$1 = vr$3;
	}
	label$23:;
	label$22:;
	struct $7ASTNODE* vr$6 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24) );
	struct $7ASTNODE* vr$9 = HUDTCALLOPOVL( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) + 32), 25, vr$6, STEP_EXPR$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$9;
	if( PROC$1 == (struct $7ASTNODE*)0u ) goto label$25;
	{
		ASTADD( PROC$1 );
	}
	label$25:;
	label$24:;
	label$21:;
}

static void HUDTNEXT( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$26:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* STEP_EXPR$1;
	STEP_EXPR$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)STK$1 + 140) == 0 ) goto label$29;
	{
		struct $7ASTNODE* vr$3 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 72) );
		STEP_EXPR$1 = vr$3;
	}
	label$29:;
	label$28:;
	struct $7ASTNODE* vr$6 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 48) );
	struct $7ASTNODE* vr$9 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24) );
	struct $7ASTNODE* vr$12 = HUDTCALLOPOVL( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) + 32), 26, vr$9, vr$6, STEP_EXPR$1 );
	PROC$1 = vr$12;
	if( PROC$1 == (struct $7ASTNODE*)0u ) goto label$31;
	{
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$15 = ASTNEWBOP( 48, PROC$1, vr$14, *(struct $8FBSYMBOL**)((uint8*)STK$1 + 124), 0 );
		ASTADD( vr$15 );
	}
	label$31:;
	label$30:;
	label$27:;
}

static void HSCALARSTEP( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$32:;
	HFLUSHSELFBOP( 1, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 72) );
	label$33:;
}

static void HSCALARNEXT( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$34:;
	if( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 96) != (struct $8FBSYMBOL*)0u ) goto label$37;
	{
		$6AST_OP TMP$92$2;
		if( *(int64*)((uint8*)STK$1 + 104) == 0ll ) goto label$38;
		TMP$92$2 = 50;
		goto label$267;
		label$38:;
		TMP$92$2 = 49;
		label$267:;
		HFLUSHBOP( TMP$92$2, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 48), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 124) );
	}
	goto label$36;
	label$37:;
	{
		struct $8FBSYMBOL* CL$2;
		struct $8FBSYMBOL* vr$7 = SYMBADDLABEL( (uint8*)0u, 4 );
		CL$2 = vr$7;
		struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$11 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 96) );
		struct $7ASTNODE* vr$12 = ASTNEWBOP( 48, vr$11, vr$8, CL$2, 0 );
		ASTADD( vr$12 );
		HFLUSHBOP( 49, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 48), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 124) );
		struct $7ASTNODE* vr$19 = ASTNEWBRANCH( 98, *(struct $8FBSYMBOL**)((uint8*)STK$1 + 132), (struct $7ASTNODE*)0u );
		ASTADD( vr$19 );
		struct $7ASTNODE* vr$20 = ASTNEWLABEL( CL$2, 0 );
		ASTADD( vr$20 );
		HFLUSHBOP( 50, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 24), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 48), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 124) );
	}
	label$36:;
	label$35:;
}

static struct $8FBSYMBOL* HADDIMPLICITVAR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$39:;
	struct $8FBSYMBOL* S$1;
	int32 OPTIONS$1;
	OPTIONS$1 = 0;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 2) != 0 ) goto label$42;
	{
		OPTIONS$1 = OPTIONS$1 | 2;
	}
	label$42:;
	label$41:;
	struct $8FBSYMBOL* vr$3 = SYMBADDIMPLICITVAR( DTYPE$1, SUBTYPE$1, OPTIONS$1 );
	S$1 = vr$3;
	if( (OPTIONS$1 & 2) == 0 ) goto label$44;
	{
		struct $7ASTNODE* vr$5 = ASTNEWDECL( S$1, -1 );
		ASTADDUNSCOPED( vr$5 );
	}
	goto label$43;
	label$44:;
	{
		struct $7ASTNODE* vr$6 = ASTNEWDECL( S$1, 0 );
		ASTADD( vr$6 );
	}
	label$43:;
	fb$result$1 = S$1;
	label$40:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HSTORETEMP( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$45:;
	int32 OPTIONS$1;
	OPTIONS$1 = 0;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 2) != 0 ) goto label$48;
	{
		OPTIONS$1 = OPTIONS$1 | 2;
	}
	label$48:;
	label$47:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$3 = SYMBADDIMPLICITVAR( DTYPE$1, SUBTYPE$1, OPTIONS$1 );
	S$1 = vr$3;
	struct $7ASTNODE* DECLNODE$1;
	DECLNODE$1 = (struct $7ASTNODE*)0u;
	if( (OPTIONS$1 & 2) == 0 ) goto label$50;
	{
		struct $7ASTNODE* vr$5 = ASTNEWDECL( S$1, -1 );
		ASTADDUNSCOPED( vr$5 );
	}
	goto label$49;
	label$50:;
	{
		struct $7ASTNODE* vr$6 = ASTNEWDECL( S$1, 0 );
		DECLNODE$1 = vr$6;
	}
	label$49:;
	struct $7ASTNODE* vr$7 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$8 = ASTNEWASSIGN( vr$7, EXPR$1, 0 );
	EXPR$1 = vr$8;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$52;
	{
		{
			int32 TMP$93$3;
			uint32 TMP$94$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$53;
			TMP$93$3 = 24;
			goto label$268;
			label$53:;
			TMP$93$3 = DTYPE$1 & 31;
			label$268:;
			TMP$94$3 = (uint32)TMP$93$3;
			goto label$55;
			label$56:;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
			}
			goto label$54;
			label$57:;
			{
				ERRREPORT( 198, -1, *(uint8**)((int32)(struct $10AST_OPINFO*)AST_OPTB$ + 8) );
			}
			goto label$54;
			label$55:;
			static const void* tmp$116[1] = {
				&&label$56,
			};
			if( (TMP$94$3 - 20u) > 0u ) goto label$57;
			goto *tmp$116[TMP$94$3 - 20u];
			label$54:;
		}
	}
	label$52:;
	label$51:;
	struct $7ASTNODE* vr$11 = ASTNEWLINK( DECLNODE$1, EXPR$1, 0 );
	ASTADD( vr$11 );
	fb$result$1 = S$1;
	label$46:;
	return fb$result$1;
}

static void HFLUSHBOP( int32 OP$1, struct $17FB_CMPSTMT_FORELM* LHS$1, struct $17FB_CMPSTMT_FORELM* RHS$1, struct $8FBSYMBOL* EX$1 )
{
	label$58:;
	struct $7ASTNODE* LHS_EXPR$1;
	struct $7ASTNODE* RHS_EXPR$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$0 = HELMTOEXPR( LHS$1 );
	LHS_EXPR$1 = vr$0;
	struct $7ASTNODE* vr$1 = HELMTOEXPR( RHS$1 );
	RHS_EXPR$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTNEWBOP( OP$1, LHS_EXPR$1, RHS_EXPR$1, EX$1, 0 );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$61;
	{
		ERRREPORT( 198, -1, *(uint8**)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 8) );
		goto label$59;
	}
	label$61:;
	label$60:;
	if( *(int32*)((uint8*)LHS$1 + 16) != 20 ) goto label$63;
	{
		struct $7ASTNODE* vr$5 = ASTBUILDBRANCH( EXPR$1, EX$1, -1, 0 );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$65;
		{
			ERRREPORT( 198, -1, *(uint8**)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 8) );
			goto label$59;
		}
		label$65:;
		label$64:;
	}
	label$63:;
	label$62:;
	ASTADD( EXPR$1 );
	label$59:;
}

static struct $7ASTNODE* HSTEPEXPRESSION( int32 LHS_DTYPE$1, struct $8FBSYMBOL* LHS_SUBTYPE$1, struct $17FB_CMPSTMT_FORELM* RHS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	int64 LENGTH$1;
	if( (LHS_DTYPE$1 & 480) == 0 ) goto label$69;
	{
		int64 vr$2 = SYMBCALCDEREFLEN( LHS_DTYPE$1, LHS_SUBTYPE$1 );
		LENGTH$1 = vr$2;
		if( LENGTH$1 > 0ll ) goto label$71;
		{
			ERRREPORT( 71, 0, (uint8*)0u );
			LENGTH$1 = 1ll;
		}
		label$71:;
		label$70:;
		if( *(struct $8FBSYMBOL**)RHS$1 == (struct $8FBSYMBOL*)0u ) goto label$73;
		{
			struct $7ASTNODE* vr$4 = ASTNEWCONSTI( LENGTH$1, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$6 = ASTNEWVAR( *(struct $8FBSYMBOL**)RHS$1, 0ll, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWBOP( 30, vr$6, vr$4, (struct $8FBSYMBOL*)0u, 1 );
			fb$result$1 = vr$7;
		}
		goto label$72;
		label$73:;
		{
			struct $7ASTNODE* vr$10 = ASTNEWCONSTI( *(int64*)((uint8*)RHS$1 + 8) * LENGTH$1, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$10;
		}
		label$72:;
	}
	goto label$68;
	label$69:;
	{
		struct $7ASTNODE* vr$11 = HELMTOEXPR( RHS$1 );
		fb$result$1 = vr$11;
	}
	label$68:;
	label$67:;
	return fb$result$1;
}

static void HFLUSHSELFBOP( int32 OP$1, struct $17FB_CMPSTMT_FORELM* LHS$1, struct $17FB_CMPSTMT_FORELM* RHS$1 )
{
	label$74:;
	struct $7ASTNODE* LHS_EXPR$1;
	struct $7ASTNODE* RHS_EXPR$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( *(struct $8FBSYMBOL**)LHS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	LHS_EXPR$1 = vr$1;
	struct $7ASTNODE* vr$5 = HSTEPEXPRESSION( *(int32*)((uint8*)LHS$1 + 16), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)LHS$1 + 32), RHS$1 );
	RHS_EXPR$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWSELFBOP( OP$1, LHS_EXPR$1, RHS_EXPR$1, (struct $8FBSYMBOL*)0u, 1 );
	EXPR$1 = vr$6;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$77;
	{
		ERRREPORT( 198, -1, *(uint8**)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 8) );
		goto label$75;
	}
	label$77:;
	label$76:;
	ASTADD( EXPR$1 );
	label$75:;
}

static int32 HCALLCTOR( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$78:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CINITIALIZER( SYM$1, 1, -2147483648u, (struct $8FBSYMBOL*)0u );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$81;
	{
		goto label$79;
	}
	label$81:;
	label$80:;
	struct $7ASTNODE* vr$2 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( SYM$1, EXPR$1, 0, 64 );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$83;
	{
		goto label$79;
	}
	label$83:;
	label$82:;
	ASTADD( EXPR$1 );
	fb$result$1 = -1;
	label$79:;
	return fb$result$1;
}

static void HFORASSIGN( struct $13FB_CMPSTMTSTK* STK$1, int32* ISCONST$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $9FOR_FLAGS FLAGS$1, struct $7ASTNODE* IDEXPR$1 )
{
	label$84:;
	int32 vr$0 = CASSIGNTOKEN(  );
	if( vr$0 != 0 ) goto label$87;
	{
		ERRREPORT( 10, 0, (uint8*)0u );
	}
	label$87:;
	label$86:;
	if( (-((FLAGS$1 & 2) == 0) | -((FLAGS$1 & 4) == 0)) == 0 ) goto label$89;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$6 = CEXPRESSION(  );
		EXPR$2 = vr$6;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$91;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$2 = vr$7;
		}
		label$91:;
		label$90:;
		if( (-(*(int32*)EXPR$2 == 16) & -((FLAGS$1 & 1) == 0)) == 0 ) goto label$93;
		{
			struct $7ASTNODE* vr$13 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$2, 0, (int32*)0u );
			EXPR$2 = vr$13;
			if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$95;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$2 = vr$14;
			}
			label$95:;
			label$94:;
			__builtin_memcpy( (union $7FBVALUE*)((uint8*)STK$1 + 32), (union $7FBVALUE*)((uint8*)EXPR$2 + 24), 8 );
			*ISCONST$1 = *ISCONST$1 + 1;
		}
		label$93:;
		label$92:;
		struct $7ASTNODE* vr$22 = ASTNEWASSIGN( IDEXPR$1, EXPR$2, 0 );
		EXPR$2 = vr$22;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$97;
		{
			if( (FLAGS$1 & 1) == 0 ) goto label$99;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
			}
			goto label$98;
			label$99:;
			{
				ERRREPORT( 198, -1, (uint8*)"let" );
			}
			label$98:;
		}
		goto label$96;
		label$97:;
		{
			ASTADD( EXPR$2 );
		}
		label$96:;
	}
	goto label$88;
	label$89:;
	{
		int32 vr$25 = HCALLCTOR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) );
		if( vr$25 != 0 ) goto label$101;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
		}
		label$101:;
		label$100:;
	}
	label$88:;
	label$85:;
}

static void HFORTO( struct $13FB_CMPSTMTSTK* STK$1, int32* ISCONST$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $9FOR_FLAGS FLAGS$1 )
{
	label$102:;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 == 284 ) goto label$105;
	{
		ERRREPORT( 12, 0, (uint8*)0u );
	}
	goto label$104;
	label$105:;
	{
		LEXSKIPTOKEN( 2048 );
	}
	label$104:;
	if( (FLAGS$1 & 2) != 0 ) goto label$107;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$2 = CEXPRESSION(  );
		EXPR$2 = vr$2;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$109;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$2 = vr$3;
		}
		label$109:;
		label$108:;
		if( (-(*(int32*)EXPR$2 == 16) & -((FLAGS$1 & 1) == 0)) == 0 ) goto label$111;
		{
			struct $7ASTNODE* vr$9 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$2, 0, (int32*)0u );
			EXPR$2 = vr$9;
			if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$113;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$10 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$2 = vr$10;
			}
			label$113:;
			label$112:;
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) = (struct $8FBSYMBOL*)0u;
			*(int32*)((uint8*)STK$1 + 64) = DTYPE$1;
			__builtin_memcpy( (union $7FBVALUE*)((uint8*)STK$1 + 56), (union $7FBVALUE*)((uint8*)EXPR$2 + 24), 8 );
			ASTDELNODE( EXPR$2 );
			*ISCONST$1 = *ISCONST$1 + 1;
		}
		goto label$110;
		label$111:;
		{
			struct $8FBSYMBOL* vr$20 = HSTORETEMP( DTYPE$1, SUBTYPE$1, EXPR$2 );
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) = vr$20;
			*(int32*)((uint8*)STK$1 + 64) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) + 28) & 511;
		}
		label$110:;
	}
	goto label$106;
	label$107:;
	{
		struct $8FBSYMBOL* vr$26 = HADDIMPLICITVAR( DTYPE$1, SUBTYPE$1 );
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) = vr$26;
		*(int32*)((uint8*)STK$1 + 64) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) + 28) & 511;
		int32 vr$33 = HCALLCTOR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 48) );
		if( vr$33 != 0 ) goto label$115;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
		}
		label$115:;
		label$114:;
	}
	label$106:;
	label$103:;
}

static void HFORSTEP( struct $13FB_CMPSTMTSTK* STK$1, int32* ISCONST$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $9FOR_FLAGS FLAGS$1 )
{
	int32 TMP$97$1;
	label$116:;
	*(int32*)((uint8*)STK$1 + 140) = 0;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 282 ) goto label$119;
	{
		LEXSKIPTOKEN( 2048 );
		*(int32*)((uint8*)STK$1 + 140) = -1;
	}
	label$119:;
	label$118:;
	int32 ISCOMPLEX$1;
	ISCOMPLEX$1 = 0;
	if( (FLAGS$1 & 2) != 0 ) goto label$121;
	{
		struct $7ASTNODE* EXPR$2;
		if( *(int32*)((uint8*)STK$1 + 140) == 0 ) goto label$123;
		{
			struct $7ASTNODE* vr$5 = CEXPRESSION(  );
			EXPR$2 = vr$5;
			if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$125;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$2 = vr$6;
			}
			label$125:;
			label$124:;
		}
		goto label$122;
		label$123:;
		{
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$2 = vr$7;
		}
		label$122:;
		if( (FLAGS$1 & 1) != 0 ) goto label$127;
		{
			int32 TMP$96$3;
			if( (*(int32*)((uint8*)EXPR$2 + 4) & 480) == 0 ) goto label$128;
			TMP$96$3 = 24;
			goto label$269;
			label$128:;
			TMP$96$3 = *(int32*)((uint8*)EXPR$2 + 4) & 31;
			label$269:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$3 * 28)) + 8) == 0 ) goto label$130;
			{
				int32 vr$14 = TYPETOSIGNED( DTYPE$1 );
				DTYPE$1 = vr$14;
			}
			goto label$129;
			label$130:;
			{
				int32 vr$15 = TYPETOUNSIGNED( DTYPE$1 );
				DTYPE$1 = vr$15;
			}
			label$129:;
		}
		label$127:;
		label$126:;
		if( (-(*(int32*)EXPR$2 == 16) & -((FLAGS$1 & 1) == 0)) == 0 ) goto label$132;
		{
			struct $7ASTNODE* vr$21 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$2, 0, (int32*)0u );
			EXPR$2 = vr$21;
			if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$134;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$2 = vr$22;
			}
			label$134:;
			label$133:;
			int32 vr$23 = ASTCONSTGEZERO( EXPR$2 );
			*(int64*)((uint8*)STK$1 + 104) = (int64)vr$23;
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 72) = (struct $8FBSYMBOL*)0u;
			if( (DTYPE$1 & 480) == 0 ) goto label$136;
			{
				*(int32*)((uint8*)STK$1 + 88) = 11;
			}
			goto label$135;
			label$136:;
			{
				*(int32*)((uint8*)STK$1 + 88) = DTYPE$1;
			}
			label$135:;
			__builtin_memcpy( (union $7FBVALUE*)((uint8*)STK$1 + 80), (union $7FBVALUE*)((uint8*)EXPR$2 + 24), 8 );
			ASTDELNODE( EXPR$2 );
			*ISCONST$1 = *ISCONST$1 + 1;
		}
		goto label$131;
		label$132:;
		{
			ISCOMPLEX$1 = -1;
			int32 TMP_DTYPE$3;
			TMP_DTYPE$3 = DTYPE$1;
			struct $8FBSYMBOL* TMP_SUBTYPE$3;
			TMP_SUBTYPE$3 = SUBTYPE$1;
			if( (DTYPE$1 & 480) == 0 ) goto label$138;
			{
				TMP_DTYPE$3 = 11;
				TMP_SUBTYPE$3 = (struct $8FBSYMBOL*)0u;
			}
			label$138:;
			label$137:;
			struct $8FBSYMBOL* vr$38 = HSTORETEMP( TMP_DTYPE$3, TMP_SUBTYPE$3, EXPR$2 );
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 72) = vr$38;
			*(int32*)((uint8*)STK$1 + 88) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 72) + 28) & 511;
		}
		label$131:;
	}
	goto label$120;
	label$121:;
	{
		ISCOMPLEX$1 = -1;
		if( *(int32*)((uint8*)STK$1 + 140) == 0 ) goto label$140;
		{
			struct $8FBSYMBOL* vr$45 = HADDIMPLICITVAR( DTYPE$1, SUBTYPE$1 );
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 72) = vr$45;
			*(int32*)((uint8*)STK$1 + 88) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 72) + 28) & 511;
			int32 vr$52 = HCALLCTOR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 72) );
			if( vr$52 != 0 ) goto label$142;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
			}
			label$142:;
			label$141:;
		}
		label$140:;
		label$139:;
	}
	label$120:;
	if( (DTYPE$1 & 480) == 0 ) goto label$143;
	TMP$97$1 = 24;
	goto label$270;
	label$143:;
	TMP$97$1 = DTYPE$1 & 31;
	label$270:;
	if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$1 * 28)) + 8) == 0) & -((FLAGS$1 & 1) == 0)) == 0 ) goto label$145;
	{
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 96) = (struct $8FBSYMBOL*)0u;
		*(int32*)((uint8*)STK$1 + 112) = 8;
		*(int64*)((uint8*)STK$1 + 104) = -1ll;
	}
	goto label$144;
	label$145:;
	if( (ISCOMPLEX$1 & -((FLAGS$1 & 1) == 0)) == 0 ) goto label$146;
	{
		struct $17FB_CMPSTMT_FORELM CMP$2;
		__builtin_memset( &CMP$2, 0, 24 );
		*(int32*)((uint8*)&CMP$2 + 16) = *(int32*)((uint8*)STK$1 + 88);
		struct $8FBSYMBOL* vr$68 = HADDIMPLICITVAR( 8, (struct $8FBSYMBOL*)0u );
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 96) = vr$68;
		*(int32*)((uint8*)STK$1 + 112) = 8;
		struct $7ASTNODE* RHS$2;
		struct $7ASTNODE* vr$72 = HELMTOEXPR( &CMP$2 );
		struct $7ASTNODE* vr$75 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 72) );
		struct $7ASTNODE* vr$76 = ASTNEWBOP( 49, vr$75, vr$72, (struct $8FBSYMBOL*)0u, 1 );
		RHS$2 = vr$76;
		if( RHS$2 != (struct $7ASTNODE*)0u ) goto label$148;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			struct $7ASTNODE* vr$77 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			RHS$2 = vr$77;
		}
		label$148:;
		label$147:;
		struct $7ASTNODE* vr$79 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 96), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$80 = ASTNEWASSIGN( vr$79, RHS$2, 0 );
		ASTADD( vr$80 );
	}
	goto label$144;
	label$146:;
	{
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 96) = (struct $8FBSYMBOL*)0u;
	}
	label$144:;
	label$117:;
}

static struct $7ASTNODE* HUDTCALLOPOVL( struct $8FBSYMBOL* PARENT$1, $6AST_OP OP$1, struct $7ASTNODE* INST_EXPR$1, struct $7ASTNODE* SECOND_ARG$1, struct $7ASTNODE* THIRD_ARG$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$216:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* vr$1 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$1 );
	SYM$1 = vr$1;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$219;
	{
		ERRREPORT( 198, -1, *(uint8**)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 8) );
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$217;
	}
	label$219:;
	label$218:;
	$9FB_ERRMSG ERR_NUM$1;
	if( SECOND_ARG$1 != (struct $7ASTNODE*)0u ) goto label$221;
	{
		struct $8FBSYMBOL* vr$4 = SYMBFINDCLOSESTOVLPROC( SYM$1, 0, (struct $11FB_CALL_ARG*)0u, &ERR_NUM$1, 0 );
		SYM$1 = vr$4;
	}
	goto label$220;
	label$221:;
	{
		struct $11FB_CALL_ARG ARGS$2[2];
		struct $8FBARRAY1I11FB_CALL_ARGE tmp$107$2;
		*(struct $11FB_CALL_ARG**)&tmp$107$2 = (struct $11FB_CALL_ARG*)ARGS$2;
		*(struct $11FB_CALL_ARG**)((uint8*)&tmp$107$2 + 4) = (struct $11FB_CALL_ARG*)ARGS$2;
		*(int32*)((uint8*)&tmp$107$2 + 8) = 24;
		*(int32*)((uint8*)&tmp$107$2 + 12) = 12;
		*(int32*)((uint8*)&tmp$107$2 + 16) = 1;
		*(int32*)((uint8*)&tmp$107$2 + 20) = 49;
		*(int32*)((uint8*)&tmp$107$2 + 24) = 2;
		*(int32*)((uint8*)&tmp$107$2 + 28) = 0;
		*(int32*)((uint8*)&tmp$107$2 + 32) = 1;
		int32 PARAMS$2;
		PARAMS$2 = 1;
		{
			struct $11FB_CALL_ARG* TMP$108$3;
			TMP$108$3 = (struct $11FB_CALL_ARG*)ARGS$2;
			*(struct $7ASTNODE**)TMP$108$3 = SECOND_ARG$1;
			*($12FB_PARAMMODE*)((uint8*)TMP$108$3 + 4) = -1;
			*(struct $11FB_CALL_ARG**)((uint8*)TMP$108$3 + 8) = (struct $11FB_CALL_ARG*)0u;
		}
		if( OP$1 != 26 ) goto label$223;
		{
			if( THIRD_ARG$1 == (struct $7ASTNODE*)0u ) goto label$225;
			{
				*(struct $11FB_CALL_ARG**)((int32)(struct $11FB_CALL_ARG*)ARGS$2 + 8) = (struct $11FB_CALL_ARG*)((int32)(struct $11FB_CALL_ARG*)ARGS$2 + 12);
				PARAMS$2 = PARAMS$2 + 1;
				{
					struct $11FB_CALL_ARG* TMP$109$5;
					TMP$109$5 = (struct $11FB_CALL_ARG*)((int32)(struct $11FB_CALL_ARG*)ARGS$2 + 12);
					*(struct $7ASTNODE**)TMP$109$5 = THIRD_ARG$1;
					*($12FB_PARAMMODE*)((uint8*)TMP$109$5 + 4) = -1;
					*(struct $11FB_CALL_ARG**)((uint8*)TMP$109$5 + 8) = (struct $11FB_CALL_ARG*)0u;
				}
			}
			label$225:;
			label$224:;
		}
		label$223:;
		label$222:;
		struct $8FBSYMBOL* vr$19 = SYMBFINDCLOSESTOVLPROC( SYM$1, PARAMS$2, (struct $11FB_CALL_ARG*)ARGS$2, &ERR_NUM$1, 0 );
		SYM$1 = vr$19;
	}
	label$220:;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$227;
	{
		if( ERR_NUM$1 == 0 ) goto label$229;
		{
			ERRREPORT( ERR_NUM$1, -1, (uint8*)0u );
		}
		goto label$228;
		label$229:;
		{
			FBSTRING TMP$111$3;
			FBSTRING OP_VERSION$3;
			__builtin_memset( &TMP$111$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$111$3, *(void**)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 8), 0, (void*)" (with", 7 );
			fb_StrInit( (void*)&OP_VERSION$3, -1, (void*)vr$23, -1, 0 );
			{
				uint32 TMP$112$4;
				TMP$112$4 = (uint32)OP$1;
				goto label$231;
				label$232:;
				{
					if( SECOND_ARG$1 != (struct $7ASTNODE*)0u ) goto label$234;
					{
						fb_StrConcatAssign( (void*)&OP_VERSION$3, -1, (void*)"out", 4, 0 );
					}
					label$234:;
					label$233:;
				}
				goto label$230;
				label$235:;
				{
					if( THIRD_ARG$1 != (struct $7ASTNODE*)0u ) goto label$237;
					{
						fb_StrConcatAssign( (void*)&OP_VERSION$3, -1, (void*)"out", 4, 0 );
					}
					label$237:;
					label$236:;
				}
				goto label$230;
				label$231:;
				static const void* tmp$117[3] = {
					&&label$232,
					&&label$232,
					&&label$235,
				};
				if( (TMP$112$4 - 24u) > 2u ) goto label$230;
				goto *tmp$117[TMP$112$4 - 24u];
				label$230:;
			}
			fb_StrConcatAssign( (void*)&OP_VERSION$3, -1, (void*)" step)", 7, 0 );
			ERRREPORT( 198, -1, (uint8*)*(uint8**)&OP_VERSION$3 );
			fb_StrDelete( (FBSTRING*)&OP_VERSION$3 );
		}
		label$228:;
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$217;
	}
	goto label$226;
	label$227:;
	{
		int32 vr$29 = SYMBCHECKACCESS( SYM$1 );
		if( vr$29 != 0 ) goto label$239;
		{
			uint8* vr$30 = SYMBGETFULLPROCNAME( SYM$1 );
			ERRREPORTEX( 202, (uint8*)vr$30, 0, 1, (uint8*)0u );
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$217;
		}
		label$239:;
		label$238:;
	}
	label$226:;
	struct $7ASTNODE* vr$31 = ASTBUILDCALL( SYM$1, INST_EXPR$1, SECOND_ARG$1, THIRD_ARG$1 );
	fb$result$1 = vr$31;
	label$217:;
	return fb$result$1;
}

static void HFORSTMTCLOSE( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$240:;
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 8) == (struct $7ASTNODE*)0u ) goto label$243;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 8) );
	}
	label$243:;
	label$242:;
	struct $7ASTNODE* vr$3 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 128), -1 );
	ASTADD( vr$3 );
	{
		int32 TMP$115$2;
		TMP$115$2 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) + 28) & 511;
		if( TMP$115$2 != 20 ) goto label$245;
		label$246:;
		{
			HUDTSTEP( STK$1 );
			struct $7ASTNODE* vr$8 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 120), -1 );
			ASTADD( vr$8 );
			HUDTNEXT( STK$1 );
		}
		goto label$244;
		label$245:;
		{
			HSCALARSTEP( STK$1 );
			struct $7ASTNODE* vr$10 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 120), -1 );
			ASTADD( vr$10 );
			HSCALARNEXT( STK$1 );
		}
		label$247:;
		label$244:;
	}
	struct $7ASTNODE* vr$12 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 132), -1 );
	ASTADD( vr$12 );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 16) == (struct $7ASTNODE*)0u ) goto label$249;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 16) );
	}
	label$249:;
	label$248:;
	label$241:;
}
