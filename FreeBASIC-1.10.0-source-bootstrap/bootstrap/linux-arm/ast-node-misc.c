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
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 12 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 36 );
struct $5IRTAC {
	int32 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int32 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 128 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 REG;
	$12IR_REGFAMILY REGFAMILY;
	int32 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int32 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 72 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$59)( int32, struct $8FBSYMBOL*, int32, uint8* );
typedef int32 $15AST_LINK_RETURN;
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
struct $8NAMEINFO {
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $8NAMEINFO ) == 4 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
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
void free( void* );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_DoubleToStr( double );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_SPACE( int32 );
static void fb_ctor__astznodezmisc( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBIS64BIT( void );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWUOP( int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
void ASTFORGETBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDATEBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
FBSTRING* ASTDUMPOPTOSTR( $6AST_OP );
void ASTDUMPTREE( struct $7ASTNODE*, int32 );
FBSTRING* SYMBTYPETOSTR( int32, struct $8FBSYMBOL*, int64, int32 );
static struct $9ASTASMTOK* ASTASMAPPEND( struct $9ASTASMTOK*, int32 );
static struct $7ASTNODE* _Z13HMAKEUINTMASKm( uint32 );
static struct $7ASTNODE* _Z13HMAKEUINTMASKmm( uint32, uint32 );
static struct $7ASTNODE* ASTSETBITFIELD( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* ASTACCESSBITFIELD( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void DBG_ASTOUTPUT( FBSTRING*, int32, int32, int32 );
static FBSTRING* HASTNODECLASSTOSTR( $13AST_NODECLASS );
static FBSTRING* HSYMBTOSTR( struct $8FBSYMBOL* );
static FBSTRING* HASTNODETYPETOSTR( struct $7ASTNODE* );
static FBSTRING* HASTNODETOSTR( struct $7ASTNODE* );
static void ASTDUMPTREEEX( struct $7ASTNODE*, int32, int32, int32 );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$55)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int32 );
typedef void (*tmp$67)( uint8* );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
typedef uint32 (*tmp$75)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$37 INIT;
	tmp$37 END;
	tmp$38 EMITBEGIN;
	tmp$37 EMITEND;
	tmp$39 GETOPTIONVALUE;
	tmp$40 SUPPORTSOP;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$44 EMITCONVERT;
	tmp$41 EMITLABEL;
	tmp$41 EMITLABELNF;
	tmp$45 EMITRETURN;
	tmp$42 EMITPROCBEGIN;
	tmp$46 EMITPROCEND;
	tmp$47 EMITPUSHARG;
	tmp$48 EMITASMLINE;
	tmp$49 EMITCOMMENT;
	tmp$50 EMITBOP;
	tmp$51 EMITUOP;
	tmp$44 EMITSTORE;
	tmp$37 EMITSPILLREGS;
	tmp$52 EMITLOAD;
	tmp$44 EMITLOADRES;
	tmp$51 EMITSTACK;
	tmp$51 EMITADDR;
	tmp$53 EMITCALL;
	tmp$54 EMITCALLPTR;
	tmp$45 EMITSTACKALIGN;
	tmp$52 EMITJUMPPTR;
	tmp$55 EMITBRANCH;
	tmp$56 EMITJMPTB;
	tmp$57 EMITMEM;
	tmp$58 EMITMACRO;
	tmp$41 EMITSCOPEBEGIN;
	tmp$41 EMITSCOPEEND;
	tmp$41 EMITDECL;
	tmp$59 EMITDBG;
	tmp$41 EMITVARINIBEGIN;
	tmp$41 EMITVARINIEND;
	tmp$60 EMITVARINII;
	tmp$61 EMITVARINIF;
	tmp$62 EMITVARINIOFS;
	tmp$63 EMITVARINISTR;
	tmp$64 EMITVARINIWSTR;
	tmp$65 EMITVARINIPAD;
	tmp$66 EMITVARINISCOPEBEGIN;
	tmp$37 EMITVARINISCOPEEND;
	tmp$37 EMITFBCTINFBEGIN;
	tmp$67 EMITFBCTINFSTRING;
	tmp$37 EMITFBCTINFEND;
	tmp$68 ALLOCVREG;
	tmp$69 ALLOCVRIMM;
	tmp$70 ALLOCVRIMMF;
	tmp$71 ALLOCVRVAR;
	tmp$72 ALLOCVRIDX;
	tmp$73 ALLOCVRPTR;
	tmp$71 ALLOCVROFS;
	tmp$74 SETVREGDATATYPE;
	tmp$75 GETDISTANCE;
	tmp$51 LOADVR;
	tmp$44 STOREVR;
	tmp$45 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 272 );
typedef int32 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 276 );
extern struct $5IRCTX IR$;
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 12 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 32 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int32 CTORCNT;
	int32 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 40 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 16 );
struct $23AST_DTORLIST_SCOPESTACK {
	int32* COOKIES;
	int32 COUNT;
	int32 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 12 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int32 DOEMIT;
	int32 TYPEINICOUNT;
	int32 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int32 DTORLISTCOOKIES;
	int32 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int32 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 236 );
extern struct $6ASTCTX AST$;
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
typedef int32 $8FB_TOKEN;
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
static struct $8NAMEINFO DBG_ASTNODECLASSNAMES$[45] = { { (uint8*)"NOP" }, { (uint8*)"LOAD" }, { (uint8*)"ASSIGN" }, { (uint8*)"BOP" }, { (uint8*)"UOP" }, { (uint8*)"CONV" }, { (uint8*)"ADDROF" }, { (uint8*)"BRANCH" }, { (uint8*)"JMPTB" }, { (uint8*)"CALL" }, { (uint8*)"CALLCTOR" }, { (uint8*)"STACK" }, { (uint8*)"MEM" }, { (uint8*)"LOOP" }, { (uint8*)"COMP" }, { (uint8*)"LINK" }, { (uint8*)"CONST" }, { (uint8*)"VAR" }, { (uint8*)"IDX" }, { (uint8*)"FIELD" }, { (uint8*)"DEREF" }, { (uint8*)"LABEL" }, { (uint8*)"ARG" }, { (uint8*)"OFFSET" }, { (uint8*)"DECL" }, { (uint8*)"NIDXARRAY" }, { (uint8*)"IIF" }, { (uint8*)"LIT" }, { (uint8*)"ASM" }, { (uint8*)"DATASTMT" }, { (uint8*)"DBG" }, { (uint8*)"BOUNDCHK" }, { (uint8*)"PTRCHK" }, { (uint8*)"SCOPEBEGIN" }, { (uint8*)"SCOPEEND" }, { (uint8*)"SCOPE_BREAK" }, { (uint8*)"TYPEINI" }, { (uint8*)"TYPEINI_PAD" }, { (uint8*)"TYPEINI_ASSIGN" }, { (uint8*)"TYPEINI_CTORCALL" }, { (uint8*)"TYPEINI_CTORLIST" }, { (uint8*)"TYPEINI_SCOPEINI" }, { (uint8*)"TYPEINI_SCOPEEND" }, { (uint8*)"PROC" }, { (uint8*)"MACRO" } };
static struct $8NAMEINFO DBG_ASTNODEOPNAMES$[121] = { { (uint8*)"=" }, { (uint8*)"+=" }, { (uint8*)"-=" }, { (uint8*)"*=" }, { (uint8*)"/=" }, { (uint8*)"\x5C=" }, { (uint8*)"MOD=" }, { (uint8*)"AND=" }, { (uint8*)"OR=" }, { (uint8*)"ANDALSO=" }, { (uint8*)"ORELSE=" }, { (uint8*)"XOR=" }, { (uint8*)"EQV=" }, { (uint8*)"IMP=" }, { (uint8*)"SHL=" }, { (uint8*)"SHR=" }, { (uint8*)"^=" }, { (uint8*)"&=" }, { (uint8*)"new=" }, { (uint8*)"new[]=" }, { (uint8*)"del=" }, { (uint8*)"del[]=" }, { (uint8*)"ADDROF" }, { (uint8*)"PTRINDEX" }, { (uint8*)"FOR" }, { (uint8*)"STEP" }, { (uint8*)"NEXT" }, { (uint8*)"CAST" }, { (uint8*)"+" }, { (uint8*)"-" }, { (uint8*)"*" }, { (uint8*)"/" }, { (uint8*)"\x5C" }, { (uint8*)"MOD" }, { (uint8*)"AND" }, { (uint8*)"OR" }, { (uint8*)"ANDALSO" }, { (uint8*)"ORELSE" }, { (uint8*)"XOR" }, { (uint8*)"EQV" }, { (uint8*)"IMP" }, { (uint8*)"SHL" }, { (uint8*)"SHR" }, { (uint8*)"^" }, { (uint8*)"&" }, { (uint8*)"==" }, { (uint8*)">" }, { (uint8*)"<" }, { (uint8*)"<>" }, { (uint8*)">=" }, { (uint8*)"<=" }, { (uint8*)"IS" }, { (uint8*)"NOT" }, { (uint8*)"+" }, { (uint8*)"NEG" }, { (uint8*)"HADD" }, { (uint8*)"ABS" }, { (uint8*)"SGN" }, { (uint8*)"SIN" }, { (uint8*)"ASIN" }, { (uint8*)"COS" }, { (uint8*)"ACOS" }, { (uint8*)"TAN" }, { (uint8*)"ATAN" }, { (uint8*)"ATAN2" }, { (uint8*)"SQRT" }, { (uint8*)"RSQRT" }, { (uint8*)"RCP" }, { (uint8*)"LOG" }, { (uint8*)"EXP" }, { (uint8*)"FLOOR" }, { (uint8*)"FIX" }, { (uint8*)"FRAC" }, { (uint8*)"LEN" }, { (uint8*)"CONVFD2FS" }, { (uint8*)"SWZREP" }, { (uint8*)"DEREF" }, { (uint8*)"FLDDEREF" }, { (uint8*)"NEW" }, { (uint8*)"NEW_VEC" }, { (uint8*)"DEL" }, { (uint8*)"DEL_VEC" }, { (uint8*)"TOINT" }, { (uint8*)"TOFLT" }, { (uint8*)"TOBOOL" }, { (uint8*)"LOAD" }, { (uint8*)"LOADRES" }, { (uint8*)"SPILLREGS" }, { (uint8*)"PUSH" }, { (uint8*)"POP" }, { (uint8*)"PUSHUDT" }, { (uint8*)"STACKALIGN" }, { (uint8*)"JEQ" }, { (uint8*)"JGT" }, { (uint8*)"JLT" }, { (uint8*)"JNE" }, { (uint8*)"JGE" }, { (uint8*)"JLE" }, { (uint8*)"JMP" }, { (uint8*)"CALL" }, { (uint8*)"LABEL" }, { (uint8*)"RET" }, { (uint8*)"CALLFUNCT" }, { (uint8*)"CALLPTR" }, { (uint8*)"JUMPPTR" }, { (uint8*)"MEMMOVE" }, { (uint8*)"MEMSWAP" }, { (uint8*)"MEMCLEAR" }, { (uint8*)"STKCLEAR" }, { (uint8*)"VA_START" }, { (uint8*)"VA_END" }, { (uint8*)"VA_COPY" }, { (uint8*)"VA_ARG" }, { (uint8*)"DBG_LINEINI" }, { (uint8*)"DBG_LINEEND" }, { (uint8*)"DBG_SCOPEINI" }, { (uint8*)"BDG_SCOPEEND" }, { (uint8*)"LIT_COMMENT" }, { (uint8*)"LIT_ASM" }, { (uint8*)"TOSIGNED" }, { (uint8*)"TOUNSIGNED" } };

struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL* SYM$1, int32 DOFLUSH$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 21, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int32*)((uint8*)N$1 + 24) = DOFLUSH$1;
	if( *(int32*)SYM$1 != 7 ) goto label$13;
	{
		if( *(int32*)((uint8*)SYM$1 + 60) != 0 ) goto label$15;
		{
			*(int32*)((uint8*)SYM$1 + 60) = -1;
			*(int32*)((uint8*)SYM$1 + 64) = *(int32*)((uint8*)&PARSER$ + 28);
			*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 56) = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112);
		}
		label$15:;
		label$14:;
	}
	label$13:;
	label$12:;
	fb$result$1 = N$1;
	label$11:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLABEL( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$19;
	{
		if( *(int32*)((uint8*)N$1 + 24) == 0 ) goto label$21;
		{
			(*(tmp$41*)((uint8*)&IR$ + 60))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
		}
		goto label$20;
		label$21:;
		{
			(*(tmp$41*)((uint8*)&IR$ + 64))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
		}
		label$20:;
	}
	label$19:;
	label$18:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWLIT( uint8* TEXT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 27, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	int32 vr$2 = fb_StrLen( (void*)TEXT$1, 0 );
	void* vr$4 = XALLOCATE( vr$2 + 1 );
	*(uint8**)((uint8*)N$1 + 24) = (uint8*)vr$4;
	fb_StrAssign( *(void**)((uint8*)N$1 + 24), 0, (void*)TEXT$1, 0, 0 );
	fb$result$1 = N$1;
	label$23:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLIT( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$27;
	{
		(*(tmp$49*)((uint8*)&IR$ + 88))( *(uint8**)((uint8*)N$1 + 24) );
	}
	label$27:;
	label$26:;
	if( *(uint8**)((uint8*)N$1 + 24) == (uint8*)0u ) goto label$29;
	{
		free( *(void**)((uint8*)N$1 + 24) );
	}
	label$29:;
	label$28:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$25:;
	return fb$result$1;
}

struct $9ASTASMTOK* ASTASMAPPENDTEXT( struct $9ASTASMTOK* TAIL$1, uint8* TEXT$1 )
{
	struct $9ASTASMTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$34:;
	struct $9ASTASMTOK* vr$1 = ASTASMAPPEND( TAIL$1, 0 );
	TAIL$1 = vr$1;
	int32 vr$2 = fb_StrLen( (void*)TEXT$1, 0 );
	void* vr$4 = XALLOCATE( vr$2 + 1 );
	*(uint8**)((uint8*)TAIL$1 + 4) = (uint8*)vr$4;
	fb_StrAssign( *(void**)((uint8*)TAIL$1 + 4), 0, (void*)TEXT$1, 0, 0 );
	fb$result$1 = TAIL$1;
	label$35:;
	return fb$result$1;
}

struct $9ASTASMTOK* ASTASMAPPENDSYMB( struct $9ASTASMTOK* TAIL$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $9ASTASMTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$36:;
	struct $9ASTASMTOK* vr$1 = ASTASMAPPEND( TAIL$1, 1 );
	TAIL$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)TAIL$1 + 4) = SYM$1;
	fb$result$1 = TAIL$1;
	label$37:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWASM( struct $9ASTASMTOK* ASMTOKHEAD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$38:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 28, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $9ASTASMTOK**)((uint8*)N$1 + 24) = ASMTOKHEAD$1;
	fb$result$1 = N$1;
	label$39:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADASM( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$40:;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$43;
	{
		(*(tmp$48*)((uint8*)&IR$ + 84))( *(struct $9ASTASMTOK**)((uint8*)N$1 + 24) );
	}
	label$43:;
	label$42:;
	struct $9ASTASMTOK* NODE$1;
	NODE$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 24);
	label$44:;
	if( NODE$1 == (struct $9ASTASMTOK*)0u ) goto label$45;
	{
		struct $9ASTASMTOK* NXT$2;
		NXT$2 = *(struct $9ASTASMTOK**)((uint8*)NODE$1 + 8);
		{
			$14AST_ASMTOKTYPE TMP$92$3;
			TMP$92$3 = *($14AST_ASMTOKTYPE*)NODE$1;
			if( TMP$92$3 != 0 ) goto label$47;
			label$48:;
			{
				if( *(uint8**)((uint8*)NODE$1 + 4) == (uint8*)0u ) goto label$50;
				{
					free( *(void**)((uint8*)NODE$1 + 4) );
				}
				label$50:;
				label$49:;
			}
			label$47:;
			label$46:;
		}
		LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 200), (void*)NODE$1 );
		NODE$1 = NXT$2;
	}
	goto label$44;
	label$45:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$41:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWDBG( int32 OP$1, int32 EX$1, uint8* FILENAME$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$51:;
	struct $7ASTNODE* N$1;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$54;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$52;
	}
	label$54:;
	label$53:;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 30, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 32) = OP$1;
	*(int32*)((uint8*)N$1 + 24) = EX$1;
	*(uint8**)((uint8*)N$1 + 28) = FILENAME$1;
	fb$result$1 = N$1;
	label$52:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADDBG( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$55:;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$58;
	{
		(*(tmp$59*)((uint8*)&IR$ + 168))( *(int32*)((uint8*)N$1 + 32), *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 40) + 12), *(int32*)((uint8*)N$1 + 24), *(uint8**)((uint8*)N$1 + 28) );
	}
	label$58:;
	label$57:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$56:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWNOP( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$59:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 0, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	fb$result$1 = N$1;
	label$60:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADNOP( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$61:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$62:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWNIDXARRAY( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$63:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 25, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = EXPR$1;
	fb$result$1 = N$1;
	label$64:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADNIDXARRAY( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$65:;
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	fb$result$1 = (struct $6IRVREG*)0u;
	label$66:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVENIDXARRAY( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$67:;
	fb$result$1 = N$1;
	if( *(int32*)N$1 != 25 ) goto label$70;
	{
		fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
		*(struct $7ASTNODE**)((uint8*)N$1 + 64) = (struct $7ASTNODE*)0u;
		ASTDELTREE( N$1 );
	}
	label$70:;
	label$69:;
	label$68:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $15AST_LINK_RETURN RET$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$71:;
	struct $7ASTNODE* N$1;
	if( RET$1 == 1 ) goto label$74;
	{
		if( L$1 == (struct $7ASTNODE*)0u ) goto label$76;
		{
			if( *(int32*)L$1 != 9 ) goto label$78;
			{
				ASTSETTYPE( L$1, 0, (struct $8FBSYMBOL*)0u );
			}
			label$78:;
			label$77:;
		}
		label$76:;
		label$75:;
	}
	label$74:;
	label$73:;
	if( RET$1 == 2 ) goto label$80;
	{
		if( R$1 == (struct $7ASTNODE*)0u ) goto label$82;
		{
			if( *(int32*)R$1 != 9 ) goto label$84;
			{
				ASTSETTYPE( R$1, 0, (struct $8FBSYMBOL*)0u );
			}
			label$84:;
			label$83:;
		}
		label$82:;
		label$81:;
	}
	label$80:;
	label$79:;
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$86;
	{
		fb$result$1 = R$1;
		goto label$72;
	}
	label$86:;
	label$85:;
	if( R$1 != (struct $7ASTNODE*)0u ) goto label$88;
	{
		fb$result$1 = L$1;
		goto label$72;
	}
	label$88:;
	label$87:;
	{
		if( RET$1 != 0 ) goto label$90;
		label$91:;
		{
			struct $7ASTNODE* vr$3 = ASTNEWNODE( 15, 0, (struct $8FBSYMBOL*)0u );
			N$1 = vr$3;
		}
		goto label$89;
		label$90:;
		if( RET$1 != 1 ) goto label$92;
		label$93:;
		{
			struct $7ASTNODE* vr$6 = ASTNEWNODE( 15, *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
			N$1 = vr$6;
		}
		goto label$89;
		label$92:;
		if( RET$1 != 2 ) goto label$94;
		label$95:;
		{
			struct $7ASTNODE* vr$9 = ASTNEWNODE( 15, *(int32*)((uint8*)R$1 + 4), *(struct $8FBSYMBOL**)((uint8*)R$1 + 8) );
			N$1 = vr$9;
		}
		label$94:;
		label$89:;
	}
	*(int32*)((uint8*)N$1 + 24) = RET$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = R$1;
	fb$result$1 = N$1;
	label$72:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLINK( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$96:;
	struct $6IRVREG* VRL$1;
	struct $6IRVREG* VRR$1;
	struct $6IRVREG* vr$2 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	VRL$1 = vr$2;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	struct $6IRVREG* vr$5 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	VRR$1 = vr$5;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	{
		int32 TMP$93$2;
		TMP$93$2 = *(int32*)((uint8*)N$1 + 24);
		if( TMP$93$2 != 1 ) goto label$99;
		label$100:;
		{
			fb$result$1 = VRL$1;
		}
		goto label$98;
		label$99:;
		if( TMP$93$2 != 2 ) goto label$101;
		label$102:;
		{
			fb$result$1 = VRR$1;
		}
		goto label$98;
		label$101:;
		{
			fb$result$1 = (struct $6IRVREG*)0u;
		}
		label$103:;
		label$98:;
	}
	label$97:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWLOAD( struct $7ASTNODE* L$1, int32 DTYPE$1, int32 ISRESULT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$104:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 1, DTYPE$1, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	*(int32*)((uint8*)N$1 + 24) = ISRESULT$1;
	fb$result$1 = N$1;
	label$105:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLOAD( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$106:;
	struct $7ASTNODE* L$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$109;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$107;
	}
	label$109:;
	label$108:;
	struct $6IRVREG* vr$2 = ASTLOAD( L$1 );
	V1$1 = vr$2;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$111;
	{
		if( *(int32*)((uint8*)N$1 + 24) == 0 ) goto label$113;
		{
			struct $6IRVREG* vr$6 = (*(tmp$68*)((uint8*)&IR$ + 224))( *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
			VR$1 = vr$6;
			(*(tmp$44*)((uint8*)&IR$ + 112))( V1$1, VR$1 );
		}
		goto label$112;
		label$113:;
		{
			(*(tmp$52*)((uint8*)&IR$ + 108))( V1$1 );
		}
		label$112:;
	}
	label$111:;
	label$110:;
	ASTDELNODE( L$1 );
	fb$result$1 = V1$1;
	label$107:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE* L$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$114:;
	struct $7ASTNODE* N$1;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)L$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
	if( *(int32*)((uint8*)SYM$1 + 116) <= 0 ) goto label$117;
	{
		if( (DTYPE$1 & 511) != 1 ) goto label$119;
		{
			DTYPE$1 = (DTYPE$1 & -512) | 8;
		}
		goto label$118;
		label$119:;
		{
			DTYPE$1 = (DTYPE$1 & -512) | 9;
		}
		label$118:;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		*(int32*)((uint8*)&AST$ + 144) = *(int32*)((uint8*)&AST$ + 144) + 1;
	}
	label$117:;
	label$116:;
	if( *(int32*)L$1 != 19 ) goto label$121;
	{
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 12) = SYM$1;
		*(int32*)((uint8*)L$1 + 4) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = SUBTYPE$1;
		fb$result$1 = L$1;
		goto label$115;
	}
	label$121:;
	label$120:;
	struct $7ASTNODE* vr$14 = ASTNEWNODE( 19, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$14;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	fb$result$1 = N$1;
	label$115:;
	return fb$result$1;
}

void ASTFORGETBITFIELDS( struct $7ASTNODE* N$1 )
{
	int32 TMP$94$1;
	label$122:;
	if( (-(N$1 == (struct $7ASTNODE*)0u) | -(*(int32*)((uint8*)&AST$ + 144) <= 0)) == 0 ) goto label$125;
	{
		goto label$123;
	}
	label$125:;
	label$124:;
	if( *(int32*)N$1 != 19 ) goto label$126;
	TMP$94$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 116) > 0);
	goto label$129;
	label$126:;
	TMP$94$1 = 0;
	label$129:;
	if( TMP$94$1 == 0 ) goto label$128;
	{
		*(int32*)((uint8*)&AST$ + 144) = *(int32*)((uint8*)&AST$ + 144) + -1;
	}
	label$128:;
	label$127:;
	ASTFORGETBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	ASTFORGETBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	label$123:;
}

struct $7ASTNODE* ASTUPDATEBITFIELDS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	if( *(int32*)((uint8*)&AST$ + 144) > 0 ) goto label$160;
	{
		fb$result$1 = N$1;
		goto label$158;
	}
	label$160:;
	label$159:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$162;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$158;
	}
	label$162:;
	label$161:;
	{
		$13AST_NODECLASS TMP$96$2;
		TMP$96$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$96$2 != 2 ) goto label$164;
		label$165:;
		{
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 19 ) goto label$167;
			{
				struct $8FBSYMBOL* BITFIELD$4;
				BITFIELD$4 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12);
				if( *(int32*)((uint8*)BITFIELD$4 + 116) <= 0 ) goto label$169;
				{
					*(int32*)((uint8*)&AST$ + 144) = *(int32*)((uint8*)&AST$ + 144) + -1;
					ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
					*(struct $7ASTNODE**)((uint8*)N$1 + 64) = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 64);
					struct $7ASTNODE* vr$14 = ASTSETBITFIELD( BITFIELD$4, *(struct $7ASTNODE**)((uint8*)N$1 + 64), *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
					*(struct $7ASTNODE**)((uint8*)N$1 + 68) = vr$14;
				}
				label$169:;
				label$168:;
			}
			label$167:;
			label$166:;
		}
		goto label$163;
		label$164:;
		if( TMP$96$2 != 19 ) goto label$170;
		label$171:;
		{
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 116) <= 0 ) goto label$173;
			{
				struct $7ASTNODE* L$4;
				L$4 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
				struct $7ASTNODE* vr$20 = ASTACCESSBITFIELD( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12), L$4 );
				L$4 = vr$20;
				*(int32*)((uint8*)&AST$ + 144) = *(int32*)((uint8*)&AST$ + 144) + -1;
				ASTDELNODE( N$1 );
				N$1 = L$4;
				struct $7ASTNODE* vr$22 = ASTUPDATEBITFIELDS( N$1 );
				fb$result$1 = vr$22;
				goto label$158;
			}
			label$173:;
			label$172:;
		}
		label$170:;
		label$163:;
	}
	struct $7ASTNODE* vr$24 = ASTUPDATEBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$24;
	struct $7ASTNODE* vr$27 = ASTUPDATEBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = vr$27;
	fb$result$1 = N$1;
	label$158:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADFIELD( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$174:;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* vr$2 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	VR$1 = vr$2;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$177;
	{
		*(int32*)((uint8*)VR$1 + 20) = *(int32*)((uint8*)N$1 + 16);
	}
	label$177:;
	label$176:;
	fb$result$1 = VR$1;
	label$175:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWSTACK( int32 OP$1, struct $7ASTNODE* L$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$178:;
	struct $7ASTNODE* N$1;
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$181;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$179;
	}
	label$181:;
	label$180:;
	struct $7ASTNODE* vr$2 = ASTNEWNODE( 11, *(int32*)((uint8*)L$1 + 4), (struct $8FBSYMBOL*)0u );
	N$1 = vr$2;
	*(int32*)((uint8*)N$1 + 24) = OP$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	fb$result$1 = N$1;
	label$179:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADSTACK( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$182:;
	struct $7ASTNODE* L$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$185;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$183;
	}
	label$185:;
	label$184:;
	struct $6IRVREG* vr$2 = ASTLOAD( L$1 );
	VR$1 = vr$2;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$187;
	{
		(*(tmp$51*)((uint8*)&IR$ + 116))( *(int32*)((uint8*)N$1 + 24), VR$1, (struct $6IRVREG*)0u );
	}
	label$187:;
	label$186:;
	ASTDELNODE( L$1 );
	fb$result$1 = VR$1;
	label$183:;
	return fb$result$1;
}

FBSTRING* ASTDUMPOPTOSTR( $6AST_OP OP$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$198:;
	if( (-(OP$1 > 120) | -(OP$1 < 0)) == 0 ) goto label$201;
	{
		FBSTRING TMP$259$2;
		FBSTRING* vr$4 = fb_IntToStr( OP$1 );
		__builtin_memset( &TMP$259$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$259$2, (void*)"OP:", 4, (void*)vr$4, -1 );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$7, -1, 0 );
		goto label$199;
	}
	label$201:;
	label$200:;
	fb_StrInit( (void*)&fb$result$1, -1, *(void**)((int32)(struct $8NAMEINFO*)DBG_ASTNODEOPNAMES$ + (OP$1 << (2 & 31))), 0, 0 );
	goto label$199;
	label$199:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

void ASTDUMPTREE( struct $7ASTNODE* N$1, int32 COL$1 )
{
	label$261:;
	ASTDUMPTREEEX( N$1, COL$1, -1, 0 );
	label$262:;
}

void ASTDUMPLIST( struct $7ASTNODE* N$1, int32 COL$1 )
{
	label$263:;
	label$265:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$266;
	{
		ASTDUMPTREE( N$1, COL$1 );
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 76);
	}
	goto label$265;
	label$266:;
	label$264:;
}

__attribute__(( constructor )) static void fb_ctor__astznodezmisc( void )
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

static struct $9ASTASMTOK* ASTASMAPPEND( struct $9ASTASMTOK* TAIL$1, int32 TYP$1 )
{
	struct $9ASTASMTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	struct $9ASTASMTOK* ASMTOK$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 200) );
	ASMTOK$1 = (struct $9ASTASMTOK*)vr$2;
	if( TAIL$1 == (struct $9ASTASMTOK*)0u ) goto label$33;
	{
		*(struct $9ASTASMTOK**)((uint8*)TAIL$1 + 8) = ASMTOK$1;
	}
	label$33:;
	label$32:;
	*($14AST_ASMTOKTYPE*)ASMTOK$1 = TYP$1;
	*(struct $9ASTASMTOK**)((uint8*)ASMTOK$1 + 8) = (struct $9ASTASMTOK*)0u;
	fb$result$1 = ASMTOK$1;
	label$31:;
	return fb$result$1;
}

static struct $7ASTNODE* _Z13HMAKEUINTMASKm( uint32 BITS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$130:;
	uint64 MASK$1;
	__builtin_memset( &MASK$1, 0, 8 );
	if( BITS$1 < 64u ) goto label$133;
	{
		MASK$1 = 18446744073709551615ull;
	}
	goto label$132;
	label$133:;
	{
		MASK$1 = (1ull << (BITS$1 & 63)) + 18446744073709551615ull;
	}
	label$132:;
	int32 vr$4 = FBIS64BIT(  );
	if( ~vr$4 == 0 ) goto label$135;
	{
		MASK$1 = (uint64)(uint32)MASK$1;
	}
	label$135:;
	label$134:;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( (int64)MASK$1, 9, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$8;
	goto label$131;
	label$131:;
	return fb$result$1;
}

static struct $7ASTNODE* _Z13HMAKEUINTMASKmm( uint32 BITS$1, uint32 BITPOS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$136:;
	struct $7ASTNODE* vr$2 = ASTNEWCONSTI( (int64)BITPOS$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$3 = _Z13HMAKEUINTMASKm( BITS$1 );
	struct $7ASTNODE* vr$4 = ASTNEWBOP( 41, vr$3, vr$2, (struct $8FBSYMBOL*)0u, 1 );
	fb$result$1 = vr$4;
	goto label$137;
	label$137:;
	return fb$result$1;
}

static struct $7ASTNODE* ASTSETBITFIELD( struct $8FBSYMBOL* BITFIELD$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$138:;
	if( (*(int32*)((uint8*)BITFIELD$1 + 28) & 511) != 1 ) goto label$141;
	{
		*(int32*)((uint8*)L$1 + 4) = (*(int32*)((uint8*)BITFIELD$1 + 28) & -512) | 9;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = (struct $8FBSYMBOL*)0u;
	}
	goto label$140;
	label$141:;
	{
		*(int32*)((uint8*)L$1 + 4) = *(int32*)((uint8*)BITFIELD$1 + 28);
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = *(struct $8FBSYMBOL**)((uint8*)BITFIELD$1 + 32);
	}
	label$140:;
	struct $7ASTNODE* vr$12 = ASTCLONETREE( L$1 );
	L$1 = vr$12;
	struct $7ASTNODE* vr$15 = _Z13HMAKEUINTMASKmm( *(uint32*)((uint8*)BITFIELD$1 + 116), *(uint32*)((uint8*)BITFIELD$1 + 112) );
	struct $7ASTNODE* vr$16 = ASTNEWUOP( 52, vr$15 );
	struct $7ASTNODE* vr$17 = ASTNEWBOP( 34, L$1, vr$16, (struct $8FBSYMBOL*)0u, 1 );
	L$1 = vr$17;
	if( (*(int32*)((uint8*)BITFIELD$1 + 28) & 511) != 1 ) goto label$143;
	{
		int32 TMP$95$2;
		if( *(int32*)R$1 != 5 ) goto label$144;
		TMP$95$2 = -(*(int32*)((uint8*)R$1 + 4) != 1);
		goto label$267;
		label$144:;
		TMP$95$2 = -1;
		label$267:;
		if( TMP$95$2 == 0 ) goto label$146;
		{
			struct $7ASTNODE* vr$23 = ASTNEWCONV( 1, (struct $8FBSYMBOL*)0u, R$1, 0, (int32*)0u );
			R$1 = vr$23;
		}
		label$146:;
		label$145:;
		struct $7ASTNODE* vr$24 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, R$1, 0, (int32*)0u );
		R$1 = vr$24;
		struct $7ASTNODE* vr$27 = _Z13HMAKEUINTMASKmm( *(uint32*)((uint8*)BITFIELD$1 + 116), *(uint32*)((uint8*)BITFIELD$1 + 112) );
		struct $7ASTNODE* vr$28 = ASTNEWBOP( 34, R$1, vr$27, (struct $8FBSYMBOL*)0u, 1 );
		R$1 = vr$28;
	}
	goto label$142;
	label$143:;
	{
		struct $7ASTNODE* vr$30 = _Z13HMAKEUINTMASKm( *(uint32*)((uint8*)BITFIELD$1 + 116) );
		struct $7ASTNODE* vr$31 = ASTNEWBOP( 34, R$1, vr$30, (struct $8FBSYMBOL*)0u, 1 );
		R$1 = vr$31;
		if( *(int32*)((uint8*)BITFIELD$1 + 112) <= 0 ) goto label$148;
		{
			struct $7ASTNODE* vr$35 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)BITFIELD$1 + 112), 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$36 = ASTNEWBOP( 41, R$1, vr$35, (struct $8FBSYMBOL*)0u, 1 );
			R$1 = vr$36;
		}
		label$148:;
		label$147:;
	}
	label$142:;
	struct $7ASTNODE* vr$37 = ASTNEWBOP( 35, L$1, R$1, (struct $8FBSYMBOL*)0u, 1 );
	fb$result$1 = vr$37;
	label$139:;
	return fb$result$1;
}

static struct $7ASTNODE* ASTACCESSBITFIELD( struct $8FBSYMBOL* BITFIELD$1, struct $7ASTNODE* L$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$149:;
	int32 BOOLCONV$1;
	__builtin_memset( &BOOLCONV$1, 0, 4 );
	if( (*(int32*)((uint8*)BITFIELD$1 + 28) & 511) != 1 ) goto label$152;
	{
		*(int32*)((uint8*)L$1 + 4) = (*(int32*)((uint8*)L$1 + 4) & -512) | 2;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = (struct $8FBSYMBOL*)0u;
		BOOLCONV$1 = -1;
	}
	goto label$151;
	label$152:;
	{
		*(int32*)((uint8*)L$1 + 4) = (*(int32*)((uint8*)L$1 + 4) & -512) | (*(int32*)((uint8*)BITFIELD$1 + 28) & 511);
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = *(struct $8FBSYMBOL**)((uint8*)BITFIELD$1 + 32);
		BOOLCONV$1 = 0;
	}
	label$151:;
	if( *(int32*)((uint8*)BITFIELD$1 + 112) <= 0 ) goto label$154;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)BITFIELD$1 + 112), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$21 = ASTNEWBOP( 42, L$1, vr$20, (struct $8FBSYMBOL*)0u, 1 );
		L$1 = vr$21;
	}
	label$154:;
	label$153:;
	struct $7ASTNODE* vr$23 = _Z13HMAKEUINTMASKm( *(uint32*)((uint8*)BITFIELD$1 + 116) );
	struct $7ASTNODE* vr$24 = ASTNEWBOP( 34, L$1, vr$23, (struct $8FBSYMBOL*)0u, 1 );
	L$1 = vr$24;
	if( BOOLCONV$1 == 0 ) goto label$156;
	{
		*(int32*)((uint8*)L$1 + 4) = (*(int32*)((uint8*)L$1 + 4) & -512) | (*(int32*)((uint8*)BITFIELD$1 + 28) & 511);
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = *(struct $8FBSYMBOL**)((uint8*)BITFIELD$1 + 32);
		struct $7ASTNODE* vr$33 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, L$1, 0, (int32*)0u );
		L$1 = vr$33;
	}
	label$156:;
	label$155:;
	fb$result$1 = L$1;
	label$150:;
	return fb$result$1;
}

static void DBG_ASTOUTPUT( FBSTRING* S$1, int32 COL$1, int32 JUST$1, int32 DEPTH$1 )
{
	label$188:;
	int32 PAD$1;
	{
		if( JUST$1 != -1 ) goto label$191;
		label$192:;
		{
			int32 vr$0 = fb_StrLen( (void*)S$1, -1 );
			PAD$1 = COL$1 - vr$0;
		}
		goto label$190;
		label$191:;
		if( JUST$1 != 1 ) goto label$193;
		label$194:;
		{
			PAD$1 = COL$1 + -1;
		}
		goto label$190;
		label$193:;
		{
			PAD$1 = COL$1;
		}
		label$195:;
		label$190:;
	}
	if( DEPTH$1 >= 0 ) goto label$197;
	{
		FBSTRING* vr$4 = fb_SPACE( PAD$1 + -1 );
		fb_PrintString( 0, (FBSTRING*)vr$4, 0 );
		fb_PrintString( 0, (FBSTRING*)S$1, 1 );
	}
	goto label$196;
	label$197:;
	{
		FBSTRING* vr$5 = fb_IntToStr( DEPTH$1 );
		fb_PrintString( 0, (FBSTRING*)vr$5, 0 );
		FBSTRING* vr$7 = fb_IntToStr( DEPTH$1 );
		int32 vr$8 = fb_StrLen( (void*)vr$7, -1 );
		FBSTRING* vr$10 = fb_SPACE( (PAD$1 + -1) - vr$8 );
		fb_PrintString( 0, (FBSTRING*)vr$10, 0 );
		fb_PrintString( 0, (FBSTRING*)S$1, 1 );
	}
	label$196:;
	label$189:;
}

static FBSTRING* HASTNODECLASSTOSTR( $13AST_NODECLASS C$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$202:;
	if( (-(C$1 > 44) | -(C$1 < 0)) == 0 ) goto label$205;
	{
		FBSTRING TMP$261$2;
		FBSTRING* vr$4 = fb_IntToStr( C$1 );
		__builtin_memset( &TMP$261$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$261$2, (void*)"CLASS:", 7, (void*)vr$4, -1 );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$7, -1, 0 );
		goto label$203;
	}
	label$205:;
	label$204:;
	fb_StrInit( (void*)&fb$result$1, -1, *(void**)((int32)(struct $8NAMEINFO*)DBG_ASTNODECLASSNAMES$ + (C$1 << (2 & 31))), 0, 0 );
	goto label$203;
	label$203:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* HSYMBTOSTR( struct $8FBSYMBOL* S$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$206:;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$209;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$207;
		label$209:;
	}
	if( *(uint8**)((uint8*)S$1 + 16) == (uint8*)0u ) goto label$211;
	{
		fb_StrInit( (void*)&fb$result$1, -1, *(void**)((uint8*)S$1 + 16), 0, 0 );
		goto label$207;
	}
	goto label$210;
	label$211:;
	if( *(uint8**)((uint8*)S$1 + 20) == (uint8*)0u ) goto label$212;
	{
		fb_StrInit( (void*)&fb$result$1, -1, *(void**)((uint8*)S$1 + 20), 0, 0 );
		goto label$207;
	}
	label$212:;
	label$210:;
	label$207:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HASTNODETYPETOSTR( struct $7ASTNODE* N$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$213:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$216;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$214;
		label$216:;
	}
	FBSTRING* vr$4 = SYMBTYPETOSTR( *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), 0ll, 0 );
	fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$4, -1, 0 );
	goto label$214;
	label$214:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* HASTNODETOSTR( struct $7ASTNODE* N$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$217:;
	{
		uint32 TMP$262$2;
		TMP$262$2 = *(uint32*)N$1;
		goto label$220;
		label$221:;
		{
			FBSTRING TMP$264$3;
			FBSTRING TMP$265$3;
			FBSTRING* vr$3 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 32) );
			FBSTRING* vr$5 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 24) );
			__builtin_memset( &TMP$264$3, 0, 12 );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$264$3, (void*)vr$5, -1, (void*)" =-= ", 6 );
			__builtin_memset( &TMP$265$3, 0, 12 );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$265$3, (void*)vr$8, -1, (void*)vr$3, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$11, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$222:;
		{
			FBSTRING* vr$14 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 24) );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$14, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$223:;
		{
			int32 TMP$266$3;
			FBSTRING TMP$272$3;
			FBSTRING TMP$273$3;
			FBSTRING TMP$274$3;
			if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$224;
			TMP$266$3 = 24;
			goto label$268;
			label$224:;
			TMP$266$3 = *(int32*)((uint8*)N$1 + 4) & 31;
			label$268:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$266$3 * 28)) != 1 ) goto label$226;
			{
				FBSTRING TMP$269$4;
				FBSTRING TMP$270$4;
				FBSTRING TMP$271$4;
				FBSTRING* vr$21 = HASTNODETYPETOSTR( N$1 );
				__builtin_memset( &TMP$269$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$269$4, (void*)" (", 3, (void*)vr$21, -1 );
				__builtin_memset( &TMP$270$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$270$4, (void*)vr$24, -1, (void*)")", 2 );
				FBSTRING* vr$29 = fb_DoubleToStr( *(double*)((uint8*)N$1 + 24) );
				__builtin_memset( &TMP$271$4, 0, 12 );
				FBSTRING* vr$32 = fb_StrConcat( &TMP$271$4, (void*)vr$29, -1, (void*)vr$27, -1 );
				fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$32, -1, 0 );
				goto label$218;
			}
			label$226:;
			label$225:;
			FBSTRING* vr$34 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$272$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$272$3, (void*)" (", 3, (void*)vr$34, -1 );
			__builtin_memset( &TMP$273$3, 0, 12 );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$273$3, (void*)vr$37, -1, (void*)")", 2 );
			FBSTRING* vr$42 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 24) );
			__builtin_memset( &TMP$274$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$274$3, (void*)vr$42, -1, (void*)vr$40, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$45, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$227:;
		{
			uint8* TMP$277$3;
			FBSTRING TMP$279$3;
			FBSTRING TMP$280$3;
			FBSTRING TMP$281$3;
			FBSTRING TMP$282$3;
			FBSTRING TMP$283$3;
			FBSTRING* vr$47 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$281$3, 0, 12 );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$281$3, (void*)" (", 3, (void*)vr$47, -1 );
			__builtin_memset( &TMP$282$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$282$3, (void*)vr$50, -1, (void*)")", 2 );
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$228;
			TMP$277$3 = *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16);
			goto label$269;
			label$228:;
			TMP$277$3 = (uint8*)"<NULL>";
			label$269:;
			__builtin_memset( &TMP$279$3, 0, 12 );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$279$3, (void*)"VAR( ", 6, (void*)TMP$277$3, 0 );
			__builtin_memset( &TMP$280$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$280$3, (void*)vr$59, -1, (void*)" )", 3 );
			__builtin_memset( &TMP$283$3, 0, 12 );
			FBSTRING* vr$65 = fb_StrConcat( &TMP$283$3, (void*)vr$62, -1, (void*)vr$53, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$65, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$229:;
		{
			FBSTRING TMP$285$3;
			FBSTRING TMP$286$3;
			FBSTRING TMP$287$3;
			FBSTRING TMP$288$3;
			FBSTRING TMP$289$3;
			FBSTRING* vr$67 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$287$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$287$3, (void*)" (", 3, (void*)vr$67, -1 );
			__builtin_memset( &TMP$288$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$288$3, (void*)vr$70, -1, (void*)")", 2 );
			__builtin_memset( &TMP$285$3, 0, 12 );
			FBSTRING* vr$78 = fb_StrConcat( &TMP$285$3, (void*)"FIELD( ", 8, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16), 0 );
			__builtin_memset( &TMP$286$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$286$3, (void*)vr$78, -1, (void*)" )", 3 );
			__builtin_memset( &TMP$289$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$289$3, (void*)vr$81, -1, (void*)vr$73, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$84, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$230:;
		{
			FBSTRING TMP$293$3;
			FBSTRING TMP$294$3;
			FBSTRING TMP$295$3;
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$232;
			{
				FBSTRING TMP$291$4;
				FBSTRING TMP$292$4;
				__builtin_memset( &TMP$291$4, 0, 12 );
				FBSTRING* vr$91 = fb_StrConcat( &TMP$291$4, (void*)"DECL( ", 7, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16), 0 );
				__builtin_memset( &TMP$292$4, 0, 12 );
				FBSTRING* vr$94 = fb_StrConcat( &TMP$292$4, (void*)vr$91, -1, (void*)" )", 3 );
				fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$94, -1, 0 );
				goto label$218;
			}
			label$232:;
			label$231:;
			FBSTRING* vr$96 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$293$3, 0, 12 );
			FBSTRING* vr$99 = fb_StrConcat( &TMP$293$3, (void*)" (", 3, (void*)vr$96, -1 );
			__builtin_memset( &TMP$294$3, 0, 12 );
			FBSTRING* vr$102 = fb_StrConcat( &TMP$294$3, (void*)vr$99, -1, (void*)")", 2 );
			__builtin_memset( &TMP$295$3, 0, 12 );
			FBSTRING* vr$105 = fb_StrConcat( &TMP$295$3, (void*)"DECL", 5, (void*)vr$102, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$105, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$233:;
		{
			FBSTRING TMP$297$3;
			FBSTRING TMP$298$3;
			__builtin_memset( &TMP$297$3, 0, 12 );
			FBSTRING* vr$111 = fb_StrConcat( &TMP$297$3, (void*)"CALL( ", 7, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16), 0 );
			__builtin_memset( &TMP$298$3, 0, 12 );
			FBSTRING* vr$114 = fb_StrConcat( &TMP$298$3, (void*)vr$111, -1, (void*)" )", 3 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$114, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$234:;
		{
			FBSTRING TMP$300$3;
			FBSTRING* vr$117 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
			__builtin_memset( &TMP$300$3, 0, 12 );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$300$3, (void*)"LABEL: ", 8, (void*)vr$117, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$120, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$235:;
		{
			FBSTRING TMP$303$3;
			FBSTRING TMP$304$3;
			FBSTRING TMP$305$3;
			FBSTRING* vr$123 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 32) );
			FBSTRING* vr$125 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 24) );
			__builtin_memset( &TMP$303$3, 0, 12 );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$303$3, (void*)"BRANCH: ", 9, (void*)vr$125, -1 );
			__builtin_memset( &TMP$304$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$304$3, (void*)vr$128, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$305$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$305$3, (void*)vr$131, -1, (void*)vr$123, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$134, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$236:;
		{
			FBSTRING TMP$307$3;
			FBSTRING* vr$137 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
			__builtin_memset( &TMP$307$3, 0, 12 );
			FBSTRING* vr$140 = fb_StrConcat( &TMP$307$3, (void*)"SCOPEBEGIN: ", 13, (void*)vr$137, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$140, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$237:;
		{
			FBSTRING TMP$311$3;
			FBSTRING TMP$312$3;
			FBSTRING TMP$313$3;
			FBSTRING TMP$314$3;
			FBSTRING TMP$315$3;
			FBSTRING TMP$316$3;
			FBSTRING TMP$317$3;
			FBSTRING TMP$318$3;
			FBSTRING* vr$142 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$316$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$316$3, (void*)" (", 3, (void*)vr$142, -1 );
			__builtin_memset( &TMP$317$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$317$3, (void*)vr$145, -1, (void*)")", 2 );
			FBSTRING* vr$150 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 32) );
			FBSTRING* vr$152 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 24) );
			FBSTRING* vr$154 = HASTNODECLASSTOSTR( *($13AST_NODECLASS*)N$1 );
			__builtin_memset( &TMP$311$3, 0, 12 );
			FBSTRING* vr$157 = fb_StrConcat( &TMP$311$3, (void*)vr$154, -1, (void*)"( offset=", 10 );
			__builtin_memset( &TMP$312$3, 0, 12 );
			FBSTRING* vr$160 = fb_StrConcat( &TMP$312$3, (void*)vr$157, -1, (void*)vr$152, -1 );
			__builtin_memset( &TMP$313$3, 0, 12 );
			FBSTRING* vr$163 = fb_StrConcat( &TMP$313$3, (void*)vr$160, -1, (void*)", bytes=", 9 );
			__builtin_memset( &TMP$314$3, 0, 12 );
			FBSTRING* vr$166 = fb_StrConcat( &TMP$314$3, (void*)vr$163, -1, (void*)vr$150, -1 );
			__builtin_memset( &TMP$315$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$315$3, (void*)vr$166, -1, (void*)" ) ", 4 );
			__builtin_memset( &TMP$318$3, 0, 12 );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$318$3, (void*)vr$169, -1, (void*)vr$148, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$172, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$238:;
		{
			FBSTRING TMP$320$3;
			FBSTRING TMP$321$3;
			FBSTRING TMP$322$3;
			FBSTRING TMP$323$3;
			FBSTRING TMP$324$3;
			FBSTRING* vr$174 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$322$3, 0, 12 );
			FBSTRING* vr$177 = fb_StrConcat( &TMP$322$3, (void*)" (", 3, (void*)vr$174, -1 );
			__builtin_memset( &TMP$323$3, 0, 12 );
			FBSTRING* vr$180 = fb_StrConcat( &TMP$323$3, (void*)vr$177, -1, (void*)")", 2 );
			FBSTRING* vr$182 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 24) );
			__builtin_memset( &TMP$320$3, 0, 12 );
			FBSTRING* vr$185 = fb_StrConcat( &TMP$320$3, (void*)"MACRO: ", 8, (void*)vr$182, -1 );
			__builtin_memset( &TMP$321$3, 0, 12 );
			FBSTRING* vr$188 = fb_StrConcat( &TMP$321$3, (void*)vr$185, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$324$3, 0, 12 );
			FBSTRING* vr$191 = fb_StrConcat( &TMP$324$3, (void*)vr$188, -1, (void*)vr$180, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$191, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$239:;
		{
			FBSTRING TMP$328$3;
			FBSTRING TMP$329$3;
			FBSTRING TMP$330$3;
			FBSTRING TMP$331$3;
			FBSTRING TMP$332$3;
			FBSTRING TMP$333$3;
			FBSTRING S$3;
			fb_StrInit( (void*)&S$3, -1, (void*)"", 1, 0 );
			{
				int32 TMP$325$4;
				TMP$325$4 = *(int32*)((uint8*)N$1 + 24);
				if( TMP$325$4 != 1 ) goto label$241;
				label$242:;
				{
					fb_StrAssign( (void*)&S$3, -1, (void*)"L", 2, 0 );
				}
				goto label$240;
				label$241:;
				if( TMP$325$4 != 2 ) goto label$243;
				label$244:;
				{
					fb_StrAssign( (void*)&S$3, -1, (void*)"R", 2, 0 );
				}
				label$243:;
				label$240:;
			}
			FBSTRING* vr$198 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$329$3, 0, 12 );
			FBSTRING* vr$201 = fb_StrConcat( &TMP$329$3, (void*)" (", 3, (void*)vr$198, -1 );
			__builtin_memset( &TMP$330$3, 0, 12 );
			FBSTRING* vr$204 = fb_StrConcat( &TMP$330$3, (void*)vr$201, -1, (void*)")", 2 );
			FBSTRING* vr$206 = HASTNODECLASSTOSTR( *($13AST_NODECLASS*)N$1 );
			__builtin_memset( &TMP$328$3, 0, 12 );
			FBSTRING* vr$209 = fb_StrConcat( &TMP$328$3, (void*)"*", 2, (void*)vr$206, -1 );
			__builtin_memset( &TMP$331$3, 0, 12 );
			FBSTRING* vr$212 = fb_StrConcat( &TMP$331$3, (void*)vr$209, -1, (void*)vr$204, -1 );
			__builtin_memset( &TMP$332$3, 0, 12 );
			FBSTRING* vr$215 = fb_StrConcat( &TMP$332$3, (void*)vr$212, -1, (void*)"-", 2 );
			__builtin_memset( &TMP$333$3, 0, 12 );
			FBSTRING* vr$218 = fb_StrConcat( &TMP$333$3, (void*)vr$215, -1, (void*)&S$3, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$218, -1, 0 );
			fb_StrDelete( (FBSTRING*)&S$3 );
			goto label$218;
			fb_StrDelete( (FBSTRING*)&S$3 );
		}
		goto label$219;
		label$245:;
		{
			FBSTRING TMP$334$3;
			FBSTRING TMP$335$3;
			FBSTRING TMP$336$3;
			FBSTRING* vr$222 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$334$3, 0, 12 );
			FBSTRING* vr$225 = fb_StrConcat( &TMP$334$3, (void*)" (", 3, (void*)vr$222, -1 );
			__builtin_memset( &TMP$335$3, 0, 12 );
			FBSTRING* vr$228 = fb_StrConcat( &TMP$335$3, (void*)vr$225, -1, (void*)")", 2 );
			FBSTRING* vr$230 = HASTNODECLASSTOSTR( *($13AST_NODECLASS*)N$1 );
			__builtin_memset( &TMP$336$3, 0, 12 );
			FBSTRING* vr$233 = fb_StrConcat( &TMP$336$3, (void*)vr$230, -1, (void*)vr$228, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$233, -1, 0 );
			goto label$218;
		}
		goto label$219;
		label$220:;
		static const void* tmp$343[42] = {
			&&label$221,
			&&label$222,
			&&label$245,
			&&label$245,
			&&label$235,
			&&label$245,
			&&label$233,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$239,
			&&label$223,
			&&label$227,
			&&label$245,
			&&label$229,
			&&label$245,
			&&label$234,
			&&label$245,
			&&label$245,
			&&label$230,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$245,
			&&label$236,
			&&label$245,
			&&label$245,
			&&label$237,
			&&label$237,
			&&label$237,
			&&label$237,
			&&label$237,
			&&label$237,
			&&label$237,
			&&label$245,
			&&label$238,
		};
		if( (TMP$262$2 - 3u) > 41u ) goto label$245;
		goto *tmp$343[TMP$262$2 - 3u];
		label$219:;
	}
	label$218:;
	FBSTRING* vr$236 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$236;
}

static void ASTDUMPTREEEX( struct $7ASTNODE* N$1, int32 COL$1, int32 JUST$1, int32 DEPTH$1 )
{
	label$246:;
	if( (-(COL$1 <= 4) | -(COL$1 >= 76)) == 0 ) goto label$249;
	{
		COL$1 = 40;
	}
	label$249:;
	label$248:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$251;
	{
		FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"<NULL>", 6 );
		fb_PrintString( 0, (FBSTRING*)vr$3, 1 );
		goto label$247;
	}
	label$251:;
	label$250:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	FBSTRING* vr$5 = HASTNODETOSTR( N$1 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$5, -1, 0 );
	DBG_ASTOUTPUT( &S$1, COL$1, JUST$1, DEPTH$1 );
	DEPTH$1 = DEPTH$1 + 1;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 64) == (struct $7ASTNODE*)0u ) goto label$253;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) == (struct $7ASTNODE*)0u ) goto label$255;
		{
			FBSTRING TMP$338$3;
			__builtin_memset( &TMP$338$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$338$3, -1, (void*)"/ \x5C", 4, 0 );
			DBG_ASTOUTPUT( &TMP$338$3, COL$1 + -2, 0, -1 );
			fb_StrDelete( (FBSTRING*)&TMP$338$3 );
		}
		goto label$254;
		label$255:;
		{
			FBSTRING TMP$339$3;
			__builtin_memset( &TMP$339$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$339$3, -1, (void*)"/", 2, 0 );
			DBG_ASTOUTPUT( &TMP$339$3, COL$1 + -2, 0, -1 );
			fb_StrDelete( (FBSTRING*)&TMP$339$3 );
		}
		label$254:;
	}
	goto label$252;
	label$253:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) == (struct $7ASTNODE*)0u ) goto label$256;
	{
		FBSTRING TMP$341$2;
		__builtin_memset( &TMP$341$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$341$2, -1, (void*)"  \x5C", 4, 0 );
		DBG_ASTOUTPUT( &TMP$341$2, COL$1 + -2, 0, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$341$2 );
	}
	goto label$252;
	label$256:;
	{
		FBSTRING TMP$342$2;
		__builtin_memset( &TMP$342$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$342$2, -1, (void*)"", 1, 0 );
		DBG_ASTOUTPUT( &TMP$342$2, 0, 0, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$342$2 );
	}
	label$252:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 64) == (struct $7ASTNODE*)0u ) goto label$258;
	{
		ASTDUMPTREEEX( *(struct $7ASTNODE**)((uint8*)N$1 + 64), COL$1 + -2, -1, DEPTH$1 );
	}
	label$258:;
	label$257:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) == (struct $7ASTNODE*)0u ) goto label$260;
	{
		ASTDUMPTREEEX( *(struct $7ASTNODE**)((uint8*)N$1 + 68), COL$1 + 2, 1, DEPTH$1 );
	}
	label$260:;
	label$259:;
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$247:;
}
