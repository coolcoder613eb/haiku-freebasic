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
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 24 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 72 );
struct $5IRTAC {
	int64 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int64 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 256 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int64 REG;
	$12IR_REGFAMILY REGFAMILY;
	int64 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int64 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 120 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$60)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef int64 $15AST_LINK_RETURN;
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$53)( struct $6IRVREG* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
struct $8NAMEINFO {
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $8NAMEINFO ) == 8 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
void free( void* );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_DoubleToStr( double );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_SPACE( int64 );
static void fb_ctor__astznodezmisc( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int64 FBIS64BIT( void );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWUOP( int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
void ASTFORGETBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDATEBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
FBSTRING* ASTDUMPOPTOSTR( $6AST_OP );
void ASTDUMPTREE( struct $7ASTNODE*, int64 );
FBSTRING* SYMBTYPETOSTR( int64, struct $8FBSYMBOL*, int64, int64 );
static struct $9ASTASMTOK* ASTASMAPPEND( struct $9ASTASMTOK*, int64 );
static struct $7ASTNODE* _Z13HMAKEUINTMASKm( uint64 );
static struct $7ASTNODE* _Z13HMAKEUINTMASKmm( uint64, uint64 );
static struct $7ASTNODE* ASTSETBITFIELD( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* ASTACCESSBITFIELD( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void DBG_ASTOUTPUT( FBSTRING*, int64, int64, int64 );
static FBSTRING* HASTNODECLASSTOSTR( $13AST_NODECLASS );
static FBSTRING* HSYMBTOSTR( struct $8FBSYMBOL* );
static FBSTRING* HASTNODETYPETOSTR( struct $7ASTNODE* );
static FBSTRING* HASTNODETOSTR( struct $7ASTNODE* );
static void ASTDUMPTREEEX( struct $7ASTNODE*, int64, int64, int64 );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$46)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$56)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$61)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, double );
typedef void (*tmp$63)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$64)( int64, uint8*, int64 );
typedef void (*tmp$65)( int64, uint16*, int64 );
typedef void (*tmp$66)( int64 );
typedef void (*tmp$67)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$68)( uint8* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$76)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$38 INIT;
	tmp$38 END;
	tmp$39 EMITBEGIN;
	tmp$38 EMITEND;
	tmp$40 GETOPTIONVALUE;
	tmp$41 SUPPORTSOP;
	tmp$42 PROCBEGIN;
	tmp$42 PROCEND;
	tmp$43 PROCALLOCARG;
	tmp$43 PROCALLOCLOCAL;
	tmp$44 PROCGETFRAMEREGNAME;
	tmp$42 SCOPEBEGIN;
	tmp$42 SCOPEEND;
	tmp$42 PROCALLOCSTATICVARS;
	tmp$45 EMITCONVERT;
	tmp$42 EMITLABEL;
	tmp$42 EMITLABELNF;
	tmp$46 EMITRETURN;
	tmp$43 EMITPROCBEGIN;
	tmp$47 EMITPROCEND;
	tmp$48 EMITPUSHARG;
	tmp$49 EMITASMLINE;
	tmp$50 EMITCOMMENT;
	tmp$51 EMITBOP;
	tmp$52 EMITUOP;
	tmp$45 EMITSTORE;
	tmp$38 EMITSPILLREGS;
	tmp$53 EMITLOAD;
	tmp$45 EMITLOADRES;
	tmp$52 EMITSTACK;
	tmp$52 EMITADDR;
	tmp$54 EMITCALL;
	tmp$55 EMITCALLPTR;
	tmp$46 EMITSTACKALIGN;
	tmp$53 EMITJUMPPTR;
	tmp$56 EMITBRANCH;
	tmp$57 EMITJMPTB;
	tmp$58 EMITMEM;
	tmp$59 EMITMACRO;
	tmp$42 EMITSCOPEBEGIN;
	tmp$42 EMITSCOPEEND;
	tmp$42 EMITDECL;
	tmp$60 EMITDBG;
	tmp$42 EMITVARINIBEGIN;
	tmp$42 EMITVARINIEND;
	tmp$61 EMITVARINII;
	tmp$62 EMITVARINIF;
	tmp$63 EMITVARINIOFS;
	tmp$64 EMITVARINISTR;
	tmp$65 EMITVARINIWSTR;
	tmp$66 EMITVARINIPAD;
	tmp$67 EMITVARINISCOPEBEGIN;
	tmp$38 EMITVARINISCOPEEND;
	tmp$38 EMITFBCTINFBEGIN;
	tmp$68 EMITFBCTINFSTRING;
	tmp$38 EMITFBCTINFEND;
	tmp$69 ALLOCVREG;
	tmp$70 ALLOCVRIMM;
	tmp$71 ALLOCVRIMMF;
	tmp$72 ALLOCVRVAR;
	tmp$73 ALLOCVRIDX;
	tmp$74 ALLOCVRPTR;
	tmp$72 ALLOCVROFS;
	tmp$75 SETVREGDATATYPE;
	tmp$76 GETDISTANCE;
	tmp$52 LOADVR;
	tmp$45 STOREVR;
	tmp$46 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 544 );
typedef int64 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 552 );
extern struct $5IRCTX IR$;
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 24 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 64 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int64 CTORCNT;
	int64 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 80 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 32 );
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int64 DOEMIT;
	int64 TYPEINICOUNT;
	int64 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int64 DTORLISTCOOKIES;
	int64 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int64 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 472 );
extern struct $6ASTCTX AST$;
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
typedef int64 $8FB_TOKEN;
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
typedef int64 $12FB_PARSEROPT;
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
static struct $8NAMEINFO DBG_ASTNODECLASSNAMES$[45] = { { (uint8*)"NOP" }, { (uint8*)"LOAD" }, { (uint8*)"ASSIGN" }, { (uint8*)"BOP" }, { (uint8*)"UOP" }, { (uint8*)"CONV" }, { (uint8*)"ADDROF" }, { (uint8*)"BRANCH" }, { (uint8*)"JMPTB" }, { (uint8*)"CALL" }, { (uint8*)"CALLCTOR" }, { (uint8*)"STACK" }, { (uint8*)"MEM" }, { (uint8*)"LOOP" }, { (uint8*)"COMP" }, { (uint8*)"LINK" }, { (uint8*)"CONST" }, { (uint8*)"VAR" }, { (uint8*)"IDX" }, { (uint8*)"FIELD" }, { (uint8*)"DEREF" }, { (uint8*)"LABEL" }, { (uint8*)"ARG" }, { (uint8*)"OFFSET" }, { (uint8*)"DECL" }, { (uint8*)"NIDXARRAY" }, { (uint8*)"IIF" }, { (uint8*)"LIT" }, { (uint8*)"ASM" }, { (uint8*)"DATASTMT" }, { (uint8*)"DBG" }, { (uint8*)"BOUNDCHK" }, { (uint8*)"PTRCHK" }, { (uint8*)"SCOPEBEGIN" }, { (uint8*)"SCOPEEND" }, { (uint8*)"SCOPE_BREAK" }, { (uint8*)"TYPEINI" }, { (uint8*)"TYPEINI_PAD" }, { (uint8*)"TYPEINI_ASSIGN" }, { (uint8*)"TYPEINI_CTORCALL" }, { (uint8*)"TYPEINI_CTORLIST" }, { (uint8*)"TYPEINI_SCOPEINI" }, { (uint8*)"TYPEINI_SCOPEEND" }, { (uint8*)"PROC" }, { (uint8*)"MACRO" } };
static struct $8NAMEINFO DBG_ASTNODEOPNAMES$[121] = { { (uint8*)"=" }, { (uint8*)"+=" }, { (uint8*)"-=" }, { (uint8*)"*=" }, { (uint8*)"/=" }, { (uint8*)"\x5C=" }, { (uint8*)"MOD=" }, { (uint8*)"AND=" }, { (uint8*)"OR=" }, { (uint8*)"ANDALSO=" }, { (uint8*)"ORELSE=" }, { (uint8*)"XOR=" }, { (uint8*)"EQV=" }, { (uint8*)"IMP=" }, { (uint8*)"SHL=" }, { (uint8*)"SHR=" }, { (uint8*)"^=" }, { (uint8*)"&=" }, { (uint8*)"new=" }, { (uint8*)"new[]=" }, { (uint8*)"del=" }, { (uint8*)"del[]=" }, { (uint8*)"ADDROF" }, { (uint8*)"PTRINDEX" }, { (uint8*)"FOR" }, { (uint8*)"STEP" }, { (uint8*)"NEXT" }, { (uint8*)"CAST" }, { (uint8*)"+" }, { (uint8*)"-" }, { (uint8*)"*" }, { (uint8*)"/" }, { (uint8*)"\x5C" }, { (uint8*)"MOD" }, { (uint8*)"AND" }, { (uint8*)"OR" }, { (uint8*)"ANDALSO" }, { (uint8*)"ORELSE" }, { (uint8*)"XOR" }, { (uint8*)"EQV" }, { (uint8*)"IMP" }, { (uint8*)"SHL" }, { (uint8*)"SHR" }, { (uint8*)"^" }, { (uint8*)"&" }, { (uint8*)"==" }, { (uint8*)">" }, { (uint8*)"<" }, { (uint8*)"<>" }, { (uint8*)">=" }, { (uint8*)"<=" }, { (uint8*)"IS" }, { (uint8*)"NOT" }, { (uint8*)"+" }, { (uint8*)"NEG" }, { (uint8*)"HADD" }, { (uint8*)"ABS" }, { (uint8*)"SGN" }, { (uint8*)"SIN" }, { (uint8*)"ASIN" }, { (uint8*)"COS" }, { (uint8*)"ACOS" }, { (uint8*)"TAN" }, { (uint8*)"ATAN" }, { (uint8*)"ATAN2" }, { (uint8*)"SQRT" }, { (uint8*)"RSQRT" }, { (uint8*)"RCP" }, { (uint8*)"LOG" }, { (uint8*)"EXP" }, { (uint8*)"FLOOR" }, { (uint8*)"FIX" }, { (uint8*)"FRAC" }, { (uint8*)"LEN" }, { (uint8*)"CONVFD2FS" }, { (uint8*)"SWZREP" }, { (uint8*)"DEREF" }, { (uint8*)"FLDDEREF" }, { (uint8*)"NEW" }, { (uint8*)"NEW_VEC" }, { (uint8*)"DEL" }, { (uint8*)"DEL_VEC" }, { (uint8*)"TOINT" }, { (uint8*)"TOFLT" }, { (uint8*)"TOBOOL" }, { (uint8*)"LOAD" }, { (uint8*)"LOADRES" }, { (uint8*)"SPILLREGS" }, { (uint8*)"PUSH" }, { (uint8*)"POP" }, { (uint8*)"PUSHUDT" }, { (uint8*)"STACKALIGN" }, { (uint8*)"JEQ" }, { (uint8*)"JGT" }, { (uint8*)"JLT" }, { (uint8*)"JNE" }, { (uint8*)"JGE" }, { (uint8*)"JLE" }, { (uint8*)"JMP" }, { (uint8*)"CALL" }, { (uint8*)"LABEL" }, { (uint8*)"RET" }, { (uint8*)"CALLFUNCT" }, { (uint8*)"CALLPTR" }, { (uint8*)"JUMPPTR" }, { (uint8*)"MEMMOVE" }, { (uint8*)"MEMSWAP" }, { (uint8*)"MEMCLEAR" }, { (uint8*)"STKCLEAR" }, { (uint8*)"VA_START" }, { (uint8*)"VA_END" }, { (uint8*)"VA_COPY" }, { (uint8*)"VA_ARG" }, { (uint8*)"DBG_LINEINI" }, { (uint8*)"DBG_LINEEND" }, { (uint8*)"DBG_SCOPEINI" }, { (uint8*)"BDG_SCOPEEND" }, { (uint8*)"LIT_COMMENT" }, { (uint8*)"LIT_ASM" }, { (uint8*)"TOSIGNED" }, { (uint8*)"TOUNSIGNED" } };

struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL* SYM$1, int64 DOFLUSH$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 21ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 40ll) = DOFLUSH$1;
	if( *(int64*)SYM$1 != 7ll ) goto label$13;
	{
		if( *(int64*)((uint8*)SYM$1 + 104ll) != 0ll ) goto label$15;
		{
			*(int64*)((uint8*)SYM$1 + 104ll) = -1ll;
			*(int64*)((uint8*)SYM$1 + 112ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
			*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96ll) = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll);
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$19;
	{
		if( *(int64*)((uint8*)N$1 + 40ll) == 0ll ) goto label$21;
		{
			(*(tmp$42*)((uint8*)&IR$ + 120ll))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
		}
		goto label$20;
		label$21:;
		{
			(*(tmp$42*)((uint8*)&IR$ + 128ll))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
		}
		label$20:;
	}
	label$19:;
	label$18:;
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWLIT( uint8* TEXT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$22:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 27ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	int64 vr$2 = fb_StrLen( (void*)TEXT$1, 0ll );
	void* vr$5 = XALLOCATE( (int32)(vr$2 + 1ll) );
	*(uint8**)((uint8*)N$1 + 40ll) = (uint8*)vr$5;
	fb_StrAssign( *(void**)((uint8*)N$1 + 40ll), 0ll, (void*)TEXT$1, 0ll, 0 );
	fb$result$1 = N$1;
	label$23:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLIT( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$27;
	{
		(*(tmp$50*)((uint8*)&IR$ + 176ll))( *(uint8**)((uint8*)N$1 + 40ll) );
	}
	label$27:;
	label$26:;
	if( *(uint8**)((uint8*)N$1 + 40ll) == (uint8*)0ull ) goto label$29;
	{
		free( *(void**)((uint8*)N$1 + 40ll) );
	}
	label$29:;
	label$28:;
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$25:;
	return fb$result$1;
}

struct $9ASTASMTOK* ASTASMAPPENDTEXT( struct $9ASTASMTOK* TAIL$1, uint8* TEXT$1 )
{
	struct $9ASTASMTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$34:;
	struct $9ASTASMTOK* vr$1 = ASTASMAPPEND( TAIL$1, 0ll );
	TAIL$1 = vr$1;
	int64 vr$2 = fb_StrLen( (void*)TEXT$1, 0ll );
	void* vr$5 = XALLOCATE( (int32)(vr$2 + 1ll) );
	*(uint8**)((uint8*)TAIL$1 + 8ll) = (uint8*)vr$5;
	fb_StrAssign( *(void**)((uint8*)TAIL$1 + 8ll), 0ll, (void*)TEXT$1, 0ll, 0 );
	fb$result$1 = TAIL$1;
	label$35:;
	return fb$result$1;
}

struct $9ASTASMTOK* ASTASMAPPENDSYMB( struct $9ASTASMTOK* TAIL$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $9ASTASMTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$36:;
	struct $9ASTASMTOK* vr$1 = ASTASMAPPEND( TAIL$1, 1ll );
	TAIL$1 = vr$1;
	*(struct $8FBSYMBOL**)((uint8*)TAIL$1 + 8ll) = SYM$1;
	fb$result$1 = TAIL$1;
	label$37:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWASM( struct $9ASTASMTOK* ASMTOKHEAD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$38:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 28ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(struct $9ASTASMTOK**)((uint8*)N$1 + 40ll) = ASMTOKHEAD$1;
	fb$result$1 = N$1;
	label$39:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADASM( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$40:;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$43;
	{
		(*(tmp$49*)((uint8*)&IR$ + 168ll))( *(struct $9ASTASMTOK**)((uint8*)N$1 + 40ll) );
	}
	label$43:;
	label$42:;
	struct $9ASTASMTOK* NODE$1;
	NODE$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 40ll);
	label$44:;
	if( NODE$1 == (struct $9ASTASMTOK*)0ull ) goto label$45;
	{
		struct $9ASTASMTOK* NXT$2;
		NXT$2 = *(struct $9ASTASMTOK**)((uint8*)NODE$1 + 16ll);
		{
			$14AST_ASMTOKTYPE TMP$93$3;
			TMP$93$3 = *($14AST_ASMTOKTYPE*)NODE$1;
			if( TMP$93$3 != 0ll ) goto label$47;
			label$48:;
			{
				if( *(uint8**)((uint8*)NODE$1 + 8ll) == (uint8*)0ull ) goto label$50;
				{
					free( *(void**)((uint8*)NODE$1 + 8ll) );
				}
				label$50:;
				label$49:;
			}
			label$47:;
			label$46:;
		}
		LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 400ll), (void*)NODE$1 );
		NODE$1 = NXT$2;
	}
	goto label$44;
	label$45:;
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$41:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWDBG( int64 OP$1, int64 EX$1, uint8* FILENAME$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$51:;
	struct $7ASTNODE* N$1;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != 0ll ) goto label$54;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$52;
	}
	label$54:;
	label$53:;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 30ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 56ll) = OP$1;
	*(int64*)((uint8*)N$1 + 40ll) = EX$1;
	*(uint8**)((uint8*)N$1 + 48ll) = FILENAME$1;
	fb$result$1 = N$1;
	label$52:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADDBG( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$55:;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$58;
	{
		(*(tmp$60*)((uint8*)&IR$ + 336ll))( *(int64*)((uint8*)N$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 24ll), *(int64*)((uint8*)N$1 + 40ll), *(uint8**)((uint8*)N$1 + 48ll) );
	}
	label$58:;
	label$57:;
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$56:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWNOP( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$59:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	fb$result$1 = N$1;
	label$60:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADNOP( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$61:;
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$62:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWNIDXARRAY( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$63:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 25ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = EXPR$1;
	fb$result$1 = N$1;
	label$64:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADNIDXARRAY( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$65:;
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$66:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVENIDXARRAY( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$67:;
	fb$result$1 = N$1;
	if( *(int64*)N$1 != 25ll ) goto label$70;
	{
		fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$71:;
	struct $7ASTNODE* N$1;
	if( RET$1 == 1ll ) goto label$74;
	{
		if( L$1 == (struct $7ASTNODE*)0ull ) goto label$76;
		{
			if( *(int64*)L$1 != 9ll ) goto label$78;
			{
				ASTSETTYPE( L$1, 0ll, (struct $8FBSYMBOL*)0ull );
			}
			label$78:;
			label$77:;
		}
		label$76:;
		label$75:;
	}
	label$74:;
	label$73:;
	if( RET$1 == 2ll ) goto label$80;
	{
		if( R$1 == (struct $7ASTNODE*)0ull ) goto label$82;
		{
			if( *(int64*)R$1 != 9ll ) goto label$84;
			{
				ASTSETTYPE( R$1, 0ll, (struct $8FBSYMBOL*)0ull );
			}
			label$84:;
			label$83:;
		}
		label$82:;
		label$81:;
	}
	label$80:;
	label$79:;
	if( L$1 != (struct $7ASTNODE*)0ull ) goto label$86;
	{
		fb$result$1 = R$1;
		goto label$72;
	}
	label$86:;
	label$85:;
	if( R$1 != (struct $7ASTNODE*)0ull ) goto label$88;
	{
		fb$result$1 = L$1;
		goto label$72;
	}
	label$88:;
	label$87:;
	{
		if( RET$1 != 0ll ) goto label$90;
		label$91:;
		{
			struct $7ASTNODE* vr$3 = ASTNEWNODE( 15ll, 0ll, (struct $8FBSYMBOL*)0ull );
			N$1 = vr$3;
		}
		goto label$89;
		label$90:;
		if( RET$1 != 1ll ) goto label$92;
		label$93:;
		{
			struct $7ASTNODE* vr$6 = ASTNEWNODE( 15ll, *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
			N$1 = vr$6;
		}
		goto label$89;
		label$92:;
		if( RET$1 != 2ll ) goto label$94;
		label$95:;
		{
			struct $7ASTNODE* vr$9 = ASTNEWNODE( 15ll, *(int64*)((uint8*)R$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll) );
			N$1 = vr$9;
		}
		label$94:;
		label$89:;
	}
	*(int64*)((uint8*)N$1 + 40ll) = RET$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = R$1;
	fb$result$1 = N$1;
	label$72:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLINK( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$96:;
	struct $6IRVREG* VRL$1;
	struct $6IRVREG* VRR$1;
	struct $6IRVREG* vr$2 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	VRL$1 = vr$2;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	struct $6IRVREG* vr$5 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	VRR$1 = vr$5;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	{
		int64 TMP$94$2;
		TMP$94$2 = *(int64*)((uint8*)N$1 + 40ll);
		if( TMP$94$2 != 1ll ) goto label$99;
		label$100:;
		{
			fb$result$1 = VRL$1;
		}
		goto label$98;
		label$99:;
		if( TMP$94$2 != 2ll ) goto label$101;
		label$102:;
		{
			fb$result$1 = VRR$1;
		}
		goto label$98;
		label$101:;
		{
			fb$result$1 = (struct $6IRVREG*)0ull;
		}
		label$103:;
		label$98:;
	}
	label$97:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWLOAD( struct $7ASTNODE* L$1, int64 DTYPE$1, int64 ISRESULT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$104:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 1ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	*(int64*)((uint8*)N$1 + 40ll) = ISRESULT$1;
	fb$result$1 = N$1;
	label$105:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADLOAD( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$106:;
	struct $7ASTNODE* L$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 != (struct $7ASTNODE*)0ull ) goto label$109;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$107;
	}
	label$109:;
	label$108:;
	struct $6IRVREG* vr$2 = ASTLOAD( L$1 );
	V1$1 = vr$2;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$111;
	{
		if( *(int64*)((uint8*)N$1 + 40ll) == 0ll ) goto label$113;
		{
			struct $6IRVREG* vr$6 = (*(tmp$69*)((uint8*)&IR$ + 448ll))( *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
			VR$1 = vr$6;
			(*(tmp$45*)((uint8*)&IR$ + 224ll))( V1$1, VR$1 );
		}
		goto label$112;
		label$113:;
		{
			(*(tmp$53*)((uint8*)&IR$ + 216ll))( V1$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$114:;
	struct $7ASTNODE* N$1;
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
	if( *(int64*)((uint8*)SYM$1 + 192ll) <= 0ll ) goto label$117;
	{
		if( (DTYPE$1 & 511ll) != 1ll ) goto label$119;
		{
			DTYPE$1 = (DTYPE$1 & -512ll) | 8ll;
		}
		goto label$118;
		label$119:;
		{
			DTYPE$1 = (DTYPE$1 & -512ll) | 9ll;
		}
		label$118:;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
		*(int64*)((uint8*)&AST$ + 288ll) = *(int64*)((uint8*)&AST$ + 288ll) + 1ll;
	}
	label$117:;
	label$116:;
	if( *(int64*)L$1 != 19ll ) goto label$121;
	{
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) = SYM$1;
		*(int64*)((uint8*)L$1 + 8ll) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = SUBTYPE$1;
		fb$result$1 = L$1;
		goto label$115;
	}
	label$121:;
	label$120:;
	struct $7ASTNODE* vr$14 = ASTNEWNODE( 19ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$14;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	fb$result$1 = N$1;
	label$115:;
	return fb$result$1;
}

void ASTFORGETBITFIELDS( struct $7ASTNODE* N$1 )
{
	int64 TMP$95$1;
	label$122:;
	if( ((int64)-(N$1 == (struct $7ASTNODE*)0ull) | (int64)-(*(int64*)((uint8*)&AST$ + 288ll) <= 0ll)) == 0ll ) goto label$125;
	{
		goto label$123;
	}
	label$125:;
	label$124:;
	if( *(int64*)N$1 != 19ll ) goto label$126;
	TMP$95$1 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 192ll) > 0ll);
	goto label$129;
	label$126:;
	TMP$95$1 = 0ll;
	label$129:;
	if( TMP$95$1 == 0ll ) goto label$128;
	{
		*(int64*)((uint8*)&AST$ + 288ll) = *(int64*)((uint8*)&AST$ + 288ll) + -1ll;
	}
	label$128:;
	label$127:;
	ASTFORGETBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	ASTFORGETBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	label$123:;
}

struct $7ASTNODE* ASTUPDATEBITFIELDS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$157:;
	if( *(int64*)((uint8*)&AST$ + 288ll) > 0ll ) goto label$160;
	{
		fb$result$1 = N$1;
		goto label$158;
	}
	label$160:;
	label$159:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$162;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$158;
	}
	label$162:;
	label$161:;
	{
		$13AST_NODECLASS TMP$97$2;
		TMP$97$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$97$2 != 2ll ) goto label$164;
		label$165:;
		{
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 19ll ) goto label$167;
			{
				struct $8FBSYMBOL* BITFIELD$4;
				BITFIELD$4 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll);
				if( *(int64*)((uint8*)BITFIELD$4 + 192ll) <= 0ll ) goto label$169;
				{
					*(int64*)((uint8*)&AST$ + 288ll) = *(int64*)((uint8*)&AST$ + 288ll) + -1ll;
					ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
					*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 112ll);
					struct $7ASTNODE* vr$14 = ASTSETBITFIELD( BITFIELD$4, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
					*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$14;
				}
				label$169:;
				label$168:;
			}
			label$167:;
			label$166:;
		}
		goto label$163;
		label$164:;
		if( TMP$97$2 != 19ll ) goto label$170;
		label$171:;
		{
			if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 192ll) <= 0ll ) goto label$173;
			{
				struct $7ASTNODE* L$4;
				L$4 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
				struct $7ASTNODE* vr$20 = ASTACCESSBITFIELD( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll), L$4 );
				L$4 = vr$20;
				*(int64*)((uint8*)&AST$ + 288ll) = *(int64*)((uint8*)&AST$ + 288ll) + -1ll;
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
	struct $7ASTNODE* vr$24 = ASTUPDATEBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$24;
	struct $7ASTNODE* vr$27 = ASTUPDATEBITFIELDS( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$27;
	fb$result$1 = N$1;
	label$158:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADFIELD( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$174:;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* vr$2 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	VR$1 = vr$2;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$177;
	{
		*(int64*)((uint8*)VR$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
	}
	label$177:;
	label$176:;
	fb$result$1 = VR$1;
	label$175:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWSTACK( int64 OP$1, struct $7ASTNODE* L$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$178:;
	struct $7ASTNODE* N$1;
	if( L$1 != (struct $7ASTNODE*)0ull ) goto label$181;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$179;
	}
	label$181:;
	label$180:;
	struct $7ASTNODE* vr$2 = ASTNEWNODE( 11ll, *(int64*)((uint8*)L$1 + 8ll), (struct $8FBSYMBOL*)0ull );
	N$1 = vr$2;
	*(int64*)((uint8*)N$1 + 40ll) = OP$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	fb$result$1 = N$1;
	label$179:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADSTACK( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$182:;
	struct $7ASTNODE* L$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 != (struct $7ASTNODE*)0ull ) goto label$185;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$183;
	}
	label$185:;
	label$184:;
	struct $6IRVREG* vr$2 = ASTLOAD( L$1 );
	VR$1 = vr$2;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$187;
	{
		(*(tmp$52*)((uint8*)&IR$ + 232ll))( *(int64*)((uint8*)N$1 + 40ll), VR$1, (struct $6IRVREG*)0ull );
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$198:;
	if( ((int64)-(OP$1 > 120ll) | (int64)-(OP$1 < 0ll)) == 0ll ) goto label$201;
	{
		FBSTRING TMP$260$2;
		FBSTRING* vr$4 = fb_LongintToStr( OP$1 );
		__builtin_memset( &TMP$260$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$260$2, (void*)"OP:", 4ll, (void*)vr$4, -1ll );
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$7, -1ll, 0 );
		goto label$199;
	}
	label$201:;
	label$200:;
	fb_StrInit( (void*)&fb$result$1, -1ll, *(void**)((int64)(struct $8NAMEINFO*)DBG_ASTNODEOPNAMES$ + (OP$1 << (3ll & 63ll))), 0ll, 0 );
	goto label$199;
	label$199:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

void ASTDUMPTREE( struct $7ASTNODE* N$1, int64 COL$1 )
{
	label$261:;
	ASTDUMPTREEEX( N$1, COL$1, -1ll, 0ll );
	label$262:;
}

void ASTDUMPLIST( struct $7ASTNODE* N$1, int64 COL$1 )
{
	label$263:;
	label$265:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$266;
	{
		ASTDUMPTREE( N$1, COL$1 );
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $9ASTASMTOK* ASTASMAPPEND( struct $9ASTASMTOK* TAIL$1, int64 TYP$1 )
{
	struct $9ASTASMTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$30:;
	struct $9ASTASMTOK* ASMTOK$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 400ll) );
	ASMTOK$1 = (struct $9ASTASMTOK*)vr$2;
	if( TAIL$1 == (struct $9ASTASMTOK*)0ull ) goto label$33;
	{
		*(struct $9ASTASMTOK**)((uint8*)TAIL$1 + 16ll) = ASMTOK$1;
	}
	label$33:;
	label$32:;
	*($14AST_ASMTOKTYPE*)ASMTOK$1 = TYP$1;
	*(struct $9ASTASMTOK**)((uint8*)ASMTOK$1 + 16ll) = (struct $9ASTASMTOK*)0ull;
	fb$result$1 = ASMTOK$1;
	label$31:;
	return fb$result$1;
}

static struct $7ASTNODE* _Z13HMAKEUINTMASKm( uint64 BITS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$130:;
	uint64 MASK$1;
	__builtin_memset( &MASK$1, 0, 8ll );
	if( BITS$1 < 64ull ) goto label$133;
	{
		MASK$1 = 18446744073709551615ull;
	}
	goto label$132;
	label$133:;
	{
		MASK$1 = (1ull << (BITS$1 & 63ll)) + 18446744073709551615ull;
	}
	label$132:;
	int64 vr$4 = FBIS64BIT(  );
	if( ~vr$4 == 0ll ) goto label$135;
	{
		MASK$1 = (uint64)(uint32)MASK$1;
	}
	label$135:;
	label$134:;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( (int64)MASK$1, 9ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$8;
	goto label$131;
	label$131:;
	return fb$result$1;
}

static struct $7ASTNODE* _Z13HMAKEUINTMASKmm( uint64 BITS$1, uint64 BITPOS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$136:;
	struct $7ASTNODE* vr$1 = ASTNEWCONSTI( (int64)BITPOS$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$2 = _Z13HMAKEUINTMASKm( BITS$1 );
	struct $7ASTNODE* vr$3 = ASTNEWBOP( 41ll, vr$2, vr$1, (struct $8FBSYMBOL*)0ull, 1ll );
	fb$result$1 = vr$3;
	goto label$137;
	label$137:;
	return fb$result$1;
}

static struct $7ASTNODE* ASTSETBITFIELD( struct $8FBSYMBOL* BITFIELD$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$138:;
	if( (*(int64*)((uint8*)BITFIELD$1 + 56ll) & 511ll) != 1ll ) goto label$141;
	{
		*(int64*)((uint8*)L$1 + 8ll) = (*(int64*)((uint8*)BITFIELD$1 + 56ll) & -512ll) | 9ll;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = (struct $8FBSYMBOL*)0ull;
	}
	goto label$140;
	label$141:;
	{
		*(int64*)((uint8*)L$1 + 8ll) = *(int64*)((uint8*)BITFIELD$1 + 56ll);
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = *(struct $8FBSYMBOL**)((uint8*)BITFIELD$1 + 64ll);
	}
	label$140:;
	struct $7ASTNODE* vr$12 = ASTCLONETREE( L$1 );
	L$1 = vr$12;
	struct $7ASTNODE* vr$15 = _Z13HMAKEUINTMASKmm( *(uint64*)((uint8*)BITFIELD$1 + 192ll), *(uint64*)((uint8*)BITFIELD$1 + 184ll) );
	struct $7ASTNODE* vr$16 = ASTNEWUOP( 52ll, vr$15 );
	struct $7ASTNODE* vr$17 = ASTNEWBOP( 34ll, L$1, vr$16, (struct $8FBSYMBOL*)0ull, 1ll );
	L$1 = vr$17;
	if( (*(int64*)((uint8*)BITFIELD$1 + 56ll) & 511ll) != 1ll ) goto label$143;
	{
		int64 TMP$96$2;
		if( *(int64*)R$1 != 5ll ) goto label$144;
		TMP$96$2 = (int64)-(*(int64*)((uint8*)R$1 + 8ll) != 1ll);
		goto label$267;
		label$144:;
		TMP$96$2 = -1ll;
		label$267:;
		if( TMP$96$2 == 0ll ) goto label$146;
		{
			struct $7ASTNODE* vr$23 = ASTNEWCONV( 1ll, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
			R$1 = vr$23;
		}
		label$146:;
		label$145:;
		struct $7ASTNODE* vr$24 = ASTNEWCONV( 9ll, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
		R$1 = vr$24;
		struct $7ASTNODE* vr$27 = _Z13HMAKEUINTMASKmm( *(uint64*)((uint8*)BITFIELD$1 + 192ll), *(uint64*)((uint8*)BITFIELD$1 + 184ll) );
		struct $7ASTNODE* vr$28 = ASTNEWBOP( 34ll, R$1, vr$27, (struct $8FBSYMBOL*)0ull, 1ll );
		R$1 = vr$28;
	}
	goto label$142;
	label$143:;
	{
		struct $7ASTNODE* vr$30 = _Z13HMAKEUINTMASKm( *(uint64*)((uint8*)BITFIELD$1 + 192ll) );
		struct $7ASTNODE* vr$31 = ASTNEWBOP( 34ll, R$1, vr$30, (struct $8FBSYMBOL*)0ull, 1ll );
		R$1 = vr$31;
		if( *(int64*)((uint8*)BITFIELD$1 + 184ll) <= 0ll ) goto label$148;
		{
			struct $7ASTNODE* vr$34 = ASTNEWCONSTI( *(int64*)((uint8*)BITFIELD$1 + 184ll), 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$35 = ASTNEWBOP( 41ll, R$1, vr$34, (struct $8FBSYMBOL*)0ull, 1ll );
			R$1 = vr$35;
		}
		label$148:;
		label$147:;
	}
	label$142:;
	struct $7ASTNODE* vr$36 = ASTNEWBOP( 35ll, L$1, R$1, (struct $8FBSYMBOL*)0ull, 1ll );
	fb$result$1 = vr$36;
	label$139:;
	return fb$result$1;
}

static struct $7ASTNODE* ASTACCESSBITFIELD( struct $8FBSYMBOL* BITFIELD$1, struct $7ASTNODE* L$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$149:;
	int64 BOOLCONV$1;
	__builtin_memset( &BOOLCONV$1, 0, 8ll );
	if( (*(int64*)((uint8*)BITFIELD$1 + 56ll) & 511ll) != 1ll ) goto label$152;
	{
		*(int64*)((uint8*)L$1 + 8ll) = (*(int64*)((uint8*)L$1 + 8ll) & -512ll) | 2ll;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = (struct $8FBSYMBOL*)0ull;
		BOOLCONV$1 = -1ll;
	}
	goto label$151;
	label$152:;
	{
		*(int64*)((uint8*)L$1 + 8ll) = (*(int64*)((uint8*)L$1 + 8ll) & -512ll) | (*(int64*)((uint8*)BITFIELD$1 + 56ll) & 511ll);
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = *(struct $8FBSYMBOL**)((uint8*)BITFIELD$1 + 64ll);
		BOOLCONV$1 = 0ll;
	}
	label$151:;
	if( *(int64*)((uint8*)BITFIELD$1 + 184ll) <= 0ll ) goto label$154;
	{
		struct $7ASTNODE* vr$19 = ASTNEWCONSTI( *(int64*)((uint8*)BITFIELD$1 + 184ll), 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$20 = ASTNEWBOP( 42ll, L$1, vr$19, (struct $8FBSYMBOL*)0ull, 1ll );
		L$1 = vr$20;
	}
	label$154:;
	label$153:;
	struct $7ASTNODE* vr$22 = _Z13HMAKEUINTMASKm( *(uint64*)((uint8*)BITFIELD$1 + 192ll) );
	struct $7ASTNODE* vr$23 = ASTNEWBOP( 34ll, L$1, vr$22, (struct $8FBSYMBOL*)0ull, 1ll );
	L$1 = vr$23;
	if( BOOLCONV$1 == 0ll ) goto label$156;
	{
		*(int64*)((uint8*)L$1 + 8ll) = (*(int64*)((uint8*)L$1 + 8ll) & -512ll) | (*(int64*)((uint8*)BITFIELD$1 + 56ll) & 511ll);
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = *(struct $8FBSYMBOL**)((uint8*)BITFIELD$1 + 64ll);
		struct $7ASTNODE* vr$32 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, L$1, 0ll, (int64*)0ull );
		L$1 = vr$32;
	}
	label$156:;
	label$155:;
	fb$result$1 = L$1;
	label$150:;
	return fb$result$1;
}

static void DBG_ASTOUTPUT( FBSTRING* S$1, int64 COL$1, int64 JUST$1, int64 DEPTH$1 )
{
	label$188:;
	int64 PAD$1;
	{
		if( JUST$1 != -1ll ) goto label$191;
		label$192:;
		{
			int64 vr$0 = fb_StrLen( (void*)S$1, -1ll );
			PAD$1 = COL$1 - vr$0;
		}
		goto label$190;
		label$191:;
		if( JUST$1 != 1ll ) goto label$193;
		label$194:;
		{
			PAD$1 = COL$1 + -1ll;
		}
		goto label$190;
		label$193:;
		{
			PAD$1 = COL$1;
		}
		label$195:;
		label$190:;
	}
	if( DEPTH$1 >= 0ll ) goto label$197;
	{
		FBSTRING* vr$4 = fb_SPACE( PAD$1 + -1ll );
		fb_PrintString( 0, (FBSTRING*)vr$4, 0 );
		fb_PrintString( 0, (FBSTRING*)S$1, 1 );
	}
	goto label$196;
	label$197:;
	{
		FBSTRING* vr$5 = fb_LongintToStr( DEPTH$1 );
		fb_PrintString( 0, (FBSTRING*)vr$5, 0 );
		FBSTRING* vr$7 = fb_LongintToStr( DEPTH$1 );
		int64 vr$8 = fb_StrLen( (void*)vr$7, -1ll );
		FBSTRING* vr$10 = fb_SPACE( (PAD$1 + -1ll) - vr$8 );
		fb_PrintString( 0, (FBSTRING*)vr$10, 0 );
		fb_PrintString( 0, (FBSTRING*)S$1, 1 );
	}
	label$196:;
	label$189:;
}

static FBSTRING* HASTNODECLASSTOSTR( $13AST_NODECLASS C$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$202:;
	if( ((int64)-(C$1 > 44ll) | (int64)-(C$1 < 0ll)) == 0ll ) goto label$205;
	{
		FBSTRING TMP$262$2;
		FBSTRING* vr$4 = fb_LongintToStr( C$1 );
		__builtin_memset( &TMP$262$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$262$2, (void*)"CLASS:", 7ll, (void*)vr$4, -1ll );
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$7, -1ll, 0 );
		goto label$203;
	}
	label$205:;
	label$204:;
	fb_StrInit( (void*)&fb$result$1, -1ll, *(void**)((int64)(struct $8NAMEINFO*)DBG_ASTNODECLASSNAMES$ + (C$1 << (3ll & 63ll))), 0ll, 0 );
	goto label$203;
	label$203:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* HSYMBTOSTR( struct $8FBSYMBOL* S$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$206:;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$209;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$207;
		label$209:;
	}
	if( *(uint8**)((uint8*)S$1 + 32ll) == (uint8*)0ull ) goto label$211;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, *(void**)((uint8*)S$1 + 32ll), 0ll, 0 );
		goto label$207;
	}
	goto label$210;
	label$211:;
	if( *(uint8**)((uint8*)S$1 + 40ll) == (uint8*)0ull ) goto label$212;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, *(void**)((uint8*)S$1 + 40ll), 0ll, 0 );
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$213:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$216;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$214;
		label$216:;
	}
	FBSTRING* vr$4 = SYMBTYPETOSTR( *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), 0ll, 0ll );
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$4, -1ll, 0 );
	goto label$214;
	label$214:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* HASTNODETOSTR( struct $7ASTNODE* N$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$217:;
	{
		uint64 TMP$263$2;
		TMP$263$2 = *(uint64*)N$1;
		goto label$220;
		label$221:;
		{
			FBSTRING TMP$265$3;
			FBSTRING TMP$266$3;
			FBSTRING* vr$3 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) );
			FBSTRING* vr$5 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 40ll) );
			__builtin_memset( &TMP$265$3, 0, 24ll );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$265$3, (void*)vr$5, -1ll, (void*)" =-= ", 6ll );
			__builtin_memset( &TMP$266$3, 0, 24ll );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$266$3, (void*)vr$8, -1ll, (void*)vr$3, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$11, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$222:;
		{
			FBSTRING* vr$14 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 40ll) );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$14, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$223:;
		{
			int64 TMP$267$3;
			FBSTRING TMP$273$3;
			FBSTRING TMP$274$3;
			FBSTRING TMP$275$3;
			if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$224;
			TMP$267$3 = 24ll;
			goto label$268;
			label$224:;
			TMP$267$3 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
			label$268:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$267$3 * 56ll)) != 1ll ) goto label$226;
			{
				FBSTRING TMP$270$4;
				FBSTRING TMP$271$4;
				FBSTRING TMP$272$4;
				FBSTRING* vr$21 = HASTNODETYPETOSTR( N$1 );
				__builtin_memset( &TMP$270$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$270$4, (void*)" (", 3ll, (void*)vr$21, -1ll );
				__builtin_memset( &TMP$271$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$271$4, (void*)vr$24, -1ll, (void*)")", 2ll );
				FBSTRING* vr$29 = fb_DoubleToStr( *(double*)((uint8*)N$1 + 40ll) );
				__builtin_memset( &TMP$272$4, 0, 24ll );
				FBSTRING* vr$32 = fb_StrConcat( &TMP$272$4, (void*)vr$29, -1ll, (void*)vr$27, -1ll );
				fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$32, -1ll, 0 );
				goto label$218;
			}
			label$226:;
			label$225:;
			FBSTRING* vr$34 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$273$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$273$3, (void*)" (", 3ll, (void*)vr$34, -1ll );
			__builtin_memset( &TMP$274$3, 0, 24ll );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$274$3, (void*)vr$37, -1ll, (void*)")", 2ll );
			FBSTRING* vr$42 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 40ll) );
			__builtin_memset( &TMP$275$3, 0, 24ll );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$275$3, (void*)vr$42, -1ll, (void*)vr$40, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$45, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$227:;
		{
			uint8* TMP$278$3;
			FBSTRING TMP$280$3;
			FBSTRING TMP$281$3;
			FBSTRING TMP$282$3;
			FBSTRING TMP$283$3;
			FBSTRING TMP$284$3;
			FBSTRING* vr$47 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$282$3, 0, 24ll );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$282$3, (void*)" (", 3ll, (void*)vr$47, -1ll );
			__builtin_memset( &TMP$283$3, 0, 24ll );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$283$3, (void*)vr$50, -1ll, (void*)")", 2ll );
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$228;
			TMP$278$3 = *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll);
			goto label$269;
			label$228:;
			TMP$278$3 = (uint8*)"<NULL>";
			label$269:;
			__builtin_memset( &TMP$280$3, 0, 24ll );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$280$3, (void*)"VAR( ", 6ll, (void*)TMP$278$3, 0ll );
			__builtin_memset( &TMP$281$3, 0, 24ll );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$281$3, (void*)vr$59, -1ll, (void*)" )", 3ll );
			__builtin_memset( &TMP$284$3, 0, 24ll );
			FBSTRING* vr$65 = fb_StrConcat( &TMP$284$3, (void*)vr$62, -1ll, (void*)vr$53, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$65, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$229:;
		{
			FBSTRING TMP$286$3;
			FBSTRING TMP$287$3;
			FBSTRING TMP$288$3;
			FBSTRING TMP$289$3;
			FBSTRING TMP$290$3;
			FBSTRING* vr$67 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$288$3, 0, 24ll );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$288$3, (void*)" (", 3ll, (void*)vr$67, -1ll );
			__builtin_memset( &TMP$289$3, 0, 24ll );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$289$3, (void*)vr$70, -1ll, (void*)")", 2ll );
			__builtin_memset( &TMP$286$3, 0, 24ll );
			FBSTRING* vr$78 = fb_StrConcat( &TMP$286$3, (void*)"FIELD( ", 8ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll), 0ll );
			__builtin_memset( &TMP$287$3, 0, 24ll );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$287$3, (void*)vr$78, -1ll, (void*)" )", 3ll );
			__builtin_memset( &TMP$290$3, 0, 24ll );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$290$3, (void*)vr$81, -1ll, (void*)vr$73, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$84, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$230:;
		{
			FBSTRING TMP$294$3;
			FBSTRING TMP$295$3;
			FBSTRING TMP$296$3;
			if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$232;
			{
				FBSTRING TMP$292$4;
				FBSTRING TMP$293$4;
				__builtin_memset( &TMP$292$4, 0, 24ll );
				FBSTRING* vr$91 = fb_StrConcat( &TMP$292$4, (void*)"DECL( ", 7ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll), 0ll );
				__builtin_memset( &TMP$293$4, 0, 24ll );
				FBSTRING* vr$94 = fb_StrConcat( &TMP$293$4, (void*)vr$91, -1ll, (void*)" )", 3ll );
				fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$94, -1ll, 0 );
				goto label$218;
			}
			label$232:;
			label$231:;
			FBSTRING* vr$96 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$294$3, 0, 24ll );
			FBSTRING* vr$99 = fb_StrConcat( &TMP$294$3, (void*)" (", 3ll, (void*)vr$96, -1ll );
			__builtin_memset( &TMP$295$3, 0, 24ll );
			FBSTRING* vr$102 = fb_StrConcat( &TMP$295$3, (void*)vr$99, -1ll, (void*)")", 2ll );
			__builtin_memset( &TMP$296$3, 0, 24ll );
			FBSTRING* vr$105 = fb_StrConcat( &TMP$296$3, (void*)"DECL", 5ll, (void*)vr$102, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$105, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$233:;
		{
			FBSTRING TMP$298$3;
			FBSTRING TMP$299$3;
			__builtin_memset( &TMP$298$3, 0, 24ll );
			FBSTRING* vr$111 = fb_StrConcat( &TMP$298$3, (void*)"CALL( ", 7ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll), 0ll );
			__builtin_memset( &TMP$299$3, 0, 24ll );
			FBSTRING* vr$114 = fb_StrConcat( &TMP$299$3, (void*)vr$111, -1ll, (void*)" )", 3ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$114, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$234:;
		{
			FBSTRING TMP$301$3;
			FBSTRING* vr$117 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
			__builtin_memset( &TMP$301$3, 0, 24ll );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$301$3, (void*)"LABEL: ", 8ll, (void*)vr$117, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$120, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$235:;
		{
			FBSTRING TMP$304$3;
			FBSTRING TMP$305$3;
			FBSTRING TMP$306$3;
			FBSTRING* vr$123 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) );
			FBSTRING* vr$125 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 40ll) );
			__builtin_memset( &TMP$304$3, 0, 24ll );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$304$3, (void*)"BRANCH: ", 9ll, (void*)vr$125, -1ll );
			__builtin_memset( &TMP$305$3, 0, 24ll );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$305$3, (void*)vr$128, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$306$3, 0, 24ll );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$306$3, (void*)vr$131, -1ll, (void*)vr$123, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$134, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$236:;
		{
			FBSTRING TMP$308$3;
			FBSTRING* vr$137 = HSYMBTOSTR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
			__builtin_memset( &TMP$308$3, 0, 24ll );
			FBSTRING* vr$140 = fb_StrConcat( &TMP$308$3, (void*)"SCOPEBEGIN: ", 13ll, (void*)vr$137, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$140, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$237:;
		{
			FBSTRING TMP$312$3;
			FBSTRING TMP$313$3;
			FBSTRING TMP$314$3;
			FBSTRING TMP$315$3;
			FBSTRING TMP$316$3;
			FBSTRING TMP$317$3;
			FBSTRING TMP$318$3;
			FBSTRING TMP$319$3;
			FBSTRING* vr$142 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$317$3, 0, 24ll );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$317$3, (void*)" (", 3ll, (void*)vr$142, -1ll );
			__builtin_memset( &TMP$318$3, 0, 24ll );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$318$3, (void*)vr$145, -1ll, (void*)")", 2ll );
			FBSTRING* vr$150 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 48ll) );
			FBSTRING* vr$152 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 40ll) );
			FBSTRING* vr$154 = HASTNODECLASSTOSTR( *($13AST_NODECLASS*)N$1 );
			__builtin_memset( &TMP$312$3, 0, 24ll );
			FBSTRING* vr$157 = fb_StrConcat( &TMP$312$3, (void*)vr$154, -1ll, (void*)"( offset=", 10ll );
			__builtin_memset( &TMP$313$3, 0, 24ll );
			FBSTRING* vr$160 = fb_StrConcat( &TMP$313$3, (void*)vr$157, -1ll, (void*)vr$152, -1ll );
			__builtin_memset( &TMP$314$3, 0, 24ll );
			FBSTRING* vr$163 = fb_StrConcat( &TMP$314$3, (void*)vr$160, -1ll, (void*)", bytes=", 9ll );
			__builtin_memset( &TMP$315$3, 0, 24ll );
			FBSTRING* vr$166 = fb_StrConcat( &TMP$315$3, (void*)vr$163, -1ll, (void*)vr$150, -1ll );
			__builtin_memset( &TMP$316$3, 0, 24ll );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$316$3, (void*)vr$166, -1ll, (void*)" ) ", 4ll );
			__builtin_memset( &TMP$319$3, 0, 24ll );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$319$3, (void*)vr$169, -1ll, (void*)vr$148, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$172, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$238:;
		{
			FBSTRING TMP$321$3;
			FBSTRING TMP$322$3;
			FBSTRING TMP$323$3;
			FBSTRING TMP$324$3;
			FBSTRING TMP$325$3;
			FBSTRING* vr$174 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$323$3, 0, 24ll );
			FBSTRING* vr$177 = fb_StrConcat( &TMP$323$3, (void*)" (", 3ll, (void*)vr$174, -1ll );
			__builtin_memset( &TMP$324$3, 0, 24ll );
			FBSTRING* vr$180 = fb_StrConcat( &TMP$324$3, (void*)vr$177, -1ll, (void*)")", 2ll );
			FBSTRING* vr$182 = ASTDUMPOPTOSTR( *($6AST_OP*)((uint8*)N$1 + 40ll) );
			__builtin_memset( &TMP$321$3, 0, 24ll );
			FBSTRING* vr$185 = fb_StrConcat( &TMP$321$3, (void*)"MACRO: ", 8ll, (void*)vr$182, -1ll );
			__builtin_memset( &TMP$322$3, 0, 24ll );
			FBSTRING* vr$188 = fb_StrConcat( &TMP$322$3, (void*)vr$185, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$325$3, 0, 24ll );
			FBSTRING* vr$191 = fb_StrConcat( &TMP$325$3, (void*)vr$188, -1ll, (void*)vr$180, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$191, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$239:;
		{
			FBSTRING TMP$329$3;
			FBSTRING TMP$330$3;
			FBSTRING TMP$331$3;
			FBSTRING TMP$332$3;
			FBSTRING TMP$333$3;
			FBSTRING TMP$334$3;
			FBSTRING S$3;
			fb_StrInit( (void*)&S$3, -1ll, (void*)"", 1ll, 0 );
			{
				int64 TMP$326$4;
				TMP$326$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$326$4 != 1ll ) goto label$241;
				label$242:;
				{
					fb_StrAssign( (void*)&S$3, -1ll, (void*)"L", 2ll, 0 );
				}
				goto label$240;
				label$241:;
				if( TMP$326$4 != 2ll ) goto label$243;
				label$244:;
				{
					fb_StrAssign( (void*)&S$3, -1ll, (void*)"R", 2ll, 0 );
				}
				label$243:;
				label$240:;
			}
			FBSTRING* vr$198 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$330$3, 0, 24ll );
			FBSTRING* vr$201 = fb_StrConcat( &TMP$330$3, (void*)" (", 3ll, (void*)vr$198, -1ll );
			__builtin_memset( &TMP$331$3, 0, 24ll );
			FBSTRING* vr$204 = fb_StrConcat( &TMP$331$3, (void*)vr$201, -1ll, (void*)")", 2ll );
			FBSTRING* vr$206 = HASTNODECLASSTOSTR( *($13AST_NODECLASS*)N$1 );
			__builtin_memset( &TMP$329$3, 0, 24ll );
			FBSTRING* vr$209 = fb_StrConcat( &TMP$329$3, (void*)"*", 2ll, (void*)vr$206, -1ll );
			__builtin_memset( &TMP$332$3, 0, 24ll );
			FBSTRING* vr$212 = fb_StrConcat( &TMP$332$3, (void*)vr$209, -1ll, (void*)vr$204, -1ll );
			__builtin_memset( &TMP$333$3, 0, 24ll );
			FBSTRING* vr$215 = fb_StrConcat( &TMP$333$3, (void*)vr$212, -1ll, (void*)"-", 2ll );
			__builtin_memset( &TMP$334$3, 0, 24ll );
			FBSTRING* vr$218 = fb_StrConcat( &TMP$334$3, (void*)vr$215, -1ll, (void*)&S$3, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$218, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&S$3 );
			goto label$218;
			fb_StrDelete( (FBSTRING*)&S$3 );
		}
		goto label$219;
		label$245:;
		{
			FBSTRING TMP$335$3;
			FBSTRING TMP$336$3;
			FBSTRING TMP$337$3;
			FBSTRING* vr$222 = HASTNODETYPETOSTR( N$1 );
			__builtin_memset( &TMP$335$3, 0, 24ll );
			FBSTRING* vr$225 = fb_StrConcat( &TMP$335$3, (void*)" (", 3ll, (void*)vr$222, -1ll );
			__builtin_memset( &TMP$336$3, 0, 24ll );
			FBSTRING* vr$228 = fb_StrConcat( &TMP$336$3, (void*)vr$225, -1ll, (void*)")", 2ll );
			FBSTRING* vr$230 = HASTNODECLASSTOSTR( *($13AST_NODECLASS*)N$1 );
			__builtin_memset( &TMP$337$3, 0, 24ll );
			FBSTRING* vr$233 = fb_StrConcat( &TMP$337$3, (void*)vr$230, -1ll, (void*)vr$228, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$233, -1ll, 0 );
			goto label$218;
		}
		goto label$219;
		label$220:;
		static const void* tmp$344[42ll] = {
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
		if( (TMP$263$2 - 3ull) > 41ull ) goto label$245;
		goto *tmp$344[TMP$263$2 - 3ull];
		label$219:;
	}
	label$218:;
	FBSTRING* vr$236 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$236;
}

static void ASTDUMPTREEEX( struct $7ASTNODE* N$1, int64 COL$1, int64 JUST$1, int64 DEPTH$1 )
{
	label$246:;
	if( ((int64)-(COL$1 <= 4ll) | (int64)-(COL$1 >= 76ll)) == 0ll ) goto label$249;
	{
		COL$1 = 40ll;
	}
	label$249:;
	label$248:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$251;
	{
		FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"<NULL>", 6ll );
		fb_PrintString( 0, (FBSTRING*)vr$3, 1 );
		goto label$247;
	}
	label$251:;
	label$250:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	FBSTRING* vr$5 = HASTNODETOSTR( N$1 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$5, -1ll, 0 );
	DBG_ASTOUTPUT( &S$1, COL$1, JUST$1, DEPTH$1 );
	DEPTH$1 = DEPTH$1 + 1ll;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$253;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$255;
		{
			FBSTRING TMP$339$3;
			__builtin_memset( &TMP$339$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$339$3, -1ll, (void*)"/ \x5C", 4ll, 0 );
			DBG_ASTOUTPUT( &TMP$339$3, COL$1 + -2ll, 0ll, -1ll );
			fb_StrDelete( (FBSTRING*)&TMP$339$3 );
		}
		goto label$254;
		label$255:;
		{
			FBSTRING TMP$340$3;
			__builtin_memset( &TMP$340$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$340$3, -1ll, (void*)"/", 2ll, 0 );
			DBG_ASTOUTPUT( &TMP$340$3, COL$1 + -2ll, 0ll, -1ll );
			fb_StrDelete( (FBSTRING*)&TMP$340$3 );
		}
		label$254:;
	}
	goto label$252;
	label$253:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$256;
	{
		FBSTRING TMP$342$2;
		__builtin_memset( &TMP$342$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$342$2, -1ll, (void*)"  \x5C", 4ll, 0 );
		DBG_ASTOUTPUT( &TMP$342$2, COL$1 + -2ll, 0ll, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$342$2 );
	}
	goto label$252;
	label$256:;
	{
		FBSTRING TMP$343$2;
		__builtin_memset( &TMP$343$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$343$2, -1ll, (void*)"", 1ll, 0 );
		DBG_ASTOUTPUT( &TMP$343$2, 0ll, 0ll, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$343$2 );
	}
	label$252:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$258;
	{
		ASTDUMPTREEEX( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), COL$1 + -2ll, -1ll, DEPTH$1 );
	}
	label$258:;
	label$257:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$260;
	{
		ASTDUMPTREEEX( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), COL$1 + 2ll, 1ll, DEPTH$1 );
	}
	label$260:;
	label$259:;
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$247:;
}
