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
typedef int64 $12FB_PARSEROPT;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $11AST_CONVOPT;
typedef int64 $14FB_SYMBFINDOPT;
typedef int64 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzexprzunary( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTSKIPCONSTCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWUOP( int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDMULTIDEREF( int64, struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int64 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDSELFUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
int64 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* );
int64 SYMBISSTRING( int64 );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
typedef int64 $14FB_SYMBTYPEOPT;
int64 CSYMBOLTYPE( int64*, struct $8FBSYMBOL**, int64*, int64*, $14FB_SYMBTYPEOPT );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $8FBSYMBOL* CIDENTIFIERORUDTMEMBER( struct $8FBSYMBOL**, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CRELEXPRESSION( void );
struct $7ASTNODE* CEXPEXPRESSION( void );
struct $7ASTNODE* CHIGHESTPRECEXPR( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CDEREFEXPRESSION( void );
struct $7ASTNODE* CPROCPTRBODY( int64, struct $8FBSYMBOL* );
struct $7ASTNODE* CADDROFEXPRESSION( void );
struct $7ASTNODE* CPARENTEXPRESSION( void );
struct $7ASTNODE* CATOM( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
struct $7ASTNODE* CMEMBERACCESS( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* CMEMBERDEREF( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* CFUNCPTRORMEMBERDEREF( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* );
struct $7ASTNODE* COPERATORNEW( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
FBSTRING* PPTYPEOF( void );
static struct $7ASTNODE* HCAST( $11AST_CONVOPT );
static struct $7ASTNODE* HPPDEFINEDEXPR( void );
static struct $8FBSYMBOL* HPROCPTRRESOLVEOVERLOAD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, boolean );
static void HCHECKEMPTYPROCPARENS( void );
static struct $7ASTNODE* HPROCPTRBODY( struct $8FBSYMBOL*, struct $8FBSYMBOL*, boolean, int64 );
static struct $7ASTNODE* HVARPTRBODY( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
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

struct $7ASTNODE* CNEGNOTEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	struct $7ASTNODE* NEGEXPR$1;
	{
		int64 TMP$94$2;
		int64 vr$1 = LEXGETTOKEN( 0ll );
		TMP$94$2 = vr$1;
		if( TMP$94$2 != 45ll ) goto label$19;
		label$20:;
		{
			LEXSKIPTOKEN( 0ll );
			struct $7ASTNODE* vr$2 = CEXPEXPRESSION(  );
			NEGEXPR$1 = vr$2;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$22;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				NEGEXPR$1 = vr$3;
			}
			goto label$21;
			label$22:;
			{
				struct $7ASTNODE* vr$4 = ASTNEWUOP( 54ll, NEGEXPR$1 );
				NEGEXPR$1 = vr$4;
			}
			label$21:;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$24;
			{
				ERRREPORT( 20ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				NEGEXPR$1 = vr$5;
			}
			label$24:;
			label$23:;
			fb$result$1 = NEGEXPR$1;
			goto label$17;
		}
		goto label$18;
		label$19:;
		if( TMP$94$2 != 43ll ) goto label$25;
		label$26:;
		{
			LEXSKIPTOKEN( 0ll );
			struct $7ASTNODE* vr$6 = CEXPEXPRESSION(  );
			NEGEXPR$1 = vr$6;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$28;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				NEGEXPR$1 = vr$7;
			}
			goto label$27;
			label$28:;
			{
				struct $7ASTNODE* vr$8 = ASTNEWUOP( 53ll, NEGEXPR$1 );
				NEGEXPR$1 = vr$8;
			}
			label$27:;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$30;
			{
				ERRREPORT( 20ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				NEGEXPR$1 = vr$9;
			}
			label$30:;
			label$29:;
			fb$result$1 = NEGEXPR$1;
			goto label$17;
		}
		goto label$18;
		label$25:;
		if( TMP$94$2 != 295ll ) goto label$31;
		label$32:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$10 = CRELEXPRESSION(  );
			NEGEXPR$1 = vr$10;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$34;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$11 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				NEGEXPR$1 = vr$11;
			}
			goto label$33;
			label$34:;
			{
				struct $7ASTNODE* vr$12 = ASTNEWUOP( 52ll, NEGEXPR$1 );
				NEGEXPR$1 = vr$12;
			}
			label$33:;
			if( NEGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$36;
			{
				ERRREPORT( 20ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
	struct $7ASTNODE* vr$14 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0ull, (struct $10FBSYMCHAIN*)0ull );
	fb$result$1 = vr$14;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$37:;
	struct $8FBSYMBOL* SUBTYPE$1;
	int64 DTYPE$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$40;
	{
		goto label$38;
		label$40:;
	}
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll);
	{
		int64 TMP$95$2;
		uint64 TMP$96$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$41;
		TMP$95$2 = 24ll;
		goto label$68;
		label$41:;
		TMP$95$2 = DTYPE$1 & 31ll;
		label$68:;
		TMP$96$2 = (uint64)TMP$95$2;
		goto label$43;
		label$44:;
		{
			int64 vr$5 = LEXGETTOKEN( 0ll );
			if( vr$5 != 91ll ) goto label$46;
			{
				struct $7ASTNODE* vr$6 = CMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, -1ll );
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
				int64 TMP$97$4;
				int64 vr$7 = LEXGETTOKEN( 0ll );
				TMP$97$4 = vr$7;
				if( TMP$97$4 != 46ll ) goto label$49;
				label$50:;
				{
					LEXSKIPTOKEN( 64ll );
					struct $7ASTNODE* vr$8 = CMEMBERACCESS( DTYPE$1, SUBTYPE$1, EXPR$1 );
					EXPR$1 = vr$8;
					if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$52;
					{
						fb$result$1 = (struct $7ASTNODE*)0ull;
						goto label$38;
					}
					label$52:;
					label$51:;
					DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll);
					SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll);
				}
				goto label$48;
				label$49:;
				if( TMP$97$4 == 400ll ) goto label$54;
				label$55:;
				if( TMP$97$4 != 91ll ) goto label$53;
				label$54:;
				{
					struct $7ASTNODE* vr$11 = CMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, -1ll );
					EXPR$1 = vr$11;
				}
				label$53:;
				label$48:;
			}
		}
		goto label$42;
		label$43:;
		static const void* tmp$99[17ll] = {
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
		if( (TMP$96$2 - 4ull) > 16ull ) goto label$42;
		goto *tmp$99[TMP$96$2 - 4ull];
		label$42:;
	}
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$57;
	{
		int64 ISFUNCPTR$2;
		ISFUNCPTR$2 = 0ll;
		int64 ISFIELD$2;
		ISFIELD$2 = 0ll;
		{
			int64 TMP$98$3;
			int64 vr$13 = LEXGETTOKEN( 0ll );
			TMP$98$3 = vr$13;
			if( TMP$98$3 != 40ll ) goto label$59;
			label$60:;
			{
				ISFUNCPTR$2 = (int64)-((DTYPE$1 & 511ll) == 54ll);
				ISFIELD$2 = ISFUNCPTR$2;
			}
			goto label$58;
			label$59:;
			if( TMP$98$3 == 400ll ) goto label$62;
			label$63:;
			if( TMP$98$3 != 91ll ) goto label$61;
			label$62:;
			{
				ISFIELD$2 = -1ll;
			}
			goto label$58;
			label$61:;
			if( TMP$98$3 != 46ll ) goto label$64;
			label$65:;
			{
				ERRREPORT( 265ll, -1ll, (uint8*)0ull );
			}
			label$64:;
			label$58:;
		}
		if( ISFIELD$2 == 0ll ) goto label$67;
		{
			struct $7ASTNODE* vr$16 = CFUNCPTRORMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, ISFUNCPTR$2, -1ll );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$69:;
	struct $7ASTNODE* EXPR$1;
	{
		int64 TMP$100$2;
		int64 vr$1 = LEXGETTOKEN( 0ll );
		TMP$100$2 = vr$1;
		if( TMP$100$2 != 64ll ) goto label$72;
		label$73:;
		{
			goto label$75;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) | 1ll;
			}
			goto label$74;
			label$75:;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) & -2ll;
			}
			label$74:;
			struct $7ASTNODE* vr$4 = CADDROFEXPRESSION(  );
			fb$result$1 = vr$4;
			goto label$70;
		}
		goto label$71;
		label$72:;
		if( TMP$100$2 != 42ll ) goto label$76;
		label$77:;
		{
			goto label$79;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) | 1ll;
			}
			goto label$78;
			label$79:;
			{
				*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) & -2ll;
			}
			label$78:;
			struct $7ASTNODE* vr$7 = CDEREFEXPRESSION(  );
			fb$result$1 = vr$7;
			goto label$70;
		}
		goto label$71;
		label$76:;
		if( TMP$100$2 != 40ll ) goto label$80;
		label$81:;
		{
			int64 IS_OPT$3;
			IS_OPT$3 = (int64)-((*(int64*)((uint8*)&PARSER$ + 304ll) & 1ll) != 0ll);
			struct $7ASTNODE* vr$10 = CPARENTEXPRESSION(  );
			EXPR$1 = vr$10;
			if( IS_OPT$3 == 0ll ) goto label$83;
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
				uint64 TMP$101$4;
				int64 vr$11 = LEXGETTOKEN( 0ll );
				TMP$101$4 = (uint64)vr$11;
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
					LEXSKIPTOKEN( 2048ll );
					struct $7ASTNODE* vr$13 = HCAST( 0ll );
					EXPR$1 = vr$13;
				}
				goto label$85;
				label$89:;
				{
					LEXSKIPTOKEN( 2048ll );
					struct $7ASTNODE* vr$14 = HCAST( 4ll );
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
					if( (*(int64*)((uint8*)&PARSER$ + 304ll) & 1024ll) == 0ll ) goto label$93;
					{
						{
							int64 TMP$102$7;
							int64 vr$17 = LEXGETTOKEN( 0ll );
							TMP$102$7 = vr$17;
							if( TMP$102$7 != 377ll ) goto label$95;
							label$96:;
							{
								FBSTRING TMP$103$8;
								__builtin_memset( &TMP$103$8, 0, 24ll );
								FBSTRING* vr$19 = PPTYPEOF(  );
								fb_StrAssign( (void*)&TMP$103$8, -1ll, (void*)vr$19, -1ll, 0 );
								struct $7ASTNODE* vr$21 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&TMP$103$8 );
								fb$result$1 = vr$21;
								fb_StrDelete( (FBSTRING*)&TMP$103$8 );
								goto label$70;
							}
							goto label$94;
							label$95:;
							if( TMP$102$7 != 315ll ) goto label$97;
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
						*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) | 1ll;
					}
					goto label$99;
					label$100:;
					{
						*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 304ll) = *(int64*)((uint8*)&PARSER$ + 304ll) & -2ll;
					}
					label$99:;
					struct $7ASTNODE* vr$26 = CATOM( BASE_PARENT$1, CHAIN_$1 );
					fb$result$1 = vr$26;
					goto label$70;
				}
				goto label$85;
				label$86:;
				static const void* tmp$104[29ll] = {
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
				if( (TMP$101$4 - 389ull) > 28ull ) goto label$91;
				goto *tmp$104[TMP$101$4 - 389ull];
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$138:;
	int64 DEREFCNT$1;
	struct $7ASTNODE* EXPR$1;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 42ll ) goto label$141;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$139;
	}
	label$141:;
	label$140:;
	DEREFCNT$1 = 0ll;
	label$142:;
	{
		LEXSKIPTOKEN( 0ll );
		DEREFCNT$1 = DEREFCNT$1 + 1ll;
	}
	label$144:;
	int64 vr$3 = LEXGETTOKEN( 0ll );
	if( vr$3 == 42ll ) goto label$142;
	label$143:;
	struct $7ASTNODE* vr$4 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0ull, (struct $10FBSYMCHAIN*)0ull );
	EXPR$1 = vr$4;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$146;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$5;
		goto label$139;
	}
	label$146:;
	label$145:;
	struct $7ASTNODE* vr$8 = ASTBUILDMULTIDEREF( DEREFCNT$1, EXPR$1, *(int64*)((uint8*)EXPR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
	fb$result$1 = vr$8;
	label$139:;
	return fb$result$1;
}

struct $7ASTNODE* CPROCPTRBODY( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$181:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $7ASTNODE* EXPR$1;
	int64 IS_VTABLE_INDEX$1;
	IS_VTABLE_INDEX$1 = 0ll;
	if( DTYPE$1 != 20ll ) goto label$184;
	{
		BASE_PARENT$1 = SUBTYPE$1;
		CHAIN_$1 = (struct $10FBSYMCHAIN*)0ull;
	}
	goto label$183;
	label$184:;
	{
		struct $10FBSYMCHAIN* vr$2 = CIDENTIFIER( &BASE_PARENT$1, 56ll );
		CHAIN_$1 = vr$2;
	}
	label$183:;
	struct $8FBSYMBOL* vr$4 = CIDENTIFIERORUDTMEMBER( &BASE_PARENT$1, CHAIN_$1 );
	SYM$1 = vr$4;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$186;
	{
		ERRREPORT( 8ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$5;
		goto label$182;
	}
	label$186:;
	label$185:;
	if( *(int64*)SYM$1 == 3ll ) goto label$188;
	{
		ERRREPORT( 24ll, -1ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$7;
		goto label$182;
	}
	label$188:;
	label$187:;
	HCHECKEMPTYPROCPARENS(  );
	int64 vr$8 = HMATCH( 44ll, 0ll );
	if( vr$8 == 0ll ) goto label$190;
	{
		int64 DTYPE$2;
		DTYPE$2 = 0ll;
		struct $8FBSYMBOL* SUBTYPE$2;
		SUBTYPE$2 = (struct $8FBSYMBOL*)0ull;
		int64 IS_EXACT$2;
		IS_EXACT$2 = 0ll;
		int64 vr$9 = LEXGETTOKEN( 0ll );
		if( vr$9 != 354ll ) goto label$192;
		{
			IS_VTABLE_INDEX$1 = -1ll;
			LEXSKIPTOKEN( 2048ll );
		}
		label$192:;
		label$191:;
		int64 vr$10 = LEXGETTOKEN( 0ll );
		if( vr$10 == 41ll ) goto label$194;
		{
			int64 TMP$109$3;
			int64 TMP$110$3;
			TMP$110$3 = 0ll;
			TMP$109$3 = 0ll;
			int64 vr$15 = CSYMBOLTYPE( &DTYPE$2, &SUBTYPE$2, &TMP$109$3, &TMP$110$3, 1ll );
			if( vr$15 != 0ll ) goto label$196;
			{
				ERRREPORT( 24ll, -1ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$16;
				goto label$182;
			}
			label$196:;
			label$195:;
			{
				int64 TMP$111$4;
				TMP$111$4 = DTYPE$2 & 511ll;
				if( TMP$111$4 != 0ll ) goto label$198;
				label$199:;
				{
				}
				goto label$197;
				label$198:;
				if( TMP$111$4 != 54ll ) goto label$200;
				label$201:;
				{
					IS_EXACT$2 = -1ll;
				}
				goto label$197;
				label$200:;
				{
					ERRREPORT( 24ll, -1ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
					struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
		OLDSYM$2 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll);
		int64 OLD_DTYPE$2;
		OLD_DTYPE$2 = *(int64*)((uint8*)&PARSER$ + 312ll);
		*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = SUBTYPE$2;
		*(int64*)((uint8*)&PARSER$ + 312ll) = DTYPE$2;
		struct $7ASTNODE* vr$20 = HPROCPTRBODY( BASE_PARENT$1, SYM$1, (boolean)(IS_EXACT$2 != 0ll), IS_VTABLE_INDEX$1 );
		EXPR$1 = vr$20;
		*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = OLDSYM$2;
		*(int64*)((uint8*)&PARSER$ + 312ll) = OLD_DTYPE$2;
	}
	goto label$189;
	label$190:;
	{
		struct $7ASTNODE* vr$21 = HPROCPTRBODY( BASE_PARENT$1, SYM$1, (boolean)0ll, IS_VTABLE_INDEX$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$220:;
	struct $7ASTNODE* EXPR$1;
	EXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 64ll ) goto label$223;
	{
		LEXSKIPTOKEN( 0ll );
		int64 CHECK_ID$2;
		CHECK_ID$2 = -1ll;
		if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) == (struct $13FB_CMPSTMTSTK*)0ull ) goto label$225;
		{
			int64 vr$2 = LEXGETTOKEN( 0ll );
			if( vr$2 != 46ll ) goto label$227;
			{
				int64 vr$3 = LEXGETLOOKAHEAD( 1ll, 64ll );
				CHECK_ID$2 = (int64)-(vr$3 == 46ll);
			}
			label$227:;
			label$226:;
		}
		label$225:;
		label$224:;
		struct $10FBSYMCHAIN* CHAIN_$2;
		CHAIN_$2 = (struct $10FBSYMCHAIN*)0ull;
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = (struct $8FBSYMBOL*)0ull;
		struct $8FBSYMBOL* BASE_PARENT$2;
		BASE_PARENT$2 = (struct $8FBSYMBOL*)0ull;
		if( CHECK_ID$2 == 0ll ) goto label$229;
		{
			struct $10FBSYMCHAIN* vr$6 = CIDENTIFIER( &BASE_PARENT$2, 50ll );
			CHAIN_$2 = vr$6;
			struct $8FBSYMBOL* vr$7 = SYMBFINDBYCLASS( CHAIN_$2, 3ll );
			SYM$2 = vr$7;
		}
		label$229:;
		label$228:;
		if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$231;
		{
			LEXSKIPTOKEN( 4096ll );
			HCHECKEMPTYPROCPARENS(  );
			struct $7ASTNODE* vr$8 = HPROCPTRBODY( BASE_PARENT$2, SYM$2, (boolean)0ll, 0ll );
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
		uint64 TMP$114$2;
		int64 vr$10 = LEXGETTOKEN( 0ll );
		TMP$114$2 = (uint64)vr$10;
		goto label$233;
		label$234:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$11 = HMATCH( 40ll, 0ll );
			if( vr$11 != 0ll ) goto label$236;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$12;
				goto label$221;
			}
			label$236:;
			label$235:;
			struct $7ASTNODE* vr$13 = HVARPTRBODY( (struct $8FBSYMBOL*)0ull, (struct $10FBSYMCHAIN*)0ull );
			EXPR$1 = vr$13;
			int64 vr$14 = HMATCH( 41ll, 0ll );
			if( vr$14 != 0ll ) goto label$238;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			label$238:;
			label$237:;
		}
		goto label$232;
		label$239:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$15 = HMATCH( 40ll, 0ll );
			if( vr$15 != 0ll ) goto label$241;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$16;
				goto label$221;
			}
			label$241:;
			label$240:;
			struct $7ASTNODE* vr$17 = CPROCPTRBODY( 0ll, (struct $8FBSYMBOL*)0ull );
			EXPR$1 = vr$17;
			int64 vr$18 = HMATCH( 41ll, 0ll );
			if( vr$18 != 0ll ) goto label$243;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			label$243:;
			label$242:;
		}
		goto label$232;
		label$244:;
		{
			int64 TMP$115$3;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$19 = HMATCH( 40ll, 0ll );
			if( vr$19 != 0ll ) goto label$246;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				struct $7ASTNODE* vr$20 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$20;
				goto label$221;
			}
			label$246:;
			label$245:;
			struct $7ASTNODE* vr$21 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0ull, (struct $10FBSYMCHAIN*)0ull );
			EXPR$1 = vr$21;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$248;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$22;
				goto label$221;
			}
			label$248:;
			label$247:;
			int64 DTYPE$3;
			DTYPE$3 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
			if( (DTYPE$3 & 480ll) == 0ll ) goto label$249;
			TMP$115$3 = 24ll;
			goto label$268;
			label$249:;
			TMP$115$3 = DTYPE$3 & 31ll;
			label$268:;
			if( TMP$115$3 != 20ll ) goto label$251;
			{
				struct $8FBSYMBOL* SYM$4;
				SYM$4 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll);
				if( ((int64)-(((int64)*(int32*)((uint8*)SYM$4 + 208ll) & 131072ll) != 0ll) | (int64)-(((int64)*(int32*)((uint8*)SYM$4 + 208ll) & 65536ll) != 0ll)) == 0ll ) goto label$253;
				{
					ASTTRYOVLSTRINGCONV( &EXPR$1 );
					DTYPE$3 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
				}
				label$253:;
				label$252:;
			}
			label$251:;
			label$250:;
			int64 vr$40 = SYMBISSTRING( DTYPE$3 );
			if( vr$40 != 0ll ) goto label$255;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				ASTDELTREE( EXPR$1 );
				struct $7ASTNODE* vr$41 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$41;
				goto label$221;
			}
			label$255:;
			label$254:;
			struct $7ASTNODE* T$3;
			struct $7ASTNODE* vr$42 = ASTSKIPNOCONVCAST( EXPR$1 );
			T$3 = vr$42;
			{
				uint64 TMP$116$4;
				TMP$116$4 = *(uint64*)T$3;
				goto label$257;
				label$258:;
				{
				}
				goto label$256;
				label$259:;
				{
					ERRREPORTEX( 24ll, (uint8*)"for STRPTR", 0ll, 1ll, (uint8*)0ull );
				}
				goto label$256;
				label$257:;
				static const void* tmp$118[20ll] = {
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
				if( (TMP$116$4 - 17ull) > 19ull ) goto label$259;
				goto *tmp$118[TMP$116$4 - 17ull];
				label$256:;
			}
			{
				if( DTYPE$3 != 17ll ) goto label$261;
				label$262:;
				{
					struct $7ASTNODE* vr$44 = ASTBUILDSTRPTR( EXPR$1 );
					EXPR$1 = vr$44;
				}
				goto label$260;
				label$261:;
				if( DTYPE$3 != 7ll ) goto label$263;
				label$264:;
				{
					struct $7ASTNODE* vr$45 = ASTNEWADDROF( EXPR$1 );
					struct $7ASTNODE* vr$46 = ASTNEWCONV( 39ll, (struct $8FBSYMBOL*)0ull, vr$45, 0ll, (int64*)0ull );
					EXPR$1 = vr$46;
				}
				goto label$260;
				label$263:;
				{
					struct $7ASTNODE* vr$47 = ASTNEWADDROF( EXPR$1 );
					struct $7ASTNODE* vr$48 = ASTNEWCONV( 36ll, (struct $8FBSYMBOL*)0ull, vr$47, 0ll, (int64*)0ull );
					EXPR$1 = vr$48;
				}
				label$265:;
				label$260:;
			}
			int64 vr$49 = HMATCH( 41ll, 0ll );
			if( vr$49 != 0ll ) goto label$267;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			label$267:;
			label$266:;
		}
		goto label$232;
		label$233:;
		static const void* tmp$119[4ll] = {
			&&label$234,
			&&label$244,
			&&label$239,
			&&label$244,
		};
		if( (TMP$114$2 - 396ull) > 3ull ) goto label$232;
		goto *tmp$119[TMP$114$2 - 396ull];
		label$232:;
	}
	struct $7ASTNODE* vr$50 = CSTRIDXORMEMBERDEREF( EXPR$1 );
	fb$result$1 = vr$50;
	label$221:;
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

static struct $7ASTNODE* HPPDEFINEDEXPR( void )
{
	struct $8FBSYMBOL* TMP$93$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	int64 IS_DEFINED$1;
	LEXSKIPTOKEN( 2050ll );
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 40ll ) goto label$13;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$12;
	label$13:;
	{
		LEXSKIPTOKEN( 2ll );
	}
	label$12:;
	TMP$93$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$3 = CIDENTIFIERORUDTMEMBER( &TMP$93$1, (struct $10FBSYMCHAIN*)0ull );
	IS_DEFINED$1 = (int64)-(vr$3 != (struct $8FBSYMBOL*)0ull);
	int64 vr$5 = HMATCH( 41ll, 0ll );
	if( vr$5 != 0ll ) goto label$15;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	label$15:;
	label$14:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( IS_DEFINED$1, 8ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$6;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HCAST( $11AST_CONVOPT OPTIONS$1 )
{
	int64 TMP$105$1;
	int64 TMP$106$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$101:;
	int64 DTYPE$1;
	int64 ERRMSG$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $7ASTNODE* EXPR$1;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 40ll ) goto label$104;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$2;
		goto label$102;
	}
	label$104:;
	label$103:;
	LEXSKIPTOKEN( 0ll );
	TMP$106$1 = 0ll;
	TMP$105$1 = 0ll;
	int64 vr$7 = CSYMBOLTYPE( &DTYPE$1, &SUBTYPE$1, &TMP$105$1, &TMP$106$1, 1ll );
	if( vr$7 != 0ll ) goto label$106;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
		if( (OPTIONS$1 & 4ll) == 0ll ) goto label$108;
		{
			DTYPE$1 = 32ll;
		}
		goto label$107;
		label$108:;
		{
			DTYPE$1 = 8ll;
		}
		label$107:;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$106:;
	label$105:;
	{
		int64 TMP$107$2;
		uint64 TMP$108$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$109;
		TMP$107$2 = 24ll;
		goto label$269;
		label$109:;
		TMP$107$2 = DTYPE$1 & 31ll;
		label$269:;
		TMP$108$2 = (uint64)TMP$107$2;
		goto label$111;
		label$112:;
		{
			ERRREPORT( 24ll, -1ll, (uint8*)0ull );
			if( (OPTIONS$1 & 4ll) == 0ll ) goto label$114;
			{
				DTYPE$1 = 32ll;
			}
			goto label$113;
			label$114:;
			{
				DTYPE$1 = 8ll;
			}
			label$113:;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
		}
		goto label$110;
		label$115:;
		{
			if( (OPTIONS$1 & 4ll) == 0ll ) goto label$117;
			{
				if( (*(int64*)((uint8*)&ENV$ + 400ll) & 16ll) == 0ll ) goto label$119;
				{
					ERRREPORTWARN( 27ll, (uint8*)0ull, 1ll, (uint8*)0ull );
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
			OPTIONS$1 = OPTIONS$1 | 4ll;
		}
		goto label$110;
		label$121:;
		{
			if( (OPTIONS$1 & 4ll) == 0ll ) goto label$123;
			{
				ERRREPORTWARN( 27ll, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			label$123:;
			label$122:;
		}
		goto label$110;
		label$111:;
		static const void* tmp$120[25ll] = {
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
		if( TMP$108$2 > 24ull ) goto label$121;
		goto *tmp$120[TMP$108$2 - 0ull];
		label$110:;
	}
	int64 vr$16 = LEXGETTOKEN( 0ll );
	if( vr$16 == 44ll ) goto label$125;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$124;
	label$125:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$124:;
	struct $7ASTNODE* vr$17 = CEXPRESSION(  );
	EXPR$1 = vr$17;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$127;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$18 = ASTNEWCONSTZ( DTYPE$1, SUBTYPE$1 );
		EXPR$1 = vr$18;
	}
	label$127:;
	label$126:;
	OPTIONS$1 = OPTIONS$1 | 2ll;
	if( ((int64)-((*(int64*)((uint8*)&ENV$ + 400ll) & 64ll) == 0ll) & (int64)-((*(int64*)((uint8*)&ENV$ + 400ll) & 128ll) == 0ll)) == 0ll ) goto label$129;
	{
		OPTIONS$1 = OPTIONS$1 | 32ll;
	}
	label$129:;
	label$128:;
	struct $7ASTNODE* vr$28 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$1, OPTIONS$1 | 64ll, &ERRMSG$1 );
	EXPR$1 = vr$28;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$131;
	{
		if( ERRMSG$1 != 0ll ) goto label$133;
		{
			if( (OPTIONS$1 & 4ll) == 0ll ) goto label$135;
			{
				ERRMSG$1 = 28ll;
			}
			goto label$134;
			label$135:;
			{
				ERRMSG$1 = 20ll;
			}
			label$134:;
		}
		label$133:;
		label$132:;
		ERRREPORT( ERRMSG$1, -1ll, (uint8*)0ull );
		struct $7ASTNODE* vr$30 = ASTNEWCONSTZ( DTYPE$1, SUBTYPE$1 );
		EXPR$1 = vr$30;
	}
	label$131:;
	label$130:;
	int64 vr$31 = LEXGETTOKEN( 0ll );
	if( vr$31 == 41ll ) goto label$137;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$136;
	label$137:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$136:;
	fb$result$1 = EXPR$1;
	label$102:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HPROCPTRRESOLVEOVERLOAD( struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1, boolean CHECK_EXACT$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$147:;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = OVL_HEAD_PROC$1;
	if( (*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 16ll) == 0ll ) goto label$150;
	{
		$6AST_OP OP$2;
		OP$2 = *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)OVL_HEAD_PROC$1 + 208ll) + 80ll);
		struct $8FBSYMBOL* vr$5 = SYMBFINDOPOVLPROC( OP$2, OVL_HEAD_PROC$1, PROC$1 );
		SYM$1 = vr$5;
	}
	goto label$149;
	label$150:;
	if( *(int64*)PROC$1 != 3ll ) goto label$151;
	{
		$14FB_SYMBFINDOPT FINDOPTS$2;
		FINDOPTS$2 = 0ll;
		if( (*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 32ll) == 0ll ) goto label$153;
		{
			if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll ) goto label$155;
			{
				FINDOPTS$2 = 1ll;
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
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 != 40ll ) goto label$159;
	{
		LEXSKIPTOKEN( 0ll );
		int64 vr$1 = HMATCH( 41ll, 0ll );
		if( vr$1 != 0ll ) goto label$161;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		label$161:;
		label$160:;
	}
	label$159:;
	label$158:;
	label$157:;
}

static struct $7ASTNODE* HPROCPTRBODY( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PROC$1, boolean CHECK_EXACT$1, int64 IS_VTABLE_INDEX$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$162:;
	if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) == (struct $8FBSYMBOL*)0ull ) goto label$165;
	{
		if( ((int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 1ll) != 0ll) | (int64)-CHECK_EXACT$1) == 0ll ) goto label$167;
		{
			struct $8FBSYMBOL* SYM$3;
			struct $8FBSYMBOL* vr$6 = HPROCPTRRESOLVEOVERLOAD( PROC$1, *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll), (boolean)0ll );
			SYM$3 = vr$6;
			if( SYM$3 == (struct $8FBSYMBOL*)0ull ) goto label$169;
			{
				PROC$1 = SYM$3;
			}
			goto label$168;
			label$169:;
			if( CHECK_EXACT$1 == (boolean)0ll ) goto label$170;
			{
				ERRREPORT( 99ll, -1ll, (uint8*)0ull );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
	int64 vr$8 = SYMBCHECKACCESS( PROC$1 );
	if( vr$8 != 0ll ) goto label$172;
	{
		uint8* vr$9 = SYMBGETFULLPROCNAME( PROC$1 );
		ERRREPORTEX( 202ll, (uint8*)vr$9, 0ll, 1ll, (uint8*)0ull );
	}
	label$172:;
	label$171:;
	tmp$34 CALLBACK$1;
	CALLBACK$1 = *(tmp$34*)((uint8*)PROC$1 + 184ll);
	if( CALLBACK$1 == (tmp$34)0ull ) goto label$174;
	{
		(CALLBACK$1)( PROC$1 );
	}
	label$174:;
	label$173:;
	if( IS_VTABLE_INDEX$1 == 0ll ) goto label$176;
	{
		int64 VTABLEINDEX$2;
		VTABLEINDEX$2 = -1ll;
		if( ((int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 512ll) != 0ll) | (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 256ll) != 0ll)) == 0ll ) goto label$178;
		{
			int64 vr$18 = SYMBPROCGETVTABLEINDEX( PROC$1 );
			VTABLEINDEX$2 = vr$18 + -2ll;
		}
		label$178:;
		label$177:;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( VTABLEINDEX$2, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$2 = vr$20;
		fb$result$1 = EXPR$2;
		goto label$163;
	}
	label$176:;
	label$175:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 512ll) == 0ll ) goto label$180;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$23 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$2 = vr$23;
		struct $8FBSYMBOL* vr$24 = SYMBADDPROCPTRFROMFUNCTION( PROC$1 );
		struct $7ASTNODE* vr$25 = ASTNEWCONV( 54ll, vr$24, EXPR$2, 0ll, (int64*)0ull );
		EXPR$2 = vr$25;
		fb$result$1 = EXPR$2;
		goto label$163;
	}
	label$180:;
	label$179:;
	struct $7ASTNODE* vr$26 = ASTBUILDPROCADDROF( PROC$1 );
	fb$result$1 = vr$26;
	goto label$163;
	label$163:;
	return fb$result$1;
}

static struct $7ASTNODE* HVARPTRBODY( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$203:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CHIGHESTPRECEXPR( BASE_PARENT$1, CHAIN_$1 );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$206;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$2;
		goto label$204;
	}
	label$206:;
	label$205:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$3 = ASTSKIPCONSTCASTS( EXPR$1 );
	T$1 = vr$3;
	{
		uint64 TMP$112$2;
		TMP$112$2 = *(uint64*)T$1;
		goto label$208;
		label$209:;
		{
		}
		goto label$207;
		label$210:;
		{
			if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)T$1 + 24ll) + 192ll) <= 0ll ) goto label$212;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				ASTDELTREE( EXPR$1 );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$7;
				goto label$204;
			}
			label$212:;
			label$211:;
		}
		goto label$207;
		label$213:;
		{
			ERRREPORTEX( 24ll, (uint8*)"for @ or VARPTR", 0ll, 1ll, (uint8*)0ull );
			ASTDELTREE( EXPR$1 );
			struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$8;
			goto label$204;
		}
		goto label$207;
		label$208:;
		static const void* tmp$121[27ll] = {
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
		if( (TMP$112$2 - 10ull) > 26ull ) goto label$213;
		goto *tmp$121[TMP$112$2 - 10ull];
		label$207:;
	}
	{
		struct $8FBSYMBOL* PROC$2;
		$9FB_ERRMSG ERR_NUM$2;
		struct $8FBSYMBOL* vr$10 = SYMBFINDSELFUOPOVLPROC( 22ll, EXPR$1, &ERR_NUM$2 );
		PROC$2 = vr$10;
		if( PROC$2 == (struct $8FBSYMBOL*)0ull ) goto label$215;
		{
			struct $7ASTNODE* vr$11 = ASTBUILDCALL( PROC$2, EXPR$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
			EXPR$1 = vr$11;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$217;
			{
				struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
			if( ERR_NUM$2 == 0ll ) goto label$219;
			{
				struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
