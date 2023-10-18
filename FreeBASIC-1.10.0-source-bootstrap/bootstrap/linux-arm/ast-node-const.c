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
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_BoolToStr( boolean );
uint32* fb_BoolToWstr( boolean );
FBSTRING* fb_LongintToStr( int64 );
uint32* fb_LongintToWstr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
uint32* fb_ULongintToWstr( uint64 );
FBSTRING* fb_FloatToStr( float );
uint32* fb_FloatToWstr( float );
FBSTRING* fb_DoubleToStr( double );
uint32* fb_DoubleToWstr( double );
static void fb_ctor__astznodezconst( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONST( union $7FBVALUE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTWSTR( uint32* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int32, struct $8FBSYMBOL*, int32, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int32 );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTINITABLEFIELD( struct $8FBSYMBOL* );
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
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
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
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
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

int32 ASTCONSTEQZERO( struct $7ASTNODE* N$1 )
{
	int32 TMP$82$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$12;
	TMP$82$1 = 24;
	goto label$15;
	label$12:;
	TMP$82$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$15:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$82$1 * 28)) != 1 ) goto label$14;
	{
		fb$result$1 = -(*(double*)((uint8*)N$1 + 24) == 0x0p+0);
	}
	goto label$13;
	label$14:;
	{
		fb$result$1 = -(*(int64*)((uint8*)N$1 + 24) == 0ll);
	}
	label$13:;
	label$11:;
	return fb$result$1;
}

int32 ASTCONSTGEZERO( struct $7ASTNODE* N$1 )
{
	int32 TMP$83$1;
	int32 TMP$84$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$18;
	TMP$83$1 = 24;
	goto label$23;
	label$18:;
	TMP$83$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$23:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$83$1 * 28)) != 1 ) goto label$20;
	{
		fb$result$1 = -(*(double*)((uint8*)N$1 + 24) >= 0x0p+0);
	}
	goto label$19;
	label$20:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$22;
	TMP$84$1 = 24;
	goto label$24;
	label$22:;
	TMP$84$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$24:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$84$1 * 28)) + 8) == 0 ) goto label$21;
	{
		fb$result$1 = -(*(int64*)((uint8*)N$1 + 24) >= 0ll);
	}
	goto label$19;
	label$21:;
	{
		fb$result$1 = -1;
	}
	label$19:;
	label$17:;
	return fb$result$1;
}

int32 ASTISCONST0ORMINUS1( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$25:;
	if( *(int32*)N$1 != 16 ) goto label$28;
	{
		int64 VALUE$2;
		int64 vr$2 = ASTCONSTGETASINT64( N$1 );
		VALUE$2 = vr$2;
		if( (-(VALUE$2 == 0ll) | -(VALUE$2 == -1ll)) == 0 ) goto label$30;
		{
			fb$result$1 = -1;
			goto label$26;
		}
		label$30:;
		label$29:;
	}
	label$28:;
	label$27:;
	fb$result$1 = 0;
	goto label$26;
	label$26:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTSTR( uint8* V$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$31:;
	struct $8FBSYMBOL* TC$1;
	struct $8FBSYMBOL* vr$1 = SYMBALLOCSTRCONST( V$1, -1 );
	TC$1 = vr$1;
	if( TC$1 != (struct $8FBSYMBOL*)0u ) goto label$34;
	{
		goto label$32;
	}
	label$34:;
	label$33:;
	struct $7ASTNODE* vr$2 = ASTNEWVAR( TC$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$2;
	label$32:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTWSTR( uint32* V$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$35:;
	struct $8FBSYMBOL* TC$1;
	struct $8FBSYMBOL* vr$1 = SYMBALLOCWSTRCONST( V$1, -1 );
	TC$1 = vr$1;
	if( TC$1 != (struct $8FBSYMBOL*)0u ) goto label$38;
	{
		goto label$36;
	}
	label$38:;
	label$37:;
	struct $7ASTNODE* vr$2 = ASTNEWVAR( TC$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$2;
	label$36:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTI( int64 VALUE$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$39:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 16, 13, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 24) = VALUE$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, N$1, 8, (int32*)0u );
	N$1 = vr$3;
	fb$result$1 = N$1;
	label$40:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTF( double VALUE$1, int32 DTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$41:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 16, 16, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(double*)((uint8*)N$1 + 24) = VALUE$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0u, N$1, 0, (int32*)0u );
	fb$result$1 = vr$3;
	label$42:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONST( union $7FBVALUE* V$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 TMP$85$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$43:;
	if( (DTYPE$1 & 480) == 0 ) goto label$45;
	TMP$85$1 = 24;
	goto label$48;
	label$45:;
	TMP$85$1 = DTYPE$1 & 31;
	label$48:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$85$1 * 28)) != 1 ) goto label$47;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTF( *(double*)V$1, DTYPE$1 );
		fb$result$1 = vr$5;
	}
	goto label$46;
	label$47:;
	{
		struct $7ASTNODE* vr$7 = ASTNEWCONSTI( *(int64*)V$1, DTYPE$1, SUBTYPE$1 );
		fb$result$1 = vr$7;
	}
	label$46:;
	label$44:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTZ( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$49:;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* FLD$1;
	{
		uint32 TMP$86$2;
		TMP$86$2 = (uint32)(DTYPE$1 & 511);
		goto label$52;
		label$53:;
		{
			struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$2;
		}
		goto label$51;
		label$54:;
		{
			struct $7ASTNODE* vr$3 = ASTNEWCONSTSTR( (uint8*)0u );
			fb$result$1 = vr$3;
		}
		goto label$51;
		label$55:;
		{
			struct $7ASTNODE* vr$4 = ASTNEWCONSTWSTR( (uint32*)0u );
			fb$result$1 = vr$4;
		}
		goto label$51;
		label$56:;
		{
			struct $7ASTNODE* vr$5 = ASTTYPEINIBEGIN( 20, SUBTYPE$1, -1, 0ll );
			TREE$1 = vr$5;
			ASTTYPEINISCOPEBEGIN( TREE$1, (struct $8FBSYMBOL*)0u, 0 );
			struct $8FBSYMBOL* vr$6 = SYMBUDTGETFIRSTFIELD( SUBTYPE$1 );
			FLD$1 = vr$6;
			label$57:;
			if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$58;
			{
				struct $7ASTNODE* vr$9 = ASTNEWCONSTZ( *(int32*)((uint8*)FLD$1 + 28), *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32) );
				ASTTYPEINIADDASSIGN( TREE$1, vr$9, FLD$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0 );
				struct $8FBSYMBOL* vr$10 = SYMBUDTGETNEXTINITABLEFIELD( FLD$1 );
				FLD$1 = vr$10;
			}
			goto label$57;
			label$58:;
			ASTTYPEINISCOPEEND( TREE$1, (struct $8FBSYMBOL*)0u );
			ASTTYPEINIEND( TREE$1, 0 );
			fb$result$1 = TREE$1;
		}
		goto label$51;
		label$59:;
		{
			int32 TMP$87$3;
			if( DTYPE$1 != -2147483648u ) goto label$61;
			{
				DTYPE$1 = 8;
			}
			label$61:;
			label$60:;
			if( (DTYPE$1 & 480) == 0 ) goto label$62;
			TMP$87$3 = 24;
			goto label$65;
			label$62:;
			TMP$87$3 = DTYPE$1 & 31;
			label$65:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$87$3 * 28)) != 1 ) goto label$64;
			{
				struct $7ASTNODE* vr$14 = ASTNEWCONSTF( 0x0p+0, DTYPE$1 );
				fb$result$1 = vr$14;
			}
			goto label$63;
			label$64:;
			{
				struct $7ASTNODE* vr$15 = ASTNEWCONSTI( 0ll, DTYPE$1, SUBTYPE$1 );
				fb$result$1 = vr$15;
			}
			label$63:;
		}
		goto label$51;
		label$52:;
		static const void* tmp$88[21] = {
			&&label$53,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$54,
			&&label$59,
			&&label$59,
			&&label$55,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$59,
			&&label$54,
			&&label$54,
			&&label$59,
			&&label$56,
		};
		if( TMP$86$2 > 20u ) goto label$59;
		goto *tmp$88[TMP$86$2 - 0u];
		label$51:;
	}
	label$50:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADCONST( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	int32 DTYPE$1;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$69;
	{
		int32 TMP$89$2;
		DTYPE$1 = *(int32*)((uint8*)N$1 + 4) & 511;
		if( (DTYPE$1 & 480) == 0 ) goto label$70;
		TMP$89$2 = 24;
		goto label$73;
		label$70:;
		TMP$89$2 = DTYPE$1 & 31;
		label$73:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 28)) != 1 ) goto label$72;
		{
			struct $6IRVREG* vr$8 = (*(tmp$70*)((uint8*)&IR$ + 232))( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(double*)((uint8*)N$1 + 24) );
			fb$result$1 = vr$8;
		}
		goto label$71;
		label$72:;
		{
			struct $6IRVREG* vr$11 = (*(tmp$69*)((uint8*)&IR$ + 228))( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(int64*)((uint8*)N$1 + 24) );
			fb$result$1 = vr$11;
		}
		label$71:;
	}
	label$69:;
	label$68:;
	label$67:;
	return fb$result$1;
}

int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE* N$1, int32 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$74:;
	struct $7ASTNODE* vr$1 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0u, N$1, 0, (int32*)0u );
	N$1 = vr$1;
	fb$result$1 = *(int64*)((uint8*)N$1 + 24);
	ASTDELNODE( N$1 );
	label$75:;
	return fb$result$1;
}

FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* N$1 )
{
	int32 TMP$90$1;
	int32 TMP$91$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$76:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$78;
	TMP$90$1 = 24;
	goto label$86;
	label$78:;
	TMP$90$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$86:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$90$1 * 28)) != 1 ) goto label$80;
	{
		if( (*(int32*)((uint8*)N$1 + 4) & 511) != 16 ) goto label$82;
		{
			FBSTRING* vr$9 = fb_DoubleToStr( *(double*)((uint8*)N$1 + 24) );
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$9, -1, 0 );
		}
		goto label$81;
		label$82:;
		{
			FBSTRING* vr$13 = fb_FloatToStr( (float)*(double*)((uint8*)N$1 + 24) );
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$13, -1, 0 );
		}
		label$81:;
	}
	goto label$79;
	label$80:;
	if( (*(int32*)((uint8*)N$1 + 4) & 511) != 1 ) goto label$83;
	{
		FBSTRING* vr$19 = fb_BoolToStr( (boolean)(*(int64*)((uint8*)N$1 + 24) != 0) );
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$19, -1, 0 );
	}
	goto label$79;
	label$83:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$85;
	TMP$91$1 = 24;
	goto label$87;
	label$85:;
	TMP$91$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$87:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$1 * 28)) + 8) == 0 ) goto label$84;
	{
		FBSTRING* vr$27 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 24) );
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$27, -1, 0 );
	}
	goto label$79;
	label$84:;
	{
		FBSTRING* vr$30 = fb_ULongintToStr( *(uint64*)((uint8*)N$1 + 24) );
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$30, -1, 0 );
	}
	label$79:;
	ASTDELNODE( N$1 );
	label$77:;
	FBSTRING* vr$33 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$33;
}

uint32* ASTCONSTFLUSHTOWSTR( struct $7ASTNODE* N$1 )
{
	int32 TMP$92$1;
	int32 TMP$96$1;
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$88:;
	static uint32 W$1[65];
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$90;
	TMP$92$1 = 24;
	goto label$98;
	label$90:;
	TMP$92$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$98:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$1 * 28)) != 1 ) goto label$92;
	{
		if( (*(int32*)((uint8*)N$1 + 4) & 511) != 16 ) goto label$94;
		{
			uint32* TMP$93$3;
			uint32* vr$9 = fb_DoubleToWstr( *(double*)((uint8*)N$1 + 24) );
			TMP$93$3 = vr$9;
			fb_WstrAssign( (uint32*)W$1, 65, (uint32*)TMP$93$3 );
			fb_WstrDelete( (uint32*)TMP$93$3 );
		}
		goto label$93;
		label$94:;
		{
			uint32* TMP$94$3;
			uint32* vr$12 = fb_FloatToWstr( (float)*(double*)((uint8*)N$1 + 24) );
			TMP$94$3 = vr$12;
			fb_WstrAssign( (uint32*)W$1, 65, (uint32*)TMP$94$3 );
			fb_WstrDelete( (uint32*)TMP$94$3 );
		}
		label$93:;
	}
	goto label$91;
	label$92:;
	if( (*(int32*)((uint8*)N$1 + 4) & 511) != 1 ) goto label$95;
	{
		uint32* TMP$95$2;
		uint32* vr$17 = fb_BoolToWstr( (boolean)(*(int64*)((uint8*)N$1 + 24) != 0) );
		TMP$95$2 = vr$17;
		fb_WstrAssign( (uint32*)W$1, 65, (uint32*)TMP$95$2 );
		fb_WstrDelete( (uint32*)TMP$95$2 );
	}
	goto label$91;
	label$95:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$97;
	TMP$96$1 = 24;
	goto label$99;
	label$97:;
	TMP$96$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$99:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$1 * 28)) + 8) == 0 ) goto label$96;
	{
		uint32* TMP$97$2;
		uint32* vr$24 = fb_LongintToWstr( *(int64*)((uint8*)N$1 + 24) );
		TMP$97$2 = vr$24;
		fb_WstrAssign( (uint32*)W$1, 65, (uint32*)TMP$97$2 );
		fb_WstrDelete( (uint32*)TMP$97$2 );
	}
	goto label$91;
	label$96:;
	{
		uint32* TMP$98$2;
		uint32* vr$26 = fb_ULongintToWstr( *(uint64*)((uint8*)N$1 + 24) );
		TMP$98$2 = vr$26;
		fb_WstrAssign( (uint32*)W$1, 65, (uint32*)TMP$98$2 );
		fb_WstrDelete( (uint32*)TMP$98$2 );
	}
	label$91:;
	ASTDELNODE( N$1 );
	fb$result$1 = (uint32*)W$1;
	label$89:;
	return fb$result$1;
}

int64 ASTCONSTGETASINT64( struct $7ASTNODE* N$1 )
{
	int32 TMP$99$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$100:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$102;
	TMP$99$1 = 24;
	goto label$105;
	label$102:;
	TMP$99$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$105:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$1 * 28)) != 1 ) goto label$104;
	{
		fb$result$1 = fb_D2L( *(double*)((uint8*)N$1 + 24) );
	}
	goto label$103;
	label$104:;
	{
		fb$result$1 = *(int64*)((uint8*)N$1 + 24);
	}
	label$103:;
	label$101:;
	return fb$result$1;
}

double ASTCONSTGETASDOUBLE( struct $7ASTNODE* N$1 )
{
	int32 TMP$100$1;
	int32 TMP$101$1;
	double fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$106:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$108;
	TMP$100$1 = 24;
	goto label$113;
	label$108:;
	TMP$100$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$113:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$1 * 28)) != 1 ) goto label$110;
	{
		fb$result$1 = *(double*)((uint8*)N$1 + 24);
	}
	goto label$109;
	label$110:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$112;
	TMP$101$1 = 24;
	goto label$114;
	label$112:;
	TMP$101$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$114:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$1 * 28)) + 8) == 0 ) goto label$111;
	{
		fb$result$1 = (double)*(int64*)((uint8*)N$1 + 24);
	}
	goto label$109;
	label$111:;
	{
		fb$result$1 = (double)*(uint64*)((uint8*)N$1 + 24);
	}
	label$109:;
	label$107:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDCONST( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$115:;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
	{
		int32 TMP$102$2;
		TMP$102$2 = DTYPE$1 & 511;
		if( TMP$102$2 == 4 ) goto label$119;
		label$120:;
		if( TMP$102$2 != 7 ) goto label$118;
		label$119:;
		{
			struct $7ASTNODE* vr$5 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 56), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$5;
		}
		goto label$117;
		label$118:;
		{
			struct $7ASTNODE* vr$8 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)SYM$1 + 56), DTYPE$1, SUBTYPE$1 );
			fb$result$1 = vr$8;
		}
		label$121:;
		label$117:;
	}
	label$116:;
	return fb$result$1;
}

struct $7ASTNODE* ASTCONVERTRAWCONSTI( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	int32 TMP$103$1;
	$11FB_DATATYPE TMP$104$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$122:;
	if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$124;
	TMP$103$1 = 24;
	goto label$126;
	label$124:;
	TMP$103$1 = *(int32*)((uint8*)L$1 + 4) & 31;
	label$126:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$1 * 28)) + 8) == 0 ) goto label$125;
	TMP$104$1 = 13;
	goto label$127;
	label$125:;
	TMP$104$1 = 14;
	label$127:;
	*(int32*)((uint8*)L$1 + 4) = TMP$104$1;
	*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&AST$ + 232) = *(int32*)((uint8*)&AST$ + 232) + 1;
	struct $7ASTNODE* vr$9 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, L$1, 8, (int32*)0u );
	L$1 = vr$9;
	*(int32*)((uint8*)&AST$ + 232) = *(int32*)((uint8*)&AST$ + 232) + -1;
	fb$result$1 = L$1;
	label$123:;
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
