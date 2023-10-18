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
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef int64 $8FB_TOKEN;
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
typedef int64 $11FB_CASETYPE;
struct $9FBCASECTX {
	$11FB_CASETYPE TYP;
	int64 OP;
	struct $7ASTNODE* EXPR1;
	struct $7ASTNODE* EXPR2;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBCASECTX ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzcompoundzselect( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTSCOPEBEGIN( void );
void ASTSCOPEEND( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
void ASTADDUNSCOPED( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWBRANCH( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int64 );
int64 ASTGETINVERSELOGOP( int64 );
struct $7ASTNODE* ASTGETEFFECTIVENODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREBUILDWITHOUTEFFECTIVEPART( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDFAKEWSTRINGACCESS( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDFAKEWSTRINGASSIGN( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDIMPLICITVAR( int64, struct $8FBSYMBOL*, int64 );
int64 HFBRELOP2IRRELOP( int64 );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int64 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
void CSELCONSTSTMTBEGIN( void );
void CSELCONSTSTMTNEXT( struct $13FB_CMPSTMTSTK* );
void CSELCONSTSTMTEND( struct $13FB_CMPSTMTSTK* );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
static void HCASEEXPRESSION( struct $9FBCASECTX*, struct $8FBSYMBOL* );
static int64 HFLUSHCASEEXPR( struct $9FBCASECTX*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
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
struct $5FBCTX {
	int64 BASE;
	struct $9FBCASECTX CASETB[1024];
};
__FB_STATIC_ASSERT( sizeof( struct $5FBCTX ) == 32776 );
static struct $5FBCTX CTX$;

void PARSERSELECTSTMTINIT( void )
{
	label$10:;
	*(int64*)&CTX$ = 0ll;
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
	int64 DTYPE$1;
	int64 OPTIONS$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* EL$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$0 = HMATCH( 271ll, 2048ll );
	if( vr$0 != 0ll ) goto label$17;
	{
		ERRREPORT( 34ll, 0ll, (uint8*)0ull );
	}
	label$17:;
	label$16:;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 376ll ) goto label$19;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$2 = HMATCH( 335ll, 2048ll );
		if( vr$2 == 0ll ) goto label$21;
		{
			CSELCONSTSTMTBEGIN(  );
			goto label$15;
		}
		label$21:;
		label$20:;
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
	}
	label$19:;
	label$18:;
	struct $7ASTNODE* OUTERSCOPENODE$1;
	struct $7ASTNODE* vr$3 = ASTSCOPEBEGIN(  );
	OUTERSCOPENODE$1 = vr$3;
	if( OUTERSCOPENODE$1 != (struct $7ASTNODE*)0ull ) goto label$23;
	{
		ERRREPORT( 27ll, 0ll, (uint8*)0ull );
	}
	label$23:;
	label$22:;
	struct $7ASTNODE* vr$4 = CEXPRESSION(  );
	EXPR$1 = vr$4;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$25;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$5;
	}
	label$25:;
	label$24:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 20ll ) goto label$27;
	{
		ERRREPORT( 24ll, 0ll, (uint8*)0ull );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$9;
	}
	label$27:;
	label$26:;
	struct $8FBSYMBOL* vr$10 = SYMBADDLABEL( (uint8*)0ull, 0ll );
	EL$1 = vr$10;
	SYM$1 = (struct $8FBSYMBOL*)0ull;
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll);
	struct $7ASTNODE* EFFECTIVEEXPR$1;
	struct $7ASTNODE* vr$13 = ASTGETEFFECTIVENODE( EXPR$1 );
	EFFECTIVEEXPR$1 = vr$13;
	if( *(int64*)EFFECTIVEEXPR$1 != 17ll ) goto label$29;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)EFFECTIVEEXPR$1 + 24ll);
		struct $7ASTNODE* vr$16 = ASTREBUILDWITHOUTEFFECTIVEPART( EXPR$1 );
		ASTADD( vr$16 );
	}
	goto label$28;
	label$29:;
	{
		int64 TMP$96$2;
		{
			int64 TMP$94$3;
			int64 TMP$95$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$30;
			TMP$94$3 = 24ll;
			goto label$47;
			label$30:;
			TMP$94$3 = DTYPE$1 & 31ll;
			label$47:;
			TMP$95$3 = TMP$94$3;
			if( TMP$95$3 == 18ll ) goto label$33;
			label$34:;
			if( TMP$95$3 != 4ll ) goto label$32;
			label$33:;
			{
				DTYPE$1 = 17ll;
			}
			label$32:;
			label$31:;
		}
		OPTIONS$1 = 0ll;
		if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 2ll) != 0ll ) goto label$36;
		{
			OPTIONS$1 = OPTIONS$1 | 2ll;
		}
		label$36:;
		label$35:;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$37;
		TMP$96$2 = 24ll;
		goto label$48;
		label$37:;
		TMP$96$2 = DTYPE$1 & 31ll;
		label$48:;
		if( TMP$96$2 == 7ll ) goto label$39;
		{
			int64 TMP$97$3;
			struct $8FBSYMBOL* vr$23 = SYMBADDIMPLICITVAR( DTYPE$1, SUBTYPE$1, OPTIONS$1 );
			SYM$1 = vr$23;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$40;
			TMP$97$3 = 24ll;
			goto label$49;
			label$40:;
			TMP$97$3 = DTYPE$1 & 31ll;
			label$49:;
			if( TMP$97$3 == 17ll ) goto label$42;
			{
				*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 2048ll;
			}
			label$42:;
			label$41:;
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$44;
			{
				struct $7ASTNODE* vr$30 = ASTNEWDECL( SYM$1, -1ll );
				ASTADDUNSCOPED( vr$30 );
				struct $7ASTNODE* vr$31 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$32 = ASTNEWASSIGN( vr$31, EXPR$1, 0ll );
				ASTADD( vr$32 );
			}
			goto label$43;
			label$44:;
			{
				struct $7ASTNODE* vr$33 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$34 = ASTNEWASSIGN( vr$33, EXPR$1, 64ll );
				struct $7ASTNODE* vr$35 = ASTNEWDECL( SYM$1, 0ll );
				struct $7ASTNODE* vr$36 = ASTNEWLINK( vr$35, vr$34, 0ll );
				ASTADD( vr$36 );
			}
			label$43:;
		}
		goto label$38;
		label$39:;
		{
			struct $8FBSYMBOL* vr$37 = SYMBADDIMPLICITVAR( 39ll, (struct $8FBSYMBOL*)0ull, OPTIONS$1 );
			SYM$1 = vr$37;
			*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 16777216ll;
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$46;
			{
				struct $7ASTNODE* vr$42 = ASTNEWDECL( SYM$1, -1ll );
				ASTADDUNSCOPED( vr$42 );
				struct $7ASTNODE* vr$43 = ASTBUILDFAKEWSTRINGASSIGN( SYM$1, EXPR$1, 0ll );
				ASTADD( vr$43 );
			}
			goto label$45;
			label$46:;
			{
				struct $7ASTNODE* vr$44 = ASTBUILDFAKEWSTRINGASSIGN( SYM$1, EXPR$1, 64ll );
				struct $7ASTNODE* vr$45 = ASTNEWDECL( SYM$1, 0ll );
				struct $7ASTNODE* vr$46 = ASTNEWLINK( vr$45, vr$44, 0ll );
				ASTADD( vr$46 );
			}
			label$45:;
		}
		label$38:;
	}
	label$28:;
	struct $13FB_CMPSTMTSTK* vr$47 = CCOMPSTMTPUSH( 270ll, 0ll );
	STK$1 = vr$47;
	*(int64*)((uint8*)STK$1 + 24ll) = 0ll;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) = SYM$1;
	*(int64*)((uint8*)STK$1 + 40ll) = 0ll;
	struct $8FBSYMBOL* vr$51 = SYMBADDLABEL( (uint8*)0ull, 0ll );
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) = vr$51;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 88ll) = EL$1;
	*(struct $7ASTNODE**)((uint8*)STK$1 + 104ll) = OUTERSCOPENODE$1;
	label$15:;
}

void CSELECTSTMTNEXT( void )
{
	label$77:;
	struct $8FBSYMBOL* IL$1;
	struct $8FBSYMBOL* NL$1;
	int64 CNT$1;
	int64 I$1;
	int64 CNTBASE$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 270ll, 0ll );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0ull ) goto label$80;
	{
		ERRREPORT( 118ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$78;
	}
	label$80:;
	label$79:;
	if( *(int64*)((uint8*)STK$1 + 40ll) != -1ll ) goto label$82;
	{
		ERRREPORT( 35ll, 0ll, (uint8*)0ull );
	}
	label$82:;
	label$81:;
	*($15FB_CMPSTMT_MASK*)((uint8*)STK$1 + 8ll) = 1ll;
	if( *(int64*)((uint8*)STK$1 + 24ll) == 0ll ) goto label$84;
	{
		CSELCONSTSTMTNEXT( STK$1 );
		goto label$78;
	}
	label$84:;
	label$83:;
	LEXSKIPTOKEN( 2048ll );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) == (struct $7ASTNODE*)0ull ) goto label$86;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) );
		*(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) = (struct $7ASTNODE*)0ull;
	}
	label$86:;
	label$85:;
	if( *(int64*)((uint8*)STK$1 + 40ll) <= 0ll ) goto label$88;
	{
		struct $7ASTNODE* vr$9 = ASTNEWBRANCH( 98ll, *(struct $8FBSYMBOL**)((uint8*)STK$1 + 88ll), (struct $7ASTNODE*)0ull );
		ASTADD( vr$9 );
		struct $7ASTNODE* vr$11 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll), -1ll );
		ASTADD( vr$11 );
		struct $8FBSYMBOL* vr$12 = SYMBADDLABEL( (uint8*)0ull, 4ll );
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) = vr$12;
	}
	label$88:;
	label$87:;
	int64 vr$14 = LEXGETTOKEN( 0ll );
	if( vr$14 != 268ll ) goto label$90;
	{
		LEXSKIPTOKEN( 2048ll );
		struct $7ASTNODE* vr$15 = ASTSCOPEBEGIN(  );
		*(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) = vr$15;
		*(int64*)((uint8*)STK$1 + 40ll) = -1ll;
		goto label$78;
	}
	label$90:;
	label$89:;
	CNT$1 = 0ll;
	CNTBASE$1 = *(int64*)&CTX$;
	label$91:;
	{
		HCASEEXPRESSION( (struct $9FBCASECTX*)((uint8*)((uint8*)&CTX$ + ((CNTBASE$1 + CNT$1) << (5ll & 63ll))) + 8ll), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) );
		CNT$1 = CNT$1 + 1ll;
		int64 vr$24 = LEXGETTOKEN( 0ll );
		if( vr$24 == 44ll ) goto label$95;
		{
			goto label$92;
		}
		label$95:;
		label$94:;
		LEXSKIPTOKEN( 0ll );
	}
	label$93:;
	goto label$91;
	label$92:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + CNT$1;
	struct $8FBSYMBOL* vr$26 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	IL$1 = vr$26;
	{
		I$1 = 0ll;
		int64 TMP$101$2;
		TMP$101$2 = CNT$1 + -1ll;
		goto label$96;
		label$99:;
		{
			if( I$1 >= (CNT$1 + -1ll) ) goto label$101;
			{
				struct $8FBSYMBOL* vr$29 = SYMBADDLABEL( (uint8*)0ull, 0ll );
				NL$1 = vr$29;
			}
			goto label$100;
			label$101:;
			{
				NL$1 = *(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll);
			}
			label$100:;
			if( *(int64*)((uint8*)((uint8*)&CTX$ + ((CNTBASE$1 + I$1) << (5ll & 63ll))) + 8ll) == 3ll ) goto label$103;
			{
				int64 vr$41 = HFLUSHCASEEXPR( (struct $9FBCASECTX*)((uint8*)((uint8*)&CTX$ + ((CNTBASE$1 + I$1) << (5ll & 63ll))) + 8ll), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll), IL$1, NL$1, (int64)-(I$1 == (CNT$1 + -1ll)) );
				if( vr$41 != 0ll ) goto label$105;
				{
					ERRREPORT( 24ll, -1ll, (uint8*)0ull );
				}
				label$105:;
				label$104:;
			}
			label$103:;
			label$102:;
			if( I$1 >= (CNT$1 + -1ll) ) goto label$107;
			{
				struct $7ASTNODE* vr$43 = ASTNEWLABEL( NL$1, -1ll );
				ASTADD( vr$43 );
			}
			label$107:;
			label$106:;
		}
		label$97:;
		I$1 = I$1 + 1ll;
		label$96:;
		if( I$1 <= TMP$101$2 ) goto label$99;
		label$98:;
	}
	*(int64*)&CTX$ = *(int64*)&CTX$ - CNT$1;
	struct $7ASTNODE* vr$46 = ASTNEWLABEL( IL$1, -1ll );
	ASTADD( vr$46 );
	struct $7ASTNODE* vr$47 = ASTSCOPEBEGIN(  );
	*(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) = vr$47;
	*(int64*)((uint8*)STK$1 + 40ll) = *(int64*)((uint8*)STK$1 + 40ll) + 1ll;
	label$78:;
}

void CSELECTSTMTEND( void )
{
	label$108:;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 270ll, -1ll );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0ull ) goto label$111;
	{
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$109;
	}
	label$111:;
	label$110:;
	if( *(int64*)((uint8*)STK$1 + 40ll) != 0ll ) goto label$113;
	{
		ERRREPORT( 34ll, 0ll, (uint8*)0ull );
	}
	label$113:;
	label$112:;
	if( *(int64*)((uint8*)STK$1 + 24ll) == 0ll ) goto label$115;
	{
		CSELCONSTSTMTEND( STK$1 );
		goto label$109;
	}
	label$115:;
	label$114:;
	LEXSKIPTOKEN( 2048ll );
	LEXSKIPTOKEN( 2048ll );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) == (struct $7ASTNODE*)0ull ) goto label$117;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) );
	}
	label$117:;
	label$116:;
	struct $7ASTNODE* vr$6 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll), -1ll );
	ASTADD( vr$6 );
	struct $7ASTNODE* vr$8 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 88ll), -1ll );
	ASTADD( vr$8 );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 104ll) == (struct $7ASTNODE*)0ull ) goto label$119;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 104ll) );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HCASEEXPRESSION( struct $9FBCASECTX* CASECTX$1, struct $8FBSYMBOL* SYM$1 )
{
	label$50:;
	*(int64*)((uint8*)CASECTX$1 + 8ll) = 45ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 272ll ) goto label$53;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$2 = LEXGETTOKEN( 0ll );
		int64 vr$3 = HFBRELOP2IRRELOP( vr$2 );
		*(int64*)((uint8*)CASECTX$1 + 8ll) = vr$3;
		LEXSKIPTOKEN( 0ll );
		*($11FB_CASETYPE*)CASECTX$1 = 2ll;
	}
	goto label$52;
	label$53:;
	{
		*($11FB_CASETYPE*)CASECTX$1 = 0ll;
	}
	label$52:;
	struct $7ASTNODE* vr$7 = CEXPRESSION(  );
	*(struct $7ASTNODE**)((uint8*)CASECTX$1 + 16ll) = vr$7;
	if( *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 16ll) != (struct $7ASTNODE*)0ull ) goto label$55;
	{
		int64 TMP$98$2;
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 16777216ll) == 0ll ) goto label$56;
		TMP$98$2 = 7ll;
		goto label$120;
		label$56:;
		TMP$98$2 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
		label$120:;
		struct $7ASTNODE* vr$14 = ASTNEWCONSTZ( TMP$98$2, (struct $8FBSYMBOL*)0ull );
		*(struct $7ASTNODE**)((uint8*)CASECTX$1 + 16ll) = vr$14;
	}
	label$55:;
	label$54:;
	int64 vr$16 = LEXGETTOKEN( 0ll );
	if( vr$16 != 284ll ) goto label$58;
	{
		LEXSKIPTOKEN( 2048ll );
		if( *(int64*)CASECTX$1 == 0ll ) goto label$60;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
			*($11FB_CASETYPE*)CASECTX$1 = 0ll;
		}
		goto label$59;
		label$60:;
		{
			*($11FB_CASETYPE*)CASECTX$1 = 1ll;
			struct $7ASTNODE* vr$20 = CEXPRESSION(  );
			*(struct $7ASTNODE**)((uint8*)CASECTX$1 + 24ll) = vr$20;
			if( *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 24ll) != (struct $7ASTNODE*)0ull ) goto label$62;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
				*($11FB_CASETYPE*)CASECTX$1 = 0ll;
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

static int64 HFLUSHCASEEXPR( struct $9FBCASECTX* CASECTX$1, struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* INILABEL$1, struct $8FBSYMBOL* NXTLABEL$1, int64 ISLAST$1 )
{
	struct $7ASTNODE* TMP$99$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$63:;
	struct $7ASTNODE* EXPR$1;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 16777216ll) == 0ll ) goto label$65;
	struct $7ASTNODE* vr$3 = ASTBUILDFAKEWSTRINGACCESS( SYM$1 );
	TMP$99$1 = vr$3;
	goto label$121;
	label$65:;
	struct $7ASTNODE* vr$4 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	TMP$99$1 = vr$4;
	label$121:;
	EXPR$1 = TMP$99$1;
	if( *(int64*)CASECTX$1 == 1ll ) goto label$67;
	{
		if( ISLAST$1 == 0ll ) goto label$69;
		{
			int64 vr$8 = ASTGETINVERSELOGOP( *(int64*)((uint8*)CASECTX$1 + 8ll) );
			struct $7ASTNODE* vr$9 = ASTNEWBOP( vr$8, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 16ll), NXTLABEL$1, 0ll );
			EXPR$1 = vr$9;
		}
		goto label$68;
		label$69:;
		{
			struct $7ASTNODE* vr$12 = ASTNEWBOP( *(int64*)((uint8*)CASECTX$1 + 8ll), EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 16ll), INILABEL$1, 0ll );
			EXPR$1 = vr$12;
		}
		label$68:;
	}
	goto label$66;
	label$67:;
	{
		struct $7ASTNODE* TMP$100$2;
		struct $7ASTNODE* vr$14 = ASTNEWBOP( 47ll, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 16ll), NXTLABEL$1, 0ll );
		EXPR$1 = vr$14;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$71;
		{
			fb$result$1 = 0ll;
			goto label$64;
		}
		label$71:;
		label$70:;
		ASTADD( EXPR$1 );
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 16777216ll) == 0ll ) goto label$72;
		struct $7ASTNODE* vr$17 = ASTBUILDFAKEWSTRINGACCESS( SYM$1 );
		TMP$100$2 = vr$17;
		goto label$122;
		label$72:;
		struct $7ASTNODE* vr$18 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		TMP$100$2 = vr$18;
		label$122:;
		EXPR$1 = TMP$100$2;
		if( ISLAST$1 == 0ll ) goto label$74;
		{
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 46ll, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 24ll), NXTLABEL$1, 0ll );
			EXPR$1 = vr$20;
		}
		goto label$73;
		label$74:;
		{
			struct $7ASTNODE* vr$22 = ASTNEWBOP( 50ll, EXPR$1, *(struct $7ASTNODE**)((uint8*)CASECTX$1 + 24ll), INILABEL$1, 0ll );
			EXPR$1 = vr$22;
		}
		label$73:;
	}
	label$66:;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$76;
	{
		fb$result$1 = 0ll;
		goto label$64;
	}
	label$76:;
	label$75:;
	ASTADD( EXPR$1 );
	fb$result$1 = -1ll;
	label$64:;
	return fb$result$1;
}
