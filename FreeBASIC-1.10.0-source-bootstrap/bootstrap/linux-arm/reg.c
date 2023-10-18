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
struct $8REGCLASS;
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $11FB_DATATYPE;
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
typedef int32 (*tmp$82)( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
typedef int32 (*tmp$83)( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$84)( struct $8REGCLASS*, int32 );
typedef int32 (*tmp$85)( struct $8REGCLASS*, int32 );
typedef void (*tmp$86)( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
typedef int32 (*tmp$87)( struct $8REGCLASS* );
typedef struct $6IRVREG* (*tmp$88)( struct $8REGCLASS*, int32, struct $6IRVREG** );
typedef void (*tmp$89)( struct $8REGCLASS* );
struct $7REG_REG;
struct $7REG_REG {
	int32 NUM;
	struct $7REG_REG* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $7REG_REG ) == 8 );
typedef int32 $12REG_SIZEMASK;
struct $10REG_REGCTX {
	struct $7REG_REG* FREETAIL;
	struct $7REG_REG* USEDTAIL;
	int32 FREETB;
	struct $7REG_REG REGTB[8];
	$12REG_SIZEMASK SIZETB[8];
	uint32 NEXTTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_REGCTX ) == 140 );
struct $10REG_STKCTX {
	int32 REGTB[8];
	int32 FREGS;
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_STKCTX ) == 36 );
struct $8REGCLASS {
	tmp$82 ENSURE;
	tmp$82 _ALLOCATE;
	tmp$83 ALLOCATEREG;
	tmp$84 FREE;
	tmp$85 ISFREE;
	tmp$86 SETOWNER;
	tmp$87 GETMAXREGS;
	tmp$87 GETFIRST;
	tmp$85 GETNEXT;
	tmp$88 GETVREG;
	tmp$85 GETREALREG;
	tmp$89 CLEAR;
	tmp$89 DUMP;
	int32 CLASS;
	int32 ISSTACK;
	int32 REGS;
	struct $6IRVREG* VREGTB[8];
	struct $6IRVREG* VAUXPARENT[8];
	struct $10REG_REGCTX REGCTX;
	struct $10REG_STKCTX STKCTX;
};
__FB_STATIC_ASSERT( sizeof( struct $8REGCLASS ) == 304 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYI12REG_SIZEMASKE {
	$12REG_SIZEMASK* DATA;
	$12REG_SIZEMASK* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI12REG_SIZEMASKE ) == 120 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef uint32 (*tmp$75)( struct $6IRVREG* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__reg( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
static void REGINITCLASS( struct $8REGCLASS*, struct $7FBARRAYI12REG_SIZEMASKE* );
static void SREGINITCLASS( struct $8REGCLASS*, struct $7FBARRAYI12REG_SIZEMASKE* );
static void REGPUSH( struct $8REGCLASS*, int32 );
static int32 REGPOP( struct $8REGCLASS*, int32 );
static void REGPOPREG( struct $8REGCLASS*, int32 );
static void REGCLEAR( struct $8REGCLASS* );
static int32 REGFINDFAREST( struct $8REGCLASS*, int32, int32 );
static int32 REGALLOCATE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
static int32 REGALLOCATEREG( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
static int32 REGENSURE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
static void REGSETOWNER( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
static void REGFREE( struct $8REGCLASS*, int32 );
static int32 REGISFREE( struct $8REGCLASS*, int32 );
static int32 REGGETMAXREGS( struct $8REGCLASS* );
static int32 REGGETFIRST( struct $8REGCLASS* );
static int32 REGGETNEXT( struct $8REGCLASS*, int32 );
static struct $6IRVREG* REGGETVREG( struct $8REGCLASS*, int32, struct $6IRVREG** );
static int32 REGGETREALREG( struct $8REGCLASS*, int32 );
static void REGDUMP( struct $8REGCLASS* );
static int32 SREGFINDREG( struct $8REGCLASS*, struct $6IRVREG* );
static void SREGXCHG( struct $8REGCLASS*, int32 );
static int32 SREGFINDFREEREG( struct $8REGCLASS* );
static int32 SREGFINDTOSREG( struct $8REGCLASS* );
static int32 SREGALLOCATE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
static int32 SREGALLOCATEREG( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
static int32 SREGENSURE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
static void SREGFREE( struct $8REGCLASS*, int32 );
static int32 SREGISFREE( struct $8REGCLASS*, int32 );
static void SREGSETOWNER( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
static int32 SREGGETREALREG( struct $8REGCLASS*, int32 );
static int32 SREGGETMAXREGS( struct $8REGCLASS* );
static int32 SREGGETFIRST( struct $8REGCLASS* );
static int32 SREGGETNEXT( struct $8REGCLASS*, int32 );
static struct $6IRVREG* SREGGETVREG( struct $8REGCLASS*, int32, struct $6IRVREG** );
static void SREGDUMP( struct $8REGCLASS* );
static void SREGCLEAR( struct $8REGCLASS* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
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
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
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
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
struct $8FBARRAY1IPvE {
	void** DATA;
	void** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPvE ) == 36 );
static struct $8FBARRAY1IPvE tmp$103$;

struct $8REGCLASS* REGNEWCLASS( int32 CLASS_$1, int32 REGS$1, struct $7FBARRAYI12REG_SIZEMASKE* SIZETB$1, int32 ISSTACK$1 )
{
	struct $8REGCLASS* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $8REGCLASS* THIS_$1;
	__builtin_memset( &THIS_$1, 0, 4 );
	void* vr$2 = XCALLOCATE( 304 );
	THIS_$1 = (struct $8REGCLASS*)vr$2;
	*(int32*)((uint8*)THIS_$1 + 52) = CLASS_$1;
	*(int32*)((uint8*)THIS_$1 + 60) = REGS$1;
	*(int32*)((uint8*)THIS_$1 + 56) = ISSTACK$1;
	if( *(int32*)((uint8*)THIS_$1 + 56) != 0 ) goto label$13;
	{
		REGINITCLASS( THIS_$1, SIZETB$1 );
	}
	goto label$12;
	label$13:;
	{
		SREGINITCLASS( THIS_$1, SIZETB$1 );
	}
	label$12:;
	fb$result$1 = THIS_$1;
	label$11:;
	return fb$result$1;
}

int32 REGDELCLASS( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	fb$result$1 = 0;
	if( THIS_$1 != (struct $8REGCLASS*)0u ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	free( (void*)THIS_$1 );
	fb$result$1 = -1;
	label$15:;
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

static void REGPUSH( struct $8REGCLASS* THIS_$1, int32 N$1 )
{
	label$18:;
	static struct $7REG_REG* R$1;
	R$1 = *(struct $7REG_REG**)((uint8*)THIS_$1 + 132);
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 132) = *(struct $7REG_REG**)((uint8*)R$1 + 4);
	*(struct $7REG_REG**)((uint8*)R$1 + 4) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 128);
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 128) = R$1;
	*(int32*)R$1 = N$1;
	label$19:;
}

static int32 REGPOP( struct $8REGCLASS* THIS_$1, int32 SIZE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	static struct $7REG_REG* R$1;
	static struct $7REG_REG* LAST$1;
	R$1 = *(struct $7REG_REG**)((uint8*)THIS_$1 + 128);
	label$22:;
	if( R$1 == (struct $7REG_REG*)0u ) goto label$23;
	{
		if( (*(int32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (*(int32*)R$1 << (2 & 31))) + 76) & SIZE$1) == 0 ) goto label$25;
		{
			if( *(struct $7REG_REG**)((uint8*)THIS_$1 + 128) != R$1 ) goto label$27;
			{
				*(struct $7REG_REG**)((uint8*)THIS_$1 + 128) = *(struct $7REG_REG**)((uint8*)R$1 + 4);
			}
			goto label$26;
			label$27:;
			{
				*(struct $7REG_REG**)((uint8*)LAST$1 + 4) = *(struct $7REG_REG**)((uint8*)R$1 + 4);
			}
			label$26:;
			*(struct $7REG_REG**)((uint8*)R$1 + 4) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 132);
			*(struct $7REG_REG**)((uint8*)THIS_$1 + 132) = R$1;
			fb$result$1 = *(int32*)R$1;
			goto label$21;
		}
		label$25:;
		label$24:;
		LAST$1 = R$1;
		R$1 = *(struct $7REG_REG**)((uint8*)R$1 + 4);
	}
	goto label$22;
	label$23:;
	fb$result$1 = -1;
	label$21:;
	return fb$result$1;
}

static void REGPOPREG( struct $8REGCLASS* THIS_$1, int32 N$1 )
{
	label$28:;
	static struct $7REG_REG* R$1;
	static struct $7REG_REG* LAST$1;
	R$1 = *(struct $7REG_REG**)((uint8*)THIS_$1 + 128);
	label$30:;
	if( R$1 == (struct $7REG_REG*)0u ) goto label$31;
	{
		if( *(int32*)R$1 != N$1 ) goto label$33;
		{
			if( *(struct $7REG_REG**)((uint8*)THIS_$1 + 128) != R$1 ) goto label$35;
			{
				*(struct $7REG_REG**)((uint8*)THIS_$1 + 128) = *(struct $7REG_REG**)((uint8*)R$1 + 4);
			}
			goto label$34;
			label$35:;
			{
				*(struct $7REG_REG**)((uint8*)LAST$1 + 4) = *(struct $7REG_REG**)((uint8*)R$1 + 4);
			}
			label$34:;
			*(struct $7REG_REG**)((uint8*)R$1 + 4) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 132);
			*(struct $7REG_REG**)((uint8*)THIS_$1 + 132) = R$1;
			goto label$29;
		}
		label$33:;
		label$32:;
		LAST$1 = R$1;
		R$1 = *(struct $7REG_REG**)((uint8*)R$1 + 4);
	}
	goto label$30;
	label$31:;
	ERRREPORTEX( 21, (uint8*)"REGPOPREG", 0, 1, (uint8*)0u );
	label$29:;
}

static void REGCLEAR( struct $8REGCLASS* THIS_$1 )
{
	label$36:;
	static struct $7REG_REG* R$1;
	static int32 N$1;
	*(int32*)((uint8*)THIS_$1 + 136) = -1;
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 128) = (struct $7REG_REG*)0u;
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 132) = (struct $7REG_REG*)0u;
	{
		N$1 = 0;
		int32 TMP$105$2;
		TMP$105$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$38;
		label$41:;
		{
			*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (N$1 << (2 & 31))) + 64) = (struct $6IRVREG*)0u;
			*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (N$1 << (2 & 31))) + 96) = (struct $6IRVREG*)0u;
			*(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (N$1 << (2 & 31))) + 108) = 4294967295u;
			R$1 = (struct $7REG_REG*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (N$1 << (3 & 31))) + 12);
			*(struct $7REG_REG**)((uint8*)R$1 + 4) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 128);
			*(struct $7REG_REG**)((uint8*)THIS_$1 + 128) = R$1;
			*(int32*)R$1 = N$1;
		}
		label$39:;
		N$1 = N$1 + 1;
		label$38:;
		if( N$1 <= TMP$105$2 ) goto label$41;
		label$40:;
	}
	label$37:;
}

static int32 REGFINDFAREST( struct $8REGCLASS* THIS_$1, int32 SIZE$1, int32 RESERVEDREG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$42:;
	uint32 MAXDIST$1;
	MAXDIST$1 = 0u;
	int32 R$1;
	R$1 = -1;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$106$2;
		TMP$106$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$44;
		label$47:;
		{
			if( I$2 == RESERVEDREG$1 ) goto label$49;
			{
				if( (*(int32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (I$2 << (2 & 31))) + 76) & SIZE$1) == 0 ) goto label$51;
				{
					if( MAXDIST$1 > *(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (I$2 << (2 & 31))) + 108) ) goto label$53;
					{
						MAXDIST$1 = *(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (I$2 << (2 & 31))) + 108);
						R$1 = I$2;
					}
					label$53:;
					label$52:;
				}
				label$51:;
				label$50:;
			}
			label$49:;
			label$48:;
		}
		label$45:;
		I$2 = I$2 + 1;
		label$44:;
		if( I$2 <= TMP$106$2 ) goto label$47;
		label$46:;
	}
	fb$result$1 = R$1;
	label$43:;
	return fb$result$1;
}

static int32 REGALLOCATE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint32 SIZE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	int32 R$1;
	int32 vr$1 = REGPOP( THIS_$1, (int32)SIZE$1 );
	R$1 = vr$1;
	if( R$1 != -1 ) goto label$57;
	{
		int32 TMP$107$2;
		int32 RESERVEDREG$2;
		RESERVEDREG$2 = -1;
		if( *(struct $6IRVREG**)((uint8*)VREG$1 + 56) == (struct $6IRVREG*)0u ) goto label$58;
		TMP$107$2 = -((struct $6IRVREG*)-(*(int32*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) == 4) != (struct $6IRVREG*)0u);
		goto label$203;
		label$58:;
		TMP$107$2 = 0;
		label$203:;
		if( TMP$107$2 == 0 ) goto label$60;
		{
			RESERVEDREG$2 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 12);
		}
		label$60:;
		label$59:;
		int32 vr$9 = REGFINDFAREST( THIS_$1, (int32)SIZE$1, RESERVEDREG$2 );
		R$1 = vr$9;
		(*(tmp$44*)((uint8*)&IR$ + 264))( *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64), *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) );
		REGPOPREG( THIS_$1, R$1 );
	}
	label$57:;
	label$56:;
	*(int32*)((uint8*)THIS_$1 + 136) = *(int32*)((uint8*)THIS_$1 + 136) & ~(1 << (R$1 & 31));
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = VAUXPARENT$1;
	uint32 vr$23 = (*(tmp$75*)((uint8*)&IR$ + 256))( VREG$1 );
	*(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (R$1 << (2 & 31))) + 108) = vr$23;
	fb$result$1 = R$1;
	label$55:;
	return fb$result$1;
}

static int32 REGALLOCATEREG( struct $8REGCLASS* THIS_$1, int32 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$61:;
	if( (*(int32*)((uint8*)THIS_$1 + 136) & (1 << (R$1 & 31))) == 0 ) goto label$64;
	{
		REGPOPREG( THIS_$1, R$1 );
		*(int32*)((uint8*)THIS_$1 + 136) = *(int32*)((uint8*)THIS_$1 + 136) & ~(1 << (R$1 & 31));
	}
	label$64:;
	label$63:;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = VAUXPARENT$1;
	uint32 vr$13 = (*(tmp$75*)((uint8*)&IR$ + 256))( VREG$1 );
	*(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (R$1 << (2 & 31))) + 108) = vr$13;
	fb$result$1 = R$1;
	label$62:;
	return fb$result$1;
}

static int32 REGENSURE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint32 SIZE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$65:;
	int32 R$1;
	R$1 = *(int32*)((uint8*)VREG$1 + 12);
	if( R$1 != -1 ) goto label$68;
	{
		int32 vr$2 = REGALLOCATE( THIS_$1, VREG$1, VAUXPARENT$1, SIZE$1 );
		R$1 = vr$2;
		(*(tmp$51*)((uint8*)&IR$ + 260))( R$1, VREG$1, VAUXPARENT$1 );
	}
	label$68:;
	label$67:;
	fb$result$1 = R$1;
	label$66:;
	return fb$result$1;
}

static void REGSETOWNER( struct $8REGCLASS* THIS_$1, int32 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	label$69:;
	*(int32*)((uint8*)THIS_$1 + 136) = *(int32*)((uint8*)THIS_$1 + 136) & ~(1 << (R$1 & 31));
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = VAUXPARENT$1;
	uint32 vr$9 = (*(tmp$75*)((uint8*)&IR$ + 256))( VREG$1 );
	*(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (R$1 << (2 & 31))) + 108) = vr$9;
	label$70:;
}

static void REGFREE( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	label$71:;
	if( (*(int32*)((uint8*)THIS_$1 + 136) & (1 << (R$1 & 31))) != 0 ) goto label$74;
	{
		*(int32*)((uint8*)THIS_$1 + 136) = *(int32*)((uint8*)THIS_$1 + 136) | (1 << (R$1 & 31));
		*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = (struct $6IRVREG*)0u;
		*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = (struct $6IRVREG*)0u;
		*(uint32*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (R$1 << (2 & 31))) + 108) = 4294967295u;
		REGPUSH( THIS_$1, R$1 );
	}
	label$74:;
	label$73:;
	label$72:;
}

static int32 REGISFREE( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$75:;
	fb$result$1 = -((*(int32*)((uint8*)THIS_$1 + 136) & (1 << (R$1 & 31))) != 0);
	label$76:;
	return fb$result$1;
}

static int32 REGGETMAXREGS( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$77:;
	fb$result$1 = *(int32*)((uint8*)THIS_$1 + 60);
	label$78:;
	return fb$result$1;
}

static int32 REGGETFIRST( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$79:;
	fb$result$1 = 0;
	label$80:;
	return fb$result$1;
}

static int32 REGGETNEXT( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$81:;
	fb$result$1 = -1;
	if( R$1 < 0 ) goto label$84;
	{
		R$1 = R$1 + 1;
		if( R$1 >= *(int32*)((uint8*)THIS_$1 + 60) ) goto label$86;
		{
			fb$result$1 = R$1;
		}
		label$86:;
		label$85:;
	}
	label$84:;
	label$83:;
	label$82:;
	return fb$result$1;
}

static struct $6IRVREG* REGGETVREG( struct $8REGCLASS* THIS_$1, int32 R$1, struct $6IRVREG** VAUXPARENT$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$87:;
	fb$result$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64);
	*VAUXPARENT$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96);
	label$88:;
	return fb$result$1;
}

static int32 REGGETREALREG( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$89:;
	fb$result$1 = R$1;
	label$90:;
	return fb$result$1;
}

static void REGDUMP( struct $8REGCLASS* THIS_$1 )
{
	label$91:;
	label$92:;
}

static void REGINITCLASS( struct $8REGCLASS* THIS_$1, struct $7FBARRAYI12REG_SIZEMASKE* SIZETB$1 )
{
	label$93:;
	static int32 I$1;
	REGCLEAR( THIS_$1 );
	{
		I$1 = 0;
		int32 TMP$108$2;
		TMP$108$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$95;
		label$98:;
		{
			*($12REG_SIZEMASK*)((uint8*)((uint8*)((uint8*)THIS_$1 + 128) + (I$1 << (2 & 31))) + 76) = *($12REG_SIZEMASK*)((I$1 << (2 & 31)) + *(int32*)SIZETB$1);
		}
		label$96:;
		I$1 = I$1 + 1;
		label$95:;
		if( I$1 <= TMP$108$2 ) goto label$98;
		label$97:;
	}
	*(tmp$82*)THIS_$1 = (tmp$82)&REGENSURE;
	*(tmp$82*)((uint8*)THIS_$1 + 4) = (tmp$82)&REGALLOCATE;
	*(tmp$83*)((uint8*)THIS_$1 + 8) = (tmp$83)&REGALLOCATEREG;
	*(tmp$84*)((uint8*)THIS_$1 + 12) = (tmp$84)&REGFREE;
	*(tmp$85*)((uint8*)THIS_$1 + 16) = (tmp$85)&REGISFREE;
	*(tmp$86*)((uint8*)THIS_$1 + 20) = (tmp$86)&REGSETOWNER;
	*(tmp$87*)((uint8*)THIS_$1 + 24) = (tmp$87)&REGGETMAXREGS;
	*(tmp$87*)((uint8*)THIS_$1 + 28) = (tmp$87)&REGGETFIRST;
	*(tmp$85*)((uint8*)THIS_$1 + 32) = (tmp$85)&REGGETNEXT;
	*(tmp$88*)((uint8*)THIS_$1 + 36) = (tmp$88)&REGGETVREG;
	*(tmp$85*)((uint8*)THIS_$1 + 40) = (tmp$85)&REGGETREALREG;
	*(tmp$89*)((uint8*)THIS_$1 + 44) = (tmp$89)&REGCLEAR;
	*(tmp$89*)((uint8*)THIS_$1 + 48) = (tmp$89)&REGDUMP;
	label$94:;
}

static int32 SREGFINDREG( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$99:;
	static int32 R$1;
	fb$result$1 = -1;
	if( *(int32*)((uint8*)THIS_$1 + 300) != *(int32*)((uint8*)THIS_$1 + 60) ) goto label$102;
	{
		goto label$100;
	}
	label$102:;
	label$101:;
	{
		R$1 = 0;
		int32 TMP$109$2;
		TMP$109$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$103;
		label$106:;
		{
			if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) == -1 ) goto label$108;
			{
				if( *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) != VREG$1 ) goto label$110;
				{
					fb$result$1 = R$1;
					goto label$100;
				}
				label$110:;
				label$109:;
			}
			label$108:;
			label$107:;
		}
		label$104:;
		R$1 = R$1 + 1;
		label$103:;
		if( R$1 <= TMP$109$2 ) goto label$106;
		label$105:;
	}
	label$100:;
	return fb$result$1;
}

static void SREGXCHG( struct $8REGCLASS* THIS_$1, int32 R1$1 )
{
	label$111:;
	static int32 I$1;
	static int32 R2$1;
	(*(tmp$45*)((uint8*)&IR$ + 268))( R1$1 );
	R2$1 = -1;
	{
		I$1 = 0;
		int32 TMP$110$2;
		TMP$110$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$113;
		label$116:;
		{
			if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$1 << (2 & 31))) != 0 ) goto label$118;
			{
				R2$1 = I$1;
				goto label$115;
			}
			label$118:;
			label$117:;
		}
		label$114:;
		I$1 = I$1 + 1;
		label$113:;
		if( I$1 <= TMP$110$2 ) goto label$116;
		label$115:;
	}
	{
		int32 TMP$111$2;
		TMP$111$2 = *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R1$1 << (2 & 31)));
		*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R1$1 << (2 & 31))) = *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R2$1 << (2 & 31)));
		*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R2$1 << (2 & 31))) = TMP$111$2;
	}
	label$112:;
}

static int32 SREGFINDFREEREG( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$119:;
	static int32 R$1;
	fb$result$1 = -1;
	if( *(int32*)((uint8*)THIS_$1 + 300) != 0 ) goto label$122;
	{
		goto label$120;
	}
	label$122:;
	label$121:;
	{
		R$1 = 0;
		int32 TMP$112$2;
		TMP$112$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$123;
		label$126:;
		{
			if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) != -1 ) goto label$128;
			{
				fb$result$1 = R$1;
				goto label$120;
			}
			label$128:;
			label$127:;
		}
		label$124:;
		R$1 = R$1 + 1;
		label$123:;
		if( R$1 <= TMP$112$2 ) goto label$126;
		label$125:;
	}
	label$120:;
	return fb$result$1;
}

static int32 SREGFINDTOSREG( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	static int32 R$1;
	{
		R$1 = 0;
		int32 TMP$114$2;
		TMP$114$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$141;
		label$144:;
		{
			if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) != 0 ) goto label$146;
			{
				fb$result$1 = R$1;
				goto label$140;
			}
			label$146:;
			label$145:;
		}
		label$142:;
		R$1 = R$1 + 1;
		label$141:;
		if( R$1 <= TMP$114$2 ) goto label$144;
		label$143:;
	}
	fb$result$1 = -1;
	label$140:;
	return fb$result$1;
}

static int32 SREGALLOCATE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint32 SIZE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$147:;
	int32 R$1;
	int32 vr$1 = SREGFINDFREEREG( THIS_$1 );
	R$1 = vr$1;
	if( R$1 != -1 ) goto label$150;
	{
		int32 vr$2 = SREGFINDTOSREG( THIS_$1 );
		R$1 = vr$2;
		(*(tmp$44*)((uint8*)&IR$ + 264))( *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64), *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) );
	}
	label$150:;
	label$149:;
	*(int32*)((uint8*)THIS_$1 + 300) = *(int32*)((uint8*)THIS_$1 + 300) + -1;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$115$2;
		TMP$115$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$151;
		label$154:;
		{
			if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$2 << (2 & 31))) == -1 ) goto label$156;
			{
				*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$2 << (2 & 31))) = *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$2 << (2 & 31))) + 1;
			}
			label$156:;
			label$155:;
		}
		label$152:;
		I$2 = I$2 + 1;
		label$151:;
		if( I$2 <= TMP$115$2 ) goto label$154;
		label$153:;
	}
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = VAUXPARENT$1;
	*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) = 0;
	fb$result$1 = R$1;
	label$148:;
	return fb$result$1;
}

static int32 SREGALLOCATEREG( struct $8REGCLASS* THIS_$1, int32 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	int32 vr$1 = SREGALLOCATE( THIS_$1, VREG$1, VAUXPARENT$1, 8u );
	fb$result$1 = vr$1;
	label$158:;
	return fb$result$1;
}

static int32 SREGENSURE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint32 SIZE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$159:;
	int32 R$1;
	int32 vr$1 = SREGFINDREG( THIS_$1, VREG$1 );
	R$1 = vr$1;
	if( R$1 != -1 ) goto label$162;
	{
		int32 vr$2 = SREGALLOCATE( THIS_$1, VREG$1, VAUXPARENT$1, 8u );
		R$1 = vr$2;
		(*(tmp$51*)((uint8*)&IR$ + 260))( R$1, VREG$1, VAUXPARENT$1 );
	}
	goto label$161;
	label$162:;
	{
		if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) == 0 ) goto label$164;
		{
			SREGXCHG( THIS_$1, R$1 );
		}
		label$164:;
		label$163:;
	}
	label$161:;
	fb$result$1 = R$1;
	label$160:;
	return fb$result$1;
}

static void SREGFREE( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	label$165:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	int32 REALREG$1;
	__builtin_memset( &REALREG$1, 0, 4 );
	if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) != -1 ) goto label$168;
	{
		goto label$166;
	}
	label$168:;
	label$167:;
	REALREG$1 = *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31)));
	*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) = -1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = (struct $6IRVREG*)0u;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = (struct $6IRVREG*)0u;
	{
		I$1 = 0;
		int32 TMP$116$2;
		TMP$116$2 = *(int32*)((uint8*)THIS_$1 + 60) + -1;
		goto label$169;
		label$172:;
		{
			if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$1 << (2 & 31))) == -1 ) goto label$174;
			{
				if( *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$1 << (2 & 31))) <= REALREG$1 ) goto label$176;
				{
					*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$1 << (2 & 31))) = *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (I$1 << (2 & 31))) + -1;
				}
				label$176:;
				label$175:;
			}
			label$174:;
			label$173:;
		}
		label$170:;
		I$1 = I$1 + 1;
		label$169:;
		if( I$1 <= TMP$116$2 ) goto label$172;
		label$171:;
	}
	*(int32*)((uint8*)THIS_$1 + 300) = *(int32*)((uint8*)THIS_$1 + 300) + 1;
	label$166:;
}

static int32 SREGISFREE( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$177:;
	fb$result$1 = -(*(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31))) == -1);
	label$178:;
	return fb$result$1;
}

static void SREGSETOWNER( struct $8REGCLASS* THIS_$1, int32 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	label$179:;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96) = VAUXPARENT$1;
	label$180:;
}

static int32 SREGGETREALREG( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$181:;
	fb$result$1 = *(int32*)((uint8*)((uint8*)THIS_$1 + 268) + (R$1 << (2 & 31)));
	label$182:;
	return fb$result$1;
}

static int32 SREGGETMAXREGS( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$183:;
	fb$result$1 = *(int32*)((uint8*)THIS_$1 + 60);
	label$184:;
	return fb$result$1;
}

static int32 SREGGETFIRST( struct $8REGCLASS* THIS_$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$185:;
	int32 vr$1 = SREGFINDTOSREG( THIS_$1 );
	fb$result$1 = vr$1;
	label$186:;
	return fb$result$1;
}

static int32 SREGGETNEXT( struct $8REGCLASS* THIS_$1, int32 R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$187:;
	if( (-(R$1 < 0) | -(R$1 >= *(int32*)((uint8*)THIS_$1 + 60))) == 0 ) goto label$190;
	{
		fb$result$1 = -1;
	}
	goto label$189;
	label$190:;
	{
		int32 vr$5 = SREGFINDTOSREG( THIS_$1 );
		fb$result$1 = vr$5;
	}
	label$189:;
	label$188:;
	return fb$result$1;
}

static struct $6IRVREG* SREGGETVREG( struct $8REGCLASS* THIS_$1, int32 R$1, struct $6IRVREG** VAUXPARENT$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$191:;
	fb$result$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 64);
	*VAUXPARENT$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (2 & 31))) + 96);
	label$192:;
	return fb$result$1;
}

static void SREGDUMP( struct $8REGCLASS* THIS_$1 )
{
	label$193:;
	label$194:;
}

static void SREGCLEAR( struct $8REGCLASS* REG$1 )
{
	label$195:;
	int32 R$1;
	*(int32*)((uint8*)REG$1 + 300) = *(int32*)((uint8*)REG$1 + 60);
	{
		R$1 = 0;
		int32 TMP$117$2;
		TMP$117$2 = *(int32*)((uint8*)REG$1 + 60) + -1;
		goto label$197;
		label$200:;
		{
			*(int32*)((uint8*)((uint8*)REG$1 + 268) + (R$1 << (2 & 31))) = -1;
			*(struct $6IRVREG**)((uint8*)((uint8*)REG$1 + (R$1 << (2 & 31))) + 64) = (struct $6IRVREG*)0u;
			*(struct $6IRVREG**)((uint8*)((uint8*)REG$1 + (R$1 << (2 & 31))) + 96) = (struct $6IRVREG*)0u;
		}
		label$198:;
		R$1 = R$1 + 1;
		label$197:;
		if( R$1 <= TMP$117$2 ) goto label$200;
		label$199:;
	}
	label$196:;
}

static void SREGINITCLASS( struct $8REGCLASS* THIS_$1, struct $7FBARRAYI12REG_SIZEMASKE* SIZETB$1 )
{
	label$201:;
	SREGCLEAR( THIS_$1 );
	*(tmp$82*)THIS_$1 = (tmp$82)&SREGENSURE;
	*(tmp$82*)((uint8*)THIS_$1 + 4) = (tmp$82)&SREGALLOCATE;
	*(tmp$83*)((uint8*)THIS_$1 + 8) = (tmp$83)&SREGALLOCATEREG;
	*(tmp$84*)((uint8*)THIS_$1 + 12) = (tmp$84)&SREGFREE;
	*(tmp$85*)((uint8*)THIS_$1 + 16) = (tmp$85)&SREGISFREE;
	*(tmp$86*)((uint8*)THIS_$1 + 20) = (tmp$86)&SREGSETOWNER;
	*(tmp$87*)((uint8*)THIS_$1 + 24) = (tmp$87)&SREGGETMAXREGS;
	*(tmp$87*)((uint8*)THIS_$1 + 28) = (tmp$87)&SREGGETFIRST;
	*(tmp$85*)((uint8*)THIS_$1 + 32) = (tmp$85)&SREGGETNEXT;
	*(tmp$88*)((uint8*)THIS_$1 + 36) = (tmp$88)&SREGGETVREG;
	*(tmp$85*)((uint8*)THIS_$1 + 40) = (tmp$85)&SREGGETREALREG;
	*(tmp$89*)((uint8*)THIS_$1 + 44) = (tmp$89)&SREGCLEAR;
	*(tmp$89*)((uint8*)THIS_$1 + 48) = (tmp$89)&SREGDUMP;
	label$202:;
}
