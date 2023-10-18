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
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
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
struct $12EMITDATATYPE {
	int32 RNAMETB;
	uint8 MNAME[12];
};
__FB_STATIC_ASSERT( sizeof( struct $12EMITDATATYPE ) == 16 );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IlE ) == 36 );
struct $8FBARRAY1I8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I8FBSTRINGE ) == 36 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_CHR( int32, ... );
static void fb_ctor__emit_SSE( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
struct $8FBSYMBOL* SYMBALLOCINTCONST( int64, int32 );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void HPREPOPERAND( struct $6IRVREG*, FBSTRING*, $11FB_DATATYPE, int32, int32, int32 );
void HPREPOPERAND64( struct $6IRVREG*, FBSTRING*, FBSTRING* );
void HPUSH( uint8* );
void HPOP( uint8* );
int32 HFINDREGNOTINVREG( struct $6IRVREG*, int32 );
int32 HFINDFREEREG( int32 );
int32 HISREGFREE( int32, int32 );
uint8* HGETREGNAME( int32, int32 );
void OUTP( uint8* );
void HLABEL( uint8* );
void HBRANCH( uint8*, uint8* );
void HMOV( uint8*, uint8* );
static void HULONG2DBL( struct $6IRVREG* );
static void _EMITLOADB2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2L_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2I_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void HEMITSTOREFREG2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2L_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2I_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2F_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVF_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSWZREPF_SSE( struct $6IRVREG* );
static int32 HEMITCONVERTOPERANDS_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDF_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBF_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULF_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDIVF_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITATN2_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITPOW_SSE( struct $6IRVREG*, struct $6IRVREG* );
static void HCMPF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, uint8*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEF_SSE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITNEGF_SSE( struct $6IRVREG* );
static void _EMITHADDF_SSE( struct $6IRVREG* );
static void _EMITABSF_SSE( struct $6IRVREG* );
static void _EMITSGNF_SSE( struct $6IRVREG* );
static void _EMITSINCOS_FAST_SSE( struct $6IRVREG*, int32 );
static void _EMITSIN_SSE( struct $6IRVREG* );
static void _EMITASIN_SSE( struct $6IRVREG* );
static void _EMITCOS_SSE( struct $6IRVREG* );
static void _EMITACOS_SSE( struct $6IRVREG* );
static void _EMITTAN_SSE( struct $6IRVREG* );
static void _EMITATAN_SSE( struct $6IRVREG* );
static void _EMITSQRT_SSE( struct $6IRVREG* );
static void _EMITRSQRT_SSE( struct $6IRVREG* );
static void _EMITRCP_SSE( struct $6IRVREG* );
static void _EMITLOG_SSE( struct $6IRVREG* );
static void _EMITEXP_SSE( struct $6IRVREG* );
static void _EMITFLOOR_SSE( struct $6IRVREG* );
static void _EMITFIX_SSE( struct $6IRVREG* );
static void _EMITFRAC_SSE( struct $6IRVREG* );
static void _EMITPUSHF_SSE( struct $6IRVREG*, int32 );
static void _EMITPOPF_SSE( struct $6IRVREG*, int32 );
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
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
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
static struct $8FBARRAY1IPvE tmp$104$;
extern struct $12EMITDATATYPE DTYPETB$[26];
struct $8FBARRAY1I12EMITDATATYPEE {
	struct $12EMITDATATYPE* DATA;
	struct $12EMITDATATYPE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I12EMITDATATYPEE ) == 36 );
static struct $8FBARRAY1I12EMITDATATYPEE tmp$106$;
static tmp$44 _EMITLOADB2F_X86$;

int32 _INIT_OPFNTB_SSE( void** _OPFNTB_SSE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$738:;
	_EMITLOADB2F_X86$ = *(tmp$44*)((uint8*)_OPFNTB_SSE$1 + 32);
	*(void**)((uint8*)_OPFNTB_SSE$1 + 8) = (void*)&_EMITLOADF2I_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 20) = (void*)&_EMITLOADI2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 40) = (void*)&_EMITLOADF2L_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 28) = (void*)&_EMITLOADL2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 24) = (void*)&_EMITLOADF2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 32) = (void*)&_EMITLOADB2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 72) = (void*)&_EMITSTORF2I_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 84) = (void*)&_EMITSTORI2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 104) = (void*)&_EMITSTORF2L_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 92) = (void*)&_EMITSTORL2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 88) = (void*)&_EMITSTORF2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 136) = (void*)&_EMITMOVF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 148) = (void*)&_EMITADDF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 160) = (void*)&_EMITSUBF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 172) = (void*)&_EMITMULF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 184) = (void*)&_EMITDIVF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 260) = (void*)&_EMITATN2_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 264) = (void*)&_EMITPOW_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 280) = (void*)&_EMITCGTF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 292) = (void*)&_EMITCLTF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 304) = (void*)&_EMITCEQF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 316) = (void*)&_EMITCNEF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 328) = (void*)&_EMITCGEF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 340) = (void*)&_EMITCLEF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 352) = (void*)&_EMITNEGF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 368) = (void*)&_EMITHADDF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 376) = (void*)&_EMITABSF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 388) = (void*)&_EMITSGNF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 396) = (void*)&_EMITFIX_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 400) = (void*)&_EMITFRAC_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 412) = (void*)&_EMITSIN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 416) = (void*)&_EMITASIN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 420) = (void*)&_EMITCOS_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 424) = (void*)&_EMITACOS_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 428) = (void*)&_EMITTAN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 432) = (void*)&_EMITATAN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 436) = (void*)&_EMITSQRT_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 440) = (void*)&_EMITRSQRT_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 444) = (void*)&_EMITRCP_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 448) = (void*)&_EMITLOG_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 452) = (void*)&_EMITEXP_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 456) = (void*)&_EMITFLOOR_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 408) = (void*)&_EMITSWZREPF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 472) = (void*)&_EMITPUSHF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 484) = (void*)&_EMITPOPF_SSE;
	fb$result$1 = -1;
	label$739:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__emit_SSE( void )
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

static void HULONG2DBL( struct $6IRVREG* SVREG$1 )
{
	label$10:;
	static FBSTRING LABEL$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	uint8* vr$0 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LABEL$1, -1, (void*)vr$0, 0, 0 );
	HPREPOPERAND( SVREG$1, &AUX$1, 8, 0, -1, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"cmp ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 0", 4, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jns ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&LABEL$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	HPUSH( (uint8*)"0x403f" );
	HPUSH( (uint8*)"0x80000000" );
	HPUSH( (uint8*)"0" );
	OUTP( (uint8*)"fldt [esp]" );
	OUTP( (uint8*)"add esp, 12" );
	OUTP( (uint8*)"faddp" );
	HLABEL( (uint8*)*(uint8**)&LABEL$1 );
	label$11:;
}

static void _EMITLOADB2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$115$1;
	FBSTRING TMP$118$1;
	FBSTRING TMP$119$1;
	FBSTRING TMP$136$1;
	FBSTRING TMP$137$1;
	label$12:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	int32 DDSIZE$1;
	(_EMITLOADB2F_X86$)( DVREG$1, SVREG$1 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$14;
	TMP$115$1 = 24;
	goto label$740;
	label$14:;
	TMP$115$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$740:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$115$1 * 28)) + 4);
	__builtin_memset( &TMP$119$1, 0, 12 );
	FBSTRING* vr$8 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$118$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$118$1, (void*)"sub esp, ", 10, (void*)vr$8, -1 );
	fb_StrAssign( (void*)&TMP$119$1, -1, (void*)vr$11, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$119$1 );
	fb_StrDelete( (FBSTRING*)&TMP$119$1 );
	if( DDSIZE$1 <= 4 ) goto label$16;
	{
		FBSTRING TMP$123$2;
		FBSTRING TMP$124$2;
		FBSTRING TMP$125$2;
		FBSTRING TMP$126$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$126$2, 0, 12 );
		__builtin_memset( &TMP$123$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$123$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$124$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$124$2, (void*)vr$18, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$125$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$125$2, (void*)vr$21, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$126$2, -1, (void*)vr$24, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$126$2 );
		fb_StrDelete( (FBSTRING*)&TMP$126$2 );
	}
	goto label$15;
	label$16:;
	{
		FBSTRING TMP$130$2;
		FBSTRING TMP$131$2;
		FBSTRING TMP$132$2;
		FBSTRING TMP$133$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$133$2, 0, 12 );
		__builtin_memset( &TMP$130$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$130$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$131$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$131$2, (void*)vr$31, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$132$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$132$2, (void*)vr$34, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$133$2, -1, (void*)vr$37, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$133$2 );
		fb_StrDelete( (FBSTRING*)&TMP$133$2 );
	}
	label$15:;
	__builtin_memset( &TMP$137$1, 0, 12 );
	FBSTRING* vr$41 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$136$1, 0, 12 );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$136$1, (void*)"add esp, ", 10, (void*)vr$41, -1 );
	fb_StrAssign( (void*)&TMP$137$1, -1, (void*)vr$44, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$137$1 );
	fb_StrDelete( (FBSTRING*)&TMP$137$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$13:;
}

static void _EMITSTORF2L_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$138$1;
	FBSTRING TMP$155$1;
	FBSTRING TMP$156$1;
	label$17:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$19;
	TMP$138$1 = 24;
	goto label$741;
	label$19:;
	TMP$138$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$741:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$138$1 * 28)) + 8) != 0 ) goto label$21;
	{
		goto label$18;
		label$21:;
	}
	if( *(int32*)((uint8*)SVREG$1 + 16) != 1 ) goto label$23;
	{
		int32 TMP$139$2;
		FBSTRING TMP$140$2;
		FBSTRING TMP$141$2;
		FBSTRING TMP$152$2;
		FBSTRING TMP$153$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$24;
		TMP$139$2 = 24;
		goto label$742;
		label$24:;
		TMP$139$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$742:;
		SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$139$2 * 28)) + 4);
		__builtin_memset( &TMP$141$2, 0, 12 );
		FBSTRING* vr$12 = fb_IntToStr( SDSIZE$1 );
		__builtin_memset( &TMP$140$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$140$2, (void*)"sub esp, ", 10, (void*)vr$12, -1 );
		fb_StrAssign( (void*)&TMP$141$2, -1, (void*)vr$15, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$141$2 );
		fb_StrDelete( (FBSTRING*)&TMP$141$2 );
		HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
		if( SDSIZE$1 <= 4 ) goto label$26;
		{
			FBSTRING TMP$144$3;
			FBSTRING TMP$145$3;
			__builtin_memset( &TMP$145$3, 0, 12 );
			__builtin_memset( &TMP$144$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$144$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$145$3, -1, (void*)vr$21, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$145$3 );
			fb_StrDelete( (FBSTRING*)&TMP$145$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$25;
		label$26:;
		{
			FBSTRING TMP$149$3;
			FBSTRING TMP$150$3;
			__builtin_memset( &TMP$150$3, 0, 12 );
			__builtin_memset( &TMP$149$3, 0, 12 );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$149$3, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$150$3, -1, (void*)vr$27, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$150$3 );
			fb_StrDelete( (FBSTRING*)&TMP$150$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$25:;
		__builtin_memset( &TMP$153$2, 0, 12 );
		FBSTRING* vr$31 = fb_IntToStr( SDSIZE$1 );
		__builtin_memset( &TMP$152$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$152$2, (void*)"add esp, ", 10, (void*)vr$31, -1 );
		fb_StrAssign( (void*)&TMP$153$2, -1, (void*)vr$34, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$153$2 );
		fb_StrDelete( (FBSTRING*)&TMP$153$2 );
	}
	label$23:;
	label$22:;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$156$1, 0, 12 );
	__builtin_memset( &TMP$155$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$155$1, (void*)"fistp ", 7, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$156$1, -1, (void*)vr$40, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$156$1 );
	fb_StrDelete( (FBSTRING*)&TMP$156$1 );
	label$18:;
}

static void _EMITSTORF2I_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$157$1;
	int32 TMP$158$1;
	int32 TMP$159$1;
	int32 TMP$170$1;
	label$27:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static FBSTRING OSTR$1;
	static FBSTRING AUX$1;
	static FBSTRING AUX8$1;
	static FBSTRING AUX16$1;
	static int32 ISFREE$1;
	static int32 REG$1;
	static int32 WASREG$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$29;
	TMP$157$1 = 24;
	goto label$743;
	label$29:;
	TMP$157$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$743:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$157$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$30;
	TMP$158$1 = 24;
	goto label$744;
	label$30:;
	TMP$158$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$744:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$158$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$31;
	TMP$159$1 = 24;
	goto label$745;
	label$31:;
	TMP$159$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$745:;
	if( (-(DDSIZE$1 == 4) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$159$1 * 28)) + 8) == 0)) == 0 ) goto label$33;
	{
		OUTP( (uint8*)"sub esp, 8" );
		if( *(int32*)SVREG$1 == 4 ) goto label$35;
		{
			FBSTRING TMP$162$3;
			FBSTRING TMP$163$3;
			__builtin_memset( &TMP$163$3, 0, 12 );
			__builtin_memset( &TMP$162$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$162$3, (void*)"fld ", 5, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$163$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$163$3 );
			fb_StrDelete( (FBSTRING*)&TMP$163$3 );
		}
		goto label$34;
		label$35:;
		if( *(int32*)((uint8*)SVREG$1 + 16) != 1 ) goto label$36;
		{
			if( SDSIZE$1 <= 4 ) goto label$38;
			{
				FBSTRING TMP$164$4;
				FBSTRING TMP$165$4;
				__builtin_memset( &TMP$165$4, 0, 12 );
				__builtin_memset( &TMP$164$4, 0, 12 );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$164$4, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$165$4, -1, (void*)vr$29, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$165$4 );
				fb_StrDelete( (FBSTRING*)&TMP$165$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$37;
			label$38:;
			{
				FBSTRING TMP$166$4;
				FBSTRING TMP$167$4;
				__builtin_memset( &TMP$167$4, 0, 12 );
				__builtin_memset( &TMP$166$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$166$4, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$167$4, -1, (void*)vr$35, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$167$4 );
				fb_StrDelete( (FBSTRING*)&TMP$167$4 );
				OUTP( (uint8*)"fld dword ptr [esp]" );
			}
			label$37:;
		}
		label$36:;
		label$34:;
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		OUTP( (uint8*)"add esp, 4" );
		goto label$28;
	}
	label$33:;
	label$32:;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$39;
	TMP$170$1 = 24;
	goto label$746;
	label$39:;
	TMP$170$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$746:;
	if( (-(DDSIZE$1 == 2) & *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$170$1 * 28)) + 8)) == 0 ) goto label$41;
	{
		FBSTRING TMP$177$2;
		FBSTRING TMP$178$2;
		OUTP( (uint8*)"sub esp, 8" );
		if( *(int32*)SVREG$1 == 4 ) goto label$43;
		{
			FBSTRING TMP$171$3;
			FBSTRING TMP$172$3;
			__builtin_memset( &TMP$172$3, 0, 12 );
			__builtin_memset( &TMP$171$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$171$3, (void*)"fld ", 5, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$172$3, -1, (void*)vr$49, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$172$3 );
			fb_StrDelete( (FBSTRING*)&TMP$172$3 );
		}
		goto label$42;
		label$43:;
		if( *(int32*)((uint8*)SVREG$1 + 16) != 1 ) goto label$44;
		{
			if( SDSIZE$1 <= 4 ) goto label$46;
			{
				FBSTRING TMP$173$4;
				FBSTRING TMP$174$4;
				__builtin_memset( &TMP$174$4, 0, 12 );
				__builtin_memset( &TMP$173$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$173$4, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$174$4, -1, (void*)vr$56, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$174$4 );
				fb_StrDelete( (FBSTRING*)&TMP$174$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$45;
			label$46:;
			{
				FBSTRING TMP$175$4;
				FBSTRING TMP$176$4;
				__builtin_memset( &TMP$176$4, 0, 12 );
				__builtin_memset( &TMP$175$4, 0, 12 );
				FBSTRING* vr$62 = fb_StrConcat( &TMP$175$4, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$176$4, -1, (void*)vr$62, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$176$4 );
				fb_StrDelete( (FBSTRING*)&TMP$176$4 );
				OUTP( (uint8*)"fld dword ptr [esp]" );
			}
			label$45:;
		}
		label$44:;
		label$42:;
		__builtin_memset( &TMP$178$2, 0, 12 );
		__builtin_memset( &TMP$177$2, 0, 12 );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$177$2, (void*)"fistp ", 7, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$178$2, -1, (void*)vr$68, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$178$2 );
		fb_StrDelete( (FBSTRING*)&TMP$178$2 );
		OUTP( (uint8*)"add esp, 8" );
		goto label$28;
	}
	label$41:;
	label$40:;
	if( (-(*(int32*)DVREG$1 == 4) & -(DDSIZE$1 == 4)) == 0 ) goto label$48;
	{
		ISFREE$1 = -1;
		fb_StrAssign( (void*)&AUX$1, -1, (void*)&DST$1, -1, 0 );
		WASREG$1 = -1;
	}
	goto label$47;
	label$48:;
	{
		WASREG$1 = 0;
		int32 vr$75 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$1 = vr$75;
		uint8* vr$76 = HGETREGNAME( 8, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$76, 0, 0 );
		int32 vr$77 = HISREGFREE( 0, REG$1 );
		ISFREE$1 = vr$77;
		if( ISFREE$1 != 0 ) goto label$50;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$50:;
		label$49:;
	}
	label$47:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$52;
	{
		FBSTRING TMP$183$2;
		FBSTRING TMP$184$2;
		FBSTRING TMP$185$2;
		FBSTRING TMP$186$2;
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		__builtin_memset( &TMP$186$2, 0, 12 );
		__builtin_memset( &TMP$183$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$183$2, (void*)"mov ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$184$2, 0, 12 );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$184$2, (void*)vr$82, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$185$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$185$2, (void*)vr$85, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$186$2, -1, (void*)vr$88, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$186$2 );
		fb_StrDelete( (FBSTRING*)&TMP$186$2 );
		OUTP( (uint8*)"add esp, 4" );
	}
	goto label$51;
	label$52:;
	{
		if( SDSIZE$1 <= 4 ) goto label$54;
		{
			FBSTRING TMP$188$3;
			FBSTRING TMP$189$3;
			FBSTRING TMP$190$3;
			FBSTRING TMP$191$3;
			__builtin_memset( &TMP$191$3, 0, 12 );
			__builtin_memset( &TMP$188$3, 0, 12 );
			FBSTRING* vr$94 = fb_StrConcat( &TMP$188$3, (void*)"cvtsd2si ", 10, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$189$3, 0, 12 );
			FBSTRING* vr$97 = fb_StrConcat( &TMP$189$3, (void*)vr$94, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$190$3, 0, 12 );
			FBSTRING* vr$100 = fb_StrConcat( &TMP$190$3, (void*)vr$97, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$191$3, -1, (void*)vr$100, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$191$3 );
			fb_StrDelete( (FBSTRING*)&TMP$191$3 );
		}
		goto label$53;
		label$54:;
		{
			FBSTRING TMP$193$3;
			FBSTRING TMP$194$3;
			FBSTRING TMP$195$3;
			FBSTRING TMP$196$3;
			__builtin_memset( &TMP$196$3, 0, 12 );
			__builtin_memset( &TMP$193$3, 0, 12 );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$193$3, (void*)"cvtss2si ", 10, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$194$3, 0, 12 );
			FBSTRING* vr$109 = fb_StrConcat( &TMP$194$3, (void*)vr$106, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$195$3, 0, 12 );
			FBSTRING* vr$112 = fb_StrConcat( &TMP$195$3, (void*)vr$109, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$196$3, -1, (void*)vr$112, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$196$3 );
			fb_StrDelete( (FBSTRING*)&TMP$196$3 );
		}
		label$53:;
	}
	label$51:;
	if( WASREG$1 != 0 ) goto label$56;
	{
		if( DDSIZE$1 != 1 ) goto label$58;
		{
			FBSTRING TMP$197$3;
			FBSTRING TMP$198$3;
			FBSTRING TMP$199$3;
			FBSTRING TMP$200$3;
			uint8* vr$115 = HGETREGNAME( 2, REG$1 );
			fb_StrAssign( (void*)&AUX8$1, -1, (void*)vr$115, 0, 0 );
			__builtin_memset( &TMP$200$3, 0, 12 );
			__builtin_memset( &TMP$197$3, 0, 12 );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$197$3, (void*)"mov ", 5, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$198$3, 0, 12 );
			FBSTRING* vr$122 = fb_StrConcat( &TMP$198$3, (void*)vr$119, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$199$3, 0, 12 );
			FBSTRING* vr$125 = fb_StrConcat( &TMP$199$3, (void*)vr$122, -1, (void*)&AUX8$1, -1 );
			fb_StrAssign( (void*)&TMP$200$3, -1, (void*)vr$125, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$200$3 );
			fb_StrDelete( (FBSTRING*)&TMP$200$3 );
		}
		goto label$57;
		label$58:;
		if( DDSIZE$1 != 2 ) goto label$59;
		{
			FBSTRING TMP$201$3;
			FBSTRING TMP$202$3;
			FBSTRING TMP$203$3;
			FBSTRING TMP$204$3;
			uint8* vr$128 = HGETREGNAME( 5, REG$1 );
			fb_StrAssign( (void*)&AUX16$1, -1, (void*)vr$128, 0, 0 );
			__builtin_memset( &TMP$204$3, 0, 12 );
			__builtin_memset( &TMP$201$3, 0, 12 );
			FBSTRING* vr$132 = fb_StrConcat( &TMP$201$3, (void*)"mov ", 5, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$202$3, 0, 12 );
			FBSTRING* vr$135 = fb_StrConcat( &TMP$202$3, (void*)vr$132, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$203$3, 0, 12 );
			FBSTRING* vr$138 = fb_StrConcat( &TMP$203$3, (void*)vr$135, -1, (void*)&AUX16$1, -1 );
			fb_StrAssign( (void*)&TMP$204$3, -1, (void*)vr$138, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$204$3 );
			fb_StrDelete( (FBSTRING*)&TMP$204$3 );
		}
		goto label$57;
		label$59:;
		{
			FBSTRING TMP$205$3;
			FBSTRING TMP$206$3;
			FBSTRING TMP$207$3;
			FBSTRING TMP$208$3;
			__builtin_memset( &TMP$208$3, 0, 12 );
			__builtin_memset( &TMP$205$3, 0, 12 );
			FBSTRING* vr$144 = fb_StrConcat( &TMP$205$3, (void*)"mov ", 5, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$206$3, 0, 12 );
			FBSTRING* vr$147 = fb_StrConcat( &TMP$206$3, (void*)vr$144, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$207$3, 0, 12 );
			FBSTRING* vr$150 = fb_StrConcat( &TMP$207$3, (void*)vr$147, -1, (void*)&AUX$1, -1 );
			fb_StrAssign( (void*)&TMP$208$3, -1, (void*)vr$150, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$208$3 );
			fb_StrDelete( (FBSTRING*)&TMP$208$3 );
		}
		label$57:;
		if( ISFREE$1 != 0 ) goto label$61;
		{
			HPOP( (uint8*)*(uint8**)&AUX$1 );
		}
		label$61:;
		label$60:;
	}
	label$56:;
	label$55:;
	label$28:;
}

static void _EMITSTORL2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$62:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (-(*(int32*)SVREG$1 == 4) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$65;
	{
		int32 TMP$209$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$66;
		TMP$209$2 = 24;
		goto label$747;
		label$66:;
		TMP$209$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$747:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$209$2 * 28)) + 8) == 0 ) goto label$68;
		{
			FBSTRING TMP$212$3;
			FBSTRING TMP$213$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$212$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$212$3, (void*)"fild ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$213$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$213$3, (void*)vr$15, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$18, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$67;
		label$68:;
		{
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			OUTP( (uint8*)"fild qword ptr [esp]" );
			OUTP( (uint8*)"add esp, 8" );
			HULONG2DBL( SVREG$1 );
		}
		label$67:;
	}
	goto label$64;
	label$65:;
	{
		int32 TMP$215$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$69;
		TMP$215$2 = 24;
		goto label$748;
		label$69:;
		TMP$215$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$748:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$215$2 * 28)) + 8) == 0 ) goto label$71;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$70;
		label$71:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$70:;
	}
	label$64:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fstp ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$63:;
}

static void _EMITSTORI2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$217$1;
	int32 TMP$218$1;
	int32 TMP$219$1;
	label$72:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static int32 DDSIZE$1;
	static int32 SDSIZE$1;
	static int32 REG$1;
	static int32 ISFREE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$74;
	TMP$217$1 = 24;
	goto label$749;
	label$74:;
	TMP$217$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$749:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$217$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$75;
	TMP$218$1 = 24;
	goto label$750;
	label$75:;
	TMP$218$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$750:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$218$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$76;
	TMP$219$1 = 24;
	goto label$751;
	label$76:;
	TMP$219$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$751:;
	if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$219$1 * 28)) + 8) == 0) & -(SDSIZE$1 == 4)) == 0 ) goto label$78;
	{
		FBSTRING TMP$220$2;
		FBSTRING TMP$221$2;
		HPUSH( (uint8*)"0" );
		HPUSH( (uint8*)*(uint8**)&SRC$1 );
		OUTP( (uint8*)"fild qword ptr [esp]" );
		OUTP( (uint8*)"add esp, 8" );
		__builtin_memset( &TMP$221$2, 0, 12 );
		__builtin_memset( &TMP$220$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$220$2, (void*)"fstp ", 6, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$221$2, -1, (void*)vr$21, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$221$2 );
		fb_StrDelete( (FBSTRING*)&TMP$221$2 );
		goto label$73;
	}
	label$78:;
	label$77:;
	if( (-(*(int32*)SVREG$1 != 0) & -(SDSIZE$1 == 4)) == 0 ) goto label$80;
	{
		fb_StrAssign( (void*)&AUX$1, -1, (void*)&SRC$1, -1, 0 );
		ISFREE$1 = -1;
	}
	goto label$79;
	label$80:;
	{
		int32 vr$28 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$1 = vr$28;
		uint8* vr$29 = HGETREGNAME( 8, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$29, 0, 0 );
		int32 vr$30 = HISREGFREE( 0, REG$1 );
		ISFREE$1 = vr$30;
		if( ISFREE$1 != 0 ) goto label$82;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$82:;
		label$81:;
		if( *(int32*)SVREG$1 != 0 ) goto label$84;
		{
			FBSTRING TMP$222$3;
			FBSTRING TMP$223$3;
			FBSTRING TMP$224$3;
			FBSTRING TMP$225$3;
			__builtin_memset( &TMP$225$3, 0, 12 );
			__builtin_memset( &TMP$222$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$222$3, (void*)"mov ", 5, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$223$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$223$3, (void*)vr$35, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$224$3, 0, 12 );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$224$3, (void*)vr$38, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$225$3, -1, (void*)vr$41, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$225$3 );
			fb_StrDelete( (FBSTRING*)&TMP$225$3 );
		}
		goto label$83;
		label$84:;
		{
			int32 TMP$226$3;
			FBSTRING TMP$229$3;
			FBSTRING TMP$230$3;
			FBSTRING TMP$231$3;
			FBSTRING TMP$232$3;
			if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$85;
			TMP$226$3 = 24;
			goto label$752;
			label$85:;
			TMP$226$3 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
			label$752:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$226$3 * 28)) + 8) == 0 ) goto label$87;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
			}
			goto label$86;
			label$87:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
			}
			label$86:;
			__builtin_memset( &TMP$232$3, 0, 12 );
			__builtin_memset( &TMP$229$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$229$3, (void*)&OSTR$1, -1, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$230$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$230$3, (void*)vr$52, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$231$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$231$3, (void*)vr$55, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$232$3, -1, (void*)vr$58, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$232$3 );
			fb_StrDelete( (FBSTRING*)&TMP$232$3 );
		}
		label$83:;
	}
	label$79:;
	if( DDSIZE$1 <= 4 ) goto label$89;
	{
		FBSTRING TMP$235$2;
		FBSTRING TMP$236$2;
		FBSTRING TMP$238$2;
		FBSTRING TMP$239$2;
		FBSTRING TMP$240$2;
		FBSTRING TMP$241$2;
		__builtin_memset( &TMP$236$2, 0, 12 );
		__builtin_memset( &TMP$235$2, 0, 12 );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$235$2, (void*)"cvtsi2sd xmm7, ", 16, (void*)&AUX$1, -1 );
		fb_StrAssign( (void*)&TMP$236$2, -1, (void*)vr$64, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$236$2 );
		fb_StrDelete( (FBSTRING*)&TMP$236$2 );
		__builtin_memset( &TMP$241$2, 0, 12 );
		__builtin_memset( &TMP$238$2, 0, 12 );
		FBSTRING* vr$70 = fb_StrConcat( &TMP$238$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$239$2, 0, 12 );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$239$2, (void*)vr$70, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$240$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$240$2, (void*)vr$73, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$241$2, -1, (void*)vr$76, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$241$2 );
		fb_StrDelete( (FBSTRING*)&TMP$241$2 );
	}
	goto label$88;
	label$89:;
	{
		FBSTRING TMP$244$2;
		FBSTRING TMP$245$2;
		FBSTRING TMP$246$2;
		FBSTRING TMP$247$2;
		FBSTRING TMP$248$2;
		FBSTRING TMP$249$2;
		__builtin_memset( &TMP$245$2, 0, 12 );
		__builtin_memset( &TMP$244$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$244$2, (void*)"cvtsi2ss xmm7, ", 16, (void*)&AUX$1, -1 );
		fb_StrAssign( (void*)&TMP$245$2, -1, (void*)vr$82, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$245$2 );
		fb_StrDelete( (FBSTRING*)&TMP$245$2 );
		__builtin_memset( &TMP$249$2, 0, 12 );
		__builtin_memset( &TMP$246$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$246$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$247$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$247$2, (void*)vr$88, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$248$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$248$2, (void*)vr$91, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$249$2, -1, (void*)vr$94, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$249$2 );
		fb_StrDelete( (FBSTRING*)&TMP$249$2 );
	}
	label$88:;
	if( ISFREE$1 != 0 ) goto label$91;
	{
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	label$91:;
	label$90:;
	label$73:;
}

static void HEMITSTOREFREG2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$250$1;
	label$92:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, 0 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$94;
	TMP$250$1 = 24;
	goto label$753;
	label$94:;
	TMP$250$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$753:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$250$1 * 28)) + 4);
	if( (-(*(int32*)((uint8*)SVREG$1 + 20) == 2) & -(DDSIZE$1 > 4)) == 0 ) goto label$96;
	{
		FBSTRING TMP$252$2;
		FBSTRING TMP$253$2;
		FBSTRING TMP$254$2;
		FBSTRING TMP$255$2;
		__builtin_memset( &TMP$255$2, 0, 12 );
		__builtin_memset( &TMP$252$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$252$2, (void*)"movupd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$253$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$253$2, (void*)vr$12, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$254$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$254$2, (void*)vr$15, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$255$2, -1, (void*)vr$18, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$255$2 );
		fb_StrDelete( (FBSTRING*)&TMP$255$2 );
		goto label$93;
	}
	label$96:;
	label$95:;
	if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$98;
	{
		FBSTRING TMP$257$2;
		FBSTRING TMP$258$2;
		FBSTRING TMP$259$2;
		FBSTRING TMP$260$2;
		__builtin_memset( &TMP$260$2, 0, 12 );
		__builtin_memset( &TMP$257$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$257$2, (void*)"movlps ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$258$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$258$2, (void*)vr$25, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$259$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$259$2, (void*)vr$28, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$260$2, -1, (void*)vr$31, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$260$2 );
		fb_StrDelete( (FBSTRING*)&TMP$260$2 );
	}
	goto label$97;
	label$98:;
	if( *(int32*)((uint8*)SVREG$1 + 20) != 3 ) goto label$99;
	{
		FBSTRING TMP$263$2;
		FBSTRING TMP$264$2;
		FBSTRING TMP$265$2;
		FBSTRING TMP$266$2;
		FBSTRING TMP$267$2;
		FBSTRING TMP$268$2;
		FBSTRING TMP$269$2;
		FBSTRING TMP$270$2;
		FBSTRING TMP$271$2;
		FBSTRING TMP$272$2;
		__builtin_memset( &TMP$264$2, 0, 12 );
		__builtin_memset( &TMP$263$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$263$2, (void*)"movhlps xmm7, ", 15, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$264$2, -1, (void*)vr$38, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$264$2 );
		fb_StrDelete( (FBSTRING*)&TMP$264$2 );
		__builtin_memset( &TMP$268$2, 0, 12 );
		__builtin_memset( &TMP$265$2, 0, 12 );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$265$2, (void*)"movlps ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$266$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$266$2, (void*)vr$44, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$267$2, 0, 12 );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$267$2, (void*)vr$47, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$268$2, -1, (void*)vr$50, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$268$2 );
		fb_StrDelete( (FBSTRING*)&TMP$268$2 );
		HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 8, 0, -1 );
		__builtin_memset( &TMP$272$2, 0, 12 );
		__builtin_memset( &TMP$269$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$269$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$270$2, 0, 12 );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$270$2, (void*)vr$56, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$271$2, 0, 12 );
		FBSTRING* vr$62 = fb_StrConcat( &TMP$271$2, (void*)vr$59, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$272$2, -1, (void*)vr$62, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$272$2 );
		fb_StrDelete( (FBSTRING*)&TMP$272$2 );
	}
	goto label$97;
	label$99:;
	if( *(int32*)((uint8*)SVREG$1 + 20) != 4 ) goto label$100;
	{
		FBSTRING TMP$274$2;
		FBSTRING TMP$275$2;
		FBSTRING TMP$276$2;
		FBSTRING TMP$277$2;
		__builtin_memset( &TMP$277$2, 0, 12 );
		__builtin_memset( &TMP$274$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$274$2, (void*)"movups ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$275$2, 0, 12 );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$275$2, (void*)vr$69, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$276$2, 0, 12 );
		FBSTRING* vr$75 = fb_StrConcat( &TMP$276$2, (void*)vr$72, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$277$2, -1, (void*)vr$75, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$277$2 );
		fb_StrDelete( (FBSTRING*)&TMP$277$2 );
	}
	label$100:;
	label$97:;
	label$93:;
}

static void _EMITSTORF2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$278$1;
	int32 TMP$279$1;
	label$101:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static int32 SDSIZE$1;
	static int32 SRC_VEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, 0 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$103;
	TMP$278$1 = 24;
	goto label$754;
	label$103:;
	TMP$278$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$754:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$278$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$104;
	TMP$279$1 = 24;
	goto label$755;
	label$104:;
	TMP$279$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$755:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$279$1 * 28)) + 4);
	SRC_VEC$1 = -(*(int32*)((uint8*)SVREG$1 + 20) > 0);
	if( *(int32*)SVREG$1 != 4 ) goto label$106;
	{
		if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$108;
		{
			FBSTRING TMP$280$3;
			FBSTRING TMP$281$3;
			HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
			__builtin_memset( &TMP$281$3, 0, 12 );
			__builtin_memset( &TMP$280$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$280$3, (void*)"fstp ", 6, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$281$3, -1, (void*)vr$17, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$281$3 );
			fb_StrDelete( (FBSTRING*)&TMP$281$3 );
			goto label$102;
		}
		label$108:;
		label$107:;
		if( SRC_VEC$1 == 0 ) goto label$110;
		{
			HEMITSTOREFREG2F_SSE( DVREG$1, SVREG$1 );
			goto label$102;
		}
		label$110:;
		label$109:;
		if( DDSIZE$1 <= 4 ) goto label$112;
		{
			FBSTRING TMP$287$3;
			FBSTRING TMP$288$3;
			FBSTRING TMP$289$3;
			FBSTRING TMP$290$3;
			if( SDSIZE$1 > 4 ) goto label$114;
			{
				FBSTRING TMP$283$4;
				FBSTRING TMP$284$4;
				FBSTRING TMP$285$4;
				FBSTRING TMP$286$4;
				__builtin_memset( &TMP$286$4, 0, 12 );
				__builtin_memset( &TMP$283$4, 0, 12 );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$283$4, (void*)"cvtss2sd ", 10, (void*)&SRC$1, -1 );
				__builtin_memset( &TMP$284$4, 0, 12 );
				FBSTRING* vr$26 = fb_StrConcat( &TMP$284$4, (void*)vr$23, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$285$4, 0, 12 );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$285$4, (void*)vr$26, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$286$4, -1, (void*)vr$29, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$286$4 );
				fb_StrDelete( (FBSTRING*)&TMP$286$4 );
			}
			label$114:;
			label$113:;
			__builtin_memset( &TMP$290$3, 0, 12 );
			__builtin_memset( &TMP$287$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$287$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$288$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$288$3, (void*)vr$35, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$289$3, 0, 12 );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$289$3, (void*)vr$38, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$290$3, -1, (void*)vr$41, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$290$3 );
			fb_StrDelete( (FBSTRING*)&TMP$290$3 );
		}
		goto label$111;
		label$112:;
		{
			FBSTRING TMP$296$3;
			FBSTRING TMP$297$3;
			FBSTRING TMP$298$3;
			FBSTRING TMP$299$3;
			if( SDSIZE$1 <= 4 ) goto label$116;
			{
				FBSTRING TMP$292$4;
				FBSTRING TMP$293$4;
				FBSTRING TMP$294$4;
				FBSTRING TMP$295$4;
				__builtin_memset( &TMP$295$4, 0, 12 );
				__builtin_memset( &TMP$292$4, 0, 12 );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$292$4, (void*)"cvtsd2ss ", 10, (void*)&SRC$1, -1 );
				__builtin_memset( &TMP$293$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$293$4, (void*)vr$47, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$294$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$294$4, (void*)vr$50, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$295$4, -1, (void*)vr$53, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$295$4 );
				fb_StrDelete( (FBSTRING*)&TMP$295$4 );
			}
			label$116:;
			label$115:;
			__builtin_memset( &TMP$299$3, 0, 12 );
			__builtin_memset( &TMP$296$3, 0, 12 );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$296$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$297$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$297$3, (void*)vr$59, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$298$3, 0, 12 );
			FBSTRING* vr$65 = fb_StrConcat( &TMP$298$3, (void*)vr$62, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$299$3, -1, (void*)vr$65, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$299$3 );
			fb_StrDelete( (FBSTRING*)&TMP$299$3 );
		}
		label$111:;
	}
	goto label$105;
	label$106:;
	{
		if( SDSIZE$1 != DDSIZE$1 ) goto label$118;
		{
			if( SRC_VEC$1 == 0 ) goto label$120;
			{
				HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, 0 );
				HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
				if( DDSIZE$1 <= 4 ) goto label$122;
				{
					FBSTRING TMP$302$5;
					FBSTRING TMP$303$5;
					FBSTRING TMP$304$5;
					FBSTRING TMP$305$5;
					FBSTRING TMP$306$5;
					FBSTRING TMP$307$5;
					__builtin_memset( &TMP$303$5, 0, 12 );
					__builtin_memset( &TMP$302$5, 0, 12 );
					FBSTRING* vr$71 = fb_StrConcat( &TMP$302$5, (void*)"movupd xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$303$5, -1, (void*)vr$71, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$303$5 );
					fb_StrDelete( (FBSTRING*)&TMP$303$5 );
					__builtin_memset( &TMP$307$5, 0, 12 );
					__builtin_memset( &TMP$304$5, 0, 12 );
					FBSTRING* vr$77 = fb_StrConcat( &TMP$304$5, (void*)"movupd ", 8, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$305$5, 0, 12 );
					FBSTRING* vr$80 = fb_StrConcat( &TMP$305$5, (void*)vr$77, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$306$5, 0, 12 );
					FBSTRING* vr$83 = fb_StrConcat( &TMP$306$5, (void*)vr$80, -1, (void*)"xmm7", 5 );
					fb_StrAssign( (void*)&TMP$307$5, -1, (void*)vr$83, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$307$5 );
					fb_StrDelete( (FBSTRING*)&TMP$307$5 );
				}
				goto label$121;
				label$122:;
				{
					if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$124;
					{
						FBSTRING TMP$310$6;
						FBSTRING TMP$311$6;
						FBSTRING TMP$312$6;
						FBSTRING TMP$313$6;
						FBSTRING TMP$314$6;
						FBSTRING TMP$315$6;
						__builtin_memset( &TMP$311$6, 0, 12 );
						__builtin_memset( &TMP$310$6, 0, 12 );
						FBSTRING* vr$90 = fb_StrConcat( &TMP$310$6, (void*)"movlps xmm7, ", 14, (void*)&SRC$1, -1 );
						fb_StrAssign( (void*)&TMP$311$6, -1, (void*)vr$90, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$311$6 );
						fb_StrDelete( (FBSTRING*)&TMP$311$6 );
						__builtin_memset( &TMP$315$6, 0, 12 );
						__builtin_memset( &TMP$312$6, 0, 12 );
						FBSTRING* vr$96 = fb_StrConcat( &TMP$312$6, (void*)"movlps ", 8, (void*)&DST$1, -1 );
						__builtin_memset( &TMP$313$6, 0, 12 );
						FBSTRING* vr$99 = fb_StrConcat( &TMP$313$6, (void*)vr$96, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$314$6, 0, 12 );
						FBSTRING* vr$102 = fb_StrConcat( &TMP$314$6, (void*)vr$99, -1, (void*)"xmm7", 5 );
						fb_StrAssign( (void*)&TMP$315$6, -1, (void*)vr$102, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$315$6 );
						fb_StrDelete( (FBSTRING*)&TMP$315$6 );
					}
					goto label$123;
					label$124:;
					if( *(int32*)((uint8*)SVREG$1 + 20) != 3 ) goto label$125;
					{
						FBSTRING TMP$318$6;
						FBSTRING TMP$319$6;
						FBSTRING TMP$320$6;
						FBSTRING TMP$321$6;
						FBSTRING TMP$322$6;
						FBSTRING TMP$323$6;
						FBSTRING TMP$325$6;
						FBSTRING TMP$326$6;
						FBSTRING TMP$327$6;
						FBSTRING TMP$328$6;
						__builtin_memset( &TMP$319$6, 0, 12 );
						__builtin_memset( &TMP$318$6, 0, 12 );
						FBSTRING* vr$109 = fb_StrConcat( &TMP$318$6, (void*)"movups xmm7, ", 14, (void*)&SRC$1, -1 );
						fb_StrAssign( (void*)&TMP$319$6, -1, (void*)vr$109, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$319$6 );
						fb_StrDelete( (FBSTRING*)&TMP$319$6 );
						__builtin_memset( &TMP$323$6, 0, 12 );
						__builtin_memset( &TMP$320$6, 0, 12 );
						FBSTRING* vr$115 = fb_StrConcat( &TMP$320$6, (void*)"movlps ", 8, (void*)&DST$1, -1 );
						__builtin_memset( &TMP$321$6, 0, 12 );
						FBSTRING* vr$118 = fb_StrConcat( &TMP$321$6, (void*)vr$115, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$322$6, 0, 12 );
						FBSTRING* vr$121 = fb_StrConcat( &TMP$322$6, (void*)vr$118, -1, (void*)"xmm7", 5 );
						fb_StrAssign( (void*)&TMP$323$6, -1, (void*)vr$121, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$323$6 );
						fb_StrDelete( (FBSTRING*)&TMP$323$6 );
						OUTP( (uint8*)"unpckhps xmm7, xmm7" );
						HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 8, 0, -1 );
						__builtin_memset( &TMP$328$6, 0, 12 );
						__builtin_memset( &TMP$325$6, 0, 12 );
						FBSTRING* vr$127 = fb_StrConcat( &TMP$325$6, (void*)"movss ", 7, (void*)&DST$1, -1 );
						__builtin_memset( &TMP$326$6, 0, 12 );
						FBSTRING* vr$130 = fb_StrConcat( &TMP$326$6, (void*)vr$127, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$327$6, 0, 12 );
						FBSTRING* vr$133 = fb_StrConcat( &TMP$327$6, (void*)vr$130, -1, (void*)"xmm7", 5 );
						fb_StrAssign( (void*)&TMP$328$6, -1, (void*)vr$133, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$328$6 );
						fb_StrDelete( (FBSTRING*)&TMP$328$6 );
					}
					goto label$123;
					label$125:;
					if( *(int32*)((uint8*)SVREG$1 + 20) != 4 ) goto label$126;
					{
						FBSTRING TMP$329$6;
						FBSTRING TMP$330$6;
						FBSTRING TMP$331$6;
						FBSTRING TMP$332$6;
						FBSTRING TMP$333$6;
						FBSTRING TMP$334$6;
						__builtin_memset( &TMP$330$6, 0, 12 );
						__builtin_memset( &TMP$329$6, 0, 12 );
						FBSTRING* vr$140 = fb_StrConcat( &TMP$329$6, (void*)"movups xmm7, ", 14, (void*)&SRC$1, -1 );
						fb_StrAssign( (void*)&TMP$330$6, -1, (void*)vr$140, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$330$6 );
						fb_StrDelete( (FBSTRING*)&TMP$330$6 );
						__builtin_memset( &TMP$334$6, 0, 12 );
						__builtin_memset( &TMP$331$6, 0, 12 );
						FBSTRING* vr$146 = fb_StrConcat( &TMP$331$6, (void*)"movups ", 8, (void*)&DST$1, -1 );
						__builtin_memset( &TMP$332$6, 0, 12 );
						FBSTRING* vr$149 = fb_StrConcat( &TMP$332$6, (void*)vr$146, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$333$6, 0, 12 );
						FBSTRING* vr$152 = fb_StrConcat( &TMP$333$6, (void*)vr$149, -1, (void*)"xmm7", 5 );
						fb_StrAssign( (void*)&TMP$334$6, -1, (void*)vr$152, -1, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$334$6 );
						fb_StrDelete( (FBSTRING*)&TMP$334$6 );
					}
					label$126:;
					label$123:;
				}
				label$121:;
				goto label$102;
			}
			label$120:;
			label$119:;
			if( DDSIZE$1 <= 4 ) goto label$128;
			{
				FBSTRING TMP$337$4;
				FBSTRING TMP$338$4;
				FBSTRING TMP$339$4;
				FBSTRING TMP$340$4;
				FBSTRING TMP$341$4;
				FBSTRING TMP$342$4;
				__builtin_memset( &TMP$338$4, 0, 12 );
				__builtin_memset( &TMP$337$4, 0, 12 );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$337$4, (void*)"movlpd xmm7, ", 14, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$338$4, -1, (void*)vr$158, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$338$4 );
				fb_StrDelete( (FBSTRING*)&TMP$338$4 );
				__builtin_memset( &TMP$342$4, 0, 12 );
				__builtin_memset( &TMP$339$4, 0, 12 );
				FBSTRING* vr$164 = fb_StrConcat( &TMP$339$4, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
				__builtin_memset( &TMP$340$4, 0, 12 );
				FBSTRING* vr$167 = fb_StrConcat( &TMP$340$4, (void*)vr$164, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$341$4, 0, 12 );
				FBSTRING* vr$170 = fb_StrConcat( &TMP$341$4, (void*)vr$167, -1, (void*)"xmm7", 5 );
				fb_StrAssign( (void*)&TMP$342$4, -1, (void*)vr$170, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$342$4 );
				fb_StrDelete( (FBSTRING*)&TMP$342$4 );
			}
			goto label$127;
			label$128:;
			{
				FBSTRING TMP$345$4;
				FBSTRING TMP$346$4;
				FBSTRING TMP$347$4;
				FBSTRING TMP$348$4;
				FBSTRING TMP$349$4;
				FBSTRING TMP$350$4;
				__builtin_memset( &TMP$346$4, 0, 12 );
				__builtin_memset( &TMP$345$4, 0, 12 );
				FBSTRING* vr$176 = fb_StrConcat( &TMP$345$4, (void*)"movss xmm7, ", 13, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$346$4, -1, (void*)vr$176, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$346$4 );
				fb_StrDelete( (FBSTRING*)&TMP$346$4 );
				__builtin_memset( &TMP$350$4, 0, 12 );
				__builtin_memset( &TMP$347$4, 0, 12 );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$347$4, (void*)"movss ", 7, (void*)&DST$1, -1 );
				__builtin_memset( &TMP$348$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$348$4, (void*)vr$182, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$349$4, 0, 12 );
				FBSTRING* vr$188 = fb_StrConcat( &TMP$349$4, (void*)vr$185, -1, (void*)"xmm7", 5 );
				fb_StrAssign( (void*)&TMP$350$4, -1, (void*)vr$188, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$350$4 );
				fb_StrDelete( (FBSTRING*)&TMP$350$4 );
			}
			label$127:;
		}
		goto label$117;
		label$118:;
		{
			if( SDSIZE$1 <= 4 ) goto label$130;
			{
				if( SRC_VEC$1 == 0 ) goto label$132;
				{
					FBSTRING TMP$353$5;
					FBSTRING TMP$354$5;
					FBSTRING TMP$355$5;
					FBSTRING TMP$356$5;
					FBSTRING TMP$357$5;
					FBSTRING TMP$358$5;
					__builtin_memset( &TMP$354$5, 0, 12 );
					__builtin_memset( &TMP$353$5, 0, 12 );
					FBSTRING* vr$194 = fb_StrConcat( &TMP$353$5, (void*)"cvtpd2ps xmm7, ", 16, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$354$5, -1, (void*)vr$194, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$354$5 );
					fb_StrDelete( (FBSTRING*)&TMP$354$5 );
					__builtin_memset( &TMP$358$5, 0, 12 );
					__builtin_memset( &TMP$355$5, 0, 12 );
					FBSTRING* vr$200 = fb_StrConcat( &TMP$355$5, (void*)"movlps ", 8, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$356$5, 0, 12 );
					FBSTRING* vr$203 = fb_StrConcat( &TMP$356$5, (void*)vr$200, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$357$5, 0, 12 );
					FBSTRING* vr$206 = fb_StrConcat( &TMP$357$5, (void*)vr$203, -1, (void*)"xmm7", 5 );
					fb_StrAssign( (void*)&TMP$358$5, -1, (void*)vr$206, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$358$5 );
					fb_StrDelete( (FBSTRING*)&TMP$358$5 );
				}
				goto label$131;
				label$132:;
				{
					FBSTRING TMP$361$5;
					FBSTRING TMP$362$5;
					FBSTRING TMP$363$5;
					FBSTRING TMP$364$5;
					FBSTRING TMP$365$5;
					FBSTRING TMP$366$5;
					__builtin_memset( &TMP$362$5, 0, 12 );
					__builtin_memset( &TMP$361$5, 0, 12 );
					FBSTRING* vr$212 = fb_StrConcat( &TMP$361$5, (void*)"cvtsd2ss xmm7, ", 16, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$362$5, -1, (void*)vr$212, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$362$5 );
					fb_StrDelete( (FBSTRING*)&TMP$362$5 );
					__builtin_memset( &TMP$366$5, 0, 12 );
					__builtin_memset( &TMP$363$5, 0, 12 );
					FBSTRING* vr$218 = fb_StrConcat( &TMP$363$5, (void*)"movss ", 7, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$364$5, 0, 12 );
					FBSTRING* vr$221 = fb_StrConcat( &TMP$364$5, (void*)vr$218, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$365$5, 0, 12 );
					FBSTRING* vr$224 = fb_StrConcat( &TMP$365$5, (void*)vr$221, -1, (void*)"xmm7", 5 );
					fb_StrAssign( (void*)&TMP$366$5, -1, (void*)vr$224, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$366$5 );
					fb_StrDelete( (FBSTRING*)&TMP$366$5 );
				}
				label$131:;
			}
			goto label$129;
			label$130:;
			{
				if( SRC_VEC$1 == 0 ) goto label$134;
				{
					FBSTRING TMP$369$5;
					FBSTRING TMP$370$5;
					FBSTRING TMP$371$5;
					FBSTRING TMP$372$5;
					FBSTRING TMP$373$5;
					FBSTRING TMP$374$5;
					__builtin_memset( &TMP$370$5, 0, 12 );
					__builtin_memset( &TMP$369$5, 0, 12 );
					FBSTRING* vr$230 = fb_StrConcat( &TMP$369$5, (void*)"cvtps2pd xmm7, ", 16, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$370$5, -1, (void*)vr$230, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$370$5 );
					fb_StrDelete( (FBSTRING*)&TMP$370$5 );
					__builtin_memset( &TMP$374$5, 0, 12 );
					__builtin_memset( &TMP$371$5, 0, 12 );
					FBSTRING* vr$236 = fb_StrConcat( &TMP$371$5, (void*)"movupd ", 8, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$372$5, 0, 12 );
					FBSTRING* vr$239 = fb_StrConcat( &TMP$372$5, (void*)vr$236, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$373$5, 0, 12 );
					FBSTRING* vr$242 = fb_StrConcat( &TMP$373$5, (void*)vr$239, -1, (void*)"xmm7", 5 );
					fb_StrAssign( (void*)&TMP$374$5, -1, (void*)vr$242, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$374$5 );
					fb_StrDelete( (FBSTRING*)&TMP$374$5 );
				}
				goto label$133;
				label$134:;
				{
					FBSTRING TMP$377$5;
					FBSTRING TMP$378$5;
					FBSTRING TMP$379$5;
					FBSTRING TMP$380$5;
					FBSTRING TMP$381$5;
					FBSTRING TMP$382$5;
					__builtin_memset( &TMP$378$5, 0, 12 );
					__builtin_memset( &TMP$377$5, 0, 12 );
					FBSTRING* vr$248 = fb_StrConcat( &TMP$377$5, (void*)"cvtss2sd xmm7, ", 16, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$378$5, -1, (void*)vr$248, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$378$5 );
					fb_StrDelete( (FBSTRING*)&TMP$378$5 );
					__builtin_memset( &TMP$382$5, 0, 12 );
					__builtin_memset( &TMP$379$5, 0, 12 );
					FBSTRING* vr$254 = fb_StrConcat( &TMP$379$5, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$380$5, 0, 12 );
					FBSTRING* vr$257 = fb_StrConcat( &TMP$380$5, (void*)vr$254, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$381$5, 0, 12 );
					FBSTRING* vr$260 = fb_StrConcat( &TMP$381$5, (void*)vr$257, -1, (void*)"xmm7", 5 );
					fb_StrAssign( (void*)&TMP$382$5, -1, (void*)vr$260, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$382$5 );
					fb_StrDelete( (FBSTRING*)&TMP$382$5 );
				}
				label$133:;
			}
			label$129:;
		}
		label$117:;
	}
	label$105:;
	label$102:;
}

static void _EMITLOADF2L_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$383$1;
	int32 TMP$390$1;
	int32 TMP$391$1;
	label$135:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	static int32 DDSIZE$1;
	static int32 SDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$137;
	TMP$383$1 = 24;
	goto label$756;
	label$137:;
	TMP$383$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$756:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$383$1 * 28)) + 4);
	if( *(int32*)((uint8*)SVREG$1 + 16) != 1 ) goto label$139;
	{
		if( *(int32*)SVREG$1 != 4 ) goto label$141;
		{
			OUTP( (uint8*)"sub esp, 8" );
			if( SDSIZE$1 <= 4 ) goto label$143;
			{
				FBSTRING TMP$384$4;
				FBSTRING TMP$385$4;
				__builtin_memset( &TMP$385$4, 0, 12 );
				__builtin_memset( &TMP$384$4, 0, 12 );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$384$4, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$385$4, -1, (void*)vr$10, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$385$4 );
				fb_StrDelete( (FBSTRING*)&TMP$385$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$142;
			label$143:;
			{
				FBSTRING TMP$386$4;
				FBSTRING TMP$387$4;
				__builtin_memset( &TMP$387$4, 0, 12 );
				__builtin_memset( &TMP$386$4, 0, 12 );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$386$4, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$387$4, -1, (void*)vr$16, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$387$4 );
				fb_StrDelete( (FBSTRING*)&TMP$387$4 );
				OUTP( (uint8*)"fld dword ptr [esp]" );
			}
			label$142:;
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$140;
		label$141:;
		{
			FBSTRING TMP$388$3;
			FBSTRING TMP$389$3;
			__builtin_memset( &TMP$389$3, 0, 12 );
			__builtin_memset( &TMP$388$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$388$3, (void*)"fld ", 5, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$389$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$389$3 );
			fb_StrDelete( (FBSTRING*)&TMP$389$3 );
		}
		label$140:;
	}
	label$139:;
	label$138:;
	HPREPOPERAND64( DVREG$1, &DST$1, &AUX$1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$144;
	TMP$390$1 = 24;
	goto label$757;
	label$144:;
	TMP$390$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$757:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$390$1 * 28)) + 8) != 0 ) goto label$145;
	TMP$391$1 = -(*(int32*)((uint8*)DVREG$1 + 4) == 14);
	goto label$758;
	label$145:;
	TMP$391$1 = -1;
	label$758:;
	if( TMP$391$1 == 0 ) goto label$147;
	{
		FBSTRING TMP$392$2;
		FBSTRING TMP$393$2;
		OUTP( (uint8*)"sub esp, 8" );
		__builtin_memset( &TMP$392$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$392$2, (void*)"fistp ", 7, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
		__builtin_memset( &TMP$393$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$393$2, (void*)vr$37, -1, (void*)" [esp]", 7 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$40, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$146;
	label$147:;
	{
		OUTP( (uint8*)"fld st(0)" );
		OUTP( (uint8*)"push 0x4f800000" );
		OUTP( (uint8*)"fdiv dword ptr [esp]" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"push 0x4f800000" );
		OUTP( (uint8*)"fmul dword ptr [esp]" );
		OUTP( (uint8*)"fsubp" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
	}
	label$146:;
	HPOP( (uint8*)*(uint8**)&DST$1 );
	HPOP( (uint8*)*(uint8**)&AUX$1 );
	label$136:;
}

static void _EMITLOADF2I_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$400$1;
	int32 TMP$401$1;
	int32 TMP$402$1;
	label$148:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING AUX$1;
	static FBSTRING AUX8_16$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 ISFREE$1;
	static int32 REG$1;
	static int32 WASREG$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$150;
	TMP$400$1 = 24;
	goto label$759;
	label$150:;
	TMP$400$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$759:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$400$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$151;
	TMP$401$1 = 24;
	goto label$760;
	label$151:;
	TMP$401$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$760:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$401$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$152;
	TMP$402$1 = 24;
	goto label$761;
	label$152:;
	TMP$402$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$761:;
	if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$402$1 * 28)) + 8) == 0) & -(DDSIZE$1 == 4)) == 0 ) goto label$154;
	{
		OUTP( (uint8*)"sub esp, 8" );
		if( *(int32*)SVREG$1 == 4 ) goto label$156;
		{
			FBSTRING TMP$403$3;
			FBSTRING TMP$404$3;
			__builtin_memset( &TMP$404$3, 0, 12 );
			__builtin_memset( &TMP$403$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$403$3, (void*)"fld ", 5, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$404$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$404$3 );
			fb_StrDelete( (FBSTRING*)&TMP$404$3 );
		}
		goto label$155;
		label$156:;
		if( *(int32*)((uint8*)SVREG$1 + 16) != 1 ) goto label$157;
		{
			if( SDSIZE$1 <= 4 ) goto label$159;
			{
				FBSTRING TMP$405$4;
				FBSTRING TMP$406$4;
				__builtin_memset( &TMP$406$4, 0, 12 );
				__builtin_memset( &TMP$405$4, 0, 12 );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$405$4, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$406$4, -1, (void*)vr$29, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$406$4 );
				fb_StrDelete( (FBSTRING*)&TMP$406$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$158;
			label$159:;
			{
				FBSTRING TMP$407$4;
				FBSTRING TMP$408$4;
				__builtin_memset( &TMP$408$4, 0, 12 );
				__builtin_memset( &TMP$407$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$407$4, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$408$4, -1, (void*)vr$35, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$408$4 );
				fb_StrDelete( (FBSTRING*)&TMP$408$4 );
				OUTP( (uint8*)"fld dword ptr [esp]" );
			}
			label$158:;
		}
		label$157:;
		label$155:;
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		OUTP( (uint8*)"add esp, 4" );
		goto label$149;
	}
	label$154:;
	label$153:;
	if( *(int32*)DVREG$1 != 4 ) goto label$161;
	{
		ISFREE$1 = -1;
		if( DDSIZE$1 >= 4 ) goto label$163;
		{
			uint8* vr$40 = HGETREGNAME( 8, *(int32*)((uint8*)DVREG$1 + 12) );
			fb_StrAssign( (void*)&DST$1, -1, (void*)vr$40, 0, 0 );
		}
		label$163:;
		label$162:;
		fb_StrAssign( (void*)&AUX$1, -1, (void*)&DST$1, -1, 0 );
		WASREG$1 = -1;
	}
	goto label$160;
	label$161:;
	{
		WASREG$1 = 0;
		int32 vr$41 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$1 = vr$41;
		uint8* vr$42 = HGETREGNAME( 8, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$42, 0, 0 );
		uint8* vr$44 = HGETREGNAME( *(int32*)((uint8*)DVREG$1 + 4), REG$1 );
		fb_StrAssign( (void*)&AUX8_16$1, -1, (void*)vr$44, 0, 0 );
		int32 vr$45 = HISREGFREE( 0, REG$1 );
		ISFREE$1 = vr$45;
		if( ISFREE$1 != 0 ) goto label$165;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$165:;
		label$164:;
	}
	label$160:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$167;
	{
		OUTP( (uint8*)"sub esp, 4" );
		if( DDSIZE$1 != 2 ) goto label$169;
		{
			OUTP( (uint8*)"fistp word ptr [esp]" );
		}
		goto label$168;
		label$169:;
		{
			OUTP( (uint8*)"fistp dword ptr [esp]" );
		}
		label$168:;
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	goto label$166;
	label$167:;
	{
		int32 TMP$410$2;
		int32 TMP$411$2;
		if( SDSIZE$1 <= 4 ) goto label$170;
		TMP$410$2 = 100;
		goto label$762;
		label$170:;
		TMP$410$2 = 115;
		label$762:;
		FBSTRING* vr$47 = fb_CHR( 1, TMP$410$2 );
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)vr$47, -1, 0 );
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$171;
		TMP$411$2 = 24;
		goto label$763;
		label$171:;
		TMP$411$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$763:;
		if( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$411$2 * 28)) + 8) & -(DDSIZE$1 == 2)) == 0 ) goto label$173;
		{
			FBSTRING TMP$418$3;
			FBSTRING TMP$419$3;
			FBSTRING TMP$420$3;
			FBSTRING TMP$421$3;
			FBSTRING TMP$422$3;
			FBSTRING TMP$425$3;
			FBSTRING TMP$426$3;
			FBSTRING TMP$427$3;
			FBSTRING TMP$428$3;
			if( *(int32*)SVREG$1 == 4 ) goto label$175;
			{
				if( SDSIZE$1 <= 4 ) goto label$177;
				{
					FBSTRING TMP$412$5;
					FBSTRING TMP$413$5;
					__builtin_memset( &TMP$413$5, 0, 12 );
					__builtin_memset( &TMP$412$5, 0, 12 );
					FBSTRING* vr$59 = fb_StrConcat( &TMP$412$5, (void*)"movlpd xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$413$5, -1, (void*)vr$59, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$413$5 );
					fb_StrDelete( (FBSTRING*)&TMP$413$5 );
				}
				goto label$176;
				label$177:;
				{
					FBSTRING TMP$414$5;
					FBSTRING TMP$415$5;
					__builtin_memset( &TMP$415$5, 0, 12 );
					__builtin_memset( &TMP$414$5, 0, 12 );
					FBSTRING* vr$65 = fb_StrConcat( &TMP$414$5, (void*)"movss xmm7, ", 13, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$415$5, -1, (void*)vr$65, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$415$5 );
					fb_StrDelete( (FBSTRING*)&TMP$415$5 );
				}
				label$176:;
				fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
			}
			label$175:;
			label$174:;
			__builtin_memset( &TMP$422$3, 0, 12 );
			__builtin_memset( &TMP$418$3, 0, 12 );
			FBSTRING* vr$71 = fb_StrConcat( &TMP$418$3, (void*)"cvtp", 5, (void*)&SUFFIX$1, -1 );
			__builtin_memset( &TMP$419$3, 0, 12 );
			FBSTRING* vr$74 = fb_StrConcat( &TMP$419$3, (void*)vr$71, -1, (void*)"2dq xmm7", 9 );
			__builtin_memset( &TMP$420$3, 0, 12 );
			FBSTRING* vr$77 = fb_StrConcat( &TMP$420$3, (void*)vr$74, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$421$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$421$3, (void*)vr$77, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$422$3, -1, (void*)vr$80, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$422$3 );
			fb_StrDelete( (FBSTRING*)&TMP$422$3 );
			OUTP( (uint8*)"packssdw xmm7, xmm7" );
			__builtin_memset( &TMP$428$3, 0, 12 );
			__builtin_memset( &TMP$425$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$425$3, (void*)"movd ", 6, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$426$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$426$3, (void*)vr$86, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$427$3, 0, 12 );
			FBSTRING* vr$92 = fb_StrConcat( &TMP$427$3, (void*)vr$89, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$428$3, -1, (void*)vr$92, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$428$3 );
			fb_StrDelete( (FBSTRING*)&TMP$428$3 );
		}
		goto label$172;
		label$173:;
		{
			FBSTRING TMP$431$3;
			FBSTRING TMP$432$3;
			FBSTRING TMP$433$3;
			FBSTRING TMP$434$3;
			FBSTRING TMP$435$3;
			FBSTRING TMP$436$3;
			HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
			__builtin_memset( &TMP$436$3, 0, 12 );
			__builtin_memset( &TMP$431$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$431$3, (void*)"cvts", 5, (void*)&SUFFIX$1, -1 );
			__builtin_memset( &TMP$432$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$432$3, (void*)vr$98, -1, (void*)"2si ", 5 );
			__builtin_memset( &TMP$433$3, 0, 12 );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$433$3, (void*)vr$101, -1, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$434$3, 0, 12 );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$434$3, (void*)vr$104, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$435$3, 0, 12 );
			FBSTRING* vr$110 = fb_StrConcat( &TMP$435$3, (void*)vr$107, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$436$3, -1, (void*)vr$110, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$436$3 );
			fb_StrDelete( (FBSTRING*)&TMP$436$3 );
		}
		label$172:;
	}
	label$166:;
	if( WASREG$1 != 0 ) goto label$179;
	{
		if( DDSIZE$1 != 4 ) goto label$181;
		{
			FBSTRING TMP$437$3;
			FBSTRING TMP$438$3;
			FBSTRING TMP$439$3;
			FBSTRING TMP$440$3;
			__builtin_memset( &TMP$440$3, 0, 12 );
			__builtin_memset( &TMP$437$3, 0, 12 );
			FBSTRING* vr$116 = fb_StrConcat( &TMP$437$3, (void*)"mov ", 5, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$438$3, 0, 12 );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$438$3, (void*)vr$116, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$439$3, 0, 12 );
			FBSTRING* vr$122 = fb_StrConcat( &TMP$439$3, (void*)vr$119, -1, (void*)&AUX$1, -1 );
			fb_StrAssign( (void*)&TMP$440$3, -1, (void*)vr$122, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$440$3 );
			fb_StrDelete( (FBSTRING*)&TMP$440$3 );
		}
		goto label$180;
		label$181:;
		{
			FBSTRING TMP$441$3;
			FBSTRING TMP$442$3;
			FBSTRING TMP$443$3;
			FBSTRING TMP$444$3;
			__builtin_memset( &TMP$444$3, 0, 12 );
			__builtin_memset( &TMP$441$3, 0, 12 );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$441$3, (void*)"mov ", 5, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$442$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$442$3, (void*)vr$128, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$443$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$443$3, (void*)vr$131, -1, (void*)&AUX8_16$1, -1 );
			fb_StrAssign( (void*)&TMP$444$3, -1, (void*)vr$134, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$444$3 );
			fb_StrDelete( (FBSTRING*)&TMP$444$3 );
		}
		label$180:;
		if( ISFREE$1 != 0 ) goto label$183;
		{
			HPOP( (uint8*)*(uint8**)&AUX$1 );
		}
		label$183:;
		label$182:;
	}
	label$179:;
	label$178:;
	label$149:;
}

static void _EMITLOADL2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$449$1;
	FBSTRING TMP$450$1;
	FBSTRING TMP$451$1;
	FBSTRING TMP$460$1;
	FBSTRING TMP$461$1;
	label$184:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (-(*(int32*)SVREG$1 == 4) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$187;
	{
		int32 TMP$445$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$188;
		TMP$445$2 = 24;
		goto label$764;
		label$188:;
		TMP$445$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$764:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$445$2 * 28)) + 8) == 0 ) goto label$190;
		{
			FBSTRING TMP$446$3;
			FBSTRING TMP$447$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$446$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$446$3, (void*)"fild ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$447$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$447$3, (void*)vr$15, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$18, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$189;
		label$190:;
		{
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			OUTP( (uint8*)"fild qword ptr [esp]" );
			OUTP( (uint8*)"add esp, 8" );
			HULONG2DBL( SVREG$1 );
		}
		label$189:;
	}
	goto label$186;
	label$187:;
	{
		int32 TMP$448$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$191;
		TMP$448$2 = 24;
		goto label$765;
		label$191:;
		TMP$448$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$765:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$448$2 * 28)) + 8) == 0 ) goto label$193;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$192;
		label$193:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$192:;
	}
	label$186:;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$194;
	TMP$449$1 = 24;
	goto label$766;
	label$194:;
	TMP$449$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$766:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$449$1 * 28)) + 4);
	__builtin_memset( &TMP$451$1, 0, 12 );
	FBSTRING* vr$30 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$450$1, 0, 12 );
	FBSTRING* vr$33 = fb_StrConcat( &TMP$450$1, (void*)"sub esp, ", 10, (void*)vr$30, -1 );
	fb_StrAssign( (void*)&TMP$451$1, -1, (void*)vr$33, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$451$1 );
	fb_StrDelete( (FBSTRING*)&TMP$451$1 );
	if( DDSIZE$1 <= 4 ) goto label$196;
	{
		FBSTRING TMP$452$2;
		FBSTRING TMP$453$2;
		FBSTRING TMP$454$2;
		FBSTRING TMP$455$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$455$2, 0, 12 );
		__builtin_memset( &TMP$452$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$452$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$453$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$453$2, (void*)vr$39, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$454$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$454$2, (void*)vr$42, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$455$2, -1, (void*)vr$45, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$455$2 );
		fb_StrDelete( (FBSTRING*)&TMP$455$2 );
	}
	goto label$195;
	label$196:;
	{
		FBSTRING TMP$456$2;
		FBSTRING TMP$457$2;
		FBSTRING TMP$458$2;
		FBSTRING TMP$459$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$459$2, 0, 12 );
		__builtin_memset( &TMP$456$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$456$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$457$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$457$2, (void*)vr$51, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$458$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$458$2, (void*)vr$54, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$459$2, -1, (void*)vr$57, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$459$2 );
		fb_StrDelete( (FBSTRING*)&TMP$459$2 );
	}
	label$195:;
	__builtin_memset( &TMP$461$1, 0, 12 );
	FBSTRING* vr$61 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$460$1, 0, 12 );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$460$1, (void*)"add esp, ", 10, (void*)vr$61, -1 );
	fb_StrAssign( (void*)&TMP$461$1, -1, (void*)vr$64, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$461$1 );
	fb_StrDelete( (FBSTRING*)&TMP$461$1 );
	label$185:;
}

static void _EMITLOADI2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$462$1;
	int32 TMP$463$1;
	int32 TMP$464$1;
	FBSTRING TMP$533$1;
	FBSTRING TMP$534$1;
	FBSTRING TMP$543$1;
	FBSTRING TMP$544$1;
	label$197:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING AUX$1;
	static int32 ISFREE$1;
	static int32 REG$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$199;
	TMP$462$1 = 24;
	goto label$767;
	label$199:;
	TMP$462$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$767:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$462$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$200;
	TMP$463$1 = 24;
	goto label$768;
	label$200:;
	TMP$463$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$768:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$463$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$201;
	TMP$464$1 = 24;
	goto label$769;
	label$201:;
	TMP$464$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$769:;
	if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$464$1 * 28)) + 8) == 0) & -(SDSIZE$1 == 4)) == 0 ) goto label$203;
	{
		FBSTRING TMP$467$2;
		FBSTRING TMP$468$2;
		FBSTRING TMP$469$2;
		FBSTRING TMP$470$2;
		FBSTRING TMP$473$2;
		FBSTRING TMP$474$2;
		FBSTRING TMP$475$2;
		FBSTRING TMP$476$2;
		FBSTRING TMP$478$2;
		FBSTRING TMP$479$2;
		FBSTRING TMP$480$2;
		FBSTRING TMP$481$2;
		FBSTRING TMP$482$2;
		FBSTRING TMP$483$2;
		FBSTRING TMP$484$2;
		FBSTRING TMP$485$2;
		FBSTRING TMP$486$2;
		FBSTRING TMP$489$2;
		FBSTRING TMP$490$2;
		FBSTRING TMP$491$2;
		FBSTRING TMP$492$2;
		FBSTRING TMP$493$2;
		FBSTRING TMP$494$2;
		FBSTRING TMP$495$2;
		FBSTRING TMP$496$2;
		FBSTRING TMP$497$2;
		FBSTRING TMP$499$2;
		FBSTRING TMP$500$2;
		FBSTRING TMP$501$2;
		FBSTRING TMP$502$2;
		FBSTRING TMP$503$2;
		FBSTRING TMP$505$2;
		FBSTRING TMP$506$2;
		FBSTRING TMP$507$2;
		FBSTRING TMP$508$2;
		FBSTRING TMP$509$2;
		int32 vr$18 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$1 = vr$18;
		uint8* vr$19 = HGETREGNAME( 8, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$19, 0, 0 );
		int32 vr$20 = HISREGFREE( 0, REG$1 );
		ISFREE$1 = vr$20;
		if( ISFREE$1 != 0 ) goto label$205;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$205:;
		label$204:;
		if( DDSIZE$1 <= 4 ) goto label$207;
		{
			struct $8FBSYMBOL* vr$21 = SYMBALLOCINTCONST( 4679240012837945344ll, 14 );
			SYM$1 = vr$21;
			struct $6IRVREG* vr$23 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
			TEMPVREG$1 = vr$23;
			fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"sd ", 4, 0 );
		}
		goto label$206;
		label$207:;
		{
			struct $8FBSYMBOL* vr$24 = SYMBALLOCINTCONST( 1199570944ll, 9 );
			SYM$1 = vr$24;
			struct $6IRVREG* vr$26 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
			TEMPVREG$1 = vr$26;
			fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ss ", 4, 0 );
		}
		label$206:;
		*(int32*)((uint8*)SYM$1 + 104) = 16;
		__builtin_memset( &TMP$470$2, 0, 12 );
		__builtin_memset( &TMP$467$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$467$2, (void*)"mov ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$468$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$468$2, (void*)vr$31, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$469$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$469$2, (void*)vr$34, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$470$2, -1, (void*)vr$37, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$470$2 );
		fb_StrDelete( (FBSTRING*)&TMP$470$2 );
		__builtin_memset( &TMP$476$2, 0, 12 );
		__builtin_memset( &TMP$473$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$473$2, (void*)"and ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$474$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$474$2, (void*)vr$43, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$475$2, 0, 12 );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$475$2, (void*)vr$46, -1, (void*)"0xFFFF", 7 );
		fb_StrAssign( (void*)&TMP$476$2, -1, (void*)vr$49, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$476$2 );
		fb_StrDelete( (FBSTRING*)&TMP$476$2 );
		__builtin_memset( &TMP$482$2, 0, 12 );
		__builtin_memset( &TMP$478$2, 0, 12 );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$478$2, (void*)"cvtsi2", 7, (void*)&SUFFIX$1, -1 );
		__builtin_memset( &TMP$479$2, 0, 12 );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$479$2, (void*)vr$55, -1, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$480$2, 0, 12 );
		FBSTRING* vr$61 = fb_StrConcat( &TMP$480$2, (void*)vr$58, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$481$2, 0, 12 );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$481$2, (void*)vr$61, -1, (void*)&AUX$1, -1 );
		fb_StrAssign( (void*)&TMP$482$2, -1, (void*)vr$64, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$482$2 );
		fb_StrDelete( (FBSTRING*)&TMP$482$2 );
		__builtin_memset( &TMP$486$2, 0, 12 );
		__builtin_memset( &TMP$483$2, 0, 12 );
		FBSTRING* vr$70 = fb_StrConcat( &TMP$483$2, (void*)"mov ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$484$2, 0, 12 );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$484$2, (void*)vr$70, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$485$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$485$2, (void*)vr$73, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$486$2, -1, (void*)vr$76, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$486$2 );
		fb_StrDelete( (FBSTRING*)&TMP$486$2 );
		__builtin_memset( &TMP$492$2, 0, 12 );
		__builtin_memset( &TMP$489$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$489$2, (void*)"shr ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$490$2, 0, 12 );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$490$2, (void*)vr$82, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$491$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$491$2, (void*)vr$85, -1, (void*)"16", 3 );
		fb_StrAssign( (void*)&TMP$492$2, -1, (void*)vr$88, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$492$2 );
		fb_StrDelete( (FBSTRING*)&TMP$492$2 );
		__builtin_memset( &TMP$497$2, 0, 12 );
		__builtin_memset( &TMP$493$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$493$2, (void*)"cvtsi2", 7, (void*)&SUFFIX$1, -1 );
		__builtin_memset( &TMP$494$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$494$2, (void*)vr$94, -1, (void*)"xmm7", 5 );
		__builtin_memset( &TMP$495$2, 0, 12 );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$495$2, (void*)vr$97, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$496$2, 0, 12 );
		FBSTRING* vr$103 = fb_StrConcat( &TMP$496$2, (void*)vr$100, -1, (void*)&AUX$1, -1 );
		fb_StrAssign( (void*)&TMP$497$2, -1, (void*)vr$103, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$497$2 );
		fb_StrDelete( (FBSTRING*)&TMP$497$2 );
		HPREPOPERAND( TEMPVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
		__builtin_memset( &TMP$503$2, 0, 12 );
		__builtin_memset( &TMP$499$2, 0, 12 );
		FBSTRING* vr$109 = fb_StrConcat( &TMP$499$2, (void*)"mul", 4, (void*)&SUFFIX$1, -1 );
		__builtin_memset( &TMP$500$2, 0, 12 );
		FBSTRING* vr$112 = fb_StrConcat( &TMP$500$2, (void*)vr$109, -1, (void*)"xmm7", 5 );
		__builtin_memset( &TMP$501$2, 0, 12 );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$501$2, (void*)vr$112, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$502$2, 0, 12 );
		FBSTRING* vr$118 = fb_StrConcat( &TMP$502$2, (void*)vr$115, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$503$2, -1, (void*)vr$118, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$503$2 );
		fb_StrDelete( (FBSTRING*)&TMP$503$2 );
		__builtin_memset( &TMP$509$2, 0, 12 );
		__builtin_memset( &TMP$505$2, 0, 12 );
		FBSTRING* vr$124 = fb_StrConcat( &TMP$505$2, (void*)"add", 4, (void*)&SUFFIX$1, -1 );
		__builtin_memset( &TMP$506$2, 0, 12 );
		FBSTRING* vr$127 = fb_StrConcat( &TMP$506$2, (void*)vr$124, -1, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$507$2, 0, 12 );
		FBSTRING* vr$130 = fb_StrConcat( &TMP$507$2, (void*)vr$127, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$508$2, 0, 12 );
		FBSTRING* vr$133 = fb_StrConcat( &TMP$508$2, (void*)vr$130, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$509$2, -1, (void*)vr$133, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$509$2 );
		fb_StrDelete( (FBSTRING*)&TMP$509$2 );
		if( ISFREE$1 != 0 ) goto label$209;
		{
			HPOP( (uint8*)*(uint8**)&AUX$1 );
		}
		label$209:;
		label$208:;
		goto label$198;
	}
	label$203:;
	label$202:;
	if( (-(*(int32*)SVREG$1 != 0) & -(SDSIZE$1 == 4)) == 0 ) goto label$211;
	{
		ISFREE$1 = -1;
		fb_StrAssign( (void*)&AUX$1, -1, (void*)&SRC$1, -1, 0 );
	}
	goto label$210;
	label$211:;
	{
		int32 vr$140 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$1 = vr$140;
		uint8* vr$141 = HGETREGNAME( 8, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$141, 0, 0 );
		int32 vr$142 = HISREGFREE( 0, REG$1 );
		ISFREE$1 = vr$142;
		if( ISFREE$1 != 0 ) goto label$213;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$213:;
		label$212:;
		if( (-(*(int32*)SVREG$1 == 0) | -(SDSIZE$1 == 4)) == 0 ) goto label$215;
		{
			FBSTRING TMP$510$3;
			FBSTRING TMP$511$3;
			FBSTRING TMP$512$3;
			FBSTRING TMP$513$3;
			__builtin_memset( &TMP$513$3, 0, 12 );
			__builtin_memset( &TMP$510$3, 0, 12 );
			FBSTRING* vr$150 = fb_StrConcat( &TMP$510$3, (void*)"mov ", 5, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$511$3, 0, 12 );
			FBSTRING* vr$153 = fb_StrConcat( &TMP$511$3, (void*)vr$150, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$512$3, 0, 12 );
			FBSTRING* vr$156 = fb_StrConcat( &TMP$512$3, (void*)vr$153, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$513$3, -1, (void*)vr$156, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$513$3 );
			fb_StrDelete( (FBSTRING*)&TMP$513$3 );
		}
		goto label$214;
		label$215:;
		{
			int32 TMP$514$3;
			if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$216;
			TMP$514$3 = 24;
			goto label$770;
			label$216:;
			TMP$514$3 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
			label$770:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$514$3 * 28)) + 8) == 0 ) goto label$218;
			{
				FBSTRING TMP$515$4;
				FBSTRING TMP$516$4;
				FBSTRING TMP$517$4;
				FBSTRING TMP$518$4;
				__builtin_memset( &TMP$518$4, 0, 12 );
				__builtin_memset( &TMP$515$4, 0, 12 );
				FBSTRING* vr$167 = fb_StrConcat( &TMP$515$4, (void*)"movsx ", 7, (void*)&AUX$1, -1 );
				__builtin_memset( &TMP$516$4, 0, 12 );
				FBSTRING* vr$170 = fb_StrConcat( &TMP$516$4, (void*)vr$167, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$517$4, 0, 12 );
				FBSTRING* vr$173 = fb_StrConcat( &TMP$517$4, (void*)vr$170, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$518$4, -1, (void*)vr$173, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$518$4 );
				fb_StrDelete( (FBSTRING*)&TMP$518$4 );
			}
			goto label$217;
			label$218:;
			{
				FBSTRING TMP$519$4;
				FBSTRING TMP$520$4;
				FBSTRING TMP$521$4;
				FBSTRING TMP$522$4;
				__builtin_memset( &TMP$522$4, 0, 12 );
				__builtin_memset( &TMP$519$4, 0, 12 );
				FBSTRING* vr$179 = fb_StrConcat( &TMP$519$4, (void*)"movzx ", 7, (void*)&AUX$1, -1 );
				__builtin_memset( &TMP$520$4, 0, 12 );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$520$4, (void*)vr$179, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$521$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$521$4, (void*)vr$182, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$522$4, -1, (void*)vr$185, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$522$4 );
				fb_StrDelete( (FBSTRING*)&TMP$522$4 );
			}
			label$217:;
		}
		label$214:;
	}
	label$210:;
	if( DDSIZE$1 <= 4 ) goto label$220;
	{
		FBSTRING TMP$524$2;
		FBSTRING TMP$525$2;
		FBSTRING TMP$526$2;
		FBSTRING TMP$527$2;
		__builtin_memset( &TMP$527$2, 0, 12 );
		__builtin_memset( &TMP$524$2, 0, 12 );
		FBSTRING* vr$191 = fb_StrConcat( &TMP$524$2, (void*)"cvtsi2sd ", 10, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$525$2, 0, 12 );
		FBSTRING* vr$194 = fb_StrConcat( &TMP$525$2, (void*)vr$191, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$526$2, 0, 12 );
		FBSTRING* vr$197 = fb_StrConcat( &TMP$526$2, (void*)vr$194, -1, (void*)&AUX$1, -1 );
		fb_StrAssign( (void*)&TMP$527$2, -1, (void*)vr$197, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$527$2 );
		fb_StrDelete( (FBSTRING*)&TMP$527$2 );
	}
	goto label$219;
	label$220:;
	{
		FBSTRING TMP$529$2;
		FBSTRING TMP$530$2;
		FBSTRING TMP$531$2;
		FBSTRING TMP$532$2;
		__builtin_memset( &TMP$532$2, 0, 12 );
		__builtin_memset( &TMP$529$2, 0, 12 );
		FBSTRING* vr$203 = fb_StrConcat( &TMP$529$2, (void*)"cvtsi2ss ", 10, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$530$2, 0, 12 );
		FBSTRING* vr$206 = fb_StrConcat( &TMP$530$2, (void*)vr$203, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$531$2, 0, 12 );
		FBSTRING* vr$209 = fb_StrConcat( &TMP$531$2, (void*)vr$206, -1, (void*)&AUX$1, -1 );
		fb_StrAssign( (void*)&TMP$532$2, -1, (void*)vr$209, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$532$2 );
		fb_StrDelete( (FBSTRING*)&TMP$532$2 );
	}
	label$219:;
	if( ISFREE$1 != 0 ) goto label$222;
	{
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	label$222:;
	label$221:;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$224;
	{
		goto label$198;
		label$224:;
	}
	__builtin_memset( &TMP$534$1, 0, 12 );
	FBSTRING* vr$214 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$533$1, 0, 12 );
	FBSTRING* vr$217 = fb_StrConcat( &TMP$533$1, (void*)"sub esp, ", 10, (void*)vr$214, -1 );
	fb_StrAssign( (void*)&TMP$534$1, -1, (void*)vr$217, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$534$1 );
	fb_StrDelete( (FBSTRING*)&TMP$534$1 );
	if( DDSIZE$1 <= 4 ) goto label$226;
	{
		FBSTRING TMP$537$2;
		FBSTRING TMP$538$2;
		__builtin_memset( &TMP$538$2, 0, 12 );
		__builtin_memset( &TMP$537$2, 0, 12 );
		FBSTRING* vr$223 = fb_StrConcat( &TMP$537$2, (void*)"movlpd [esp], ", 15, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$538$2, -1, (void*)vr$223, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$538$2 );
		fb_StrDelete( (FBSTRING*)&TMP$538$2 );
		OUTP( (uint8*)"fld qword ptr [esp]" );
	}
	goto label$225;
	label$226:;
	{
		FBSTRING TMP$541$2;
		FBSTRING TMP$542$2;
		__builtin_memset( &TMP$542$2, 0, 12 );
		__builtin_memset( &TMP$541$2, 0, 12 );
		FBSTRING* vr$229 = fb_StrConcat( &TMP$541$2, (void*)"movss [esp], ", 14, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$542$2, -1, (void*)vr$229, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$542$2 );
		fb_StrDelete( (FBSTRING*)&TMP$542$2 );
		OUTP( (uint8*)"fld dword ptr [esp]" );
	}
	label$225:;
	__builtin_memset( &TMP$544$1, 0, 12 );
	FBSTRING* vr$233 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$543$1, 0, 12 );
	FBSTRING* vr$236 = fb_StrConcat( &TMP$543$1, (void*)"add esp, ", 10, (void*)vr$233, -1 );
	fb_StrAssign( (void*)&TMP$544$1, -1, (void*)vr$236, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$544$1 );
	fb_StrDelete( (FBSTRING*)&TMP$544$1 );
	label$198:;
}

static void _EMITLOADF2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$547$1;
	int32 TMP$548$1;
	label$227:;
	static FBSTRING SRC$1;
	static FBSTRING DST$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, 0 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$230;
	{
		FBSTRING TMP$545$2;
		FBSTRING TMP$546$2;
		HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
		__builtin_memset( &TMP$546$2, 0, 12 );
		__builtin_memset( &TMP$545$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$545$2, (void*)"fld ", 5, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$546$2, -1, (void*)vr$4, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$546$2 );
		fb_StrDelete( (FBSTRING*)&TMP$546$2 );
		goto label$228;
	}
	label$230:;
	label$229:;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$231;
	TMP$547$1 = 24;
	goto label$771;
	label$231:;
	TMP$547$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$771:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$547$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$232;
	TMP$548$1 = 24;
	goto label$772;
	label$232:;
	TMP$548$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$772:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$548$1 * 28)) + 4);
	if( SDSIZE$1 != DDSIZE$1 ) goto label$234;
	{
		if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$236;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
			if( DDSIZE$1 <= 4 ) goto label$238;
			{
				FBSTRING TMP$549$4;
				FBSTRING TMP$550$4;
				FBSTRING TMP$551$4;
				FBSTRING TMP$552$4;
				__builtin_memset( &TMP$552$4, 0, 12 );
				__builtin_memset( &TMP$549$4, 0, 12 );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$549$4, (void*)"movupd ", 8, (void*)&DST$1, -1 );
				__builtin_memset( &TMP$550$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$550$4, (void*)vr$21, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$551$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$551$4, (void*)vr$24, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$552$4, -1, (void*)vr$27, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$552$4 );
				fb_StrDelete( (FBSTRING*)&TMP$552$4 );
			}
			goto label$237;
			label$238:;
			{
				if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$240;
				{
					FBSTRING TMP$553$5;
					FBSTRING TMP$554$5;
					FBSTRING TMP$555$5;
					FBSTRING TMP$556$5;
					__builtin_memset( &TMP$556$5, 0, 12 );
					__builtin_memset( &TMP$553$5, 0, 12 );
					FBSTRING* vr$34 = fb_StrConcat( &TMP$553$5, (void*)"movlps ", 8, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$554$5, 0, 12 );
					FBSTRING* vr$37 = fb_StrConcat( &TMP$554$5, (void*)vr$34, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$555$5, 0, 12 );
					FBSTRING* vr$40 = fb_StrConcat( &TMP$555$5, (void*)vr$37, -1, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$556$5, -1, (void*)vr$40, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$556$5 );
					fb_StrDelete( (FBSTRING*)&TMP$556$5 );
				}
				goto label$239;
				label$240:;
				{
					FBSTRING TMP$557$5;
					FBSTRING TMP$558$5;
					FBSTRING TMP$559$5;
					FBSTRING TMP$560$5;
					__builtin_memset( &TMP$560$5, 0, 12 );
					__builtin_memset( &TMP$557$5, 0, 12 );
					FBSTRING* vr$46 = fb_StrConcat( &TMP$557$5, (void*)"movups ", 8, (void*)&DST$1, -1 );
					__builtin_memset( &TMP$558$5, 0, 12 );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$558$5, (void*)vr$46, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$559$5, 0, 12 );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$559$5, (void*)vr$49, -1, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$560$5, -1, (void*)vr$52, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$560$5 );
					fb_StrDelete( (FBSTRING*)&TMP$560$5 );
				}
				label$239:;
			}
			label$237:;
			goto label$228;
		}
		label$236:;
		label$235:;
		if( DDSIZE$1 <= 4 ) goto label$242;
		{
			FBSTRING TMP$561$3;
			FBSTRING TMP$562$3;
			FBSTRING TMP$563$3;
			FBSTRING TMP$564$3;
			__builtin_memset( &TMP$564$3, 0, 12 );
			__builtin_memset( &TMP$561$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$561$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$562$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$562$3, (void*)vr$58, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$563$3, 0, 12 );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$563$3, (void*)vr$61, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$564$3, -1, (void*)vr$64, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$564$3 );
			fb_StrDelete( (FBSTRING*)&TMP$564$3 );
		}
		goto label$241;
		label$242:;
		{
			FBSTRING TMP$565$3;
			FBSTRING TMP$566$3;
			FBSTRING TMP$567$3;
			FBSTRING TMP$568$3;
			__builtin_memset( &TMP$568$3, 0, 12 );
			__builtin_memset( &TMP$565$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$565$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$566$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$566$3, (void*)vr$70, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$567$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$567$3, (void*)vr$73, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$568$3, -1, (void*)vr$76, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$568$3 );
			fb_StrDelete( (FBSTRING*)&TMP$568$3 );
		}
		label$241:;
	}
	goto label$233;
	label$234:;
	if( SDSIZE$1 <= 4 ) goto label$243;
	{
		if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$245;
		{
			FBSTRING TMP$570$3;
			FBSTRING TMP$571$3;
			FBSTRING TMP$572$3;
			FBSTRING TMP$573$3;
			__builtin_memset( &TMP$573$3, 0, 12 );
			__builtin_memset( &TMP$570$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$570$3, (void*)"cvtpd2ps ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$571$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$571$3, (void*)vr$83, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$572$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$572$3, (void*)vr$86, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$573$3, -1, (void*)vr$89, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$573$3 );
			fb_StrDelete( (FBSTRING*)&TMP$573$3 );
		}
		goto label$244;
		label$245:;
		{
			FBSTRING TMP$574$3;
			FBSTRING TMP$575$3;
			FBSTRING TMP$576$3;
			FBSTRING TMP$577$3;
			__builtin_memset( &TMP$577$3, 0, 12 );
			__builtin_memset( &TMP$574$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$574$3, (void*)"cvtsd2ss ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$575$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$575$3, (void*)vr$95, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$576$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$576$3, (void*)vr$98, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$577$3, -1, (void*)vr$101, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$577$3 );
			fb_StrDelete( (FBSTRING*)&TMP$577$3 );
		}
		label$244:;
	}
	goto label$233;
	label$243:;
	{
		if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$247;
		{
			FBSTRING TMP$579$3;
			FBSTRING TMP$580$3;
			FBSTRING TMP$581$3;
			FBSTRING TMP$582$3;
			__builtin_memset( &TMP$582$3, 0, 12 );
			__builtin_memset( &TMP$579$3, 0, 12 );
			FBSTRING* vr$108 = fb_StrConcat( &TMP$579$3, (void*)"cvtps2pd ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$580$3, 0, 12 );
			FBSTRING* vr$111 = fb_StrConcat( &TMP$580$3, (void*)vr$108, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$581$3, 0, 12 );
			FBSTRING* vr$114 = fb_StrConcat( &TMP$581$3, (void*)vr$111, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$582$3, -1, (void*)vr$114, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$582$3 );
			fb_StrDelete( (FBSTRING*)&TMP$582$3 );
		}
		goto label$246;
		label$247:;
		{
			FBSTRING TMP$583$3;
			FBSTRING TMP$584$3;
			FBSTRING TMP$585$3;
			FBSTRING TMP$586$3;
			__builtin_memset( &TMP$586$3, 0, 12 );
			__builtin_memset( &TMP$583$3, 0, 12 );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$583$3, (void*)"cvtss2sd ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$584$3, 0, 12 );
			FBSTRING* vr$123 = fb_StrConcat( &TMP$584$3, (void*)vr$120, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$585$3, 0, 12 );
			FBSTRING* vr$126 = fb_StrConcat( &TMP$585$3, (void*)vr$123, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$586$3, -1, (void*)vr$126, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$586$3 );
			fb_StrDelete( (FBSTRING*)&TMP$586$3 );
		}
		label$246:;
	}
	label$233:;
	label$228:;
}

static void _EMITMOVF_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$587$1;
	int32 TMP$588$1;
	label$248:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, 0 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$250;
	TMP$587$1 = 24;
	goto label$773;
	label$250:;
	TMP$587$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$773:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$587$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$251;
	TMP$588$1 = 24;
	goto label$774;
	label$251:;
	TMP$588$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$774:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$588$1 * 28)) + 4);
	if( (-(SDSIZE$1 > 4) & -(DDSIZE$1 <= 4)) == 0 ) goto label$253;
	{
		if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$255;
		{
			FBSTRING TMP$589$3;
			FBSTRING TMP$590$3;
			FBSTRING TMP$591$3;
			FBSTRING TMP$592$3;
			__builtin_memset( &TMP$592$3, 0, 12 );
			__builtin_memset( &TMP$589$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$589$3, (void*)"cvtpd2ps ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$590$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$590$3, (void*)vr$17, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$591$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$591$3, (void*)vr$20, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$592$3, -1, (void*)vr$23, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$592$3 );
			fb_StrDelete( (FBSTRING*)&TMP$592$3 );
		}
		goto label$254;
		label$255:;
		{
			FBSTRING TMP$593$3;
			FBSTRING TMP$594$3;
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			__builtin_memset( &TMP$596$3, 0, 12 );
			__builtin_memset( &TMP$593$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$593$3, (void*)"cvtsd2ss ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$594$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$594$3, (void*)vr$29, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$595$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$595$3, (void*)vr$32, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$596$3, -1, (void*)vr$35, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$596$3 );
			fb_StrDelete( (FBSTRING*)&TMP$596$3 );
		}
		label$254:;
	}
	goto label$252;
	label$253:;
	if( (-(DDSIZE$1 > 4) & -(SDSIZE$1 <= 4)) == 0 ) goto label$256;
	{
		if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$258;
		{
			FBSTRING TMP$597$3;
			FBSTRING TMP$598$3;
			FBSTRING TMP$599$3;
			FBSTRING TMP$600$3;
			__builtin_memset( &TMP$600$3, 0, 12 );
			__builtin_memset( &TMP$597$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$597$3, (void*)"cvtps2pd ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$598$3, 0, 12 );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$598$3, (void*)vr$45, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$599$3, 0, 12 );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$599$3, (void*)vr$48, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$600$3, -1, (void*)vr$51, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$600$3 );
			fb_StrDelete( (FBSTRING*)&TMP$600$3 );
		}
		goto label$257;
		label$258:;
		{
			FBSTRING TMP$601$3;
			FBSTRING TMP$602$3;
			FBSTRING TMP$603$3;
			FBSTRING TMP$604$3;
			__builtin_memset( &TMP$604$3, 0, 12 );
			__builtin_memset( &TMP$601$3, 0, 12 );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$601$3, (void*)"cvtss2sd ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$602$3, 0, 12 );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$602$3, (void*)vr$57, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$603$3, 0, 12 );
			FBSTRING* vr$63 = fb_StrConcat( &TMP$603$3, (void*)vr$60, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$604$3, -1, (void*)vr$63, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$604$3 );
			fb_StrDelete( (FBSTRING*)&TMP$604$3 );
		}
		label$257:;
	}
	goto label$252;
	label$256:;
	{
		FBSTRING TMP$606$2;
		FBSTRING TMP$607$2;
		FBSTRING TMP$608$2;
		FBSTRING TMP$609$2;
		__builtin_memset( &TMP$609$2, 0, 12 );
		__builtin_memset( &TMP$606$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$606$2, (void*)"movaps ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$607$2, 0, 12 );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$607$2, (void*)vr$69, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$608$2, 0, 12 );
		FBSTRING* vr$75 = fb_StrConcat( &TMP$608$2, (void*)vr$72, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$609$2, -1, (void*)vr$75, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$609$2 );
		fb_StrDelete( (FBSTRING*)&TMP$609$2 );
	}
	label$252:;
	label$249:;
}

static void _EMITSWZREPF_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$610$1;
	label$259:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$261;
	TMP$610$1 = 24;
	goto label$775;
	label$261:;
	TMP$610$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$775:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$610$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( DDSIZE$1 <= 4 ) goto label$263;
	{
		FBSTRING TMP$612$2;
		FBSTRING TMP$613$2;
		FBSTRING TMP$614$2;
		FBSTRING TMP$615$2;
		__builtin_memset( &TMP$615$2, 0, 12 );
		__builtin_memset( &TMP$612$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$612$2, (void*)"unpcklpd ", 10, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$613$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$613$2, (void*)vr$8, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$614$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$614$2, (void*)vr$11, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$615$2, -1, (void*)vr$14, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$615$2 );
		fb_StrDelete( (FBSTRING*)&TMP$615$2 );
	}
	goto label$262;
	label$263:;
	{
		if( *(int32*)((uint8*)DVREG$1 + 20) != 2 ) goto label$265;
		{
			FBSTRING TMP$617$3;
			FBSTRING TMP$618$3;
			FBSTRING TMP$619$3;
			FBSTRING TMP$620$3;
			__builtin_memset( &TMP$620$3, 0, 12 );
			__builtin_memset( &TMP$617$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$617$3, (void*)"unpcklps ", 10, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$618$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$618$3, (void*)vr$21, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$619$3, 0, 12 );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$619$3, (void*)vr$24, -1, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$620$3, -1, (void*)vr$27, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$620$3 );
			fb_StrDelete( (FBSTRING*)&TMP$620$3 );
		}
		goto label$264;
		label$265:;
		{
			FBSTRING TMP$623$3;
			FBSTRING TMP$624$3;
			FBSTRING TMP$625$3;
			FBSTRING TMP$626$3;
			FBSTRING TMP$627$3;
			FBSTRING TMP$628$3;
			__builtin_memset( &TMP$628$3, 0, 12 );
			__builtin_memset( &TMP$623$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$623$3, (void*)"shufps ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$624$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$624$3, (void*)vr$33, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$625$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$625$3, (void*)vr$36, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$626$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$626$3, (void*)vr$39, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$627$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$627$3, (void*)vr$42, -1, (void*)"0x0", 4 );
			fb_StrAssign( (void*)&TMP$628$3, -1, (void*)vr$45, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$628$3 );
			fb_StrDelete( (FBSTRING*)&TMP$628$3 );
		}
		label$264:;
	}
	label$262:;
	label$260:;
}

static int32 HEMITCONVERTOPERANDS_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$629$1;
	int32 TMP$630$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$266:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$268;
	TMP$629$1 = 24;
	goto label$776;
	label$268:;
	TMP$629$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$776:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$629$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$269;
	TMP$630$1 = 24;
	goto label$777;
	label$269:;
	TMP$630$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$777:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$630$1 * 28)) + 4);
	fb$result$1 = 0;
	if( DDSIZE$1 <= 4 ) goto label$271;
	{
		if( SDSIZE$1 != 4 ) goto label$273;
		{
			if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$275;
			{
				FBSTRING TMP$631$4;
				FBSTRING TMP$632$4;
				__builtin_memset( &TMP$632$4, 0, 12 );
				__builtin_memset( &TMP$631$4, 0, 12 );
				FBSTRING* vr$15 = fb_StrConcat( &TMP$631$4, (void*)"cvtps2pd xmm7, ", 16, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$632$4, -1, (void*)vr$15, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$632$4 );
				fb_StrDelete( (FBSTRING*)&TMP$632$4 );
			}
			goto label$274;
			label$275:;
			{
				FBSTRING TMP$633$4;
				FBSTRING TMP$634$4;
				__builtin_memset( &TMP$634$4, 0, 12 );
				__builtin_memset( &TMP$633$4, 0, 12 );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$633$4, (void*)"cvtss2sd xmm7, ", 16, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$634$4, -1, (void*)vr$21, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$634$4 );
				fb_StrDelete( (FBSTRING*)&TMP$634$4 );
			}
			label$274:;
			fb$result$1 = -1;
		}
		label$273:;
		label$272:;
	}
	goto label$270;
	label$271:;
	{
		if( SDSIZE$1 <= 4 ) goto label$277;
		{
			if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$279;
			{
				FBSTRING TMP$635$4;
				FBSTRING TMP$636$4;
				__builtin_memset( &TMP$636$4, 0, 12 );
				__builtin_memset( &TMP$635$4, 0, 12 );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$635$4, (void*)"cvtpd2ps xmm7, ", 16, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$636$4, -1, (void*)vr$28, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$636$4 );
				fb_StrDelete( (FBSTRING*)&TMP$636$4 );
			}
			goto label$278;
			label$279:;
			{
				FBSTRING TMP$637$4;
				FBSTRING TMP$638$4;
				__builtin_memset( &TMP$638$4, 0, 12 );
				__builtin_memset( &TMP$637$4, 0, 12 );
				FBSTRING* vr$34 = fb_StrConcat( &TMP$637$4, (void*)"cvtsd2ss xmm7, ", 16, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$638$4, -1, (void*)vr$34, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$638$4 );
				fb_StrDelete( (FBSTRING*)&TMP$638$4 );
			}
			label$278:;
			fb$result$1 = -1;
		}
		label$277:;
		label$276:;
	}
	label$270:;
	label$267:;
	return fb$result$1;
}

static void _EMITADDF_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$639$1;
	int32 TMP$640$1;
	int32 TMP$661$1;
	label$280:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$282;
	TMP$639$1 = 24;
	goto label$778;
	label$282:;
	TMP$639$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$778:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$639$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$283;
	TMP$640$1 = 24;
	goto label$779;
	label$283:;
	TMP$640$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$779:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$640$1 * 28)) + 4);
	RETURNSIZE$1 = 0;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$285;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$284;
	label$285:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$286;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$286:;
	label$284:;
	if( RETURNSIZE$1 == 0 ) goto label$288;
	{
		FBSTRING TMP$641$2;
		FBSTRING TMP$642$2;
		__builtin_memset( &TMP$642$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$641$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$641$2, (void*)"sub esp, ", 10, (void*)vr$13, -1 );
		fb_StrAssign( (void*)&TMP$642$2, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$642$2 );
		fb_StrDelete( (FBSTRING*)&TMP$642$2 );
	}
	label$288:;
	label$287:;
	if( RETURNSIZE$1 != 8 ) goto label$290;
	{
		FBSTRING TMP$643$2;
		FBSTRING TMP$644$2;
		FBSTRING TMP$645$2;
		FBSTRING TMP$646$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$646$2, 0, 12 );
		__builtin_memset( &TMP$643$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$643$2, (void*)"movlpd ", 8, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$644$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$644$2, (void*)vr$22, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$645$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$645$2, (void*)vr$25, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$646$2, -1, (void*)vr$28, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$646$2 );
		fb_StrDelete( (FBSTRING*)&TMP$646$2 );
	}
	goto label$289;
	label$290:;
	if( RETURNSIZE$1 != 4 ) goto label$291;
	{
		FBSTRING TMP$647$2;
		FBSTRING TMP$648$2;
		FBSTRING TMP$649$2;
		FBSTRING TMP$650$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$650$2, 0, 12 );
		__builtin_memset( &TMP$647$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$647$2, (void*)"movss ", 7, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$648$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$648$2, (void*)vr$34, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$649$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$649$2, (void*)vr$37, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$650$2, -1, (void*)vr$40, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$650$2 );
		fb_StrDelete( (FBSTRING*)&TMP$650$2 );
	}
	label$291:;
	label$289:;
	if( RETURNSIZE$1 == 0 ) goto label$293;
	{
		FBSTRING TMP$651$2;
		FBSTRING TMP$652$2;
		__builtin_memset( &TMP$652$2, 0, 12 );
		FBSTRING* vr$44 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$651$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$651$2, (void*)"add esp, ", 10, (void*)vr$44, -1 );
		fb_StrAssign( (void*)&TMP$652$2, -1, (void*)vr$47, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$652$2 );
		fb_StrDelete( (FBSTRING*)&TMP$652$2 );
	}
	label$293:;
	label$292:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"adds", 5, 0 );
	if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$295;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"addp", 5, 0 );
		if( *(int32*)SVREG$1 == 4 ) goto label$297;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
			if( SDSIZE$1 <= 4 ) goto label$299;
			{
				FBSTRING TMP$655$4;
				FBSTRING TMP$656$4;
				__builtin_memset( &TMP$656$4, 0, 12 );
				__builtin_memset( &TMP$655$4, 0, 12 );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$655$4, (void*)"movupd xmm7, ", 14, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$656$4, -1, (void*)vr$55, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$656$4 );
				fb_StrDelete( (FBSTRING*)&TMP$656$4 );
			}
			goto label$298;
			label$299:;
			{
				if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$301;
				{
					FBSTRING TMP$657$5;
					FBSTRING TMP$658$5;
					__builtin_memset( &TMP$658$5, 0, 12 );
					__builtin_memset( &TMP$657$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$657$5, (void*)"movlps xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$658$5, -1, (void*)vr$62, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$658$5 );
					fb_StrDelete( (FBSTRING*)&TMP$658$5 );
				}
				goto label$300;
				label$301:;
				{
					FBSTRING TMP$659$5;
					FBSTRING TMP$660$5;
					__builtin_memset( &TMP$660$5, 0, 12 );
					__builtin_memset( &TMP$659$5, 0, 12 );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$659$5, (void*)"movups xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$660$5, -1, (void*)vr$68, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$660$5 );
					fb_StrDelete( (FBSTRING*)&TMP$660$5 );
				}
				label$300:;
			}
			label$298:;
			fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
		}
		label$297:;
		label$296:;
	}
	label$295:;
	label$294:;
	int32 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0 ) goto label$303;
	{
		fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
	}
	label$303:;
	label$302:;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$304;
	TMP$661$1 = 24;
	goto label$780;
	label$304:;
	TMP$661$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$780:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$661$1 * 28)) != 1 ) goto label$306;
	{
		if( DDSIZE$1 <= 4 ) goto label$308;
		{
			FBSTRING TMP$663$3;
			FBSTRING TMP$664$3;
			FBSTRING TMP$665$3;
			FBSTRING TMP$666$3;
			FBSTRING TMP$667$3;
			__builtin_memset( &TMP$667$3, 0, 12 );
			__builtin_memset( &TMP$663$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$663$3, (void*)&OSTR$1, -1, (void*)"d ", 3 );
			__builtin_memset( &TMP$664$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$664$3, (void*)vr$80, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$665$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$665$3, (void*)vr$83, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$666$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$666$3, (void*)vr$86, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$667$3, -1, (void*)vr$89, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$667$3 );
			fb_StrDelete( (FBSTRING*)&TMP$667$3 );
		}
		goto label$307;
		label$308:;
		{
			FBSTRING TMP$669$3;
			FBSTRING TMP$670$3;
			FBSTRING TMP$671$3;
			FBSTRING TMP$672$3;
			FBSTRING TMP$673$3;
			__builtin_memset( &TMP$673$3, 0, 12 );
			__builtin_memset( &TMP$669$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$669$3, (void*)&OSTR$1, -1, (void*)"s ", 3 );
			__builtin_memset( &TMP$670$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$670$3, (void*)vr$95, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$671$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$671$3, (void*)vr$98, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$672$3, 0, 12 );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$672$3, (void*)vr$101, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$673$3, -1, (void*)vr$104, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$673$3 );
			fb_StrDelete( (FBSTRING*)&TMP$673$3 );
		}
		label$307:;
	}
	goto label$305;
	label$306:;
	{
		OUTP( (uint8*)" implement 'add integer to float'" );
	}
	label$305:;
	label$281:;
}

static void _EMITSUBF_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$675$1;
	int32 TMP$676$1;
	int32 TMP$697$1;
	label$309:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$311;
	TMP$675$1 = 24;
	goto label$781;
	label$311:;
	TMP$675$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$781:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$675$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$312;
	TMP$676$1 = 24;
	goto label$782;
	label$312:;
	TMP$676$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$782:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$676$1 * 28)) + 4);
	RETURNSIZE$1 = 0;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$314;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$313;
	label$314:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$315;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$315:;
	label$313:;
	if( RETURNSIZE$1 == 0 ) goto label$317;
	{
		FBSTRING TMP$677$2;
		FBSTRING TMP$678$2;
		__builtin_memset( &TMP$678$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$677$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$677$2, (void*)"sub esp, ", 10, (void*)vr$13, -1 );
		fb_StrAssign( (void*)&TMP$678$2, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$678$2 );
		fb_StrDelete( (FBSTRING*)&TMP$678$2 );
	}
	label$317:;
	label$316:;
	if( RETURNSIZE$1 != 8 ) goto label$319;
	{
		FBSTRING TMP$679$2;
		FBSTRING TMP$680$2;
		FBSTRING TMP$681$2;
		FBSTRING TMP$682$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$682$2, 0, 12 );
		__builtin_memset( &TMP$679$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$679$2, (void*)"movlpd ", 8, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$680$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$680$2, (void*)vr$22, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$681$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$681$2, (void*)vr$25, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$682$2, -1, (void*)vr$28, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$682$2 );
		fb_StrDelete( (FBSTRING*)&TMP$682$2 );
	}
	goto label$318;
	label$319:;
	if( RETURNSIZE$1 != 4 ) goto label$320;
	{
		FBSTRING TMP$683$2;
		FBSTRING TMP$684$2;
		FBSTRING TMP$685$2;
		FBSTRING TMP$686$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$686$2, 0, 12 );
		__builtin_memset( &TMP$683$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$683$2, (void*)"movss ", 7, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$684$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$684$2, (void*)vr$34, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$685$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$685$2, (void*)vr$37, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$686$2, -1, (void*)vr$40, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$686$2 );
		fb_StrDelete( (FBSTRING*)&TMP$686$2 );
	}
	label$320:;
	label$318:;
	if( RETURNSIZE$1 == 0 ) goto label$322;
	{
		FBSTRING TMP$687$2;
		FBSTRING TMP$688$2;
		__builtin_memset( &TMP$688$2, 0, 12 );
		FBSTRING* vr$44 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$687$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$687$2, (void*)"add esp, ", 10, (void*)vr$44, -1 );
		fb_StrAssign( (void*)&TMP$688$2, -1, (void*)vr$47, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$688$2 );
		fb_StrDelete( (FBSTRING*)&TMP$688$2 );
	}
	label$322:;
	label$321:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"subs", 5, 0 );
	if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$324;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"subp", 5, 0 );
		if( *(int32*)SVREG$1 == 4 ) goto label$326;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
			if( SDSIZE$1 <= 4 ) goto label$328;
			{
				FBSTRING TMP$691$4;
				FBSTRING TMP$692$4;
				__builtin_memset( &TMP$692$4, 0, 12 );
				__builtin_memset( &TMP$691$4, 0, 12 );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$691$4, (void*)"movupd xmm7, ", 14, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$692$4, -1, (void*)vr$55, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$692$4 );
				fb_StrDelete( (FBSTRING*)&TMP$692$4 );
			}
			goto label$327;
			label$328:;
			{
				if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$330;
				{
					FBSTRING TMP$693$5;
					FBSTRING TMP$694$5;
					__builtin_memset( &TMP$694$5, 0, 12 );
					__builtin_memset( &TMP$693$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$693$5, (void*)"movlps xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$694$5, -1, (void*)vr$62, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$694$5 );
					fb_StrDelete( (FBSTRING*)&TMP$694$5 );
				}
				goto label$329;
				label$330:;
				{
					FBSTRING TMP$695$5;
					FBSTRING TMP$696$5;
					__builtin_memset( &TMP$696$5, 0, 12 );
					__builtin_memset( &TMP$695$5, 0, 12 );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$695$5, (void*)"movups xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$696$5, -1, (void*)vr$68, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$696$5 );
					fb_StrDelete( (FBSTRING*)&TMP$696$5 );
				}
				label$329:;
			}
			label$327:;
			fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
		}
		label$326:;
		label$325:;
	}
	label$324:;
	label$323:;
	int32 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0 ) goto label$332;
	{
		fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
	}
	label$332:;
	label$331:;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$333;
	TMP$697$1 = 24;
	goto label$783;
	label$333:;
	TMP$697$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$783:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$697$1 * 28)) != 1 ) goto label$335;
	{
		if( DDSIZE$1 <= 4 ) goto label$337;
		{
			FBSTRING TMP$698$3;
			FBSTRING TMP$699$3;
			FBSTRING TMP$700$3;
			FBSTRING TMP$701$3;
			FBSTRING TMP$702$3;
			__builtin_memset( &TMP$702$3, 0, 12 );
			__builtin_memset( &TMP$698$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$698$3, (void*)&OSTR$1, -1, (void*)"d ", 3 );
			__builtin_memset( &TMP$699$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$699$3, (void*)vr$80, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$700$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$700$3, (void*)vr$83, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$701$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$701$3, (void*)vr$86, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$702$3, -1, (void*)vr$89, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$702$3 );
			fb_StrDelete( (FBSTRING*)&TMP$702$3 );
		}
		goto label$336;
		label$337:;
		{
			FBSTRING TMP$703$3;
			FBSTRING TMP$704$3;
			FBSTRING TMP$705$3;
			FBSTRING TMP$706$3;
			FBSTRING TMP$707$3;
			__builtin_memset( &TMP$707$3, 0, 12 );
			__builtin_memset( &TMP$703$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$703$3, (void*)&OSTR$1, -1, (void*)"s ", 3 );
			__builtin_memset( &TMP$704$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$704$3, (void*)vr$95, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$705$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$705$3, (void*)vr$98, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$706$3, 0, 12 );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$706$3, (void*)vr$101, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$707$3, -1, (void*)vr$104, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$707$3 );
			fb_StrDelete( (FBSTRING*)&TMP$707$3 );
		}
		label$336:;
	}
	goto label$334;
	label$335:;
	{
		OUTP( (uint8*)" implement 'subtract integer from float'" );
	}
	label$334:;
	label$310:;
}

static void _EMITMULF_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$709$1;
	int32 TMP$710$1;
	int32 TMP$731$1;
	label$338:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$340;
	TMP$709$1 = 24;
	goto label$784;
	label$340:;
	TMP$709$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$784:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$709$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$341;
	TMP$710$1 = 24;
	goto label$785;
	label$341:;
	TMP$710$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$785:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$710$1 * 28)) + 4);
	RETURNSIZE$1 = 0;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$343;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$342;
	label$343:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$344;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$344:;
	label$342:;
	if( RETURNSIZE$1 == 0 ) goto label$346;
	{
		FBSTRING TMP$711$2;
		FBSTRING TMP$712$2;
		__builtin_memset( &TMP$712$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$711$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$711$2, (void*)"sub esp, ", 10, (void*)vr$13, -1 );
		fb_StrAssign( (void*)&TMP$712$2, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$712$2 );
		fb_StrDelete( (FBSTRING*)&TMP$712$2 );
	}
	label$346:;
	label$345:;
	if( RETURNSIZE$1 != 8 ) goto label$348;
	{
		FBSTRING TMP$713$2;
		FBSTRING TMP$714$2;
		FBSTRING TMP$715$2;
		FBSTRING TMP$716$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$716$2, 0, 12 );
		__builtin_memset( &TMP$713$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$713$2, (void*)"movlpd ", 8, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$714$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$714$2, (void*)vr$22, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$715$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$715$2, (void*)vr$25, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$716$2, -1, (void*)vr$28, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$716$2 );
		fb_StrDelete( (FBSTRING*)&TMP$716$2 );
	}
	goto label$347;
	label$348:;
	if( RETURNSIZE$1 != 4 ) goto label$349;
	{
		FBSTRING TMP$717$2;
		FBSTRING TMP$718$2;
		FBSTRING TMP$719$2;
		FBSTRING TMP$720$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$720$2, 0, 12 );
		__builtin_memset( &TMP$717$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$717$2, (void*)"movss ", 7, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$718$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$718$2, (void*)vr$34, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$719$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$719$2, (void*)vr$37, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$720$2, -1, (void*)vr$40, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$720$2 );
		fb_StrDelete( (FBSTRING*)&TMP$720$2 );
	}
	label$349:;
	label$347:;
	if( RETURNSIZE$1 == 0 ) goto label$351;
	{
		FBSTRING TMP$721$2;
		FBSTRING TMP$722$2;
		__builtin_memset( &TMP$722$2, 0, 12 );
		FBSTRING* vr$44 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$721$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$721$2, (void*)"add esp, ", 10, (void*)vr$44, -1 );
		fb_StrAssign( (void*)&TMP$722$2, -1, (void*)vr$47, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$722$2 );
		fb_StrDelete( (FBSTRING*)&TMP$722$2 );
	}
	label$351:;
	label$350:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"muls", 5, 0 );
	if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$353;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mulp", 5, 0 );
		if( *(int32*)SVREG$1 == 4 ) goto label$355;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
			if( SDSIZE$1 <= 4 ) goto label$357;
			{
				FBSTRING TMP$725$4;
				FBSTRING TMP$726$4;
				__builtin_memset( &TMP$726$4, 0, 12 );
				__builtin_memset( &TMP$725$4, 0, 12 );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$725$4, (void*)"movupd xmm7, ", 14, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$726$4, -1, (void*)vr$55, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$726$4 );
				fb_StrDelete( (FBSTRING*)&TMP$726$4 );
			}
			goto label$356;
			label$357:;
			{
				if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$359;
				{
					FBSTRING TMP$727$5;
					FBSTRING TMP$728$5;
					__builtin_memset( &TMP$728$5, 0, 12 );
					__builtin_memset( &TMP$727$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$727$5, (void*)"movlps xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$728$5, -1, (void*)vr$62, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$728$5 );
					fb_StrDelete( (FBSTRING*)&TMP$728$5 );
				}
				goto label$358;
				label$359:;
				{
					FBSTRING TMP$729$5;
					FBSTRING TMP$730$5;
					__builtin_memset( &TMP$730$5, 0, 12 );
					__builtin_memset( &TMP$729$5, 0, 12 );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$729$5, (void*)"movups xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$730$5, -1, (void*)vr$68, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$730$5 );
					fb_StrDelete( (FBSTRING*)&TMP$730$5 );
				}
				label$358:;
			}
			label$356:;
			fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
		}
		label$355:;
		label$354:;
	}
	label$353:;
	label$352:;
	int32 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0 ) goto label$361;
	{
		fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
	}
	label$361:;
	label$360:;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$362;
	TMP$731$1 = 24;
	goto label$786;
	label$362:;
	TMP$731$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$786:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$731$1 * 28)) != 1 ) goto label$364;
	{
		if( DDSIZE$1 <= 4 ) goto label$366;
		{
			FBSTRING TMP$732$3;
			FBSTRING TMP$733$3;
			FBSTRING TMP$734$3;
			FBSTRING TMP$735$3;
			FBSTRING TMP$736$3;
			__builtin_memset( &TMP$736$3, 0, 12 );
			__builtin_memset( &TMP$732$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$732$3, (void*)&OSTR$1, -1, (void*)"d ", 3 );
			__builtin_memset( &TMP$733$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$733$3, (void*)vr$80, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$734$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$734$3, (void*)vr$83, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$735$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$735$3, (void*)vr$86, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$736$3, -1, (void*)vr$89, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$736$3 );
			fb_StrDelete( (FBSTRING*)&TMP$736$3 );
		}
		goto label$365;
		label$366:;
		{
			FBSTRING TMP$737$3;
			FBSTRING TMP$738$3;
			FBSTRING TMP$739$3;
			FBSTRING TMP$740$3;
			FBSTRING TMP$741$3;
			__builtin_memset( &TMP$741$3, 0, 12 );
			__builtin_memset( &TMP$737$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$737$3, (void*)&OSTR$1, -1, (void*)"s ", 3 );
			__builtin_memset( &TMP$738$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$738$3, (void*)vr$95, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$739$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$739$3, (void*)vr$98, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$740$3, 0, 12 );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$740$3, (void*)vr$101, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$741$3, -1, (void*)vr$104, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$741$3 );
			fb_StrDelete( (FBSTRING*)&TMP$741$3 );
		}
		label$365:;
	}
	goto label$363;
	label$364:;
	{
		OUTP( (uint8*)" implement 'multiply float by integer'" );
	}
	label$363:;
	label$339:;
}

static void _EMITDIVF_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$743$1;
	int32 TMP$744$1;
	int32 TMP$765$1;
	label$367:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$369;
	TMP$743$1 = 24;
	goto label$787;
	label$369:;
	TMP$743$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$787:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$743$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$370;
	TMP$744$1 = 24;
	goto label$788;
	label$370:;
	TMP$744$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$788:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$744$1 * 28)) + 4);
	RETURNSIZE$1 = 0;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$372;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$371;
	label$372:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$373;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$373:;
	label$371:;
	if( RETURNSIZE$1 == 0 ) goto label$375;
	{
		FBSTRING TMP$745$2;
		FBSTRING TMP$746$2;
		__builtin_memset( &TMP$746$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$745$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$745$2, (void*)"sub esp, ", 10, (void*)vr$13, -1 );
		fb_StrAssign( (void*)&TMP$746$2, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$746$2 );
		fb_StrDelete( (FBSTRING*)&TMP$746$2 );
	}
	label$375:;
	label$374:;
	if( RETURNSIZE$1 != 8 ) goto label$377;
	{
		FBSTRING TMP$747$2;
		FBSTRING TMP$748$2;
		FBSTRING TMP$749$2;
		FBSTRING TMP$750$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$750$2, 0, 12 );
		__builtin_memset( &TMP$747$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$747$2, (void*)"movlpd ", 8, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$748$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$748$2, (void*)vr$22, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$749$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$749$2, (void*)vr$25, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$750$2, -1, (void*)vr$28, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$750$2 );
		fb_StrDelete( (FBSTRING*)&TMP$750$2 );
	}
	goto label$376;
	label$377:;
	if( RETURNSIZE$1 != 4 ) goto label$378;
	{
		FBSTRING TMP$751$2;
		FBSTRING TMP$752$2;
		FBSTRING TMP$753$2;
		FBSTRING TMP$754$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$754$2, 0, 12 );
		__builtin_memset( &TMP$751$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$751$2, (void*)"movss ", 7, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$752$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$752$2, (void*)vr$34, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$753$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$753$2, (void*)vr$37, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$754$2, -1, (void*)vr$40, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$754$2 );
		fb_StrDelete( (FBSTRING*)&TMP$754$2 );
	}
	label$378:;
	label$376:;
	if( RETURNSIZE$1 == 0 ) goto label$380;
	{
		FBSTRING TMP$755$2;
		FBSTRING TMP$756$2;
		__builtin_memset( &TMP$756$2, 0, 12 );
		FBSTRING* vr$44 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$755$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$755$2, (void*)"add esp, ", 10, (void*)vr$44, -1 );
		fb_StrAssign( (void*)&TMP$756$2, -1, (void*)vr$47, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$756$2 );
		fb_StrDelete( (FBSTRING*)&TMP$756$2 );
	}
	label$380:;
	label$379:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"divs", 5, 0 );
	if( *(int32*)((uint8*)SVREG$1 + 20) == 0 ) goto label$382;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"divp", 5, 0 );
		if( *(int32*)SVREG$1 == 4 ) goto label$384;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
			if( SDSIZE$1 <= 4 ) goto label$386;
			{
				FBSTRING TMP$759$4;
				FBSTRING TMP$760$4;
				__builtin_memset( &TMP$760$4, 0, 12 );
				__builtin_memset( &TMP$759$4, 0, 12 );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$759$4, (void*)"movupd xmm7, ", 14, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$760$4, -1, (void*)vr$55, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$760$4 );
				fb_StrDelete( (FBSTRING*)&TMP$760$4 );
			}
			goto label$385;
			label$386:;
			{
				if( *(int32*)((uint8*)SVREG$1 + 20) != 2 ) goto label$388;
				{
					FBSTRING TMP$761$5;
					FBSTRING TMP$762$5;
					__builtin_memset( &TMP$762$5, 0, 12 );
					__builtin_memset( &TMP$761$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$761$5, (void*)"movlps xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$762$5, -1, (void*)vr$62, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$762$5 );
					fb_StrDelete( (FBSTRING*)&TMP$762$5 );
				}
				goto label$387;
				label$388:;
				{
					FBSTRING TMP$763$5;
					FBSTRING TMP$764$5;
					__builtin_memset( &TMP$764$5, 0, 12 );
					__builtin_memset( &TMP$763$5, 0, 12 );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$763$5, (void*)"movups xmm7, ", 14, (void*)&SRC$1, -1 );
					fb_StrAssign( (void*)&TMP$764$5, -1, (void*)vr$68, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$764$5 );
					fb_StrDelete( (FBSTRING*)&TMP$764$5 );
				}
				label$387:;
			}
			label$385:;
			fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
		}
		label$384:;
		label$383:;
	}
	label$382:;
	label$381:;
	int32 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0 ) goto label$390;
	{
		fb_StrAssign( (void*)&SRC$1, -1, (void*)"xmm7", 5, 0 );
	}
	label$390:;
	label$389:;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$391;
	TMP$765$1 = 24;
	goto label$789;
	label$391:;
	TMP$765$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$789:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$765$1 * 28)) != 1 ) goto label$393;
	{
		if( DDSIZE$1 <= 4 ) goto label$395;
		{
			FBSTRING TMP$766$3;
			FBSTRING TMP$767$3;
			FBSTRING TMP$768$3;
			FBSTRING TMP$769$3;
			FBSTRING TMP$770$3;
			__builtin_memset( &TMP$770$3, 0, 12 );
			__builtin_memset( &TMP$766$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$766$3, (void*)&OSTR$1, -1, (void*)"d ", 3 );
			__builtin_memset( &TMP$767$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$767$3, (void*)vr$80, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$768$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$768$3, (void*)vr$83, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$769$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$769$3, (void*)vr$86, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$770$3, -1, (void*)vr$89, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$770$3 );
			fb_StrDelete( (FBSTRING*)&TMP$770$3 );
		}
		goto label$394;
		label$395:;
		{
			FBSTRING TMP$771$3;
			FBSTRING TMP$772$3;
			FBSTRING TMP$773$3;
			FBSTRING TMP$774$3;
			FBSTRING TMP$775$3;
			__builtin_memset( &TMP$775$3, 0, 12 );
			__builtin_memset( &TMP$771$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$771$3, (void*)&OSTR$1, -1, (void*)"s ", 3 );
			__builtin_memset( &TMP$772$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$772$3, (void*)vr$95, -1, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$773$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$773$3, (void*)vr$98, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$774$3, 0, 12 );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$774$3, (void*)vr$101, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$775$3, -1, (void*)vr$104, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$775$3 );
			fb_StrDelete( (FBSTRING*)&TMP$775$3 );
		}
		label$394:;
	}
	goto label$392;
	label$393:;
	{
		OUTP( (uint8*)" implement 'divide float by integer'" );
	}
	label$392:;
	label$368:;
}

static void _EMITATN2_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$777$1;
	int32 TMP$778$1;
	label$396:;
	static FBSTRING SRC$1;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 ADJUSTSTACK$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$398;
	TMP$777$1 = 24;
	goto label$790;
	label$398:;
	TMP$777$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$790:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$777$1 * 28)) + 4);
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$399;
	TMP$778$1 = 24;
	goto label$791;
	label$399:;
	TMP$778$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$791:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$778$1 * 28)) + 4);
	ADJUSTSTACK$1 = 0;
	if( *(int32*)DVREG$1 != 4 ) goto label$401;
	{
		OUTP( (uint8*)"sub esp, 8" );
		ADJUSTSTACK$1 = -1;
		if( DDSIZE$1 <= 4 ) goto label$403;
		{
			FBSTRING TMP$779$3;
			FBSTRING TMP$780$3;
			__builtin_memset( &TMP$780$3, 0, 12 );
			__builtin_memset( &TMP$779$3, 0, 12 );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$779$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$780$3, -1, (void*)vr$14, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$780$3 );
			fb_StrDelete( (FBSTRING*)&TMP$780$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$402;
		label$403:;
		{
			FBSTRING TMP$781$3;
			FBSTRING TMP$782$3;
			__builtin_memset( &TMP$782$3, 0, 12 );
			__builtin_memset( &TMP$781$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$781$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$782$3, -1, (void*)vr$20, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$782$3 );
			fb_StrDelete( (FBSTRING*)&TMP$782$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$402:;
	}
	goto label$400;
	label$401:;
	{
		FBSTRING TMP$783$2;
		FBSTRING TMP$784$2;
		__builtin_memset( &TMP$784$2, 0, 12 );
		__builtin_memset( &TMP$783$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$783$2, (void*)"fld ", 5, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$784$2, -1, (void*)vr$26, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$784$2 );
		fb_StrDelete( (FBSTRING*)&TMP$784$2 );
	}
	label$400:;
	if( *(int32*)SVREG$1 != 4 ) goto label$405;
	{
		if( ADJUSTSTACK$1 != 0 ) goto label$407;
		{
			OUTP( (uint8*)"sub esp, 8" );
			ADJUSTSTACK$1 = -1;
		}
		label$407:;
		label$406:;
		if( SDSIZE$1 <= 4 ) goto label$409;
		{
			FBSTRING TMP$785$3;
			FBSTRING TMP$786$3;
			__builtin_memset( &TMP$786$3, 0, 12 );
			__builtin_memset( &TMP$785$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$785$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$786$3, -1, (void*)vr$33, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$786$3 );
			fb_StrDelete( (FBSTRING*)&TMP$786$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$408;
		label$409:;
		{
			FBSTRING TMP$787$3;
			FBSTRING TMP$788$3;
			__builtin_memset( &TMP$788$3, 0, 12 );
			__builtin_memset( &TMP$787$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$787$3, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$788$3, -1, (void*)vr$39, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$788$3 );
			fb_StrDelete( (FBSTRING*)&TMP$788$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$408:;
	}
	goto label$404;
	label$405:;
	{
		FBSTRING TMP$789$2;
		FBSTRING TMP$790$2;
		__builtin_memset( &TMP$790$2, 0, 12 );
		__builtin_memset( &TMP$789$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$789$2, (void*)"fld ", 5, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$790$2, -1, (void*)vr$45, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$790$2 );
		fb_StrDelete( (FBSTRING*)&TMP$790$2 );
	}
	label$404:;
	OUTP( (uint8*)"fpatan" );
	if( DDSIZE$1 <= 4 ) goto label$411;
	{
		FBSTRING TMP$792$2;
		FBSTRING TMP$793$2;
		FBSTRING TMP$794$2;
		FBSTRING TMP$795$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$795$2, 0, 12 );
		__builtin_memset( &TMP$792$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$792$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$793$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$793$2, (void*)vr$51, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$794$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$794$2, (void*)vr$54, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$795$2, -1, (void*)vr$57, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$795$2 );
		fb_StrDelete( (FBSTRING*)&TMP$795$2 );
	}
	goto label$410;
	label$411:;
	{
		FBSTRING TMP$796$2;
		FBSTRING TMP$797$2;
		FBSTRING TMP$798$2;
		FBSTRING TMP$799$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$799$2, 0, 12 );
		__builtin_memset( &TMP$796$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$796$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$797$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$797$2, (void*)vr$63, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$798$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$798$2, (void*)vr$66, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$799$2, -1, (void*)vr$69, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$799$2 );
		fb_StrDelete( (FBSTRING*)&TMP$799$2 );
	}
	label$410:;
	if( ADJUSTSTACK$1 == 0 ) goto label$413;
	{
		OUTP( (uint8*)"add esp, 8" );
	}
	label$413:;
	label$412:;
	label$397:;
}

static void _EMITPOW_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$414:;
	static FBSTRING SRC$1;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 ADJUSTSTACK$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	ADJUSTSTACK$1 = 0;
	if( *(int32*)DVREG$1 != 4 ) goto label$417;
	{
		OUTP( (uint8*)"sub esp, 8" );
		ADJUSTSTACK$1 = -1;
		if( DDSIZE$1 <= 4 ) goto label$419;
		{
			FBSTRING TMP$800$3;
			FBSTRING TMP$801$3;
			__builtin_memset( &TMP$801$3, 0, 12 );
			__builtin_memset( &TMP$800$3, 0, 12 );
			FBSTRING* vr$4 = fb_StrConcat( &TMP$800$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$801$3, -1, (void*)vr$4, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$801$3 );
			fb_StrDelete( (FBSTRING*)&TMP$801$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$418;
		label$419:;
		{
			FBSTRING TMP$802$3;
			FBSTRING TMP$803$3;
			__builtin_memset( &TMP$803$3, 0, 12 );
			__builtin_memset( &TMP$802$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$802$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$803$3, -1, (void*)vr$10, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$803$3 );
			fb_StrDelete( (FBSTRING*)&TMP$803$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$418:;
	}
	goto label$416;
	label$417:;
	{
		FBSTRING TMP$804$2;
		FBSTRING TMP$805$2;
		__builtin_memset( &TMP$805$2, 0, 12 );
		__builtin_memset( &TMP$804$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$804$2, (void*)"fld ", 5, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$805$2, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$805$2 );
		fb_StrDelete( (FBSTRING*)&TMP$805$2 );
	}
	label$416:;
	if( *(int32*)SVREG$1 != 4 ) goto label$421;
	{
		if( ADJUSTSTACK$1 != 0 ) goto label$423;
		{
			OUTP( (uint8*)"sub esp, 8" );
			ADJUSTSTACK$1 = -1;
		}
		label$423:;
		label$422:;
		if( SDSIZE$1 <= 4 ) goto label$425;
		{
			FBSTRING TMP$806$3;
			FBSTRING TMP$807$3;
			__builtin_memset( &TMP$807$3, 0, 12 );
			__builtin_memset( &TMP$806$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$806$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$807$3, -1, (void*)vr$23, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$807$3 );
			fb_StrDelete( (FBSTRING*)&TMP$807$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$424;
		label$425:;
		{
			FBSTRING TMP$808$3;
			FBSTRING TMP$809$3;
			__builtin_memset( &TMP$809$3, 0, 12 );
			__builtin_memset( &TMP$808$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$808$3, (void*)"movss dword ptr [esp], ", 24, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$809$3, -1, (void*)vr$29, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$809$3 );
			fb_StrDelete( (FBSTRING*)&TMP$809$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$424:;
	}
	goto label$420;
	label$421:;
	{
		FBSTRING TMP$810$2;
		FBSTRING TMP$811$2;
		__builtin_memset( &TMP$811$2, 0, 12 );
		__builtin_memset( &TMP$810$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$810$2, (void*)"fld ", 5, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$811$2, -1, (void*)vr$35, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$811$2 );
		fb_StrDelete( (FBSTRING*)&TMP$811$2 );
	}
	label$420:;
	OUTP( (uint8*)"fabs" );
	OUTP( (uint8*)"fyl2x" );
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"frndint" );
	OUTP( (uint8*)"fsub st(1), st(0)" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"f2xm1" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"faddp" );
	OUTP( (uint8*)"fscale" );
	OUTP( (uint8*)"fstp st(1)" );
	if( DDSIZE$1 <= 4 ) goto label$427;
	{
		FBSTRING TMP$821$2;
		FBSTRING TMP$822$2;
		FBSTRING TMP$823$2;
		FBSTRING TMP$824$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$824$2, 0, 12 );
		__builtin_memset( &TMP$821$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$821$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$822$2, 0, 12 );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$822$2, (void*)vr$41, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$823$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$823$2, (void*)vr$44, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$824$2, -1, (void*)vr$47, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$824$2 );
		fb_StrDelete( (FBSTRING*)&TMP$824$2 );
	}
	goto label$426;
	label$427:;
	{
		FBSTRING TMP$825$2;
		FBSTRING TMP$826$2;
		FBSTRING TMP$827$2;
		FBSTRING TMP$828$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$828$2, 0, 12 );
		__builtin_memset( &TMP$825$2, 0, 12 );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$825$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$826$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$826$2, (void*)vr$53, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$827$2, 0, 12 );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$827$2, (void*)vr$56, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$828$2, -1, (void*)vr$59, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$828$2 );
		fb_StrDelete( (FBSTRING*)&TMP$828$2 );
	}
	label$426:;
	if( ADJUSTSTACK$1 == 0 ) goto label$429;
	{
		OUTP( (uint8*)"add esp, 8" );
	}
	label$429:;
	label$428:;
	label$415:;
}

static void HCMPF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, uint8* MASK$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$829$1;
	int32 TMP$830$1;
	label$430:;
	static FBSTRING RNAME$1;
	static FBSTRING RNAME8$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static int32 ISEAXFREE$1;
	static int32 ISEDXFREE$1;
	static int32 SDSIZE$1;
	static int32 DDSIZE$1;
	static int32 RETURNSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$432;
	TMP$829$1 = 24;
	goto label$792;
	label$432:;
	TMP$829$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$792:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$829$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$433;
	TMP$830$1 = 24;
	goto label$793;
	label$433:;
	TMP$830$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$793:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$830$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$435;
	{
		uint8* vr$10 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$10, 0, 0 );
	}
	goto label$434;
	label$435:;
	{
		uint8* vr$11 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$11, 0, 0 );
	}
	label$434:;
	RETURNSIZE$1 = 0;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$437;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$436;
	label$437:;
	if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$438;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$438:;
	label$436:;
	if( RETURNSIZE$1 == 0 ) goto label$440;
	{
		FBSTRING TMP$831$2;
		FBSTRING TMP$832$2;
		__builtin_memset( &TMP$832$2, 0, 12 );
		FBSTRING* vr$15 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$831$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$831$2, (void*)"sub esp, ", 10, (void*)vr$15, -1 );
		fb_StrAssign( (void*)&TMP$832$2, -1, (void*)vr$18, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$832$2 );
		fb_StrDelete( (FBSTRING*)&TMP$832$2 );
	}
	label$440:;
	label$439:;
	if( RETURNSIZE$1 != 8 ) goto label$442;
	{
		FBSTRING TMP$833$2;
		FBSTRING TMP$834$2;
		FBSTRING TMP$835$2;
		FBSTRING TMP$836$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$836$2, 0, 12 );
		__builtin_memset( &TMP$833$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$833$2, (void*)"movlpd ", 8, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$834$2, 0, 12 );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$834$2, (void*)vr$24, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$835$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$835$2, (void*)vr$27, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$836$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$836$2 );
		fb_StrDelete( (FBSTRING*)&TMP$836$2 );
	}
	goto label$441;
	label$442:;
	if( RETURNSIZE$1 != 4 ) goto label$443;
	{
		FBSTRING TMP$837$2;
		FBSTRING TMP$838$2;
		FBSTRING TMP$839$2;
		FBSTRING TMP$840$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$840$2, 0, 12 );
		__builtin_memset( &TMP$837$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$837$2, (void*)"movss ", 7, (void*)&OSTR$1, -1 );
		__builtin_memset( &TMP$838$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$838$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$839$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$839$2, (void*)vr$39, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$840$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$840$2 );
		fb_StrDelete( (FBSTRING*)&TMP$840$2 );
	}
	label$443:;
	label$441:;
	if( RETURNSIZE$1 == 0 ) goto label$445;
	{
		FBSTRING TMP$841$2;
		FBSTRING TMP$842$2;
		__builtin_memset( &TMP$842$2, 0, 12 );
		FBSTRING* vr$46 = fb_IntToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$841$2, 0, 12 );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$841$2, (void*)"add esp, ", 10, (void*)vr$46, -1 );
		fb_StrAssign( (void*)&TMP$842$2, -1, (void*)vr$49, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$842$2 );
		fb_StrDelete( (FBSTRING*)&TMP$842$2 );
	}
	label$445:;
	label$444:;
	if( DDSIZE$1 <= 4 ) goto label$447;
	{
		if( SDSIZE$1 <= 4 ) goto label$449;
		{
			FBSTRING TMP$844$3;
			FBSTRING TMP$845$3;
			FBSTRING TMP$846$3;
			FBSTRING TMP$847$3;
			__builtin_memset( &TMP$847$3, 0, 12 );
			__builtin_memset( &TMP$844$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$844$3, (void*)"comisd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$845$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$845$3, (void*)vr$55, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$846$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$846$3, (void*)vr$58, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$847$3, -1, (void*)vr$61, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$847$3 );
			fb_StrDelete( (FBSTRING*)&TMP$847$3 );
		}
		goto label$448;
		label$449:;
		{
			FBSTRING TMP$848$3;
			FBSTRING TMP$849$3;
			FBSTRING TMP$850$3;
			FBSTRING TMP$851$3;
			FBSTRING TMP$852$3;
			FBSTRING TMP$853$3;
			__builtin_memset( &TMP$849$3, 0, 12 );
			__builtin_memset( &TMP$848$3, 0, 12 );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$848$3, (void*)"cvtss2sd xmm7, ", 16, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$849$3, -1, (void*)vr$67, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$849$3 );
			fb_StrDelete( (FBSTRING*)&TMP$849$3 );
			__builtin_memset( &TMP$853$3, 0, 12 );
			__builtin_memset( &TMP$850$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$850$3, (void*)"comisd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$851$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$851$3, (void*)vr$73, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$852$3, 0, 12 );
			FBSTRING* vr$79 = fb_StrConcat( &TMP$852$3, (void*)vr$76, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$853$3, -1, (void*)vr$79, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$853$3 );
			fb_StrDelete( (FBSTRING*)&TMP$853$3 );
		}
		label$448:;
	}
	goto label$446;
	label$447:;
	{
		if( SDSIZE$1 <= 4 ) goto label$451;
		{
			FBSTRING TMP$854$3;
			FBSTRING TMP$855$3;
			FBSTRING TMP$858$3;
			FBSTRING TMP$859$3;
			__builtin_memset( &TMP$855$3, 0, 12 );
			__builtin_memset( &TMP$854$3, 0, 12 );
			FBSTRING* vr$85 = fb_StrConcat( &TMP$854$3, (void*)"cvtss2sd xmm7, ", 16, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$855$3, -1, (void*)vr$85, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$855$3 );
			fb_StrDelete( (FBSTRING*)&TMP$855$3 );
			__builtin_memset( &TMP$859$3, 0, 12 );
			__builtin_memset( &TMP$858$3, 0, 12 );
			FBSTRING* vr$91 = fb_StrConcat( &TMP$858$3, (void*)"comisd xmm7, ", 14, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$859$3, -1, (void*)vr$91, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$859$3 );
			fb_StrDelete( (FBSTRING*)&TMP$859$3 );
		}
		goto label$450;
		label$451:;
		{
			FBSTRING TMP$861$3;
			FBSTRING TMP$862$3;
			FBSTRING TMP$863$3;
			FBSTRING TMP$864$3;
			__builtin_memset( &TMP$864$3, 0, 12 );
			__builtin_memset( &TMP$861$3, 0, 12 );
			FBSTRING* vr$97 = fb_StrConcat( &TMP$861$3, (void*)"comiss ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$862$3, 0, 12 );
			FBSTRING* vr$100 = fb_StrConcat( &TMP$862$3, (void*)vr$97, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$863$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$863$3, (void*)vr$100, -1, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$864$3, -1, (void*)vr$103, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$864$3 );
			fb_StrDelete( (FBSTRING*)&TMP$864$3 );
		}
		label$450:;
	}
	label$446:;
	if( RVREG$1 != (struct $6IRVREG*)0u ) goto label$453;
	{
		FBSTRING TMP$866$2;
		__builtin_memset( &TMP$866$2, 0, 12 );
		FBSTRING* vr$108 = fb_StrConcat( &TMP$866$2, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$108, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		goto label$431;
	}
	label$453:;
	label$452:;
	HPREPOPERAND( RVREG$1, &RNAME$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)&ENV$ + 112) < 1 ) goto label$455;
	{
		uint8* vr$110 = HGETREGNAME( 2, *(int32*)((uint8*)RVREG$1 + 12) );
		fb_StrAssign( (void*)&RNAME8$1, -1, (void*)vr$110, 0, 0 );
		if( (-(*(int32*)((uint8*)RVREG$1 + 12) == 2) | -(*(int32*)((uint8*)RVREG$1 + 12) == 1)) == 0 ) goto label$457;
		{
			FBSTRING TMP$872$3;
			FBSTRING TMP$873$3;
			int32 vr$116 = HISREGFREE( 0, 0 );
			ISEDXFREE$1 = vr$116;
			if( ISEDXFREE$1 != 0 ) goto label$459;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg edx, ", 11, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$459:;
			label$458:;
			__builtin_memset( &TMP$872$3, 0, 12 );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$872$3, (void*)"set", 4, (void*)MNEMONIC$1, 0 );
			__builtin_memset( &TMP$873$3, 0, 12 );
			FBSTRING* vr$122 = fb_StrConcat( &TMP$873$3, (void*)vr$119, -1, (void*)"\x09" "dl", 4 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$122, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( ISEDXFREE$1 != 0 ) goto label$461;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg edx, ", 11, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			goto label$460;
			label$461:;
			{
				HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"edx" );
			}
			label$460:;
		}
		goto label$456;
		label$457:;
		{
			FBSTRING TMP$876$3;
			FBSTRING TMP$877$3;
			FBSTRING TMP$878$3;
			__builtin_memset( &TMP$876$3, 0, 12 );
			FBSTRING* vr$125 = fb_StrConcat( &TMP$876$3, (void*)"set", 4, (void*)MNEMONIC$1, 0 );
			__builtin_memset( &TMP$877$3, 0, 12 );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$877$3, (void*)vr$125, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$878$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$878$3, (void*)vr$128, -1, (void*)&RNAME8$1, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$131, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$456:;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"shr ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 1", 4, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sbb ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$454;
	label$455:;
	{
		FBSTRING TMP$882$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", -1", 5, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$882$2, 0, 12 );
		FBSTRING* vr$134 = fb_StrConcat( &TMP$882$2, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$134, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$454:;
	label$431:;
}

static void _EMITCGTF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$462:;
	HCMPF_SSE( RVREG$1, LABEL$1, (uint8*)"a", (uint8*)"", DVREG$1, SVREG$1 );
	label$463:;
}

static void _EMITCLTF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$464:;
	HCMPF_SSE( RVREG$1, LABEL$1, (uint8*)"b", (uint8*)"", DVREG$1, SVREG$1 );
	label$465:;
}

static void _EMITCEQF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$466:;
	HCMPF_SSE( RVREG$1, LABEL$1, (uint8*)"e", (uint8*)"", DVREG$1, SVREG$1 );
	label$467:;
}

static void _EMITCNEF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$468:;
	HCMPF_SSE( RVREG$1, LABEL$1, (uint8*)"ne", (uint8*)"", DVREG$1, SVREG$1 );
	label$469:;
}

static void _EMITCLEF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$470:;
	HCMPF_SSE( RVREG$1, LABEL$1, (uint8*)"be", (uint8*)"", DVREG$1, SVREG$1 );
	label$471:;
}

static void _EMITCGEF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$472:;
	HCMPF_SSE( RVREG$1, LABEL$1, (uint8*)"ae", (uint8*)"", DVREG$1, SVREG$1 );
	label$473:;
}

static void _EMITNEGF_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$890$1;
	label$474:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$476;
	TMP$890$1 = 24;
	goto label$794;
	label$476:;
	TMP$890$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$794:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$890$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$478;
	{
		FBSTRING TMP$891$2;
		FBSTRING TMP$892$2;
		FBSTRING TMP$901$2;
		FBSTRING TMP$902$2;
		__builtin_memset( &TMP$892$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$891$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$891$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$892$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$892$2 );
		fb_StrDelete( (FBSTRING*)&TMP$892$2 );
		if( DDSIZE$1 <= 4 ) goto label$480;
		{
			FBSTRING TMP$893$3;
			FBSTRING TMP$894$3;
			FBSTRING TMP$895$3;
			FBSTRING TMP$896$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$896$3, 0, 12 );
			__builtin_memset( &TMP$893$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$893$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$894$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$894$3, (void*)vr$16, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$895$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$895$3, (void*)vr$19, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$896$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$896$3 );
			fb_StrDelete( (FBSTRING*)&TMP$896$3 );
		}
		goto label$479;
		label$480:;
		{
			FBSTRING TMP$897$3;
			FBSTRING TMP$898$3;
			FBSTRING TMP$899$3;
			FBSTRING TMP$900$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$900$3, 0, 12 );
			__builtin_memset( &TMP$897$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$897$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$898$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$898$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$899$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$899$3, (void*)vr$31, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$900$3, -1, (void*)vr$34, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$900$3 );
			fb_StrDelete( (FBSTRING*)&TMP$900$3 );
		}
		label$479:;
		__builtin_memset( &TMP$902$2, 0, 12 );
		FBSTRING* vr$38 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$901$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$901$2, (void*)"add esp, ", 10, (void*)vr$38, -1 );
		fb_StrAssign( (void*)&TMP$902$2, -1, (void*)vr$41, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$902$2 );
		fb_StrDelete( (FBSTRING*)&TMP$902$2 );
	}
	label$478:;
	label$477:;
	if( DDSIZE$1 <= 4 ) goto label$482;
	{
		struct $8FBSYMBOL* vr$44 = SYMBALLOCINTCONST( -9223372036854775808ull, 14 );
		SYM$1 = vr$44;
		struct $6IRVREG* vr$46 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$46;
	}
	goto label$481;
	label$482:;
	{
		struct $8FBSYMBOL* vr$47 = SYMBALLOCINTCONST( -2147483648ll, 9 );
		SYM$1 = vr$47;
		struct $6IRVREG* vr$49 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$49;
	}
	label$481:;
	*(int32*)((uint8*)SYM$1 + 104) = 16;
	HPREPOPERAND( TEMPVREG$1, &SRC$1, 25, 0, 0, -1 );
	if( DDSIZE$1 <= 4 ) goto label$484;
	{
		FBSTRING TMP$904$2;
		FBSTRING TMP$905$2;
		FBSTRING TMP$906$2;
		FBSTRING TMP$907$2;
		__builtin_memset( &TMP$907$2, 0, 12 );
		__builtin_memset( &TMP$904$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$904$2, (void*)"xorpd ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$905$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$905$2, (void*)vr$54, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$906$2, 0, 12 );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$906$2, (void*)vr$57, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$907$2, -1, (void*)vr$60, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$907$2 );
		fb_StrDelete( (FBSTRING*)&TMP$907$2 );
	}
	goto label$483;
	label$484:;
	{
		FBSTRING TMP$909$2;
		FBSTRING TMP$910$2;
		FBSTRING TMP$911$2;
		FBSTRING TMP$912$2;
		__builtin_memset( &TMP$912$2, 0, 12 );
		__builtin_memset( &TMP$909$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$909$2, (void*)"xorps ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$910$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$910$2, (void*)vr$66, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$911$2, 0, 12 );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$911$2, (void*)vr$69, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$912$2, -1, (void*)vr$72, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$912$2 );
		fb_StrDelete( (FBSTRING*)&TMP$912$2 );
	}
	label$483:;
	label$475:;
}

static void _EMITHADDF_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$913$1;
	label$485:;
	static FBSTRING DST$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$487;
	TMP$913$1 = 24;
	goto label$795;
	label$487:;
	TMP$913$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$795:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$913$1 * 28)) + 4) <= 4 ) goto label$489;
	{
		FBSTRING TMP$914$2;
		FBSTRING TMP$915$2;
		FBSTRING TMP$917$2;
		FBSTRING TMP$918$2;
		FBSTRING TMP$919$2;
		FBSTRING TMP$920$2;
		__builtin_memset( &TMP$915$2, 0, 12 );
		__builtin_memset( &TMP$914$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$914$2, (void*)"movhlps xmm7, ", 15, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$915$2, -1, (void*)vr$8, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$915$2 );
		fb_StrDelete( (FBSTRING*)&TMP$915$2 );
		__builtin_memset( &TMP$920$2, 0, 12 );
		__builtin_memset( &TMP$917$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$917$2, (void*)"addsd ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$918$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$918$2, (void*)vr$14, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$919$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$919$2, (void*)vr$17, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$920$2, -1, (void*)vr$20, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$920$2 );
		fb_StrDelete( (FBSTRING*)&TMP$920$2 );
	}
	goto label$488;
	label$489:;
	{
		if( *(int32*)((uint8*)DVREG$1 + 20) != 2 ) goto label$491;
		{
			FBSTRING TMP$924$3;
			FBSTRING TMP$925$3;
			FBSTRING TMP$926$3;
			FBSTRING TMP$927$3;
			FBSTRING TMP$929$3;
			FBSTRING TMP$930$3;
			FBSTRING TMP$931$3;
			FBSTRING TMP$932$3;
			__builtin_memset( &TMP$927$3, 0, 12 );
			__builtin_memset( &TMP$924$3, 0, 12 );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$924$3, (void*)"pshufd xmm7, ", 14, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$925$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$925$3, (void*)vr$27, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$926$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$926$3, (void*)vr$30, -1, (void*)"0x01", 5 );
			fb_StrAssign( (void*)&TMP$927$3, -1, (void*)vr$33, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$927$3 );
			fb_StrDelete( (FBSTRING*)&TMP$927$3 );
			__builtin_memset( &TMP$932$3, 0, 12 );
			__builtin_memset( &TMP$929$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$929$3, (void*)"addss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$930$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$930$3, (void*)vr$39, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$931$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$931$3, (void*)vr$42, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$932$3, -1, (void*)vr$45, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$932$3 );
			fb_StrDelete( (FBSTRING*)&TMP$932$3 );
		}
		goto label$490;
		label$491:;
		if( *(int32*)((uint8*)DVREG$1 + 20) != 3 ) goto label$492;
		{
			FBSTRING TMP$933$3;
			FBSTRING TMP$934$3;
			FBSTRING TMP$935$3;
			FBSTRING TMP$936$3;
			FBSTRING TMP$937$3;
			FBSTRING TMP$938$3;
			FBSTRING TMP$939$3;
			FBSTRING TMP$940$3;
			FBSTRING TMP$941$3;
			FBSTRING TMP$942$3;
			FBSTRING TMP$943$3;
			FBSTRING TMP$944$3;
			FBSTRING TMP$945$3;
			FBSTRING TMP$946$3;
			__builtin_memset( &TMP$936$3, 0, 12 );
			__builtin_memset( &TMP$933$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$933$3, (void*)"pshufd xmm7, ", 14, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$934$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$934$3, (void*)vr$52, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$935$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$935$3, (void*)vr$55, -1, (void*)"0x01", 5 );
			fb_StrAssign( (void*)&TMP$936$3, -1, (void*)vr$58, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$936$3 );
			fb_StrDelete( (FBSTRING*)&TMP$936$3 );
			__builtin_memset( &TMP$940$3, 0, 12 );
			__builtin_memset( &TMP$937$3, 0, 12 );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$937$3, (void*)"addss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$938$3, 0, 12 );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$938$3, (void*)vr$64, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$939$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$939$3, (void*)vr$67, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$940$3, -1, (void*)vr$70, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$940$3 );
			fb_StrDelete( (FBSTRING*)&TMP$940$3 );
			__builtin_memset( &TMP$942$3, 0, 12 );
			__builtin_memset( &TMP$941$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$941$3, (void*)"movhlps xmm7, ", 15, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$942$3, -1, (void*)vr$76, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$942$3 );
			fb_StrDelete( (FBSTRING*)&TMP$942$3 );
			__builtin_memset( &TMP$946$3, 0, 12 );
			__builtin_memset( &TMP$943$3, 0, 12 );
			FBSTRING* vr$82 = fb_StrConcat( &TMP$943$3, (void*)"addss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$944$3, 0, 12 );
			FBSTRING* vr$85 = fb_StrConcat( &TMP$944$3, (void*)vr$82, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$945$3, 0, 12 );
			FBSTRING* vr$88 = fb_StrConcat( &TMP$945$3, (void*)vr$85, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$946$3, -1, (void*)vr$88, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$946$3 );
			fb_StrDelete( (FBSTRING*)&TMP$946$3 );
		}
		goto label$490;
		label$492:;
		if( *(int32*)((uint8*)DVREG$1 + 20) != 4 ) goto label$493;
		{
			FBSTRING TMP$947$3;
			FBSTRING TMP$948$3;
			FBSTRING TMP$950$3;
			FBSTRING TMP$951$3;
			FBSTRING TMP$952$3;
			FBSTRING TMP$953$3;
			FBSTRING TMP$954$3;
			FBSTRING TMP$955$3;
			FBSTRING TMP$956$3;
			FBSTRING TMP$957$3;
			FBSTRING TMP$958$3;
			FBSTRING TMP$959$3;
			FBSTRING TMP$960$3;
			FBSTRING TMP$961$3;
			__builtin_memset( &TMP$948$3, 0, 12 );
			__builtin_memset( &TMP$947$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$947$3, (void*)"movhlps xmm7, ", 15, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$948$3, -1, (void*)vr$95, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$948$3 );
			fb_StrDelete( (FBSTRING*)&TMP$948$3 );
			__builtin_memset( &TMP$953$3, 0, 12 );
			__builtin_memset( &TMP$950$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$950$3, (void*)"addps ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$951$3, 0, 12 );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$951$3, (void*)vr$101, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$952$3, 0, 12 );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$952$3, (void*)vr$104, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$953$3, -1, (void*)vr$107, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$953$3 );
			fb_StrDelete( (FBSTRING*)&TMP$953$3 );
			__builtin_memset( &TMP$957$3, 0, 12 );
			__builtin_memset( &TMP$954$3, 0, 12 );
			FBSTRING* vr$113 = fb_StrConcat( &TMP$954$3, (void*)"pshufd xmm7, ", 14, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$955$3, 0, 12 );
			FBSTRING* vr$116 = fb_StrConcat( &TMP$955$3, (void*)vr$113, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$956$3, 0, 12 );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$956$3, (void*)vr$116, -1, (void*)"0x01", 5 );
			fb_StrAssign( (void*)&TMP$957$3, -1, (void*)vr$119, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$957$3 );
			fb_StrDelete( (FBSTRING*)&TMP$957$3 );
			__builtin_memset( &TMP$961$3, 0, 12 );
			__builtin_memset( &TMP$958$3, 0, 12 );
			FBSTRING* vr$125 = fb_StrConcat( &TMP$958$3, (void*)"addss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$959$3, 0, 12 );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$959$3, (void*)vr$125, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$960$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$960$3, (void*)vr$128, -1, (void*)"xmm7", 5 );
			fb_StrAssign( (void*)&TMP$961$3, -1, (void*)vr$131, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$961$3 );
			fb_StrDelete( (FBSTRING*)&TMP$961$3 );
		}
		goto label$490;
		label$493:;
		{
		}
		label$490:;
	}
	label$488:;
	label$486:;
}

static void _EMITABSF_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$962$1;
	label$494:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$496;
	TMP$962$1 = 24;
	goto label$796;
	label$496:;
	TMP$962$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$796:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$962$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$498;
	{
		FBSTRING TMP$963$2;
		FBSTRING TMP$964$2;
		FBSTRING TMP$973$2;
		FBSTRING TMP$974$2;
		__builtin_memset( &TMP$964$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$963$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$963$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$964$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$964$2 );
		fb_StrDelete( (FBSTRING*)&TMP$964$2 );
		if( DDSIZE$1 <= 4 ) goto label$500;
		{
			FBSTRING TMP$965$3;
			FBSTRING TMP$966$3;
			FBSTRING TMP$967$3;
			FBSTRING TMP$968$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$968$3, 0, 12 );
			__builtin_memset( &TMP$965$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$965$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$966$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$966$3, (void*)vr$16, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$967$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$967$3, (void*)vr$19, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$968$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$968$3 );
			fb_StrDelete( (FBSTRING*)&TMP$968$3 );
		}
		goto label$499;
		label$500:;
		{
			FBSTRING TMP$969$3;
			FBSTRING TMP$970$3;
			FBSTRING TMP$971$3;
			FBSTRING TMP$972$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$972$3, 0, 12 );
			__builtin_memset( &TMP$969$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$969$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$970$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$970$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$971$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$971$3, (void*)vr$31, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$972$3, -1, (void*)vr$34, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$972$3 );
			fb_StrDelete( (FBSTRING*)&TMP$972$3 );
		}
		label$499:;
		__builtin_memset( &TMP$974$2, 0, 12 );
		FBSTRING* vr$38 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$973$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$973$2, (void*)"add esp, ", 10, (void*)vr$38, -1 );
		fb_StrAssign( (void*)&TMP$974$2, -1, (void*)vr$41, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$974$2 );
		fb_StrDelete( (FBSTRING*)&TMP$974$2 );
	}
	label$498:;
	label$497:;
	if( DDSIZE$1 <= 4 ) goto label$502;
	{
		struct $8FBSYMBOL* vr$44 = SYMBALLOCINTCONST( 9223372036854775807ll, 14 );
		SYM$1 = vr$44;
		struct $6IRVREG* vr$46 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$46;
	}
	goto label$501;
	label$502:;
	{
		struct $8FBSYMBOL* vr$47 = SYMBALLOCINTCONST( 2147483647ll, 9 );
		SYM$1 = vr$47;
		struct $6IRVREG* vr$49 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$49;
	}
	label$501:;
	*(int32*)((uint8*)SYM$1 + 104) = 16;
	HPREPOPERAND( TEMPVREG$1, &SRC$1, 25, 0, 0, -1 );
	if( DDSIZE$1 <= 4 ) goto label$504;
	{
		FBSTRING TMP$976$2;
		FBSTRING TMP$977$2;
		FBSTRING TMP$978$2;
		FBSTRING TMP$979$2;
		__builtin_memset( &TMP$979$2, 0, 12 );
		__builtin_memset( &TMP$976$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$976$2, (void*)"andpd ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$977$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$977$2, (void*)vr$54, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$978$2, 0, 12 );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$978$2, (void*)vr$57, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$979$2, -1, (void*)vr$60, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$979$2 );
		fb_StrDelete( (FBSTRING*)&TMP$979$2 );
	}
	goto label$503;
	label$504:;
	{
		FBSTRING TMP$981$2;
		FBSTRING TMP$982$2;
		FBSTRING TMP$983$2;
		FBSTRING TMP$984$2;
		__builtin_memset( &TMP$984$2, 0, 12 );
		__builtin_memset( &TMP$981$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$981$2, (void*)"andps ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$982$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$982$2, (void*)vr$66, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$983$2, 0, 12 );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$983$2, (void*)vr$69, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$984$2, -1, (void*)vr$72, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$984$2 );
		fb_StrDelete( (FBSTRING*)&TMP$984$2 );
	}
	label$503:;
	label$495:;
}

static void _EMITSGNF_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$985$1;
	label$505:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$507;
	TMP$985$1 = 24;
	goto label$797;
	label$507:;
	TMP$985$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$797:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$985$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$509;
	{
		FBSTRING TMP$986$2;
		FBSTRING TMP$987$2;
		FBSTRING TMP$996$2;
		FBSTRING TMP$997$2;
		__builtin_memset( &TMP$987$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$986$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$986$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$987$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$987$2 );
		fb_StrDelete( (FBSTRING*)&TMP$987$2 );
		if( DDSIZE$1 <= 4 ) goto label$511;
		{
			FBSTRING TMP$988$3;
			FBSTRING TMP$989$3;
			FBSTRING TMP$990$3;
			FBSTRING TMP$991$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$991$3, 0, 12 );
			__builtin_memset( &TMP$988$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$988$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$989$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$989$3, (void*)vr$16, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$990$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$990$3, (void*)vr$19, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$991$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$991$3 );
			fb_StrDelete( (FBSTRING*)&TMP$991$3 );
		}
		goto label$510;
		label$511:;
		{
			FBSTRING TMP$992$3;
			FBSTRING TMP$993$3;
			FBSTRING TMP$994$3;
			FBSTRING TMP$995$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$995$3, 0, 12 );
			__builtin_memset( &TMP$992$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$992$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$993$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$993$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$994$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$994$3, (void*)vr$31, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$995$3, -1, (void*)vr$34, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$995$3 );
			fb_StrDelete( (FBSTRING*)&TMP$995$3 );
		}
		label$510:;
		__builtin_memset( &TMP$997$2, 0, 12 );
		FBSTRING* vr$38 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$996$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$996$2, (void*)"add esp, ", 10, (void*)vr$38, -1 );
		fb_StrAssign( (void*)&TMP$997$2, -1, (void*)vr$41, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$997$2 );
		fb_StrDelete( (FBSTRING*)&TMP$997$2 );
	}
	label$509:;
	label$508:;
	if( DDSIZE$1 <= 4 ) goto label$513;
	{
		FBSTRING TMP$1001$2;
		FBSTRING TMP$1002$2;
		FBSTRING TMP$1004$2;
		FBSTRING TMP$1005$2;
		FBSTRING TMP$1006$2;
		FBSTRING TMP$1007$2;
		FBSTRING TMP$1010$2;
		FBSTRING TMP$1011$2;
		FBSTRING TMP$1012$2;
		FBSTRING TMP$1013$2;
		FBSTRING TMP$1014$2;
		FBSTRING TMP$1015$2;
		OUTP( (uint8*)"xorpd xmm7, xmm7" );
		__builtin_memset( &TMP$1002$2, 0, 12 );
		__builtin_memset( &TMP$1001$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$1001$2, (void*)"cmpneqsd xmm7, ", 16, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1002$2, -1, (void*)vr$47, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1002$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1002$2 );
		struct $8FBSYMBOL* vr$50 = SYMBALLOCINTCONST( 9223372036854775807ll, 14 );
		SYM$1 = vr$50;
		*(int32*)((uint8*)SYM$1 + 104) = 16;
		struct $6IRVREG* vr$53 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$53;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25, 0, 0, -1 );
		__builtin_memset( &TMP$1007$2, 0, 12 );
		__builtin_memset( &TMP$1004$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1004$2, (void*)"orpd ", 6, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1005$2, 0, 12 );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$1005$2, (void*)vr$57, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1006$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$1006$2, (void*)vr$60, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1007$2, -1, (void*)vr$63, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1007$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1007$2 );
		struct $8FBSYMBOL* vr$66 = SYMBALLOCINTCONST( -4616189618054758400ll, 14 );
		SYM$1 = vr$66;
		*(int32*)((uint8*)SYM$1 + 104) = 16;
		struct $6IRVREG* vr$69 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$69;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25, 0, 0, -1 );
		__builtin_memset( &TMP$1011$2, 0, 12 );
		__builtin_memset( &TMP$1010$2, 0, 12 );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$1010$2, (void*)"andpd xmm7, ", 13, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1011$2, -1, (void*)vr$73, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1011$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1011$2 );
		__builtin_memset( &TMP$1015$2, 0, 12 );
		__builtin_memset( &TMP$1012$2, 0, 12 );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1012$2, (void*)"andpd ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1013$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$1013$2, (void*)vr$79, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1014$2, 0, 12 );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$1014$2, (void*)vr$82, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$1015$2, -1, (void*)vr$85, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1015$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1015$2 );
	}
	goto label$512;
	label$513:;
	{
		FBSTRING TMP$1019$2;
		FBSTRING TMP$1020$2;
		FBSTRING TMP$1022$2;
		FBSTRING TMP$1023$2;
		FBSTRING TMP$1024$2;
		FBSTRING TMP$1025$2;
		FBSTRING TMP$1028$2;
		FBSTRING TMP$1029$2;
		FBSTRING TMP$1030$2;
		FBSTRING TMP$1031$2;
		FBSTRING TMP$1032$2;
		FBSTRING TMP$1033$2;
		OUTP( (uint8*)"xorps xmm7, xmm7" );
		__builtin_memset( &TMP$1020$2, 0, 12 );
		__builtin_memset( &TMP$1019$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$1019$2, (void*)"cmpneqss xmm7, ", 16, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1020$2, -1, (void*)vr$91, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1020$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1020$2 );
		struct $8FBSYMBOL* vr$94 = SYMBALLOCINTCONST( 2147483647ll, 9 );
		SYM$1 = vr$94;
		*(int32*)((uint8*)SYM$1 + 104) = 16;
		struct $6IRVREG* vr$97 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$97;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25, 0, 0, -1 );
		__builtin_memset( &TMP$1025$2, 0, 12 );
		__builtin_memset( &TMP$1022$2, 0, 12 );
		FBSTRING* vr$101 = fb_StrConcat( &TMP$1022$2, (void*)"orps ", 6, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1023$2, 0, 12 );
		FBSTRING* vr$104 = fb_StrConcat( &TMP$1023$2, (void*)vr$101, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1024$2, 0, 12 );
		FBSTRING* vr$107 = fb_StrConcat( &TMP$1024$2, (void*)vr$104, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1025$2, -1, (void*)vr$107, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1025$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1025$2 );
		struct $8FBSYMBOL* vr$110 = SYMBALLOCINTCONST( -1082130432ll, 9 );
		SYM$1 = vr$110;
		*(int32*)((uint8*)SYM$1 + 104) = 16;
		struct $6IRVREG* vr$113 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		TEMPVREG$1 = vr$113;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25, 0, 0, -1 );
		__builtin_memset( &TMP$1029$2, 0, 12 );
		__builtin_memset( &TMP$1028$2, 0, 12 );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$1028$2, (void*)"andps xmm7, ", 13, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1029$2, -1, (void*)vr$117, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1029$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1029$2 );
		__builtin_memset( &TMP$1033$2, 0, 12 );
		__builtin_memset( &TMP$1030$2, 0, 12 );
		FBSTRING* vr$123 = fb_StrConcat( &TMP$1030$2, (void*)"andps ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1031$2, 0, 12 );
		FBSTRING* vr$126 = fb_StrConcat( &TMP$1031$2, (void*)vr$123, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1032$2, 0, 12 );
		FBSTRING* vr$129 = fb_StrConcat( &TMP$1032$2, (void*)vr$126, -1, (void*)"xmm7", 5 );
		fb_StrAssign( (void*)&TMP$1033$2, -1, (void*)vr$129, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1033$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1033$2 );
	}
	label$512:;
	label$506:;
}

static void _EMITSINCOS_FAST_SSE( struct $6IRVREG* DVREG$1, int32 ISCOS$1 )
{
	FBSTRING TMP$1037$1;
	FBSTRING TMP$1038$1;
	FBSTRING TMP$1064$1;
	FBSTRING TMP$1065$1;
	FBSTRING TMP$1066$1;
	FBSTRING TMP$1067$1;
	FBSTRING TMP$1077$1;
	FBSTRING TMP$1078$1;
	FBSTRING TMP$1079$1;
	FBSTRING TMP$1080$1;
	FBSTRING TMP$1081$1;
	FBSTRING TMP$1082$1;
	FBSTRING TMP$1084$1;
	FBSTRING TMP$1085$1;
	FBSTRING TMP$1086$1;
	FBSTRING TMP$1087$1;
	FBSTRING TMP$1089$1;
	FBSTRING TMP$1090$1;
	FBSTRING TMP$1091$1;
	FBSTRING TMP$1092$1;
	FBSTRING TMP$1095$1;
	FBSTRING TMP$1096$1;
	FBSTRING TMP$1097$1;
	FBSTRING TMP$1098$1;
	FBSTRING TMP$1100$1;
	FBSTRING TMP$1101$1;
	FBSTRING TMP$1103$1;
	FBSTRING TMP$1104$1;
	FBSTRING TMP$1105$1;
	FBSTRING TMP$1106$1;
	FBSTRING TMP$1108$1;
	FBSTRING TMP$1109$1;
	FBSTRING TMP$1110$1;
	FBSTRING TMP$1111$1;
	FBSTRING TMP$1113$1;
	FBSTRING TMP$1114$1;
	FBSTRING TMP$1115$1;
	FBSTRING TMP$1116$1;
	FBSTRING TMP$1118$1;
	FBSTRING TMP$1119$1;
	FBSTRING TMP$1121$1;
	FBSTRING TMP$1122$1;
	FBSTRING TMP$1123$1;
	FBSTRING TMP$1124$1;
	FBSTRING TMP$1126$1;
	FBSTRING TMP$1127$1;
	FBSTRING TMP$1128$1;
	FBSTRING TMP$1129$1;
	FBSTRING TMP$1132$1;
	FBSTRING TMP$1133$1;
	FBSTRING TMP$1134$1;
	FBSTRING TMP$1135$1;
	FBSTRING TMP$1137$1;
	FBSTRING TMP$1138$1;
	FBSTRING TMP$1139$1;
	FBSTRING TMP$1140$1;
	FBSTRING TMP$1143$1;
	FBSTRING TMP$1144$1;
	FBSTRING TMP$1151$1;
	FBSTRING TMP$1152$1;
	FBSTRING TMP$1153$1;
	FBSTRING TMP$1154$1;
	FBSTRING TMP$1157$1;
	FBSTRING TMP$1158$1;
	FBSTRING TMP$1159$1;
	FBSTRING TMP$1160$1;
	FBSTRING TMP$1161$1;
	FBSTRING TMP$1162$1;
	FBSTRING TMP$1163$1;
	FBSTRING TMP$1164$1;
	FBSTRING TMP$1167$1;
	FBSTRING TMP$1168$1;
	FBSTRING TMP$1171$1;
	FBSTRING TMP$1172$1;
	FBSTRING TMP$1173$1;
	FBSTRING TMP$1174$1;
	FBSTRING TMP$1175$1;
	FBSTRING TMP$1176$1;
	FBSTRING TMP$1177$1;
	FBSTRING TMP$1178$1;
	FBSTRING TMP$1179$1;
	FBSTRING TMP$1180$1;
	FBSTRING TMP$1181$1;
	FBSTRING TMP$1182$1;
	FBSTRING TMP$1183$1;
	FBSTRING TMP$1184$1;
	FBSTRING TMP$1185$1;
	FBSTRING TMP$1186$1;
	FBSTRING TMP$1187$1;
	FBSTRING TMP$1188$1;
	FBSTRING TMP$1202$1;
	FBSTRING TMP$1203$1;
	label$514:;
	static int32 REG$1[3];
	static struct $8FBARRAY1IlE tmp$1034$1 = { (int32*)REG$1, (int32*)REG$1, 12, 4, 1, 49, { { 3, 0, 2 } } };
	static int32 ISFREE$1[3];
	static struct $8FBARRAY1IlE tmp$1035$1 = { (int32*)ISFREE$1, (int32*)ISFREE$1, 12, 4, 1, 49, { { 3, 0, 2 } } };
	static int32 STACKSIZE$1;
	static int32 I$1;
	static int32 STACKPOINTER$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING REGNAME$1[3];
	static struct $8FBARRAY1I8FBSTRINGE tmp$1036$1 = { (FBSTRING*)REGNAME$1, (FBSTRING*)REGNAME$1, 36, 12, 1, 49, { { 3, 0, 2 } } };
	static struct $8FBSYMBOL* SYM_INVSIGNBITMASK$1;
	static struct $8FBSYMBOL* SYM_ONE$1;
	static struct $8FBSYMBOL* SYM_PIOVERTWO$1;
	static struct $8FBSYMBOL* SYM_TWOOVERPI$1;
	static struct $8FBSYMBOL* SYM_SIN_C0$1;
	static struct $8FBSYMBOL* SYM_SIN_C1$1;
	static struct $8FBSYMBOL* SYM_SIN_C2$1;
	static struct $8FBSYMBOL* SYM_SIN_C3$1;
	static struct $6IRVREG* VREG_INVSIGNBITMASK$1;
	static struct $6IRVREG* VREG_ONE$1;
	static struct $6IRVREG* VREG_PIOVERTWO$1;
	static struct $6IRVREG* VREG_TWOOVERPI$1;
	static struct $6IRVREG* VREG_SIN_C0$1;
	static struct $6IRVREG* VREG_SIN_C1$1;
	static struct $6IRVREG* VREG_SIN_C2$1;
	static struct $6IRVREG* VREG_SIN_C3$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	STACKSIZE$1 = 4;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$517;
	{
		STACKSIZE$1 = STACKSIZE$1 + 4;
	}
	label$517:;
	label$516:;
	*(int32*)REG$1 = 3;
	*(int32*)ISFREE$1 = 0;
	*(int32*)((int32)(int32*)REG$1 + 4) = 5;
	*(int32*)((int32)(int32*)ISFREE$1 + 4) = 0;
	int32 vr$2 = HISREGFREE( 0, 3 );
	if( vr$2 == 0 ) goto label$519;
	{
		*(int32*)REG$1 = 3;
		*(int32*)ISFREE$1 = -1;
		int32 vr$3 = HISREGFREE( 0, 0 );
		if( vr$3 == 0 ) goto label$521;
		{
			*(int32*)((int32)(int32*)REG$1 + 4) = 0;
			*(int32*)((int32)(int32*)ISFREE$1 + 4) = -1;
		}
		goto label$520;
		label$521:;
		int32 vr$4 = HISREGFREE( 0, 5 );
		if( vr$4 == 0 ) goto label$522;
		{
			*(int32*)((int32)(int32*)REG$1 + 4) = 5;
			*(int32*)((int32)(int32*)ISFREE$1 + 4) = -1;
		}
		label$522:;
		label$520:;
	}
	goto label$518;
	label$519:;
	int32 vr$5 = HISREGFREE( 0, 0 );
	if( vr$5 == 0 ) goto label$523;
	{
		*(int32*)REG$1 = 0;
		*(int32*)ISFREE$1 = -1;
		int32 vr$6 = HISREGFREE( 0, 5 );
		if( vr$6 == 0 ) goto label$525;
		{
			*(int32*)((int32)(int32*)REG$1 + 4) = 5;
			*(int32*)((int32)(int32*)ISFREE$1 + 4) = -1;
		}
		label$525:;
		label$524:;
	}
	goto label$518;
	label$523:;
	{
		int32 vr$7 = HISREGFREE( 0, 5 );
		if( vr$7 == 0 ) goto label$527;
		{
			*(int32*)((int32)(int32*)REG$1 + 4) = 5;
			*(int32*)((int32)(int32*)ISFREE$1 + 4) = -1;
		}
		label$527:;
		label$526:;
	}
	label$518:;
	int32 vr$8 = HFINDFREEREG( 1 );
	*(int32*)((int32)(int32*)REG$1 + 8) = vr$8;
	if( *(int32*)((int32)(int32*)REG$1 + 8) != -1 ) goto label$529;
	{
		*(int32*)((int32)(int32*)REG$1 + 8) = 0;
		*(int32*)((int32)(int32*)ISFREE$1 + 8) = 0;
	}
	goto label$528;
	label$529:;
	{
		*(int32*)((int32)(int32*)ISFREE$1 + 8) = -1;
	}
	label$528:;
	STACKSIZE$1 = STACKSIZE$1 + ((*(int32*)ISFREE$1 & 1) << (2 & 31));
	STACKSIZE$1 = STACKSIZE$1 + ((*(int32*)((int32)(int32*)ISFREE$1 + 4) & 1) << (2 & 31));
	STACKSIZE$1 = STACKSIZE$1 + ((*(int32*)((int32)(int32*)ISFREE$1 + 8) & 1) << (2 & 31));
	uint8* vr$18 = HGETREGNAME( 8, *(int32*)REG$1 );
	fb_StrAssign( (void*)REGNAME$1, -1, (void*)vr$18, 0, 0 );
	uint8* vr$19 = HGETREGNAME( 8, *(int32*)((int32)(int32*)REG$1 + 4) );
	fb_StrAssign( (void*)((uint8*)REGNAME$1 + 12), -1, (void*)vr$19, 0, 0 );
	uint8* vr$20 = HGETREGNAME( 15, *(int32*)((int32)(int32*)REG$1 + 8) );
	fb_StrAssign( (void*)((uint8*)REGNAME$1 + 24), -1, (void*)vr$20, 0, 0 );
	struct $8FBSYMBOL* vr$21 = SYMBALLOCINTCONST( 2147483647ll, 9 );
	SYM_INVSIGNBITMASK$1 = vr$21;
	*(int32*)((uint8*)SYM_INVSIGNBITMASK$1 + 104) = 16;
	struct $6IRVREG* vr$24 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_INVSIGNBITMASK$1, *(int64*)((uint8*)SYM_INVSIGNBITMASK$1 + 48) );
	VREG_INVSIGNBITMASK$1 = vr$24;
	struct $8FBSYMBOL* vr$25 = SYMBALLOCINTCONST( 1070141403ll, 9 );
	SYM_PIOVERTWO$1 = vr$25;
	*(int32*)((uint8*)SYM_PIOVERTWO$1 + 104) = 16;
	struct $6IRVREG* vr$28 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_PIOVERTWO$1, *(int64*)((uint8*)SYM_PIOVERTWO$1 + 48) );
	VREG_PIOVERTWO$1 = vr$28;
	struct $8FBSYMBOL* vr$29 = SYMBALLOCINTCONST( 1059256707ll, 9 );
	SYM_TWOOVERPI$1 = vr$29;
	*(int32*)((uint8*)SYM_TWOOVERPI$1 + 104) = 16;
	struct $6IRVREG* vr$32 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_TWOOVERPI$1, *(int64*)((uint8*)SYM_TWOOVERPI$1 + 48) );
	VREG_TWOOVERPI$1 = vr$32;
	struct $8FBSYMBOL* vr$33 = SYMBALLOCINTCONST( 1065353216ll, 9 );
	SYM_ONE$1 = vr$33;
	*(int32*)((uint8*)SYM_ONE$1 + 104) = 16;
	struct $6IRVREG* vr$36 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_ONE$1, *(int64*)((uint8*)SYM_ONE$1 + 48) );
	VREG_ONE$1 = vr$36;
	struct $8FBSYMBOL* vr$37 = SYMBALLOCINTCONST( 1070141403ll, 9 );
	SYM_SIN_C0$1 = vr$37;
	*(int32*)((uint8*)SYM_SIN_C0$1 + 104) = 16;
	struct $6IRVREG* vr$40 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_SIN_C0$1, *(int64*)((uint8*)SYM_SIN_C0$1 + 48) );
	VREG_SIN_C0$1 = vr$40;
	struct $8FBSYMBOL* vr$41 = SYMBALLOCINTCONST( -1088070169ll, 9 );
	SYM_SIN_C1$1 = vr$41;
	*(int32*)((uint8*)SYM_SIN_C1$1 + 104) = 16;
	struct $6IRVREG* vr$44 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_SIN_C1$1, *(int64*)((uint8*)SYM_SIN_C1$1 + 48) );
	VREG_SIN_C1$1 = vr$44;
	struct $8FBSYMBOL* vr$45 = SYMBALLOCINTCONST( 1034106339ll, 9 );
	SYM_SIN_C2$1 = vr$45;
	*(int32*)((uint8*)SYM_SIN_C2$1 + 104) = 16;
	struct $6IRVREG* vr$48 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_SIN_C2$1, *(int64*)((uint8*)SYM_SIN_C2$1 + 48) );
	VREG_SIN_C2$1 = vr$48;
	struct $8FBSYMBOL* vr$49 = SYMBALLOCINTCONST( -1147573914ll, 9 );
	SYM_SIN_C3$1 = vr$49;
	*(int32*)((uint8*)SYM_SIN_C3$1 + 104) = 16;
	struct $6IRVREG* vr$52 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM_SIN_C3$1, *(int64*)((uint8*)SYM_SIN_C3$1 + 48) );
	VREG_SIN_C3$1 = vr$52;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$1038$1, 0, 12 );
	FBSTRING* vr$54 = fb_IntToStr( STACKSIZE$1 );
	__builtin_memset( &TMP$1037$1, 0, 12 );
	FBSTRING* vr$57 = fb_StrConcat( &TMP$1037$1, (void*)"sub esp, ", 10, (void*)vr$54, -1 );
	fb_StrAssign( (void*)&TMP$1038$1, -1, (void*)vr$57, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1038$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1038$1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$531;
	{
		FBSTRING TMP$1039$2;
		FBSTRING TMP$1040$2;
		FBSTRING TMP$1041$2;
		FBSTRING TMP$1042$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1042$2, 0, 12 );
		__builtin_memset( &TMP$1039$2, 0, 12 );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$1039$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1040$2, 0, 12 );
		FBSTRING* vr$67 = fb_StrConcat( &TMP$1040$2, (void*)vr$64, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1041$2, 0, 12 );
		FBSTRING* vr$70 = fb_StrConcat( &TMP$1041$2, (void*)vr$67, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1042$2, -1, (void*)vr$70, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1042$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1042$2 );
	}
	label$531:;
	label$530:;
	STACKPOINTER$1 = 4;
	{
		I$1 = 0;
		label$535:;
		{
			if( *(int32*)((int32)(int32*)ISFREE$1 + (I$1 << (2 & 31))) != 0 ) goto label$537;
			{
				if( I$1 >= 2 ) goto label$539;
				{
					FBSTRING TMP$1045$5;
					FBSTRING TMP$1046$5;
					FBSTRING TMP$1047$5;
					FBSTRING TMP$1048$5;
					FBSTRING TMP$1049$5;
					__builtin_memset( &TMP$1049$5, 0, 12 );
					FBSTRING* vr$77 = fb_IntToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1045$5, 0, 12 );
					FBSTRING* vr$80 = fb_StrConcat( &TMP$1045$5, (void*)"mov [esp+", 10, (void*)vr$77, -1 );
					__builtin_memset( &TMP$1046$5, 0, 12 );
					FBSTRING* vr$83 = fb_StrConcat( &TMP$1046$5, (void*)vr$80, -1, (void*)"]", 2 );
					__builtin_memset( &TMP$1047$5, 0, 12 );
					FBSTRING* vr$86 = fb_StrConcat( &TMP$1047$5, (void*)vr$83, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1048$5, 0, 12 );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$1048$5, (void*)vr$86, -1, (void*)((int32)(FBSTRING*)REGNAME$1 + (I$1 * 12)), -1 );
					fb_StrAssign( (void*)&TMP$1049$5, -1, (void*)vr$89, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1049$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1049$5 );
				}
				goto label$538;
				label$539:;
				{
					FBSTRING TMP$1051$5;
					FBSTRING TMP$1052$5;
					FBSTRING TMP$1053$5;
					FBSTRING TMP$1054$5;
					FBSTRING TMP$1055$5;
					__builtin_memset( &TMP$1055$5, 0, 12 );
					FBSTRING* vr$95 = fb_IntToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1051$5, 0, 12 );
					FBSTRING* vr$98 = fb_StrConcat( &TMP$1051$5, (void*)"movss [esp+", 12, (void*)vr$95, -1 );
					__builtin_memset( &TMP$1052$5, 0, 12 );
					FBSTRING* vr$101 = fb_StrConcat( &TMP$1052$5, (void*)vr$98, -1, (void*)"]", 2 );
					__builtin_memset( &TMP$1053$5, 0, 12 );
					FBSTRING* vr$104 = fb_StrConcat( &TMP$1053$5, (void*)vr$101, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1054$5, 0, 12 );
					FBSTRING* vr$107 = fb_StrConcat( &TMP$1054$5, (void*)vr$104, -1, (void*)((int32)(FBSTRING*)REGNAME$1 + (I$1 * 12)), -1 );
					fb_StrAssign( (void*)&TMP$1055$5, -1, (void*)vr$107, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1055$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1055$5 );
				}
				label$538:;
				STACKPOINTER$1 = STACKPOINTER$1 + 4;
			}
			label$537:;
			label$536:;
		}
		label$533:;
		I$1 = I$1 + 1;
		label$532:;
		if( I$1 <= 2 ) goto label$535;
		label$534:;
	}
	if( ISCOS$1 != 0 ) goto label$541;
	{
		FBSTRING TMP$1056$2;
		FBSTRING TMP$1057$2;
		FBSTRING TMP$1059$2;
		FBSTRING TMP$1060$2;
		FBSTRING TMP$1061$2;
		FBSTRING TMP$1062$2;
		__builtin_memset( &TMP$1057$2, 0, 12 );
		__builtin_memset( &TMP$1056$2, 0, 12 );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$1056$2, (void*)"movss [esp], ", 14, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1057$2, -1, (void*)vr$115, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1057$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1057$2 );
		HPREPOPERAND( VREG_TWOOVERPI$1, &SRC$1, -2147483648u, 0, 0, -1 );
		__builtin_memset( &TMP$1062$2, 0, 12 );
		__builtin_memset( &TMP$1059$2, 0, 12 );
		FBSTRING* vr$121 = fb_StrConcat( &TMP$1059$2, (void*)"mulss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1060$2, 0, 12 );
		FBSTRING* vr$124 = fb_StrConcat( &TMP$1060$2, (void*)vr$121, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1061$2, 0, 12 );
		FBSTRING* vr$127 = fb_StrConcat( &TMP$1061$2, (void*)vr$124, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1062$2, -1, (void*)vr$127, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1062$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1062$2 );
		OUTP( (uint8*)"and       dword ptr [esp], 0x80000000" );
	}
	label$541:;
	label$540:;
	HPREPOPERAND( VREG_INVSIGNBITMASK$1, &SRC$1, 25, 0, 0, -1 );
	__builtin_memset( &TMP$1067$1, 0, 12 );
	__builtin_memset( &TMP$1064$1, 0, 12 );
	FBSTRING* vr$133 = fb_StrConcat( &TMP$1064$1, (void*)"andps ", 7, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1065$1, 0, 12 );
	FBSTRING* vr$136 = fb_StrConcat( &TMP$1065$1, (void*)vr$133, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1066$1, 0, 12 );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1066$1, (void*)vr$136, -1, (void*)&SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$1067$1, -1, (void*)vr$139, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1067$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1067$1 );
	if( ISCOS$1 != -1 ) goto label$543;
	{
		FBSTRING TMP$1068$2;
		FBSTRING TMP$1069$2;
		FBSTRING TMP$1070$2;
		FBSTRING TMP$1071$2;
		FBSTRING TMP$1072$2;
		FBSTRING TMP$1073$2;
		FBSTRING TMP$1074$2;
		FBSTRING TMP$1075$2;
		HPREPOPERAND( VREG_PIOVERTWO$1, &SRC$1, -2147483648u, 0, 0, -1 );
		__builtin_memset( &TMP$1071$2, 0, 12 );
		__builtin_memset( &TMP$1068$2, 0, 12 );
		FBSTRING* vr$145 = fb_StrConcat( &TMP$1068$2, (void*)"addss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1069$2, 0, 12 );
		FBSTRING* vr$148 = fb_StrConcat( &TMP$1069$2, (void*)vr$145, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1070$2, 0, 12 );
		FBSTRING* vr$151 = fb_StrConcat( &TMP$1070$2, (void*)vr$148, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1071$2, -1, (void*)vr$151, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1071$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1071$2 );
		HPREPOPERAND( VREG_TWOOVERPI$1, &SRC$1, -2147483648u, 0, 0, -1 );
		__builtin_memset( &TMP$1075$2, 0, 12 );
		__builtin_memset( &TMP$1072$2, 0, 12 );
		FBSTRING* vr$157 = fb_StrConcat( &TMP$1072$2, (void*)"mulss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1073$2, 0, 12 );
		FBSTRING* vr$160 = fb_StrConcat( &TMP$1073$2, (void*)vr$157, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1074$2, 0, 12 );
		FBSTRING* vr$163 = fb_StrConcat( &TMP$1074$2, (void*)vr$160, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1075$2, -1, (void*)vr$163, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1075$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1075$2 );
	}
	label$543:;
	label$542:;
	__builtin_memset( &TMP$1080$1, 0, 12 );
	__builtin_memset( &TMP$1077$1, 0, 12 );
	FBSTRING* vr$169 = fb_StrConcat( &TMP$1077$1, (void*)"cvttss2si ", 11, (void*)REGNAME$1, -1 );
	__builtin_memset( &TMP$1078$1, 0, 12 );
	FBSTRING* vr$172 = fb_StrConcat( &TMP$1078$1, (void*)vr$169, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1079$1, 0, 12 );
	FBSTRING* vr$175 = fb_StrConcat( &TMP$1079$1, (void*)vr$172, -1, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1080$1, -1, (void*)vr$175, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1080$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1080$1 );
	HPREPOPERAND( VREG_ONE$1, &SRC$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$1082$1, 0, 12 );
	__builtin_memset( &TMP$1081$1, 0, 12 );
	FBSTRING* vr$181 = fb_StrConcat( &TMP$1081$1, (void*)"movss xmm7, ", 13, (void*)&SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$1082$1, -1, (void*)vr$181, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1082$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1082$1 );
	__builtin_memset( &TMP$1087$1, 0, 12 );
	__builtin_memset( &TMP$1084$1, 0, 12 );
	FBSTRING* vr$187 = fb_StrConcat( &TMP$1084$1, (void*)"mov       ", 11, (void*)((uint8*)REGNAME$1 + 12), -1 );
	__builtin_memset( &TMP$1085$1, 0, 12 );
	FBSTRING* vr$190 = fb_StrConcat( &TMP$1085$1, (void*)vr$187, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1086$1, 0, 12 );
	FBSTRING* vr$193 = fb_StrConcat( &TMP$1086$1, (void*)vr$190, -1, (void*)REGNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$1087$1, -1, (void*)vr$193, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1087$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1087$1 );
	__builtin_memset( &TMP$1092$1, 0, 12 );
	__builtin_memset( &TMP$1089$1, 0, 12 );
	FBSTRING* vr$199 = fb_StrConcat( &TMP$1089$1, (void*)"cvtsi2ss  ", 11, (void*)((uint8*)REGNAME$1 + 24), -1 );
	__builtin_memset( &TMP$1090$1, 0, 12 );
	FBSTRING* vr$202 = fb_StrConcat( &TMP$1090$1, (void*)vr$199, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1091$1, 0, 12 );
	FBSTRING* vr$205 = fb_StrConcat( &TMP$1091$1, (void*)vr$202, -1, (void*)REGNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$1092$1, -1, (void*)vr$205, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1092$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1092$1 );
	__builtin_memset( &TMP$1098$1, 0, 12 );
	__builtin_memset( &TMP$1095$1, 0, 12 );
	FBSTRING* vr$211 = fb_StrConcat( &TMP$1095$1, (void*)"shl       ", 11, (void*)((uint8*)REGNAME$1 + 12), -1 );
	__builtin_memset( &TMP$1096$1, 0, 12 );
	FBSTRING* vr$214 = fb_StrConcat( &TMP$1096$1, (void*)vr$211, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1097$1, 0, 12 );
	FBSTRING* vr$217 = fb_StrConcat( &TMP$1097$1, (void*)vr$214, -1, (void*)"30", 3 );
	fb_StrAssign( (void*)&TMP$1098$1, -1, (void*)vr$217, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1098$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1098$1 );
	__builtin_memset( &TMP$1101$1, 0, 12 );
	__builtin_memset( &TMP$1100$1, 0, 12 );
	FBSTRING* vr$223 = fb_StrConcat( &TMP$1100$1, (void*)"not       ", 11, (void*)REGNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$1101$1, -1, (void*)vr$223, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1101$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1101$1 );
	__builtin_memset( &TMP$1106$1, 0, 12 );
	__builtin_memset( &TMP$1103$1, 0, 12 );
	FBSTRING* vr$229 = fb_StrConcat( &TMP$1103$1, (void*)"and       ", 11, (void*)((uint8*)REGNAME$1 + 12), -1 );
	__builtin_memset( &TMP$1104$1, 0, 12 );
	FBSTRING* vr$232 = fb_StrConcat( &TMP$1104$1, (void*)vr$229, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1105$1, 0, 12 );
	FBSTRING* vr$235 = fb_StrConcat( &TMP$1105$1, (void*)vr$232, -1, (void*)"0x80000000", 11 );
	fb_StrAssign( (void*)&TMP$1106$1, -1, (void*)vr$235, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1106$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1106$1 );
	__builtin_memset( &TMP$1111$1, 0, 12 );
	__builtin_memset( &TMP$1108$1, 0, 12 );
	FBSTRING* vr$241 = fb_StrConcat( &TMP$1108$1, (void*)"and       ", 11, (void*)REGNAME$1, -1 );
	__builtin_memset( &TMP$1109$1, 0, 12 );
	FBSTRING* vr$244 = fb_StrConcat( &TMP$1109$1, (void*)vr$241, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1110$1, 0, 12 );
	FBSTRING* vr$247 = fb_StrConcat( &TMP$1110$1, (void*)vr$244, -1, (void*)"0x1", 4 );
	fb_StrAssign( (void*)&TMP$1111$1, -1, (void*)vr$247, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1111$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1111$1 );
	__builtin_memset( &TMP$1116$1, 0, 12 );
	__builtin_memset( &TMP$1113$1, 0, 12 );
	FBSTRING* vr$253 = fb_StrConcat( &TMP$1113$1, (void*)"subss ", 7, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1114$1, 0, 12 );
	FBSTRING* vr$256 = fb_StrConcat( &TMP$1114$1, (void*)vr$253, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1115$1, 0, 12 );
	FBSTRING* vr$259 = fb_StrConcat( &TMP$1115$1, (void*)vr$256, -1, (void*)((uint8*)REGNAME$1 + 24), -1 );
	fb_StrAssign( (void*)&TMP$1116$1, -1, (void*)vr$259, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1116$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1116$1 );
	__builtin_memset( &TMP$1119$1, 0, 12 );
	__builtin_memset( &TMP$1118$1, 0, 12 );
	FBSTRING* vr$265 = fb_StrConcat( &TMP$1118$1, (void*)"dec       ", 11, (void*)REGNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$1119$1, -1, (void*)vr$265, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1119$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1119$1 );
	__builtin_memset( &TMP$1124$1, 0, 12 );
	__builtin_memset( &TMP$1121$1, 0, 12 );
	FBSTRING* vr$271 = fb_StrConcat( &TMP$1121$1, (void*)"minss ", 7, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1122$1, 0, 12 );
	FBSTRING* vr$274 = fb_StrConcat( &TMP$1122$1, (void*)vr$271, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1123$1, 0, 12 );
	FBSTRING* vr$277 = fb_StrConcat( &TMP$1123$1, (void*)vr$274, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1124$1, -1, (void*)vr$277, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1124$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1124$1 );
	__builtin_memset( &TMP$1129$1, 0, 12 );
	__builtin_memset( &TMP$1126$1, 0, 12 );
	FBSTRING* vr$283 = fb_StrConcat( &TMP$1126$1, (void*)"movd      ", 11, (void*)((uint8*)REGNAME$1 + 24), -1 );
	__builtin_memset( &TMP$1127$1, 0, 12 );
	FBSTRING* vr$286 = fb_StrConcat( &TMP$1127$1, (void*)vr$283, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1128$1, 0, 12 );
	FBSTRING* vr$289 = fb_StrConcat( &TMP$1128$1, (void*)vr$286, -1, (void*)REGNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$1129$1, -1, (void*)vr$289, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1129$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1129$1 );
	__builtin_memset( &TMP$1133$1, 0, 12 );
	__builtin_memset( &TMP$1132$1, 0, 12 );
	FBSTRING* vr$295 = fb_StrConcat( &TMP$1132$1, (void*)"subss xmm7, ", 13, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1133$1, -1, (void*)vr$295, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1133$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1133$1 );
	__builtin_memset( &TMP$1135$1, 0, 12 );
	__builtin_memset( &TMP$1134$1, 0, 12 );
	FBSTRING* vr$301 = fb_StrConcat( &TMP$1134$1, (void*)"andps xmm7, ", 13, (void*)((uint8*)REGNAME$1 + 24), -1 );
	fb_StrAssign( (void*)&TMP$1135$1, -1, (void*)vr$301, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1135$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1135$1 );
	__builtin_memset( &TMP$1140$1, 0, 12 );
	__builtin_memset( &TMP$1137$1, 0, 12 );
	FBSTRING* vr$307 = fb_StrConcat( &TMP$1137$1, (void*)"andnps    ", 11, (void*)((uint8*)REGNAME$1 + 24), -1 );
	__builtin_memset( &TMP$1138$1, 0, 12 );
	FBSTRING* vr$310 = fb_StrConcat( &TMP$1138$1, (void*)vr$307, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1139$1, 0, 12 );
	FBSTRING* vr$313 = fb_StrConcat( &TMP$1139$1, (void*)vr$310, -1, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1140$1, -1, (void*)vr$313, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1140$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1140$1 );
	__builtin_memset( &TMP$1144$1, 0, 12 );
	__builtin_memset( &TMP$1143$1, 0, 12 );
	FBSTRING* vr$319 = fb_StrConcat( &TMP$1143$1, (void*)"orps      xmm7, ", 17, (void*)((uint8*)REGNAME$1 + 24), -1 );
	fb_StrAssign( (void*)&TMP$1144$1, -1, (void*)vr$319, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1144$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1144$1 );
	if( ISCOS$1 != 0 ) goto label$545;
	{
		FBSTRING TMP$1147$2;
		FBSTRING TMP$1148$2;
		FBSTRING TMP$1149$2;
		FBSTRING TMP$1150$2;
		__builtin_memset( &TMP$1150$2, 0, 12 );
		__builtin_memset( &TMP$1147$2, 0, 12 );
		FBSTRING* vr$325 = fb_StrConcat( &TMP$1147$2, (void*)"xor       ", 11, (void*)((uint8*)REGNAME$1 + 12), -1 );
		__builtin_memset( &TMP$1148$2, 0, 12 );
		FBSTRING* vr$328 = fb_StrConcat( &TMP$1148$2, (void*)vr$325, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1149$2, 0, 12 );
		FBSTRING* vr$331 = fb_StrConcat( &TMP$1149$2, (void*)vr$328, -1, (void*)"[esp]", 6 );
		fb_StrAssign( (void*)&TMP$1150$2, -1, (void*)vr$331, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1150$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1150$2 );
	}
	label$545:;
	label$544:;
	__builtin_memset( &TMP$1154$1, 0, 12 );
	__builtin_memset( &TMP$1151$1, 0, 12 );
	FBSTRING* vr$337 = fb_StrConcat( &TMP$1151$1, (void*)"movd      ", 11, (void*)REGNAME$1, -1 );
	__builtin_memset( &TMP$1152$1, 0, 12 );
	FBSTRING* vr$340 = fb_StrConcat( &TMP$1152$1, (void*)vr$337, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1153$1, 0, 12 );
	FBSTRING* vr$343 = fb_StrConcat( &TMP$1153$1, (void*)vr$340, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1154$1, -1, (void*)vr$343, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1154$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1154$1 );
	OUTP( (uint8*)"mulss xmm7, xmm7" );
	__builtin_memset( &TMP$1160$1, 0, 12 );
	__builtin_memset( &TMP$1157$1, 0, 12 );
	FBSTRING* vr$349 = fb_StrConcat( &TMP$1157$1, (void*)"or        ", 11, (void*)((uint8*)REGNAME$1 + 12), -1 );
	__builtin_memset( &TMP$1158$1, 0, 12 );
	FBSTRING* vr$352 = fb_StrConcat( &TMP$1158$1, (void*)vr$349, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1159$1, 0, 12 );
	FBSTRING* vr$355 = fb_StrConcat( &TMP$1159$1, (void*)vr$352, -1, (void*)REGNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$1160$1, -1, (void*)vr$355, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1160$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1160$1 );
	__builtin_memset( &TMP$1164$1, 0, 12 );
	__builtin_memset( &TMP$1161$1, 0, 12 );
	FBSTRING* vr$361 = fb_StrConcat( &TMP$1161$1, (void*)"movss ", 7, (void*)((uint8*)REGNAME$1 + 24), -1 );
	__builtin_memset( &TMP$1162$1, 0, 12 );
	FBSTRING* vr$364 = fb_StrConcat( &TMP$1162$1, (void*)vr$361, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1163$1, 0, 12 );
	FBSTRING* vr$367 = fb_StrConcat( &TMP$1163$1, (void*)vr$364, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1164$1, -1, (void*)vr$367, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1164$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1164$1 );
	HPREPOPERAND( VREG_SIN_C3$1, &SRC$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$1168$1, 0, 12 );
	__builtin_memset( &TMP$1167$1, 0, 12 );
	FBSTRING* vr$373 = fb_StrConcat( &TMP$1167$1, (void*)"mulss xmm7, ", 13, (void*)&SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$1168$1, -1, (void*)vr$373, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1168$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1168$1 );
	HPREPOPERAND( VREG_SIN_C2$1, &SRC$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$1172$1, 0, 12 );
	__builtin_memset( &TMP$1171$1, 0, 12 );
	FBSTRING* vr$379 = fb_StrConcat( &TMP$1171$1, (void*)"addss xmm7, ", 13, (void*)&SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$1172$1, -1, (void*)vr$379, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1172$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1172$1 );
	__builtin_memset( &TMP$1174$1, 0, 12 );
	__builtin_memset( &TMP$1173$1, 0, 12 );
	FBSTRING* vr$385 = fb_StrConcat( &TMP$1173$1, (void*)"mulss xmm7, ", 13, (void*)((uint8*)REGNAME$1 + 24), -1 );
	fb_StrAssign( (void*)&TMP$1174$1, -1, (void*)vr$385, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1174$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1174$1 );
	__builtin_memset( &TMP$1178$1, 0, 12 );
	__builtin_memset( &TMP$1175$1, 0, 12 );
	FBSTRING* vr$391 = fb_StrConcat( &TMP$1175$1, (void*)"movd      ", 11, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1176$1, 0, 12 );
	FBSTRING* vr$394 = fb_StrConcat( &TMP$1176$1, (void*)vr$391, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1177$1, 0, 12 );
	FBSTRING* vr$397 = fb_StrConcat( &TMP$1177$1, (void*)vr$394, -1, (void*)((uint8*)REGNAME$1 + 12), -1 );
	fb_StrAssign( (void*)&TMP$1178$1, -1, (void*)vr$397, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1178$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1178$1 );
	HPREPOPERAND( VREG_SIN_C1$1, &SRC$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$1180$1, 0, 12 );
	__builtin_memset( &TMP$1179$1, 0, 12 );
	FBSTRING* vr$403 = fb_StrConcat( &TMP$1179$1, (void*)"addss xmm7, ", 13, (void*)&SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$1180$1, -1, (void*)vr$403, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1180$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1180$1 );
	__builtin_memset( &TMP$1182$1, 0, 12 );
	__builtin_memset( &TMP$1181$1, 0, 12 );
	FBSTRING* vr$409 = fb_StrConcat( &TMP$1181$1, (void*)"mulss xmm7, ", 13, (void*)((uint8*)REGNAME$1 + 24), -1 );
	fb_StrAssign( (void*)&TMP$1182$1, -1, (void*)vr$409, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1182$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1182$1 );
	HPREPOPERAND( VREG_SIN_C0$1, &SRC$1, -2147483648u, 0, 0, -1 );
	__builtin_memset( &TMP$1184$1, 0, 12 );
	__builtin_memset( &TMP$1183$1, 0, 12 );
	FBSTRING* vr$415 = fb_StrConcat( &TMP$1183$1, (void*)"addss xmm7, ", 13, (void*)&SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$1184$1, -1, (void*)vr$415, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1184$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1184$1 );
	__builtin_memset( &TMP$1188$1, 0, 12 );
	__builtin_memset( &TMP$1185$1, 0, 12 );
	FBSTRING* vr$421 = fb_StrConcat( &TMP$1185$1, (void*)"mulss ", 7, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1186$1, 0, 12 );
	FBSTRING* vr$424 = fb_StrConcat( &TMP$1186$1, (void*)vr$421, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1187$1, 0, 12 );
	FBSTRING* vr$427 = fb_StrConcat( &TMP$1187$1, (void*)vr$424, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1188$1, -1, (void*)vr$427, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1188$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1188$1 );
	STACKPOINTER$1 = 4;
	{
		I$1 = 0;
		label$549:;
		{
			if( *(int32*)((int32)(int32*)ISFREE$1 + (I$1 << (2 & 31))) != 0 ) goto label$551;
			{
				if( I$1 >= 2 ) goto label$553;
				{
					FBSTRING TMP$1190$5;
					FBSTRING TMP$1191$5;
					FBSTRING TMP$1192$5;
					FBSTRING TMP$1193$5;
					FBSTRING TMP$1194$5;
					FBSTRING TMP$1195$5;
					__builtin_memset( &TMP$1195$5, 0, 12 );
					FBSTRING* vr$432 = fb_IntToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1190$5, 0, 12 );
					FBSTRING* vr$437 = fb_StrConcat( &TMP$1190$5, (void*)"mov ", 5, (void*)((int32)(FBSTRING*)REGNAME$1 + (I$1 * 12)), -1 );
					__builtin_memset( &TMP$1191$5, 0, 12 );
					FBSTRING* vr$440 = fb_StrConcat( &TMP$1191$5, (void*)vr$437, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1192$5, 0, 12 );
					FBSTRING* vr$443 = fb_StrConcat( &TMP$1192$5, (void*)vr$440, -1, (void*)"[esp+", 6 );
					__builtin_memset( &TMP$1193$5, 0, 12 );
					FBSTRING* vr$446 = fb_StrConcat( &TMP$1193$5, (void*)vr$443, -1, (void*)vr$432, -1 );
					__builtin_memset( &TMP$1194$5, 0, 12 );
					FBSTRING* vr$449 = fb_StrConcat( &TMP$1194$5, (void*)vr$446, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$1195$5, -1, (void*)vr$449, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1195$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1195$5 );
				}
				goto label$552;
				label$553:;
				{
					FBSTRING TMP$1196$5;
					FBSTRING TMP$1197$5;
					FBSTRING TMP$1198$5;
					FBSTRING TMP$1199$5;
					FBSTRING TMP$1200$5;
					FBSTRING TMP$1201$5;
					__builtin_memset( &TMP$1201$5, 0, 12 );
					FBSTRING* vr$453 = fb_IntToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1196$5, 0, 12 );
					FBSTRING* vr$458 = fb_StrConcat( &TMP$1196$5, (void*)"movss ", 7, (void*)((int32)(FBSTRING*)REGNAME$1 + (I$1 * 12)), -1 );
					__builtin_memset( &TMP$1197$5, 0, 12 );
					FBSTRING* vr$461 = fb_StrConcat( &TMP$1197$5, (void*)vr$458, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1198$5, 0, 12 );
					FBSTRING* vr$464 = fb_StrConcat( &TMP$1198$5, (void*)vr$461, -1, (void*)"[esp+", 6 );
					__builtin_memset( &TMP$1199$5, 0, 12 );
					FBSTRING* vr$467 = fb_StrConcat( &TMP$1199$5, (void*)vr$464, -1, (void*)vr$453, -1 );
					__builtin_memset( &TMP$1200$5, 0, 12 );
					FBSTRING* vr$470 = fb_StrConcat( &TMP$1200$5, (void*)vr$467, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$1201$5, -1, (void*)vr$470, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1201$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1201$5 );
				}
				label$552:;
				STACKPOINTER$1 = STACKPOINTER$1 + 4;
			}
			label$551:;
			label$550:;
		}
		label$547:;
		I$1 = I$1 + 1;
		label$546:;
		if( I$1 <= 2 ) goto label$549;
		label$548:;
	}
	__builtin_memset( &TMP$1203$1, 0, 12 );
	FBSTRING* vr$476 = fb_IntToStr( STACKSIZE$1 );
	__builtin_memset( &TMP$1202$1, 0, 12 );
	FBSTRING* vr$479 = fb_StrConcat( &TMP$1202$1, (void*)"add esp, ", 10, (void*)vr$476, -1 );
	fb_StrAssign( (void*)&TMP$1203$1, -1, (void*)vr$479, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1203$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1203$1 );
	label$515:;
}

static void _EMITSIN_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1204$1;
	FBSTRING TMP$1222$1;
	FBSTRING TMP$1223$1;
	label$554:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$556;
	TMP$1204$1 = 24;
	goto label$798;
	label$556:;
	TMP$1204$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$798:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1204$1 * 28)) + 4);
	if( (-(DDSIZE$1 == 4) & -(*(int32*)((uint8*)&ENV$ + 120) == 1)) == 0 ) goto label$558;
	{
		_EMITSINCOS_FAST_SSE( DVREG$1, 0 );
		goto label$555;
	}
	label$558:;
	label$557:;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$560;
	{
		FBSTRING TMP$1205$2;
		FBSTRING TMP$1206$2;
		__builtin_memset( &TMP$1206$2, 0, 12 );
		FBSTRING* vr$10 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1205$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$1205$2, (void*)"sub esp, ", 10, (void*)vr$10, -1 );
		fb_StrAssign( (void*)&TMP$1206$2, -1, (void*)vr$13, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1206$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1206$2 );
		if( DDSIZE$1 <= 4 ) goto label$562;
		{
			FBSTRING TMP$1207$3;
			FBSTRING TMP$1208$3;
			__builtin_memset( &TMP$1208$3, 0, 12 );
			__builtin_memset( &TMP$1207$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1207$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1208$3, -1, (void*)vr$19, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1208$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1208$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$561;
		label$562:;
		{
			FBSTRING TMP$1209$3;
			FBSTRING TMP$1210$3;
			__builtin_memset( &TMP$1210$3, 0, 12 );
			__builtin_memset( &TMP$1209$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$1209$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1210$3, -1, (void*)vr$25, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1210$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1210$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$561:;
	}
	label$560:;
	label$559:;
	OUTP( (uint8*)"fsin" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$564;
	{
		FBSTRING TMP$1212$2;
		FBSTRING TMP$1213$2;
		__builtin_memset( &TMP$1213$2, 0, 12 );
		FBSTRING* vr$30 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1212$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1212$2, (void*)"sub esp, ", 10, (void*)vr$30, -1 );
		fb_StrAssign( (void*)&TMP$1213$2, -1, (void*)vr$33, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1213$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1213$2 );
	}
	label$564:;
	label$563:;
	if( DDSIZE$1 <= 4 ) goto label$566;
	{
		FBSTRING TMP$1214$2;
		FBSTRING TMP$1215$2;
		FBSTRING TMP$1216$2;
		FBSTRING TMP$1217$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1217$2, 0, 12 );
		__builtin_memset( &TMP$1214$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1214$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1215$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1215$2, (void*)vr$39, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1216$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1216$2, (void*)vr$42, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1217$2, -1, (void*)vr$45, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1217$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1217$2 );
	}
	goto label$565;
	label$566:;
	{
		FBSTRING TMP$1218$2;
		FBSTRING TMP$1219$2;
		FBSTRING TMP$1220$2;
		FBSTRING TMP$1221$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1221$2, 0, 12 );
		__builtin_memset( &TMP$1218$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1218$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1219$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1219$2, (void*)vr$51, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1220$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1220$2, (void*)vr$54, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1221$2, -1, (void*)vr$57, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1221$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1221$2 );
	}
	label$565:;
	__builtin_memset( &TMP$1223$1, 0, 12 );
	FBSTRING* vr$61 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1222$1, 0, 12 );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$1222$1, (void*)"add esp, ", 10, (void*)vr$61, -1 );
	fb_StrAssign( (void*)&TMP$1223$1, -1, (void*)vr$64, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1223$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1223$1 );
	label$555:;
}

static void _EMITASIN_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1224$1;
	FBSTRING TMP$1244$1;
	FBSTRING TMP$1245$1;
	label$567:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$569;
	TMP$1224$1 = 24;
	goto label$799;
	label$569:;
	TMP$1224$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$799:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1224$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$571;
	{
		FBSTRING TMP$1225$2;
		FBSTRING TMP$1226$2;
		__builtin_memset( &TMP$1226$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1225$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1225$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1226$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1226$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1226$2 );
		if( DDSIZE$1 <= 4 ) goto label$573;
		{
			FBSTRING TMP$1227$3;
			FBSTRING TMP$1228$3;
			__builtin_memset( &TMP$1228$3, 0, 12 );
			__builtin_memset( &TMP$1227$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1227$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1228$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1228$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1228$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$572;
		label$573:;
		{
			FBSTRING TMP$1229$3;
			FBSTRING TMP$1230$3;
			__builtin_memset( &TMP$1230$3, 0, 12 );
			__builtin_memset( &TMP$1229$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1229$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1230$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1230$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1230$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$572:;
	}
	label$571:;
	label$570:;
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"fmul st(0), st(0)" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubrp" );
	OUTP( (uint8*)"fsqrt" );
	OUTP( (uint8*)"fpatan" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$575;
	{
		FBSTRING TMP$1234$2;
		FBSTRING TMP$1235$2;
		__builtin_memset( &TMP$1235$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1234$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1234$2, (void*)"sub esp, ", 10, (void*)vr$27, -1 );
		fb_StrAssign( (void*)&TMP$1235$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1235$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1235$2 );
	}
	label$575:;
	label$574:;
	if( DDSIZE$1 <= 4 ) goto label$577;
	{
		FBSTRING TMP$1236$2;
		FBSTRING TMP$1237$2;
		FBSTRING TMP$1238$2;
		FBSTRING TMP$1239$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1239$2, 0, 12 );
		__builtin_memset( &TMP$1236$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1236$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1237$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1237$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1238$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1238$2, (void*)vr$39, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1239$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1239$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1239$2 );
	}
	goto label$576;
	label$577:;
	{
		FBSTRING TMP$1240$2;
		FBSTRING TMP$1241$2;
		FBSTRING TMP$1242$2;
		FBSTRING TMP$1243$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1243$2, 0, 12 );
		__builtin_memset( &TMP$1240$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1240$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1241$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1241$2, (void*)vr$48, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1242$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1242$2, (void*)vr$51, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1243$2, -1, (void*)vr$54, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1243$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1243$2 );
	}
	label$576:;
	__builtin_memset( &TMP$1245$1, 0, 12 );
	FBSTRING* vr$58 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1244$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1244$1, (void*)"add esp, ", 10, (void*)vr$58, -1 );
	fb_StrAssign( (void*)&TMP$1245$1, -1, (void*)vr$61, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1245$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1245$1 );
	label$568:;
}

static void _EMITCOS_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1246$1;
	FBSTRING TMP$1264$1;
	FBSTRING TMP$1265$1;
	label$578:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$580;
	TMP$1246$1 = 24;
	goto label$800;
	label$580:;
	TMP$1246$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$800:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1246$1 * 28)) + 4);
	if( (-(DDSIZE$1 == 4) & -(*(int32*)((uint8*)&ENV$ + 120) == 1)) == 0 ) goto label$582;
	{
		_EMITSINCOS_FAST_SSE( DVREG$1, -1 );
		goto label$579;
	}
	label$582:;
	label$581:;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$584;
	{
		FBSTRING TMP$1247$2;
		FBSTRING TMP$1248$2;
		__builtin_memset( &TMP$1248$2, 0, 12 );
		FBSTRING* vr$10 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1247$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$1247$2, (void*)"sub esp, ", 10, (void*)vr$10, -1 );
		fb_StrAssign( (void*)&TMP$1248$2, -1, (void*)vr$13, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1248$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1248$2 );
		if( DDSIZE$1 <= 4 ) goto label$586;
		{
			FBSTRING TMP$1249$3;
			FBSTRING TMP$1250$3;
			__builtin_memset( &TMP$1250$3, 0, 12 );
			__builtin_memset( &TMP$1249$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1249$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1250$3, -1, (void*)vr$19, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1250$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1250$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$585;
		label$586:;
		{
			FBSTRING TMP$1251$3;
			FBSTRING TMP$1252$3;
			__builtin_memset( &TMP$1252$3, 0, 12 );
			__builtin_memset( &TMP$1251$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$1251$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1252$3, -1, (void*)vr$25, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1252$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1252$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$585:;
	}
	label$584:;
	label$583:;
	OUTP( (uint8*)"fcos" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$588;
	{
		FBSTRING TMP$1254$2;
		FBSTRING TMP$1255$2;
		__builtin_memset( &TMP$1255$2, 0, 12 );
		FBSTRING* vr$30 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1254$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1254$2, (void*)"sub esp, ", 10, (void*)vr$30, -1 );
		fb_StrAssign( (void*)&TMP$1255$2, -1, (void*)vr$33, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1255$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1255$2 );
	}
	label$588:;
	label$587:;
	if( DDSIZE$1 <= 4 ) goto label$590;
	{
		FBSTRING TMP$1256$2;
		FBSTRING TMP$1257$2;
		FBSTRING TMP$1258$2;
		FBSTRING TMP$1259$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1259$2, 0, 12 );
		__builtin_memset( &TMP$1256$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1256$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1257$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1257$2, (void*)vr$39, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1258$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1258$2, (void*)vr$42, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1259$2, -1, (void*)vr$45, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1259$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1259$2 );
	}
	goto label$589;
	label$590:;
	{
		FBSTRING TMP$1260$2;
		FBSTRING TMP$1261$2;
		FBSTRING TMP$1262$2;
		FBSTRING TMP$1263$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1263$2, 0, 12 );
		__builtin_memset( &TMP$1260$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1260$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1261$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1261$2, (void*)vr$51, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1262$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1262$2, (void*)vr$54, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1263$2, -1, (void*)vr$57, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1263$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1263$2 );
	}
	label$589:;
	__builtin_memset( &TMP$1265$1, 0, 12 );
	FBSTRING* vr$61 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1264$1, 0, 12 );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$1264$1, (void*)"add esp, ", 10, (void*)vr$61, -1 );
	fb_StrAssign( (void*)&TMP$1265$1, -1, (void*)vr$64, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1265$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1265$1 );
	label$579:;
}

static void _EMITACOS_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1266$1;
	FBSTRING TMP$1283$1;
	FBSTRING TMP$1284$1;
	label$591:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$593;
	TMP$1266$1 = 24;
	goto label$801;
	label$593:;
	TMP$1266$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$801:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1266$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$595;
	{
		FBSTRING TMP$1267$2;
		FBSTRING TMP$1268$2;
		__builtin_memset( &TMP$1268$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1267$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1267$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1268$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1268$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1268$2 );
		if( DDSIZE$1 <= 4 ) goto label$597;
		{
			FBSTRING TMP$1269$3;
			FBSTRING TMP$1270$3;
			__builtin_memset( &TMP$1270$3, 0, 12 );
			__builtin_memset( &TMP$1269$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1269$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1270$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1270$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1270$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$596;
		label$597:;
		{
			FBSTRING TMP$1271$3;
			FBSTRING TMP$1272$3;
			__builtin_memset( &TMP$1272$3, 0, 12 );
			__builtin_memset( &TMP$1271$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1271$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1272$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1272$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1272$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$596:;
	}
	label$595:;
	label$594:;
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"fmul st(0), st(0)" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubrp" );
	OUTP( (uint8*)"fsqrt" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fpatan" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$599;
	{
		FBSTRING TMP$1273$2;
		FBSTRING TMP$1274$2;
		__builtin_memset( &TMP$1274$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1273$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1273$2, (void*)"sub esp, ", 10, (void*)vr$27, -1 );
		fb_StrAssign( (void*)&TMP$1274$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1274$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1274$2 );
	}
	label$599:;
	label$598:;
	if( DDSIZE$1 <= 4 ) goto label$601;
	{
		FBSTRING TMP$1275$2;
		FBSTRING TMP$1276$2;
		FBSTRING TMP$1277$2;
		FBSTRING TMP$1278$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1278$2, 0, 12 );
		__builtin_memset( &TMP$1275$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1275$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1276$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1276$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1277$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1277$2, (void*)vr$39, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1278$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1278$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1278$2 );
	}
	goto label$600;
	label$601:;
	{
		FBSTRING TMP$1279$2;
		FBSTRING TMP$1280$2;
		FBSTRING TMP$1281$2;
		FBSTRING TMP$1282$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1282$2, 0, 12 );
		__builtin_memset( &TMP$1279$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1279$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1280$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1280$2, (void*)vr$48, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1281$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1281$2, (void*)vr$51, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1282$2, -1, (void*)vr$54, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1282$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1282$2 );
	}
	label$600:;
	__builtin_memset( &TMP$1284$1, 0, 12 );
	FBSTRING* vr$58 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1283$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1283$1, (void*)"add esp, ", 10, (void*)vr$58, -1 );
	fb_StrAssign( (void*)&TMP$1284$1, -1, (void*)vr$61, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1284$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1284$1 );
	label$592:;
}

static void _EMITTAN_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1285$1;
	FBSTRING TMP$1304$1;
	FBSTRING TMP$1305$1;
	label$602:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$604;
	TMP$1285$1 = 24;
	goto label$802;
	label$604:;
	TMP$1285$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$802:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1285$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$606;
	{
		FBSTRING TMP$1286$2;
		FBSTRING TMP$1287$2;
		__builtin_memset( &TMP$1287$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1286$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1286$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1287$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1287$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1287$2 );
		if( DDSIZE$1 <= 4 ) goto label$608;
		{
			FBSTRING TMP$1288$3;
			FBSTRING TMP$1289$3;
			__builtin_memset( &TMP$1289$3, 0, 12 );
			__builtin_memset( &TMP$1288$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1288$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1289$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1289$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1289$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$607;
		label$608:;
		{
			FBSTRING TMP$1290$3;
			FBSTRING TMP$1291$3;
			__builtin_memset( &TMP$1291$3, 0, 12 );
			__builtin_memset( &TMP$1290$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1290$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1291$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1291$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1291$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$607:;
	}
	label$606:;
	label$605:;
	OUTP( (uint8*)"fptan" );
	OUTP( (uint8*)"fstp st(0)" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$610;
	{
		FBSTRING TMP$1294$2;
		FBSTRING TMP$1295$2;
		__builtin_memset( &TMP$1295$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1294$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1294$2, (void*)"sub esp, ", 10, (void*)vr$27, -1 );
		fb_StrAssign( (void*)&TMP$1295$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1295$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1295$2 );
	}
	label$610:;
	label$609:;
	if( DDSIZE$1 <= 4 ) goto label$612;
	{
		FBSTRING TMP$1296$2;
		FBSTRING TMP$1297$2;
		FBSTRING TMP$1298$2;
		FBSTRING TMP$1299$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1299$2, 0, 12 );
		__builtin_memset( &TMP$1296$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1296$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1297$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1297$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1298$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1298$2, (void*)vr$39, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1299$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1299$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1299$2 );
	}
	goto label$611;
	label$612:;
	{
		FBSTRING TMP$1300$2;
		FBSTRING TMP$1301$2;
		FBSTRING TMP$1302$2;
		FBSTRING TMP$1303$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1303$2, 0, 12 );
		__builtin_memset( &TMP$1300$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1300$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1301$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1301$2, (void*)vr$48, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1302$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1302$2, (void*)vr$51, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1303$2, -1, (void*)vr$54, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1303$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1303$2 );
	}
	label$611:;
	__builtin_memset( &TMP$1305$1, 0, 12 );
	FBSTRING* vr$58 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1304$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1304$1, (void*)"add esp, ", 10, (void*)vr$58, -1 );
	fb_StrAssign( (void*)&TMP$1305$1, -1, (void*)vr$61, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1305$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1305$1 );
	label$603:;
}

static void _EMITATAN_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1306$1;
	FBSTRING TMP$1323$1;
	FBSTRING TMP$1324$1;
	label$613:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$615;
	TMP$1306$1 = 24;
	goto label$803;
	label$615:;
	TMP$1306$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$803:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1306$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$617;
	{
		FBSTRING TMP$1307$2;
		FBSTRING TMP$1308$2;
		__builtin_memset( &TMP$1308$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1307$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1307$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1308$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1308$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1308$2 );
		if( DDSIZE$1 <= 4 ) goto label$619;
		{
			FBSTRING TMP$1309$3;
			FBSTRING TMP$1310$3;
			__builtin_memset( &TMP$1310$3, 0, 12 );
			__builtin_memset( &TMP$1309$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1309$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1310$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1310$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1310$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$618;
		label$619:;
		{
			FBSTRING TMP$1311$3;
			FBSTRING TMP$1312$3;
			__builtin_memset( &TMP$1312$3, 0, 12 );
			__builtin_memset( &TMP$1311$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1311$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1312$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1312$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1312$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$618:;
	}
	label$617:;
	label$616:;
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fpatan" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$621;
	{
		FBSTRING TMP$1313$2;
		FBSTRING TMP$1314$2;
		__builtin_memset( &TMP$1314$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1313$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1313$2, (void*)"sub esp, ", 10, (void*)vr$27, -1 );
		fb_StrAssign( (void*)&TMP$1314$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1314$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1314$2 );
	}
	label$621:;
	label$620:;
	if( DDSIZE$1 <= 4 ) goto label$623;
	{
		FBSTRING TMP$1315$2;
		FBSTRING TMP$1316$2;
		FBSTRING TMP$1317$2;
		FBSTRING TMP$1318$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1318$2, 0, 12 );
		__builtin_memset( &TMP$1315$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1315$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1316$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1316$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1317$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1317$2, (void*)vr$39, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1318$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1318$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1318$2 );
	}
	goto label$622;
	label$623:;
	{
		FBSTRING TMP$1319$2;
		FBSTRING TMP$1320$2;
		FBSTRING TMP$1321$2;
		FBSTRING TMP$1322$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1322$2, 0, 12 );
		__builtin_memset( &TMP$1319$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1319$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1320$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1320$2, (void*)vr$48, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1321$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1321$2, (void*)vr$51, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1322$2, -1, (void*)vr$54, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1322$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1322$2 );
	}
	label$622:;
	__builtin_memset( &TMP$1324$1, 0, 12 );
	FBSTRING* vr$58 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1323$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1323$1, (void*)"add esp, ", 10, (void*)vr$58, -1 );
	fb_StrAssign( (void*)&TMP$1324$1, -1, (void*)vr$61, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1324$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1324$1 );
	label$614:;
}

static void _EMITSQRT_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1325$1;
	label$624:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$626;
	TMP$1325$1 = 24;
	goto label$804;
	label$626:;
	TMP$1325$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$804:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1325$1 * 28)) + 4);
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$628;
	{
		FBSTRING TMP$1326$2;
		FBSTRING TMP$1327$2;
		__builtin_memset( &TMP$1327$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1326$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1326$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1327$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1327$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1327$2 );
		if( DDSIZE$1 <= 4 ) goto label$630;
		{
			FBSTRING TMP$1328$3;
			FBSTRING TMP$1329$3;
			FBSTRING TMP$1330$3;
			FBSTRING TMP$1331$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$1331$3, 0, 12 );
			__builtin_memset( &TMP$1328$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1328$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1329$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1329$3, (void*)vr$16, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1330$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1330$3, (void*)vr$19, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1331$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1331$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1331$3 );
		}
		goto label$629;
		label$630:;
		{
			FBSTRING TMP$1332$3;
			FBSTRING TMP$1333$3;
			FBSTRING TMP$1334$3;
			FBSTRING TMP$1335$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$1335$3, 0, 12 );
			__builtin_memset( &TMP$1332$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$1332$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1333$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1333$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1334$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$1334$3, (void*)vr$31, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1335$3, -1, (void*)vr$34, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1335$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1335$3 );
		}
		label$629:;
	}
	label$628:;
	label$627:;
	if( DDSIZE$1 <= 4 ) goto label$632;
	{
		FBSTRING TMP$1337$2;
		FBSTRING TMP$1338$2;
		FBSTRING TMP$1339$2;
		FBSTRING TMP$1340$2;
		__builtin_memset( &TMP$1340$2, 0, 12 );
		__builtin_memset( &TMP$1337$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$1337$2, (void*)"sqrtsd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1338$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$1338$2, (void*)vr$40, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1339$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1339$2, (void*)vr$43, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1340$2, -1, (void*)vr$46, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1340$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1340$2 );
	}
	goto label$631;
	label$632:;
	{
		FBSTRING TMP$1342$2;
		FBSTRING TMP$1343$2;
		FBSTRING TMP$1344$2;
		FBSTRING TMP$1345$2;
		__builtin_memset( &TMP$1345$2, 0, 12 );
		__builtin_memset( &TMP$1342$2, 0, 12 );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1342$2, (void*)"sqrtss ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1343$2, 0, 12 );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$1343$2, (void*)vr$52, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1344$2, 0, 12 );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$1344$2, (void*)vr$55, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1345$2, -1, (void*)vr$58, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1345$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1345$2 );
	}
	label$631:;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$634;
	{
		FBSTRING TMP$1346$2;
		FBSTRING TMP$1347$2;
		__builtin_memset( &TMP$1347$2, 0, 12 );
		FBSTRING* vr$63 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1346$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1346$2, (void*)"add esp, ", 10, (void*)vr$63, -1 );
		fb_StrAssign( (void*)&TMP$1347$2, -1, (void*)vr$66, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1347$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1347$2 );
	}
	label$634:;
	label$633:;
	label$625:;
}

static void _EMITRSQRT_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1348$1;
	label$635:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$637;
	TMP$1348$1 = 24;
	goto label$805;
	label$637:;
	TMP$1348$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$805:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1348$1 * 28)) + 4);
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$639;
	{
		FBSTRING TMP$1349$2;
		FBSTRING TMP$1350$2;
		__builtin_memset( &TMP$1350$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1349$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1349$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1350$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1350$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1350$2 );
		if( DDSIZE$1 <= 4 ) goto label$641;
		{
			FBSTRING TMP$1351$3;
			FBSTRING TMP$1352$3;
			FBSTRING TMP$1353$3;
			FBSTRING TMP$1354$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$1354$3, 0, 12 );
			__builtin_memset( &TMP$1351$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1351$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1352$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1352$3, (void*)vr$16, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1353$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1353$3, (void*)vr$19, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1354$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1354$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1354$3 );
		}
		goto label$640;
		label$641:;
		{
			FBSTRING TMP$1355$3;
			FBSTRING TMP$1356$3;
			FBSTRING TMP$1357$3;
			FBSTRING TMP$1358$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$1358$3, 0, 12 );
			__builtin_memset( &TMP$1355$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$1355$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1356$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1356$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1357$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$1357$3, (void*)vr$31, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1358$3, -1, (void*)vr$34, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1358$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1358$3 );
		}
		label$640:;
	}
	label$639:;
	label$638:;
	if( DDSIZE$1 <= 4 ) goto label$643;
	{
		FBSTRING TMP$1360$2;
		FBSTRING TMP$1361$2;
		FBSTRING TMP$1362$2;
		FBSTRING TMP$1363$2;
		__builtin_memset( &TMP$1363$2, 0, 12 );
		__builtin_memset( &TMP$1360$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$1360$2, (void*)"rsqrtsd ", 9, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1361$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$1361$2, (void*)vr$40, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1362$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1362$2, (void*)vr$43, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1363$2, -1, (void*)vr$46, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1363$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1363$2 );
	}
	goto label$642;
	label$643:;
	{
		FBSTRING TMP$1365$2;
		FBSTRING TMP$1366$2;
		FBSTRING TMP$1367$2;
		FBSTRING TMP$1368$2;
		__builtin_memset( &TMP$1368$2, 0, 12 );
		__builtin_memset( &TMP$1365$2, 0, 12 );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1365$2, (void*)"rsqrtss ", 9, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1366$2, 0, 12 );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$1366$2, (void*)vr$52, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1367$2, 0, 12 );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$1367$2, (void*)vr$55, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1368$2, -1, (void*)vr$58, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1368$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1368$2 );
	}
	label$642:;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$645;
	{
		FBSTRING TMP$1369$2;
		FBSTRING TMP$1370$2;
		__builtin_memset( &TMP$1370$2, 0, 12 );
		FBSTRING* vr$63 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1369$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1369$2, (void*)"add esp, ", 10, (void*)vr$63, -1 );
		fb_StrAssign( (void*)&TMP$1370$2, -1, (void*)vr$66, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1370$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1370$2 );
	}
	label$645:;
	label$644:;
	label$636:;
}

static void _EMITRCP_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1371$1;
	label$646:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$648;
	TMP$1371$1 = 24;
	goto label$806;
	label$648:;
	TMP$1371$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$806:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1371$1 * 28)) + 4);
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$650;
	{
		FBSTRING TMP$1372$2;
		FBSTRING TMP$1373$2;
		__builtin_memset( &TMP$1373$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1372$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1372$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1373$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1373$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1373$2 );
		if( DDSIZE$1 <= 4 ) goto label$652;
		{
			FBSTRING TMP$1374$3;
			FBSTRING TMP$1375$3;
			FBSTRING TMP$1376$3;
			FBSTRING TMP$1377$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$1377$3, 0, 12 );
			__builtin_memset( &TMP$1374$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1374$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1375$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1375$3, (void*)vr$16, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1376$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1376$3, (void*)vr$19, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1377$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1377$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1377$3 );
		}
		goto label$651;
		label$652:;
		{
			FBSTRING TMP$1378$3;
			FBSTRING TMP$1379$3;
			FBSTRING TMP$1380$3;
			FBSTRING TMP$1381$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$1381$3, 0, 12 );
			__builtin_memset( &TMP$1378$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$1378$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1379$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1379$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1380$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$1380$3, (void*)vr$31, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1381$3, -1, (void*)vr$34, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1381$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1381$3 );
		}
		label$651:;
	}
	label$650:;
	label$649:;
	if( DDSIZE$1 <= 4 ) goto label$654;
	{
		FBSTRING TMP$1383$2;
		FBSTRING TMP$1384$2;
		FBSTRING TMP$1385$2;
		FBSTRING TMP$1386$2;
		__builtin_memset( &TMP$1386$2, 0, 12 );
		__builtin_memset( &TMP$1383$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$1383$2, (void*)"rcpsd ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1384$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$1384$2, (void*)vr$40, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1385$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1385$2, (void*)vr$43, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1386$2, -1, (void*)vr$46, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1386$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1386$2 );
	}
	goto label$653;
	label$654:;
	{
		FBSTRING TMP$1388$2;
		FBSTRING TMP$1389$2;
		FBSTRING TMP$1390$2;
		FBSTRING TMP$1391$2;
		__builtin_memset( &TMP$1391$2, 0, 12 );
		__builtin_memset( &TMP$1388$2, 0, 12 );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1388$2, (void*)"rcpss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1389$2, 0, 12 );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$1389$2, (void*)vr$52, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1390$2, 0, 12 );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$1390$2, (void*)vr$55, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1391$2, -1, (void*)vr$58, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1391$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1391$2 );
	}
	label$653:;
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$656;
	{
		FBSTRING TMP$1392$2;
		FBSTRING TMP$1393$2;
		__builtin_memset( &TMP$1393$2, 0, 12 );
		FBSTRING* vr$63 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1392$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1392$2, (void*)"add esp, ", 10, (void*)vr$63, -1 );
		fb_StrAssign( (void*)&TMP$1393$2, -1, (void*)vr$66, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1393$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1393$2 );
	}
	label$656:;
	label$655:;
	label$647:;
}

static void _EMITLOG_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1394$1;
	FBSTRING TMP$1412$1;
	FBSTRING TMP$1413$1;
	label$657:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$659;
	TMP$1394$1 = 24;
	goto label$807;
	label$659:;
	TMP$1394$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$807:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1394$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$661;
	{
		FBSTRING TMP$1395$2;
		FBSTRING TMP$1396$2;
		__builtin_memset( &TMP$1396$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1395$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1395$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1396$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1396$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1396$2 );
		if( DDSIZE$1 <= 4 ) goto label$663;
		{
			FBSTRING TMP$1397$3;
			FBSTRING TMP$1398$3;
			__builtin_memset( &TMP$1398$3, 0, 12 );
			__builtin_memset( &TMP$1397$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1397$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1398$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1398$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1398$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$662;
		label$663:;
		{
			FBSTRING TMP$1399$3;
			FBSTRING TMP$1400$3;
			__builtin_memset( &TMP$1400$3, 0, 12 );
			__builtin_memset( &TMP$1399$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1399$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1400$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1400$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1400$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$662:;
	}
	label$661:;
	label$660:;
	OUTP( (uint8*)"fldln2" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fyl2x" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$665;
	{
		FBSTRING TMP$1402$2;
		FBSTRING TMP$1403$2;
		__builtin_memset( &TMP$1403$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1402$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1402$2, (void*)"sub esp, ", 10, (void*)vr$27, -1 );
		fb_StrAssign( (void*)&TMP$1403$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1403$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1403$2 );
	}
	label$665:;
	label$664:;
	if( DDSIZE$1 <= 4 ) goto label$667;
	{
		FBSTRING TMP$1404$2;
		FBSTRING TMP$1405$2;
		FBSTRING TMP$1406$2;
		FBSTRING TMP$1407$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1407$2, 0, 12 );
		__builtin_memset( &TMP$1404$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1404$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1405$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1405$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1406$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1406$2, (void*)vr$39, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1407$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1407$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1407$2 );
	}
	goto label$666;
	label$667:;
	{
		FBSTRING TMP$1408$2;
		FBSTRING TMP$1409$2;
		FBSTRING TMP$1410$2;
		FBSTRING TMP$1411$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1411$2, 0, 12 );
		__builtin_memset( &TMP$1408$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1408$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1409$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1409$2, (void*)vr$48, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1410$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1410$2, (void*)vr$51, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1411$2, -1, (void*)vr$54, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1411$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1411$2 );
	}
	label$666:;
	__builtin_memset( &TMP$1413$1, 0, 12 );
	FBSTRING* vr$58 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1412$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1412$1, (void*)"add esp, ", 10, (void*)vr$58, -1 );
	fb_StrAssign( (void*)&TMP$1413$1, -1, (void*)vr$61, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1413$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1413$1 );
	label$658:;
}

static void _EMITEXP_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1414$1;
	FBSTRING TMP$1437$1;
	FBSTRING TMP$1438$1;
	label$668:;
	static FBSTRING DST$1;
	static int32 DDSIZE$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$670;
	TMP$1414$1 = 24;
	goto label$808;
	label$670:;
	TMP$1414$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$808:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1414$1 * 28)) + 4);
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$672;
	{
		FBSTRING TMP$1415$2;
		FBSTRING TMP$1416$2;
		__builtin_memset( &TMP$1416$2, 0, 12 );
		FBSTRING* vr$7 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1415$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1415$2, (void*)"sub esp, ", 10, (void*)vr$7, -1 );
		fb_StrAssign( (void*)&TMP$1416$2, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1416$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1416$2 );
		if( DDSIZE$1 <= 4 ) goto label$674;
		{
			FBSTRING TMP$1417$3;
			FBSTRING TMP$1418$3;
			__builtin_memset( &TMP$1418$3, 0, 12 );
			__builtin_memset( &TMP$1417$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1417$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1418$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1418$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1418$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$673;
		label$674:;
		{
			FBSTRING TMP$1419$3;
			FBSTRING TMP$1420$3;
			__builtin_memset( &TMP$1420$3, 0, 12 );
			__builtin_memset( &TMP$1419$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1419$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1420$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1420$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1420$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$673:;
	}
	label$672:;
	label$671:;
	OUTP( (uint8*)"fldl2e" );
	OUTP( (uint8*)"fmulp st(1), st" );
	OUTP( (uint8*)"fld st" );
	OUTP( (uint8*)"frndint" );
	OUTP( (uint8*)"fsub st(1), st" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"f2xm1" );
	HPUSH( (uint8*)"0x3f800000" );
	OUTP( (uint8*)"fadd dword ptr [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	OUTP( (uint8*)"fscale" );
	OUTP( (uint8*)"fstp st(1)" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 0 ) goto label$676;
	{
		FBSTRING TMP$1427$2;
		FBSTRING TMP$1428$2;
		__builtin_memset( &TMP$1428$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1427$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1427$2, (void*)"sub esp, ", 10, (void*)vr$27, -1 );
		fb_StrAssign( (void*)&TMP$1428$2, -1, (void*)vr$30, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1428$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1428$2 );
	}
	label$676:;
	label$675:;
	if( DDSIZE$1 <= 4 ) goto label$678;
	{
		FBSTRING TMP$1429$2;
		FBSTRING TMP$1430$2;
		FBSTRING TMP$1431$2;
		FBSTRING TMP$1432$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1432$2, 0, 12 );
		__builtin_memset( &TMP$1429$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1429$2, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1430$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1430$2, (void*)vr$36, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1431$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1431$2, (void*)vr$39, -1, (void*)"qword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1432$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1432$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1432$2 );
	}
	goto label$677;
	label$678:;
	{
		FBSTRING TMP$1433$2;
		FBSTRING TMP$1434$2;
		FBSTRING TMP$1435$2;
		FBSTRING TMP$1436$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1436$2, 0, 12 );
		__builtin_memset( &TMP$1433$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1433$2, (void*)"movss ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1434$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1434$2, (void*)vr$48, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1435$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1435$2, (void*)vr$51, -1, (void*)"dword ptr [esp]", 16 );
		fb_StrAssign( (void*)&TMP$1436$2, -1, (void*)vr$54, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1436$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1436$2 );
	}
	label$677:;
	__builtin_memset( &TMP$1438$1, 0, 12 );
	FBSTRING* vr$58 = fb_IntToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1437$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1437$1, (void*)"add esp, ", 10, (void*)vr$58, -1 );
	fb_StrAssign( (void*)&TMP$1438$1, -1, (void*)vr$61, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1438$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1438$1 );
	label$669:;
}

static void _EMITFLOOR_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1439$1;
	FBSTRING TMP$1454$1;
	FBSTRING TMP$1455$1;
	FBSTRING TMP$1456$1;
	FBSTRING TMP$1458$1;
	FBSTRING TMP$1459$1;
	FBSTRING TMP$1460$1;
	FBSTRING TMP$1461$1;
	FBSTRING TMP$1462$1;
	FBSTRING TMP$1463$1;
	FBSTRING TMP$1464$1;
	FBSTRING TMP$1465$1;
	FBSTRING TMP$1466$1;
	FBSTRING TMP$1467$1;
	FBSTRING TMP$1469$1;
	FBSTRING TMP$1470$1;
	FBSTRING TMP$1471$1;
	FBSTRING TMP$1472$1;
	FBSTRING TMP$1473$1;
	FBSTRING TMP$1475$1;
	FBSTRING TMP$1476$1;
	FBSTRING TMP$1477$1;
	FBSTRING TMP$1478$1;
	FBSTRING TMP$1479$1;
	FBSTRING TMP$1480$1;
	FBSTRING TMP$1481$1;
	FBSTRING TMP$1482$1;
	FBSTRING TMP$1483$1;
	FBSTRING TMP$1484$1;
	label$679:;
	static FBSTRING DST$1;
	static FBSTRING NEG1$1;
	static FBSTRING SUFFIX$1;
	static int32 DDSIZE$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* VREG$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$681;
	TMP$1439$1 = 24;
	goto label$809;
	label$681:;
	TMP$1439$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$809:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1439$1 * 28)) + 4);
	if( DDSIZE$1 <= 4 ) goto label$683;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCINTCONST( -4616189618054758400ll, 14 );
		SYM$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		VREG$1 = vr$7;
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"d ", 3, 0 );
	}
	goto label$682;
	label$683:;
	{
		struct $8FBSYMBOL* vr$8 = SYMBALLOCINTCONST( -1082130432ll, 9 );
		SYM$1 = vr$8;
		struct $6IRVREG* vr$10 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, SYM$1, *(int64*)((uint8*)SYM$1 + 48) );
		VREG$1 = vr$10;
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"s ", 3, 0 );
	}
	label$682:;
	*(int32*)((uint8*)SYM$1 + 104) = 16;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( VREG$1, &NEG1$1, 25, 0, 0, -1 );
	OUTP( (uint8*)"sub esp, 8" );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$685;
	{
		FBSTRING TMP$1445$2;
		FBSTRING TMP$1446$2;
		FBSTRING TMP$1447$2;
		FBSTRING TMP$1448$2;
		FBSTRING TMP$1449$2;
		if( DDSIZE$1 <= 4 ) goto label$687;
		{
			FBSTRING TMP$1440$3;
			FBSTRING TMP$1441$3;
			__builtin_memset( &TMP$1441$3, 0, 12 );
			__builtin_memset( &TMP$1440$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1440$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1441$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1441$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1441$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$686;
		label$687:;
		{
			FBSTRING TMP$1442$3;
			FBSTRING TMP$1443$3;
			__builtin_memset( &TMP$1443$3, 0, 12 );
			__builtin_memset( &TMP$1442$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1442$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1443$3, -1, (void*)vr$22, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1443$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1443$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$686:;
		__builtin_memset( &TMP$1449$2, 0, 12 );
		__builtin_memset( &TMP$1445$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$1445$2, (void*)"movap", 6, (void*)&SUFFIX$1, -1 );
		__builtin_memset( &TMP$1446$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$1446$2, (void*)vr$28, -1, (void*)"xmm7", 5 );
		__builtin_memset( &TMP$1447$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$1447$2, (void*)vr$31, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1448$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$1448$2, (void*)vr$34, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1449$2, -1, (void*)vr$37, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1449$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1449$2 );
	}
	goto label$684;
	label$685:;
	{
		if( DDSIZE$1 <= 4 ) goto label$689;
		{
			OUTP( (uint8*)"fst qword ptr [esp]" );
			OUTP( (uint8*)"movlpd xmm7, qword ptr [esp]" );
		}
		goto label$688;
		label$689:;
		{
			OUTP( (uint8*)"fst dword ptr [esp]" );
			OUTP( (uint8*)"movss xmm7, dword ptr [esp]" );
		}
		label$688:;
	}
	label$684:;
	OUTP( (uint8*)"fistp qword ptr [esp]" );
	OUTP( (uint8*)"fild qword ptr [esp]" );
	__builtin_memset( &TMP$1456$1, 0, 12 );
	__builtin_memset( &TMP$1454$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$1454$1, (void*)"fstp ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
	__builtin_memset( &TMP$1455$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$1455$1, (void*)vr$46, -1, (void*)" [esp]", 7 );
	fb_StrAssign( (void*)&TMP$1456$1, -1, (void*)vr$49, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1456$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1456$1 );
	__builtin_memset( &TMP$1462$1, 0, 12 );
	__builtin_memset( &TMP$1458$1, 0, 12 );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$1458$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1459$1, 0, 12 );
	FBSTRING* vr$58 = fb_StrConcat( &TMP$1459$1, (void*)vr$55, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1460$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1460$1, (void*)vr$58, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1461$1, 0, 12 );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$1461$1, (void*)vr$61, -1, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1462$1, -1, (void*)vr$64, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1462$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1462$1 );
	__builtin_memset( &TMP$1467$1, 0, 12 );
	__builtin_memset( &TMP$1463$1, 0, 12 );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$1463$1, (void*)"subs", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1464$1, 0, 12 );
	FBSTRING* vr$73 = fb_StrConcat( &TMP$1464$1, (void*)vr$70, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1465$1, 0, 12 );
	FBSTRING* vr$76 = fb_StrConcat( &TMP$1465$1, (void*)vr$73, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1466$1, 0, 12 );
	FBSTRING* vr$79 = fb_StrConcat( &TMP$1466$1, (void*)vr$76, -1, (void*)"[esp]", 6 );
	fb_StrAssign( (void*)&TMP$1467$1, -1, (void*)vr$79, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1467$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1467$1 );
	__builtin_memset( &TMP$1473$1, 0, 12 );
	__builtin_memset( &TMP$1469$1, 0, 12 );
	FBSTRING* vr$85 = fb_StrConcat( &TMP$1469$1, (void*)"cmpnles", 8, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1470$1, 0, 12 );
	FBSTRING* vr$88 = fb_StrConcat( &TMP$1470$1, (void*)vr$85, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1471$1, 0, 12 );
	FBSTRING* vr$91 = fb_StrConcat( &TMP$1471$1, (void*)vr$88, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1472$1, 0, 12 );
	FBSTRING* vr$94 = fb_StrConcat( &TMP$1472$1, (void*)vr$91, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1473$1, -1, (void*)vr$94, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1473$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1473$1 );
	__builtin_memset( &TMP$1479$1, 0, 12 );
	__builtin_memset( &TMP$1475$1, 0, 12 );
	FBSTRING* vr$100 = fb_StrConcat( &TMP$1475$1, (void*)"andp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1476$1, 0, 12 );
	FBSTRING* vr$103 = fb_StrConcat( &TMP$1476$1, (void*)vr$100, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1477$1, 0, 12 );
	FBSTRING* vr$106 = fb_StrConcat( &TMP$1477$1, (void*)vr$103, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1478$1, 0, 12 );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$1478$1, (void*)vr$106, -1, (void*)&NEG1$1, -1 );
	fb_StrAssign( (void*)&TMP$1479$1, -1, (void*)vr$109, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1479$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1479$1 );
	__builtin_memset( &TMP$1484$1, 0, 12 );
	__builtin_memset( &TMP$1480$1, 0, 12 );
	FBSTRING* vr$115 = fb_StrConcat( &TMP$1480$1, (void*)"adds", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1481$1, 0, 12 );
	FBSTRING* vr$118 = fb_StrConcat( &TMP$1481$1, (void*)vr$115, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1482$1, 0, 12 );
	FBSTRING* vr$121 = fb_StrConcat( &TMP$1482$1, (void*)vr$118, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1483$1, 0, 12 );
	FBSTRING* vr$124 = fb_StrConcat( &TMP$1483$1, (void*)vr$121, -1, (void*)"[esp]", 6 );
	fb_StrAssign( (void*)&TMP$1484$1, -1, (void*)vr$124, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1484$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1484$1 );
	OUTP( (uint8*)"add esp, 8" );
	label$680:;
}

static void _EMITFIX_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1485$1;
	FBSTRING TMP$1486$1;
	FBSTRING TMP$1487$1;
	FBSTRING TMP$1501$1;
	FBSTRING TMP$1502$1;
	FBSTRING TMP$1503$1;
	FBSTRING TMP$1506$1;
	FBSTRING TMP$1507$1;
	FBSTRING TMP$1508$1;
	FBSTRING TMP$1509$1;
	FBSTRING TMP$1510$1;
	FBSTRING TMP$1511$1;
	FBSTRING TMP$1512$1;
	FBSTRING TMP$1513$1;
	FBSTRING TMP$1514$1;
	FBSTRING TMP$1515$1;
	FBSTRING TMP$1516$1;
	FBSTRING TMP$1517$1;
	FBSTRING TMP$1518$1;
	FBSTRING TMP$1519$1;
	FBSTRING TMP$1520$1;
	FBSTRING TMP$1521$1;
	FBSTRING TMP$1522$1;
	FBSTRING TMP$1523$1;
	FBSTRING TMP$1524$1;
	FBSTRING TMP$1525$1;
	FBSTRING TMP$1526$1;
	FBSTRING TMP$1527$1;
	FBSTRING TMP$1528$1;
	FBSTRING TMP$1529$1;
	FBSTRING TMP$1530$1;
	FBSTRING TMP$1531$1;
	FBSTRING TMP$1532$1;
	FBSTRING TMP$1533$1;
	FBSTRING TMP$1536$1;
	FBSTRING TMP$1537$1;
	FBSTRING TMP$1538$1;
	FBSTRING TMP$1539$1;
	FBSTRING TMP$1540$1;
	FBSTRING TMP$1541$1;
	FBSTRING TMP$1542$1;
	FBSTRING TMP$1543$1;
	FBSTRING TMP$1544$1;
	FBSTRING TMP$1545$1;
	FBSTRING TMP$1546$1;
	FBSTRING TMP$1547$1;
	FBSTRING TMP$1548$1;
	FBSTRING TMP$1549$1;
	FBSTRING TMP$1550$1;
	FBSTRING TMP$1551$1;
	FBSTRING TMP$1552$1;
	label$690:;
	static FBSTRING DST$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING ABSVAL$1;
	static FBSTRING NEG1$1;
	static int32 DDSIZE$1;
	static struct $8FBSYMBOL* NEG1_SYM$1;
	static struct $8FBSYMBOL* ABSVAL_SYM$1;
	static struct $6IRVREG* NEG1_VREG$1;
	static struct $6IRVREG* ABSVAL_VREG$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$692;
	TMP$1485$1 = 24;
	goto label$810;
	label$692:;
	TMP$1485$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$810:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1485$1 * 28)) + 4);
	if( DDSIZE$1 <= 4 ) goto label$694;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCINTCONST( -4616189618054758400ll, 14 );
		NEG1_SYM$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 48) );
		NEG1_VREG$1 = vr$7;
		struct $8FBSYMBOL* vr$8 = SYMBALLOCINTCONST( -9223372036854775808ull, 14 );
		ABSVAL_SYM$1 = vr$8;
		struct $6IRVREG* vr$10 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 48) );
		ABSVAL_VREG$1 = vr$10;
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"d ", 3, 0 );
	}
	goto label$693;
	label$694:;
	{
		struct $8FBSYMBOL* vr$11 = SYMBALLOCINTCONST( -1082130432ll, 9 );
		NEG1_SYM$1 = vr$11;
		struct $6IRVREG* vr$13 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 48) );
		NEG1_VREG$1 = vr$13;
		struct $8FBSYMBOL* vr$14 = SYMBALLOCINTCONST( -2147483648ll, 9 );
		ABSVAL_SYM$1 = vr$14;
		struct $6IRVREG* vr$16 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 48) );
		ABSVAL_VREG$1 = vr$16;
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"s ", 3, 0 );
	}
	label$693:;
	*(int32*)((uint8*)NEG1_SYM$1 + 104) = 16;
	*(int32*)((uint8*)ABSVAL_SYM$1 + 104) = 16;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( NEG1_VREG$1, &NEG1$1, 25, 0, 0, -1 );
	HPREPOPERAND( ABSVAL_VREG$1, &ABSVAL$1, 25, 0, 0, -1 );
	__builtin_memset( &TMP$1487$1, 0, 12 );
	FBSTRING* vr$21 = fb_IntToStr( DDSIZE$1 + 8 );
	__builtin_memset( &TMP$1486$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$1486$1, (void*)"sub esp, ", 10, (void*)vr$21, -1 );
	fb_StrAssign( (void*)&TMP$1487$1, -1, (void*)vr$24, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1487$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1487$1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$696;
	{
		if( DDSIZE$1 <= 4 ) goto label$698;
		{
			FBSTRING TMP$1488$3;
			FBSTRING TMP$1489$3;
			__builtin_memset( &TMP$1489$3, 0, 12 );
			__builtin_memset( &TMP$1488$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1488$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1489$3, -1, (void*)vr$31, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1489$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1489$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$697;
		label$698:;
		{
			FBSTRING TMP$1490$3;
			FBSTRING TMP$1491$3;
			__builtin_memset( &TMP$1491$3, 0, 12 );
			__builtin_memset( &TMP$1490$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$1490$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1491$3, -1, (void*)vr$37, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1491$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1491$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$697:;
	}
	goto label$695;
	label$696:;
	{
		if( DDSIZE$1 <= 4 ) goto label$700;
		{
			FBSTRING TMP$1492$3;
			FBSTRING TMP$1493$3;
			FBSTRING TMP$1494$3;
			FBSTRING TMP$1495$3;
			OUTP( (uint8*)"fst qword ptr [esp]" );
			__builtin_memset( &TMP$1495$3, 0, 12 );
			__builtin_memset( &TMP$1492$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$1492$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1493$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$1493$3, (void*)vr$43, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1494$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$1494$3, (void*)vr$46, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1495$3, -1, (void*)vr$49, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1495$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1495$3 );
		}
		goto label$699;
		label$700:;
		{
			FBSTRING TMP$1496$3;
			FBSTRING TMP$1497$3;
			FBSTRING TMP$1498$3;
			FBSTRING TMP$1499$3;
			OUTP( (uint8*)"fst dword ptr [esp]" );
			__builtin_memset( &TMP$1499$3, 0, 12 );
			__builtin_memset( &TMP$1496$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$1496$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1497$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$1497$3, (void*)vr$55, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1498$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$1498$3, (void*)vr$58, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1499$3, -1, (void*)vr$61, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1499$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1499$3 );
		}
		label$699:;
	}
	label$695:;
	__builtin_memset( &TMP$1503$1, 0, 12 );
	__builtin_memset( &TMP$1501$1, 0, 12 );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$1501$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1502$1, 0, 12 );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$1502$1, (void*)vr$67, -1, (void*)"xmm7, xmm7", 11 );
	fb_StrAssign( (void*)&TMP$1503$1, -1, (void*)vr$70, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1503$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1503$1 );
	if( DDSIZE$1 <= 4 ) goto label$702;
	{
		OUTP( (uint8*)"movlpd [esp+8], xmm7" );
	}
	goto label$701;
	label$702:;
	{
		OUTP( (uint8*)"movss [esp+8], xmm7" );
	}
	label$701:;
	OUTP( (uint8*)"fistp qword ptr [esp]" );
	__builtin_memset( &TMP$1510$1, 0, 12 );
	__builtin_memset( &TMP$1506$1, 0, 12 );
	FBSTRING* vr$76 = fb_StrConcat( &TMP$1506$1, (void*)"cmpnles", 8, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1507$1, 0, 12 );
	FBSTRING* vr$79 = fb_StrConcat( &TMP$1507$1, (void*)vr$76, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1508$1, 0, 12 );
	FBSTRING* vr$82 = fb_StrConcat( &TMP$1508$1, (void*)vr$79, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1509$1, 0, 12 );
	FBSTRING* vr$85 = fb_StrConcat( &TMP$1509$1, (void*)vr$82, -1, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1510$1, -1, (void*)vr$85, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1510$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1510$1 );
	OUTP( (uint8*)"fild qword ptr [esp]" );
	__builtin_memset( &TMP$1515$1, 0, 12 );
	__builtin_memset( &TMP$1511$1, 0, 12 );
	FBSTRING* vr$91 = fb_StrConcat( &TMP$1511$1, (void*)"andp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1512$1, 0, 12 );
	FBSTRING* vr$94 = fb_StrConcat( &TMP$1512$1, (void*)vr$91, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1513$1, 0, 12 );
	FBSTRING* vr$97 = fb_StrConcat( &TMP$1513$1, (void*)vr$94, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1514$1, 0, 12 );
	FBSTRING* vr$100 = fb_StrConcat( &TMP$1514$1, (void*)vr$97, -1, (void*)&ABSVAL$1, -1 );
	fb_StrAssign( (void*)&TMP$1515$1, -1, (void*)vr$100, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1515$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1515$1 );
	__builtin_memset( &TMP$1518$1, 0, 12 );
	__builtin_memset( &TMP$1516$1, 0, 12 );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$1516$1, (void*)"fstp ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
	__builtin_memset( &TMP$1517$1, 0, 12 );
	FBSTRING* vr$112 = fb_StrConcat( &TMP$1517$1, (void*)vr$109, -1, (void*)" [esp]", 7 );
	fb_StrAssign( (void*)&TMP$1518$1, -1, (void*)vr$112, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1518$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1518$1 );
	__builtin_memset( &TMP$1523$1, 0, 12 );
	__builtin_memset( &TMP$1519$1, 0, 12 );
	FBSTRING* vr$118 = fb_StrConcat( &TMP$1519$1, (void*)"subs", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1520$1, 0, 12 );
	FBSTRING* vr$121 = fb_StrConcat( &TMP$1520$1, (void*)vr$118, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1521$1, 0, 12 );
	FBSTRING* vr$124 = fb_StrConcat( &TMP$1521$1, (void*)vr$121, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1522$1, 0, 12 );
	FBSTRING* vr$127 = fb_StrConcat( &TMP$1522$1, (void*)vr$124, -1, (void*)"[esp]", 6 );
	fb_StrAssign( (void*)&TMP$1523$1, -1, (void*)vr$127, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1523$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1523$1 );
	__builtin_memset( &TMP$1528$1, 0, 12 );
	__builtin_memset( &TMP$1524$1, 0, 12 );
	FBSTRING* vr$133 = fb_StrConcat( &TMP$1524$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1525$1, 0, 12 );
	FBSTRING* vr$136 = fb_StrConcat( &TMP$1525$1, (void*)vr$133, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1526$1, 0, 12 );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1526$1, (void*)vr$136, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1527$1, 0, 12 );
	FBSTRING* vr$142 = fb_StrConcat( &TMP$1527$1, (void*)vr$139, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1528$1, -1, (void*)vr$142, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1528$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1528$1 );
	__builtin_memset( &TMP$1533$1, 0, 12 );
	__builtin_memset( &TMP$1529$1, 0, 12 );
	FBSTRING* vr$148 = fb_StrConcat( &TMP$1529$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1530$1, 0, 12 );
	FBSTRING* vr$151 = fb_StrConcat( &TMP$1530$1, (void*)vr$148, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1531$1, 0, 12 );
	FBSTRING* vr$154 = fb_StrConcat( &TMP$1531$1, (void*)vr$151, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1532$1, 0, 12 );
	FBSTRING* vr$157 = fb_StrConcat( &TMP$1532$1, (void*)vr$154, -1, (void*)&NEG1$1, -1 );
	fb_StrAssign( (void*)&TMP$1533$1, -1, (void*)vr$157, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1533$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1533$1 );
	__builtin_memset( &TMP$1540$1, 0, 12 );
	__builtin_memset( &TMP$1536$1, 0, 12 );
	FBSTRING* vr$163 = fb_StrConcat( &TMP$1536$1, (void*)"cmplts", 7, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1537$1, 0, 12 );
	FBSTRING* vr$166 = fb_StrConcat( &TMP$1537$1, (void*)vr$163, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1538$1, 0, 12 );
	FBSTRING* vr$169 = fb_StrConcat( &TMP$1538$1, (void*)vr$166, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1539$1, 0, 12 );
	FBSTRING* vr$172 = fb_StrConcat( &TMP$1539$1, (void*)vr$169, -1, (void*)"[esp+8]", 8 );
	fb_StrAssign( (void*)&TMP$1540$1, -1, (void*)vr$172, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1540$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1540$1 );
	__builtin_memset( &TMP$1545$1, 0, 12 );
	__builtin_memset( &TMP$1541$1, 0, 12 );
	FBSTRING* vr$178 = fb_StrConcat( &TMP$1541$1, (void*)"andp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1542$1, 0, 12 );
	FBSTRING* vr$181 = fb_StrConcat( &TMP$1542$1, (void*)vr$178, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1543$1, 0, 12 );
	FBSTRING* vr$184 = fb_StrConcat( &TMP$1543$1, (void*)vr$181, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1544$1, 0, 12 );
	FBSTRING* vr$187 = fb_StrConcat( &TMP$1544$1, (void*)vr$184, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1545$1, -1, (void*)vr$187, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1545$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1545$1 );
	__builtin_memset( &TMP$1550$1, 0, 12 );
	__builtin_memset( &TMP$1546$1, 0, 12 );
	FBSTRING* vr$193 = fb_StrConcat( &TMP$1546$1, (void*)"adds", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1547$1, 0, 12 );
	FBSTRING* vr$196 = fb_StrConcat( &TMP$1547$1, (void*)vr$193, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1548$1, 0, 12 );
	FBSTRING* vr$199 = fb_StrConcat( &TMP$1548$1, (void*)vr$196, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1549$1, 0, 12 );
	FBSTRING* vr$202 = fb_StrConcat( &TMP$1549$1, (void*)vr$199, -1, (void*)"[esp]", 6 );
	fb_StrAssign( (void*)&TMP$1550$1, -1, (void*)vr$202, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1550$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1550$1 );
	__builtin_memset( &TMP$1552$1, 0, 12 );
	FBSTRING* vr$207 = fb_IntToStr( DDSIZE$1 + 8 );
	__builtin_memset( &TMP$1551$1, 0, 12 );
	FBSTRING* vr$210 = fb_StrConcat( &TMP$1551$1, (void*)"add esp, ", 10, (void*)vr$207, -1 );
	fb_StrAssign( (void*)&TMP$1552$1, -1, (void*)vr$210, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1552$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1552$1 );
	label$691:;
}

static void _EMITFRAC_SSE( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$1553$1;
	FBSTRING TMP$1554$1;
	FBSTRING TMP$1555$1;
	FBSTRING TMP$1568$1;
	FBSTRING TMP$1569$1;
	FBSTRING TMP$1570$1;
	FBSTRING TMP$1583$1;
	FBSTRING TMP$1584$1;
	FBSTRING TMP$1585$1;
	FBSTRING TMP$1586$1;
	FBSTRING TMP$1587$1;
	FBSTRING TMP$1588$1;
	FBSTRING TMP$1589$1;
	FBSTRING TMP$1590$1;
	FBSTRING TMP$1591$1;
	FBSTRING TMP$1592$1;
	FBSTRING TMP$1593$1;
	FBSTRING TMP$1594$1;
	FBSTRING TMP$1595$1;
	FBSTRING TMP$1596$1;
	FBSTRING TMP$1597$1;
	FBSTRING TMP$1598$1;
	FBSTRING TMP$1599$1;
	FBSTRING TMP$1600$1;
	FBSTRING TMP$1601$1;
	FBSTRING TMP$1602$1;
	FBSTRING TMP$1603$1;
	FBSTRING TMP$1604$1;
	FBSTRING TMP$1605$1;
	FBSTRING TMP$1606$1;
	FBSTRING TMP$1607$1;
	FBSTRING TMP$1608$1;
	FBSTRING TMP$1609$1;
	FBSTRING TMP$1610$1;
	FBSTRING TMP$1611$1;
	FBSTRING TMP$1612$1;
	FBSTRING TMP$1613$1;
	FBSTRING TMP$1614$1;
	FBSTRING TMP$1615$1;
	FBSTRING TMP$1616$1;
	FBSTRING TMP$1617$1;
	FBSTRING TMP$1618$1;
	FBSTRING TMP$1619$1;
	FBSTRING TMP$1620$1;
	FBSTRING TMP$1632$1;
	FBSTRING TMP$1633$1;
	FBSTRING TMP$1634$1;
	FBSTRING TMP$1635$1;
	FBSTRING TMP$1636$1;
	FBSTRING TMP$1637$1;
	FBSTRING TMP$1638$1;
	FBSTRING TMP$1639$1;
	FBSTRING TMP$1640$1;
	FBSTRING TMP$1641$1;
	FBSTRING TMP$1642$1;
	FBSTRING TMP$1643$1;
	label$703:;
	static FBSTRING DST$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING ABSVAL$1;
	static FBSTRING NEG1$1;
	static int32 DDSIZE$1;
	static struct $8FBSYMBOL* NEG1_SYM$1;
	static struct $8FBSYMBOL* ABSVAL_SYM$1;
	static struct $6IRVREG* NEG1_VREG$1;
	static struct $6IRVREG* ABSVAL_VREG$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$705;
	TMP$1553$1 = 24;
	goto label$811;
	label$705:;
	TMP$1553$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$811:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1553$1 * 28)) + 4);
	if( DDSIZE$1 <= 4 ) goto label$707;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCINTCONST( -4616189618054758400ll, 14 );
		NEG1_SYM$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 48) );
		NEG1_VREG$1 = vr$7;
		struct $8FBSYMBOL* vr$8 = SYMBALLOCINTCONST( -9223372036854775808ull, 14 );
		ABSVAL_SYM$1 = vr$8;
		struct $6IRVREG* vr$10 = (*(tmp$71*)((uint8*)&IR$ + 236))( 14, (struct $8FBSYMBOL*)0u, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 48) );
		ABSVAL_VREG$1 = vr$10;
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"d ", 3, 0 );
	}
	goto label$706;
	label$707:;
	{
		struct $8FBSYMBOL* vr$11 = SYMBALLOCINTCONST( -1082130432ll, 9 );
		NEG1_SYM$1 = vr$11;
		struct $6IRVREG* vr$13 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 48) );
		NEG1_VREG$1 = vr$13;
		struct $8FBSYMBOL* vr$14 = SYMBALLOCINTCONST( -2147483648ll, 9 );
		ABSVAL_SYM$1 = vr$14;
		struct $6IRVREG* vr$16 = (*(tmp$71*)((uint8*)&IR$ + 236))( 9, (struct $8FBSYMBOL*)0u, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 48) );
		ABSVAL_VREG$1 = vr$16;
		fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"s ", 3, 0 );
	}
	label$706:;
	*(int32*)((uint8*)NEG1_SYM$1 + 104) = 16;
	*(int32*)((uint8*)ABSVAL_SYM$1 + 104) = 16;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( NEG1_VREG$1, &NEG1$1, 25, 0, 0, -1 );
	HPREPOPERAND( ABSVAL_VREG$1, &ABSVAL$1, 25, 0, 0, -1 );
	__builtin_memset( &TMP$1555$1, 0, 12 );
	FBSTRING* vr$21 = fb_IntToStr( DDSIZE$1 + 8 );
	__builtin_memset( &TMP$1554$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$1554$1, (void*)"sub esp, ", 10, (void*)vr$21, -1 );
	fb_StrAssign( (void*)&TMP$1555$1, -1, (void*)vr$24, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1555$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1555$1 );
	if( *(int32*)((uint8*)DVREG$1 + 16) != 1 ) goto label$709;
	{
		if( DDSIZE$1 <= 4 ) goto label$711;
		{
			FBSTRING TMP$1556$3;
			FBSTRING TMP$1557$3;
			__builtin_memset( &TMP$1557$3, 0, 12 );
			__builtin_memset( &TMP$1556$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1556$3, (void*)"movlpd qword ptr [esp], ", 25, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1557$3, -1, (void*)vr$31, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1557$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1557$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$710;
		label$711:;
		{
			FBSTRING TMP$1558$3;
			FBSTRING TMP$1559$3;
			__builtin_memset( &TMP$1559$3, 0, 12 );
			__builtin_memset( &TMP$1558$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$1558$3, (void*)"movss dword ptr [esp], ", 24, (void*)&DST$1, -1 );
			fb_StrAssign( (void*)&TMP$1559$3, -1, (void*)vr$37, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1559$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1559$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$710:;
	}
	goto label$708;
	label$709:;
	{
		if( DDSIZE$1 <= 4 ) goto label$713;
		{
			FBSTRING TMP$1560$3;
			FBSTRING TMP$1561$3;
			FBSTRING TMP$1562$3;
			FBSTRING TMP$1563$3;
			OUTP( (uint8*)"fst qword ptr [esp]" );
			__builtin_memset( &TMP$1563$3, 0, 12 );
			__builtin_memset( &TMP$1560$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$1560$3, (void*)"movlpd ", 8, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1561$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$1561$3, (void*)vr$43, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1562$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$1562$3, (void*)vr$46, -1, (void*)"qword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1563$3, -1, (void*)vr$49, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1563$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1563$3 );
		}
		goto label$712;
		label$713:;
		{
			FBSTRING TMP$1564$3;
			FBSTRING TMP$1565$3;
			FBSTRING TMP$1566$3;
			FBSTRING TMP$1567$3;
			OUTP( (uint8*)"fst dword ptr [esp]" );
			__builtin_memset( &TMP$1567$3, 0, 12 );
			__builtin_memset( &TMP$1564$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$1564$3, (void*)"movss ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$1565$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$1565$3, (void*)vr$55, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1566$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$1566$3, (void*)vr$58, -1, (void*)"dword ptr [esp]", 16 );
			fb_StrAssign( (void*)&TMP$1567$3, -1, (void*)vr$61, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1567$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1567$3 );
		}
		label$712:;
	}
	label$708:;
	__builtin_memset( &TMP$1570$1, 0, 12 );
	__builtin_memset( &TMP$1568$1, 0, 12 );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$1568$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1569$1, 0, 12 );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$1569$1, (void*)vr$67, -1, (void*)"xmm7, xmm7", 11 );
	fb_StrAssign( (void*)&TMP$1570$1, -1, (void*)vr$70, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1570$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1570$1 );
	if( DDSIZE$1 <= 4 ) goto label$715;
	{
		FBSTRING TMP$1572$2;
		FBSTRING TMP$1573$2;
		FBSTRING TMP$1574$2;
		FBSTRING TMP$1575$2;
		FBSTRING TMP$1576$2;
		FBSTRING TMP$1577$2;
		__builtin_memset( &TMP$1577$2, 0, 12 );
		__builtin_memset( &TMP$1572$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$1572$2, (void*)"shufpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1573$2, 0, 12 );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1573$2, (void*)vr$76, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1574$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$1574$2, (void*)vr$79, -1, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1575$2, 0, 12 );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$1575$2, (void*)vr$82, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1576$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$1576$2, (void*)vr$85, -1, (void*)"0", 2 );
		fb_StrAssign( (void*)&TMP$1577$2, -1, (void*)vr$88, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1577$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1577$2 );
		OUTP( (uint8*)"movlpd [esp+8], xmm7" );
	}
	goto label$714;
	label$715:;
	{
		FBSTRING TMP$1579$2;
		FBSTRING TMP$1580$2;
		FBSTRING TMP$1581$2;
		FBSTRING TMP$1582$2;
		__builtin_memset( &TMP$1582$2, 0, 12 );
		__builtin_memset( &TMP$1579$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$1579$2, (void*)"movlhps ", 9, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1580$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$1580$2, (void*)vr$94, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1581$2, 0, 12 );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$1581$2, (void*)vr$97, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1582$2, -1, (void*)vr$100, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1582$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1582$2 );
		OUTP( (uint8*)"movss [esp+8], xmm7" );
	}
	label$714:;
	OUTP( (uint8*)"fistp qword ptr [esp]" );
	__builtin_memset( &TMP$1587$1, 0, 12 );
	__builtin_memset( &TMP$1583$1, 0, 12 );
	FBSTRING* vr$106 = fb_StrConcat( &TMP$1583$1, (void*)"cmpnles", 8, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1584$1, 0, 12 );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$1584$1, (void*)vr$106, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1585$1, 0, 12 );
	FBSTRING* vr$112 = fb_StrConcat( &TMP$1585$1, (void*)vr$109, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1586$1, 0, 12 );
	FBSTRING* vr$115 = fb_StrConcat( &TMP$1586$1, (void*)vr$112, -1, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1587$1, -1, (void*)vr$115, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1587$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1587$1 );
	OUTP( (uint8*)"fild qword ptr [esp]" );
	__builtin_memset( &TMP$1592$1, 0, 12 );
	__builtin_memset( &TMP$1588$1, 0, 12 );
	FBSTRING* vr$121 = fb_StrConcat( &TMP$1588$1, (void*)"andp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1589$1, 0, 12 );
	FBSTRING* vr$124 = fb_StrConcat( &TMP$1589$1, (void*)vr$121, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1590$1, 0, 12 );
	FBSTRING* vr$127 = fb_StrConcat( &TMP$1590$1, (void*)vr$124, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1591$1, 0, 12 );
	FBSTRING* vr$130 = fb_StrConcat( &TMP$1591$1, (void*)vr$127, -1, (void*)&ABSVAL$1, -1 );
	fb_StrAssign( (void*)&TMP$1592$1, -1, (void*)vr$130, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1592$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1592$1 );
	__builtin_memset( &TMP$1595$1, 0, 12 );
	__builtin_memset( &TMP$1593$1, 0, 12 );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1593$1, (void*)"fstp ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
	__builtin_memset( &TMP$1594$1, 0, 12 );
	FBSTRING* vr$142 = fb_StrConcat( &TMP$1594$1, (void*)vr$139, -1, (void*)" [esp]", 7 );
	fb_StrAssign( (void*)&TMP$1595$1, -1, (void*)vr$142, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1595$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1595$1 );
	__builtin_memset( &TMP$1600$1, 0, 12 );
	__builtin_memset( &TMP$1596$1, 0, 12 );
	FBSTRING* vr$148 = fb_StrConcat( &TMP$1596$1, (void*)"subs", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1597$1, 0, 12 );
	FBSTRING* vr$151 = fb_StrConcat( &TMP$1597$1, (void*)vr$148, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1598$1, 0, 12 );
	FBSTRING* vr$154 = fb_StrConcat( &TMP$1598$1, (void*)vr$151, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1599$1, 0, 12 );
	FBSTRING* vr$157 = fb_StrConcat( &TMP$1599$1, (void*)vr$154, -1, (void*)"[esp]", 6 );
	fb_StrAssign( (void*)&TMP$1600$1, -1, (void*)vr$157, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1600$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1600$1 );
	__builtin_memset( &TMP$1605$1, 0, 12 );
	__builtin_memset( &TMP$1601$1, 0, 12 );
	FBSTRING* vr$163 = fb_StrConcat( &TMP$1601$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1602$1, 0, 12 );
	FBSTRING* vr$166 = fb_StrConcat( &TMP$1602$1, (void*)vr$163, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1603$1, 0, 12 );
	FBSTRING* vr$169 = fb_StrConcat( &TMP$1603$1, (void*)vr$166, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1604$1, 0, 12 );
	FBSTRING* vr$172 = fb_StrConcat( &TMP$1604$1, (void*)vr$169, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1605$1, -1, (void*)vr$172, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1605$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1605$1 );
	__builtin_memset( &TMP$1610$1, 0, 12 );
	__builtin_memset( &TMP$1606$1, 0, 12 );
	FBSTRING* vr$178 = fb_StrConcat( &TMP$1606$1, (void*)"xorp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1607$1, 0, 12 );
	FBSTRING* vr$181 = fb_StrConcat( &TMP$1607$1, (void*)vr$178, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1608$1, 0, 12 );
	FBSTRING* vr$184 = fb_StrConcat( &TMP$1608$1, (void*)vr$181, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1609$1, 0, 12 );
	FBSTRING* vr$187 = fb_StrConcat( &TMP$1609$1, (void*)vr$184, -1, (void*)&NEG1$1, -1 );
	fb_StrAssign( (void*)&TMP$1610$1, -1, (void*)vr$187, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1610$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1610$1 );
	__builtin_memset( &TMP$1615$1, 0, 12 );
	__builtin_memset( &TMP$1611$1, 0, 12 );
	FBSTRING* vr$193 = fb_StrConcat( &TMP$1611$1, (void*)"cmplts", 7, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1612$1, 0, 12 );
	FBSTRING* vr$196 = fb_StrConcat( &TMP$1612$1, (void*)vr$193, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1613$1, 0, 12 );
	FBSTRING* vr$199 = fb_StrConcat( &TMP$1613$1, (void*)vr$196, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1614$1, 0, 12 );
	FBSTRING* vr$202 = fb_StrConcat( &TMP$1614$1, (void*)vr$199, -1, (void*)"[esp+8]", 8 );
	fb_StrAssign( (void*)&TMP$1615$1, -1, (void*)vr$202, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1615$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1615$1 );
	__builtin_memset( &TMP$1620$1, 0, 12 );
	__builtin_memset( &TMP$1616$1, 0, 12 );
	FBSTRING* vr$208 = fb_StrConcat( &TMP$1616$1, (void*)"andp", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1617$1, 0, 12 );
	FBSTRING* vr$211 = fb_StrConcat( &TMP$1617$1, (void*)vr$208, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1618$1, 0, 12 );
	FBSTRING* vr$214 = fb_StrConcat( &TMP$1618$1, (void*)vr$211, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1619$1, 0, 12 );
	FBSTRING* vr$217 = fb_StrConcat( &TMP$1619$1, (void*)vr$214, -1, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$1620$1, -1, (void*)vr$217, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1620$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1620$1 );
	if( DDSIZE$1 <= 4 ) goto label$717;
	{
		FBSTRING TMP$1621$2;
		FBSTRING TMP$1622$2;
		FBSTRING TMP$1623$2;
		FBSTRING TMP$1624$2;
		FBSTRING TMP$1625$2;
		FBSTRING TMP$1626$2;
		__builtin_memset( &TMP$1626$2, 0, 12 );
		__builtin_memset( &TMP$1621$2, 0, 12 );
		FBSTRING* vr$223 = fb_StrConcat( &TMP$1621$2, (void*)"shufpd ", 8, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1622$2, 0, 12 );
		FBSTRING* vr$226 = fb_StrConcat( &TMP$1622$2, (void*)vr$223, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1623$2, 0, 12 );
		FBSTRING* vr$229 = fb_StrConcat( &TMP$1623$2, (void*)vr$226, -1, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1624$2, 0, 12 );
		FBSTRING* vr$232 = fb_StrConcat( &TMP$1624$2, (void*)vr$229, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1625$2, 0, 12 );
		FBSTRING* vr$235 = fb_StrConcat( &TMP$1625$2, (void*)vr$232, -1, (void*)"1", 2 );
		fb_StrAssign( (void*)&TMP$1626$2, -1, (void*)vr$235, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1626$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1626$2 );
	}
	goto label$716;
	label$717:;
	{
		FBSTRING TMP$1628$2;
		FBSTRING TMP$1629$2;
		FBSTRING TMP$1630$2;
		FBSTRING TMP$1631$2;
		__builtin_memset( &TMP$1631$2, 0, 12 );
		__builtin_memset( &TMP$1628$2, 0, 12 );
		FBSTRING* vr$241 = fb_StrConcat( &TMP$1628$2, (void*)"movhlps ", 9, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1629$2, 0, 12 );
		FBSTRING* vr$244 = fb_StrConcat( &TMP$1629$2, (void*)vr$241, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1630$2, 0, 12 );
		FBSTRING* vr$247 = fb_StrConcat( &TMP$1630$2, (void*)vr$244, -1, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$1631$2, -1, (void*)vr$247, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1631$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1631$2 );
	}
	label$716:;
	__builtin_memset( &TMP$1636$1, 0, 12 );
	__builtin_memset( &TMP$1632$1, 0, 12 );
	FBSTRING* vr$253 = fb_StrConcat( &TMP$1632$1, (void*)"adds", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1633$1, 0, 12 );
	FBSTRING* vr$256 = fb_StrConcat( &TMP$1633$1, (void*)vr$253, -1, (void*)"xmm7", 5 );
	__builtin_memset( &TMP$1634$1, 0, 12 );
	FBSTRING* vr$259 = fb_StrConcat( &TMP$1634$1, (void*)vr$256, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1635$1, 0, 12 );
	FBSTRING* vr$262 = fb_StrConcat( &TMP$1635$1, (void*)vr$259, -1, (void*)"[esp]", 6 );
	fb_StrAssign( (void*)&TMP$1636$1, -1, (void*)vr$262, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1636$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1636$1 );
	__builtin_memset( &TMP$1641$1, 0, 12 );
	__builtin_memset( &TMP$1637$1, 0, 12 );
	FBSTRING* vr$268 = fb_StrConcat( &TMP$1637$1, (void*)"subs", 5, (void*)&SUFFIX$1, -1 );
	__builtin_memset( &TMP$1638$1, 0, 12 );
	FBSTRING* vr$271 = fb_StrConcat( &TMP$1638$1, (void*)vr$268, -1, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$1639$1, 0, 12 );
	FBSTRING* vr$274 = fb_StrConcat( &TMP$1639$1, (void*)vr$271, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$1640$1, 0, 12 );
	FBSTRING* vr$277 = fb_StrConcat( &TMP$1640$1, (void*)vr$274, -1, (void*)"xmm7", 5 );
	fb_StrAssign( (void*)&TMP$1641$1, -1, (void*)vr$277, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1641$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1641$1 );
	__builtin_memset( &TMP$1643$1, 0, 12 );
	FBSTRING* vr$282 = fb_IntToStr( DDSIZE$1 + 8 );
	__builtin_memset( &TMP$1642$1, 0, 12 );
	FBSTRING* vr$285 = fb_StrConcat( &TMP$1642$1, (void*)"add esp, ", 10, (void*)vr$282, -1 );
	fb_StrAssign( (void*)&TMP$1643$1, -1, (void*)vr$285, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1643$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1643$1 );
	label$704:;
}

static void _EMITPUSHF_SSE( struct $6IRVREG* SVREG$1, int32 UNUSED$1 )
{
	int32 TMP$1644$1;
	label$718:;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$720;
	TMP$1644$1 = 24;
	goto label$812;
	label$720:;
	TMP$1644$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$812:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1644$1 * 28)) + 4);
	if( *(int32*)SVREG$1 == 4 ) goto label$722;
	{
		if( *(int32*)((uint8*)SVREG$1 + 4) != 15 ) goto label$724;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$723;
		label$724:;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8, 4, 0, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HPREPOPERAND( SVREG$1, &SRC$1, 8, 0, 0, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$723:;
	}
	goto label$721;
	label$722:;
	{
		FBSTRING TMP$1648$2;
		FBSTRING TMP$1649$2;
		FBSTRING TMP$1650$2;
		FBSTRING TMP$1651$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sub esp, ", 10, 0 );
		FBSTRING* vr$7 = fb_IntToStr( SDSIZE$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$7, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		if( *(int32*)((uint8*)SVREG$1 + 16) != 0 ) goto label$726;
		{
			FBSTRING TMP$1646$3;
			FBSTRING TMP$1647$3;
			__builtin_memset( &TMP$1646$3, 0, 12 );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$1646$3, (void*)"fstp ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$1647$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$1647$3, (void*)vr$14, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$17, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			goto label$719;
		}
		label$726:;
		label$725:;
		if( SDSIZE$1 <= 4 ) goto label$728;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movlpd ", 8, 0 );
		}
		goto label$727;
		label$728:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movss ", 7, 0 );
		}
		label$727:;
		__builtin_memset( &TMP$1651$2, 0, 12 );
		__builtin_memset( &TMP$1648$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$1648$2, (void*)&OSTR$1, -1, (void*)"[esp]", 6 );
		__builtin_memset( &TMP$1649$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$1649$2, (void*)vr$21, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1650$2, 0, 12 );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$1650$2, (void*)vr$24, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1651$2, -1, (void*)vr$27, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1651$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1651$2 );
	}
	label$721:;
	label$719:;
}

static void _EMITPOPF_SSE( struct $6IRVREG* DVREG$1, int32 UNUSED$1 )
{
	int32 TMP$1652$1;
	label$729:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int32 DSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$731;
	TMP$1652$1 = 24;
	goto label$813;
	label$731:;
	TMP$1652$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$813:;
	DSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1652$1 * 28)) + 4);
	if( *(int32*)DVREG$1 == 4 ) goto label$733;
	{
		if( *(int32*)((uint8*)DVREG$1 + 4) != 15 ) goto label$735;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$734;
		label$735:;
		{
			HPREPOPERAND( DVREG$1, &DST$1, 8, 0, 0, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HPREPOPERAND( DVREG$1, &DST$1, 8, 4, 0, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$734:;
	}
	goto label$732;
	label$733:;
	{
		FBSTRING TMP$1654$2;
		FBSTRING TMP$1655$2;
		FBSTRING TMP$1656$2;
		FBSTRING TMP$1657$2;
		FBSTRING TMP$1658$2;
		FBSTRING TMP$1659$2;
		FBSTRING TMP$1660$2;
		if( DSIZE$1 <= 4 ) goto label$737;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movlpd ", 8, 0 );
		}
		goto label$736;
		label$737:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movss ", 7, 0 );
		}
		label$736:;
		__builtin_memset( &TMP$1658$2, 0, 12 );
		__builtin_memset( &TMP$1654$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$1654$2, (void*)&OSTR$1, -1, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$1655$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$1655$2, (void*)vr$13, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1656$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$1656$2, (void*)vr$16, -1, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
		__builtin_memset( &TMP$1657$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$1657$2, (void*)vr$19, -1, (void*)" [esp]", 7 );
		fb_StrAssign( (void*)&TMP$1658$2, -1, (void*)vr$22, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1658$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1658$2 );
		__builtin_memset( &TMP$1660$2, 0, 12 );
		FBSTRING* vr$26 = fb_IntToStr( DSIZE$1 );
		__builtin_memset( &TMP$1659$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$1659$2, (void*)"add esp, ", 10, (void*)vr$26, -1 );
		fb_StrAssign( (void*)&TMP$1660$2, -1, (void*)vr$29, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1660$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1660$2 );
	}
	label$732:;
	label$730:;
}
