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
typedef FBSTRING* (*tmp$29)( void*, int64* );
typedef uint16* (*tmp$30)( void*, int64* );
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
typedef int64 $9FB_ERRMSG;
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
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
typedef int64 $13FB_WARNINGMSG;
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
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
double pow( double, double );
double atan2( double, double );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
uint16* fb_WstrConcat( uint16*, uint16* );
int32 fb_StrCompare( void*, int64, void*, int64 );
int32 fb_WstrCompare( uint16*, uint16* );
uint16* fb_StrToWstr( uint8* );
static void fb_ctor__astznodezbop( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
int64 FBIS64BIT( void );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWUOP( int64, struct $7ASTNODE* );
int64 ASTISCONST0ORMINUS1( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int64 );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
struct $7ASTNODE* ASTCONVERTRAWCONSTI( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWIIF( struct $7ASTNODE*, struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int64 ASTINCOFFSET( struct $7ASTNODE*, int64 );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
int64 ASTGETINVERSELOGOP( int64 );
struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int64 ASTISRELATIONALBOP( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
int64 SYMBCALCDEREFLEN( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint16*, int64 );
void TYPEMAX( int64, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
uint8* HUNESCAPE( uint8*, int64* );
uint16* HUNESCAPEW( uint16*, int64* );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint16* );
struct $7ASTNODE* RTLSTRCOMPARE( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRCOMPARE( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRCONCAT( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* RTLMATHPOW( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLMATHLONGINTDIV( int64, struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLMATHLONGINTMOD( int64, struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLMATHBOP( int64, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLOOPISTYPEOF( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HSTRLITERALCONCAT( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HWSTRLITERALCONCAT( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HSTRLITERALCOMPARE( int64, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HWSTRLITERALCOMPARE( int64, struct $7ASTNODE*, struct $7ASTNODE* );
static void HTOSTR( struct $7ASTNODE**, struct $7ASTNODE** );
static struct $7ASTNODE* HCONSTBOP( int64, int64, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE* );
static int64 HCHECKPOINTER( int64, int64, int64 );
static struct $7ASTNODE* HDOPOINTERARITH( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static struct $7ASTNODE* HCONVERTUDT_L( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
static struct $7ASTNODE* HCONVERTUDT_R( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
static int64 HCHECKDEREFWCHARPTR( struct $7ASTNODE*, int64*, struct $7ASTNODE*, int64 );
static void HCONVOPERAND( int64, int64*, int64*, struct $7ASTNODE** );
static int64 HGETINTEGERORBIGGER( int64 );
static int64 HISCONSIDEREDBOOLEAN( struct $7ASTNODE* );
static int64 HSHOULDWARNABOUTMIXEDBOOL( struct $7ASTNODE*, struct $7ASTNODE* );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$53)( struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$56)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( int64, struct $8FBSYMBOL*, int64, uint8* );
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
extern struct $10AST_OPINFO AST_OPTB$[121];
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 16 );
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

struct $7ASTNODE* ASTNEWBOP( int64 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	int64 TMP$140$1;
	int64 TMP$141$1;
	int64 TMP$142$1;
	int64 TMP$143$1;
	int64 TMP$145$1;
	int64 TMP$146$1;
	int64 TMP$147$1;
	int64 TMP$148$1;
	int64 TMP$149$1;
	int64 TMP$150$1;
	int64 TMP$161$1;
	int64 TMP$162$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$277:;
	struct $7ASTNODE* N$1;
	int64 LDTYPE0$1;
	int64 RDTYPE0$1;
	int64 LDTYPE$1;
	int64 RDTYPE$1;
	int64 DTYPE$1;
	int64 LDCLASS$1;
	int64 RDCLASS$1;
	int64 LRANK$1;
	int64 RRANK$1;
	int64 INTRANK$1;
	int64 UINTRANK$1;
	int64 IS_STR$1;
	struct $8FBSYMBOL* LITSYM$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int64 DO_PROMOTE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (3ll & 63ll))) + 198208ll) == (struct $8FBSYMBOL*)0ull ) goto label$280;
	{
		struct $8FBSYMBOL* PROC$2;
		$9FB_ERRMSG ERR_NUM$2;
		struct $8FBSYMBOL* vr$4 = SYMBFINDBOPOVLPROC( OP$1, L$1, R$1, &ERR_NUM$2 );
		PROC$2 = vr$4;
		if( PROC$2 == (struct $8FBSYMBOL*)0ull ) goto label$282;
		{
			struct $7ASTNODE* vr$5 = ASTBUILDCALL( PROC$2, L$1, R$1, (struct $7ASTNODE*)0ull );
			fb$result$1 = vr$5;
			goto label$278;
		}
		goto label$281;
		label$282:;
		{
			if( ERR_NUM$2 == 0ll ) goto label$284;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
				goto label$278;
			}
			label$284:;
			label$283:;
		}
		label$281:;
	}
	label$280:;
	label$279:;
	IS_STR$1 = 0ll;
	{
		if( OP$1 != 44ll ) goto label$286;
		label$287:;
		{
			HTOSTR( &L$1, &R$1 );
			OP$1 = 28ll;
		}
		goto label$285;
		label$286:;
		if( OP$1 != 51ll ) goto label$288;
		label$289:;
		{
			struct $7ASTNODE* vr$8 = RTLOOPISTYPEOF( L$1, R$1 );
			fb$result$1 = vr$8;
			goto label$278;
		}
		label$288:;
		label$285:;
	}
	LDTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
	RDTYPE$1 = *(int64*)((uint8*)R$1 + 8ll);
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$290;
	TMP$140$1 = 24ll;
	goto label$638;
	label$290:;
	TMP$140$1 = LDTYPE$1 & 31ll;
	label$638:;
	LDCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$140$1 * 56ll));
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$291;
	TMP$141$1 = 24ll;
	goto label$639;
	label$291:;
	TMP$141$1 = RDTYPE$1 & 31ll;
	label$639:;
	RDCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$141$1 * 56ll));
	DO_PROMOTE$1 = -1ll;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$292;
	TMP$142$1 = 24ll;
	goto label$640;
	label$292:;
	TMP$142$1 = LDTYPE$1 & 31ll;
	label$640:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$293;
	TMP$143$1 = 24ll;
	goto label$641;
	label$293:;
	TMP$143$1 = RDTYPE$1 & 31ll;
	label$641:;
	if( ((int64)-(TMP$142$1 == 20ll) | (int64)-(TMP$143$1 == 20ll)) == 0ll ) goto label$295;
	{
		int64 TMP$144$2;
		if( (OPTIONS$1 & 8ll) == 0ll ) goto label$297;
		{
			goto label$278;
		}
		label$297:;
		label$296:;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$298;
		TMP$144$2 = 24ll;
		goto label$642;
		label$298:;
		TMP$144$2 = LDTYPE$1 & 31ll;
		label$642:;
		if( TMP$144$2 != 20ll ) goto label$300;
		{
			struct $7ASTNODE* vr$27 = HCONVERTUDT_L( OP$1, L$1, R$1, EX$1, OPTIONS$1 );
			fb$result$1 = vr$27;
			goto label$278;
		}
		goto label$299;
		label$300:;
		{
			struct $7ASTNODE* vr$28 = HCONVERTUDT_R( OP$1, L$1, R$1, EX$1, OPTIONS$1 );
			fb$result$1 = vr$28;
			goto label$278;
		}
		label$299:;
	}
	label$295:;
	label$294:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$302;
	{
		if( (OPTIONS$1 & 2ll) == 0ll ) goto label$304;
		{
			struct $7ASTNODE* vr$31 = HDOPOINTERARITH( OP$1, L$1, R$1, 0ll );
			fb$result$1 = vr$31;
			goto label$278;
		}
		goto label$303;
		label$304:;
		{
			int64 vr$32 = HCHECKPOINTER( OP$1, RDTYPE$1, RDCLASS$1 );
			if( vr$32 != 0ll ) goto label$306;
			{
				goto label$278;
			}
			label$306:;
			label$305:;
		}
		label$303:;
	}
	goto label$301;
	label$302:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$307;
	{
		if( (OPTIONS$1 & 4ll) == 0ll ) goto label$309;
		{
			struct $7ASTNODE* vr$35 = HDOPOINTERARITH( OP$1, R$1, L$1, -1ll );
			fb$result$1 = vr$35;
			goto label$278;
		}
		goto label$308;
		label$309:;
		{
			int64 vr$36 = HCHECKPOINTER( OP$1, LDTYPE$1, LDCLASS$1 );
			if( vr$36 != 0ll ) goto label$311;
			{
				goto label$278;
			}
			label$311:;
			label$310:;
		}
		label$308:;
	}
	label$307:;
	label$301:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$312;
	TMP$145$1 = 24ll;
	goto label$643;
	label$312:;
	TMP$145$1 = LDTYPE$1 & 31ll;
	label$643:;
	if( TMP$145$1 != 10ll ) goto label$314;
	{
		HCONVOPERAND( 8ll, &LDTYPE$1, &LDCLASS$1, &L$1 );
	}
	label$314:;
	label$313:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$315;
	TMP$146$1 = 24ll;
	goto label$644;
	label$315:;
	TMP$146$1 = RDTYPE$1 & 31ll;
	label$644:;
	if( TMP$146$1 != 10ll ) goto label$317;
	{
		HCONVOPERAND( 8ll, &RDTYPE$1, &RDCLASS$1, &R$1 );
	}
	label$317:;
	label$316:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$318;
	TMP$147$1 = 24ll;
	goto label$645;
	label$318:;
	TMP$147$1 = LDTYPE$1 & 31ll;
	label$645:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$319;
	TMP$148$1 = 24ll;
	goto label$646;
	label$319:;
	TMP$148$1 = RDTYPE$1 & 31ll;
	label$646:;
	if( ((int64)-(TMP$147$1 == 4ll) & (int64)-(TMP$148$1 == 4ll)) == 0ll ) goto label$321;
	{
		LDCLASS$1 = 2ll;
		RDCLASS$1 = LDCLASS$1;
	}
	label$321:;
	label$320:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$322;
	TMP$149$1 = 24ll;
	goto label$647;
	label$322:;
	TMP$149$1 = LDTYPE$1 & 31ll;
	label$647:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$323;
	TMP$150$1 = 24ll;
	goto label$648;
	label$323:;
	TMP$150$1 = RDTYPE$1 & 31ll;
	label$648:;
	if( ((int64)-(TMP$149$1 == 7ll) | (int64)-(TMP$150$1 == 7ll)) == 0ll ) goto label$325;
	{
		if( (LDTYPE$1 & 511ll) == (RDTYPE$1 & 511ll) ) goto label$327;
		{
			int64 TMP$151$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$328;
			TMP$151$3 = 24ll;
			goto label$649;
			label$328:;
			TMP$151$3 = LDTYPE$1 & 31ll;
			label$649:;
			if( TMP$151$3 != 7ll ) goto label$330;
			{
				int64 TMP$152$4;
				if( (RDTYPE$1 & 480ll) == 0ll ) goto label$331;
				TMP$152$4 = 24ll;
				goto label$650;
				label$331:;
				TMP$152$4 = RDTYPE$1 & 31ll;
				label$650:;
				IS_STR$1 = (int64)-(RDCLASS$1 == 2ll) | (int64)-(TMP$152$4 == 4ll);
			}
			goto label$329;
			label$330:;
			{
				int64 TMP$153$4;
				if( (LDTYPE$1 & 480ll) == 0ll ) goto label$332;
				TMP$153$4 = 24ll;
				goto label$651;
				label$332:;
				TMP$153$4 = LDTYPE$1 & 31ll;
				label$651:;
				IS_STR$1 = (int64)-(LDCLASS$1 == 2ll) | (int64)-(TMP$153$4 == 4ll);
			}
			label$329:;
		}
		goto label$326;
		label$327:;
		{
			IS_STR$1 = -1ll;
		}
		label$326:;
		if( IS_STR$1 == 0ll ) goto label$334;
		{
			LITSYM$1 = (struct $8FBSYMBOL*)0ull;
			{
				int64 TMP$154$4;
				int64 TMP$155$4;
				if( (LDTYPE$1 & 480ll) == 0ll ) goto label$335;
				TMP$154$4 = 24ll;
				goto label$652;
				label$335:;
				TMP$154$4 = LDTYPE$1 & 31ll;
				label$652:;
				TMP$155$4 = TMP$154$4;
				if( TMP$155$4 == 4ll ) goto label$338;
				label$339:;
				if( TMP$155$4 != 7ll ) goto label$337;
				label$338:;
				{
					struct $8FBSYMBOL* vr$77 = ASTGETSTRLITSYMBOL( L$1 );
					LITSYM$1 = vr$77;
					if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$341;
					{
						{
							if( RDTYPE$1 == 4ll ) goto label$344;
							label$345:;
							if( RDTYPE$1 != 7ll ) goto label$343;
							label$344:;
							{
								struct $8FBSYMBOL* vr$78 = ASTGETSTRLITSYMBOL( R$1 );
								LITSYM$1 = vr$78;
							}
							goto label$342;
							label$343:;
							{
								LITSYM$1 = (struct $8FBSYMBOL*)0ull;
							}
							label$346:;
							label$342:;
						}
					}
					label$341:;
					label$340:;
				}
				label$337:;
				label$336:;
			}
			if( OP$1 != 28ll ) goto label$348;
			{
				if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$350;
				{
					if( ((int64)-((LDTYPE$1 & 511ll) == (RDTYPE$1 & 511ll)) | *(int64*)((uint8*)&ENV$ + 576ll)) == 0ll ) goto label$352;
					{
						struct $7ASTNODE* vr$83 = HWSTRLITERALCONCAT( L$1, R$1 );
						fb$result$1 = vr$83;
						goto label$278;
					}
					label$352:;
					label$351:;
				}
				label$350:;
				label$349:;
				if( (LDTYPE$1 & 511ll) == (RDTYPE$1 & 511ll) ) goto label$354;
				{
					struct $7ASTNODE* vr$86 = RTLWSTRCONCAT( L$1, LDTYPE$1, R$1, RDTYPE$1 );
					fb$result$1 = vr$86;
					goto label$278;
				}
				label$354:;
				label$353:;
				LDTYPE$1 = ((LDTYPE$1 & -512ll) | 7ll) & -513ll;
				LDCLASS$1 = 0ll;
				RDTYPE$1 = (RDTYPE$1 & -512ll) | (LDTYPE$1 & 511ll);
				RDCLASS$1 = LDCLASS$1;
				IS_STR$1 = -1ll;
			}
			goto label$347;
			label$348:;
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 8ll) == 0ll ) goto label$355;
			{
				if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$357;
				{
					struct $7ASTNODE* vr$95 = HWSTRLITERALCOMPARE( OP$1, L$1, R$1 );
					fb$result$1 = vr$95;
					goto label$278;
				}
				label$357:;
				label$356:;
				struct $7ASTNODE* vr$96 = RTLWSTRCOMPARE( L$1, R$1 );
				L$1 = vr$96;
				struct $7ASTNODE* vr$97 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				R$1 = vr$97;
				LDTYPE$1 = (LDTYPE$1 & -512ll) | (*(int64*)((uint8*)L$1 + 8ll) & 511ll);
				RDTYPE$1 = (RDTYPE$1 & -512ll) | (*(int64*)((uint8*)R$1 + 8ll) & 511ll);
				LDCLASS$1 = 0ll;
				RDCLASS$1 = 0ll;
			}
			goto label$347;
			label$355:;
			{
				goto label$278;
			}
			label$347:;
		}
		goto label$333;
		label$334:;
		{
			int64 TMP$156$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$358;
			TMP$156$3 = 24ll;
			goto label$653;
			label$358:;
			TMP$156$3 = LDTYPE$1 & 31ll;
			label$653:;
			if( TMP$156$3 != 7ll ) goto label$360;
			{
				int64 vr$109 = HCHECKDEREFWCHARPTR( L$1, &LDTYPE$1, R$1, RDTYPE$1 );
				if( vr$109 != 0ll ) goto label$362;
				{
					goto label$278;
				}
				label$362:;
				label$361:;
			}
			goto label$359;
			label$360:;
			{
				int64 vr$111 = HCHECKDEREFWCHARPTR( R$1, &RDTYPE$1, L$1, LDTYPE$1 );
				if( vr$111 != 0ll ) goto label$364;
				{
					goto label$278;
				}
				label$364:;
				label$363:;
			}
			label$359:;
		}
		label$333:;
	}
	goto label$324;
	label$325:;
	if( ((int64)-(LDCLASS$1 == 2ll) | (int64)-(RDCLASS$1 == 2ll)) == 0ll ) goto label$365;
	{
		int64 TMP$159$2;
		if( LDCLASS$1 == RDCLASS$1 ) goto label$367;
		{
			if( LDCLASS$1 != 2ll ) goto label$369;
			{
				int64 TMP$157$4;
				if( (RDTYPE$1 & 480ll) == 0ll ) goto label$370;
				TMP$157$4 = 24ll;
				goto label$654;
				label$370:;
				TMP$157$4 = RDTYPE$1 & 31ll;
				label$654:;
				if( TMP$157$4 == 4ll ) goto label$372;
				{
					goto label$278;
				}
				label$372:;
				label$371:;
			}
			goto label$368;
			label$369:;
			{
				int64 TMP$158$4;
				if( (LDTYPE$1 & 480ll) == 0ll ) goto label$373;
				TMP$158$4 = 24ll;
				goto label$655;
				label$373:;
				TMP$158$4 = LDTYPE$1 & 31ll;
				label$655:;
				if( TMP$158$4 == 4ll ) goto label$375;
				{
					goto label$278;
				}
				label$375:;
				label$374:;
			}
			label$368:;
		}
		label$367:;
		label$366:;
		LITSYM$1 = (struct $8FBSYMBOL*)0ull;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$376;
		TMP$159$2 = 24ll;
		goto label$656;
		label$376:;
		TMP$159$2 = LDTYPE$1 & 31ll;
		label$656:;
		if( TMP$159$2 != 4ll ) goto label$378;
		{
			int64 TMP$160$3;
			if( (RDTYPE$1 & 480ll) == 0ll ) goto label$379;
			TMP$160$3 = 24ll;
			goto label$657;
			label$379:;
			TMP$160$3 = RDTYPE$1 & 31ll;
			label$657:;
			if( TMP$160$3 != 4ll ) goto label$381;
			{
				struct $8FBSYMBOL* vr$123 = ASTGETSTRLITSYMBOL( L$1 );
				LITSYM$1 = vr$123;
				if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$383;
				{
					struct $8FBSYMBOL* vr$124 = ASTGETSTRLITSYMBOL( R$1 );
					LITSYM$1 = vr$124;
				}
				label$383:;
				label$382:;
			}
			label$381:;
			label$380:;
		}
		label$378:;
		label$377:;
		if( OP$1 != 28ll ) goto label$385;
		{
			if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$387;
			{
				struct $7ASTNODE* vr$125 = HSTRLITERALCONCAT( L$1, R$1 );
				fb$result$1 = vr$125;
				goto label$278;
			}
			label$387:;
			label$386:;
			LDTYPE$1 = ((LDTYPE$1 & -512ll) | 17ll) & -513ll;
			LDCLASS$1 = 2ll;
			RDTYPE$1 = (RDTYPE$1 & -512ll) | (LDTYPE$1 & 511ll);
			RDCLASS$1 = LDCLASS$1;
			IS_STR$1 = -1ll;
		}
		goto label$384;
		label$385:;
		if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 8ll) == 0ll ) goto label$388;
		{
			if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$390;
			{
				struct $7ASTNODE* vr$134 = HSTRLITERALCOMPARE( OP$1, L$1, R$1 );
				fb$result$1 = vr$134;
				goto label$278;
			}
			label$390:;
			label$389:;
			struct $7ASTNODE* vr$135 = RTLSTRCOMPARE( L$1, LDTYPE$1, R$1, RDTYPE$1 );
			L$1 = vr$135;
			struct $7ASTNODE* vr$136 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			R$1 = vr$136;
			LDTYPE$1 = (LDTYPE$1 & -512ll) | (*(int64*)((uint8*)L$1 + 8ll) & 511ll);
			LDCLASS$1 = 0ll;
			RDTYPE$1 = (RDTYPE$1 & -512ll) | (*(int64*)((uint8*)R$1 + 8ll) & 511ll);
			RDCLASS$1 = 0ll;
		}
		goto label$384;
		label$388:;
		{
			goto label$278;
		}
		label$384:;
	}
	goto label$324;
	label$365:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$392;
	TMP$161$1 = 24ll;
	goto label$658;
	label$392:;
	TMP$161$1 = LDTYPE$1 & 31ll;
	label$658:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$393;
	TMP$162$1 = 24ll;
	goto label$659;
	label$393:;
	TMP$162$1 = RDTYPE$1 & 31ll;
	label$659:;
	if( ((int64)-(TMP$161$1 == 4ll) | (int64)-(TMP$162$1 == 4ll)) == 0ll ) goto label$391;
	{
		int64 TMP$163$2;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$394;
		TMP$163$2 = 24ll;
		goto label$660;
		label$394:;
		TMP$163$2 = LDTYPE$1 & 31ll;
		label$660:;
		if( TMP$163$2 != 4ll ) goto label$396;
		{
			if( *(int64*)L$1 == 20ll ) goto label$398;
			{
				goto label$278;
			}
			label$398:;
			label$397:;
			LDTYPE$1 = (LDTYPE$1 & -512ll) | 3ll;
		}
		goto label$395;
		label$396:;
		{
			if( *(int64*)R$1 == 20ll ) goto label$400;
			{
				goto label$278;
			}
			label$400:;
			label$399:;
			RDTYPE$1 = (RDTYPE$1 & -512ll) | 3ll;
		}
		label$395:;
	}
	label$391:;
	label$324:;
	int64 IS_BOOLEAN$1;
	IS_BOOLEAN$1 = 0ll;
	if( ((int64)-((LDTYPE$1 & 511ll) == 1ll) | (int64)-((RDTYPE$1 & 511ll) == 1ll)) == 0ll ) goto label$402;
	{
		{
			uint64 TMP$164$3;
			TMP$164$3 = (uint64)OP$1;
			goto label$404;
			label$405:;
			{
				IS_BOOLEAN$1 = (int64)-((LDTYPE$1 & 511ll) == (RDTYPE$1 & 511ll));
			}
			goto label$403;
			label$406:;
			{
				goto label$278;
			}
			goto label$403;
			label$404:;
			static const void* tmp$197[15ll] = {
				&&label$405,
				&&label$405,
				&&label$405,
				&&label$405,
				&&label$405,
				&&label$405,
				&&label$405,
				&&label$406,
				&&label$406,
				&&label$406,
				&&label$406,
				&&label$405,
				&&label$406,
				&&label$406,
				&&label$405,
			};
			if( (TMP$164$3 - 34ull) > 14ull ) goto label$406;
			goto *tmp$197[TMP$164$3 - 34ull];
			label$403:;
		}
		int64 vr$168 = HSHOULDWARNABOUTMIXEDBOOL( L$1, R$1 );
		if( vr$168 == 0ll ) goto label$408;
		{
			ERRREPORTWARN( 38ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		}
		label$408:;
		label$407:;
	}
	label$402:;
	label$401:;
	LDTYPE0$1 = LDTYPE$1;
	RDTYPE0$1 = RDTYPE$1;
	DO_PROMOTE$1 = ((int64)-(*(int64*)((uint8*)&ENV$ + 272ll) != 3ll) & ~IS_STR$1) & ~IS_BOOLEAN$1;
	if( DO_PROMOTE$1 == 0ll ) goto label$410;
	{
		INTRANK$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 472ll);
		UINTRANK$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 528ll);
		if( LDCLASS$1 != 0ll ) goto label$412;
		{
			int64 TMP$165$3;
			int64 TMP$166$3;
			int64 TMP$167$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$413;
			TMP$165$3 = 24ll;
			goto label$661;
			label$413:;
			TMP$165$3 = LDTYPE$1 & 31ll;
			label$661:;
			if( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$165$3 * 56ll)) + 32ll) & 480ll) == 0ll ) goto label$415;
			TMP$167$3 = 24ll;
			goto label$662;
			label$415:;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$414;
			TMP$166$3 = 24ll;
			goto label$663;
			label$414:;
			TMP$166$3 = LDTYPE$1 & 31ll;
			label$663:;
			TMP$167$3 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$166$3 * 56ll)) + 32ll) & 31ll;
			label$662:;
			LRANK$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$167$3 * 56ll)) + 24ll);
			if( LRANK$1 >= INTRANK$1 ) goto label$417;
			{
				HCONVOPERAND( 8ll, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			goto label$416;
			label$417:;
			{
				if( ((int64)-(INTRANK$1 < LRANK$1) & (int64)-(LRANK$1 < UINTRANK$1)) == 0ll ) goto label$419;
				{
					HCONVOPERAND( 9ll, &LDTYPE$1, &LDCLASS$1, &L$1 );
				}
				label$419:;
				label$418:;
			}
			label$416:;
		}
		label$412:;
		label$411:;
		if( RDCLASS$1 != 0ll ) goto label$421;
		{
			int64 TMP$168$3;
			int64 TMP$169$3;
			int64 TMP$170$3;
			if( (RDTYPE$1 & 480ll) == 0ll ) goto label$422;
			TMP$168$3 = 24ll;
			goto label$664;
			label$422:;
			TMP$168$3 = RDTYPE$1 & 31ll;
			label$664:;
			if( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$168$3 * 56ll)) + 32ll) & 480ll) == 0ll ) goto label$424;
			TMP$170$3 = 24ll;
			goto label$665;
			label$424:;
			if( (RDTYPE$1 & 480ll) == 0ll ) goto label$423;
			TMP$169$3 = 24ll;
			goto label$666;
			label$423:;
			TMP$169$3 = RDTYPE$1 & 31ll;
			label$666:;
			TMP$170$3 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$169$3 * 56ll)) + 32ll) & 31ll;
			label$665:;
			RRANK$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$170$3 * 56ll)) + 24ll);
			if( RRANK$1 >= INTRANK$1 ) goto label$426;
			{
				HCONVOPERAND( 8ll, &RDTYPE$1, &RDCLASS$1, &R$1 );
			}
			goto label$425;
			label$426:;
			{
				if( ((int64)-(INTRANK$1 < RRANK$1) & (int64)-(RRANK$1 < UINTRANK$1)) == 0ll ) goto label$428;
				{
					HCONVOPERAND( 9ll, &RDTYPE$1, &RDCLASS$1, &R$1 );
				}
				label$428:;
				label$427:;
			}
			label$425:;
		}
		label$421:;
		label$420:;
	}
	label$410:;
	label$409:;
	{
		uint64 TMP$171$2;
		TMP$171$2 = (uint64)OP$1;
		goto label$430;
		label$431:;
		{
			if( LDCLASS$1 == 1ll ) goto label$433;
			{
				HCONVOPERAND( 16ll, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			label$433:;
			label$432:;
			if( RDCLASS$1 == 1ll ) goto label$435;
			{
				RDTYPE$1 = (RDTYPE$1 & -512ll) | 16ll;
				if( (*(int64*)((uint8*)&IR$ + 544ll) & 1ll) == 0ll ) goto label$437;
				{
					struct $7ASTNODE* vr$216 = ASTNEWCONV( RDTYPE$1, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
					R$1 = vr$216;
				}
				goto label$436;
				label$437:;
				{
					if( ((int64)-(*(int64*)R$1 != 17ll) | (int64)-(RDTYPE$1 != 8ll)) == 0ll ) goto label$439;
					{
						struct $7ASTNODE* vr$221 = ASTNEWCONV( RDTYPE$1, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
						R$1 = vr$221;
					}
					label$439:;
					label$438:;
				}
				label$436:;
				RDCLASS$1 = 1ll;
			}
			label$435:;
			label$434:;
		}
		goto label$429;
		label$440:;
		{
			if( LDCLASS$1 == 0ll ) goto label$442;
			{
				int64 vr$225 = HGETINTEGERORBIGGER( RDTYPE$1 );
				HCONVOPERAND( vr$225, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			label$442:;
			label$441:;
			if( RDCLASS$1 == 0ll ) goto label$444;
			{
				int64 vr$229 = HGETINTEGERORBIGGER( LDTYPE$1 );
				HCONVOPERAND( vr$229, &RDTYPE$1, &RDCLASS$1, &R$1 );
			}
			label$444:;
			label$443:;
		}
		goto label$429;
		label$445:;
		{
			if( LDCLASS$1 == 1ll ) goto label$447;
			{
				HCONVOPERAND( 16ll, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			label$447:;
			label$446:;
			if( RDCLASS$1 == 1ll ) goto label$449;
			{
				HCONVOPERAND( 16ll, &RDTYPE$1, &RDCLASS$1, &R$1 );
			}
			label$449:;
			label$448:;
		}
		goto label$429;
		label$430:;
		static const void* tmp$198[34ll] = {
			&&label$431,
			&&label$440,
			&&label$440,
			&&label$440,
			&&label$440,
			&&label$429,
			&&label$429,
			&&label$440,
			&&label$440,
			&&label$440,
			&&label$440,
			&&label$440,
			&&label$445,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$429,
			&&label$445,
		};
		if( (TMP$171$2 - 31ull) > 33ull ) goto label$429;
		goto *tmp$198[TMP$171$2 - 31ull];
		label$429:;
	}
	if( ((int64)-(LDTYPE$1 != RDTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll))) == 0ll ) goto label$451;
	{
		if( (((int64)-((LDTYPE$1 & 480ll) != 0ll) | (int64)-((RDTYPE$1 & 480ll) != 0ll)) & ((int64)-(OP$1 == 28ll) | (int64)-(OP$1 == 29ll))) == 0ll ) goto label$453;
		{
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$455;
			{
				DTYPE$1 = LDTYPE$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
			}
			goto label$454;
			label$455:;
			{
				DTYPE$1 = RDTYPE$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll);
			}
			label$454:;
		}
		goto label$452;
		label$453:;
		{
			TYPEMAX( LDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), RDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll), &DTYPE$1, &SUBTYPE$1 );
			if( ((int64)-((DTYPE$1 & 511ll) != (LDTYPE$1 & 511ll)) | (int64)-(SUBTYPE$1 != *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll))) == 0ll ) goto label$457;
			{
				int64 TMP$172$4;
				struct $7ASTNODE* vr$263 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, L$1, 0ll, (int64*)0ull );
				L$1 = vr$263;
				if( L$1 != (struct $7ASTNODE*)0ull ) goto label$459;
				{
					goto label$278;
					label$459:;
				}
				LDTYPE$1 = DTYPE$1;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$460;
				TMP$172$4 = 24ll;
				goto label$667;
				label$460:;
				TMP$172$4 = DTYPE$1 & 31ll;
				label$667:;
				LDCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$172$4 * 56ll));
			}
			label$457:;
			label$456:;
			if( ((int64)-((DTYPE$1 & 511ll) != (RDTYPE$1 & 511ll)) | (int64)-(SUBTYPE$1 != *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll))) == 0ll ) goto label$462;
			{
				{
					if( OP$1 == 41ll ) goto label$465;
					label$466:;
					if( OP$1 != 42ll ) goto label$464;
					label$465:;
					{
					}
					goto label$463;
					label$464:;
					{
						int64 TMP$173$6;
						struct $7ASTNODE* vr$273 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, R$1, 0ll, (int64*)0ull );
						R$1 = vr$273;
						if( R$1 != (struct $7ASTNODE*)0ull ) goto label$469;
						{
							goto label$278;
							label$469:;
						}
						RDTYPE$1 = DTYPE$1;
						if( (DTYPE$1 & 480ll) == 0ll ) goto label$470;
						TMP$173$6 = 24ll;
						goto label$668;
						label$470:;
						TMP$173$6 = DTYPE$1 & 31ll;
						label$668:;
						RDCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$173$6 * 56ll));
					}
					label$467:;
					label$463:;
				}
			}
			label$462:;
			label$461:;
		}
		label$452:;
	}
	goto label$450;
	label$451:;
	{
		DTYPE$1 = LDTYPE$1;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
	}
	label$450:;
	{
		uint64 TMP$174$2;
		TMP$174$2 = (uint64)OP$1;
		goto label$472;
		label$473:;
		{
			int64 TMP$175$3;
			int64 TMP$177$3;
			int64 TMP$178$3;
			int64 TMP$179$3;
			$13FB_WARNINGMSG WARNING$3;
			WARNING$3 = 0ll;
			if( (LDTYPE0$1 & 480ll) == 0ll ) goto label$474;
			TMP$175$3 = 24ll;
			goto label$669;
			label$474:;
			TMP$175$3 = LDTYPE0$1 & 31ll;
			label$669:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$175$3 * 56ll)) + 16ll) == 0ll ) goto label$476;
			{
				int64 TMP$176$4;
				if( (LDTYPE$1 & 480ll) == 0ll ) goto label$477;
				TMP$176$4 = 24ll;
				goto label$670;
				label$477:;
				TMP$176$4 = LDTYPE$1 & 31ll;
				label$670:;
				if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$176$4 * 56ll)) + 16ll) != 0ll ) goto label$479;
				{
					if( *(int64*)L$1 != 16ll ) goto label$481;
					{
						int64 vr$285 = ASTCONSTGETASINT64( L$1 );
						if( vr$285 >= 0ll ) goto label$483;
						{
							WARNING$3 = 35ll;
						}
						label$483:;
						label$482:;
					}
					goto label$480;
					label$481:;
					{
						if( (*(int64*)((uint8*)&ENV$ + 400ll) & 32ll) == 0ll ) goto label$485;
						{
							WARNING$3 = 35ll;
						}
						label$485:;
						label$484:;
					}
					label$480:;
				}
				label$479:;
				label$478:;
			}
			label$476:;
			label$475:;
			if( WARNING$3 != 0ll ) goto label$486;
			TMP$177$3 = (int64)-(OP$1 != 42ll);
			goto label$671;
			label$486:;
			TMP$177$3 = 0ll;
			label$671:;
			if( TMP$177$3 == 0ll ) goto label$488;
			if( (RDTYPE0$1 & 480ll) == 0ll ) goto label$487;
			TMP$178$3 = 24ll;
			goto label$673;
			label$487:;
			TMP$178$3 = RDTYPE0$1 & 31ll;
			label$673:;
			TMP$179$3 = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$178$3 * 56ll)) + 16ll) != 0ll);
			goto label$672;
			label$488:;
			TMP$179$3 = 0ll;
			label$672:;
			if( TMP$179$3 == 0ll ) goto label$490;
			{
				int64 TMP$180$4;
				if( (RDTYPE$1 & 480ll) == 0ll ) goto label$491;
				TMP$180$4 = 24ll;
				goto label$674;
				label$491:;
				TMP$180$4 = RDTYPE$1 & 31ll;
				label$674:;
				if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$180$4 * 56ll)) + 16ll) != 0ll ) goto label$493;
				{
					if( *(int64*)R$1 != 16ll ) goto label$495;
					{
						int64 vr$296 = ASTCONSTGETASINT64( R$1 );
						if( vr$296 >= 0ll ) goto label$497;
						{
							WARNING$3 = 35ll;
						}
						label$497:;
						label$496:;
					}
					goto label$494;
					label$495:;
					{
						if( (*(int64*)((uint8*)&ENV$ + 400ll) & 32ll) == 0ll ) goto label$499;
						{
							WARNING$3 = 35ll;
						}
						label$499:;
						label$498:;
					}
					label$494:;
				}
				label$493:;
				label$492:;
			}
			label$490:;
			label$489:;
			if( WARNING$3 == 0ll ) goto label$501;
			{
				ERRREPORTWARN( WARNING$3, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			label$501:;
			label$500:;
		}
		goto label$471;
		label$472:;
		static const void* tmp$199[19ll] = {
			&&label$473,
			&&label$473,
			&&label$471,
			&&label$471,
			&&label$471,
			&&label$471,
			&&label$471,
			&&label$471,
			&&label$471,
			&&label$471,
			&&label$473,
			&&label$471,
			&&label$471,
			&&label$473,
			&&label$473,
			&&label$473,
			&&label$473,
			&&label$473,
			&&label$473,
		};
		if( (TMP$174$2 - 32ull) > 18ull ) goto label$471;
		goto *tmp$199[TMP$174$2 - 32ull];
		label$471:;
	}
	{
		uint64 TMP$181$2;
		TMP$181$2 = (uint64)OP$1;
		goto label$503;
		label$504:;
		{
			if( (DTYPE$1 & 511ll) == 1ll ) goto label$506;
			{
				DTYPE$1 = 8ll;
			}
			label$506:;
			label$505:;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
		}
		goto label$502;
		label$507:;
		{
			if( *(int64*)R$1 != 16ll ) goto label$509;
			{
				int64 TMP$182$4;
				if( (LDTYPE$1 & 480ll) == 0ll ) goto label$510;
				TMP$182$4 = 24ll;
				goto label$675;
				label$510:;
				TMP$182$4 = LDTYPE$1 & 31ll;
				label$675:;
				if( *(uint64*)((uint8*)R$1 + 40ll) < (uint64)(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$182$4 * 56ll)) + 8ll) << (3ll & 63ll)) ) goto label$512;
				{
					int64 TMP$183$5;
					ERRREPORTWARN( 33ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					if( (LDTYPE$1 & 480ll) == 0ll ) goto label$513;
					TMP$183$5 = 24ll;
					goto label$676;
					label$513:;
					TMP$183$5 = LDTYPE$1 & 31ll;
					label$676:;
					struct $7ASTNODE* vr$310 = ASTNEWCONSTI( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$183$5 * 56ll)) + 8ll) << (3ll & 63ll)) + -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
					struct $7ASTNODE* vr$311 = ASTNEWBOP( 34ll, R$1, vr$310, (struct $8FBSYMBOL*)0ull, 1ll );
					R$1 = vr$311;
				}
				label$512:;
				label$511:;
			}
			label$509:;
			label$508:;
			if( (RDTYPE$1 & 511ll) == 8ll ) goto label$515;
			{
				if( (RDTYPE$1 & 511ll) == 9ll ) goto label$517;
				{
					RDTYPE$1 = (RDTYPE$1 & -512ll) | 8ll;
					struct $7ASTNODE* vr$316 = ASTNEWCONV( RDTYPE$1, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
					R$1 = vr$316;
					RDCLASS$1 = 0ll;
				}
				label$517:;
				label$516:;
			}
			label$515:;
			label$514:;
		}
		goto label$502;
		label$503:;
		static const void* tmp$200[15ll] = {
			&&label$504,
			&&label$504,
			&&label$502,
			&&label$502,
			&&label$502,
			&&label$507,
			&&label$507,
			&&label$502,
			&&label$502,
			&&label$504,
			&&label$504,
			&&label$504,
			&&label$504,
			&&label$504,
			&&label$504,
		};
		if( (TMP$181$2 - 36ull) > 14ull ) goto label$502;
		goto *tmp$200[TMP$181$2 - 36ull];
		label$502:;
	}
	if( ((int64)-(*(int64*)L$1 == 16ll) & (int64)-(*(int64*)R$1 == 16ll)) == 0ll ) goto label$519;
	{
		struct $7ASTNODE* vr$322 = HCONSTBOP( OP$1, DTYPE$1, SUBTYPE$1, L$1, R$1 );
		L$1 = vr$322;
		*(int64*)((uint8*)L$1 + 8ll) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = SUBTYPE$1;
		ASTDELNODE( R$1 );
		fb$result$1 = L$1;
		goto label$278;
	}
	label$519:;
	label$518:;
	if( *(int64*)L$1 != 16ll ) goto label$521;
	{
		int64 DO_SWAP$2;
		DO_SWAP$2 = 0ll;
		{
			if( OP$1 == 28ll ) goto label$524;
			label$525:;
			if( OP$1 == 30ll ) goto label$524;
			label$526:;
			if( OP$1 == 34ll ) goto label$524;
			label$527:;
			if( OP$1 == 35ll ) goto label$524;
			label$528:;
			if( OP$1 == 38ll ) goto label$524;
			label$529:;
			if( OP$1 == 39ll ) goto label$524;
			label$530:;
			if( OP$1 == 45ll ) goto label$524;
			label$531:;
			if( OP$1 != 48ll ) goto label$523;
			label$524:;
			{
				DO_SWAP$2 = -1ll;
			}
			goto label$522;
			label$523:;
			if( OP$1 != 49ll ) goto label$532;
			label$533:;
			{
				OP$1 = 50ll;
				DO_SWAP$2 = -1ll;
			}
			goto label$522;
			label$532:;
			if( OP$1 != 46ll ) goto label$534;
			label$535:;
			{
				OP$1 = 47ll;
				DO_SWAP$2 = -1ll;
			}
			goto label$522;
			label$534:;
			if( OP$1 != 50ll ) goto label$536;
			label$537:;
			{
				OP$1 = 49ll;
				DO_SWAP$2 = -1ll;
			}
			goto label$522;
			label$536:;
			if( OP$1 != 47ll ) goto label$538;
			label$539:;
			{
				OP$1 = 46ll;
				DO_SWAP$2 = -1ll;
			}
			goto label$522;
			label$538:;
			if( OP$1 != 29ll ) goto label$540;
			label$541:;
			{
				*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + 1ll;
				struct $7ASTNODE* vr$327 = ASTNEWUOP( 54ll, R$1 );
				R$1 = vr$327;
				*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + -1ll;
				if( R$1 != (struct $7ASTNODE*)0ull ) goto label$543;
				{
					fb$result$1 = (struct $7ASTNODE*)0ull;
					goto label$278;
				}
				label$543:;
				label$542:;
				OP$1 = 28ll;
				DO_SWAP$2 = -1ll;
			}
			label$540:;
			label$522:;
		}
		if( DO_SWAP$2 == 0ll ) goto label$545;
		{
			{
				int64 TMP$184$4;
				TMP$184$4 = LDTYPE$1;
				LDTYPE$1 = RDTYPE$1;
				RDTYPE$1 = TMP$184$4;
			}
			{
				int64 TMP$185$4;
				TMP$185$4 = LDCLASS$1;
				LDCLASS$1 = RDCLASS$1;
				RDCLASS$1 = TMP$185$4;
			}
			{
				struct $7ASTNODE* TMP$186$4;
				TMP$186$4 = L$1;
				L$1 = R$1;
				R$1 = TMP$186$4;
			}
		}
		label$545:;
		label$544:;
	}
	label$521:;
	label$520:;
	if( *(int64*)R$1 != 16ll ) goto label$547;
	{
		{
			if( OP$1 != 48ll ) goto label$549;
			label$550:;
			{
				if( ((int64)-(LDCLASS$1 == 0ll) & (int64)-(RDCLASS$1 == 0ll)) == 0ll ) goto label$552;
				{
					if( *(int64*)((uint8*)R$1 + 40ll) != 0ll ) goto label$554;
					{
						int64 vr$334 = ASTISRELATIONALBOP( L$1 );
						if( vr$334 == 0ll ) goto label$556;
						{
							ASTDELNODE( R$1 );
							fb$result$1 = L$1;
							goto label$278;
						}
						label$556:;
						label$555:;
					}
					label$554:;
					label$553:;
				}
				label$552:;
				label$551:;
			}
			goto label$548;
			label$549:;
			if( OP$1 != 45ll ) goto label$557;
			label$558:;
			{
				if( ((int64)-(LDCLASS$1 == 0ll) & (int64)-(RDCLASS$1 == 0ll)) == 0ll ) goto label$560;
				{
					if( *(int64*)((uint8*)R$1 + 40ll) != 0ll ) goto label$562;
					{
						int64 vr$339 = ASTISRELATIONALBOP( L$1 );
						if( vr$339 == 0ll ) goto label$564;
						{
							int64 vr$341 = ASTGETINVERSELOGOP( *(int64*)((uint8*)L$1 + 40ll) );
							*(int64*)((uint8*)L$1 + 40ll) = vr$341;
							ASTDELNODE( R$1 );
							fb$result$1 = L$1;
							goto label$278;
						}
						label$564:;
						label$563:;
					}
					label$562:;
					label$561:;
				}
				label$560:;
				label$559:;
			}
			goto label$548;
			label$557:;
			if( OP$1 != 28ll ) goto label$565;
			label$566:;
			{
				{
					$13AST_NODECLASS TMP$187$5;
					TMP$187$5 = *($13AST_NODECLASS*)L$1;
					if( TMP$187$5 != 23ll ) goto label$568;
					label$569:;
					{
						*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) + *(int64*)((uint8*)R$1 + 40ll);
						ASTDELNODE( R$1 );
						fb$result$1 = L$1;
						goto label$278;
					}
					goto label$567;
					label$568:;
					if( TMP$187$5 != 6ll ) goto label$570;
					label$571:;
					{
						int64 vr$350 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll), *(int64*)((uint8*)R$1 + 40ll) );
						if( vr$350 == 0ll ) goto label$573;
						{
							ASTDELNODE( R$1 );
							fb$result$1 = L$1;
							goto label$278;
						}
						label$573:;
						label$572:;
					}
					label$570:;
					label$567:;
				}
			}
			goto label$548;
			label$565:;
			if( OP$1 != 29ll ) goto label$574;
			label$575:;
			{
				{
					$13AST_NODECLASS TMP$188$5;
					TMP$188$5 = *($13AST_NODECLASS*)L$1;
					if( TMP$188$5 != 23ll ) goto label$577;
					label$578:;
					{
						*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) - *(int64*)((uint8*)R$1 + 40ll);
						ASTDELNODE( R$1 );
						fb$result$1 = L$1;
						goto label$278;
					}
					goto label$576;
					label$577:;
					if( TMP$188$5 != 6ll ) goto label$579;
					label$580:;
					{
						int64 vr$359 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll), -(*(int64*)((uint8*)R$1 + 40ll)) );
						if( vr$359 == 0ll ) goto label$582;
						{
							ASTDELNODE( R$1 );
							fb$result$1 = L$1;
							goto label$278;
						}
						label$582:;
						label$581:;
					}
					label$579:;
					label$576:;
				}
				*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + 1ll;
				struct $7ASTNODE* vr$361 = ASTNEWUOP( 54ll, R$1 );
				R$1 = vr$361;
				*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + -1ll;
				OP$1 = 28ll;
			}
			goto label$548;
			label$574:;
			if( OP$1 == 32ll ) goto label$584;
			label$585:;
			if( OP$1 != 33ll ) goto label$583;
			label$584:;
			{
				if( *(int64*)((uint8*)R$1 + 40ll) != 0ll ) goto label$587;
				{
					ERRREPORT( 100ll, 0ll, (uint8*)0ull );
				}
				label$587:;
				label$586:;
			}
			goto label$548;
			label$583:;
			if( OP$1 != 43ll ) goto label$588;
			label$589:;
			{
				if( *(double*)((uint8*)R$1 + 40ll) != 0x1.p+1 ) goto label$591;
				{
					if( *(int64*)L$1 != 5ll ) goto label$593;
					{
						{
							$13AST_NODECLASS TMP$189$7;
							TMP$189$7 = *($13AST_NODECLASS*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
							if( TMP$189$7 == 17ll ) goto label$596;
							label$597:;
							if( TMP$189$7 == 18ll ) goto label$596;
							label$598:;
							if( TMP$189$7 == 19ll ) goto label$596;
							label$599:;
							if( TMP$189$7 != 20ll ) goto label$595;
							label$596:;
							{
								N$1 = L$1;
								L$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
								ASTDELNODE( N$1 );
								LDTYPE$1 = (LDTYPE$1 & -512ll) | (*(int64*)((uint8*)L$1 + 8ll) & 511ll);
							}
							label$595:;
							label$594:;
						}
					}
					label$593:;
					label$592:;
					{
						$13AST_NODECLASS TMP$190$6;
						TMP$190$6 = *($13AST_NODECLASS*)L$1;
						if( TMP$190$6 == 17ll ) goto label$602;
						label$603:;
						if( TMP$190$6 == 18ll ) goto label$602;
						label$604:;
						if( TMP$190$6 == 19ll ) goto label$602;
						label$605:;
						if( TMP$190$6 != 20ll ) goto label$601;
						label$602:;
						{
							int64 vr$374 = ASTHASSIDEFX( L$1 );
							if( vr$374 != 0ll ) goto label$607;
							{
								int64 TMP$191$8;
								if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$608;
								TMP$191$8 = 24ll;
								goto label$677;
								label$608:;
								TMP$191$8 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
								label$677:;
								if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$191$8 * 56ll)) == 1ll ) goto label$610;
								{
									struct $7ASTNODE* vr$382 = ASTNEWCONV( 16ll, (struct $8FBSYMBOL*)0ull, L$1, 0ll, (int64*)0ull );
									L$1 = vr$382;
								}
								label$610:;
								label$609:;
								ASTDELNODE( R$1 );
								struct $7ASTNODE* vr$383 = ASTCLONETREE( L$1 );
								R$1 = vr$383;
								OP$1 = 30ll;
							}
							label$607:;
							label$606:;
						}
						label$601:;
						label$600:;
					}
				}
				label$591:;
				label$590:;
			}
			label$588:;
			label$548:;
		}
	}
	label$547:;
	label$546:;
	{
		uint64 TMP$192$2;
		TMP$192$2 = (uint64)OP$1;
		goto label$612;
		label$613:;
		{
			struct $7ASTNODE* vr$384 = RTLMATHPOW( L$1, R$1 );
			fb$result$1 = vr$384;
			goto label$278;
		}
		goto label$611;
		label$614:;
		{
			if( (*(int64*)((uint8*)&IR$ + 544ll) & 131072ll) == 0ll ) goto label$616;
			{
				struct $7ASTNODE* vr$386 = RTLMATHBOP( OP$1, L$1, R$1 );
				fb$result$1 = vr$386;
				goto label$278;
			}
			label$616:;
			label$615:;
		}
		goto label$611;
		label$617:;
		{
			{
				int64 TMP$193$4;
				int64 TMP$194$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$618;
				TMP$193$4 = 24ll;
				goto label$678;
				label$618:;
				TMP$193$4 = DTYPE$1 & 31ll;
				label$678:;
				TMP$194$4 = TMP$193$4;
				if( TMP$194$4 == 13ll ) goto label$621;
				label$622:;
				if( TMP$194$4 != 14ll ) goto label$620;
				label$621:;
				{
					struct $7ASTNODE* vr$389 = RTLMATHLONGINTDIV( DTYPE$1, L$1, LDTYPE$1, R$1, RDTYPE$1 );
					fb$result$1 = vr$389;
					goto label$278;
				}
				label$620:;
				label$619:;
			}
		}
		goto label$611;
		label$623:;
		{
			{
				int64 TMP$195$4;
				int64 TMP$196$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$624;
				TMP$195$4 = 24ll;
				goto label$679;
				label$624:;
				TMP$195$4 = DTYPE$1 & 31ll;
				label$679:;
				TMP$196$4 = TMP$195$4;
				if( TMP$196$4 == 13ll ) goto label$627;
				label$628:;
				if( TMP$196$4 != 14ll ) goto label$626;
				label$627:;
				{
					struct $7ASTNODE* vr$392 = RTLMATHLONGINTMOD( DTYPE$1, L$1, LDTYPE$1, R$1, RDTYPE$1 );
					fb$result$1 = vr$392;
					goto label$278;
				}
				label$626:;
				label$625:;
			}
		}
		goto label$611;
		label$629:;
		{
			int64 CMP_OP$3;
			__builtin_memset( &CMP_OP$3, 0, 8ll );
			struct $7ASTNODE* CMP_CONSTL$3;
			__builtin_memset( &CMP_CONSTL$3, 0, 8ll );
			struct $7ASTNODE* CMP_CONSTR$3;
			__builtin_memset( &CMP_CONSTR$3, 0, 8ll );
			if( LDCLASS$1 != 1ll ) goto label$631;
			{
				struct $7ASTNODE* vr$396 = ASTNEWCONSTF( 0x0p+0, 15ll );
				CMP_CONSTL$3 = vr$396;
				struct $7ASTNODE* vr$397 = ASTNEWCONSTF( 0x0p+0, 15ll );
				CMP_CONSTR$3 = vr$397;
			}
			goto label$630;
			label$631:;
			{
				struct $7ASTNODE* vr$398 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
				CMP_CONSTL$3 = vr$398;
				struct $7ASTNODE* vr$399 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
				CMP_CONSTR$3 = vr$399;
			}
			label$630:;
			if( OP$1 != 36ll ) goto label$633;
			{
				CMP_OP$3 = 48ll;
			}
			goto label$632;
			label$633:;
			{
				CMP_OP$3 = 45ll;
			}
			label$632:;
			struct $7ASTNODE* vr$400 = ASTNEWBOP( CMP_OP$3, L$1, CMP_CONSTL$3, (struct $8FBSYMBOL*)0ull, 1ll );
			L$1 = vr$400;
			struct $7ASTNODE* vr$401 = ASTNEWBOP( 48ll, R$1, CMP_CONSTR$3, (struct $8FBSYMBOL*)0ull, 1ll );
			R$1 = vr$401;
			if( OP$1 != 36ll ) goto label$635;
			{
				struct $7ASTNODE* vr$402 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$403 = ASTNEWIIF( L$1, R$1, (int64)EX$1, vr$402, 0ll );
				fb$result$1 = vr$403;
				goto label$278;
			}
			goto label$634;
			label$635:;
			{
				struct $7ASTNODE* vr$404 = ASTNEWCONSTI( -1ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$405 = ASTNEWIIF( L$1, R$1, (int64)EX$1, vr$404, 0ll );
				fb$result$1 = vr$405;
				goto label$278;
			}
			label$634:;
		}
		goto label$611;
		label$612:;
		static const void* tmp$201[33ll] = {
			&&label$617,
			&&label$623,
			&&label$611,
			&&label$611,
			&&label$629,
			&&label$629,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$613,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$611,
			&&label$614,
		};
		if( (TMP$192$2 - 32ull) > 32ull ) goto label$611;
		goto *tmp$201[TMP$192$2 - 32ull];
		label$611:;
	}
	struct $7ASTNODE* vr$406 = ASTNEWNODE( 3ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$406;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = R$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = EX$1;
	*(int64*)((uint8*)N$1 + 40ll) = OP$1;
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$637;
	{
		OPTIONS$1 = OPTIONS$1 | 1ll;
	}
	label$637:;
	label$636:;
	*($9AST_OPOPT*)((uint8*)N$1 + 48ll) = OPTIONS$1;
	fb$result$1 = N$1;
	label$278:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWSELFBOP( int64 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$680:;
	struct $7ASTNODE* T$1;
	struct $8FBSYMBOL* PROC$1;
	$9FB_ERRMSG ERR_NUM$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBFINDSELFBOPOVLPROC( OP$1, L$1, R$1, &ERR_NUM$1 );
	PROC$1 = vr$2;
	if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$683;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDCALL( PROC$1, L$1, R$1, (struct $7ASTNODE*)0ull );
		fb$result$1 = vr$3;
		goto label$681;
	}
	label$683:;
	label$682:;
	if( ERR_NUM$1 == 0ll ) goto label$685;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$681;
	}
	label$685:;
	label$684:;
	T$1 = (struct $7ASTNODE*)0ull;
	int64 vr$4 = ASTHASSIDEFX( L$1 );
	if( vr$4 == 0ll ) goto label$687;
	{
		struct $7ASTNODE* vr$6 = ASTMAKEREF( &L$1 );
		struct $7ASTNODE* vr$7 = ASTNEWLINK( T$1, vr$6, 0ll );
		T$1 = vr$7;
	}
	label$687:;
	label$686:;
	struct $7ASTNODE* vr$9 = ASTCLONETREE( L$1 );
	struct $7ASTNODE* vr$11 = ASTNEWBOP( *(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 24ll), vr$9, R$1, EX$1, OPTIONS$1 | 1ll );
	R$1 = vr$11;
	if( R$1 != (struct $7ASTNODE*)0ull ) goto label$689;
	{
		ASTDELTREE( T$1 );
		goto label$681;
	}
	label$689:;
	label$688:;
	struct $7ASTNODE* vr$12 = ASTNEWASSIGN( L$1, R$1, 0ll );
	L$1 = vr$12;
	if( L$1 != (struct $7ASTNODE*)0ull ) goto label$691;
	{
		ASTDELTREE( T$1 );
		goto label$681;
	}
	label$691:;
	label$690:;
	struct $7ASTNODE* vr$13 = ASTNEWLINK( T$1, L$1, 0ll );
	T$1 = vr$13;
	fb$result$1 = T$1;
	label$681:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADBOP( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$692:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 OP$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* V2$1;
	struct $6IRVREG* VR$1;
	OP$1 = *(int64*)((uint8*)N$1 + 40ll);
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( ((int64)-(L$1 == (struct $7ASTNODE*)0ull) | (int64)-(R$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$695;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$693;
	}
	label$695:;
	label$694:;
	if( *(int64*)L$1 != 5ll ) goto label$697;
	{
		ASTUPDATECONVFD2FS( L$1, *(int64*)((uint8*)N$1 + 8ll), -1ll );
	}
	label$697:;
	label$696:;
	if( *(int64*)R$1 != 5ll ) goto label$699;
	{
		ASTUPDATECONVFD2FS( R$1, *(int64*)((uint8*)N$1 + 8ll), -1ll );
	}
	label$699:;
	label$698:;
	struct $6IRVREG* vr$11 = ASTLOAD( L$1 );
	V1$1 = vr$11;
	struct $6IRVREG* vr$12 = ASTLOAD( R$1 );
	V2$1 = vr$12;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$701;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$703;
		{
			VR$1 = (struct $6IRVREG*)0ull;
			(*(tmp$51*)((uint8*)&IR$ + 184ll))( OP$1, V1$1, V2$1, (struct $6IRVREG*)0ull, *(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) );
		}
		goto label$702;
		label$703:;
		{
			if( (*(int64*)((uint8*)N$1 + 48ll) & 1ll) == 0ll ) goto label$705;
			{
				struct $6IRVREG* vr$20 = (*(tmp$69*)((uint8*)&IR$ + 448ll))( *(int64*)((uint8*)N$1 + 8ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
				VR$1 = vr$20;
				*(int64*)((uint8*)VR$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
			}
			goto label$704;
			label$705:;
			{
				VR$1 = (struct $6IRVREG*)0ull;
				*(int64*)((uint8*)V1$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
			}
			label$704:;
			(*(tmp$51*)((uint8*)&IR$ + 184ll))( OP$1, V1$1, V2$1, VR$1, (struct $8FBSYMBOL*)0ull );
			if( VR$1 != (struct $6IRVREG*)0ull ) goto label$707;
			{
				VR$1 = V1$1;
			}
			label$707:;
			label$706:;
		}
		label$702:;
	}
	label$701:;
	label$700:;
	ASTDELNODE( L$1 );
	ASTDELNODE( R$1 );
	fb$result$1 = VR$1;
	label$693:;
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

static struct $7ASTNODE* HSTRLITERALCONCAT( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	FBSTRING TMP$84$1;
	FBSTRING TMP$85$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* LS$1;
	struct $8FBSYMBOL* RS$1;
	LS$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
	RS$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll);
	__builtin_memset( &TMP$85$1, 0, 24ll );
	__builtin_memset( &TMP$84$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$84$1, *(void**)((uint8*)LS$1 + 96ll), 0ll, *(void**)((uint8*)RS$1 + 96ll), 0ll );
	fb_StrAssign( (void*)&TMP$85$1, -1ll, (void*)vr$12, -1ll, 0 );
	struct $8FBSYMBOL* vr$14 = SYMBALLOCSTRCONST( (uint8*)*(uint8**)&TMP$85$1, (*(int64*)((uint8*)LS$1 + 80ll) + *(int64*)((uint8*)RS$1 + 80ll)) + -2ll );
	S$1 = vr$14;
	fb_StrDelete( (FBSTRING*)&TMP$85$1 );
	struct $7ASTNODE* vr$16 = ASTNEWVAR( S$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$16;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HWSTRLITERALCONCAT( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$12:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* LS$1;
	struct $8FBSYMBOL* RS$1;
	LS$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
	RS$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll);
	if( (*(int64*)((uint8*)LS$1 + 56ll) & 511ll) == 7ll ) goto label$15;
	{
		uint16* TMP$86$2;
		uint16* TMP$87$2;
		uint16* vr$12 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)LS$1 + 96ll) );
		TMP$86$2 = vr$12;
		uint16* vr$13 = fb_WstrConcat( (uint16*)TMP$86$2, (uint16*)*(uint16**)((uint8*)RS$1 + 96ll) );
		TMP$87$2 = vr$13;
		struct $8FBSYMBOL* vr$14 = SYMBALLOCWSTRCONST( TMP$87$2, (*(int64*)((uint8*)LS$1 + 80ll) + (*(int64*)((uint8*)RS$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll))) + -2ll );
		S$1 = vr$14;
		fb_WstrDelete( (uint16*)TMP$87$2 );
		fb_WstrDelete( (uint16*)TMP$86$2 );
	}
	goto label$14;
	label$15:;
	if( (*(int64*)((uint8*)RS$1 + 56ll) & 511ll) == 7ll ) goto label$16;
	{
		uint16* TMP$88$2;
		uint16* TMP$89$2;
		uint16* vr$23 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)RS$1 + 96ll) );
		TMP$88$2 = vr$23;
		uint16* vr$25 = fb_WstrConcat( (uint16*)*(uint16**)((uint8*)LS$1 + 96ll), (uint16*)TMP$88$2 );
		TMP$89$2 = vr$25;
		struct $8FBSYMBOL* vr$26 = SYMBALLOCWSTRCONST( TMP$89$2, ((*(int64*)((uint8*)LS$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + *(int64*)((uint8*)RS$1 + 80ll)) + -2ll );
		S$1 = vr$26;
		fb_WstrDelete( (uint16*)TMP$89$2 );
		fb_WstrDelete( (uint16*)TMP$88$2 );
	}
	goto label$14;
	label$16:;
	{
		uint16* TMP$90$2;
		uint16* vr$35 = fb_WstrConcat( (uint16*)*(uint16**)((uint8*)LS$1 + 96ll), (uint16*)*(uint16**)((uint8*)RS$1 + 96ll) );
		TMP$90$2 = vr$35;
		struct $8FBSYMBOL* vr$36 = SYMBALLOCWSTRCONST( TMP$90$2, ((*(int64*)((uint8*)LS$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + (*(int64*)((uint8*)RS$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll))) + -2ll );
		S$1 = vr$36;
		fb_WstrDelete( (uint16*)TMP$90$2 );
	}
	label$14:;
	struct $7ASTNODE* vr$37 = ASTNEWVAR( S$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$37;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$13:;
	return fb$result$1;
}

static struct $7ASTNODE* HSTRLITERALCOMPARE( int64 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int64 TMP$91$1;
	int64 TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$17:;
	static struct $8DZSTRING LTEXT$1;
	static struct $8DZSTRING RTEXT$1;
	int64 RES$1;
	TMP$91$1 = 0ll;
	uint8* vr$4 = HUNESCAPE( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll) + 96ll), &TMP$91$1 );
	DZSTRASSIGN( &LTEXT$1, (uint8*)vr$4 );
	TMP$92$1 = 0ll;
	uint8* vr$8 = HUNESCAPE( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 96ll), &TMP$92$1 );
	DZSTRASSIGN( &RTEXT$1, (uint8*)vr$8 );
	{
		uint64 TMP$93$2;
		TMP$93$2 = (uint64)OP$1;
		goto label$20;
		label$21:;
		{
			int32 vr$9 = fb_StrCompare( *(void**)&LTEXT$1, 0ll, *(void**)&RTEXT$1, 0ll );
			RES$1 = (int64)-((int64)vr$9 == 0ll);
		}
		goto label$19;
		label$22:;
		{
			int32 vr$12 = fb_StrCompare( *(void**)&LTEXT$1, 0ll, *(void**)&RTEXT$1, 0ll );
			RES$1 = (int64)-((int64)vr$12 > 0ll);
		}
		goto label$19;
		label$23:;
		{
			int32 vr$15 = fb_StrCompare( *(void**)&LTEXT$1, 0ll, *(void**)&RTEXT$1, 0ll );
			RES$1 = (int64)-((int64)vr$15 < 0ll);
		}
		goto label$19;
		label$24:;
		{
			int32 vr$18 = fb_StrCompare( *(void**)&LTEXT$1, 0ll, *(void**)&RTEXT$1, 0ll );
			RES$1 = (int64)-((int64)vr$18 != 0ll);
		}
		goto label$19;
		label$25:;
		{
			int32 vr$21 = fb_StrCompare( *(void**)&LTEXT$1, 0ll, *(void**)&RTEXT$1, 0ll );
			RES$1 = (int64)-((int64)vr$21 <= 0ll);
		}
		goto label$19;
		label$26:;
		{
			int32 vr$24 = fb_StrCompare( *(void**)&LTEXT$1, 0ll, *(void**)&RTEXT$1, 0ll );
			RES$1 = (int64)-((int64)vr$24 >= 0ll);
		}
		goto label$19;
		label$20:;
		static const void* tmp$202[6ll] = {
			&&label$21,
			&&label$22,
			&&label$23,
			&&label$24,
			&&label$26,
			&&label$25,
		};
		if( (TMP$93$2 - 45ull) > 5ull ) goto label$19;
		goto *tmp$202[TMP$93$2 - 45ull];
		label$19:;
	}
	struct $7ASTNODE* vr$27 = ASTNEWCONSTI( RES$1, 8ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$27;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$18:;
	return fb$result$1;
}

static struct $7ASTNODE* HWSTRLITERALCOMPARE( int64 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$27:;
	struct $8FBSYMBOL* LS$1;
	struct $8FBSYMBOL* RS$1;
	static struct $8DZSTRING TEXTZ$1;
	static struct $8DWSTRING LTEXTW$1;
	static struct $8DWSTRING RTEXTW$1;
	int64 RES$1;
	LS$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
	RS$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll);
	if( (*(int64*)((uint8*)LS$1 + 56ll) & 511ll) == 7ll ) goto label$30;
	{
		int64 TMP$94$2;
		int64 TMP$95$2;
		TMP$94$2 = 0ll;
		uint8* vr$7 = HUNESCAPE( *(uint8**)((uint8*)LS$1 + 96ll), &TMP$94$2 );
		DZSTRASSIGN( &TEXTZ$1, (uint8*)vr$7 );
		TMP$95$2 = 0ll;
		uint16* vr$10 = HUNESCAPEW( *(uint16**)((uint8*)RS$1 + 96ll), &TMP$95$2 );
		DWSTRASSIGN( &RTEXTW$1, (uint16*)vr$10 );
		{
			uint64 TMP$96$3;
			TMP$96$3 = (uint64)OP$1;
			goto label$32;
			label$33:;
			{
				uint16* TMP$97$4;
				uint16* vr$11 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$97$4 = vr$11;
				int32 vr$12 = fb_WstrCompare( (uint16*)TMP$97$4, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$12 == 0ll);
				fb_WstrDelete( (uint16*)TMP$97$4 );
			}
			goto label$31;
			label$34:;
			{
				uint16* TMP$98$4;
				uint16* vr$15 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$98$4 = vr$15;
				int32 vr$16 = fb_WstrCompare( (uint16*)TMP$98$4, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$16 > 0ll);
				fb_WstrDelete( (uint16*)TMP$98$4 );
			}
			goto label$31;
			label$35:;
			{
				uint16* TMP$99$4;
				uint16* vr$19 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$99$4 = vr$19;
				int32 vr$20 = fb_WstrCompare( (uint16*)TMP$99$4, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$20 < 0ll);
				fb_WstrDelete( (uint16*)TMP$99$4 );
			}
			goto label$31;
			label$36:;
			{
				uint16* TMP$100$4;
				uint16* vr$23 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$100$4 = vr$23;
				int32 vr$24 = fb_WstrCompare( (uint16*)TMP$100$4, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$24 != 0ll);
				fb_WstrDelete( (uint16*)TMP$100$4 );
			}
			goto label$31;
			label$37:;
			{
				uint16* TMP$101$4;
				uint16* vr$27 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$101$4 = vr$27;
				int32 vr$28 = fb_WstrCompare( (uint16*)TMP$101$4, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$28 <= 0ll);
				fb_WstrDelete( (uint16*)TMP$101$4 );
			}
			goto label$31;
			label$38:;
			{
				uint16* TMP$102$4;
				uint16* vr$31 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$102$4 = vr$31;
				int32 vr$32 = fb_WstrCompare( (uint16*)TMP$102$4, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$32 >= 0ll);
				fb_WstrDelete( (uint16*)TMP$102$4 );
			}
			goto label$31;
			label$32:;
			static const void* tmp$203[6ll] = {
				&&label$33,
				&&label$34,
				&&label$35,
				&&label$36,
				&&label$38,
				&&label$37,
			};
			if( (TMP$96$3 - 45ull) > 5ull ) goto label$31;
			goto *tmp$203[TMP$96$3 - 45ull];
			label$31:;
		}
	}
	goto label$29;
	label$30:;
	if( (*(int64*)((uint8*)RS$1 + 56ll) & 511ll) == 7ll ) goto label$39;
	{
		int64 TMP$103$2;
		int64 TMP$104$2;
		TMP$103$2 = 0ll;
		uint16* vr$39 = HUNESCAPEW( *(uint16**)((uint8*)LS$1 + 96ll), &TMP$103$2 );
		DWSTRASSIGN( &LTEXTW$1, (uint16*)vr$39 );
		TMP$104$2 = 0ll;
		uint8* vr$42 = HUNESCAPE( *(uint8**)((uint8*)RS$1 + 96ll), &TMP$104$2 );
		DZSTRASSIGN( &TEXTZ$1, (uint8*)vr$42 );
		{
			uint64 TMP$105$3;
			TMP$105$3 = (uint64)OP$1;
			goto label$41;
			label$42:;
			{
				uint16* TMP$106$4;
				uint16* vr$43 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$106$4 = vr$43;
				int32 vr$44 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)TMP$106$4 );
				RES$1 = (int64)-((int64)vr$44 == 0ll);
				fb_WstrDelete( (uint16*)TMP$106$4 );
			}
			goto label$40;
			label$43:;
			{
				uint16* TMP$107$4;
				uint16* vr$47 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$107$4 = vr$47;
				int32 vr$48 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)TMP$107$4 );
				RES$1 = (int64)-((int64)vr$48 > 0ll);
				fb_WstrDelete( (uint16*)TMP$107$4 );
			}
			goto label$40;
			label$44:;
			{
				uint16* TMP$108$4;
				uint16* vr$51 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$108$4 = vr$51;
				int32 vr$52 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)TMP$108$4 );
				RES$1 = (int64)-((int64)vr$52 < 0ll);
				fb_WstrDelete( (uint16*)TMP$108$4 );
			}
			goto label$40;
			label$45:;
			{
				uint16* TMP$109$4;
				uint16* vr$55 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$109$4 = vr$55;
				int32 vr$56 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)TMP$109$4 );
				RES$1 = (int64)-((int64)vr$56 != 0ll);
				fb_WstrDelete( (uint16*)TMP$109$4 );
			}
			goto label$40;
			label$46:;
			{
				uint16* TMP$110$4;
				uint16* vr$59 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$110$4 = vr$59;
				int32 vr$60 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)TMP$110$4 );
				RES$1 = (int64)-((int64)vr$60 <= 0ll);
				fb_WstrDelete( (uint16*)TMP$110$4 );
			}
			goto label$40;
			label$47:;
			{
				uint16* TMP$111$4;
				uint16* vr$63 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$111$4 = vr$63;
				int32 vr$64 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)TMP$111$4 );
				RES$1 = (int64)-((int64)vr$64 >= 0ll);
				fb_WstrDelete( (uint16*)TMP$111$4 );
			}
			goto label$40;
			label$41:;
			static const void* tmp$204[6ll] = {
				&&label$42,
				&&label$43,
				&&label$44,
				&&label$45,
				&&label$47,
				&&label$46,
			};
			if( (TMP$105$3 - 45ull) > 5ull ) goto label$40;
			goto *tmp$204[TMP$105$3 - 45ull];
			label$40:;
		}
	}
	goto label$29;
	label$39:;
	{
		int64 TMP$112$2;
		int64 TMP$113$2;
		TMP$112$2 = 0ll;
		uint16* vr$69 = HUNESCAPEW( *(uint16**)((uint8*)LS$1 + 96ll), &TMP$112$2 );
		DWSTRASSIGN( &LTEXTW$1, (uint16*)vr$69 );
		TMP$113$2 = 0ll;
		uint16* vr$72 = HUNESCAPEW( *(uint16**)((uint8*)RS$1 + 96ll), &TMP$113$2 );
		DWSTRASSIGN( &RTEXTW$1, (uint16*)vr$72 );
		{
			uint64 TMP$114$3;
			TMP$114$3 = (uint64)OP$1;
			goto label$49;
			label$50:;
			{
				int32 vr$73 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$73 == 0ll);
			}
			goto label$48;
			label$51:;
			{
				int32 vr$76 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$76 > 0ll);
			}
			goto label$48;
			label$52:;
			{
				int32 vr$79 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$79 < 0ll);
			}
			goto label$48;
			label$53:;
			{
				int32 vr$82 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$82 != 0ll);
			}
			goto label$48;
			label$54:;
			{
				int32 vr$85 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$85 <= 0ll);
			}
			goto label$48;
			label$55:;
			{
				int32 vr$88 = fb_WstrCompare( (uint16*)*(uint16**)&LTEXTW$1, (uint16*)*(uint16**)&RTEXTW$1 );
				RES$1 = (int64)-((int64)vr$88 >= 0ll);
			}
			goto label$48;
			label$49:;
			static const void* tmp$205[6ll] = {
				&&label$50,
				&&label$51,
				&&label$52,
				&&label$53,
				&&label$55,
				&&label$54,
			};
			if( (TMP$114$3 - 45ull) > 5ull ) goto label$48;
			goto *tmp$205[TMP$114$3 - 45ull];
			label$48:;
		}
	}
	label$29:;
	struct $7ASTNODE* vr$91 = ASTNEWCONSTI( RES$1, 8ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$91;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$28:;
	return fb$result$1;
}

static void HTOSTR( struct $7ASTNODE** L$1, struct $7ASTNODE** R$1 )
{
	label$56:;
	int64 LDTYPE$1;
	int64 RDTYPE$1;
	LDTYPE$1 = *(int64*)((uint8*)*L$1 + 8ll) & 511ll;
	RDTYPE$1 = *(int64*)((uint8*)*R$1 + 8ll) & 511ll;
	{
		uint64 TMP$115$2;
		TMP$115$2 = (uint64)LDTYPE$1;
		goto label$59;
		label$60:;
		{
		}
		goto label$58;
		label$61:;
		{
			struct $7ASTNODE* vr$7 = RTLTOSTR( *L$1, 0ll );
			*L$1 = vr$7;
			if( *L$1 != (struct $7ASTNODE*)0ull ) goto label$63;
			{
				ERRREPORT( 20ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$10 = ASTNEWCONSTSTR( (uint8*)0ull );
				*L$1 = vr$10;
			}
			label$63:;
			label$62:;
		}
		goto label$58;
		label$59:;
		static const void* tmp$206[15ll] = {
			&&label$60,
			&&label$61,
			&&label$61,
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
			&&label$60,
			&&label$60,
		};
		if( (TMP$115$2 - 4ull) > 14ull ) goto label$61;
		goto *tmp$206[TMP$115$2 - 4ull];
		label$58:;
	}
	{
		uint64 TMP$116$2;
		TMP$116$2 = (uint64)RDTYPE$1;
		goto label$65;
		label$66:;
		{
		}
		goto label$64;
		label$67:;
		{
			if( LDTYPE$1 == 7ll ) goto label$69;
			{
				struct $7ASTNODE* vr$13 = RTLTOSTR( *R$1, 0ll );
				*R$1 = vr$13;
			}
			goto label$68;
			label$69:;
			{
				struct $7ASTNODE* vr$16 = RTLTOWSTR( *R$1 );
				*R$1 = vr$16;
			}
			label$68:;
			if( *R$1 != (struct $7ASTNODE*)0ull ) goto label$71;
			{
				ERRREPORT( 20ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$19 = ASTNEWCONSTSTR( (uint8*)0ull );
				*R$1 = vr$19;
			}
			label$71:;
			label$70:;
		}
		goto label$64;
		label$65:;
		static const void* tmp$207[15ll] = {
			&&label$66,
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
			&&label$66,
			&&label$66,
		};
		if( (TMP$116$2 - 4ull) > 14ull ) goto label$67;
		goto *tmp$207[TMP$116$2 - 4ull];
		label$64:;
	}
	label$57:;
}

static struct $7ASTNODE* HCONSTBOP( int64 OP$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int64 TMP$117$1;
	int64 TMP$122$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$72:;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$74;
	TMP$117$1 = 24ll;
	goto label$708;
	label$74:;
	TMP$117$1 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
	label$708:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$117$1 * 56ll)) != 1ll ) goto label$76;
	{
		{
			uint64 TMP$118$3;
			TMP$118$3 = (uint64)OP$1;
			goto label$78;
			label$79:;
			{
				*(double*)((uint8*)L$1 + 40ll) = *(double*)((uint8*)L$1 + 40ll) + *(double*)((uint8*)R$1 + 40ll);
			}
			goto label$77;
			label$80:;
			{
				*(double*)((uint8*)L$1 + 40ll) = *(double*)((uint8*)L$1 + 40ll) - *(double*)((uint8*)R$1 + 40ll);
			}
			goto label$77;
			label$81:;
			{
				*(double*)((uint8*)L$1 + 40ll) = *(double*)((uint8*)L$1 + 40ll) * *(double*)((uint8*)R$1 + 40ll);
			}
			goto label$77;
			label$82:;
			{
				*(double*)((uint8*)L$1 + 40ll) = *(double*)((uint8*)L$1 + 40ll) / *(double*)((uint8*)R$1 + 40ll);
			}
			goto label$77;
			label$83:;
			{
				double vr$24 = pow( *(double*)((uint8*)L$1 + 40ll), *(double*)((uint8*)R$1 + 40ll) );
				*(double*)((uint8*)L$1 + 40ll) = vr$24;
			}
			goto label$77;
			label$84:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)L$1 + 40ll) != *(double*)((uint8*)R$1 + 40ll));
			}
			goto label$77;
			label$85:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)L$1 + 40ll) == *(double*)((uint8*)R$1 + 40ll));
			}
			goto label$77;
			label$86:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)L$1 + 40ll) > *(double*)((uint8*)R$1 + 40ll));
			}
			goto label$77;
			label$87:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)L$1 + 40ll) < *(double*)((uint8*)R$1 + 40ll));
			}
			goto label$77;
			label$88:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)L$1 + 40ll) <= *(double*)((uint8*)R$1 + 40ll));
			}
			goto label$77;
			label$89:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)L$1 + 40ll) >= *(double*)((uint8*)R$1 + 40ll));
			}
			goto label$77;
			label$90:;
			{
				double vr$52 = atan2( *(double*)((uint8*)L$1 + 40ll), *(double*)((uint8*)R$1 + 40ll) );
				*(double*)((uint8*)L$1 + 40ll) = vr$52;
			}
			goto label$77;
			label$91:;
			{
				if( *(double*)((uint8*)L$1 + 40ll) == 0x0p+0 ) goto label$93;
				{
					*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)R$1 + 40ll) != 0x0p+0);
				}
				goto label$92;
				label$93:;
				{
					*(int64*)((uint8*)L$1 + 40ll) = 0ll;
				}
				label$92:;
			}
			goto label$77;
			label$94:;
			{
				if( *(double*)((uint8*)L$1 + 40ll) == 0x0p+0 ) goto label$96;
				{
					*(int64*)((uint8*)L$1 + 40ll) = -1ll;
				}
				goto label$95;
				label$96:;
				{
					*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(double*)((uint8*)R$1 + 40ll) != 0x0p+0);
				}
				label$95:;
			}
			goto label$77;
			label$97:;
			{
			}
			goto label$77;
			label$78:;
			static const void* tmp$208[37ll] = {
				&&label$79,
				&&label$80,
				&&label$81,
				&&label$82,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$91,
				&&label$94,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$83,
				&&label$97,
				&&label$85,
				&&label$86,
				&&label$87,
				&&label$84,
				&&label$89,
				&&label$88,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$97,
				&&label$90,
			};
			if( (TMP$118$3 - 28ull) > 36ull ) goto label$97;
			goto *tmp$208[TMP$118$3 - 28ull];
			label$77:;
		}
	}
	goto label$75;
	label$76:;
	if( ((int64)-((*(int64*)((uint8*)L$1 + 8ll) & 511ll) == 1ll) | (int64)-((*(int64*)((uint8*)R$1 + 8ll) & 511ll) == 1ll)) == 0ll ) goto label$98;
	{
		{
			uint64 TMP$119$3;
			TMP$119$3 = (uint64)OP$1;
			goto label$100;
			label$101:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) & (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll));
			}
			goto label$99;
			label$102:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) | (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll));
			}
			goto label$99;
			label$103:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) ^ (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll));
			}
			goto label$99;
			label$104:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)(((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) ^ (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll)) ^ 1ll);
			}
			goto label$99;
			label$105:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)(((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) ^ 1ll) | (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll));
			}
			goto label$99;
			label$106:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) != (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll));
			}
			goto label$99;
			label$107:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) == (boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll));
			}
			goto label$99;
			label$108:;
			{
				boolean TMP$120$4;
				if( (boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) == (boolean)0ll ) goto label$109;
				TMP$120$4 = (boolean)((boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll) != (boolean)0ll);
				goto label$709;
				label$109:;
				TMP$120$4 = (boolean)0ll;
				label$709:;
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-TMP$120$4;
			}
			goto label$99;
			label$110:;
			{
				boolean TMP$121$4;
				if( (boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll) != (boolean)0ll ) goto label$111;
				TMP$121$4 = (boolean)((boolean)(*(int64*)((uint8*)R$1 + 40ll) != 0ll) != (boolean)0ll);
				goto label$710;
				label$111:;
				TMP$121$4 = (boolean)1ll;
				label$710:;
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-TMP$121$4;
			}
			goto label$99;
			label$112:;
			{
			}
			goto label$99;
			label$100:;
			static const void* tmp$209[15ll] = {
				&&label$101,
				&&label$102,
				&&label$108,
				&&label$110,
				&&label$103,
				&&label$104,
				&&label$105,
				&&label$112,
				&&label$112,
				&&label$112,
				&&label$112,
				&&label$107,
				&&label$112,
				&&label$112,
				&&label$106,
			};
			if( (TMP$119$3 - 34ull) > 14ull ) goto label$112;
			goto *tmp$209[TMP$119$3 - 34ull];
			label$99:;
		}
	}
	goto label$75;
	label$98:;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$114;
	TMP$122$1 = 24ll;
	goto label$711;
	label$114:;
	TMP$122$1 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
	label$711:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$122$1 * 56ll)) + 16ll) == 0ll ) goto label$113;
	{
		{
			uint64 TMP$123$3;
			TMP$123$3 = (uint64)OP$1;
			goto label$116;
			label$117:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) + *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$118:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) - *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$119:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) * *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$120:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) << (*(int64*)((uint8*)R$1 + 40ll) & 63ll);
			}
			goto label$115;
			label$121:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) >> (*(int64*)((uint8*)R$1 + 40ll) & 63ll);
			}
			goto label$115;
			label$122:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) & *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$123:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) | *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$124:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) ^ *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$125:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = ~(*(int64*)((uint8*)L$1 + 40ll) ^ *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$126:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = ~(*(int64*)((uint8*)L$1 + 40ll)) | *(int64*)((uint8*)R$1 + 40ll);
			}
			goto label$115;
			label$127:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(int64*)((uint8*)L$1 + 40ll) != *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$128:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$129:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(int64*)((uint8*)L$1 + 40ll) > *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$130:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(int64*)((uint8*)L$1 + 40ll) < *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$131:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(int64*)((uint8*)L$1 + 40ll) <= *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$132:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(int64*)((uint8*)L$1 + 40ll) >= *(int64*)((uint8*)R$1 + 40ll));
			}
			goto label$115;
			label$133:;
			{
				int64 TMP$124$4;
				if( *(int64*)((uint8*)L$1 + 40ll) == 0ll ) goto label$134;
				TMP$124$4 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) != 0ll);
				goto label$712;
				label$134:;
				TMP$124$4 = 0ll;
				label$712:;
				*(int64*)((uint8*)L$1 + 40ll) = TMP$124$4;
			}
			goto label$115;
			label$135:;
			{
				int64 TMP$125$4;
				if( *(int64*)((uint8*)L$1 + 40ll) == 0ll ) goto label$136;
				TMP$125$4 = -1ll;
				goto label$713;
				label$136:;
				TMP$125$4 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) != 0ll);
				label$713:;
				*(int64*)((uint8*)L$1 + 40ll) = TMP$125$4;
			}
			goto label$115;
			label$137:;
			{
				int64 TMP$126$4;
				int64 TMP$127$4;
				if( *(int64*)((uint8*)R$1 + 40ll) != 0ll ) goto label$139;
				{
					*(int64*)((uint8*)L$1 + 40ll) = 0ll;
					ERRREPORT( 100ll, 0ll, (uint8*)0ull );
				}
				goto label$138;
				label$139:;
				if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$141;
				TMP$126$4 = 24ll;
				goto label$714;
				label$141:;
				TMP$126$4 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
				label$714:;
				if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$142;
				TMP$127$4 = 24ll;
				goto label$715;
				label$142:;
				TMP$127$4 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
				label$715:;
				if( ((int64)-(*(int64*)((uint8*)R$1 + 40ll) == -1ll) & (((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$126$4 * 56ll)) + 8ll) == 8ll) & (int64)-(*(int64*)((uint8*)L$1 + 40ll) == -9223372036854775808ull)) | ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$127$4 * 56ll)) + 8ll) == 4ll) & (int64)-(*(int64*)((uint8*)L$1 + 40ll) == -2147483648ll)))) == 0ll ) goto label$140;
				{
					*(int64*)((uint8*)L$1 + 40ll) = 0ll;
					if( *(int64*)((uint8*)&AST$ + 464ll) != 0ll ) goto label$144;
					{
						ERRREPORTWARN( 25ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					}
					label$144:;
					label$143:;
				}
				goto label$138;
				label$140:;
				if( OP$1 != 32ll ) goto label$145;
				{
					*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) / *(int64*)((uint8*)R$1 + 40ll);
				}
				goto label$138;
				label$145:;
				{
					*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll) % *(int64*)((uint8*)R$1 + 40ll);
				}
				label$138:;
			}
			goto label$115;
			label$146:;
			{
			}
			goto label$115;
			label$116:;
			static const void* tmp$210[23ll] = {
				&&label$117,
				&&label$118,
				&&label$119,
				&&label$146,
				&&label$137,
				&&label$137,
				&&label$122,
				&&label$123,
				&&label$133,
				&&label$135,
				&&label$124,
				&&label$125,
				&&label$126,
				&&label$120,
				&&label$121,
				&&label$146,
				&&label$146,
				&&label$128,
				&&label$129,
				&&label$130,
				&&label$127,
				&&label$132,
				&&label$131,
			};
			if( (TMP$123$3 - 28ull) > 22ull ) goto label$146;
			goto *tmp$210[TMP$123$3 - 28ull];
			label$115:;
		}
		struct $7ASTNODE* vr$244 = ASTCONVERTRAWCONSTI( DTYPE$1, SUBTYPE$1, L$1 );
		L$1 = vr$244;
	}
	goto label$75;
	label$113:;
	{
		{
			uint64 TMP$128$3;
			TMP$128$3 = (uint64)OP$1;
			goto label$148;
			label$149:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) + *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$150:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) - *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$151:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) * *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$152:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) << (*(uint64*)((uint8*)R$1 + 40ll) & 63ll));
			}
			goto label$147;
			label$153:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) >> (*(uint64*)((uint8*)R$1 + 40ll) & 63ll));
			}
			goto label$147;
			label$154:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) & *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$155:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) | *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$156:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) ^ *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$157:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)~(*(uint64*)((uint8*)L$1 + 40ll) ^ *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$158:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(~(*(uint64*)((uint8*)L$1 + 40ll)) | *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$159:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(uint64*)((uint8*)L$1 + 40ll) != *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$160:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(uint64*)((uint8*)L$1 + 40ll) == *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$161:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(uint64*)((uint8*)L$1 + 40ll) > *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$162:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(uint64*)((uint8*)L$1 + 40ll) < *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$163:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(uint64*)((uint8*)L$1 + 40ll) <= *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$164:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(*(uint64*)((uint8*)L$1 + 40ll) >= *(uint64*)((uint8*)R$1 + 40ll));
			}
			goto label$147;
			label$165:;
			{
				int64 TMP$129$4;
				if( *(int64*)((uint8*)L$1 + 40ll) == 0ll ) goto label$166;
				TMP$129$4 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) != 0ll);
				goto label$716;
				label$166:;
				TMP$129$4 = 0ll;
				label$716:;
				*(int64*)((uint8*)L$1 + 40ll) = TMP$129$4;
			}
			goto label$147;
			label$167:;
			{
				int64 TMP$130$4;
				if( *(int64*)((uint8*)L$1 + 40ll) == 0ll ) goto label$168;
				TMP$130$4 = -1ll;
				goto label$717;
				label$168:;
				TMP$130$4 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) != 0ll);
				label$717:;
				*(int64*)((uint8*)L$1 + 40ll) = TMP$130$4;
			}
			goto label$147;
			label$169:;
			{
				if( *(int64*)((uint8*)R$1 + 40ll) != 0ll ) goto label$171;
				{
					*(int64*)((uint8*)L$1 + 40ll) = 0ll;
					ERRREPORT( 100ll, 0ll, (uint8*)0ull );
				}
				goto label$170;
				label$171:;
				if( OP$1 != 32ll ) goto label$172;
				{
					*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) / *(uint64*)((uint8*)R$1 + 40ll));
				}
				goto label$170;
				label$172:;
				{
					*(int64*)((uint8*)L$1 + 40ll) = (int64)(*(uint64*)((uint8*)L$1 + 40ll) % *(uint64*)((uint8*)R$1 + 40ll));
				}
				label$170:;
			}
			goto label$147;
			label$173:;
			{
			}
			goto label$147;
			label$148:;
			static const void* tmp$211[23ll] = {
				&&label$149,
				&&label$150,
				&&label$151,
				&&label$173,
				&&label$169,
				&&label$169,
				&&label$154,
				&&label$155,
				&&label$165,
				&&label$167,
				&&label$156,
				&&label$157,
				&&label$158,
				&&label$152,
				&&label$153,
				&&label$173,
				&&label$173,
				&&label$160,
				&&label$161,
				&&label$162,
				&&label$159,
				&&label$164,
				&&label$163,
			};
			if( (TMP$128$3 - 28ull) > 22ull ) goto label$173;
			goto *tmp$211[TMP$128$3 - 28ull];
			label$147:;
		}
		struct $7ASTNODE* vr$327 = ASTCONVERTRAWCONSTI( DTYPE$1, SUBTYPE$1, L$1 );
		L$1 = vr$327;
	}
	label$75:;
	fb$result$1 = L$1;
	label$73:;
	return fb$result$1;
}

static int64 HCHECKPOINTER( int64 OP$1, int64 DTYPE$1, int64 DCLASS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$174:;
	if( DCLASS$1 == 0ll ) goto label$177;
	{
		fb$result$1 = 0ll;
		goto label$175;
	}
	goto label$176;
	label$177:;
	{
		{
			int64 TMP$131$3;
			int64 TMP$132$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$178;
			TMP$131$3 = 24ll;
			goto label$718;
			label$178:;
			TMP$131$3 = DTYPE$1 & 31ll;
			label$718:;
			TMP$132$3 = TMP$131$3;
			if( TMP$132$3 == 4ll ) goto label$181;
			label$182:;
			if( TMP$132$3 != 7ll ) goto label$180;
			label$181:;
			{
				fb$result$1 = 0ll;
				goto label$175;
			}
			label$180:;
			label$179:;
		}
	}
	label$176:;
	{
		if( OP$1 == 28ll ) goto label$185;
		label$186:;
		if( OP$1 != 29ll ) goto label$184;
		label$185:;
		{
			fb$result$1 = (int64)-((DTYPE$1 & 480ll) == 0ll);
		}
		goto label$183;
		label$184:;
		if( OP$1 == 36ll ) goto label$188;
		label$189:;
		if( OP$1 != 37ll ) goto label$187;
		label$188:;
		{
			fb$result$1 = -1ll;
		}
		goto label$183;
		label$187:;
		{
			fb$result$1 = (int64)-((*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 8ll) != 0ll);
		}
		label$190:;
		label$183:;
	}
	label$175:;
	return fb$result$1;
}

static struct $7ASTNODE* HDOPOINTERARITH( int64 OP$1, struct $7ASTNODE* P$1, struct $7ASTNODE* E$1, int64 SWAPPED$1 )
{
	int64 TMP$133$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$191:;
	int64 EDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	EDTYPE$1 = *(int64*)((uint8*)E$1 + 8ll) & 511ll;
	if( (EDTYPE$1 & 480ll) == 0ll ) goto label$193;
	TMP$133$1 = 24ll;
	goto label$719;
	label$193:;
	TMP$133$1 = EDTYPE$1 & 31ll;
	label$719:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$133$1 * 56ll)) == 0ll ) goto label$195;
	{
		goto label$192;
	}
	goto label$194;
	label$195:;
	{
		{
			if( EDTYPE$1 == 4ll ) goto label$198;
			label$199:;
			if( EDTYPE$1 != 7ll ) goto label$197;
			label$198:;
			{
				goto label$192;
			}
			label$197:;
			label$196:;
		}
	}
	label$194:;
	int64 vr$9 = SYMBCALCDEREFLEN( *(int64*)((uint8*)P$1 + 8ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)P$1 + 16ll) );
	LGT$1 = vr$9;
	if( LGT$1 > 0ll ) goto label$201;
	{
		goto label$192;
	}
	label$201:;
	label$200:;
	if( (EDTYPE$1 & 480ll) == 0ll ) goto label$203;
	{
		if( OP$1 != 29ll ) goto label$205;
		{
			if( ((int64)-(EDTYPE$1 != (*(int64*)((uint8*)P$1 + 8ll) & 511ll)) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)E$1 + 16ll) != *(struct $8FBSYMBOL**)((uint8*)P$1 + 16ll))) == 0ll ) goto label$207;
			{
				goto label$192;
			}
			label$207:;
			label$206:;
			struct $7ASTNODE* vr$18 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, P$1, 0ll, (int64*)0ull );
			P$1 = vr$18;
			struct $7ASTNODE* vr$19 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, E$1, 0ll, (int64*)0ull );
			E$1 = vr$19;
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 29ll, P$1, E$1, (struct $8FBSYMBOL*)0ull, 1ll );
			E$1 = vr$20;
			struct $7ASTNODE* vr$21 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$22 = ASTNEWBOP( 32ll, E$1, vr$21, (struct $8FBSYMBOL*)0ull, 1ll );
			fb$result$1 = vr$22;
		}
		label$205:;
		label$204:;
		goto label$192;
	}
	label$203:;
	label$202:;
	if( EDTYPE$1 == 8ll ) goto label$209;
	{
		struct $7ASTNODE* vr$23 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, E$1, 0ll, (int64*)0ull );
		E$1 = vr$23;
	}
	label$209:;
	label$208:;
	{
		if( OP$1 == 28ll ) goto label$212;
		label$213:;
		if( OP$1 != 29ll ) goto label$211;
		label$212:;
		{
			int64 TMP$134$3;
			if( OP$1 != 29ll ) goto label$214;
			TMP$134$3 = (int64)-(SWAPPED$1 != 0ll);
			goto label$720;
			label$214:;
			TMP$134$3 = 0ll;
			label$720:;
			if( TMP$134$3 == 0ll ) goto label$216;
			{
				goto label$192;
			}
			label$216:;
			label$215:;
			struct $7ASTNODE* vr$25 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$26 = ASTNEWBOP( 30ll, E$1, vr$25, (struct $8FBSYMBOL*)0ull, 1ll );
			E$1 = vr$26;
			struct $7ASTNODE* vr$27 = ASTNEWBOP( OP$1, P$1, E$1, (struct $8FBSYMBOL*)0ull, 1ll );
			fb$result$1 = vr$27;
		}
		goto label$210;
		label$211:;
		{
			goto label$192;
		}
		label$217:;
		label$210:;
	}
	label$192:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONVERTUDT_L( int64 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$218:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1, 0ll, (int64*)0ull );
	T$1 = vr$3;
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$221;
	{
		struct $7ASTNODE* vr$5 = ASTNEWBOP( OP$1, L$1, T$1, EX$1, OPTIONS$1 | 8ll );
		T$1 = vr$5;
		if( T$1 == (struct $7ASTNODE*)0ull ) goto label$223;
		{
			fb$result$1 = T$1;
			goto label$219;
		}
		label$223:;
		label$222:;
	}
	label$221:;
	label$220:;
	struct $7ASTNODE* vr$8 = ASTNEWCONV( *(int64*)((uint8*)R$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll), L$1, 0ll, (int64*)0ull );
	T$1 = vr$8;
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$225;
	{
		struct $7ASTNODE* vr$10 = ASTNEWBOP( OP$1, T$1, R$1, EX$1, OPTIONS$1 | 8ll );
		T$1 = vr$10;
		if( T$1 == (struct $7ASTNODE*)0ull ) goto label$227;
		{
			fb$result$1 = T$1;
			goto label$219;
		}
		label$227:;
		label$226:;
	}
	label$225:;
	label$224:;
	struct $7ASTNODE* vr$11 = ASTNEWCONV( 0ll, (struct $8FBSYMBOL*)0ull, L$1, 0ll, (int64*)0ull );
	T$1 = vr$11;
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$229;
	{
		struct $7ASTNODE* vr$12 = ASTNEWBOP( OP$1, T$1, R$1, EX$1, OPTIONS$1 );
		fb$result$1 = vr$12;
		goto label$219;
	}
	label$229:;
	label$228:;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	label$219:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONVERTUDT_R( int64 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$230:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( *(int64*)((uint8*)R$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll), L$1, 0ll, (int64*)0ull );
	T$1 = vr$3;
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$233;
	{
		struct $7ASTNODE* vr$5 = ASTNEWBOP( OP$1, T$1, R$1, EX$1, OPTIONS$1 | 8ll );
		T$1 = vr$5;
		if( T$1 == (struct $7ASTNODE*)0ull ) goto label$235;
		{
			fb$result$1 = T$1;
			goto label$231;
		}
		label$235:;
		label$234:;
	}
	label$233:;
	label$232:;
	struct $7ASTNODE* vr$8 = ASTNEWCONV( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1, 0ll, (int64*)0ull );
	T$1 = vr$8;
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$237;
	{
		struct $7ASTNODE* vr$10 = ASTNEWBOP( OP$1, L$1, T$1, EX$1, OPTIONS$1 | 8ll );
		T$1 = vr$10;
		if( T$1 == (struct $7ASTNODE*)0ull ) goto label$239;
		{
			fb$result$1 = T$1;
			goto label$231;
		}
		label$239:;
		label$238:;
	}
	label$237:;
	label$236:;
	struct $7ASTNODE* vr$11 = ASTNEWCONV( 0ll, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
	T$1 = vr$11;
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$241;
	{
		struct $7ASTNODE* vr$13 = ASTNEWBOP( OP$1, L$1, T$1, EX$1, OPTIONS$1 | 8ll );
		fb$result$1 = vr$13;
		goto label$231;
	}
	label$241:;
	label$240:;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	label$231:;
	return fb$result$1;
}

static int64 HCHECKDEREFWCHARPTR( struct $7ASTNODE* L$1, int64* PLDTYPE$1, struct $7ASTNODE* R$1, int64 RDTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$242:;
	struct $7ASTNODE* LL$1;
	if( *(int64*)L$1 == 20ll ) goto label$245;
	{
		goto label$243;
	}
	label$245:;
	label$244:;
	LL$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
	if( LL$1 == (struct $7ASTNODE*)0ull ) goto label$247;
	{
		if( *(int64*)LL$1 != 17ll ) goto label$249;
		{
			if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LL$1 + 24ll) + 24ll) & 16777216ll) == 0ll ) goto label$251;
			{
				goto label$243;
			}
			label$251:;
			label$250:;
		}
		label$249:;
		label$248:;
	}
	label$247:;
	label$246:;
	*PLDTYPE$1 = (*PLDTYPE$1 & -512ll) | (*(int64*)((uint8*)&ENV$ + 544ll) & 511ll);
	fb$result$1 = -1ll;
	label$243:;
	return fb$result$1;
}

static void HCONVOPERAND( int64 NEWDTYPE$1, int64* DTYPE$1, int64* DCLASS$1, struct $7ASTNODE** N$1 )
{
	int64 TMP$135$1;
	label$252:;
	*DTYPE$1 = (*DTYPE$1 & -512ll) | (NEWDTYPE$1 & 511ll);
	if( (NEWDTYPE$1 & 480ll) == 0ll ) goto label$254;
	TMP$135$1 = 24ll;
	goto label$721;
	label$254:;
	TMP$135$1 = NEWDTYPE$1 & 31ll;
	label$721:;
	*DCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$135$1 * 56ll));
	struct $7ASTNODE* vr$11 = ASTNEWCONV( *DTYPE$1, (struct $8FBSYMBOL*)0ull, *N$1, 0ll, (int64*)0ull );
	*N$1 = vr$11;
	label$253:;
}

static int64 HGETINTEGERORBIGGER( int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$255:;
	{
		if( DTYPE$1 == 9ll ) goto label$259;
		label$260:;
		if( DTYPE$1 != 14ll ) goto label$258;
		label$259:;
		{
			fb$result$1 = DTYPE$1;
			goto label$256;
		}
		goto label$257;
		label$258:;
		if( DTYPE$1 != 13ll ) goto label$261;
		label$262:;
		{
			int64 vr$1 = FBIS64BIT(  );
			if( vr$1 != 0ll ) goto label$264;
			{
				fb$result$1 = DTYPE$1;
				goto label$256;
			}
			label$264:;
			label$263:;
		}
		label$261:;
		label$257:;
	}
	fb$result$1 = 8ll;
	goto label$256;
	label$256:;
	return fb$result$1;
}

static int64 HISCONSIDEREDBOOLEAN( struct $7ASTNODE* N$1 )
{
	int64 TMP$136$1;
	int64 TMP$137$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$265:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 511ll) == 1ll ) goto label$267;
	int64 vr$3 = ASTISCONST0ORMINUS1( N$1 );
	TMP$136$1 = (int64)-(vr$3 != 0ll);
	goto label$722;
	label$267:;
	TMP$136$1 = -1ll;
	label$722:;
	if( TMP$136$1 != 0ll ) goto label$268;
	int64 vr$5 = ASTISRELATIONALBOP( N$1 );
	TMP$137$1 = (int64)-(vr$5 != 0ll);
	goto label$723;
	label$268:;
	TMP$137$1 = -1ll;
	label$723:;
	fb$result$1 = TMP$137$1;
	goto label$266;
	label$266:;
	return fb$result$1;
}

static int64 HSHOULDWARNABOUTMIXEDBOOL( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$269:;
	if( ((int64)-((*(int64*)((uint8*)L$1 + 8ll) & 511ll) == 1ll) & (int64)-((*(int64*)((uint8*)R$1 + 8ll) & 511ll) != 1ll)) == 0ll ) goto label$272;
	{
		int64 TMP$138$2;
		int64 vr$8 = ASTISCONST0ORMINUS1( L$1 );
		if( ~vr$8 == 0ll ) goto label$273;
		int64 vr$10 = HISCONSIDEREDBOOLEAN( R$1 );
		TMP$138$2 = (int64)-(~vr$10 != 0ll);
		goto label$724;
		label$273:;
		TMP$138$2 = 0ll;
		label$724:;
		fb$result$1 = TMP$138$2;
		goto label$270;
	}
	label$272:;
	label$271:;
	if( ((int64)-((*(int64*)((uint8*)L$1 + 8ll) & 511ll) != 1ll) & (int64)-((*(int64*)((uint8*)R$1 + 8ll) & 511ll) == 1ll)) == 0ll ) goto label$275;
	{
		int64 TMP$139$2;
		int64 vr$20 = HISCONSIDEREDBOOLEAN( L$1 );
		if( ~vr$20 == 0ll ) goto label$276;
		int64 vr$22 = ASTISCONST0ORMINUS1( R$1 );
		TMP$139$2 = (int64)-(~vr$22 != 0ll);
		goto label$725;
		label$276:;
		TMP$139$2 = 0ll;
		label$725:;
		fb$result$1 = TMP$139$2;
		goto label$270;
	}
	label$275:;
	label$274:;
	fb$result$1 = 0ll;
	goto label$270;
	label$270:;
	return fb$result$1;
}
