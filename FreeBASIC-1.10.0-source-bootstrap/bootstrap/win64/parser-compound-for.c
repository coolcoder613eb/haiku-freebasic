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
typedef int64 $9FOR_FLAGS;
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
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
typedef int64 $9FB_ERRMSG;
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I11FB_CALL_ARGE {
	struct $11FB_CALL_ARG* DATA;
	struct $11FB_CALL_ARG* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I11FB_CALL_ARGE ) == 72 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
static void fb_ctor__parserzcompoundzfor( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTSCOPEBEGIN( void );
void ASTSCOPEEND( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
void ASTADDUNSCOPED( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDBRANCH( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, int64 );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWSELFBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
int64 ASTCONSTGEZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONST( union $7FBVALUE*, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWBRANCH( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEu7INTEGERS3_( struct $8FBSYMBOL*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
typedef int64 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int64, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDIMPLICITVAR( int64, struct $8FBSYMBOL*, int64 );
int64 SYMBCALCDEREFLEN( int64, struct $8FBSYMBOL* );
int64 SYMBHASCTOR( struct $8FBSYMBOL* );
int64 TYPETOSIGNED( int64 );
int64 TYPETOUNSIGNED( int64 );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
typedef int64 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int64, struct $8FBSYMBOL* );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int64 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int64 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* CVARIABLE( struct $10FBSYMCHAIN*, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $8FBSYMBOL* CVARDECL( $13FB_SYMBATTRIB, int64, int64, int64 );
static struct $7ASTNODE* HUDTCALLOPOVL( struct $8FBSYMBOL*, $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static void HFLUSHBOP( int64, struct $17FB_CMPSTMT_FORELM*, struct $17FB_CMPSTMT_FORELM*, struct $8FBSYMBOL* );
static void HFLUSHSELFBOP( int64, struct $17FB_CMPSTMT_FORELM*, struct $17FB_CMPSTMT_FORELM* );
static struct $7ASTNODE* HELMTOEXPR( struct $17FB_CMPSTMT_FORELM* );
static void HUDTFOR( struct $13FB_CMPSTMTSTK* );
static void HUDTSTEP( struct $13FB_CMPSTMTSTK* );
static void HUDTNEXT( struct $13FB_CMPSTMTSTK* );
static void HSCALARSTEP( struct $13FB_CMPSTMTSTK* );
static void HSCALARNEXT( struct $13FB_CMPSTMTSTK* );
static struct $8FBSYMBOL* HADDIMPLICITVAR( int64, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HSTORETEMP( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HSTEPEXPRESSION( int64, struct $8FBSYMBOL*, struct $17FB_CMPSTMT_FORELM* );
static int64 HCALLCTOR( struct $8FBSYMBOL* );
static void HFORASSIGN( struct $13FB_CMPSTMTSTK*, int64*, int64, struct $8FBSYMBOL*, $9FOR_FLAGS, struct $7ASTNODE* );
static void HFORTO( struct $13FB_CMPSTMTSTK*, int64*, int64, struct $8FBSYMBOL*, $9FOR_FLAGS );
static void HFORSTEP( struct $13FB_CMPSTMTSTK*, int64*, int64, struct $8FBSYMBOL*, $9FOR_FLAGS );
static void HFORSTMTCLOSE( struct $13FB_CMPSTMTSTK* );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
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
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
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

void CFORSTMTBEGIN( void )
{
	label$149:;
	$9FOR_FLAGS FLAGS$1;
	FLAGS$1 = 0ll;
	struct $8FBSYMBOL* SYM$1;
	LEXSKIPTOKEN( 2048ll );
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $10FBSYMCHAIN* vr$1 = CIDENTIFIER( &BASE_PARENT$1, 38ll );
	CHAIN_$1 = vr$1;
	struct $7ASTNODE* OUTERSCOPENODE$1;
	struct $7ASTNODE* vr$2 = ASTSCOPEBEGIN(  );
	OUTERSCOPENODE$1 = vr$2;
	if( OUTERSCOPENODE$1 != (struct $7ASTNODE*)0ull ) goto label$152;
	{
		ERRREPORT( 27ll, 0ll, (uint8*)0ull );
	}
	label$152:;
	label$151:;
	struct $7ASTNODE* IDEXPR$1;
	struct $7ASTNODE* EXPR$1;
	int64 vr$3 = LEXGETLOOKAHEAD( 1ll, 0ll );
	if( vr$3 != 376ll ) goto label$154;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		struct $8FBSYMBOL* vr$5 = CVARDECL( 0ll, 0ll, vr$4, -1ll );
		SYM$1 = vr$5;
		if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$156;
		{
			struct $8FBSYMBOL* vr$6 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$7 = ASTNEWVAR( vr$6, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			IDEXPR$1 = vr$7;
		}
		goto label$155;
		label$156:;
		{
			FLAGS$1 = FLAGS$1 | 4ll;
			struct $7ASTNODE* vr$9 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			IDEXPR$1 = vr$9;
		}
		label$155:;
	}
	goto label$153;
	label$154:;
	int64 vr$10 = LEXGETLOOKAHEAD( 1ll, 0ll );
	if( vr$10 != 40ll ) goto label$157;
	{
		ERRREPORT( 52ll, -1ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$12 = ASTNEWVAR( vr$11, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		IDEXPR$1 = vr$12;
	}
	goto label$153;
	label$157:;
	{
		struct $7ASTNODE* vr$13 = CVARIABLE( CHAIN_$1, -1ll );
		IDEXPR$1 = vr$13;
		if( IDEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$159;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			struct $8FBSYMBOL* vr$14 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$15 = ASTNEWVAR( vr$14, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			IDEXPR$1 = vr$15;
		}
		label$159:;
		label$158:;
		if( *(int64*)IDEXPR$1 == 17ll ) goto label$161;
		{
			ERRREPORT( 52ll, -1ll, (uint8*)0ull );
			ASTDELTREE( IDEXPR$1 );
			struct $8FBSYMBOL* vr$17 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$18 = ASTNEWVAR( vr$17, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			IDEXPR$1 = vr$18;
		}
		label$161:;
		label$160:;
	}
	label$153:;
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)IDEXPR$1 + 8ll) & 511ll;
	struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)IDEXPR$1 + 16ll);
	if( (*(int64*)((uint8*)IDEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$163;
	{
		ERRREPORT( 119ll, 0ll, (uint8*)0ull );
	}
	label$163:;
	label$162:;
	{
		uint64 TMP$99$2;
		TMP$99$2 = (uint64)DTYPE$1;
		goto label$165;
		label$166:;
		{
			ERRREPORT( 20ll, -1ll, (uint8*)0ull );
			ASTDELTREE( IDEXPR$1 );
			struct $8FBSYMBOL* vr$24 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$25 = ASTNEWVAR( vr$24, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			IDEXPR$1 = vr$25;
			DTYPE$1 = *(int64*)((uint8*)IDEXPR$1 + 8ll) & 511ll;
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
			FLAGS$1 = FLAGS$1 | 1ll;
			int64 vr$30 = SYMBHASCTOR( *(struct $8FBSYMBOL**)((uint8*)IDEXPR$1 + 24ll) );
			if( vr$30 == 0ll ) goto label$177;
			{
				FLAGS$1 = FLAGS$1 | 2ll;
			}
			label$177:;
			label$176:;
		}
		goto label$164;
		label$178:;
		{
			if( (DTYPE$1 & 480ll) != 0ll ) goto label$180;
			{
				ERRREPORT( 52ll, -1ll, (uint8*)0ull );
				ASTDELTREE( IDEXPR$1 );
				struct $8FBSYMBOL* vr$33 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$34 = ASTNEWVAR( vr$33, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
				IDEXPR$1 = vr$34;
				DTYPE$1 = *(int64*)((uint8*)IDEXPR$1 + 8ll) & 511ll;
			}
			label$180:;
			label$179:;
		}
		goto label$164;
		label$165:;
		static const void* tmp$105[20ll] = {
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
		if( (TMP$99$2 - 1ull) > 19ull ) goto label$178;
		goto *tmp$105[TMP$99$2 - 1ull];
		label$164:;
	}
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $13FB_CMPSTMTSTK* vr$37 = CCOMPSTMTPUSH( 281ll, 1ll );
	STK$1 = vr$37;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) = *(struct $8FBSYMBOL**)((uint8*)IDEXPR$1 + 24ll);
	*(int64*)((uint8*)STK$1 + 48ll) = DTYPE$1;
	int64 ISCONST$1;
	ISCONST$1 = 0ll;
	HFORASSIGN( STK$1, &ISCONST$1, DTYPE$1, SUBTYPE$1, FLAGS$1, IDEXPR$1 );
	HFORTO( STK$1, &ISCONST$1, DTYPE$1, SUBTYPE$1, FLAGS$1 );
	HFORSTEP( STK$1, &ISCONST$1, DTYPE$1, SUBTYPE$1, FLAGS$1 );
	struct $8FBSYMBOL* IL$1;
	struct $8FBSYMBOL* TL$1;
	struct $8FBSYMBOL* EL$1;
	struct $8FBSYMBOL* CL$1;
	struct $8FBSYMBOL* vr$44 = SYMBADDLABEL( (uint8*)0ull, 0ll );
	TL$1 = vr$44;
	struct $8FBSYMBOL* vr$45 = SYMBADDLABEL( (uint8*)0ull, 0ll );
	CL$1 = vr$45;
	struct $8FBSYMBOL* vr$46 = SYMBADDLABEL( (uint8*)0ull, 0ll );
	EL$1 = vr$46;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 152ll) = EL$1;
	if( (FLAGS$1 & 1ll) == 0ll ) goto label$182;
	{
		HUDTFOR( STK$1 );
	}
	label$182:;
	label$181:;
	if( ((int64)-(*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) == (struct $8FBSYMBOL*)0ull) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)STK$1 + 104ll) == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$184;
	{
		int64 TOOBIG$2;
		TOOBIG$2 = 0ll;
		if( *(int64*)((uint8*)STK$1 + 112ll) == 0ll ) goto label$186;
		{
			{
				int64 TMP$100$4;
				uint64 TMP$101$4;
				if( (*(int64*)((uint8*)STK$1 + 48ll) & 480ll) == 0ll ) goto label$187;
				TMP$100$4 = 24ll;
				goto label$213;
				label$187:;
				TMP$100$4 = *(int64*)((uint8*)STK$1 + 48ll) & 31ll;
				label$213:;
				TMP$101$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$4 * 56ll)) + 40ll);
				goto label$189;
				label$190:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) >= 127ll);
				}
				goto label$188;
				label$191:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) >= 255ll);
				}
				goto label$188;
				label$192:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) >= 32767ll);
				}
				goto label$188;
				label$193:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) >= 65535ll);
				}
				goto label$188;
				label$194:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) >= 2147483647ll);
				}
				goto label$188;
				label$195:;
				{
					TOOBIG$2 = (int64)-(*(uint64*)((uint8*)STK$1 + 64ll) >= 4294967295ull);
				}
				goto label$188;
				label$196:;
				{
					TOOBIG$2 = (int64)-(*(uint64*)((uint8*)STK$1 + 64ll) >= 9223372036854775807ull);
				}
				goto label$188;
				label$197:;
				{
					TOOBIG$2 = (int64)-(*(uint64*)((uint8*)STK$1 + 64ll) >= 18446744073709551615ull);
				}
				goto label$188;
				label$189:;
				static const void* tmp$106[8ll] = {
					&&label$190,
					&&label$191,
					&&label$192,
					&&label$193,
					&&label$194,
					&&label$195,
					&&label$196,
					&&label$197,
				};
				if( (TMP$101$4 - 1ull) > 7ull ) goto label$188;
				goto *tmp$106[TMP$101$4 - 1ull];
				label$188:;
			}
		}
		goto label$185;
		label$186:;
		{
			{
				int64 TMP$102$4;
				uint64 TMP$103$4;
				if( (*(int64*)((uint8*)STK$1 + 48ll) & 480ll) == 0ll ) goto label$198;
				TMP$102$4 = 24ll;
				goto label$214;
				label$198:;
				TMP$102$4 = *(int64*)((uint8*)STK$1 + 48ll) & 31ll;
				label$214:;
				TMP$103$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$4 * 56ll)) + 40ll);
				goto label$200;
				label$201:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) <= 0ll);
				}
				goto label$199;
				label$202:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) <= -128ll);
				}
				goto label$199;
				label$203:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) <= -32768ll);
				}
				goto label$199;
				label$204:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) <= -2147483648ll);
				}
				goto label$199;
				label$205:;
				{
					TOOBIG$2 = (int64)-(*(int64*)((uint8*)STK$1 + 64ll) == -9223372036854775808ull);
				}
				goto label$199;
				label$200:;
				static const void* tmp$107[8ll] = {
					&&label$202,
					&&label$201,
					&&label$203,
					&&label$201,
					&&label$204,
					&&label$201,
					&&label$205,
					&&label$201,
				};
				if( (TMP$103$4 - 1ull) > 7ull ) goto label$199;
				goto *tmp$107[TMP$103$4 - 1ull];
				label$199:;
			}
		}
		label$185:;
		if( TOOBIG$2 == 0ll ) goto label$207;
		{
			ERRREPORTWARN( 45ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		}
		label$207:;
		label$206:;
	}
	label$184:;
	label$183:;
	if( ISCONST$1 != 3ll ) goto label$209;
	{
		$6AST_OP TMP$104$2;
		struct $7ASTNODE* vr$94 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)STK$1 + 64ll), *(int64*)((uint8*)STK$1 + 72ll), (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$98 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)STK$1 + 40ll), *(int64*)((uint8*)STK$1 + 48ll), (struct $8FBSYMBOL*)0ull );
		if( *(int64*)((uint8*)STK$1 + 112ll) == 0ll ) goto label$210;
		TMP$104$2 = 50ll;
		goto label$215;
		label$210:;
		TMP$104$2 = 49ll;
		label$215:;
		struct $7ASTNODE* vr$100 = ASTNEWBOP( TMP$104$2, vr$98, vr$94, (struct $8FBSYMBOL*)0ull, 1ll );
		EXPR$1 = vr$100;
		int64 vr$101 = ASTCONSTFLUSHTOINT( EXPR$1, 8ll );
		if( vr$101 != 0ll ) goto label$212;
		{
			struct $7ASTNODE* vr$102 = ASTNEWBRANCH( 98ll, EL$1, (struct $7ASTNODE*)0ull );
			ASTADD( vr$102 );
		}
		label$212:;
		label$211:;
	}
	goto label$208;
	label$209:;
	{
		struct $7ASTNODE* vr$103 = ASTNEWBRANCH( 98ll, TL$1, (struct $7ASTNODE*)0ull );
		ASTADD( vr$103 );
	}
	label$208:;
	struct $8FBSYMBOL* vr$104 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	IL$1 = vr$104;
	struct $7ASTNODE* vr$105 = ASTNEWLABEL( IL$1, -1ll );
	ASTADD( vr$105 );
	struct $7ASTNODE* vr$106 = ASTSCOPEBEGIN(  );
	*(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) = vr$106;
	*(struct $7ASTNODE**)((uint8*)STK$1 + 24ll) = OUTERSCOPENODE$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 128ll) = TL$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 136ll) = IL$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 144ll) = CL$1;
	label$150:;
}

void CFORSTMTEND( void )
{
	label$250:;
	struct $13FB_CMPSTMTSTK* STK$1;
	LEXSKIPTOKEN( 2048ll );
	label$252:;
	{
		struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 281ll, -1ll );
		STK$1 = vr$0;
		if( STK$1 != (struct $13FB_CMPSTMTSTK*)0ull ) goto label$256;
		{
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
			goto label$251;
		}
		label$256:;
		label$255:;
		HFORSTMTCLOSE( STK$1 );
		int64 vr$1 = LEXGETCLASS( 0ll );
		if( vr$1 == 0ll ) goto label$258;
		{
			CCOMPSTMTPOP( STK$1 );
			goto label$253;
		}
		label$258:;
		label$257:;
		struct $10FBSYMCHAIN* CHAIN_$2;
		struct $8FBSYMBOL* BASE_PARENT$2;
		struct $10FBSYMCHAIN* vr$3 = CIDENTIFIER( &BASE_PARENT$2, 38ll );
		CHAIN_$2 = vr$3;
		struct $7ASTNODE* IDEXPR$2;
		struct $7ASTNODE* vr$4 = CVARIABLE( CHAIN_$2, -1ll );
		IDEXPR$2 = vr$4;
		if( IDEXPR$2 != (struct $7ASTNODE*)0ull ) goto label$260;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		}
		goto label$259;
		label$260:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)IDEXPR$2 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) ) goto label$262;
			{
				ERRREPORT( 283ll, 0ll, (uint8*)0ull );
			}
			label$262:;
			label$261:;
			if( (*(int64*)((uint8*)&ENV$ + 400ll) & 8ll) == 0ll ) goto label$264;
			{
				ERRREPORTWARN( 26ll, (uint8*)*(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IDEXPR$2 + 24ll) + 32ll), 1ll, (uint8*)0ull );
			}
			label$264:;
			label$263:;
			ASTDELTREE( IDEXPR$2 );
		}
		label$259:;
		CCOMPSTMTPOP( STK$1 );
		int64 vr$10 = LEXGETTOKEN( 0ll );
		if( vr$10 == 44ll ) goto label$266;
		{
			goto label$253;
		}
		label$266:;
		label$265:;
		LEXSKIPTOKEN( 0ll );
	}
	label$254:;
	goto label$252;
	label$253:;
	label$251:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $7ASTNODE* HELMTOEXPR( struct $17FB_CMPSTMT_FORELM* V$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( *(struct $8FBSYMBOL**)V$1 == (struct $8FBSYMBOL*)0ull ) goto label$13;
	{
		struct $7ASTNODE* vr$3 = ASTNEWVAR( *(struct $8FBSYMBOL**)V$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$3;
	}
	goto label$12;
	label$13:;
	{
		struct $7ASTNODE* vr$7 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)V$1 + 8ll), *(int64*)((uint8*)V$1 + 16ll), (struct $8FBSYMBOL*)0ull );
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
	STEP_EXPR$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)STK$1 + 168ll) == 0ll ) goto label$17;
	{
		struct $7ASTNODE* vr$3 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 80ll) );
		STEP_EXPR$1 = vr$3;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$6 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll) );
	struct $7ASTNODE* vr$9 = HUDTCALLOPOVL( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) + 64ll), 24ll, vr$6, STEP_EXPR$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$9;
	if( PROC$1 == (struct $7ASTNODE*)0ull ) goto label$19;
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
	STEP_EXPR$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)STK$1 + 168ll) == 0ll ) goto label$23;
	{
		struct $7ASTNODE* vr$3 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 80ll) );
		STEP_EXPR$1 = vr$3;
	}
	label$23:;
	label$22:;
	struct $7ASTNODE* vr$6 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll) );
	struct $7ASTNODE* vr$9 = HUDTCALLOPOVL( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) + 64ll), 25ll, vr$6, STEP_EXPR$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$9;
	if( PROC$1 == (struct $7ASTNODE*)0ull ) goto label$25;
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
	STEP_EXPR$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)STK$1 + 168ll) == 0ll ) goto label$29;
	{
		struct $7ASTNODE* vr$3 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 80ll) );
		STEP_EXPR$1 = vr$3;
	}
	label$29:;
	label$28:;
	struct $7ASTNODE* vr$6 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 56ll) );
	struct $7ASTNODE* vr$9 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll) );
	struct $7ASTNODE* vr$12 = HUDTCALLOPOVL( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) + 64ll), 26ll, vr$9, vr$6, STEP_EXPR$1 );
	PROC$1 = vr$12;
	if( PROC$1 == (struct $7ASTNODE*)0ull ) goto label$31;
	{
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$15 = ASTNEWBOP( 48ll, PROC$1, vr$14, *(struct $8FBSYMBOL**)((uint8*)STK$1 + 136ll), 0ll );
		ASTADD( vr$15 );
	}
	label$31:;
	label$30:;
	label$27:;
}

static void HSCALARSTEP( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$32:;
	HFLUSHSELFBOP( 1ll, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 80ll) );
	label$33:;
}

static void HSCALARNEXT( struct $13FB_CMPSTMTSTK* STK$1 )
{
	label$34:;
	if( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 104ll) != (struct $8FBSYMBOL*)0ull ) goto label$37;
	{
		$6AST_OP TMP$93$2;
		if( *(int64*)((uint8*)STK$1 + 112ll) == 0ll ) goto label$38;
		TMP$93$2 = 50ll;
		goto label$267;
		label$38:;
		TMP$93$2 = 49ll;
		label$267:;
		HFLUSHBOP( TMP$93$2, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 136ll) );
	}
	goto label$36;
	label$37:;
	{
		struct $8FBSYMBOL* CL$2;
		struct $8FBSYMBOL* vr$7 = SYMBADDLABEL( (uint8*)0ull, 4ll );
		CL$2 = vr$7;
		struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$11 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 104ll) );
		struct $7ASTNODE* vr$12 = ASTNEWBOP( 48ll, vr$11, vr$8, CL$2, 0ll );
		ASTADD( vr$12 );
		HFLUSHBOP( 49ll, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 136ll) );
		struct $7ASTNODE* vr$19 = ASTNEWBRANCH( 98ll, *(struct $8FBSYMBOL**)((uint8*)STK$1 + 152ll), (struct $7ASTNODE*)0ull );
		ASTADD( vr$19 );
		struct $7ASTNODE* vr$20 = ASTNEWLABEL( CL$2, 0ll );
		ASTADD( vr$20 );
		HFLUSHBOP( 50ll, (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 32ll), (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)STK$1 + 136ll) );
	}
	label$36:;
	label$35:;
}

static struct $8FBSYMBOL* HADDIMPLICITVAR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$39:;
	struct $8FBSYMBOL* S$1;
	int64 OPTIONS$1;
	OPTIONS$1 = 0ll;
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 2ll) != 0ll ) goto label$42;
	{
		OPTIONS$1 = OPTIONS$1 | 2ll;
	}
	label$42:;
	label$41:;
	struct $8FBSYMBOL* vr$3 = SYMBADDIMPLICITVAR( DTYPE$1, SUBTYPE$1, OPTIONS$1 );
	S$1 = vr$3;
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$44;
	{
		struct $7ASTNODE* vr$5 = ASTNEWDECL( S$1, -1ll );
		ASTADDUNSCOPED( vr$5 );
	}
	goto label$43;
	label$44:;
	{
		struct $7ASTNODE* vr$6 = ASTNEWDECL( S$1, 0ll );
		ASTADD( vr$6 );
	}
	label$43:;
	fb$result$1 = S$1;
	label$40:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HSTORETEMP( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$45:;
	int64 OPTIONS$1;
	OPTIONS$1 = 0ll;
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 2ll) != 0ll ) goto label$48;
	{
		OPTIONS$1 = OPTIONS$1 | 2ll;
	}
	label$48:;
	label$47:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$3 = SYMBADDIMPLICITVAR( DTYPE$1, SUBTYPE$1, OPTIONS$1 );
	S$1 = vr$3;
	struct $7ASTNODE* DECLNODE$1;
	DECLNODE$1 = (struct $7ASTNODE*)0ull;
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$50;
	{
		struct $7ASTNODE* vr$5 = ASTNEWDECL( S$1, -1ll );
		ASTADDUNSCOPED( vr$5 );
	}
	goto label$49;
	label$50:;
	{
		struct $7ASTNODE* vr$6 = ASTNEWDECL( S$1, 0ll );
		DECLNODE$1 = vr$6;
	}
	label$49:;
	struct $7ASTNODE* vr$7 = ASTNEWVAR( S$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$8 = ASTNEWASSIGN( vr$7, EXPR$1, 0ll );
	EXPR$1 = vr$8;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$52;
	{
		{
			int64 TMP$94$3;
			uint64 TMP$95$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$53;
			TMP$94$3 = 24ll;
			goto label$268;
			label$53:;
			TMP$94$3 = DTYPE$1 & 31ll;
			label$268:;
			TMP$95$3 = (uint64)TMP$94$3;
			goto label$55;
			label$56:;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			}
			goto label$54;
			label$57:;
			{
				ERRREPORT( 198ll, -1ll, *(uint8**)((int64)(struct $10AST_OPINFO*)AST_OPTB$ + 16ll) );
			}
			goto label$54;
			label$55:;
			static const void* tmp$117[1ll] = {
				&&label$56,
			};
			if( (TMP$95$3 - 20ull) > 0ull ) goto label$57;
			goto *tmp$117[TMP$95$3 - 20ull];
			label$54:;
		}
	}
	label$52:;
	label$51:;
	struct $7ASTNODE* vr$11 = ASTNEWLINK( DECLNODE$1, EXPR$1, 0ll );
	ASTADD( vr$11 );
	fb$result$1 = S$1;
	label$46:;
	return fb$result$1;
}

static void HFLUSHBOP( int64 OP$1, struct $17FB_CMPSTMT_FORELM* LHS$1, struct $17FB_CMPSTMT_FORELM* RHS$1, struct $8FBSYMBOL* EX$1 )
{
	label$58:;
	struct $7ASTNODE* LHS_EXPR$1;
	struct $7ASTNODE* RHS_EXPR$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$0 = HELMTOEXPR( LHS$1 );
	LHS_EXPR$1 = vr$0;
	struct $7ASTNODE* vr$1 = HELMTOEXPR( RHS$1 );
	RHS_EXPR$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTNEWBOP( OP$1, LHS_EXPR$1, RHS_EXPR$1, EX$1, 0ll );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$61;
	{
		ERRREPORT( 198ll, -1ll, *(uint8**)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 16ll) );
		goto label$59;
	}
	label$61:;
	label$60:;
	if( *(int64*)((uint8*)LHS$1 + 16ll) != 20ll ) goto label$63;
	{
		struct $7ASTNODE* vr$5 = ASTBUILDBRANCH( EXPR$1, EX$1, -1ll, 0ll );
		EXPR$1 = vr$5;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$65;
		{
			ERRREPORT( 198ll, -1ll, *(uint8**)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 16ll) );
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

static struct $7ASTNODE* HSTEPEXPRESSION( int64 LHS_DTYPE$1, struct $8FBSYMBOL* LHS_SUBTYPE$1, struct $17FB_CMPSTMT_FORELM* RHS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	int64 LENGTH$1;
	if( (LHS_DTYPE$1 & 480ll) == 0ll ) goto label$69;
	{
		int64 vr$2 = SYMBCALCDEREFLEN( LHS_DTYPE$1, LHS_SUBTYPE$1 );
		LENGTH$1 = vr$2;
		if( LENGTH$1 > 0ll ) goto label$71;
		{
			ERRREPORT( 71ll, 0ll, (uint8*)0ull );
			LENGTH$1 = 1ll;
		}
		label$71:;
		label$70:;
		if( *(struct $8FBSYMBOL**)RHS$1 == (struct $8FBSYMBOL*)0ull ) goto label$73;
		{
			struct $7ASTNODE* vr$4 = ASTNEWCONSTI( LENGTH$1, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$6 = ASTNEWVAR( *(struct $8FBSYMBOL**)RHS$1, 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$7 = ASTNEWBOP( 30ll, vr$6, vr$4, (struct $8FBSYMBOL*)0ull, 1ll );
			fb$result$1 = vr$7;
		}
		goto label$72;
		label$73:;
		{
			struct $7ASTNODE* vr$10 = ASTNEWCONSTI( *(int64*)((uint8*)RHS$1 + 8ll) * LENGTH$1, 8ll, (struct $8FBSYMBOL*)0ull );
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

static void HFLUSHSELFBOP( int64 OP$1, struct $17FB_CMPSTMT_FORELM* LHS$1, struct $17FB_CMPSTMT_FORELM* RHS$1 )
{
	label$74:;
	struct $7ASTNODE* LHS_EXPR$1;
	struct $7ASTNODE* RHS_EXPR$1;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( *(struct $8FBSYMBOL**)LHS$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	LHS_EXPR$1 = vr$1;
	struct $7ASTNODE* vr$5 = HSTEPEXPRESSION( *(int64*)((uint8*)LHS$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)LHS$1 + 64ll), RHS$1 );
	RHS_EXPR$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWSELFBOP( OP$1, LHS_EXPR$1, RHS_EXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
	EXPR$1 = vr$6;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$77;
	{
		ERRREPORT( 198ll, -1ll, *(uint8**)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 16ll) );
		goto label$75;
	}
	label$77:;
	label$76:;
	ASTADD( EXPR$1 );
	label$75:;
}

static int64 HCALLCTOR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$78:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CINITIALIZER( SYM$1, 1ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$81;
	{
		goto label$79;
	}
	label$81:;
	label$80:;
	struct $7ASTNODE* vr$2 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEu7INTEGERS3_( SYM$1, EXPR$1, 0ll, 64ll );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$83;
	{
		goto label$79;
	}
	label$83:;
	label$82:;
	ASTADD( EXPR$1 );
	fb$result$1 = -1ll;
	label$79:;
	return fb$result$1;
}

static void HFORASSIGN( struct $13FB_CMPSTMTSTK* STK$1, int64* ISCONST$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $9FOR_FLAGS FLAGS$1, struct $7ASTNODE* IDEXPR$1 )
{
	label$84:;
	int64 vr$0 = CASSIGNTOKEN(  );
	if( vr$0 != 0ll ) goto label$87;
	{
		ERRREPORT( 10ll, 0ll, (uint8*)0ull );
	}
	label$87:;
	label$86:;
	if( ((int64)-((FLAGS$1 & 2ll) == 0ll) | (int64)-((FLAGS$1 & 4ll) == 0ll)) == 0ll ) goto label$89;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$6 = CEXPRESSION(  );
		EXPR$2 = vr$6;
		if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$91;
		{
			ERRREPORT( 9ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			EXPR$2 = vr$7;
		}
		label$91:;
		label$90:;
		if( ((int64)-(*(int64*)EXPR$2 == 16ll) & (int64)-((FLAGS$1 & 1ll) == 0ll)) == 0ll ) goto label$93;
		{
			struct $7ASTNODE* vr$13 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$2, 0ll, (int64*)0ull );
			EXPR$2 = vr$13;
			if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$95;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR$2 = vr$14;
			}
			label$95:;
			label$94:;
			__builtin_memcpy( (union $7FBVALUE*)((uint8*)STK$1 + 40ll), (union $7FBVALUE*)((uint8*)EXPR$2 + 40ll), 8 );
			*ISCONST$1 = *ISCONST$1 + 1ll;
		}
		label$93:;
		label$92:;
		struct $7ASTNODE* vr$22 = ASTNEWASSIGN( IDEXPR$1, EXPR$2, 0ll );
		EXPR$2 = vr$22;
		if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$97;
		{
			if( (FLAGS$1 & 1ll) == 0ll ) goto label$99;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			}
			goto label$98;
			label$99:;
			{
				ERRREPORT( 198ll, -1ll, (uint8*)"let" );
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
		int64 vr$25 = HCALLCTOR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) );
		if( vr$25 != 0ll ) goto label$101;
		{
			ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		}
		label$101:;
		label$100:;
	}
	label$88:;
	label$85:;
}

static void HFORTO( struct $13FB_CMPSTMTSTK* STK$1, int64* ISCONST$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $9FOR_FLAGS FLAGS$1 )
{
	label$102:;
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 == 284ll ) goto label$105;
	{
		ERRREPORT( 12ll, 0ll, (uint8*)0ull );
	}
	goto label$104;
	label$105:;
	{
		LEXSKIPTOKEN( 2048ll );
	}
	label$104:;
	if( (FLAGS$1 & 2ll) != 0ll ) goto label$107;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$2 = CEXPRESSION(  );
		EXPR$2 = vr$2;
		if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$109;
		{
			ERRREPORT( 9ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			EXPR$2 = vr$3;
		}
		label$109:;
		label$108:;
		if( ((int64)-(*(int64*)EXPR$2 == 16ll) & (int64)-((FLAGS$1 & 1ll) == 0ll)) == 0ll ) goto label$111;
		{
			struct $7ASTNODE* vr$9 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$2, 0ll, (int64*)0ull );
			EXPR$2 = vr$9;
			if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$113;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$10 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR$2 = vr$10;
			}
			label$113:;
			label$112:;
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) = (struct $8FBSYMBOL*)0ull;
			*(int64*)((uint8*)STK$1 + 72ll) = DTYPE$1;
			__builtin_memcpy( (union $7FBVALUE*)((uint8*)STK$1 + 64ll), (union $7FBVALUE*)((uint8*)EXPR$2 + 40ll), 8 );
			ASTDELNODE( EXPR$2 );
			*ISCONST$1 = *ISCONST$1 + 1ll;
		}
		goto label$110;
		label$111:;
		{
			struct $8FBSYMBOL* vr$20 = HSTORETEMP( DTYPE$1, SUBTYPE$1, EXPR$2 );
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) = vr$20;
			*(int64*)((uint8*)STK$1 + 72ll) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) + 56ll) & 511ll;
		}
		label$110:;
	}
	goto label$106;
	label$107:;
	{
		struct $8FBSYMBOL* vr$26 = HADDIMPLICITVAR( DTYPE$1, SUBTYPE$1 );
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) = vr$26;
		*(int64*)((uint8*)STK$1 + 72ll) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) + 56ll) & 511ll;
		int64 vr$33 = HCALLCTOR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 56ll) );
		if( vr$33 != 0ll ) goto label$115;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
		}
		label$115:;
		label$114:;
	}
	label$106:;
	label$103:;
}

static void HFORSTEP( struct $13FB_CMPSTMTSTK* STK$1, int64* ISCONST$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $9FOR_FLAGS FLAGS$1 )
{
	int64 TMP$98$1;
	label$116:;
	*(int64*)((uint8*)STK$1 + 168ll) = 0ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 282ll ) goto label$119;
	{
		LEXSKIPTOKEN( 2048ll );
		*(int64*)((uint8*)STK$1 + 168ll) = -1ll;
	}
	label$119:;
	label$118:;
	int64 ISCOMPLEX$1;
	ISCOMPLEX$1 = 0ll;
	if( (FLAGS$1 & 2ll) != 0ll ) goto label$121;
	{
		struct $7ASTNODE* EXPR$2;
		if( *(int64*)((uint8*)STK$1 + 168ll) == 0ll ) goto label$123;
		{
			struct $7ASTNODE* vr$5 = CEXPRESSION(  );
			EXPR$2 = vr$5;
			if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$125;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR$2 = vr$6;
			}
			label$125:;
			label$124:;
		}
		goto label$122;
		label$123:;
		{
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
			EXPR$2 = vr$7;
		}
		label$122:;
		if( (FLAGS$1 & 1ll) != 0ll ) goto label$127;
		{
			int64 TMP$97$3;
			if( (*(int64*)((uint8*)EXPR$2 + 8ll) & 480ll) == 0ll ) goto label$128;
			TMP$97$3 = 24ll;
			goto label$269;
			label$128:;
			TMP$97$3 = *(int64*)((uint8*)EXPR$2 + 8ll) & 31ll;
			label$269:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$3 * 56ll)) + 16ll) == 0ll ) goto label$130;
			{
				int64 vr$14 = TYPETOSIGNED( DTYPE$1 );
				DTYPE$1 = vr$14;
			}
			goto label$129;
			label$130:;
			{
				int64 vr$15 = TYPETOUNSIGNED( DTYPE$1 );
				DTYPE$1 = vr$15;
			}
			label$129:;
		}
		label$127:;
		label$126:;
		if( ((int64)-(*(int64*)EXPR$2 == 16ll) & (int64)-((FLAGS$1 & 1ll) == 0ll)) == 0ll ) goto label$132;
		{
			struct $7ASTNODE* vr$21 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, EXPR$2, 0ll, (int64*)0ull );
			EXPR$2 = vr$21;
			if( EXPR$2 != (struct $7ASTNODE*)0ull ) goto label$134;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR$2 = vr$22;
			}
			label$134:;
			label$133:;
			int64 vr$23 = ASTCONSTGEZERO( EXPR$2 );
			*(int64*)((uint8*)STK$1 + 112ll) = vr$23;
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) = (struct $8FBSYMBOL*)0ull;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$136;
			{
				*(int64*)((uint8*)STK$1 + 96ll) = 11ll;
			}
			goto label$135;
			label$136:;
			{
				*(int64*)((uint8*)STK$1 + 96ll) = DTYPE$1;
			}
			label$135:;
			__builtin_memcpy( (union $7FBVALUE*)((uint8*)STK$1 + 88ll), (union $7FBVALUE*)((uint8*)EXPR$2 + 40ll), 8 );
			ASTDELNODE( EXPR$2 );
			*ISCONST$1 = *ISCONST$1 + 1ll;
		}
		goto label$131;
		label$132:;
		{
			ISCOMPLEX$1 = -1ll;
			int64 TMP_DTYPE$3;
			TMP_DTYPE$3 = DTYPE$1;
			struct $8FBSYMBOL* TMP_SUBTYPE$3;
			TMP_SUBTYPE$3 = SUBTYPE$1;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$138;
			{
				TMP_DTYPE$3 = 11ll;
				TMP_SUBTYPE$3 = (struct $8FBSYMBOL*)0ull;
			}
			label$138:;
			label$137:;
			struct $8FBSYMBOL* vr$37 = HSTORETEMP( TMP_DTYPE$3, TMP_SUBTYPE$3, EXPR$2 );
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) = vr$37;
			*(int64*)((uint8*)STK$1 + 96ll) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) + 56ll) & 511ll;
		}
		label$131:;
	}
	goto label$120;
	label$121:;
	{
		ISCOMPLEX$1 = -1ll;
		if( *(int64*)((uint8*)STK$1 + 168ll) == 0ll ) goto label$140;
		{
			struct $8FBSYMBOL* vr$44 = HADDIMPLICITVAR( DTYPE$1, SUBTYPE$1 );
			*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) = vr$44;
			*(int64*)((uint8*)STK$1 + 96ll) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) + 56ll) & 511ll;
			int64 vr$51 = HCALLCTOR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 80ll) );
			if( vr$51 != 0ll ) goto label$142;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			}
			label$142:;
			label$141:;
		}
		label$140:;
		label$139:;
	}
	label$120:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$143;
	TMP$98$1 = 24ll;
	goto label$270;
	label$143:;
	TMP$98$1 = DTYPE$1 & 31ll;
	label$270:;
	if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$1 * 56ll)) + 16ll) == 0ll) & (int64)-((FLAGS$1 & 1ll) == 0ll)) == 0ll ) goto label$145;
	{
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 104ll) = (struct $8FBSYMBOL*)0ull;
		*(int64*)((uint8*)STK$1 + 120ll) = 8ll;
		*(int64*)((uint8*)STK$1 + 112ll) = -1ll;
	}
	goto label$144;
	label$145:;
	if( (ISCOMPLEX$1 & (int64)-((FLAGS$1 & 1ll) == 0ll)) == 0ll ) goto label$146;
	{
		struct $17FB_CMPSTMT_FORELM CMP$2;
		__builtin_memset( &CMP$2, 0, 24ll );
		*(int64*)((uint8*)&CMP$2 + 16ll) = *(int64*)((uint8*)STK$1 + 96ll);
		struct $8FBSYMBOL* vr$67 = HADDIMPLICITVAR( 8ll, (struct $8FBSYMBOL*)0ull );
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 104ll) = vr$67;
		*(int64*)((uint8*)STK$1 + 120ll) = 8ll;
		struct $7ASTNODE* RHS$2;
		struct $7ASTNODE* vr$71 = HELMTOEXPR( &CMP$2 );
		struct $7ASTNODE* vr$74 = HELMTOEXPR( (struct $17FB_CMPSTMT_FORELM*)((uint8*)STK$1 + 80ll) );
		struct $7ASTNODE* vr$75 = ASTNEWBOP( 49ll, vr$74, vr$71, (struct $8FBSYMBOL*)0ull, 1ll );
		RHS$2 = vr$75;
		if( RHS$2 != (struct $7ASTNODE*)0ull ) goto label$148;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$76 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			RHS$2 = vr$76;
		}
		label$148:;
		label$147:;
		struct $7ASTNODE* vr$78 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 104ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$79 = ASTNEWASSIGN( vr$78, RHS$2, 0ll );
		ASTADD( vr$79 );
	}
	goto label$144;
	label$146:;
	{
		*(struct $8FBSYMBOL**)((uint8*)STK$1 + 104ll) = (struct $8FBSYMBOL*)0ull;
	}
	label$144:;
	label$117:;
}

static struct $7ASTNODE* HUDTCALLOPOVL( struct $8FBSYMBOL* PARENT$1, $6AST_OP OP$1, struct $7ASTNODE* INST_EXPR$1, struct $7ASTNODE* SECOND_ARG$1, struct $7ASTNODE* THIRD_ARG$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$216:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* vr$1 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$1 );
	SYM$1 = vr$1;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$219;
	{
		ERRREPORT( 198ll, -1ll, *(uint8**)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 16ll) );
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$217;
	}
	label$219:;
	label$218:;
	$9FB_ERRMSG ERR_NUM$1;
	if( SECOND_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$221;
	{
		struct $8FBSYMBOL* vr$4 = SYMBFINDCLOSESTOVLPROC( SYM$1, 0ll, (struct $11FB_CALL_ARG*)0ull, &ERR_NUM$1, 0ll );
		SYM$1 = vr$4;
	}
	goto label$220;
	label$221:;
	{
		struct $11FB_CALL_ARG ARGS$2[2];
		struct $8FBARRAY1I11FB_CALL_ARGE tmp$108$2;
		*(struct $11FB_CALL_ARG**)&tmp$108$2 = (struct $11FB_CALL_ARG*)ARGS$2;
		*(struct $11FB_CALL_ARG**)((uint8*)&tmp$108$2 + 8ll) = (struct $11FB_CALL_ARG*)ARGS$2;
		*(int64*)((uint8*)&tmp$108$2 + 16ll) = 48ll;
		*(int64*)((uint8*)&tmp$108$2 + 24ll) = 24ll;
		*(int64*)((uint8*)&tmp$108$2 + 32ll) = 1ll;
		*(int64*)((uint8*)&tmp$108$2 + 40ll) = 49ll;
		*(int64*)((uint8*)&tmp$108$2 + 48ll) = 2ll;
		*(int64*)((uint8*)&tmp$108$2 + 56ll) = 0ll;
		*(int64*)((uint8*)&tmp$108$2 + 64ll) = 1ll;
		int64 PARAMS$2;
		PARAMS$2 = 1ll;
		{
			struct $11FB_CALL_ARG* TMP$109$3;
			TMP$109$3 = (struct $11FB_CALL_ARG*)ARGS$2;
			*(struct $7ASTNODE**)TMP$109$3 = SECOND_ARG$1;
			*($12FB_PARAMMODE*)((uint8*)TMP$109$3 + 8ll) = -1ll;
			*(struct $11FB_CALL_ARG**)((uint8*)TMP$109$3 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
		}
		if( OP$1 != 26ll ) goto label$223;
		{
			if( THIRD_ARG$1 == (struct $7ASTNODE*)0ull ) goto label$225;
			{
				*(struct $11FB_CALL_ARG**)((int64)(struct $11FB_CALL_ARG*)ARGS$2 + 16ll) = (struct $11FB_CALL_ARG*)((int64)(struct $11FB_CALL_ARG*)ARGS$2 + 24ll);
				PARAMS$2 = PARAMS$2 + 1ll;
				{
					struct $11FB_CALL_ARG* TMP$110$5;
					TMP$110$5 = (struct $11FB_CALL_ARG*)((int64)(struct $11FB_CALL_ARG*)ARGS$2 + 24ll);
					*(struct $7ASTNODE**)TMP$110$5 = THIRD_ARG$1;
					*($12FB_PARAMMODE*)((uint8*)TMP$110$5 + 8ll) = -1ll;
					*(struct $11FB_CALL_ARG**)((uint8*)TMP$110$5 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
				}
			}
			label$225:;
			label$224:;
		}
		label$223:;
		label$222:;
		struct $8FBSYMBOL* vr$19 = SYMBFINDCLOSESTOVLPROC( SYM$1, PARAMS$2, (struct $11FB_CALL_ARG*)ARGS$2, &ERR_NUM$1, 0ll );
		SYM$1 = vr$19;
	}
	label$220:;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$227;
	{
		if( ERR_NUM$1 == 0ll ) goto label$229;
		{
			ERRREPORT( ERR_NUM$1, -1ll, (uint8*)0ull );
		}
		goto label$228;
		label$229:;
		{
			FBSTRING TMP$112$3;
			FBSTRING OP_VERSION$3;
			__builtin_memset( &TMP$112$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$112$3, *(void**)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 16ll), 0ll, (void*)" (with", 7ll );
			fb_StrInit( (void*)&OP_VERSION$3, -1ll, (void*)vr$23, -1ll, 0 );
			{
				uint64 TMP$113$4;
				TMP$113$4 = (uint64)OP$1;
				goto label$231;
				label$232:;
				{
					if( SECOND_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$234;
					{
						fb_StrConcatAssign( (void*)&OP_VERSION$3, -1ll, (void*)"out", 4ll, 0 );
					}
					label$234:;
					label$233:;
				}
				goto label$230;
				label$235:;
				{
					if( THIRD_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$237;
					{
						fb_StrConcatAssign( (void*)&OP_VERSION$3, -1ll, (void*)"out", 4ll, 0 );
					}
					label$237:;
					label$236:;
				}
				goto label$230;
				label$231:;
				static const void* tmp$118[3ll] = {
					&&label$232,
					&&label$232,
					&&label$235,
				};
				if( (TMP$113$4 - 24ull) > 2ull ) goto label$230;
				goto *tmp$118[TMP$113$4 - 24ull];
				label$230:;
			}
			fb_StrConcatAssign( (void*)&OP_VERSION$3, -1ll, (void*)" step)", 7ll, 0 );
			ERRREPORT( 198ll, -1ll, (uint8*)*(uint8**)&OP_VERSION$3 );
			fb_StrDelete( (FBSTRING*)&OP_VERSION$3 );
		}
		label$228:;
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$217;
	}
	goto label$226;
	label$227:;
	{
		int64 vr$29 = SYMBCHECKACCESS( SYM$1 );
		if( vr$29 != 0ll ) goto label$239;
		{
			uint8* vr$30 = SYMBGETFULLPROCNAME( SYM$1 );
			ERRREPORTEX( 202ll, (uint8*)vr$30, 0ll, 1ll, (uint8*)0ull );
			fb$result$1 = (struct $7ASTNODE*)0ull;
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
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) == (struct $7ASTNODE*)0ull ) goto label$243;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 16ll) );
	}
	label$243:;
	label$242:;
	struct $7ASTNODE* vr$3 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 144ll), -1ll );
	ASTADD( vr$3 );
	{
		int64 TMP$116$2;
		TMP$116$2 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)STK$1 + 32ll) + 56ll) & 511ll;
		if( TMP$116$2 != 20ll ) goto label$245;
		label$246:;
		{
			HUDTSTEP( STK$1 );
			struct $7ASTNODE* vr$8 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 128ll), -1ll );
			ASTADD( vr$8 );
			HUDTNEXT( STK$1 );
		}
		goto label$244;
		label$245:;
		{
			HSCALARSTEP( STK$1 );
			struct $7ASTNODE* vr$10 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 128ll), -1ll );
			ASTADD( vr$10 );
			HSCALARNEXT( STK$1 );
		}
		label$247:;
		label$244:;
	}
	struct $7ASTNODE* vr$12 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)STK$1 + 152ll), -1ll );
	ASTADD( vr$12 );
	if( *(struct $7ASTNODE**)((uint8*)STK$1 + 24ll) == (struct $7ASTNODE*)0ull ) goto label$249;
	{
		ASTSCOPEEND( *(struct $7ASTNODE**)((uint8*)STK$1 + 24ll) );
	}
	label$249:;
	label$248:;
	label$241:;
}
