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
typedef int32 $11AST_CONVOPT;
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
typedef int32 $9FB_ERRMSG;
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
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $14FB_SYMBFINDOPT;
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezconv( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
int32 ASTCONSTEQZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
void ASTCHECKCONST( int32, struct $7ASTNODE* );
int32 ASTCHECKCONVNONPTRTOPTR( int32, int32, struct $7ASTNODE*, $11AST_CONVOPT );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int32 SYMBCHECKCONSTASSIGN( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32*, $13FB_WARNINGMSG* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRTOVAL( struct $7ASTNODE*, int32 );
static void HCONSTCONV( int32, struct $7ASTNODE* );
static int32 HGETTYPEMISMATCHERRMSG( $11AST_CONVOPT );
static int32 HCHECKPTR( int32, struct $8FBSYMBOL*, int32, struct $7ASTNODE*, $11AST_CONVOPT );
static int32 ASTTRYOVLOPCASTCONV( struct $7ASTNODE**, int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
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

int32 ASTCHECKCONVNONPTRTOPTR( int32 TO_DTYPE$1, int32 EXPR_DTYPE$1, struct $7ASTNODE* EXPR$1, $11AST_CONVOPT OPTIONS$1 )
{
	int32 TMP$92$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	if( (EXPR_DTYPE$1 & 480) == 0 ) goto label$68;
	TMP$92$1 = 24;
	goto label$78;
	label$68:;
	TMP$92$1 = EXPR_DTYPE$1 & 31;
	label$78:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$1 * 28)) != 0 ) goto label$70;
	{
		int32 TMP$93$2;
		if( *(int32*)EXPR$1 != 16 ) goto label$72;
		{
			int32 vr$5 = ASTCONSTEQZERO( EXPR$1 );
			if( vr$5 == 0 ) goto label$74;
			{
				fb$result$1 = 0;
				goto label$67;
			}
			label$74:;
			label$73:;
		}
		label$72:;
		label$71:;
		if( (EXPR_DTYPE$1 & 480) == 0 ) goto label$75;
		TMP$93$2 = 24;
		goto label$79;
		label$75:;
		TMP$93$2 = EXPR_DTYPE$1 & 31;
		label$79:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$2 * 28)) + 4) != *(int32*)((uint8*)&ENV$ + 296) ) goto label$77;
		{
			fb$result$1 = 0;
			goto label$67;
		}
		label$77:;
		label$76:;
	}
	label$70:;
	label$69:;
	int32 vr$9 = HGETTYPEMISMATCHERRMSG( OPTIONS$1 );
	fb$result$1 = vr$9;
	label$67:;
	return fb$result$1;
}

int32 ASTCHECKCONV( int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	int32 TMP$96$1;
	int32 TMP$97$1;
	int32 TMP$100$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$121:;
	int32 LDTYPE$1;
	fb$result$1 = 0;
	LDTYPE$1 = *(int32*)((uint8*)L$1 + 4);
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$123;
	TMP$96$1 = 24;
	goto label$143;
	label$123:;
	TMP$96$1 = TO_DTYPE$1 & 31;
	label$143:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$124;
	TMP$97$1 = 24;
	goto label$144;
	label$124:;
	TMP$97$1 = LDTYPE$1 & 31;
	label$144:;
	if( (-(TMP$96$1 == 20) | -(TMP$97$1 == 20)) == 0 ) goto label$126;
	{
		int32 TMP$98$2;
		int32 TMP$99$2;
		if( (TO_DTYPE$1 & 480) == 0 ) goto label$127;
		TMP$98$2 = 24;
		goto label$145;
		label$127:;
		TMP$98$2 = TO_DTYPE$1 & 31;
		label$145:;
		if( (LDTYPE$1 & 480) == 0 ) goto label$128;
		TMP$99$2 = 24;
		goto label$146;
		label$128:;
		TMP$99$2 = LDTYPE$1 & 31;
		label$146:;
		if( (-(TMP$98$2 == 20) & -(TMP$99$2 == 20)) == 0 ) goto label$130;
		{
			int32 vr$17 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), TO_SUBTYPE$1 );
			fb$result$1 = -(vr$17 > 0);
		}
		label$130:;
		label$129:;
		goto label$122;
	}
	label$126:;
	label$125:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$131;
	TMP$100$1 = 24;
	goto label$147;
	label$131:;
	TMP$100$1 = LDTYPE$1 & 31;
	label$147:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$1 * 28)) != 2 ) goto label$133;
	{
		goto label$122;
	}
	label$133:;
	label$132:;
	int32 vr$22 = HCHECKPTR( TO_DTYPE$1, TO_SUBTYPE$1, LDTYPE$1, L$1, 0 );
	if( vr$22 == 0 ) goto label$135;
	{
		goto label$122;
	}
	label$135:;
	label$134:;
	{
		int32 TMP$101$2;
		int32 TMP$102$2;
		if( (LDTYPE$1 & 480) == 0 ) goto label$136;
		TMP$101$2 = 24;
		goto label$148;
		label$136:;
		TMP$101$2 = LDTYPE$1 & 31;
		label$148:;
		TMP$102$2 = TMP$101$2;
		if( TMP$102$2 == 4 ) goto label$139;
		label$140:;
		if( TMP$102$2 != 7 ) goto label$138;
		label$139:;
		{
			if( *(int32*)L$1 == 20 ) goto label$142;
			{
				goto label$122;
			}
			label$142:;
			label$141:;
		}
		label$138:;
		label$137:;
	}
	fb$result$1 = -1;
	label$122:;
	return fb$result$1;
}

int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** EXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* SYM$1;
	$9FB_ERRMSG ERR_NUM$1;
	int32 DTYPE$1;
	if( (*(int32*)((uint8*)*EXPR$1 + 4) & 511) != 20 ) goto label$160;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 8);
		if( (*(int32*)((uint8*)SYM$1 + 120) & 131072) == 0 ) goto label$162;
		{
			DTYPE$1 = 4;
		}
		goto label$161;
		label$162:;
		if( (*(int32*)((uint8*)SYM$1 + 120) & 65536) == 0 ) goto label$163;
		{
			DTYPE$1 = 7;
		}
		goto label$161;
		label$163:;
		{
			DTYPE$1 = 0;
		}
		label$161:;
		if( DTYPE$1 == 0 ) goto label$165;
		{
			struct $8FBSYMBOL* vr$12 = SYMBFINDCASTOVLPROC( DTYPE$1, (struct $8FBSYMBOL*)0u, *EXPR$1, &ERR_NUM$1, 0 );
			PROC$1 = vr$12;
			if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$167;
			{
				if( (*(int32*)((uint8*)PROC$1 + 28) & 511) != DTYPE$1 ) goto label$169;
				{
					struct $7ASTNODE* vr$16 = ASTBUILDCALL( PROC$1, *EXPR$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
					*EXPR$1 = vr$16;
					fb$result$1 = -1;
					goto label$158;
				}
				label$169:;
				label$168:;
			}
			label$167:;
			label$166:;
		}
		label$165:;
		label$164:;
	}
	label$160:;
	label$159:;
	fb$result$1 = 0;
	goto label$158;
	label$158:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONV( int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1, $11AST_CONVOPT OPTIONS$1, int32* PERRMSG$1 )
{
	int32 TMP$103$1;
	int32 TMP$108$1;
	int32 TMP$113$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$170:;
	struct $7ASTNODE* N$1;
	int32 LDCLASS$1;
	int32 LDTYPE$1;
	int32 ERRMSG$1;
	int32 WRNMSG$1;
	int32 DOCONV$1;
	if( PERRMSG$1 == (int32*)0u ) goto label$173;
	{
		*PERRMSG$1 = 0;
	}
	label$173:;
	label$172:;
	LDTYPE$1 = *(int32*)((uint8*)L$1 + 4);
	if( (LDTYPE$1 & 511) != (TO_DTYPE$1 & 511) ) goto label$175;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) != TO_SUBTYPE$1 ) goto label$177;
		{
			if( (LDTYPE$1 & 261632) == (TO_DTYPE$1 & 261632) ) goto label$179;
			{
				if( *(int32*)L$1 != 16 ) goto label$181;
				{
					ASTSETTYPE( L$1, TO_DTYPE$1, TO_SUBTYPE$1 );
					N$1 = L$1;
				}
				goto label$180;
				label$181:;
				{
					struct $7ASTNODE* vr$9 = ASTNEWNODE( 5, TO_DTYPE$1, TO_SUBTYPE$1 );
					N$1 = vr$9;
					*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
					*(int32*)((uint8*)N$1 + 24) = 0;
					*(int32*)((uint8*)N$1 + 28) = 0;
					*(int32*)((uint8*)N$1 + 32) = -1;
					if( (OPTIONS$1 & 16) != 0 ) goto label$183;
					{
						if( (*(int32*)((uint8*)&ENV$ + 200) & 128) == 0 ) goto label$185;
						{
							ERRREPORTWARN( 40, (uint8*)0u, 1, (uint8*)0u );
						}
						label$185:;
						label$184:;
					}
					label$183:;
					label$182:;
				}
				label$180:;
			}
			goto label$178;
			label$179:;
			{
				N$1 = L$1;
			}
			label$178:;
			fb$result$1 = N$1;
			goto label$171;
		}
		label$177:;
		label$176:;
	}
	label$175:;
	label$174:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$186;
	TMP$103$1 = 24;
	goto label$299;
	label$186:;
	TMP$103$1 = LDTYPE$1 & 31;
	label$299:;
	if( TMP$103$1 != 20 ) goto label$188;
	{
		struct $8FBSYMBOL* SUBTYPE$2;
		SUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
		if( (-((*(int32*)((uint8*)SUBTYPE$2 + 120) & 131072) != 0) | -((*(int32*)((uint8*)SUBTYPE$2 + 120) & 65536) != 0)) == 0 ) goto label$190;
		{
			struct $8FBSYMBOL* PROC$3;
			PROC$3 = (struct $8FBSYMBOL*)0u;
			$9FB_ERRMSG ERR_NUM$3;
			struct $8FBSYMBOL* vr$27 = SYMBFINDCASTOVLPROC( TO_DTYPE$1, TO_SUBTYPE$1, L$1, &ERR_NUM$3, 4 );
			PROC$3 = vr$27;
			if( PROC$3 == (struct $8FBSYMBOL*)0u ) goto label$192;
			{
				struct $7ASTNODE* vr$28 = ASTBUILDCALL( PROC$3, L$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
				fb$result$1 = vr$28;
				goto label$171;
			}
			label$192:;
			label$191:;
			if( (*(int32*)((uint8*)SUBTYPE$2 + 120) & 131072) == 0 ) goto label$194;
			{
				struct $8FBSYMBOL* vr$32 = SYMBFINDCASTOVLPROC( 36, (struct $8FBSYMBOL*)0u, L$1, &ERR_NUM$3, 4 );
				PROC$3 = vr$32;
			}
			goto label$193;
			label$194:;
			if( (*(int32*)((uint8*)SUBTYPE$2 + 120) & 65536) == 0 ) goto label$195;
			{
				struct $8FBSYMBOL* vr$36 = SYMBFINDCASTOVLPROC( 39, (struct $8FBSYMBOL*)0u, L$1, &ERR_NUM$3, 4 );
				PROC$3 = vr$36;
			}
			label$195:;
			label$193:;
			if( PROC$3 == (struct $8FBSYMBOL*)0u ) goto label$197;
			{
				struct $7ASTNODE* vr$37 = ASTBUILDCALL( PROC$3, L$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
				fb$result$1 = vr$37;
				goto label$171;
			}
			label$197:;
			label$196:;
			if( (OPTIONS$1 & 2) == 0 ) goto label$199;
			{
				int32 vr$40 = ASTTRYOVLSTRINGCONV( &L$1 );
				if( vr$40 == 0 ) goto label$201;
				{
					LDTYPE$1 = *(int32*)((uint8*)L$1 + 4);
				}
				label$201:;
				label$200:;
			}
			label$199:;
			label$198:;
		}
		label$190:;
		label$189:;
	}
	label$188:;
	label$187:;
	int32 vr$43 = ASTTRYOVLOPCASTCONV( &N$1, TO_DTYPE$1, TO_SUBTYPE$1, L$1, OPTIONS$1 );
	if( vr$43 == 0 ) goto label$203;
	{
		fb$result$1 = N$1;
		goto label$171;
	}
	label$203:;
	label$202:;
	{
		int32 TMP$104$2;
		uint32 TMP$105$2;
		if( (TO_DTYPE$1 & 480) == 0 ) goto label$204;
		TMP$104$2 = 24;
		goto label$300;
		label$204:;
		TMP$104$2 = TO_DTYPE$1 & 31;
		label$300:;
		TMP$105$2 = (uint32)TMP$104$2;
		goto label$206;
		label$207:;
		{
			goto label$171;
		}
		goto label$205;
		label$208:;
		{
			int32 TMP$106$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$209;
			TMP$106$3 = 24;
			goto label$301;
			label$209:;
			TMP$106$3 = LDTYPE$1 & 31;
			label$301:;
			if( TMP$106$3 == 20 ) goto label$211;
			{
				goto label$171;
			}
			label$211:;
			label$210:;
			if( (OPTIONS$1 & 128) == 0 ) goto label$213;
			{
				goto label$171;
			}
			label$213:;
			label$212:;
			int32 vr$50 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), TO_SUBTYPE$1 );
			if( vr$50 != 0 ) goto label$215;
			{
				goto label$171;
			}
			label$215:;
			label$214:;
		}
		goto label$205;
		label$216:;
		{
			int32 TMP$107$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$217;
			TMP$107$3 = 24;
			goto label$302;
			label$217:;
			TMP$107$3 = LDTYPE$1 & 31;
			label$302:;
			if( TMP$107$3 != 20 ) goto label$219;
			{
				goto label$171;
			}
			label$219:;
			label$218:;
		}
		goto label$205;
		label$206:;
		static const void* tmp$125[21] = {
			&&label$207,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$207,
			&&label$216,
			&&label$216,
			&&label$207,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$207,
			&&label$207,
			&&label$216,
			&&label$208,
		};
		if( TMP$105$2 > 20u ) goto label$216;
		goto *tmp$125[TMP$105$2 - 0u];
		label$205:;
	}
	if( (LDTYPE$1 & 480) == 0 ) goto label$220;
	TMP$108$1 = 24;
	goto label$303;
	label$220:;
	TMP$108$1 = LDTYPE$1 & 31;
	label$303:;
	LDCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$108$1 * 28));
	if( (OPTIONS$1 & 1) == 0 ) goto label$222;
	{
		if( LDCLASS$1 == 0 ) goto label$224;
		{
			goto label$171;
		}
		label$224:;
		label$223:;
	}
	label$222:;
	label$221:;
	if( (OPTIONS$1 & 8) != 0 ) goto label$226;
	{
		int32 vr$58 = HCHECKPTR( TO_DTYPE$1, TO_SUBTYPE$1, LDTYPE$1, L$1, OPTIONS$1 );
		ERRMSG$1 = vr$58;
		if( ERRMSG$1 == 0 ) goto label$228;
		{
			if( PERRMSG$1 == (int32*)0u ) goto label$230;
			{
				*PERRMSG$1 = ERRMSG$1;
			}
			label$230:;
			label$229:;
			goto label$171;
		}
		label$228:;
		label$227:;
	}
	label$226:;
	label$225:;
	if( (OPTIONS$1 & 2) == 0 ) goto label$232;
	{
		{
			int32 TMP$109$3;
			uint32 TMP$110$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$233;
			TMP$109$3 = 24;
			goto label$304;
			label$233:;
			TMP$109$3 = LDTYPE$1 & 31;
			label$304:;
			TMP$110$3 = (uint32)TMP$109$3;
			goto label$235;
			label$236:;
			{
				struct $7ASTNODE* vr$63 = RTLSTRTOVAL( L$1, TO_DTYPE$1 );
				fb$result$1 = vr$63;
				goto label$171;
			}
			goto label$234;
			label$235:;
			static const void* tmp$126[15] = {
				&&label$236,
				&&label$234,
				&&label$234,
				&&label$236,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$236,
				&&label$236,
			};
			if( (TMP$110$3 - 4u) > 14u ) goto label$234;
			goto *tmp$126[TMP$110$3 - 4u];
			label$234:;
		}
	}
	goto label$231;
	label$232:;
	{
		if( LDCLASS$1 != 2 ) goto label$238;
		{
			goto label$171;
		}
		goto label$237;
		label$238:;
		{
			{
				int32 TMP$111$4;
				int32 TMP$112$4;
				if( (LDTYPE$1 & 480) == 0 ) goto label$239;
				TMP$111$4 = 24;
				goto label$305;
				label$239:;
				TMP$111$4 = LDTYPE$1 & 31;
				label$305:;
				TMP$112$4 = TMP$111$4;
				if( TMP$112$4 == 4 ) goto label$242;
				label$243:;
				if( TMP$112$4 != 7 ) goto label$241;
				label$242:;
				{
					if( *(int32*)L$1 == 20 ) goto label$245;
					{
						goto label$171;
					}
					label$245:;
					label$244:;
				}
				label$241:;
				label$240:;
			}
		}
		label$237:;
	}
	label$231:;
	if( *(int32*)L$1 != 16 ) goto label$247;
	{
		ASTCHECKCONST( TO_DTYPE$1, L$1 );
		HCONSTCONV( TO_DTYPE$1, L$1 );
		*(int32*)((uint8*)L$1 + 4) = TO_DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = TO_SUBTYPE$1;
		fb$result$1 = L$1;
		goto label$171;
	}
	label$247:;
	label$246:;
	DOCONV$1 = -1;
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$248;
	TMP$113$1 = 24;
	goto label$306;
	label$248:;
	TMP$113$1 = TO_DTYPE$1 & 31;
	label$306:;
	if( LDCLASS$1 != *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$1 * 28)) ) goto label$250;
	{
		{
			int32 TMP$114$3;
			int32 TMP$115$3;
			if( (TO_DTYPE$1 & 480) == 0 ) goto label$251;
			TMP$114$3 = 24;
			goto label$307;
			label$251:;
			TMP$114$3 = TO_DTYPE$1 & 31;
			label$307:;
			TMP$115$3 = TMP$114$3;
			if( TMP$115$3 != 20 ) goto label$253;
			label$254:;
			{
				DOCONV$1 = 0;
			}
			goto label$252;
			label$253:;
			{
				if( (-(LDTYPE$1 == 1) | -(TO_DTYPE$1 == 1)) == 0 ) goto label$257;
				{
					if( LDTYPE$1 != TO_DTYPE$1 ) goto label$259;
					{
						DOCONV$1 = 0;
					}
					label$259:;
					label$258:;
				}
				goto label$256;
				label$257:;
				{
					int32 TMP$116$5;
					int32 TMP$117$5;
					if( (LDTYPE$1 & 480) == 0 ) goto label$260;
					TMP$116$5 = 24;
					goto label$308;
					label$260:;
					TMP$116$5 = LDTYPE$1 & 31;
					label$308:;
					if( (TO_DTYPE$1 & 480) == 0 ) goto label$261;
					TMP$117$5 = 24;
					goto label$309;
					label$261:;
					TMP$117$5 = TO_DTYPE$1 & 31;
					label$309:;
					if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$5 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$117$5 * 28)) + 4) ) goto label$263;
					{
						DOCONV$1 = 0;
					}
					label$263:;
					label$262:;
				}
				label$256:;
			}
			label$255:;
			label$252:;
		}
	}
	label$250:;
	label$249:;
	if( (*(int32*)((uint8*)&IR$ + 272) & 1) == 0 ) goto label$265;
	{
		int32 TMP$118$2;
		if( (TO_DTYPE$1 & 480) == 0 ) goto label$266;
		TMP$118$2 = 24;
		goto label$310;
		label$266:;
		TMP$118$2 = TO_DTYPE$1 & 31;
		label$310:;
		if( (-(LDCLASS$1 == 1) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$118$2 * 28)) == 1)) == 0 ) goto label$268;
		{
			int32 TMP$119$3;
			int32 TMP$120$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$269;
			TMP$119$3 = 24;
			goto label$311;
			label$269:;
			TMP$119$3 = LDTYPE$1 & 31;
			label$311:;
			if( (TO_DTYPE$1 & 480) == 0 ) goto label$270;
			TMP$120$3 = 24;
			goto label$312;
			label$270:;
			TMP$120$3 = TO_DTYPE$1 & 31;
			label$312:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$119$3 * 28)) + 4) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$120$3 * 28)) + 4) ) goto label$272;
			{
				DOCONV$1 = -1;
			}
			label$272:;
			label$271:;
		}
		label$268:;
		label$267:;
	}
	label$265:;
	label$264:;
	if( *(int32*)L$1 != 5 ) goto label$274;
	{
		if( *(int32*)((uint8*)L$1 + 24) != 0 ) goto label$276;
		{
			if( DOCONV$1 != 0 ) goto label$278;
			{
				*(int32*)((uint8*)L$1 + 4) = TO_DTYPE$1;
				*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = TO_SUBTYPE$1;
				fb$result$1 = L$1;
				goto label$171;
			}
			label$278:;
			label$277:;
		}
		label$276:;
		label$275:;
	}
	label$274:;
	label$273:;
	struct $7ASTNODE* vr$101 = ASTNEWNODE( 5, TO_DTYPE$1, TO_SUBTYPE$1 );
	N$1 = vr$101;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	*(int32*)((uint8*)N$1 + 24) = DOCONV$1;
	*(int32*)((uint8*)N$1 + 28) = 0;
	*(int32*)((uint8*)N$1 + 32) = 0;
	if( (-((LDTYPE$1 & 480) != 0) & -((TO_DTYPE$1 & 480) != 0)) == 0 ) goto label$280;
	{
		int32 TMP$121$2;
		WRNMSG$1 = 0;
		TMP$121$2 = 0;
		int32 vr$114 = SYMBCHECKCONSTASSIGN( TO_DTYPE$1, LDTYPE$1, TO_SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), 0, &TMP$121$2, ($13FB_WARNINGMSG*)&WRNMSG$1 );
		*(int32*)((uint8*)N$1 + 32) = -(vr$114 == 0);
		if( *(int32*)((uint8*)N$1 + 32) == 0 ) goto label$282;
		{
			if( WRNMSG$1 == 0 ) goto label$284;
			{
				if( (OPTIONS$1 & 32) != 0 ) goto label$286;
				{
					ERRREPORTWARN( WRNMSG$1, (uint8*)0u, 1, (uint8*)" in function pointer" );
				}
				label$286:;
				label$285:;
			}
			goto label$283;
			label$284:;
			{
				if( (OPTIONS$1 & 16) != 0 ) goto label$288;
				{
					if( (*(int32*)((uint8*)&ENV$ + 200) & 128) == 0 ) goto label$290;
					{
						ERRREPORTWARN( 40, (uint8*)0u, 1, (uint8*)0u );
					}
					label$290:;
					label$289:;
				}
				label$288:;
				label$287:;
			}
			label$283:;
		}
		label$282:;
		label$281:;
	}
	label$280:;
	label$279:;
	if( *(int32*)((uint8*)&ENV$ + 104) != 0 ) goto label$292;
	{
		if( DOCONV$1 == 0 ) goto label$294;
		{
			int32 TMP$123$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$295;
			TMP$123$3 = 24;
			goto label$313;
			label$295:;
			TMP$123$3 = LDTYPE$1 & 31;
			label$313:;
			if( TMP$123$3 != 16 ) goto label$297;
			{
				int32 TMP$124$4;
				if( (TO_DTYPE$1 & 480) == 0 ) goto label$298;
				TMP$124$4 = 24;
				goto label$314;
				label$298:;
				TMP$124$4 = TO_DTYPE$1 & 31;
				label$314:;
				*(int32*)((uint8*)N$1 + 28) = -(TMP$124$4 == 15);
			}
			label$297:;
			label$296:;
		}
		label$294:;
		label$293:;
	}
	label$292:;
	label$291:;
	fb$result$1 = N$1;
	label$171:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWOVLCONV( int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$315:;
	struct $7ASTNODE* N$1;
	N$1 = (struct $7ASTNODE*)0u;
	int32 vr$2 = ASTTRYOVLOPCASTCONV( &N$1, TO_DTYPE$1, TO_SUBTYPE$1, L$1, 0 );
	if( vr$2 == 0 ) goto label$318;
	{
		fb$result$1 = N$1;
		goto label$316;
	}
	label$318:;
	label$317:;
	fb$result$1 = L$1;
	goto label$316;
	label$316:;
	return fb$result$1;
}

void ASTUPDATECONVFD2FS( struct $7ASTNODE* N$1, int32 TO_DTYPE$1, int32 IS_EXPR$1 )
{
	int32 TMP$127$1;
	int32 TMP$128$1;
	label$319:;
	if( *(int32*)((uint8*)N$1 + 28) != 0 ) goto label$322;
	{
		goto label$320;
	}
	label$322:;
	label$321:;
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$323;
	TMP$127$1 = 24;
	goto label$327;
	label$323:;
	TMP$127$1 = TO_DTYPE$1 & 31;
	label$327:;
	*(int32*)((uint8*)N$1 + 28) = -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$127$1 * 28)) + 4) >= 4);
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$324;
	TMP$128$1 = 24;
	goto label$328;
	label$324:;
	TMP$128$1 = TO_DTYPE$1 & 31;
	label$328:;
	if( TMP$128$1 != 15 ) goto label$326;
	{
		*(int32*)((uint8*)N$1 + 28) = IS_EXPR$1;
	}
	label$326:;
	label$325:;
	label$320:;
}

struct $6IRVREG* ASTLOADCONV( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$329:;
	struct $7ASTNODE* L$1;
	struct $6IRVREG* VS$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$332;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$330;
	}
	label$332:;
	label$331:;
	struct $6IRVREG* vr$2 = ASTLOAD( L$1 );
	VS$1 = vr$2;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$334;
	{
		*(int32*)((uint8*)VS$1 + 20) = *(int32*)((uint8*)N$1 + 16);
		if( *(int32*)((uint8*)N$1 + 24) == 0 ) goto label$336;
		{
			struct $6IRVREG* vr$8 = (*(tmp$68*)((uint8*)&IR$ + 224))( *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
			VR$1 = vr$8;
			*(int32*)((uint8*)VR$1 + 20) = *(int32*)((uint8*)N$1 + 16);
			(*(tmp$44*)((uint8*)&IR$ + 56))( VR$1, VS$1 );
			if( *(int32*)((uint8*)N$1 + 28) == 0 ) goto label$338;
			{
				if( *(int32*)((uint8*)VS$1 + 4) != 16 ) goto label$340;
				{
					if( *(int32*)((uint8*)VR$1 + 4) != 15 ) goto label$342;
					{
						if( *(int32*)((uint8*)VR$1 + 16) != 0 ) goto label$344;
						{
							(*(tmp$51*)((uint8*)&IR$ + 96))( 74, VR$1, (struct $6IRVREG*)0u );
						}
						label$344:;
						label$343:;
					}
					label$342:;
					label$341:;
				}
				label$340:;
				label$339:;
			}
			label$338:;
			label$337:;
		}
		goto label$335;
		label$336:;
		{
			VR$1 = VS$1;
			(*(tmp$74*)((uint8*)&IR$ + 252))( VR$1, *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
		}
		label$335:;
	}
	label$334:;
	label$333:;
	ASTDELNODE( L$1 );
	fb$result$1 = VR$1;
	label$330:;
	return fb$result$1;
}

struct $7ASTNODE* ASTSKIPCONSTCASTS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$345:;
	fb$result$1 = N$1;
	if( *(int32*)N$1 != 5 ) goto label$348;
	{
		if( *(int32*)((uint8*)N$1 + 24) != 0 ) goto label$350;
		{
			fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
		}
		label$350:;
		label$349:;
	}
	label$348:;
	label$347:;
	label$346:;
	return fb$result$1;
}

struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$351:;
	fb$result$1 = N$1;
	if( *(int32*)N$1 != 5 ) goto label$354;
	{
		if( (-(*(int32*)((uint8*)N$1 + 24) == 0) & -(*(int32*)((uint8*)N$1 + 32) == 0)) == 0 ) goto label$356;
		{
			fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
		}
		label$356:;
		label$355:;
	}
	label$354:;
	label$353:;
	label$352:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$357:;
	fb$result$1 = N$1;
	if( *(int32*)N$1 != 5 ) goto label$360;
	{
		if( (-(*(int32*)((uint8*)N$1 + 24) == 0) & -(*(int32*)((uint8*)N$1 + 32) == 0)) == 0 ) goto label$362;
		{
			fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = (struct $7ASTNODE*)0u;
			ASTDELTREE( N$1 );
		}
		label$362:;
		label$361:;
	}
	label$360:;
	label$359:;
	label$358:;
	return fb$result$1;
}

struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$363:;
	label$365:;
	if( *(int32*)N$1 != 5 ) goto label$366;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	}
	goto label$365;
	label$366:;
	fb$result$1 = N$1;
	label$364:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVECASTS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$367:;
	label$369:;
	if( *(int32*)N$1 != 5 ) goto label$370;
	{
		struct $7ASTNODE* L$2;
		L$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
		ASTDELNODE( N$1 );
		N$1 = L$2;
	}
	goto label$369;
	label$370:;
	fb$result$1 = N$1;
	label$368:;
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

static void HCONSTCONV( int32 TODTYPE$1, struct $7ASTNODE* L$1 )
{
	int32 TMP$83$1;
	int32 TMP$87$1;
	label$10:;
	int32 LDTYPE$1;
	LDTYPE$1 = *(int32*)((uint8*)L$1 + 4);
	if( (LDTYPE$1 & 480) == 0 ) goto label$12;
	TMP$83$1 = 24;
	goto label$371;
	label$12:;
	TMP$83$1 = LDTYPE$1 & 31;
	label$371:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$83$1 * 28)) != 1 ) goto label$14;
	{
		{
			int32 TMP$84$3;
			uint32 TMP$85$3;
			if( (TODTYPE$1 & 480) == 0 ) goto label$15;
			TMP$84$3 = 24;
			goto label$372;
			label$15:;
			TMP$84$3 = TODTYPE$1 & 31;
			label$372:;
			TMP$85$3 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$84$3 * 28)) + 20);
			goto label$17;
			label$18:;
			{
				if( (LDTYPE$1 & 511) != 16 ) goto label$20;
				{
					float F$5;
					F$5 = (float)*(double*)((uint8*)L$1 + 24);
					*(double*)((uint8*)L$1 + 24) = (double)F$5;
				}
				label$20:;
				label$19:;
			}
			goto label$16;
			label$21:;
			{
			}
			goto label$16;
			label$22:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)(*(double*)((uint8*)L$1 + 24) != 0);
			}
			goto label$16;
			label$23:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int8)fb_D2I( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$24:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint8)fb_D2I( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$25:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int16)fb_D2I( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$26:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint16)fb_D2I( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$27:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)fb_D2I( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$28:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint32)fb_D2L( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$29:;
			{
				*(int64*)((uint8*)L$1 + 24) = fb_D2L( *(double*)((uint8*)L$1 + 24) );
			}
			goto label$16;
			label$30:;
			{
				int64 TMP$86$4;
				if( *(double*)((uint8*)L$1 + 24) < 0x1.1C37937E08p+53 ) goto label$31;
				TMP$86$4 = fb_D2L( *(double*)((uint8*)L$1 + 24) * 0x1.p-1 ) << (1 & 63);
				goto label$373;
				label$31:;
				TMP$86$4 = fb_D2L( *(double*)((uint8*)L$1 + 24) );
				label$373:;
				*(int64*)((uint8*)L$1 + 24) = TMP$86$4;
			}
			goto label$16;
			label$17:;
			static const void* tmp$129[11] = {
				&&label$22,
				&&label$23,
				&&label$24,
				&&label$25,
				&&label$26,
				&&label$27,
				&&label$28,
				&&label$29,
				&&label$30,
				&&label$18,
				&&label$21,
			};
			if( TMP$85$3 > 10u ) goto label$16;
			goto *tmp$129[TMP$85$3 - 0u];
			label$16:;
		}
	}
	goto label$13;
	label$14:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$33;
	TMP$87$1 = 24;
	goto label$374;
	label$33:;
	TMP$87$1 = LDTYPE$1 & 31;
	label$374:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$87$1 * 28)) + 8) == 0 ) goto label$32;
	{
		{
			int32 TMP$88$3;
			uint32 TMP$89$3;
			if( (TODTYPE$1 & 480) == 0 ) goto label$34;
			TMP$88$3 = 24;
			goto label$375;
			label$34:;
			TMP$88$3 = TODTYPE$1 & 31;
			label$375:;
			TMP$89$3 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$3 * 28)) + 20);
			goto label$36;
			label$37:;
			{
				*(double*)((uint8*)L$1 + 24) = (double)(float)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$38:;
			{
				*(double*)((uint8*)L$1 + 24) = (double)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$39:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)(*(int64*)((uint8*)L$1 + 24) != 0);
			}
			goto label$35;
			label$40:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int8)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$41:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint8)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$42:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int16)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$43:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint16)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$44:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int32)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$45:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint32)*(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$46:;
			{
			}
			goto label$35;
			label$47:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24);
			}
			goto label$35;
			label$36:;
			static const void* tmp$130[11] = {
				&&label$39,
				&&label$40,
				&&label$41,
				&&label$42,
				&&label$43,
				&&label$44,
				&&label$45,
				&&label$46,
				&&label$47,
				&&label$37,
				&&label$38,
			};
			if( TMP$89$3 > 10u ) goto label$35;
			goto *tmp$130[TMP$89$3 - 0u];
			label$35:;
		}
	}
	goto label$13;
	label$32:;
	{
		{
			int32 TMP$90$3;
			uint32 TMP$91$3;
			if( (TODTYPE$1 & 480) == 0 ) goto label$48;
			TMP$90$3 = 24;
			goto label$376;
			label$48:;
			TMP$90$3 = TODTYPE$1 & 31;
			label$376:;
			TMP$91$3 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$90$3 * 28)) + 20);
			goto label$50;
			label$51:;
			{
				*(double*)((uint8*)L$1 + 24) = (double)(float)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$52:;
			{
				*(double*)((uint8*)L$1 + 24) = (double)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$53:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)-(boolean)(*(uint64*)((uint8*)L$1 + 24) != 0);
			}
			goto label$49;
			label$54:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int8)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$55:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint8)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$56:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int16)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$57:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint16)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$58:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(int32)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$59:;
			{
				*(int64*)((uint8*)L$1 + 24) = (int64)(uint32)*(uint64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$60:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$61:;
			{
				*(int64*)((uint8*)L$1 + 24) = *(int64*)((uint8*)L$1 + 24);
			}
			goto label$49;
			label$50:;
			static const void* tmp$131[11] = {
				&&label$53,
				&&label$54,
				&&label$55,
				&&label$56,
				&&label$57,
				&&label$58,
				&&label$59,
				&&label$60,
				&&label$61,
				&&label$51,
				&&label$52,
			};
			if( TMP$91$3 > 10u ) goto label$49;
			goto *tmp$131[TMP$91$3 - 0u];
			label$49:;
		}
	}
	label$13:;
	label$11:;
}

static int32 HGETTYPEMISMATCHERRMSG( $11AST_CONVOPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	if( (OPTIONS$1 & 4) == 0 ) goto label$65;
	{
		fb$result$1 = 28;
	}
	goto label$64;
	label$65:;
	{
		fb$result$1 = 20;
	}
	label$64:;
	label$63:;
	return fb$result$1;
}

static int32 HCHECKPTR( int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, int32 EXPR_DTYPE$1, struct $7ASTNODE* EXPR$1, $11AST_CONVOPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$80:;
	fb$result$1 = 0;
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$83;
	{
		if( (EXPR_DTYPE$1 & 480) != 0 ) goto label$85;
		{
			int32 vr$3 = ASTCHECKCONVNONPTRTOPTR( TO_DTYPE$1, EXPR_DTYPE$1, EXPR$1, OPTIONS$1 );
			fb$result$1 = vr$3;
			goto label$81;
		}
		label$85:;
		label$84:;
	}
	goto label$82;
	label$83:;
	if( (EXPR_DTYPE$1 & 480) == 0 ) goto label$86;
	{
		int32 TMP$94$2;
		if( (TO_DTYPE$1 & 480) == 0 ) goto label$87;
		TMP$94$2 = 24;
		goto label$377;
		label$87:;
		TMP$94$2 = TO_DTYPE$1 & 31;
		label$377:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$2 * 28)) != 0 ) goto label$89;
		{
			int32 TMP$95$3;
			if( *(int32*)EXPR$1 != 16 ) goto label$91;
			{
				int32 vr$9 = ASTCONSTEQZERO( EXPR$1 );
				if( vr$9 == 0 ) goto label$93;
				{
					goto label$81;
				}
				label$93:;
				label$92:;
			}
			label$91:;
			label$90:;
			if( (TO_DTYPE$1 & 480) == 0 ) goto label$94;
			TMP$95$3 = 24;
			goto label$378;
			label$94:;
			TMP$95$3 = TO_DTYPE$1 & 31;
			label$378:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$3 * 28)) + 4) != *(int32*)((uint8*)&ENV$ + 296) ) goto label$96;
			{
				goto label$81;
			}
			label$96:;
			label$95:;
		}
		label$89:;
		label$88:;
		int32 vr$13 = HGETTYPEMISMATCHERRMSG( OPTIONS$1 );
		fb$result$1 = vr$13;
		goto label$81;
	}
	goto label$82;
	label$86:;
	{
		goto label$81;
	}
	label$82:;
	if( (TO_DTYPE$1 & 31) != 20 ) goto label$98;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)TO_SUBTYPE$1 + 96) == (struct $8FBSYMBOL*)0u ) goto label$100;
		{
			if( (EXPR_DTYPE$1 & 31) == 20 ) goto label$102;
			{
				if( (EXPR_DTYPE$1 & 31) == 0 ) goto label$104;
				{
					fb$result$1 = 300;
					goto label$81;
				}
				label$104:;
				label$103:;
			}
			goto label$101;
			label$102:;
			{
				int32 vr$19 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8), TO_SUBTYPE$1 );
				if( vr$19 != 0 ) goto label$106;
				{
					int32 vr$21 = SYMBGETUDTBASELEVEL( TO_SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
					if( vr$21 != 0 ) goto label$108;
					{
						fb$result$1 = 301;
						goto label$81;
					}
					label$108:;
					label$107:;
				}
				label$106:;
				label$105:;
			}
			label$101:;
		}
		label$100:;
		label$99:;
	}
	label$98:;
	label$97:;
	if( (EXPR_DTYPE$1 & 31) != 20 ) goto label$110;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) + 96) == (struct $8FBSYMBOL*)0u ) goto label$112;
		{
			if( (TO_DTYPE$1 & 31) == 20 ) goto label$114;
			{
				if( (TO_DTYPE$1 & 31) == 0 ) goto label$116;
				{
					fb$result$1 = 302;
					goto label$81;
				}
				label$116:;
				label$115:;
			}
			goto label$113;
			label$114:;
			{
				int32 vr$28 = SYMBGETUDTBASELEVEL( TO_SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
				if( vr$28 != 0 ) goto label$118;
				{
					int32 vr$30 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8), TO_SUBTYPE$1 );
					if( vr$30 != 0 ) goto label$120;
					{
						fb$result$1 = 303;
						goto label$81;
					}
					label$120:;
					label$119:;
				}
				label$118:;
				label$117:;
			}
			label$113:;
		}
		label$112:;
		label$111:;
	}
	label$110:;
	label$109:;
	label$81:;
	return fb$result$1;
}

static int32 ASTTRYOVLOPCASTCONV( struct $7ASTNODE** N$1, int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* NODE$1, $11AST_CONVOPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$149:;
	struct $8FBSYMBOL* PROC$1;
	$9FB_ERRMSG ERR_NUM$1;
	$14FB_SYMBFINDOPT FIND_OPTIONS$1;
	FIND_OPTIONS$1 = 0;
	if( (OPTIONS$1 & 64) == 0 ) goto label$152;
	{
		FIND_OPTIONS$1 = 4;
	}
	label$152:;
	label$151:;
	struct $8FBSYMBOL* vr$3 = SYMBFINDCASTOVLPROC( TO_DTYPE$1, TO_SUBTYPE$1, NODE$1, &ERR_NUM$1, FIND_OPTIONS$1 );
	PROC$1 = vr$3;
	if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$154;
	{
		struct $7ASTNODE* vr$4 = ASTBUILDCALL( PROC$1, NODE$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
		*N$1 = vr$4;
		fb$result$1 = -1;
		goto label$150;
	}
	goto label$153;
	label$154:;
	{
		if( ERR_NUM$1 == 0 ) goto label$156;
		{
			*N$1 = (struct $7ASTNODE*)0u;
			fb$result$1 = -1;
			goto label$150;
		}
		label$156:;
		label$155:;
	}
	label$153:;
	fb$result$1 = 0;
	goto label$150;
	label$150:;
	return fb$result$1;
}
