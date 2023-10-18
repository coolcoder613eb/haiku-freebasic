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
typedef FBSTRING* (*tmp$28)( void*, int32* );
typedef uint32* (*tmp$29)( void*, int32* );
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
typedef int32 $9FB_ERRMSG;
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
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
typedef int32 $13FB_WARNINGMSG;
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
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
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
int64 __divdi3( int64, int64 );
uint64 __udivdi3( uint64, uint64 );
int64 __moddi3( int64, int64 );
uint64 __umoddi3( uint64, uint64 );
double pow( double, double );
double atan2( double, double );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
uint32* fb_WstrConcat( uint32*, uint32* );
int32 fb_StrCompare( void*, int32, void*, int32 );
int32 fb_WstrCompare( uint32*, uint32* );
uint32* fb_StrToWstr( uint8* );
static void fb_ctor__astznodezbop( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
int32 FBIS64BIT( void );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWUOP( int32, struct $7ASTNODE* );
int32 ASTISCONST0ORMINUS1( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
struct $7ASTNODE* ASTCONVERTRAWCONSTI( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWIIF( struct $7ASTNODE*, struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int32 ASTINCOFFSET( struct $7ASTNODE*, int64 );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
int32 ASTGETINVERSELOGOP( int32 );
struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 ASTISRELATIONALBOP( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
int64 SYMBCALCDEREFLEN( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int32 );
void TYPEMAX( int32, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
uint8* HUNESCAPE( uint8*, int32* );
uint32* HUNESCAPEW( uint32*, int32* );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
struct $7ASTNODE* RTLSTRCOMPARE( struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWSTRCOMPARE( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRCONCAT( struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* RTLMATHPOW( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLMATHLONGINTDIV( int32, struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLMATHLONGINTMOD( int32, struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLMATHBOP( int32, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLOOPISTYPEOF( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HSTRLITERALCONCAT( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HWSTRLITERALCONCAT( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HSTRLITERALCOMPARE( int32, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HWSTRLITERALCOMPARE( int32, struct $7ASTNODE*, struct $7ASTNODE* );
static void HTOSTR( struct $7ASTNODE**, struct $7ASTNODE** );
static struct $7ASTNODE* HCONSTBOP( int32, int32, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE* );
static int32 HCHECKPOINTER( int32, int32, int32 );
static struct $7ASTNODE* HDOPOINTERARITH( int32, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static struct $7ASTNODE* HCONVERTUDT_L( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
static struct $7ASTNODE* HCONVERTUDT_R( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
static int32 HCHECKDEREFWCHARPTR( struct $7ASTNODE*, int32*, struct $7ASTNODE*, int32 );
static void HCONVOPERAND( int32, int32*, int32*, struct $7ASTNODE** );
static int32 HGETINTEGERORBIGGER( int32 );
static int32 HISCONSIDEREDBOOLEAN( struct $7ASTNODE* );
static int32 HSHOULDWARNABOUTMIXEDBOOL( struct $7ASTNODE*, struct $7ASTNODE* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$55)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int32, struct $8FBSYMBOL*, int32, uint8* );
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
extern struct $10AST_OPINFO AST_OPTB$[121];
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

struct $7ASTNODE* ASTNEWBOP( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	int32 TMP$139$1;
	int32 TMP$140$1;
	int32 TMP$141$1;
	int32 TMP$142$1;
	int32 TMP$144$1;
	int32 TMP$145$1;
	int32 TMP$146$1;
	int32 TMP$147$1;
	int32 TMP$148$1;
	int32 TMP$149$1;
	int32 TMP$160$1;
	int32 TMP$161$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$277:;
	struct $7ASTNODE* N$1;
	int32 LDTYPE0$1;
	int32 RDTYPE0$1;
	int32 LDTYPE$1;
	int32 RDTYPE$1;
	int32 DTYPE$1;
	int32 LDCLASS$1;
	int32 RDCLASS$1;
	int32 LRANK$1;
	int32 RRANK$1;
	int32 INTRANK$1;
	int32 UINTRANK$1;
	int32 IS_STR$1;
	struct $8FBSYMBOL* LITSYM$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 DO_PROMOTE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (2 & 31))) + 99128) == (struct $8FBSYMBOL*)0u ) goto label$280;
	{
		struct $8FBSYMBOL* PROC$2;
		$9FB_ERRMSG ERR_NUM$2;
		struct $8FBSYMBOL* vr$4 = SYMBFINDBOPOVLPROC( OP$1, L$1, R$1, &ERR_NUM$2 );
		PROC$2 = vr$4;
		if( PROC$2 == (struct $8FBSYMBOL*)0u ) goto label$282;
		{
			struct $7ASTNODE* vr$5 = ASTBUILDCALL( PROC$2, L$1, R$1, (struct $7ASTNODE*)0u );
			fb$result$1 = vr$5;
			goto label$278;
		}
		goto label$281;
		label$282:;
		{
			if( ERR_NUM$2 == 0 ) goto label$284;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$278;
			}
			label$284:;
			label$283:;
		}
		label$281:;
	}
	label$280:;
	label$279:;
	IS_STR$1 = 0;
	{
		if( OP$1 != 44 ) goto label$286;
		label$287:;
		{
			HTOSTR( &L$1, &R$1 );
			OP$1 = 28;
		}
		goto label$285;
		label$286:;
		if( OP$1 != 51 ) goto label$288;
		label$289:;
		{
			struct $7ASTNODE* vr$8 = RTLOOPISTYPEOF( L$1, R$1 );
			fb$result$1 = vr$8;
			goto label$278;
		}
		label$288:;
		label$285:;
	}
	LDTYPE$1 = *(int32*)((uint8*)L$1 + 4);
	RDTYPE$1 = *(int32*)((uint8*)R$1 + 4);
	if( (LDTYPE$1 & 480) == 0 ) goto label$290;
	TMP$139$1 = 24;
	goto label$638;
	label$290:;
	TMP$139$1 = LDTYPE$1 & 31;
	label$638:;
	LDCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$139$1 * 28));
	if( (RDTYPE$1 & 480) == 0 ) goto label$291;
	TMP$140$1 = 24;
	goto label$639;
	label$291:;
	TMP$140$1 = RDTYPE$1 & 31;
	label$639:;
	RDCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$140$1 * 28));
	DO_PROMOTE$1 = -1;
	if( (LDTYPE$1 & 480) == 0 ) goto label$292;
	TMP$141$1 = 24;
	goto label$640;
	label$292:;
	TMP$141$1 = LDTYPE$1 & 31;
	label$640:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$293;
	TMP$142$1 = 24;
	goto label$641;
	label$293:;
	TMP$142$1 = RDTYPE$1 & 31;
	label$641:;
	if( (-(TMP$141$1 == 20) | -(TMP$142$1 == 20)) == 0 ) goto label$295;
	{
		int32 TMP$143$2;
		if( (OPTIONS$1 & 8) == 0 ) goto label$297;
		{
			goto label$278;
		}
		label$297:;
		label$296:;
		if( (LDTYPE$1 & 480) == 0 ) goto label$298;
		TMP$143$2 = 24;
		goto label$642;
		label$298:;
		TMP$143$2 = LDTYPE$1 & 31;
		label$642:;
		if( TMP$143$2 != 20 ) goto label$300;
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
	if( (LDTYPE$1 & 480) == 0 ) goto label$302;
	{
		if( (OPTIONS$1 & 2) == 0 ) goto label$304;
		{
			struct $7ASTNODE* vr$31 = HDOPOINTERARITH( OP$1, L$1, R$1, 0 );
			fb$result$1 = vr$31;
			goto label$278;
		}
		goto label$303;
		label$304:;
		{
			int32 vr$32 = HCHECKPOINTER( OP$1, RDTYPE$1, RDCLASS$1 );
			if( vr$32 != 0 ) goto label$306;
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
	if( (RDTYPE$1 & 480) == 0 ) goto label$307;
	{
		if( (OPTIONS$1 & 4) == 0 ) goto label$309;
		{
			struct $7ASTNODE* vr$35 = HDOPOINTERARITH( OP$1, R$1, L$1, -1 );
			fb$result$1 = vr$35;
			goto label$278;
		}
		goto label$308;
		label$309:;
		{
			int32 vr$36 = HCHECKPOINTER( OP$1, LDTYPE$1, LDCLASS$1 );
			if( vr$36 != 0 ) goto label$311;
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
	if( (LDTYPE$1 & 480) == 0 ) goto label$312;
	TMP$144$1 = 24;
	goto label$643;
	label$312:;
	TMP$144$1 = LDTYPE$1 & 31;
	label$643:;
	if( TMP$144$1 != 10 ) goto label$314;
	{
		HCONVOPERAND( 8, &LDTYPE$1, &LDCLASS$1, &L$1 );
	}
	label$314:;
	label$313:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$315;
	TMP$145$1 = 24;
	goto label$644;
	label$315:;
	TMP$145$1 = RDTYPE$1 & 31;
	label$644:;
	if( TMP$145$1 != 10 ) goto label$317;
	{
		HCONVOPERAND( 8, &RDTYPE$1, &RDCLASS$1, &R$1 );
	}
	label$317:;
	label$316:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$318;
	TMP$146$1 = 24;
	goto label$645;
	label$318:;
	TMP$146$1 = LDTYPE$1 & 31;
	label$645:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$319;
	TMP$147$1 = 24;
	goto label$646;
	label$319:;
	TMP$147$1 = RDTYPE$1 & 31;
	label$646:;
	if( (-(TMP$146$1 == 4) & -(TMP$147$1 == 4)) == 0 ) goto label$321;
	{
		LDCLASS$1 = 2;
		RDCLASS$1 = LDCLASS$1;
	}
	label$321:;
	label$320:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$322;
	TMP$148$1 = 24;
	goto label$647;
	label$322:;
	TMP$148$1 = LDTYPE$1 & 31;
	label$647:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$323;
	TMP$149$1 = 24;
	goto label$648;
	label$323:;
	TMP$149$1 = RDTYPE$1 & 31;
	label$648:;
	if( (-(TMP$148$1 == 7) | -(TMP$149$1 == 7)) == 0 ) goto label$325;
	{
		if( (LDTYPE$1 & 511) == (RDTYPE$1 & 511) ) goto label$327;
		{
			int32 TMP$150$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$328;
			TMP$150$3 = 24;
			goto label$649;
			label$328:;
			TMP$150$3 = LDTYPE$1 & 31;
			label$649:;
			if( TMP$150$3 != 7 ) goto label$330;
			{
				int32 TMP$151$4;
				if( (RDTYPE$1 & 480) == 0 ) goto label$331;
				TMP$151$4 = 24;
				goto label$650;
				label$331:;
				TMP$151$4 = RDTYPE$1 & 31;
				label$650:;
				IS_STR$1 = -(RDCLASS$1 == 2) | -(TMP$151$4 == 4);
			}
			goto label$329;
			label$330:;
			{
				int32 TMP$152$4;
				if( (LDTYPE$1 & 480) == 0 ) goto label$332;
				TMP$152$4 = 24;
				goto label$651;
				label$332:;
				TMP$152$4 = LDTYPE$1 & 31;
				label$651:;
				IS_STR$1 = -(LDCLASS$1 == 2) | -(TMP$152$4 == 4);
			}
			label$329:;
		}
		goto label$326;
		label$327:;
		{
			IS_STR$1 = -1;
		}
		label$326:;
		if( IS_STR$1 == 0 ) goto label$334;
		{
			LITSYM$1 = (struct $8FBSYMBOL*)0u;
			{
				int32 TMP$153$4;
				int32 TMP$154$4;
				if( (LDTYPE$1 & 480) == 0 ) goto label$335;
				TMP$153$4 = 24;
				goto label$652;
				label$335:;
				TMP$153$4 = LDTYPE$1 & 31;
				label$652:;
				TMP$154$4 = TMP$153$4;
				if( TMP$154$4 == 4 ) goto label$338;
				label$339:;
				if( TMP$154$4 != 7 ) goto label$337;
				label$338:;
				{
					struct $8FBSYMBOL* vr$77 = ASTGETSTRLITSYMBOL( L$1 );
					LITSYM$1 = vr$77;
					if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$341;
					{
						{
							if( RDTYPE$1 == 4 ) goto label$344;
							label$345:;
							if( RDTYPE$1 != 7 ) goto label$343;
							label$344:;
							{
								struct $8FBSYMBOL* vr$78 = ASTGETSTRLITSYMBOL( R$1 );
								LITSYM$1 = vr$78;
							}
							goto label$342;
							label$343:;
							{
								LITSYM$1 = (struct $8FBSYMBOL*)0u;
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
			if( OP$1 != 28 ) goto label$348;
			{
				if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$350;
				{
					if( (-((LDTYPE$1 & 511) == (RDTYPE$1 & 511)) | *(int32*)((uint8*)&ENV$ + 288)) == 0 ) goto label$352;
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
				if( (LDTYPE$1 & 511) == (RDTYPE$1 & 511) ) goto label$354;
				{
					struct $7ASTNODE* vr$86 = RTLWSTRCONCAT( L$1, LDTYPE$1, R$1, RDTYPE$1 );
					fb$result$1 = vr$86;
					goto label$278;
				}
				label$354:;
				label$353:;
				LDTYPE$1 = ((LDTYPE$1 & -512) | 7) & -513;
				LDCLASS$1 = 0;
				RDTYPE$1 = (RDTYPE$1 & -512) | (LDTYPE$1 & 511);
				RDCLASS$1 = LDCLASS$1;
				IS_STR$1 = -1;
			}
			goto label$347;
			label$348:;
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 8) == 0 ) goto label$355;
			{
				if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$357;
				{
					struct $7ASTNODE* vr$95 = HWSTRLITERALCOMPARE( OP$1, L$1, R$1 );
					fb$result$1 = vr$95;
					goto label$278;
				}
				label$357:;
				label$356:;
				struct $7ASTNODE* vr$96 = RTLWSTRCOMPARE( L$1, R$1 );
				L$1 = vr$96;
				struct $7ASTNODE* vr$97 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				R$1 = vr$97;
				LDTYPE$1 = (LDTYPE$1 & -512) | (*(int32*)((uint8*)L$1 + 4) & 511);
				RDTYPE$1 = (RDTYPE$1 & -512) | (*(int32*)((uint8*)R$1 + 4) & 511);
				LDCLASS$1 = 0;
				RDCLASS$1 = 0;
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
			int32 TMP$155$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$358;
			TMP$155$3 = 24;
			goto label$653;
			label$358:;
			TMP$155$3 = LDTYPE$1 & 31;
			label$653:;
			if( TMP$155$3 != 7 ) goto label$360;
			{
				int32 vr$109 = HCHECKDEREFWCHARPTR( L$1, &LDTYPE$1, R$1, RDTYPE$1 );
				if( vr$109 != 0 ) goto label$362;
				{
					goto label$278;
				}
				label$362:;
				label$361:;
			}
			goto label$359;
			label$360:;
			{
				int32 vr$111 = HCHECKDEREFWCHARPTR( R$1, &RDTYPE$1, L$1, LDTYPE$1 );
				if( vr$111 != 0 ) goto label$364;
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
	if( (-(LDCLASS$1 == 2) | -(RDCLASS$1 == 2)) == 0 ) goto label$365;
	{
		int32 TMP$158$2;
		if( LDCLASS$1 == RDCLASS$1 ) goto label$367;
		{
			if( LDCLASS$1 != 2 ) goto label$369;
			{
				int32 TMP$156$4;
				if( (RDTYPE$1 & 480) == 0 ) goto label$370;
				TMP$156$4 = 24;
				goto label$654;
				label$370:;
				TMP$156$4 = RDTYPE$1 & 31;
				label$654:;
				if( TMP$156$4 == 4 ) goto label$372;
				{
					goto label$278;
				}
				label$372:;
				label$371:;
			}
			goto label$368;
			label$369:;
			{
				int32 TMP$157$4;
				if( (LDTYPE$1 & 480) == 0 ) goto label$373;
				TMP$157$4 = 24;
				goto label$655;
				label$373:;
				TMP$157$4 = LDTYPE$1 & 31;
				label$655:;
				if( TMP$157$4 == 4 ) goto label$375;
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
		LITSYM$1 = (struct $8FBSYMBOL*)0u;
		if( (LDTYPE$1 & 480) == 0 ) goto label$376;
		TMP$158$2 = 24;
		goto label$656;
		label$376:;
		TMP$158$2 = LDTYPE$1 & 31;
		label$656:;
		if( TMP$158$2 != 4 ) goto label$378;
		{
			int32 TMP$159$3;
			if( (RDTYPE$1 & 480) == 0 ) goto label$379;
			TMP$159$3 = 24;
			goto label$657;
			label$379:;
			TMP$159$3 = RDTYPE$1 & 31;
			label$657:;
			if( TMP$159$3 != 4 ) goto label$381;
			{
				struct $8FBSYMBOL* vr$123 = ASTGETSTRLITSYMBOL( L$1 );
				LITSYM$1 = vr$123;
				if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$383;
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
		if( OP$1 != 28 ) goto label$385;
		{
			if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$387;
			{
				struct $7ASTNODE* vr$125 = HSTRLITERALCONCAT( L$1, R$1 );
				fb$result$1 = vr$125;
				goto label$278;
			}
			label$387:;
			label$386:;
			LDTYPE$1 = ((LDTYPE$1 & -512) | 17) & -513;
			LDCLASS$1 = 2;
			RDTYPE$1 = (RDTYPE$1 & -512) | (LDTYPE$1 & 511);
			RDCLASS$1 = LDCLASS$1;
			IS_STR$1 = -1;
		}
		goto label$384;
		label$385:;
		if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 8) == 0 ) goto label$388;
		{
			if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$390;
			{
				struct $7ASTNODE* vr$134 = HSTRLITERALCOMPARE( OP$1, L$1, R$1 );
				fb$result$1 = vr$134;
				goto label$278;
			}
			label$390:;
			label$389:;
			struct $7ASTNODE* vr$135 = RTLSTRCOMPARE( L$1, LDTYPE$1, R$1, RDTYPE$1 );
			L$1 = vr$135;
			struct $7ASTNODE* vr$136 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			R$1 = vr$136;
			LDTYPE$1 = (LDTYPE$1 & -512) | (*(int32*)((uint8*)L$1 + 4) & 511);
			LDCLASS$1 = 0;
			RDTYPE$1 = (RDTYPE$1 & -512) | (*(int32*)((uint8*)R$1 + 4) & 511);
			RDCLASS$1 = 0;
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
	if( (LDTYPE$1 & 480) == 0 ) goto label$392;
	TMP$160$1 = 24;
	goto label$658;
	label$392:;
	TMP$160$1 = LDTYPE$1 & 31;
	label$658:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$393;
	TMP$161$1 = 24;
	goto label$659;
	label$393:;
	TMP$161$1 = RDTYPE$1 & 31;
	label$659:;
	if( (-(TMP$160$1 == 4) | -(TMP$161$1 == 4)) == 0 ) goto label$391;
	{
		int32 TMP$162$2;
		if( (LDTYPE$1 & 480) == 0 ) goto label$394;
		TMP$162$2 = 24;
		goto label$660;
		label$394:;
		TMP$162$2 = LDTYPE$1 & 31;
		label$660:;
		if( TMP$162$2 != 4 ) goto label$396;
		{
			if( *(int32*)L$1 == 20 ) goto label$398;
			{
				goto label$278;
			}
			label$398:;
			label$397:;
			LDTYPE$1 = (LDTYPE$1 & -512) | 3;
		}
		goto label$395;
		label$396:;
		{
			if( *(int32*)R$1 == 20 ) goto label$400;
			{
				goto label$278;
			}
			label$400:;
			label$399:;
			RDTYPE$1 = (RDTYPE$1 & -512) | 3;
		}
		label$395:;
	}
	label$391:;
	label$324:;
	int32 IS_BOOLEAN$1;
	IS_BOOLEAN$1 = 0;
	if( (-((LDTYPE$1 & 511) == 1) | -((RDTYPE$1 & 511) == 1)) == 0 ) goto label$402;
	{
		{
			uint32 TMP$163$3;
			TMP$163$3 = (uint32)OP$1;
			goto label$404;
			label$405:;
			{
				IS_BOOLEAN$1 = -((LDTYPE$1 & 511) == (RDTYPE$1 & 511));
			}
			goto label$403;
			label$406:;
			{
				goto label$278;
			}
			goto label$403;
			label$404:;
			static const void* tmp$196[15] = {
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
			if( (TMP$163$3 - 34u) > 14u ) goto label$406;
			goto *tmp$196[TMP$163$3 - 34u];
			label$403:;
		}
		int32 vr$168 = HSHOULDWARNABOUTMIXEDBOOL( L$1, R$1 );
		if( vr$168 == 0 ) goto label$408;
		{
			ERRREPORTWARN( 38, (uint8*)0u, 1, (uint8*)0u );
		}
		label$408:;
		label$407:;
	}
	label$402:;
	label$401:;
	LDTYPE0$1 = LDTYPE$1;
	RDTYPE0$1 = RDTYPE$1;
	DO_PROMOTE$1 = (-(*(int32*)((uint8*)&ENV$ + 136) != 3) & ~IS_STR$1) & ~IS_BOOLEAN$1;
	if( DO_PROMOTE$1 == 0 ) goto label$410;
	{
		INTRANK$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 236);
		UINTRANK$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 264);
		if( LDCLASS$1 != 0 ) goto label$412;
		{
			int32 TMP$164$3;
			int32 TMP$165$3;
			int32 TMP$166$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$413;
			TMP$164$3 = 24;
			goto label$661;
			label$413:;
			TMP$164$3 = LDTYPE$1 & 31;
			label$661:;
			if( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$164$3 * 28)) + 16) & 480) == 0 ) goto label$415;
			TMP$166$3 = 24;
			goto label$662;
			label$415:;
			if( (LDTYPE$1 & 480) == 0 ) goto label$414;
			TMP$165$3 = 24;
			goto label$663;
			label$414:;
			TMP$165$3 = LDTYPE$1 & 31;
			label$663:;
			TMP$166$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$165$3 * 28)) + 16) & 31;
			label$662:;
			LRANK$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$166$3 * 28)) + 12);
			if( LRANK$1 >= INTRANK$1 ) goto label$417;
			{
				HCONVOPERAND( 8, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			goto label$416;
			label$417:;
			{
				if( (-(INTRANK$1 < LRANK$1) & -(LRANK$1 < UINTRANK$1)) == 0 ) goto label$419;
				{
					HCONVOPERAND( 9, &LDTYPE$1, &LDCLASS$1, &L$1 );
				}
				label$419:;
				label$418:;
			}
			label$416:;
		}
		label$412:;
		label$411:;
		if( RDCLASS$1 != 0 ) goto label$421;
		{
			int32 TMP$167$3;
			int32 TMP$168$3;
			int32 TMP$169$3;
			if( (RDTYPE$1 & 480) == 0 ) goto label$422;
			TMP$167$3 = 24;
			goto label$664;
			label$422:;
			TMP$167$3 = RDTYPE$1 & 31;
			label$664:;
			if( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$167$3 * 28)) + 16) & 480) == 0 ) goto label$424;
			TMP$169$3 = 24;
			goto label$665;
			label$424:;
			if( (RDTYPE$1 & 480) == 0 ) goto label$423;
			TMP$168$3 = 24;
			goto label$666;
			label$423:;
			TMP$168$3 = RDTYPE$1 & 31;
			label$666:;
			TMP$169$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$168$3 * 28)) + 16) & 31;
			label$665:;
			RRANK$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$169$3 * 28)) + 12);
			if( RRANK$1 >= INTRANK$1 ) goto label$426;
			{
				HCONVOPERAND( 8, &RDTYPE$1, &RDCLASS$1, &R$1 );
			}
			goto label$425;
			label$426:;
			{
				if( (-(INTRANK$1 < RRANK$1) & -(RRANK$1 < UINTRANK$1)) == 0 ) goto label$428;
				{
					HCONVOPERAND( 9, &RDTYPE$1, &RDCLASS$1, &R$1 );
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
		uint32 TMP$170$2;
		TMP$170$2 = (uint32)OP$1;
		goto label$430;
		label$431:;
		{
			if( LDCLASS$1 == 1 ) goto label$433;
			{
				HCONVOPERAND( 16, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			label$433:;
			label$432:;
			if( RDCLASS$1 == 1 ) goto label$435;
			{
				RDTYPE$1 = (RDTYPE$1 & -512) | 16;
				if( (*(int32*)((uint8*)&IR$ + 272) & 1) == 0 ) goto label$437;
				{
					struct $7ASTNODE* vr$216 = ASTNEWCONV( RDTYPE$1, (struct $8FBSYMBOL*)0u, R$1, 0, (int32*)0u );
					R$1 = vr$216;
				}
				goto label$436;
				label$437:;
				{
					if( (-(*(int32*)R$1 != 17) | -(RDTYPE$1 != 8)) == 0 ) goto label$439;
					{
						struct $7ASTNODE* vr$221 = ASTNEWCONV( RDTYPE$1, (struct $8FBSYMBOL*)0u, R$1, 0, (int32*)0u );
						R$1 = vr$221;
					}
					label$439:;
					label$438:;
				}
				label$436:;
				RDCLASS$1 = 1;
			}
			label$435:;
			label$434:;
		}
		goto label$429;
		label$440:;
		{
			if( LDCLASS$1 == 0 ) goto label$442;
			{
				int32 vr$225 = HGETINTEGERORBIGGER( RDTYPE$1 );
				HCONVOPERAND( vr$225, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			label$442:;
			label$441:;
			if( RDCLASS$1 == 0 ) goto label$444;
			{
				int32 vr$229 = HGETINTEGERORBIGGER( LDTYPE$1 );
				HCONVOPERAND( vr$229, &RDTYPE$1, &RDCLASS$1, &R$1 );
			}
			label$444:;
			label$443:;
		}
		goto label$429;
		label$445:;
		{
			if( LDCLASS$1 == 1 ) goto label$447;
			{
				HCONVOPERAND( 16, &LDTYPE$1, &LDCLASS$1, &L$1 );
			}
			label$447:;
			label$446:;
			if( RDCLASS$1 == 1 ) goto label$449;
			{
				HCONVOPERAND( 16, &RDTYPE$1, &RDCLASS$1, &R$1 );
			}
			label$449:;
			label$448:;
		}
		goto label$429;
		label$430:;
		static const void* tmp$197[34] = {
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
		if( (TMP$170$2 - 31u) > 33u ) goto label$429;
		goto *tmp$197[TMP$170$2 - 31u];
		label$429:;
	}
	if( (-(LDTYPE$1 != RDTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 8))) == 0 ) goto label$451;
	{
		if( ((-((LDTYPE$1 & 480) != 0) | -((RDTYPE$1 & 480) != 0)) & (-(OP$1 == 28) | -(OP$1 == 29))) == 0 ) goto label$453;
		{
			if( (LDTYPE$1 & 480) == 0 ) goto label$455;
			{
				DTYPE$1 = LDTYPE$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
			}
			goto label$454;
			label$455:;
			{
				DTYPE$1 = RDTYPE$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 8);
			}
			label$454:;
		}
		goto label$452;
		label$453:;
		{
			TYPEMAX( LDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), RDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)R$1 + 8), &DTYPE$1, &SUBTYPE$1 );
			if( (-((DTYPE$1 & 511) != (LDTYPE$1 & 511)) | -(SUBTYPE$1 != *(struct $8FBSYMBOL**)((uint8*)L$1 + 8))) == 0 ) goto label$457;
			{
				int32 TMP$171$4;
				struct $7ASTNODE* vr$263 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, L$1, 0, (int32*)0u );
				L$1 = vr$263;
				if( L$1 != (struct $7ASTNODE*)0u ) goto label$459;
				{
					goto label$278;
					label$459:;
				}
				LDTYPE$1 = DTYPE$1;
				if( (DTYPE$1 & 480) == 0 ) goto label$460;
				TMP$171$4 = 24;
				goto label$667;
				label$460:;
				TMP$171$4 = DTYPE$1 & 31;
				label$667:;
				LDCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$171$4 * 28));
			}
			label$457:;
			label$456:;
			if( (-((DTYPE$1 & 511) != (RDTYPE$1 & 511)) | -(SUBTYPE$1 != *(struct $8FBSYMBOL**)((uint8*)R$1 + 8))) == 0 ) goto label$462;
			{
				{
					if( OP$1 == 41 ) goto label$465;
					label$466:;
					if( OP$1 != 42 ) goto label$464;
					label$465:;
					{
					}
					goto label$463;
					label$464:;
					{
						int32 TMP$172$6;
						struct $7ASTNODE* vr$273 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, R$1, 0, (int32*)0u );
						R$1 = vr$273;
						if( R$1 != (struct $7ASTNODE*)0u ) goto label$469;
						{
							goto label$278;
							label$469:;
						}
						RDTYPE$1 = DTYPE$1;
						if( (DTYPE$1 & 480) == 0 ) goto label$470;
						TMP$172$6 = 24;
						goto label$668;
						label$470:;
						TMP$172$6 = DTYPE$1 & 31;
						label$668:;
						RDCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$172$6 * 28));
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
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
	}
	label$450:;
	{
		uint32 TMP$173$2;
		TMP$173$2 = (uint32)OP$1;
		goto label$472;
		label$473:;
		{
			int32 TMP$174$3;
			int32 TMP$176$3;
			int32 TMP$177$3;
			int32 TMP$178$3;
			$13FB_WARNINGMSG WARNING$3;
			WARNING$3 = 0;
			if( (LDTYPE0$1 & 480) == 0 ) goto label$474;
			TMP$174$3 = 24;
			goto label$669;
			label$474:;
			TMP$174$3 = LDTYPE0$1 & 31;
			label$669:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$174$3 * 28)) + 8) == 0 ) goto label$476;
			{
				int32 TMP$175$4;
				if( (LDTYPE$1 & 480) == 0 ) goto label$477;
				TMP$175$4 = 24;
				goto label$670;
				label$477:;
				TMP$175$4 = LDTYPE$1 & 31;
				label$670:;
				if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$175$4 * 28)) + 8) != 0 ) goto label$479;
				{
					if( *(int32*)L$1 != 16 ) goto label$481;
					{
						int64 vr$285 = ASTCONSTGETASINT64( L$1 );
						if( vr$285 >= 0ll ) goto label$483;
						{
							WARNING$3 = 35;
						}
						label$483:;
						label$482:;
					}
					goto label$480;
					label$481:;
					{
						if( (*(int32*)((uint8*)&ENV$ + 200) & 32) == 0 ) goto label$485;
						{
							WARNING$3 = 35;
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
			if( WARNING$3 != 0 ) goto label$486;
			TMP$176$3 = -(OP$1 != 42);
			goto label$671;
			label$486:;
			TMP$176$3 = 0;
			label$671:;
			if( TMP$176$3 == 0 ) goto label$488;
			if( (RDTYPE0$1 & 480) == 0 ) goto label$487;
			TMP$177$3 = 24;
			goto label$673;
			label$487:;
			TMP$177$3 = RDTYPE0$1 & 31;
			label$673:;
			TMP$178$3 = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$177$3 * 28)) + 8) != 0);
			goto label$672;
			label$488:;
			TMP$178$3 = 0;
			label$672:;
			if( TMP$178$3 == 0 ) goto label$490;
			{
				int32 TMP$179$4;
				if( (RDTYPE$1 & 480) == 0 ) goto label$491;
				TMP$179$4 = 24;
				goto label$674;
				label$491:;
				TMP$179$4 = RDTYPE$1 & 31;
				label$674:;
				if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$179$4 * 28)) + 8) != 0 ) goto label$493;
				{
					if( *(int32*)R$1 != 16 ) goto label$495;
					{
						int64 vr$296 = ASTCONSTGETASINT64( R$1 );
						if( vr$296 >= 0ll ) goto label$497;
						{
							WARNING$3 = 35;
						}
						label$497:;
						label$496:;
					}
					goto label$494;
					label$495:;
					{
						if( (*(int32*)((uint8*)&ENV$ + 200) & 32) == 0 ) goto label$499;
						{
							WARNING$3 = 35;
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
			if( WARNING$3 == 0 ) goto label$501;
			{
				ERRREPORTWARN( WARNING$3, (uint8*)0u, 1, (uint8*)0u );
			}
			label$501:;
			label$500:;
		}
		goto label$471;
		label$472:;
		static const void* tmp$198[19] = {
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
		if( (TMP$173$2 - 32u) > 18u ) goto label$471;
		goto *tmp$198[TMP$173$2 - 32u];
		label$471:;
	}
	{
		uint32 TMP$180$2;
		TMP$180$2 = (uint32)OP$1;
		goto label$503;
		label$504:;
		{
			if( (DTYPE$1 & 511) == 1 ) goto label$506;
			{
				DTYPE$1 = 8;
			}
			label$506:;
			label$505:;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$502;
		label$507:;
		{
			if( *(int32*)R$1 != 16 ) goto label$509;
			{
				int32 TMP$181$4;
				if( (LDTYPE$1 & 480) == 0 ) goto label$510;
				TMP$181$4 = 24;
				goto label$675;
				label$510:;
				TMP$181$4 = LDTYPE$1 & 31;
				label$675:;
				if( *(uint64*)((uint8*)R$1 + 24) < (uint64)(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$181$4 * 28)) + 4) << (3 & 31)) ) goto label$512;
				{
					int32 TMP$182$5;
					ERRREPORTWARN( 33, (uint8*)0u, 1, (uint8*)0u );
					if( (LDTYPE$1 & 480) == 0 ) goto label$513;
					TMP$182$5 = 24;
					goto label$676;
					label$513:;
					TMP$182$5 = LDTYPE$1 & 31;
					label$676:;
					struct $7ASTNODE* vr$312 = ASTNEWCONSTI( (int64)((*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$182$5 * 28)) + 4) << (3 & 31)) + -1), 8, (struct $8FBSYMBOL*)0u );
					struct $7ASTNODE* vr$313 = ASTNEWBOP( 34, R$1, vr$312, (struct $8FBSYMBOL*)0u, 1 );
					R$1 = vr$313;
				}
				label$512:;
				label$511:;
			}
			label$509:;
			label$508:;
			if( (RDTYPE$1 & 511) == 8 ) goto label$515;
			{
				if( (RDTYPE$1 & 511) == 9 ) goto label$517;
				{
					RDTYPE$1 = (RDTYPE$1 & -512) | 8;
					struct $7ASTNODE* vr$318 = ASTNEWCONV( RDTYPE$1, (struct $8FBSYMBOL*)0u, R$1, 0, (int32*)0u );
					R$1 = vr$318;
					RDCLASS$1 = 0;
				}
				label$517:;
				label$516:;
			}
			label$515:;
			label$514:;
		}
		goto label$502;
		label$503:;
		static const void* tmp$199[15] = {
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
		if( (TMP$180$2 - 36u) > 14u ) goto label$502;
		goto *tmp$199[TMP$180$2 - 36u];
		label$502:;
	}
	if( (-(*(int32*)L$1 == 16) & -(*(int32*)R$1 == 16)) == 0 ) goto label$519;
	{
		struct $7ASTNODE* vr$324 = HCONSTBOP( OP$1, DTYPE$1, SUBTYPE$1, L$1, R$1 );
		L$1 = vr$324;
		*(int32*)((uint8*)L$1 + 4) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = SUBTYPE$1;
		ASTDELNODE( R$1 );
		fb$result$1 = L$1;
		goto label$278;
	}
	label$519:;
	label$518:;
	if( *(int32*)L$1 != 16 ) goto label$521;
	{
		int32 DO_SWAP$2;
		DO_SWAP$2 = 0;
		{
			if( OP$1 == 28 ) goto label$524;
			label$525:;
			if( OP$1 == 30 ) goto label$524;
			label$526:;
			if( OP$1 == 34 ) goto label$524;
			label$527:;
			if( OP$1 == 35 ) goto label$524;
			label$528:;
			if( OP$1 == 38 ) goto label$524;
			label$529:;
			if( OP$1 == 39 ) goto label$524;
			label$530:;
			if( OP$1 == 45 ) goto label$524;
			label$531:;
			if( OP$1 != 48 ) goto label$523;
			label$524:;
			{
				DO_SWAP$2 = -1;
			}
			goto label$522;
			label$523:;
			if( OP$1 != 49 ) goto label$532;
			label$533:;
			{
				OP$1 = 50;
				DO_SWAP$2 = -1;
			}
			goto label$522;
			label$532:;
			if( OP$1 != 46 ) goto label$534;
			label$535:;
			{
				OP$1 = 47;
				DO_SWAP$2 = -1;
			}
			goto label$522;
			label$534:;
			if( OP$1 != 50 ) goto label$536;
			label$537:;
			{
				OP$1 = 49;
				DO_SWAP$2 = -1;
			}
			goto label$522;
			label$536:;
			if( OP$1 != 47 ) goto label$538;
			label$539:;
			{
				OP$1 = 46;
				DO_SWAP$2 = -1;
			}
			goto label$522;
			label$538:;
			if( OP$1 != 29 ) goto label$540;
			label$541:;
			{
				*(int32*)((uint8*)&AST$ + 232) = *(int32*)((uint8*)&AST$ + 232) + 1;
				struct $7ASTNODE* vr$329 = ASTNEWUOP( 54, R$1 );
				R$1 = vr$329;
				*(int32*)((uint8*)&AST$ + 232) = *(int32*)((uint8*)&AST$ + 232) + -1;
				if( R$1 != (struct $7ASTNODE*)0u ) goto label$543;
				{
					fb$result$1 = (struct $7ASTNODE*)0u;
					goto label$278;
				}
				label$543:;
				label$542:;
				OP$1 = 28;
				DO_SWAP$2 = -1;
			}
			label$540:;
			label$522:;
		}
		if( DO_SWAP$2 == 0 ) goto label$545;
		{
			{
				int32 TMP$183$4;
				TMP$183$4 = LDTYPE$1;
				LDTYPE$1 = RDTYPE$1;
				RDTYPE$1 = TMP$183$4;
			}
			{
				int32 TMP$184$4;
				TMP$184$4 = LDCLASS$1;
				LDCLASS$1 = RDCLASS$1;
				RDCLASS$1 = TMP$184$4;
			}
			{
				struct $7ASTNODE* TMP$185$4;
				TMP$185$4 = L$1;
				L$1 = R$1;
				R$1 = TMP$185$4;
			}
		}
		label$545:;
		label$544:;
	}
	label$521:;
	label$520:;
	if( *(int32*)R$1 != 16 ) goto label$547;
	{
		{
			if( OP$1 != 48 ) goto label$549;
			label$550:;
			{
				if( (-(LDCLASS$1 == 0) & -(RDCLASS$1 == 0)) == 0 ) goto label$552;
				{
					if( *(int64*)((uint8*)R$1 + 24) != 0ll ) goto label$554;
					{
						int32 vr$336 = ASTISRELATIONALBOP( L$1 );
						if( vr$336 == 0 ) goto label$556;
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
			if( OP$1 != 45 ) goto label$557;
			label$558:;
			{
				if( (-(LDCLASS$1 == 0) & -(RDCLASS$1 == 0)) == 0 ) goto label$560;
				{
					if( *(int64*)((uint8*)R$1 + 24) != 0ll ) goto label$562;
					{
						int32 vr$341 = ASTISRELATIONALBOP( L$1 );
						if( vr$341 == 0 ) goto label$564;
						{
							int32 vr$343 = ASTGETINVERSELOGOP( *(int32*)((uint8*)L$1 + 24) );
							*(int32*)((uint8*)L$1 + 24) = vr$343;
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
			if( OP$1 != 28 ) goto label$565;
			label$566:;
			{
				{
					$13AST_NODECLASS TMP$186$5;
					TMP$186$5 = *($13AST_NODECLASS*)L$1;
					if( TMP$186$5 != 23 ) goto label$568;
					label$569:;
					{
						*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) + *(int64*)((uint8*)R$1 + 24);
						ASTDELNODE( R$1 );
						fb$result$1 = L$1;
						goto label$278;
					}
					goto label$567;
					label$568:;
					if( TMP$186$5 != 6 ) goto label$570;
					label$571:;
					{
						int32 vr$352 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)L$1 + 64), *(int64*)((uint8*)R$1 + 24) );
						if( vr$352 == 0 ) goto label$573;
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
			if( OP$1 != 29 ) goto label$574;
			label$575:;
			{
				{
					$13AST_NODECLASS TMP$187$5;
					TMP$187$5 = *($13AST_NODECLASS*)L$1;
					if( TMP$187$5 != 23 ) goto label$577;
					label$578:;
					{
						*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) - *(int64*)((uint8*)R$1 + 24);
						ASTDELNODE( R$1 );
						fb$result$1 = L$1;
						goto label$278;
					}
					goto label$576;
					label$577:;
					if( TMP$187$5 != 6 ) goto label$579;
					label$580:;
					{
						int32 vr$361 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)L$1 + 64), -(*(int64*)((uint8*)R$1 + 24)) );
						if( vr$361 == 0 ) goto label$582;
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
				*(int32*)((uint8*)&AST$ + 232) = *(int32*)((uint8*)&AST$ + 232) + 1;
				struct $7ASTNODE* vr$363 = ASTNEWUOP( 54, R$1 );
				R$1 = vr$363;
				*(int32*)((uint8*)&AST$ + 232) = *(int32*)((uint8*)&AST$ + 232) + -1;
				OP$1 = 28;
			}
			goto label$548;
			label$574:;
			if( OP$1 == 32 ) goto label$584;
			label$585:;
			if( OP$1 != 33 ) goto label$583;
			label$584:;
			{
				if( *(int64*)((uint8*)R$1 + 24) != 0ll ) goto label$587;
				{
					ERRREPORT( 100, 0, (uint8*)0u );
				}
				label$587:;
				label$586:;
			}
			goto label$548;
			label$583:;
			if( OP$1 != 43 ) goto label$588;
			label$589:;
			{
				if( *(double*)((uint8*)R$1 + 24) != 0x1.p+1 ) goto label$591;
				{
					if( *(int32*)L$1 != 5 ) goto label$593;
					{
						{
							$13AST_NODECLASS TMP$188$7;
							TMP$188$7 = *($13AST_NODECLASS*)*(struct $7ASTNODE**)((uint8*)L$1 + 64);
							if( TMP$188$7 == 17 ) goto label$596;
							label$597:;
							if( TMP$188$7 == 18 ) goto label$596;
							label$598:;
							if( TMP$188$7 == 19 ) goto label$596;
							label$599:;
							if( TMP$188$7 != 20 ) goto label$595;
							label$596:;
							{
								N$1 = L$1;
								L$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 64);
								ASTDELNODE( N$1 );
								LDTYPE$1 = (LDTYPE$1 & -512) | (*(int32*)((uint8*)L$1 + 4) & 511);
							}
							label$595:;
							label$594:;
						}
					}
					label$593:;
					label$592:;
					{
						$13AST_NODECLASS TMP$189$6;
						TMP$189$6 = *($13AST_NODECLASS*)L$1;
						if( TMP$189$6 == 17 ) goto label$602;
						label$603:;
						if( TMP$189$6 == 18 ) goto label$602;
						label$604:;
						if( TMP$189$6 == 19 ) goto label$602;
						label$605:;
						if( TMP$189$6 != 20 ) goto label$601;
						label$602:;
						{
							int32 vr$376 = ASTHASSIDEFX( L$1 );
							if( vr$376 != 0 ) goto label$607;
							{
								int32 TMP$190$8;
								if( ((*(int32*)((uint8*)L$1 + 4) & 511) & 480) == 0 ) goto label$608;
								TMP$190$8 = 24;
								goto label$677;
								label$608:;
								TMP$190$8 = (*(int32*)((uint8*)L$1 + 4) & 511) & 31;
								label$677:;
								if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$190$8 * 28)) == 1 ) goto label$610;
								{
									struct $7ASTNODE* vr$384 = ASTNEWCONV( 16, (struct $8FBSYMBOL*)0u, L$1, 0, (int32*)0u );
									L$1 = vr$384;
								}
								label$610:;
								label$609:;
								ASTDELNODE( R$1 );
								struct $7ASTNODE* vr$385 = ASTCLONETREE( L$1 );
								R$1 = vr$385;
								OP$1 = 30;
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
		uint32 TMP$191$2;
		TMP$191$2 = (uint32)OP$1;
		goto label$612;
		label$613:;
		{
			struct $7ASTNODE* vr$386 = RTLMATHPOW( L$1, R$1 );
			fb$result$1 = vr$386;
			goto label$278;
		}
		goto label$611;
		label$614:;
		{
			if( (*(int32*)((uint8*)&IR$ + 272) & 131072) == 0 ) goto label$616;
			{
				struct $7ASTNODE* vr$388 = RTLMATHBOP( OP$1, L$1, R$1 );
				fb$result$1 = vr$388;
				goto label$278;
			}
			label$616:;
			label$615:;
		}
		goto label$611;
		label$617:;
		{
			{
				int32 TMP$192$4;
				int32 TMP$193$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$618;
				TMP$192$4 = 24;
				goto label$678;
				label$618:;
				TMP$192$4 = DTYPE$1 & 31;
				label$678:;
				TMP$193$4 = TMP$192$4;
				if( TMP$193$4 == 13 ) goto label$621;
				label$622:;
				if( TMP$193$4 != 14 ) goto label$620;
				label$621:;
				{
					struct $7ASTNODE* vr$391 = RTLMATHLONGINTDIV( DTYPE$1, L$1, LDTYPE$1, R$1, RDTYPE$1 );
					fb$result$1 = vr$391;
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
				int32 TMP$194$4;
				int32 TMP$195$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$624;
				TMP$194$4 = 24;
				goto label$679;
				label$624:;
				TMP$194$4 = DTYPE$1 & 31;
				label$679:;
				TMP$195$4 = TMP$194$4;
				if( TMP$195$4 == 13 ) goto label$627;
				label$628:;
				if( TMP$195$4 != 14 ) goto label$626;
				label$627:;
				{
					struct $7ASTNODE* vr$394 = RTLMATHLONGINTMOD( DTYPE$1, L$1, LDTYPE$1, R$1, RDTYPE$1 );
					fb$result$1 = vr$394;
					goto label$278;
				}
				label$626:;
				label$625:;
			}
		}
		goto label$611;
		label$629:;
		{
			int32 CMP_OP$3;
			__builtin_memset( &CMP_OP$3, 0, 4 );
			struct $7ASTNODE* CMP_CONSTL$3;
			__builtin_memset( &CMP_CONSTL$3, 0, 4 );
			struct $7ASTNODE* CMP_CONSTR$3;
			__builtin_memset( &CMP_CONSTR$3, 0, 4 );
			if( LDCLASS$1 != 1 ) goto label$631;
			{
				struct $7ASTNODE* vr$398 = ASTNEWCONSTF( 0x0p+0, 15 );
				CMP_CONSTL$3 = vr$398;
				struct $7ASTNODE* vr$399 = ASTNEWCONSTF( 0x0p+0, 15 );
				CMP_CONSTR$3 = vr$399;
			}
			goto label$630;
			label$631:;
			{
				struct $7ASTNODE* vr$400 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
				CMP_CONSTL$3 = vr$400;
				struct $7ASTNODE* vr$401 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
				CMP_CONSTR$3 = vr$401;
			}
			label$630:;
			if( OP$1 != 36 ) goto label$633;
			{
				CMP_OP$3 = 48;
			}
			goto label$632;
			label$633:;
			{
				CMP_OP$3 = 45;
			}
			label$632:;
			struct $7ASTNODE* vr$402 = ASTNEWBOP( CMP_OP$3, L$1, CMP_CONSTL$3, (struct $8FBSYMBOL*)0u, 1 );
			L$1 = vr$402;
			struct $7ASTNODE* vr$403 = ASTNEWBOP( 48, R$1, CMP_CONSTR$3, (struct $8FBSYMBOL*)0u, 1 );
			R$1 = vr$403;
			if( OP$1 != 36 ) goto label$635;
			{
				struct $7ASTNODE* vr$404 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$405 = ASTNEWIIF( L$1, R$1, (int32)EX$1, vr$404, 0 );
				fb$result$1 = vr$405;
				goto label$278;
			}
			goto label$634;
			label$635:;
			{
				struct $7ASTNODE* vr$406 = ASTNEWCONSTI( -1ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$407 = ASTNEWIIF( L$1, R$1, (int32)EX$1, vr$406, 0 );
				fb$result$1 = vr$407;
				goto label$278;
			}
			label$634:;
		}
		goto label$611;
		label$612:;
		static const void* tmp$200[33] = {
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
		if( (TMP$191$2 - 32u) > 32u ) goto label$611;
		goto *tmp$200[TMP$191$2 - 32u];
		label$611:;
	}
	struct $7ASTNODE* vr$408 = ASTNEWNODE( 3, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$408;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = R$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = EX$1;
	*(int32*)((uint8*)N$1 + 24) = OP$1;
	if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$637;
	{
		OPTIONS$1 = OPTIONS$1 | 1;
	}
	label$637:;
	label$636:;
	*($9AST_OPOPT*)((uint8*)N$1 + 28) = OPTIONS$1;
	fb$result$1 = N$1;
	label$278:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWSELFBOP( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$680:;
	struct $7ASTNODE* T$1;
	struct $8FBSYMBOL* PROC$1;
	$9FB_ERRMSG ERR_NUM$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBFINDSELFBOPOVLPROC( OP$1, L$1, R$1, &ERR_NUM$1 );
	PROC$1 = vr$2;
	if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$683;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDCALL( PROC$1, L$1, R$1, (struct $7ASTNODE*)0u );
		fb$result$1 = vr$3;
		goto label$681;
	}
	label$683:;
	label$682:;
	if( ERR_NUM$1 == 0 ) goto label$685;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$681;
	}
	label$685:;
	label$684:;
	T$1 = (struct $7ASTNODE*)0u;
	int32 vr$4 = ASTHASSIDEFX( L$1 );
	if( vr$4 == 0 ) goto label$687;
	{
		struct $7ASTNODE* vr$6 = ASTMAKEREF( &L$1 );
		struct $7ASTNODE* vr$7 = ASTNEWLINK( T$1, vr$6, 0 );
		T$1 = vr$7;
	}
	label$687:;
	label$686:;
	struct $7ASTNODE* vr$9 = ASTCLONETREE( L$1 );
	struct $7ASTNODE* vr$11 = ASTNEWBOP( *(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 12), vr$9, R$1, EX$1, OPTIONS$1 | 1 );
	R$1 = vr$11;
	if( R$1 != (struct $7ASTNODE*)0u ) goto label$689;
	{
		ASTDELTREE( T$1 );
		goto label$681;
	}
	label$689:;
	label$688:;
	struct $7ASTNODE* vr$12 = ASTNEWASSIGN( L$1, R$1, 0 );
	L$1 = vr$12;
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$691;
	{
		ASTDELTREE( T$1 );
		goto label$681;
	}
	label$691:;
	label$690:;
	struct $7ASTNODE* vr$13 = ASTNEWLINK( T$1, L$1, 0 );
	T$1 = vr$13;
	fb$result$1 = T$1;
	label$681:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADBOP( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$692:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int32 OP$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* V2$1;
	struct $6IRVREG* VR$1;
	OP$1 = *(int32*)((uint8*)N$1 + 24);
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	if( (-(L$1 == (struct $7ASTNODE*)0u) | -(R$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$695;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$693;
	}
	label$695:;
	label$694:;
	if( *(int32*)L$1 != 5 ) goto label$697;
	{
		ASTUPDATECONVFD2FS( L$1, *(int32*)((uint8*)N$1 + 4), -1 );
	}
	label$697:;
	label$696:;
	if( *(int32*)R$1 != 5 ) goto label$699;
	{
		ASTUPDATECONVFD2FS( R$1, *(int32*)((uint8*)N$1 + 4), -1 );
	}
	label$699:;
	label$698:;
	struct $6IRVREG* vr$11 = ASTLOAD( L$1 );
	V1$1 = vr$11;
	struct $6IRVREG* vr$12 = ASTLOAD( R$1 );
	V2$1 = vr$12;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$701;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$703;
		{
			VR$1 = (struct $6IRVREG*)0u;
			(*(tmp$50*)((uint8*)&IR$ + 92))( OP$1, V1$1, V2$1, (struct $6IRVREG*)0u, *(struct $8FBSYMBOL**)((uint8*)N$1 + 32) );
		}
		goto label$702;
		label$703:;
		{
			if( (*(int32*)((uint8*)N$1 + 28) & 1) == 0 ) goto label$705;
			{
				struct $6IRVREG* vr$20 = (*(tmp$68*)((uint8*)&IR$ + 224))( *(int32*)((uint8*)N$1 + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
				VR$1 = vr$20;
				*(int32*)((uint8*)VR$1 + 20) = *(int32*)((uint8*)N$1 + 16);
			}
			goto label$704;
			label$705:;
			{
				VR$1 = (struct $6IRVREG*)0u;
				*(int32*)((uint8*)V1$1 + 20) = *(int32*)((uint8*)N$1 + 16);
			}
			label$704:;
			(*(tmp$50*)((uint8*)&IR$ + 92))( OP$1, V1$1, V2$1, VR$1, (struct $8FBSYMBOL*)0u );
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$707;
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
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static struct $7ASTNODE* HSTRLITERALCONCAT( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	FBSTRING TMP$83$1;
	FBSTRING TMP$84$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* LS$1;
	struct $8FBSYMBOL* RS$1;
	LS$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 12);
	RS$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 12);
	__builtin_memset( &TMP$84$1, 0, 12 );
	__builtin_memset( &TMP$83$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$83$1, *(void**)((uint8*)LS$1 + 56), 0, *(void**)((uint8*)RS$1 + 56), 0 );
	fb_StrAssign( (void*)&TMP$84$1, -1, (void*)vr$13, -1, 0 );
	struct $8FBSYMBOL* vr$15 = SYMBALLOCSTRCONST( (uint8*)*(uint8**)&TMP$84$1, (int32)((*(int64*)((uint8*)LS$1 + 40) + *(int64*)((uint8*)RS$1 + 40)) + -2ll) );
	S$1 = vr$15;
	fb_StrDelete( (FBSTRING*)&TMP$84$1 );
	struct $7ASTNODE* vr$17 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$17;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HWSTRLITERALCONCAT( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$12:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* LS$1;
	struct $8FBSYMBOL* RS$1;
	LS$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 12);
	RS$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 12);
	if( (*(int32*)((uint8*)LS$1 + 28) & 511) == 7 ) goto label$15;
	{
		uint32* TMP$85$2;
		uint32* TMP$86$2;
		int64 vr$8 = __divdi3( *(int64*)((uint8*)RS$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
		uint32* vr$14 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)LS$1 + 56) );
		TMP$85$2 = vr$14;
		uint32* vr$15 = fb_WstrConcat( (uint32*)TMP$85$2, (uint32*)*(uint32**)((uint8*)RS$1 + 56) );
		TMP$86$2 = vr$15;
		struct $8FBSYMBOL* vr$16 = SYMBALLOCWSTRCONST( TMP$86$2, (int32)((*(int64*)((uint8*)LS$1 + 40) + vr$8) + -2ll) );
		S$1 = vr$16;
		fb_WstrDelete( (uint32*)TMP$86$2 );
		fb_WstrDelete( (uint32*)TMP$85$2 );
	}
	goto label$14;
	label$15:;
	if( (*(int32*)((uint8*)RS$1 + 28) & 511) == 7 ) goto label$16;
	{
		uint32* TMP$87$2;
		uint32* TMP$88$2;
		int64 vr$21 = __divdi3( *(int64*)((uint8*)LS$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
		uint32* vr$27 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)RS$1 + 56) );
		TMP$87$2 = vr$27;
		uint32* vr$29 = fb_WstrConcat( (uint32*)*(uint32**)((uint8*)LS$1 + 56), (uint32*)TMP$87$2 );
		TMP$88$2 = vr$29;
		struct $8FBSYMBOL* vr$30 = SYMBALLOCWSTRCONST( TMP$88$2, (int32)((vr$21 + *(int64*)((uint8*)RS$1 + 40)) + -2ll) );
		S$1 = vr$30;
		fb_WstrDelete( (uint32*)TMP$88$2 );
		fb_WstrDelete( (uint32*)TMP$87$2 );
	}
	goto label$14;
	label$16:;
	{
		uint32* TMP$89$2;
		int64 vr$33 = __divdi3( *(int64*)((uint8*)LS$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
		int64 vr$36 = __divdi3( *(int64*)((uint8*)RS$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
		uint32* vr$42 = fb_WstrConcat( (uint32*)*(uint32**)((uint8*)LS$1 + 56), (uint32*)*(uint32**)((uint8*)RS$1 + 56) );
		TMP$89$2 = vr$42;
		struct $8FBSYMBOL* vr$43 = SYMBALLOCWSTRCONST( TMP$89$2, (int32)((vr$33 + vr$36) + -2ll) );
		S$1 = vr$43;
		fb_WstrDelete( (uint32*)TMP$89$2 );
	}
	label$14:;
	struct $7ASTNODE* vr$44 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$44;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$13:;
	return fb$result$1;
}

static struct $7ASTNODE* HSTRLITERALCOMPARE( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int32 TMP$90$1;
	int32 TMP$91$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$17:;
	static struct $8DZSTRING LTEXT$1;
	static struct $8DZSTRING RTEXT$1;
	int32 RES$1;
	TMP$90$1 = 0;
	uint8* vr$4 = HUNESCAPE( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 12) + 56), &TMP$90$1 );
	DZSTRASSIGN( &LTEXT$1, (uint8*)vr$4 );
	TMP$91$1 = 0;
	uint8* vr$8 = HUNESCAPE( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 12) + 56), &TMP$91$1 );
	DZSTRASSIGN( &RTEXT$1, (uint8*)vr$8 );
	{
		uint32 TMP$92$2;
		TMP$92$2 = (uint32)OP$1;
		goto label$20;
		label$21:;
		{
			int32 vr$9 = fb_StrCompare( *(void**)&LTEXT$1, 0, *(void**)&RTEXT$1, 0 );
			RES$1 = -(vr$9 == 0);
		}
		goto label$19;
		label$22:;
		{
			int32 vr$11 = fb_StrCompare( *(void**)&LTEXT$1, 0, *(void**)&RTEXT$1, 0 );
			RES$1 = -(vr$11 > 0);
		}
		goto label$19;
		label$23:;
		{
			int32 vr$13 = fb_StrCompare( *(void**)&LTEXT$1, 0, *(void**)&RTEXT$1, 0 );
			RES$1 = -(vr$13 < 0);
		}
		goto label$19;
		label$24:;
		{
			int32 vr$15 = fb_StrCompare( *(void**)&LTEXT$1, 0, *(void**)&RTEXT$1, 0 );
			RES$1 = -(vr$15 != 0);
		}
		goto label$19;
		label$25:;
		{
			int32 vr$17 = fb_StrCompare( *(void**)&LTEXT$1, 0, *(void**)&RTEXT$1, 0 );
			RES$1 = -(vr$17 <= 0);
		}
		goto label$19;
		label$26:;
		{
			int32 vr$19 = fb_StrCompare( *(void**)&LTEXT$1, 0, *(void**)&RTEXT$1, 0 );
			RES$1 = -(vr$19 >= 0);
		}
		goto label$19;
		label$20:;
		static const void* tmp$201[6] = {
			&&label$21,
			&&label$22,
			&&label$23,
			&&label$24,
			&&label$26,
			&&label$25,
		};
		if( (TMP$92$2 - 45u) > 5u ) goto label$19;
		goto *tmp$201[TMP$92$2 - 45u];
		label$19:;
	}
	struct $7ASTNODE* vr$22 = ASTNEWCONSTI( (int64)RES$1, 8, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$22;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$18:;
	return fb$result$1;
}

static struct $7ASTNODE* HWSTRLITERALCOMPARE( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$27:;
	struct $8FBSYMBOL* LS$1;
	struct $8FBSYMBOL* RS$1;
	static struct $8DZSTRING TEXTZ$1;
	static struct $8DWSTRING LTEXTW$1;
	static struct $8DWSTRING RTEXTW$1;
	int32 RES$1;
	LS$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 12);
	RS$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 12);
	if( (*(int32*)((uint8*)LS$1 + 28) & 511) == 7 ) goto label$30;
	{
		int32 TMP$93$2;
		int32 TMP$94$2;
		TMP$93$2 = 0;
		uint8* vr$7 = HUNESCAPE( *(uint8**)((uint8*)LS$1 + 56), &TMP$93$2 );
		DZSTRASSIGN( &TEXTZ$1, (uint8*)vr$7 );
		TMP$94$2 = 0;
		uint32* vr$10 = HUNESCAPEW( *(uint32**)((uint8*)RS$1 + 56), &TMP$94$2 );
		DWSTRASSIGN( &RTEXTW$1, (uint32*)vr$10 );
		{
			uint32 TMP$95$3;
			TMP$95$3 = (uint32)OP$1;
			goto label$32;
			label$33:;
			{
				uint32* TMP$96$4;
				uint32* vr$11 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$96$4 = vr$11;
				int32 vr$12 = fb_WstrCompare( (uint32*)TMP$96$4, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$12 == 0);
				fb_WstrDelete( (uint32*)TMP$96$4 );
			}
			goto label$31;
			label$34:;
			{
				uint32* TMP$97$4;
				uint32* vr$14 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$97$4 = vr$14;
				int32 vr$15 = fb_WstrCompare( (uint32*)TMP$97$4, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$15 > 0);
				fb_WstrDelete( (uint32*)TMP$97$4 );
			}
			goto label$31;
			label$35:;
			{
				uint32* TMP$98$4;
				uint32* vr$17 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$98$4 = vr$17;
				int32 vr$18 = fb_WstrCompare( (uint32*)TMP$98$4, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$18 < 0);
				fb_WstrDelete( (uint32*)TMP$98$4 );
			}
			goto label$31;
			label$36:;
			{
				uint32* TMP$99$4;
				uint32* vr$20 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$99$4 = vr$20;
				int32 vr$21 = fb_WstrCompare( (uint32*)TMP$99$4, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$21 != 0);
				fb_WstrDelete( (uint32*)TMP$99$4 );
			}
			goto label$31;
			label$37:;
			{
				uint32* TMP$100$4;
				uint32* vr$23 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$100$4 = vr$23;
				int32 vr$24 = fb_WstrCompare( (uint32*)TMP$100$4, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$24 <= 0);
				fb_WstrDelete( (uint32*)TMP$100$4 );
			}
			goto label$31;
			label$38:;
			{
				uint32* TMP$101$4;
				uint32* vr$26 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$101$4 = vr$26;
				int32 vr$27 = fb_WstrCompare( (uint32*)TMP$101$4, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$27 >= 0);
				fb_WstrDelete( (uint32*)TMP$101$4 );
			}
			goto label$31;
			label$32:;
			static const void* tmp$202[6] = {
				&&label$33,
				&&label$34,
				&&label$35,
				&&label$36,
				&&label$38,
				&&label$37,
			};
			if( (TMP$95$3 - 45u) > 5u ) goto label$31;
			goto *tmp$202[TMP$95$3 - 45u];
			label$31:;
		}
	}
	goto label$29;
	label$30:;
	if( (*(int32*)((uint8*)RS$1 + 28) & 511) == 7 ) goto label$39;
	{
		int32 TMP$102$2;
		int32 TMP$103$2;
		TMP$102$2 = 0;
		uint32* vr$33 = HUNESCAPEW( *(uint32**)((uint8*)LS$1 + 56), &TMP$102$2 );
		DWSTRASSIGN( &LTEXTW$1, (uint32*)vr$33 );
		TMP$103$2 = 0;
		uint8* vr$36 = HUNESCAPE( *(uint8**)((uint8*)RS$1 + 56), &TMP$103$2 );
		DZSTRASSIGN( &TEXTZ$1, (uint8*)vr$36 );
		{
			uint32 TMP$104$3;
			TMP$104$3 = (uint32)OP$1;
			goto label$41;
			label$42:;
			{
				uint32* TMP$105$4;
				uint32* vr$37 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$105$4 = vr$37;
				int32 vr$38 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)TMP$105$4 );
				RES$1 = -(vr$38 == 0);
				fb_WstrDelete( (uint32*)TMP$105$4 );
			}
			goto label$40;
			label$43:;
			{
				uint32* TMP$106$4;
				uint32* vr$40 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$106$4 = vr$40;
				int32 vr$41 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)TMP$106$4 );
				RES$1 = -(vr$41 > 0);
				fb_WstrDelete( (uint32*)TMP$106$4 );
			}
			goto label$40;
			label$44:;
			{
				uint32* TMP$107$4;
				uint32* vr$43 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$107$4 = vr$43;
				int32 vr$44 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)TMP$107$4 );
				RES$1 = -(vr$44 < 0);
				fb_WstrDelete( (uint32*)TMP$107$4 );
			}
			goto label$40;
			label$45:;
			{
				uint32* TMP$108$4;
				uint32* vr$46 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$108$4 = vr$46;
				int32 vr$47 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)TMP$108$4 );
				RES$1 = -(vr$47 != 0);
				fb_WstrDelete( (uint32*)TMP$108$4 );
			}
			goto label$40;
			label$46:;
			{
				uint32* TMP$109$4;
				uint32* vr$49 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$109$4 = vr$49;
				int32 vr$50 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)TMP$109$4 );
				RES$1 = -(vr$50 <= 0);
				fb_WstrDelete( (uint32*)TMP$109$4 );
			}
			goto label$40;
			label$47:;
			{
				uint32* TMP$110$4;
				uint32* vr$52 = fb_StrToWstr( (uint8*)*(uint8**)&TEXTZ$1 );
				TMP$110$4 = vr$52;
				int32 vr$53 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)TMP$110$4 );
				RES$1 = -(vr$53 >= 0);
				fb_WstrDelete( (uint32*)TMP$110$4 );
			}
			goto label$40;
			label$41:;
			static const void* tmp$203[6] = {
				&&label$42,
				&&label$43,
				&&label$44,
				&&label$45,
				&&label$47,
				&&label$46,
			};
			if( (TMP$104$3 - 45u) > 5u ) goto label$40;
			goto *tmp$203[TMP$104$3 - 45u];
			label$40:;
		}
	}
	goto label$29;
	label$39:;
	{
		int32 TMP$111$2;
		int32 TMP$112$2;
		TMP$111$2 = 0;
		uint32* vr$57 = HUNESCAPEW( *(uint32**)((uint8*)LS$1 + 56), &TMP$111$2 );
		DWSTRASSIGN( &LTEXTW$1, (uint32*)vr$57 );
		TMP$112$2 = 0;
		uint32* vr$60 = HUNESCAPEW( *(uint32**)((uint8*)RS$1 + 56), &TMP$112$2 );
		DWSTRASSIGN( &RTEXTW$1, (uint32*)vr$60 );
		{
			uint32 TMP$113$3;
			TMP$113$3 = (uint32)OP$1;
			goto label$49;
			label$50:;
			{
				int32 vr$61 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$61 == 0);
			}
			goto label$48;
			label$51:;
			{
				int32 vr$63 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$63 > 0);
			}
			goto label$48;
			label$52:;
			{
				int32 vr$65 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$65 < 0);
			}
			goto label$48;
			label$53:;
			{
				int32 vr$67 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$67 != 0);
			}
			goto label$48;
			label$54:;
			{
				int32 vr$69 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$69 <= 0);
			}
			goto label$48;
			label$55:;
			{
				int32 vr$71 = fb_WstrCompare( (uint32*)*(uint32**)&LTEXTW$1, (uint32*)*(uint32**)&RTEXTW$1 );
				RES$1 = -(vr$71 >= 0);
			}
			goto label$48;
			label$49:;
			static const void* tmp$204[6] = {
				&&label$50,
				&&label$51,
				&&label$52,
				&&label$53,
				&&label$55,
				&&label$54,
			};
			if( (TMP$113$3 - 45u) > 5u ) goto label$48;
			goto *tmp$204[TMP$113$3 - 45u];
			label$48:;
		}
	}
	label$29:;
	struct $7ASTNODE* vr$74 = ASTNEWCONSTI( (int64)RES$1, 8, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$74;
	ASTDELNODE( R$1 );
	ASTDELNODE( L$1 );
	label$28:;
	return fb$result$1;
}

static void HTOSTR( struct $7ASTNODE** L$1, struct $7ASTNODE** R$1 )
{
	label$56:;
	int32 LDTYPE$1;
	int32 RDTYPE$1;
	LDTYPE$1 = *(int32*)((uint8*)*L$1 + 4) & 511;
	RDTYPE$1 = *(int32*)((uint8*)*R$1 + 4) & 511;
	{
		uint32 TMP$114$2;
		TMP$114$2 = (uint32)LDTYPE$1;
		goto label$59;
		label$60:;
		{
		}
		goto label$58;
		label$61:;
		{
			struct $7ASTNODE* vr$7 = RTLTOSTR( *L$1, 0 );
			*L$1 = vr$7;
			if( *L$1 != (struct $7ASTNODE*)0u ) goto label$63;
			{
				ERRREPORT( 20, 0, (uint8*)0u );
				struct $7ASTNODE* vr$10 = ASTNEWCONSTSTR( (uint8*)0u );
				*L$1 = vr$10;
			}
			label$63:;
			label$62:;
		}
		goto label$58;
		label$59:;
		static const void* tmp$205[15] = {
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
		if( (TMP$114$2 - 4u) > 14u ) goto label$61;
		goto *tmp$205[TMP$114$2 - 4u];
		label$58:;
	}
	{
		uint32 TMP$115$2;
		TMP$115$2 = (uint32)RDTYPE$1;
		goto label$65;
		label$66:;
		{
		}
		goto label$64;
		label$67:;
		{
			if( LDTYPE$1 == 7 ) goto label$69;
			{
				struct $7ASTNODE* vr$13 = RTLTOSTR( *R$1, 0 );
				*R$1 = vr$13;
			}
			goto label$68;
			label$69:;
			{
				struct $7ASTNODE* vr$16 = RTLTOWSTR( *R$1 );
				*R$1 = vr$16;
			}
			label$68:;
			if( *R$1 != (struct $7ASTNODE*)0u ) goto label$71;
			{
				ERRREPORT( 20, 0, (uint8*)0u );
				struct $7ASTNODE* vr$19 = ASTNEWCONSTSTR( (uint8*)0u );
				*R$1 = vr$19;
			}
			label$71:;
			label$70:;
		}
		goto label$64;
		label$65:;
		static const void* tmp$206[15] = {
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
		if( (TMP$115$2 - 4u) > 14u ) goto label$67;
		goto *tmp$206[TMP$115$2 - 4u];
		label$64:;
	}
	label$57:;
}

static struct $7ASTNODE* HCONSTBOP( int32 OP$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int32 TMP$116$1;
	int32 TMP$121$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$72:;
	if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$74;
	TMP$116$1 = 24;
	goto label$708;
	label$74:;
	TMP$116$1 = *(int32*)((uint8*)L$1 + 4) & 31;
	label$708:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$1 * 28)) != 1 ) goto label$76;
	{
		{
			uint32 TMP$117$3;
			TMP$117$3 = (uint32)OP$1;
			goto label$78;
			label$79:;
			{
				*(double*)((uint8*)L$1 + 24) = *(double*)((uint8*)L$1 + 24) + *(double*)((uint8*)R$1 + 24);
			}
			goto label$77;
			label$80:;
			{
				*(double*)((uint8*)L$1 + 24) = *(double*)((uint8*)L$1 + 24) - *(double*)((uint8*)R$1 + 24);
			}
			goto label$77;
			label$81:;
			{
				*(double*)((uint8*)L$1 + 24) = *(double*)((uint8*)L$1 + 24) * *(double*)((uint8*)R$1 + 24);
			}
			goto label$77;
			label$82:;
			{
				*(double*)((uint8*)L$1 + 24) = *(double*)((uint8*)L$1 + 24) / *(double*)((uint8*)R$1 + 24);
			}
			goto label$77;
			label$83:;
			{
				double vr$24 = pow( *(double*)((uint8*)L$1 + 24), *(double*)((uint8*)R$1 + 24) );
				*(double*)((uint8*)L$1 + 24) = vr$24;
			}
			goto label$77;
			label$84:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)L$1 + 24) != *(double*)((uint8*)R$1 + 24));
			}
			goto label$77;
			label$85:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)L$1 + 24) == *(double*)((uint8*)R$1 + 24));
			}
			goto label$77;
			label$86:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)L$1 + 24) > *(double*)((uint8*)R$1 + 24));
			}
			goto label$77;
			label$87:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)L$1 + 24) < *(double*)((uint8*)R$1 + 24));
			}
			goto label$77;
			label$88:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)L$1 + 24) <= *(double*)((uint8*)R$1 + 24));
			}
			goto label$77;
			label$89:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)L$1 + 24) >= *(double*)((uint8*)R$1 + 24));
			}
			goto label$77;
			label$90:;
			{
				double vr$58 = atan2( *(double*)((uint8*)L$1 + 24), *(double*)((uint8*)R$1 + 24) );
				*(double*)((uint8*)L$1 + 24) = vr$58;
			}
			goto label$77;
			label$91:;
			{
				if( *(double*)((uint8*)L$1 + 24) == 0x0p+0 ) goto label$93;
				{
					*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)R$1 + 24) != 0x0p+0);
				}
				goto label$92;
				label$93:;
				{
					*(int64*)((uint8*)L$1 + 24) = 0ll;
				}
				label$92:;
			}
			goto label$77;
			label$94:;
			{
				if( *(double*)((uint8*)L$1 + 24) == 0x0p+0 ) goto label$96;
				{
					*(int64*)((uint8*)L$1 + 24) = -1ll;
				}
				goto label$95;
				label$96:;
				{
					*(int64*)((uint8*)L$1 + 24) = (int64)-(*(double*)((uint8*)R$1 + 24) != 0x0p+0);
				}
				label$95:;
			}
			goto label$77;
			label$97:;
			{
			}
			goto label$77;
			label$78:;
			static const void* tmp$207[37] = {
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
			if( (TMP$117$3 - 28u) > 36u ) goto label$97;
			goto *tmp$207[TMP$117$3 - 28u];
			label$77:;
		}
	}
	goto label$75;
	label$76:;
	if( (-((*(int32*)((uint8*)L$1 + 4) & 511) == 1) | -((*(int32*)((uint8*)R$1 + 4) & 511) == 1)) == 0 ) goto label$98;
	{
		{
			uint32 TMP$118$3;
			TMP$118$3 = (uint32)OP$1;
			goto label$100;
			label$101:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) & (boolean)(*(int64*)((uint8*)R$1 + 24) != 0));
			}
			goto label$99;
			label$102:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) | (boolean)(*(int64*)((uint8*)R$1 + 24) != 0));
			}
			goto label$99;
			label$103:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) ^ (boolean)(*(int64*)((uint8*)R$1 + 24) != 0));
			}
			goto label$99;
			label$104:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)(((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) ^ (boolean)(*(int64*)((uint8*)R$1 + 24) != 0)) ^ 1);
			}
			goto label$99;
			label$105:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)(((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) ^ 1) | (boolean)(*(int64*)((uint8*)R$1 + 24) != 0));
			}
			goto label$99;
			label$106:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) != (boolean)(*(int64*)((uint8*)R$1 + 24) != 0));
			}
			goto label$99;
			label$107:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)((boolean)(*(int64*)((uint8*)L$1 + 24) != 0) == (boolean)(*(int64*)((uint8*)R$1 + 24) != 0));
			}
			goto label$99;
			label$108:;
			{
				boolean TMP$119$4;
				if( (boolean)(*(int64*)((uint8*)L$1 + 24) != 0) == (boolean)0 ) goto label$109;
				TMP$119$4 = (boolean)((boolean)(*(int64*)((uint8*)R$1 + 24) != 0) != (boolean)0);
				goto label$709;
				label$109:;
				TMP$119$4 = (boolean)0;
				label$709:;
				*(int64*)((uint8*)L$1 + 24) = (int64)-TMP$119$4;
			}
			goto label$99;
			label$110:;
			{
				boolean TMP$120$4;
				if( (boolean)(*(int64*)((uint8*)L$1 + 24) != 0) != (boolean)0 ) goto label$111;
				TMP$120$4 = (boolean)((boolean)(*(int64*)((uint8*)R$1 + 24) != 0) != (boolean)0);
				goto label$710;
				label$111:;
				TMP$120$4 = (boolean)1;
				label$710:;
				*(int64*)((uint8*)L$1 + 24) = (int64)-TMP$120$4;
			}
			goto label$99;
			label$112:;
			{
			}
			goto label$99;
			label$100:;
			static const void* tmp$208[15] = {
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
			if( (TMP$118$3 - 34u) > 14u ) goto label$112;
			goto *tmp$208[TMP$118$3 - 34u];
			label$99:;
		}
	}
	goto label$75;
	label$98:;
	if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$114;
	TMP$121$1 = 24;
	goto label$711;
	label$114:;
	TMP$121$1 = *(int32*)((uint8*)L$1 + 4) & 31;
	label$711:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$121$1 * 28)) + 8) == 0 ) goto label$113;
	{
		{
			uint32 TMP$122$3;
			TMP$122$3 = (uint32)OP$1;
			goto label$116;
			label$117:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) + *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$118:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) - *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$119:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) * *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$120:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) << ((int32)*(int64*)((uint8*)R$1 + 24) & 63);
			}
			goto label$115;
			label$121:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) >> ((int32)*(int64*)((uint8*)R$1 + 24) & 63);
			}
			goto label$115;
			label$122:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) & *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$123:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) | *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$124:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24) ^ *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$125:;
			{
				*(int64*)((uint8*)L$1 + 24) = ~(*(int64*)((uint8*)L$1 + 24) ^ *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$126:;
			{
				*(int64*)((uint8*)L$1 + 24) = ~(*(int64*)((uint8*)L$1 + 24)) | *(int64*)((uint8*)R$1 + 24);
			}
			goto label$115;
			label$127:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(int64*)((uint8*)L$1 + 24) != *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$128:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(int64*)((uint8*)L$1 + 24) == *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$129:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(int64*)((uint8*)L$1 + 24) > *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$130:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(int64*)((uint8*)L$1 + 24) < *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$131:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(int64*)((uint8*)L$1 + 24) <= *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$132:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(int64*)((uint8*)L$1 + 24) >= *(int64*)((uint8*)R$1 + 24));
			}
			goto label$115;
			label$133:;
			{
				int32 TMP$123$4;
				if( *(int64*)((uint8*)L$1 + 24) == 0ll ) goto label$134;
				TMP$123$4 = -(*(int64*)((uint8*)R$1 + 24) != 0ll);
				goto label$712;
				label$134:;
				TMP$123$4 = 0;
				label$712:;
				*(int64*)((uint8*)L$1 + 24) = (int64)TMP$123$4;
			}
			goto label$115;
			label$135:;
			{
				int32 TMP$124$4;
				if( *(int64*)((uint8*)L$1 + 24) == 0ll ) goto label$136;
				TMP$124$4 = -1;
				goto label$713;
				label$136:;
				TMP$124$4 = -(*(int64*)((uint8*)R$1 + 24) != 0ll);
				label$713:;
				*(int64*)((uint8*)L$1 + 24) = (int64)TMP$124$4;
			}
			goto label$115;
			label$137:;
			{
				int32 TMP$125$4;
				int32 TMP$126$4;
				if( *(int64*)((uint8*)R$1 + 24) != 0ll ) goto label$139;
				{
					*(int64*)((uint8*)L$1 + 24) = 0ll;
					ERRREPORT( 100, 0, (uint8*)0u );
				}
				goto label$138;
				label$139:;
				if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$141;
				TMP$125$4 = 24;
				goto label$714;
				label$141:;
				TMP$125$4 = *(int32*)((uint8*)L$1 + 4) & 31;
				label$714:;
				if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$142;
				TMP$126$4 = 24;
				goto label$715;
				label$142:;
				TMP$126$4 = *(int32*)((uint8*)L$1 + 4) & 31;
				label$715:;
				if( (-(*(int64*)((uint8*)R$1 + 24) == -1ll) & ((-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$125$4 * 28)) + 4) == 8) & -(*(int64*)((uint8*)L$1 + 24) == -9223372036854775808ull)) | (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$126$4 * 28)) + 4) == 4) & -(*(int64*)((uint8*)L$1 + 24) == -2147483648ll)))) == 0 ) goto label$140;
				{
					*(int64*)((uint8*)L$1 + 24) = 0ll;
					if( *(int32*)((uint8*)&AST$ + 232) != 0 ) goto label$144;
					{
						ERRREPORTWARN( 25, (uint8*)0u, 1, (uint8*)0u );
					}
					label$144:;
					label$143:;
				}
				goto label$138;
				label$140:;
				if( OP$1 != 32 ) goto label$145;
				{
					int64 vr$256 = __divdi3( *(int64*)((uint8*)L$1 + 24), *(int64*)((uint8*)R$1 + 24) );
					*(int64*)((uint8*)L$1 + 24) = vr$256;
				}
				goto label$138;
				label$145:;
				{
					int64 vr$260 = __moddi3( *(int64*)((uint8*)L$1 + 24), *(int64*)((uint8*)R$1 + 24) );
					*(int64*)((uint8*)L$1 + 24) = vr$260;
				}
				label$138:;
			}
			goto label$115;
			label$146:;
			{
			}
			goto label$115;
			label$116:;
			static const void* tmp$209[23] = {
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
			if( (TMP$122$3 - 28u) > 22u ) goto label$146;
			goto *tmp$209[TMP$122$3 - 28u];
			label$115:;
		}
		struct $7ASTNODE* vr$262 = ASTCONVERTRAWCONSTI( DTYPE$1, SUBTYPE$1, L$1 );
		L$1 = vr$262;
	}
	goto label$75;
	label$113:;
	{
		{
			uint32 TMP$127$3;
			TMP$127$3 = (uint32)OP$1;
			goto label$148;
			label$149:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) + *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$150:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) - *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$151:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) * *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$152:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) << ((int32)*(uint64*)((uint8*)R$1 + 24) & 63));
			}
			goto label$147;
			label$153:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) >> ((int32)*(uint64*)((uint8*)R$1 + 24) & 63));
			}
			goto label$147;
			label$154:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) & *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$155:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) | *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$156:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(*(uint64*)((uint8*)L$1 + 24) ^ *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$157:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)~(*(uint64*)((uint8*)L$1 + 24) ^ *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$158:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(~(*(uint64*)((uint8*)L$1 + 24)) | *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$159:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(uint64*)((uint8*)L$1 + 24) != *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$160:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(uint64*)((uint8*)L$1 + 24) == *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$161:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(uint64*)((uint8*)L$1 + 24) > *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$162:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(uint64*)((uint8*)L$1 + 24) < *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$163:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(uint64*)((uint8*)L$1 + 24) <= *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$164:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(*(uint64*)((uint8*)L$1 + 24) >= *(uint64*)((uint8*)R$1 + 24));
			}
			goto label$147;
			label$165:;
			{
				int32 TMP$128$4;
				if( *(int64*)((uint8*)L$1 + 24) == 0ll ) goto label$166;
				TMP$128$4 = -(*(int64*)((uint8*)R$1 + 24) != 0ll);
				goto label$716;
				label$166:;
				TMP$128$4 = 0;
				label$716:;
				*(int64*)((uint8*)L$1 + 24) = (int64)TMP$128$4;
			}
			goto label$147;
			label$167:;
			{
				int32 TMP$129$4;
				if( *(int64*)((uint8*)L$1 + 24) == 0ll ) goto label$168;
				TMP$129$4 = -1;
				goto label$717;
				label$168:;
				TMP$129$4 = -(*(int64*)((uint8*)R$1 + 24) != 0ll);
				label$717:;
				*(int64*)((uint8*)L$1 + 24) = (int64)TMP$129$4;
			}
			goto label$147;
			label$169:;
			{
				if( *(int64*)((uint8*)R$1 + 24) != 0ll ) goto label$171;
				{
					*(int64*)((uint8*)L$1 + 24) = 0ll;
					ERRREPORT( 100, 0, (uint8*)0u );
				}
				goto label$170;
				label$171:;
				if( OP$1 != 32 ) goto label$172;
				{
					uint64 vr$349 = __udivdi3( *(uint64*)((uint8*)L$1 + 24), *(uint64*)((uint8*)R$1 + 24) );
					*(int64*)((uint8*)L$1 + 24) = (int64)vr$349;
				}
				goto label$170;
				label$172:;
				{
					uint64 vr$353 = __umoddi3( *(uint64*)((uint8*)L$1 + 24), *(uint64*)((uint8*)R$1 + 24) );
					*(int64*)((uint8*)L$1 + 24) = (int64)vr$353;
				}
				label$170:;
			}
			goto label$147;
			label$173:;
			{
			}
			goto label$147;
			label$148:;
			static const void* tmp$210[23] = {
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
			if( (TMP$127$3 - 28u) > 22u ) goto label$173;
			goto *tmp$210[TMP$127$3 - 28u];
			label$147:;
		}
		struct $7ASTNODE* vr$355 = ASTCONVERTRAWCONSTI( DTYPE$1, SUBTYPE$1, L$1 );
		L$1 = vr$355;
	}
	label$75:;
	fb$result$1 = L$1;
	label$73:;
	return fb$result$1;
}

static int32 HCHECKPOINTER( int32 OP$1, int32 DTYPE$1, int32 DCLASS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$174:;
	if( DCLASS$1 == 0 ) goto label$177;
	{
		fb$result$1 = 0;
		goto label$175;
	}
	goto label$176;
	label$177:;
	{
		{
			int32 TMP$130$3;
			int32 TMP$131$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$178;
			TMP$130$3 = 24;
			goto label$718;
			label$178:;
			TMP$130$3 = DTYPE$1 & 31;
			label$718:;
			TMP$131$3 = TMP$130$3;
			if( TMP$131$3 == 4 ) goto label$181;
			label$182:;
			if( TMP$131$3 != 7 ) goto label$180;
			label$181:;
			{
				fb$result$1 = 0;
				goto label$175;
			}
			label$180:;
			label$179:;
		}
	}
	label$176:;
	{
		if( OP$1 == 28 ) goto label$185;
		label$186:;
		if( OP$1 != 29 ) goto label$184;
		label$185:;
		{
			fb$result$1 = -((DTYPE$1 & 480) == 0);
		}
		goto label$183;
		label$184:;
		if( OP$1 == 36 ) goto label$188;
		label$189:;
		if( OP$1 != 37 ) goto label$187;
		label$188:;
		{
			fb$result$1 = -1;
		}
		goto label$183;
		label$187:;
		{
			fb$result$1 = -((*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 8) != 0);
		}
		label$190:;
		label$183:;
	}
	label$175:;
	return fb$result$1;
}

static struct $7ASTNODE* HDOPOINTERARITH( int32 OP$1, struct $7ASTNODE* P$1, struct $7ASTNODE* E$1, int32 SWAPPED$1 )
{
	int32 TMP$132$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$191:;
	int32 EDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	EDTYPE$1 = *(int32*)((uint8*)E$1 + 4) & 511;
	if( (EDTYPE$1 & 480) == 0 ) goto label$193;
	TMP$132$1 = 24;
	goto label$719;
	label$193:;
	TMP$132$1 = EDTYPE$1 & 31;
	label$719:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$132$1 * 28)) == 0 ) goto label$195;
	{
		goto label$192;
	}
	goto label$194;
	label$195:;
	{
		{
			if( EDTYPE$1 == 4 ) goto label$198;
			label$199:;
			if( EDTYPE$1 != 7 ) goto label$197;
			label$198:;
			{
				goto label$192;
			}
			label$197:;
			label$196:;
		}
	}
	label$194:;
	int64 vr$9 = SYMBCALCDEREFLEN( *(int32*)((uint8*)P$1 + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)P$1 + 8) );
	LGT$1 = vr$9;
	if( LGT$1 > 0ll ) goto label$201;
	{
		goto label$192;
	}
	label$201:;
	label$200:;
	if( (EDTYPE$1 & 480) == 0 ) goto label$203;
	{
		if( OP$1 != 29 ) goto label$205;
		{
			if( (-(EDTYPE$1 != (*(int32*)((uint8*)P$1 + 4) & 511)) | -(*(struct $8FBSYMBOL**)((uint8*)E$1 + 8) != *(struct $8FBSYMBOL**)((uint8*)P$1 + 8))) == 0 ) goto label$207;
			{
				goto label$192;
			}
			label$207:;
			label$206:;
			struct $7ASTNODE* vr$18 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, P$1, 0, (int32*)0u );
			P$1 = vr$18;
			struct $7ASTNODE* vr$19 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, E$1, 0, (int32*)0u );
			E$1 = vr$19;
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 29, P$1, E$1, (struct $8FBSYMBOL*)0u, 1 );
			E$1 = vr$20;
			struct $7ASTNODE* vr$21 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$22 = ASTNEWBOP( 32, E$1, vr$21, (struct $8FBSYMBOL*)0u, 1 );
			fb$result$1 = vr$22;
		}
		label$205:;
		label$204:;
		goto label$192;
	}
	label$203:;
	label$202:;
	if( EDTYPE$1 == 8 ) goto label$209;
	{
		struct $7ASTNODE* vr$23 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, E$1, 0, (int32*)0u );
		E$1 = vr$23;
	}
	label$209:;
	label$208:;
	{
		if( OP$1 == 28 ) goto label$212;
		label$213:;
		if( OP$1 != 29 ) goto label$211;
		label$212:;
		{
			int32 TMP$133$3;
			if( OP$1 != 29 ) goto label$214;
			TMP$133$3 = -(SWAPPED$1 != 0);
			goto label$720;
			label$214:;
			TMP$133$3 = 0;
			label$720:;
			if( TMP$133$3 == 0 ) goto label$216;
			{
				goto label$192;
			}
			label$216:;
			label$215:;
			struct $7ASTNODE* vr$25 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$26 = ASTNEWBOP( 30, E$1, vr$25, (struct $8FBSYMBOL*)0u, 1 );
			E$1 = vr$26;
			struct $7ASTNODE* vr$27 = ASTNEWBOP( OP$1, P$1, E$1, (struct $8FBSYMBOL*)0u, 1 );
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

static struct $7ASTNODE* HCONVERTUDT_L( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$218:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1, 0, (int32*)0u );
	T$1 = vr$3;
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$221;
	{
		struct $7ASTNODE* vr$5 = ASTNEWBOP( OP$1, L$1, T$1, EX$1, OPTIONS$1 | 8 );
		T$1 = vr$5;
		if( T$1 == (struct $7ASTNODE*)0u ) goto label$223;
		{
			fb$result$1 = T$1;
			goto label$219;
		}
		label$223:;
		label$222:;
	}
	label$221:;
	label$220:;
	struct $7ASTNODE* vr$8 = ASTNEWCONV( *(int32*)((uint8*)R$1 + 4), *(struct $8FBSYMBOL**)((uint8*)R$1 + 8), L$1, 0, (int32*)0u );
	T$1 = vr$8;
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$225;
	{
		struct $7ASTNODE* vr$10 = ASTNEWBOP( OP$1, T$1, R$1, EX$1, OPTIONS$1 | 8 );
		T$1 = vr$10;
		if( T$1 == (struct $7ASTNODE*)0u ) goto label$227;
		{
			fb$result$1 = T$1;
			goto label$219;
		}
		label$227:;
		label$226:;
	}
	label$225:;
	label$224:;
	struct $7ASTNODE* vr$11 = ASTNEWCONV( 0, (struct $8FBSYMBOL*)0u, L$1, 0, (int32*)0u );
	T$1 = vr$11;
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$229;
	{
		struct $7ASTNODE* vr$12 = ASTNEWBOP( OP$1, T$1, R$1, EX$1, OPTIONS$1 );
		fb$result$1 = vr$12;
		goto label$219;
	}
	label$229:;
	label$228:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	label$219:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONVERTUDT_R( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, struct $8FBSYMBOL* EX$1, $9AST_OPOPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$230:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( *(int32*)((uint8*)R$1 + 4), *(struct $8FBSYMBOL**)((uint8*)R$1 + 8), L$1, 0, (int32*)0u );
	T$1 = vr$3;
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$233;
	{
		struct $7ASTNODE* vr$5 = ASTNEWBOP( OP$1, T$1, R$1, EX$1, OPTIONS$1 | 8 );
		T$1 = vr$5;
		if( T$1 == (struct $7ASTNODE*)0u ) goto label$235;
		{
			fb$result$1 = T$1;
			goto label$231;
		}
		label$235:;
		label$234:;
	}
	label$233:;
	label$232:;
	struct $7ASTNODE* vr$8 = ASTNEWCONV( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1, 0, (int32*)0u );
	T$1 = vr$8;
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$237;
	{
		struct $7ASTNODE* vr$10 = ASTNEWBOP( OP$1, L$1, T$1, EX$1, OPTIONS$1 | 8 );
		T$1 = vr$10;
		if( T$1 == (struct $7ASTNODE*)0u ) goto label$239;
		{
			fb$result$1 = T$1;
			goto label$231;
		}
		label$239:;
		label$238:;
	}
	label$237:;
	label$236:;
	struct $7ASTNODE* vr$11 = ASTNEWCONV( 0, (struct $8FBSYMBOL*)0u, R$1, 0, (int32*)0u );
	T$1 = vr$11;
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$241;
	{
		struct $7ASTNODE* vr$13 = ASTNEWBOP( OP$1, L$1, T$1, EX$1, OPTIONS$1 | 8 );
		fb$result$1 = vr$13;
		goto label$231;
	}
	label$241:;
	label$240:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	label$231:;
	return fb$result$1;
}

static int32 HCHECKDEREFWCHARPTR( struct $7ASTNODE* L$1, int32* PLDTYPE$1, struct $7ASTNODE* R$1, int32 RDTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$242:;
	struct $7ASTNODE* LL$1;
	if( *(int32*)L$1 == 20 ) goto label$245;
	{
		goto label$243;
	}
	label$245:;
	label$244:;
	LL$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 64);
	if( LL$1 == (struct $7ASTNODE*)0u ) goto label$247;
	{
		if( *(int32*)LL$1 != 17 ) goto label$249;
		{
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LL$1 + 12) + 12) & 16777216) == 0 ) goto label$251;
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
	*PLDTYPE$1 = (*PLDTYPE$1 & -512) | (*(int32*)((uint8*)&ENV$ + 272) & 511);
	fb$result$1 = -1;
	label$243:;
	return fb$result$1;
}

static void HCONVOPERAND( int32 NEWDTYPE$1, int32* DTYPE$1, int32* DCLASS$1, struct $7ASTNODE** N$1 )
{
	int32 TMP$134$1;
	label$252:;
	*DTYPE$1 = (*DTYPE$1 & -512) | (NEWDTYPE$1 & 511);
	if( (NEWDTYPE$1 & 480) == 0 ) goto label$254;
	TMP$134$1 = 24;
	goto label$721;
	label$254:;
	TMP$134$1 = NEWDTYPE$1 & 31;
	label$721:;
	*DCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$134$1 * 28));
	struct $7ASTNODE* vr$11 = ASTNEWCONV( *DTYPE$1, (struct $8FBSYMBOL*)0u, *N$1, 0, (int32*)0u );
	*N$1 = vr$11;
	label$253:;
}

static int32 HGETINTEGERORBIGGER( int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$255:;
	{
		if( DTYPE$1 == 9 ) goto label$259;
		label$260:;
		if( DTYPE$1 != 14 ) goto label$258;
		label$259:;
		{
			fb$result$1 = DTYPE$1;
			goto label$256;
		}
		goto label$257;
		label$258:;
		if( DTYPE$1 != 13 ) goto label$261;
		label$262:;
		{
			int32 vr$1 = FBIS64BIT(  );
			if( vr$1 != 0 ) goto label$264;
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
	fb$result$1 = 8;
	goto label$256;
	label$256:;
	return fb$result$1;
}

static int32 HISCONSIDEREDBOOLEAN( struct $7ASTNODE* N$1 )
{
	int32 TMP$135$1;
	int32 TMP$136$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$265:;
	if( (*(int32*)((uint8*)N$1 + 4) & 511) == 1 ) goto label$267;
	int32 vr$3 = ASTISCONST0ORMINUS1( N$1 );
	TMP$135$1 = -(vr$3 != 0);
	goto label$722;
	label$267:;
	TMP$135$1 = -1;
	label$722:;
	if( TMP$135$1 != 0 ) goto label$268;
	int32 vr$5 = ASTISRELATIONALBOP( N$1 );
	TMP$136$1 = -(vr$5 != 0);
	goto label$723;
	label$268:;
	TMP$136$1 = -1;
	label$723:;
	fb$result$1 = TMP$136$1;
	goto label$266;
	label$266:;
	return fb$result$1;
}

static int32 HSHOULDWARNABOUTMIXEDBOOL( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$269:;
	if( (-((*(int32*)((uint8*)L$1 + 4) & 511) == 1) & -((*(int32*)((uint8*)R$1 + 4) & 511) != 1)) == 0 ) goto label$272;
	{
		int32 TMP$137$2;
		int32 vr$8 = ASTISCONST0ORMINUS1( L$1 );
		if( ~vr$8 == 0 ) goto label$273;
		int32 vr$10 = HISCONSIDEREDBOOLEAN( R$1 );
		TMP$137$2 = -(~vr$10 != 0);
		goto label$724;
		label$273:;
		TMP$137$2 = 0;
		label$724:;
		fb$result$1 = TMP$137$2;
		goto label$270;
	}
	label$272:;
	label$271:;
	if( (-((*(int32*)((uint8*)L$1 + 4) & 511) != 1) & -((*(int32*)((uint8*)R$1 + 4) & 511) == 1)) == 0 ) goto label$275;
	{
		int32 TMP$138$2;
		int32 vr$20 = HISCONSIDEREDBOOLEAN( L$1 );
		if( ~vr$20 == 0 ) goto label$276;
		int32 vr$22 = ASTISCONST0ORMINUS1( R$1 );
		TMP$138$2 = -(~vr$22 != 0);
		goto label$725;
		label$276:;
		TMP$138$2 = 0;
		label$725:;
		fb$result$1 = TMP$138$2;
		goto label$270;
	}
	label$275:;
	label$274:;
	fb$result$1 = 0;
	goto label$270;
	label$270:;
	return fb$result$1;
}
