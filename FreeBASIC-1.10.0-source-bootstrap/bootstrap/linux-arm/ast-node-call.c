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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef void (*tmp$45)( int32 );
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezcall( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDTEMPVARCLEAR( struct $8FBSYMBOL* );
void ASTREPLACESYMBOLONTREE( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTVAR( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 SYMBCALCARGLEN( int32, struct $8FBSYMBOL*, int32 );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRDELETE( struct $7ASTNODE* );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
static void HCOPYSTRINGSBACK( struct $7ASTNODE* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
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

void ASTCALLINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&AST$ + 44), 32, 12, 6 );
	label$11:;
}

void ASTCALLEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&AST$ + 44) );
	label$13:;
}

struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* PTREXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* N$1;
	tmp$33 CALLBACK$1;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( PTREXPR$1 == (struct $7ASTNODE*)0u ) goto label$17;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PTREXPR$1 + 8);
	}
	label$17:;
	label$16:;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 2;
	struct $7ASTNODE* vr$7 = ASTNEWNODE( 9, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$7;
	fb$result$1 = N$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = PTREXPR$1;
	*(int32*)((uint8*)N$1 + 28) = 0;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$19;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 76);
		*(int32*)((uint8*)N$1 + 24) = -((*(int32*)((uint8*)SYM$1 + 12) & 32) != 0);
		CALLBACK$1 = *(tmp$33*)((uint8*)SYM$1 + 100);
		if( CALLBACK$1 == (tmp$33)0u ) goto label$21;
		{
			(CALLBACK$1)( SYM$1 );
		}
		label$21:;
		label$20:;
	}
	goto label$18;
	label$19:;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = (struct $8FBSYMBOL*)0u;
		*(int32*)((uint8*)N$1 + 24) = 0;
	}
	label$18:;
	*(struct $7ASTNODE**)((uint8*)N$1 + 36) = (struct $7ASTNODE*)0u;
	*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)N$1 + 40) = (struct $19AST_TMPSTRLIST_ITEM*)0u;
	int32 vr$22 = SYMBPROCRETURNSONSTACK( SYM$1 );
	if( vr$22 == 0 ) goto label$23;
	{
		struct $8FBSYMBOL* vr$24 = SYMBADDTEMPVAR( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 44) = vr$24;
		ASTDTORLISTADD( *(struct $8FBSYMBOL**)((uint8*)N$1 + 44) );
	}
	goto label$22;
	label$23:;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 44) = (struct $8FBSYMBOL*)0u;
	}
	label$22:;
	label$15:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCALLCTOR( struct $7ASTNODE* PROCEXPR$1, struct $7ASTNODE* INSTPTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$3 = ASTNEWNODE( 10, *(int32*)((uint8*)INSTPTR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)INSTPTR$1 + 8) );
	N$1 = vr$3;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = PROCEXPR$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = INSTPTR$1;
	fb$result$1 = N$1;
	label$25:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADCALL( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	static int32 RECLEVEL$1 = 0;
	static int32 TOTALSTACKBYTES$1 = 0;
	struct $7ASTNODE* ARG$1;
	struct $7ASTNODE* NEXTARG$1;
	struct $7ASTNODE* L$1;
	struct $8FBSYMBOL* PROC$1;
	int32 BYTESTOPOP$1;
	int32 BYTESTOALIGN$1;
	int32 ARGBYTES$1;
	int32 PREV_TOTALSTACKBYTES$1;
	PREV_TOTALSTACKBYTES$1 = TOTALSTACKBYTES$1;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* LREG$1;
	LREG$1 = (struct $6IRVREG*)0u;
	RECLEVEL$1 = RECLEVEL$1 + 1;
	PROC$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	if( (-(*(int32*)((uint8*)&ENV$ + 104) == 0) & -((*(int32*)((uint8*)&ENV$ + 284) & 64) != 0)) == 0 ) goto label$33;
	{
		ARGBYTES$1 = 0;
		ARG$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
		label$34:;
		if( ARG$1 == (struct $7ASTNODE*)0u ) goto label$35;
		{
			L$1 = *(struct $7ASTNODE**)((uint8*)ARG$1 + 64);
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)ARG$1 + 12) + 76) != 0 ) goto label$37;
			{
				int64 vr$15 = SYMBCALCARGLEN( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), *(int32*)((uint8*)ARG$1 + 24) );
				ARGBYTES$1 = (int32)((int64)ARGBYTES$1 + vr$15);
			}
			label$37:;
			label$36:;
			ARG$1 = *(struct $7ASTNODE**)((uint8*)ARG$1 + 68);
		}
		goto label$34;
		label$35:;
		int32 vr$19 = SYMBPROCRETURNSONSTACK( PROC$1 );
		if( vr$19 == 0 ) goto label$39;
		{
			ARGBYTES$1 = ARGBYTES$1 + *(int32*)((uint8*)&ENV$ + 296);
		}
		label$39:;
		label$38:;
		BYTESTOALIGN$1 = (-((TOTALSTACKBYTES$1 + ARGBYTES$1) & 15) + 16) & 15;
		if( BYTESTOALIGN$1 <= 0 ) goto label$41;
		{
			if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$43;
			{
				(*(tmp$45*)((uint8*)&IR$ + 132))( BYTESTOALIGN$1 );
			}
			label$43:;
			label$42:;
			TOTALSTACKBYTES$1 = TOTALSTACKBYTES$1 + BYTESTOALIGN$1;
		}
		label$41:;
		label$40:;
	}
	goto label$32;
	label$33:;
	{
		BYTESTOALIGN$1 = 0;
	}
	label$32:;
	BYTESTOPOP$1 = BYTESTOALIGN$1;
	ARG$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	label$44:;
	if( ARG$1 == (struct $7ASTNODE*)0u ) goto label$45;
	{
		NEXTARG$1 = *(struct $7ASTNODE**)((uint8*)ARG$1 + 68);
		L$1 = *(struct $7ASTNODE**)((uint8*)ARG$1 + 64);
		if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)ARG$1 + 12) + 76) == 0 ) goto label$47;
		{
			ARGBYTES$1 = 0;
		}
		goto label$46;
		label$47:;
		{
			int64 vr$35 = SYMBCALCARGLEN( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), *(int32*)((uint8*)ARG$1 + 24) );
			ARGBYTES$1 = (int32)vr$35;
			if( *(int32*)((uint8*)PROC$1 + 84) != 3 ) goto label$49;
			{
				BYTESTOPOP$1 = BYTESTOPOP$1 + ARGBYTES$1;
			}
			label$49:;
			label$48:;
		}
		label$46:;
		if( *(int32*)L$1 != 5 ) goto label$51;
		{
			ASTUPDATECONVFD2FS( L$1, *(int32*)((uint8*)ARG$1 + 4), 0 );
		}
		label$51:;
		label$50:;
		struct $6IRVREG* vr$41 = ASTLOAD( L$1 );
		V1$1 = vr$41;
		ASTDELNODE( L$1 );
		if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$53;
		{
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)ARG$1 + 12) + 76) == 0 ) goto label$55;
			{
				struct $6IRVREG* vr$47 = (*(tmp$68*)((uint8*)&IR$ + 224))( *(int32*)((uint8*)L$1 + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
				LREG$1 = vr$47;
				*($11FB_DATATYPE*)((uint8*)LREG$1 + 4) = *($11FB_DATATYPE*)((uint8*)L$1 + 4);
			}
			goto label$54;
			label$55:;
			{
				LREG$1 = (struct $6IRVREG*)0u;
			}
			label$54:;
			(*(tmp$47*)((uint8*)&IR$ + 80))( *(struct $8FBSYMBOL**)((uint8*)ARG$1 + 12), V1$1, *(int64*)((uint8*)ARG$1 + 32), RECLEVEL$1, LREG$1 );
		}
		label$53:;
		label$52:;
		TOTALSTACKBYTES$1 = TOTALSTACKBYTES$1 + ARGBYTES$1;
		ASTDELNODE( ARG$1 );
		ARG$1 = NEXTARG$1;
	}
	goto label$44;
	label$45:;
	int32 vr$53 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$53 == 0 ) goto label$57;
	{
		{
			$11FB_FUNCMODE TMP$83$3;
			TMP$83$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 84);
			if( TMP$83$3 == 3 ) goto label$60;
			label$61:;
			if( TMP$83$3 == 5 ) goto label$60;
			label$62:;
			if( TMP$83$3 != 6 ) goto label$59;
			label$60:;
			{
				if( (*(int32*)((uint8*)&ENV$ + 284) & 8) != 0 ) goto label$64;
				{
					BYTESTOPOP$1 = BYTESTOPOP$1 + *(int32*)((uint8*)&ENV$ + 296);
				}
				label$64:;
				label$63:;
			}
			label$59:;
			label$58:;
		}
		if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$66;
		{
			int32 vr$58 = SYMBHASCTOR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 44) );
			if( vr$58 != 0 ) goto label$68;
			{
				struct $7ASTNODE* vr$60 = ASTBUILDTEMPVARCLEAR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 44) );
				ASTLOAD( vr$60 );
			}
			label$68:;
			label$67:;
			struct $7ASTNODE* vr$62 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)N$1 + 44), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			L$1 = vr$62;
			struct $7ASTNODE* vr$63 = ASTNEWADDROF( L$1 );
			L$1 = vr$63;
			struct $6IRVREG* vr$64 = ASTLOAD( L$1 );
			V1$1 = vr$64;
			(*(tmp$47*)((uint8*)&IR$ + 80))( (struct $8FBSYMBOL*)0u, V1$1, 0ll, RECLEVEL$1, (struct $6IRVREG*)0u );
		}
		label$66:;
		label$65:;
		TOTALSTACKBYTES$1 = TOTALSTACKBYTES$1 + *(int32*)((uint8*)&ENV$ + 296);
	}
	label$57:;
	label$56:;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$70;
	{
		if( (*(int32*)((uint8*)N$1 + 4) & 511) != 0 ) goto label$72;
		{
			VR$1 = (struct $6IRVREG*)0u;
		}
		goto label$71;
		label$72:;
		{
			if( ((*(int32*)((uint8*)N$1 + 4) & 32505856) >> (20 & 31)) != 19 ) goto label$74;
			{
			}
			goto label$73;
			label$74:;
			{
			}
			label$73:;
			struct $6IRVREG* vr$73 = (*(tmp$68*)((uint8*)&IR$ + 224))( *(int32*)((uint8*)PROC$1 + 88), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 92) );
			VR$1 = vr$73;
			if( *(int32*)((uint8*)PROC$1 + 96) == 1 ) goto label$76;
			{
				*($12IR_REGFAMILY*)((uint8*)VR$1 + 16) = 0;
			}
			label$76:;
			label$75:;
		}
		label$71:;
	}
	label$70:;
	label$69:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	if( L$1 == (struct $7ASTNODE*)0u ) goto label$78;
	{
		struct $6IRVREG* vr$77 = ASTLOAD( L$1 );
		V1$1 = vr$77;
		ASTDELNODE( L$1 );
		if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$80;
		{
			(*(tmp$54*)((uint8*)&IR$ + 128))( PROC$1, V1$1, VR$1, BYTESTOPOP$1, RECLEVEL$1 );
		}
		label$80:;
		label$79:;
	}
	goto label$77;
	label$78:;
	{
		if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$82;
		{
			(*(tmp$53*)((uint8*)&IR$ + 124))( PROC$1, BYTESTOPOP$1, VR$1, RECLEVEL$1 );
		}
		label$82:;
		label$81:;
	}
	label$77:;
	TOTALSTACKBYTES$1 = PREV_TOTALSTACKBYTES$1;
	HCOPYSTRINGSBACK( N$1 );
	RECLEVEL$1 = RECLEVEL$1 + -1;
	fb$result$1 = VR$1;
	label$31:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADCALLCTOR( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$83:;
	struct $6IRVREG* VR$1;
	ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	struct $6IRVREG* vr$4 = ASTLOAD( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	VR$1 = vr$4;
	ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	fb$result$1 = VR$1;
	label$84:;
	return fb$result$1;
}

void ASTCLONECALL( struct $7ASTNODE* N$1, struct $7ASTNODE* C$1 )
{
	label$85:;
	{
		struct $19AST_TMPSTRLIST_ITEM* SN$2;
		struct $19AST_TMPSTRLIST_ITEM* SC$2;
		*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)C$1 + 40) = (struct $19AST_TMPSTRLIST_ITEM*)0u;
		SN$2 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)N$1 + 40);
		label$87:;
		if( SN$2 == (struct $19AST_TMPSTRLIST_ITEM*)0u ) goto label$88;
		{
			void* vr$3 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 44) );
			SC$2 = (struct $19AST_TMPSTRLIST_ITEM*)vr$3;
			*(struct $8FBSYMBOL**)SC$2 = *(struct $8FBSYMBOL**)SN$2;
			struct $7ASTNODE* vr$7 = ASTCLONETREE( *(struct $7ASTNODE**)((uint8*)SN$2 + 4) );
			*(struct $7ASTNODE**)((uint8*)SC$2 + 4) = vr$7;
			*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)SC$2 + 8) = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)C$1 + 40);
			*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)C$1 + 40) = SC$2;
			SN$2 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)SN$2 + 8);
		}
		goto label$87;
		label$88:;
	}
	N$1 = *(struct $7ASTNODE**)((uint8*)C$1 + 68);
	label$89:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$90;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 68) != (struct $7ASTNODE*)0u ) goto label$92;
		{
			goto label$90;
		}
		label$92:;
		label$91:;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	}
	goto label$89;
	label$90:;
	*(struct $7ASTNODE**)((uint8*)C$1 + 36) = N$1;
	label$86:;
}

void ASTDELCALL( struct $7ASTNODE* N$1 )
{
	label$93:;
	{
		struct $19AST_TMPSTRLIST_ITEM* S$2;
		struct $19AST_TMPSTRLIST_ITEM* P$2;
		S$2 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)N$1 + 40);
		label$95:;
		if( S$2 == (struct $19AST_TMPSTRLIST_ITEM*)0u ) goto label$96;
		{
			P$2 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)S$2 + 8);
			ASTDELTREE( *(struct $7ASTNODE**)((uint8*)S$2 + 4) );
			LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 44), (void*)S$2 );
			S$2 = P$2;
		}
		goto label$95;
		label$96:;
	}
	label$94:;
}

void ASTREPLACESYMBOLONCALL( struct $7ASTNODE* N$1, struct $8FBSYMBOL* OLD_SYM$1, struct $8FBSYMBOL* NEW_SYM$1 )
{
	label$97:;
	if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 44) != OLD_SYM$1 ) goto label$100;
	{
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 44) = NEW_SYM$1;
	}
	label$100:;
	label$99:;
	{
		struct $19AST_TMPSTRLIST_ITEM* S$2;
		S$2 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)N$1 + 40);
		label$101:;
		if( S$2 == (struct $19AST_TMPSTRLIST_ITEM*)0u ) goto label$102;
		{
			if( *(struct $8FBSYMBOL**)S$2 != OLD_SYM$1 ) goto label$104;
			{
				*(struct $8FBSYMBOL**)S$2 = NEW_SYM$1;
			}
			label$104:;
			label$103:;
			ASTREPLACESYMBOLONTREE( *(struct $7ASTNODE**)((uint8*)S$2 + 4), OLD_SYM$1, NEW_SYM$1 );
			S$2 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)S$2 + 8);
		}
		goto label$101;
		label$102:;
	}
	label$98:;
}

struct $7ASTNODE* ASTBUILDCALLRESULTVAR( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$105:;
	struct $7ASTNODE* vr$4 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 44), 0ll, *(int32*)((uint8*)EXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
	struct $7ASTNODE* vr$5 = ASTNEWLINK( EXPR$1, vr$4, 2 );
	fb$result$1 = vr$5;
	label$106:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDCALLRESULTUDT( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$107:;
	struct $8FBSYMBOL* TMP$1;
	int32 vr$2 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12) );
	if( vr$2 == 0 ) goto label$110;
	{
		struct $7ASTNODE* vr$3 = ASTBUILDCALLRESULTVAR( EXPR$1 );
		fb$result$1 = vr$3;
	}
	goto label$109;
	label$110:;
	{
		struct $8FBSYMBOL* vr$5 = SYMBADDTEMPVAR( 20, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
		TMP$1 = vr$5;
		struct $7ASTNODE* vr$6 = ASTBUILDVARFIELD( TMP$1, (struct $8FBSYMBOL*)0u, 0ll );
		struct $7ASTNODE* vr$7 = ASTNEWASSIGN( vr$6, EXPR$1, 96 );
		EXPR$1 = vr$7;
		struct $7ASTNODE* vr$8 = ASTBUILDVARFIELD( TMP$1, (struct $8FBSYMBOL*)0u, 0ll );
		struct $7ASTNODE* vr$9 = ASTNEWLINK( EXPR$1, vr$8, 2 );
		fb$result$1 = vr$9;
	}
	label$109:;
	label$108:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDBYREFRESULTDEREF( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$111:;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( *(int32*)EXPR$1 == 9 ) goto label$114;
	{
		fb$result$1 = EXPR$1;
		goto label$112;
	}
	label$114:;
	label$113:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12) + 8) & 2048) != 0 ) goto label$116;
	{
		fb$result$1 = EXPR$1;
		goto label$112;
	}
	label$116:;
	label$115:;
	DTYPE$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12) + 88);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12) + 92);
	if( (DTYPE$1 & 31) != 23 ) goto label$118;
	{
		ERRREPORT( 71, 0, (uint8*)0u );
		DTYPE$1 = (DTYPE$1 & -32) | 8;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	}
	label$118:;
	label$117:;
	ASTSETTYPE( EXPR$1, DTYPE$1, SUBTYPE$1 );
	struct $7ASTNODE* vr$12 = ASTNEWDEREF( EXPR$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	fb$result$1 = vr$12;
	label$112:;
	return fb$result$1;
}

int32 ASTISBYREFRESULTDEREF( struct $7ASTNODE* EXPR$1 )
{
	int32 TMP$84$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$119:;
	fb$result$1 = 0;
	if( (struct $7ASTNODE*)-(*(int32*)EXPR$1 == 20) == (struct $7ASTNODE*)0u ) goto label$121;
	TMP$84$1 = -(*(struct $7ASTNODE**)((uint8*)EXPR$1 + 64) != (struct $7ASTNODE*)0u);
	goto label$126;
	label$121:;
	TMP$84$1 = 0;
	label$126:;
	if( TMP$84$1 == 0 ) goto label$123;
	{
		if( *(int32*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 64) != 9 ) goto label$125;
		{
			fb$result$1 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)EXPR$1 + 64) + 12) + 8) & 2048) != 0);
		}
		label$125:;
		label$124:;
	}
	label$123:;
	label$122:;
	label$120:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVEBYREFRESULTDEREF( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$127:;
	fb$result$1 = *(struct $7ASTNODE**)((uint8*)EXPR$1 + 64);
	ASTDELNODE( EXPR$1 );
	label$128:;
	return fb$result$1;
}

struct $7ASTNODE* ASTIGNORECALLRESULT( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)N$1 + 4) & 511;
	if( DTYPE$1 != 0 ) goto label$142;
	{
		fb$result$1 = N$1;
		goto label$140;
	}
	label$142:;
	label$141:;
	if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$144;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 12) & 64) == 0 ) goto label$146;
		{
			struct $7ASTNODE* vr$7 = RTLERRORCHECK( N$1 );
			fb$result$1 = vr$7;
			goto label$140;
		}
		label$146:;
		label$145:;
	}
	label$144:;
	label$143:;
	{
		if( DTYPE$1 == 17 ) goto label$149;
		label$150:;
		if( DTYPE$1 != 7 ) goto label$148;
		label$149:;
		{
			if( DTYPE$1 != 7 ) goto label$152;
			{
				ASTSETTYPE( N$1, 39, (struct $8FBSYMBOL*)0u );
			}
			label$152:;
			label$151:;
			struct $7ASTNODE* vr$8 = RTLSTRDELETE( N$1 );
			fb$result$1 = vr$8;
			goto label$140;
		}
		label$148:;
		label$147:;
	}
	ASTSETTYPE( N$1, 0, (struct $8FBSYMBOL*)0u );
	fb$result$1 = N$1;
	label$140:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDFAKECALL( struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$153:;
	struct $7ASTNODE* C$1;
	struct $7ASTNODE* vr$1 = ASTNEWCALL( PROC$1, (struct $7ASTNODE*)0u );
	C$1 = vr$1;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$155:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$156;
	{
		struct $7ASTNODE* vr$6 = ASTNEWCONSTZ( *(int32*)((uint8*)PARAM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
		ASTNEWARG( C$1, vr$6, -2147483648u, -1 );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$155;
	label$156:;
	fb$result$1 = C$1;
	label$154:;
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

static void HCOPYSTRINGSBACK( struct $7ASTNODE* F$1 )
{
	label$26:;
	struct $7ASTNODE* T$1;
	struct $19AST_TMPSTRLIST_ITEM* N$1;
	struct $19AST_TMPSTRLIST_ITEM* P$1;
	N$1 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)F$1 + 40);
	label$28:;
	if( N$1 == (struct $19AST_TMPSTRLIST_ITEM*)0u ) goto label$29;
	{
		struct $7ASTNODE* vr$2 = ASTNEWVAR( *(struct $8FBSYMBOL**)N$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$4 = RTLSTRASSIGN( *(struct $7ASTNODE**)((uint8*)N$1 + 4), vr$2, 0 );
		T$1 = vr$4;
		ASTLOAD( T$1 );
		ASTDELNODE( T$1 );
		P$1 = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)N$1 + 8);
		LISTDELNODE( (struct $5TLIST*)((uint8*)&AST$ + 44), (void*)N$1 );
		N$1 = P$1;
	}
	goto label$28;
	label$29:;
	label$27:;
}
