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
typedef int32 $19EMIT_NODECLASS_ENUM;
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
struct $12EMIT_BOPNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BOPNODE ) == 12 );
struct $12EMIT_UOPNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_UOPNODE ) == 8 );
struct $12EMIT_RELNODE {
	int32 OP;
	struct $6IRVREG* RVREG;
	struct $8FBSYMBOL* LABEL;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_RELNODE ) == 20 );
struct $12EMIT_STKNODE {
	int32 OP;
	struct $6IRVREG* VREG;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_STKNODE ) == 12 );
struct $12EMIT_BRCNODE {
	int32 OP;
	struct $6IRVREG* VREG;
	struct $8FBSYMBOL* SYM;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BRCNODE ) == 16 );
struct $12EMIT_SOPNODE {
	int32 OP;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_SOPNODE ) == 8 );
struct $12EMIT_LITNODE {
	int32 ISASM;
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_LITNODE ) == 8 );
struct $12EMIT_JTBNODE {
	struct $8FBSYMBOL* TBSYM;
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int32 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_JTBNODE ) == 40 );
struct $12EMIT_MEMNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
	int32 BYTES;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_MEMNODE ) == 20 );
struct $12EMIT_DBGNODE {
	int32 OP;
	struct $8FBSYMBOL* SYM;
	int32 LNUM;
	uint8* FILENAME;
	int32 POS;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_DBGNODE ) == 20 );
struct $9EMIT_NODE {
	$19EMIT_NODECLASS_ENUM CLASS;
	union {
		struct $12EMIT_BOPNODE BOP;
		struct $12EMIT_UOPNODE UOP;
		struct $12EMIT_RELNODE REL;
		struct $12EMIT_STKNODE STK;
		struct $12EMIT_BRCNODE BRC;
		struct $12EMIT_SOPNODE SOP;
		struct $12EMIT_LITNODE LIT;
		struct $12EMIT_JTBNODE JTB;
		struct $12EMIT_MEMNODE MEM;
		struct $12EMIT_DBGNODE DBG;
	};
	int32 REGFREETB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_NODE ) == 56 );
struct $8REGCLASS;
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
struct $12EMITDATATYPE {
	int32 RNAMETB;
	uint8 MNAME[12];
};
__FB_STATIC_ASSERT( sizeof( struct $12EMITDATATYPE ) == 16 );
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
typedef uint8* (*tmp$102)( int32 );
typedef int32 (*tmp$38)( void );
typedef void (*tmp$37)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$98)( int32, int32, int32, int32* );
typedef void (*tmp$99)( int32, int32, int32*, int32* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$100)( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$101)( int32, int32 );
typedef uint8* (*tmp$103)( int32, int32 );
struct $9EMIT_VTBL {
	tmp$38 INIT;
	tmp$37 END;
	tmp$39 GETOPTIONVALUE;
	tmp$38 OPEN;
	tmp$37 CLOSE;
	tmp$40 ISREGPRESERVED;
	tmp$40 GETFREEPRESERVEDREG;
	tmp$98 GETARGREG;
	tmp$99 GETRESULTREG;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCHEADER;
	tmp$100 PROCFOOTER;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$101 SETSECTION;
	tmp$102 GETTYPESTRING;
	tmp$103 GETSECTIONSTRING;
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_VTBL ) == 88 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I12REG_SIZEMASKE {
	$12REG_SIZEMASK* DATA;
	$12REG_SIZEMASK* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I12REG_SIZEMASKE ) == 36 );
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
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
typedef int32 $10IR_SECTION;
typedef int32 $6IR_OPT;
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_HEX_l( uint64 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
static void fb_ctor__emit_x86( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
int32 FBGETOPTION( int32 );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBMAKEPROFILELABELNAME( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int32, tmp$41 );
int32 HFILEEXISTS( uint8* );
FBSTRING* HFLOATTOHEX( double, int32 );
uint8* HESCAPE( uint8* );
uint8* HESCAPEW( uint32* );
struct $8REGCLASS* REGNEWCLASS( int32, int32, struct $7FBARRAYI12REG_SIZEMASKE*, int32 );
int32 REGDELCLASS( struct $8REGCLASS* );
void EMITVARINIOFS( uint8*, int32 );
void EMITWRITESTR( uint8*, int32 );
void EMITRESET( void );
void EMITFLUSH( void );
void EDBGINIT( void );
void EDBGEMITHEADER( uint8* );
void EDBGLINEBEGIN( struct $8FBSYMBOL*, int32, int32, uint8* );
void EDBGLINEEND( struct $8FBSYMBOL*, int32, int32 );
void EDBGEMITLINEFLUSH( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
void EDBGSCOPEBEGIN( struct $8FBSYMBOL* );
void EDBGSCOPEEND( struct $8FBSYMBOL* );
void EDBGEMITSCOPEINI( struct $8FBSYMBOL* );
void EDBGEMITSCOPEEND( struct $8FBSYMBOL* );
void EDBGPROCBEGIN( struct $8FBSYMBOL* );
void EDBGPROCEND( struct $8FBSYMBOL* );
void EDBGPROCEMITBEGIN( struct $8FBSYMBOL* );
void EDBGEMITPROCHEADER( struct $8FBSYMBOL* );
void EDBGEMITPROCFOOTER( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void EDBGEMITFOOTER( void );
void EDBGEMITGLOBALVAR( struct $8FBSYMBOL*, int32 );
void EDBGINCLUDE( uint8* );
void HPREPOPERAND( struct $6IRVREG*, FBSTRING*, $11FB_DATATYPE, int32, int32, int32 );
void HPREPOPERAND64( struct $6IRVREG*, FBSTRING*, FBSTRING* );
void HPUSH( uint8* );
void HPOP( uint8* );
int32 HFINDREGNOTINVREG( struct $6IRVREG*, int32 );
int32 HFINDFREEREG( int32 );
int32 HISREGFREE( int32, int32 );
int32 HISREGINVREG( struct $6IRVREG*, int32 );
uint8* HGETREGNAME( int32, int32 );
void OUTP( uint8* );
void HLABEL( uint8* );
void HBRANCH( uint8*, uint8* );
void HMOV( uint8*, uint8* );
int32 _INIT_OPFNTB_SSE( void** );
void IRHLFLUSHSTATICINITIALIZER( struct $8FBSYMBOL* );
static void HDECLVARIABLE( struct $8FBSYMBOL* );
static uint8* _GETSECTIONSTRING( int32, int32 );
static void _SETSECTION( int32, int32 );
static uint8* _GETTYPESTRING( int32 );
static uint8* HGETIDXNAME( struct $6IRVREG* );
static void OUTEX( uint8*, int32 );
static void HXCHG( uint8*, uint8* );
static void HPUBLIC( uint8*, int32 );
static void HALIGN( int32 );
static void HINITREGTB( void );
static void HENDREGTB( void );
static int32 HGETGLOBALTYPEALIGN( int32 );
static int32 HGETGLOBALVARALIGN( struct $8FBSYMBOL* );
static void HEMITVARBSS( struct $8FBSYMBOL* );
static void HWRITEHEADER( void );
static void HEMITVARCONST( struct $8FBSYMBOL* );
static void HWRITECTOR( struct $20FB_GLOBCTORLIST_ITEM*, int32 );
static void HEMITEXPORT( struct $8FBSYMBOL* );
static void HCLEARLOCALS( int32, int32 );
static int32 HFRAMEBYTESTOALLOC( struct $8FBSYMBOL* );
static void HSTOREREGISTERARGUMENT( struct $8FBSYMBOL*, FBSTRING* );
static void HSTOREREGISTERARGUMENTS( struct $8FBSYMBOL* );
static void HCREATEFRAME( struct $8FBSYMBOL* );
static void HDESTROYFRAME( struct $8FBSYMBOL*, int32 );
static void _EMITLIT( uint8* );
static void _EMITJMPTB( struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITCALL( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static void _EMITCALLPTR( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static void _EMITBRANCH( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static void _EMITJUMP( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static void _EMITJUMPPTR( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static void _EMITRET( struct $6IRVREG* );
static void _EMITPUBLIC( struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void _EMITNOP( void );
static void HULONG2DBL( struct $6IRVREG* );
static void _EMITSTORL2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDIVF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDIVI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMODI( struct $6IRVREG*, struct $6IRVREG* );
static void HSHIFTL( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HSHIFTI( int32, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHLL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHLI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHRL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHRI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITANDL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITANDI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITORL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITORI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITXORL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITXORI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITEQVL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITEQVI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITIMPL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITIMPI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITATN2( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITPOW( struct $6IRVREG*, struct $6IRVREG* );
static void HCMPL( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, uint8*, uint8*, struct $6IRVREG*, struct $6IRVREG*, int32 );
static void HCMPI( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, struct $6IRVREG*, struct $6IRVREG* );
static void HCMPF( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, uint8*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITNEGL( struct $6IRVREG* );
static void _EMITNEGI( struct $6IRVREG* );
static void _EMITNEGF( struct $6IRVREG* );
static void _EMITNOTL( struct $6IRVREG* );
static void _EMITNOTI( struct $6IRVREG* );
static void _EMITABSL( struct $6IRVREG* );
static void _EMITABSI( struct $6IRVREG* );
static void _EMITABSF( struct $6IRVREG* );
static void _EMITSGNL( struct $6IRVREG* );
static void _EMITSGNI( struct $6IRVREG* );
static void _EMITSGNF( struct $6IRVREG* );
static void _EMITSIN( struct $6IRVREG* );
static void _EMITASIN( struct $6IRVREG* );
static void _EMITCOS( struct $6IRVREG* );
static void _EMITACOS( struct $6IRVREG* );
static void _EMITTAN( struct $6IRVREG* );
static void _EMITATAN( struct $6IRVREG* );
static void _EMITSQRT( struct $6IRVREG* );
static void _EMITLOG( struct $6IRVREG* );
static void _EMITEXP( struct $6IRVREG* );
static void HFPUCHANGERC( FBSTRING*, uint8* );
static void HEMITFLOATFUNC( int32 );
static void HEMITFLOAT_INT_686( struct $6IRVREG* );
static void HEMITFLOAT_FIX_686( struct $6IRVREG* );
static void _EMITFLOOR( struct $6IRVREG* );
static void _EMITFIX( struct $6IRVREG* );
static void _EMITFRAC( struct $6IRVREG* );
static void _EMITCONVFD2FS( struct $6IRVREG* );
static void _EMITXCHGTOS( struct $6IRVREG* );
static void _EMITSTACKALIGN( struct $6IRVREG*, int32 );
static void _EMITPUSHL( struct $6IRVREG*, int32 );
static void _EMITPUSHI( struct $6IRVREG*, int32 );
static void _EMITPUSHF( struct $6IRVREG*, int32 );
static void _EMITPUSHUDT( struct $6IRVREG*, int32 );
static void _EMITPOPL( struct $6IRVREG*, int32 );
static void _EMITPOPI( struct $6IRVREG*, int32 );
static void _EMITPOPF( struct $6IRVREG*, int32 );
static void _EMITPOPST0( void );
static void _EMITADDROF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDEREF( struct $6IRVREG*, struct $6IRVREG* );
static void HMEMMOVEREP( struct $6IRVREG*, struct $6IRVREG*, int32 );
static void HMEMMOVEBLK( struct $6IRVREG*, struct $6IRVREG*, int32 );
static void _EMITMEMMOVE( struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITMEMSWAP( struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void HMEMCLEARREPIMM( struct $6IRVREG*, uint32 );
static void HMEMCLEARBLKIMM( struct $6IRVREG*, uint32 );
static void HMEMCLEAR( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMEMCLEAR( struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITSTKCLEAR( struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITLINEINI( struct $8FBSYMBOL*, int32, int32, uint8* );
static void _EMITLINEEND( struct $8FBSYMBOL*, int32, int32 );
static void _EMITSCOPEINI( struct $8FBSYMBOL*, int32, int32 );
static void _EMITSCOPEEND( struct $8FBSYMBOL*, int32, int32 );
static void _EMITLOADB2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADB2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADB2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADB2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2B( struct $6IRVREG*, struct $6IRVREG* );
static int32 _INIT( void );
static void _END( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int32 _OPEN( void );
static void _CLOSE( void );
static uint8* _PROCGETFRAMEREGNAME( void );
static int32 _ISREGPRESERVED( int32, int32 );
static void _GETARGREG( int32, int32, int32, int32* );
static void _GETRESULTREG( int32, int32, int32*, int32* );
static int32 _GETFREEPRESERVEDREG( int32, int32 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCHEADER( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCFOOTER( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
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
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
struct $6TFLIST {
	int32 TOTITEMS;
	int32 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int32 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 56 );
struct $7EMITCTX {
	int32 INITED;
	int32 POS;
	struct $8REGCLASS* REGTB[2];
	struct $6TFLIST NODETB;
	struct $6TFLIST VREGTB;
	struct $9EMIT_NODE* CURNODE;
	int32 REGUSEDTB[2];
	int32 LASTSECTION;
	int32 LASTPRIORITY;
	struct $9EMIT_VTBL VTBL;
	void** OPFNTB;
};
__FB_STATIC_ASSERT( sizeof( struct $7EMITCTX ) == 240 );
extern struct $7EMITCTX EMIT$;
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
static uint8 RNAMETB$[4][8][8] = { { "dl", "di", "si", "cl", "bl", "al", "bp", "sp" }, { "dx", "di", "si", "cx", "bx", "ax", "bp", "sp" }, { "edx", "edi", "esi", "ecx", "ebx", "eax", "ebp", "esp" }, { "st(0)", "st(1)", "st(2)", "st(3)", "st(4)", "st(5)", "st(6)", "st(7)" } };
static void* _OPFNTB$[143] = { (void*)&_EMITNOP, (void*)&_EMITLOADI2I, (void*)&_EMITLOADF2I, (void*)&_EMITLOADL2I, (void*)&_EMITLOADB2I, (void*)&_EMITLOADI2F, (void*)&_EMITLOADF2F, (void*)&_EMITLOADL2F, (void*)&_EMITLOADB2F, (void*)&_EMITLOADI2L, (void*)&_EMITLOADF2L, (void*)&_EMITLOADL2L, (void*)&_EMITLOADB2L, (void*)&_EMITLOADI2B, (void*)&_EMITLOADF2B, (void*)&_EMITLOADL2B, (void*)&_EMITLOADB2B, (void*)&_EMITSTORI2I, (void*)&_EMITSTORF2I, (void*)&_EMITSTORL2I, (void*)&_EMITSTORB2I, (void*)&_EMITSTORI2F, (void*)&_EMITSTORF2F, (void*)&_EMITSTORL2F, (void*)&_EMITSTORB2F, (void*)&_EMITSTORI2L, (void*)&_EMITSTORF2L, (void*)&_EMITSTORL2L, (void*)&_EMITSTORB2L, (void*)&_EMITSTORI2B, (void*)&_EMITSTORF2B, (void*)&_EMITSTORL2B, (void*)&_EMITSTORB2B, (void*)&_EMITMOVI, (void*)&_EMITMOVF, (void*)&_EMITMOVL, (void*)&_EMITADDI, (void*)&_EMITADDF, (void*)&_EMITADDL, (void*)&_EMITSUBI, (void*)&_EMITSUBF, (void*)&_EMITSUBL, (void*)&_EMITMULI, (void*)&_EMITMULF, (void*)&_EMITMULL, (void*)&_EMITDIVI, (void*)&_EMITDIVF, (void*)0u, (void*)&_EMITMODI, (void*)0u, (void*)0u, (void*)&_EMITSHLI, (void*)&_EMITSHLL, (void*)&_EMITSHRI, (void*)&_EMITSHRL, (void*)&_EMITANDI, (void*)&_EMITANDL, (void*)&_EMITORI, (void*)&_EMITORL, (void*)&_EMITXORI, (void*)&_EMITXORL, (void*)&_EMITEQVI, (void*)&_EMITEQVL, (void*)&_EMITIMPI, (void*)&_EMITIMPL, (void*)&_EMITATN2, (void*)&_EMITPOW, (void*)&_EMITADDROF, (void*)&_EMITDEREF, (void*)&_EMITCGTI, (void*)&_EMITCGTF, (void*)&_EMITCGTL, (void*)&_EMITCLTI, (void*)&_EMITCLTF, (void*)&_EMITCLTL, (void*)&_EMITCEQI, (void*)&_EMITCEQF, (void*)&_EMITCEQL, (void*)&_EMITCNEI, (void*)&_EMITCNEF, (void*)&_EMITCNEL, (void*)&_EMITCGEI, (void*)&_EMITCGEF, (void*)&_EMITCGEL, (void*)&_EMITCLEI, (void*)&_EMITCLEF, (void*)&_EMITCLEL, (void*)&_EMITNEGI, (void*)&_EMITNEGF, (void*)&_EMITNEGL, (void*)&_EMITNOTI, (void*)&_EMITNOTL, (void*)0u, (void*)&_EMITABSI, (void*)&_EMITABSF, (void*)&_EMITABSL, (void*)&_EMITSGNI, (void*)&_EMITSGNF, (void*)&_EMITSGNL, (void*)&_EMITFIX, (void*)&_EMITFRAC, (void*)&_EMITCONVFD2FS, (void*)0u, (void*)&_EMITSIN, (void*)&_EMITASIN, (void*)&_EMITCOS, (void*)&_EMITACOS, (void*)&_EMITTAN, (void*)&_EMITATAN, (void*)&_EMITSQRT, (void*)0u, (void*)0u, (void*)&_EMITLOG, (void*)&_EMITEXP, (void*)&_EMITFLOOR, (void*)&_EMITXCHGTOS, (void*)&_EMITSTACKALIGN, (void*)&_EMITPUSHI, (void*)&_EMITPUSHF, (void*)&_EMITPUSHL, (void*)&_EMITPOPI, (void*)&_EMITPOPF, (void*)&_EMITPOPL, (void*)&_EMITPUSHUDT, (void*)&_EMITPOPST0, (void*)&_EMITCALL, (void*)&_EMITCALLPTR, (void*)&_EMITBRANCH, (void*)&_EMITJUMP, (void*)&_EMITJUMPPTR, (void*)&_EMITRET, (void*)&_EMITLABEL, (void*)&_EMITPUBLIC, (void*)&_EMITLIT, (void*)&_EMITJMPTB, (void*)&_EMITMEMMOVE, (void*)&_EMITMEMSWAP, (void*)&_EMITMEMCLEAR, (void*)&_EMITSTKCLEAR, (void*)&_EMITLINEINI, (void*)&_EMITLINEEND, (void*)&_EMITSCOPEINI, (void*)&_EMITSCOPEEND };
struct $12EMITDATATYPE DTYPETB$[26] = { { 0, "void ptr" }, { 0, "byte ptr" }, { 0, "byte ptr" }, { 0, "byte ptr" }, { 0, "byte ptr" }, { 1, "word ptr" }, { 1, "word ptr" }, { 1, "word ptr" }, { 2, "dword ptr" }, { 2, "dword ptr" }, { 2, "dword ptr" }, { 2, "dword ptr" }, { 2, "dword ptr" }, { 2, "qword ptr" }, { 2, "qword ptr" }, { 3, "dword ptr" }, { 3, "qword ptr" }, { 0, "" }, { 0, "byte ptr" }, { 0, "dword ptr" }, { 2, "dword ptr" }, { 0, "" }, { 2, "dword ptr" }, { 0, "byte ptr" }, { 2, "dword ptr" }, { 3, "xmmword ptr" } };

int32 HISREGFREE( int32 DCLASS$1, int32 REG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	if( DCLASS$1 != 0 ) goto label$13;
	{
		{
			if( REG$1 == 4 ) goto label$16;
			label$17:;
			if( REG$1 == 2 ) goto label$16;
			label$18:;
			if( REG$1 != 1 ) goto label$15;
			label$16:;
			{
				if( (*(int32*)((uint8*)&EMIT$ + 132) & (1 << (REG$1 & 31))) != 0 ) goto label$20;
				{
					fb$result$1 = 0;
					goto label$11;
				}
				label$20:;
				label$19:;
			}
			label$15:;
			label$14:;
		}
	}
	label$13:;
	label$12:;
	*(int32*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 132) = *(int32*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 132) | (1 << (REG$1 & 31));
	fb$result$1 = -((*(int32*)((uint8*)((uint8*)*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 128) + (DCLASS$1 << (2 & 31))) + 48) & (1 << (REG$1 & 31))) != 0);
	label$11:;
	return fb$result$1;
}

int32 HFINDREGNOTINVREG( struct $6IRVREG* VREG$1, int32 NOSIDI$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$21:;
	int32 R$1;
	int32 REG$1;
	int32 REG2$1;
	int32 REGS$1;
	fb$result$1 = -1;
	REG$1 = -1;
	{
		$15IRVREGTYPE_ENUM TMP$142$2;
		TMP$142$2 = *($15IRVREGTYPE_ENUM*)VREG$1;
		if( TMP$142$2 != 4 ) goto label$24;
		label$25:;
		{
			REG$1 = *(int32*)((uint8*)VREG$1 + 12);
		}
		goto label$23;
		label$24:;
		if( TMP$142$2 == 2 ) goto label$27;
		label$28:;
		if( TMP$142$2 != 3 ) goto label$26;
		label$27:;
		{
			if( *(struct $6IRVREG**)((uint8*)VREG$1 + 52) == (struct $6IRVREG*)0u ) goto label$30;
			{
				if( *(int32*)*(struct $6IRVREG**)((uint8*)VREG$1 + 52) != 4 ) goto label$32;
				{
					REG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 52) + 12);
				}
				label$32:;
				label$31:;
			}
			label$30:;
			label$29:;
		}
		label$26:;
		label$23:;
	}
	REG2$1 = -1;
	if( *(struct $6IRVREG**)((uint8*)VREG$1 + 56) == (struct $6IRVREG*)0u ) goto label$34;
	{
		if( *(int32*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) != 4 ) goto label$36;
		{
			REG2$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 12);
		}
		label$36:;
		label$35:;
	}
	label$34:;
	label$33:;
	int32 vr$13 = (*(tmp$87*)((uint8*)*(struct $8REGCLASS**)((uint8*)&EMIT$ + 8) + 24))( *(struct $8REGCLASS**)((uint8*)&EMIT$ + 8) );
	REGS$1 = vr$13;
	if( REG2$1 != -1 ) goto label$38;
	{
		if( NOSIDI$1 != 0 ) goto label$40;
		{
			{
				int32 R$4;
				R$4 = REGS$1 + -1;
				goto label$41;
				label$44:;
				{
					if( R$4 == REG$1 ) goto label$46;
					{
						fb$result$1 = R$4;
						int32 vr$16 = HISREGFREE( 0, R$4 );
						if( vr$16 == 0 ) goto label$48;
						{
							goto label$43;
						}
						label$48:;
						label$47:;
					}
					label$46:;
					label$45:;
				}
				label$42:;
				R$4 = R$4 + -1;
				label$41:;
				if( R$4 >= 0 ) goto label$44;
				label$43:;
			}
		}
		goto label$39;
		label$40:;
		{
			{
				int32 R$4;
				R$4 = REGS$1 + -1;
				goto label$49;
				label$52:;
				{
					if( R$4 == REG$1 ) goto label$54;
					{
						if( R$4 == 2 ) goto label$56;
						{
							if( R$4 == 1 ) goto label$58;
							{
								fb$result$1 = R$4;
								int32 vr$19 = HISREGFREE( 0, R$4 );
								if( vr$19 == 0 ) goto label$60;
								{
									goto label$51;
								}
								label$60:;
								label$59:;
							}
							label$58:;
							label$57:;
						}
						label$56:;
						label$55:;
					}
					label$54:;
					label$53:;
				}
				label$50:;
				R$4 = R$4 + -1;
				label$49:;
				if( R$4 >= 0 ) goto label$52;
				label$51:;
			}
		}
		label$39:;
	}
	goto label$37;
	label$38:;
	{
		if( NOSIDI$1 != 0 ) goto label$62;
		{
			{
				int32 R$4;
				R$4 = REGS$1 + -1;
				goto label$63;
				label$66:;
				{
					if( (-(R$4 != REG$1) & -(R$4 != REG2$1)) == 0 ) goto label$68;
					{
						fb$result$1 = R$4;
						int32 vr$25 = HISREGFREE( 0, R$4 );
						if( vr$25 == 0 ) goto label$70;
						{
							goto label$65;
						}
						label$70:;
						label$69:;
					}
					label$68:;
					label$67:;
				}
				label$64:;
				R$4 = R$4 + -1;
				label$63:;
				if( R$4 >= 0 ) goto label$66;
				label$65:;
			}
		}
		goto label$61;
		label$62:;
		{
			{
				R$1 = REGS$1 + -1;
				goto label$71;
				label$74:;
				{
					if( (-(R$1 != REG$1) & -(R$1 != REG2$1)) == 0 ) goto label$76;
					{
						if( R$1 == 2 ) goto label$78;
						{
							if( R$1 == 1 ) goto label$80;
							{
								fb$result$1 = R$1;
								int32 vr$31 = HISREGFREE( 0, R$1 );
								if( vr$31 == 0 ) goto label$82;
								{
									goto label$73;
								}
								label$82:;
								label$81:;
							}
							label$80:;
							label$79:;
						}
						label$78:;
						label$77:;
					}
					label$76:;
					label$75:;
				}
				label$72:;
				R$1 = R$1 + -1;
				label$71:;
				if( R$1 >= 0 ) goto label$74;
				label$73:;
			}
		}
		label$61:;
	}
	label$37:;
	label$22:;
	return fb$result$1;
}

int32 HFINDFREEREG( int32 DCLASS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$83:;
	fb$result$1 = -1;
	{
		int32 R$2;
		int32 vr$3 = (*(tmp$87*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) + 24))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) );
		R$2 = vr$3 + -1;
		goto label$85;
		label$88:;
		{
			int32 vr$8 = HISREGFREE( DCLASS$1, R$2 );
			if( vr$8 == 0 ) goto label$90;
			{
				fb$result$1 = R$2;
				goto label$84;
			}
			label$90:;
			label$89:;
		}
		label$86:;
		R$2 = R$2 + -1;
		label$85:;
		if( R$2 >= 0 ) goto label$88;
		label$87:;
	}
	label$84:;
	return fb$result$1;
}

int32 HISREGINVREG( struct $6IRVREG* VREG$1, int32 REG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$91:;
	fb$result$1 = 0;
	{
		$15IRVREGTYPE_ENUM TMP$143$2;
		TMP$143$2 = *($15IRVREGTYPE_ENUM*)VREG$1;
		if( TMP$143$2 != 4 ) goto label$94;
		label$95:;
		{
			if( *(int32*)((uint8*)VREG$1 + 12) != REG$1 ) goto label$97;
			{
				fb$result$1 = -1;
				goto label$92;
			}
			label$97:;
			label$96:;
		}
		goto label$93;
		label$94:;
		if( TMP$143$2 == 2 ) goto label$99;
		label$100:;
		if( TMP$143$2 != 3 ) goto label$98;
		label$99:;
		{
			if( *(struct $6IRVREG**)((uint8*)VREG$1 + 52) == (struct $6IRVREG*)0u ) goto label$102;
			{
				if( *(int32*)*(struct $6IRVREG**)((uint8*)VREG$1 + 52) != 4 ) goto label$104;
				{
					if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 52) + 12) != REG$1 ) goto label$106;
					{
						fb$result$1 = -1;
						goto label$92;
					}
					label$106:;
					label$105:;
				}
				label$104:;
				label$103:;
			}
			label$102:;
			label$101:;
		}
		label$98:;
		label$93:;
	}
	if( *(struct $6IRVREG**)((uint8*)VREG$1 + 56) == (struct $6IRVREG*)0u ) goto label$108;
	{
		if( *(int32*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) != 4 ) goto label$110;
		{
			if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 12) != REG$1 ) goto label$112;
			{
				fb$result$1 = -1;
				goto label$92;
			}
			label$112:;
			label$111:;
		}
		label$110:;
		label$109:;
	}
	label$108:;
	label$107:;
	label$92:;
	return fb$result$1;
}

uint8* HGETREGNAME( int32 DTYPE$1, int32 REG$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$113:;
	if( REG$1 != -1 ) goto label$116;
	{
		fb$result$1 = (uint8*)0u;
	}
	goto label$115;
	label$116:;
	{
		int32 TMP$144$2;
		int32 TB$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$117;
		TMP$144$2 = 24;
		goto label$118;
		label$117:;
		TMP$144$2 = DTYPE$1 & 31;
		label$118:;
		TB$2 = *(int32*)((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (TMP$144$2 << (4 & 31)));
		fb$result$1 = (uint8*)((int32)(uint8*)RNAMETB$ + (((TB$2 << (3 & 31)) + REG$1) << (3 & 31)));
	}
	label$115:;
	label$114:;
	return fb$result$1;
}

void HPREPOPERAND( struct $6IRVREG* VREG$1, FBSTRING* OPERAND$1, $11FB_DATATYPE DTYPE$1, int32 OFS$1, int32 ISAUX$1, int32 ADDPREFIX$1 )
{
	label$138:;
	if( VREG$1 != (struct $6IRVREG*)0u ) goto label$141;
	{
		fb_StrAssign( (void*)OPERAND$1, -1, (void*)"", 1, 0 );
		goto label$139;
	}
	label$141:;
	label$140:;
	if( DTYPE$1 != -2147483648u ) goto label$143;
	{
		DTYPE$1 = *($11FB_DATATYPE*)((uint8*)VREG$1 + 4);
	}
	label$143:;
	label$142:;
	{
		uint32 TMP$153$2;
		TMP$153$2 = *(uint32*)VREG$1;
		goto label$145;
		label$146:;
		{
			if( ADDPREFIX$1 == 0 ) goto label$148;
			{
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (DTYPE$1 << (4 & 31))) + 4), 12, 0 );
				fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)" [", 3, 0 );
			}
			goto label$147;
			label$148:;
			{
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)"[", 2, 0 );
			}
			label$147:;
			static uint8* IDX_OP$3;
			if( *(int32*)VREG$1 != 1 ) goto label$150;
			{
				uint8* vr$6 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) );
				IDX_OP$3 = vr$6;
			}
			goto label$149;
			label$150:;
			{
				uint8* vr$7 = HGETIDXNAME( VREG$1 );
				IDX_OP$3 = vr$7;
			}
			label$149:;
			if( IDX_OP$3 == (uint8*)0u ) goto label$152;
			{
				FBSTRING TMP$156$4;
				__builtin_memset( &TMP$156$4, 0, 12 );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$156$4, (void*)OPERAND$1, -1, (void*)IDX_OP$3, 0 );
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)vr$10, -1, 0 );
			}
			label$152:;
			label$151:;
			OFS$1 = (int32)((int64)OFS$1 + *(int64*)((uint8*)VREG$1 + 40));
			if( ISAUX$1 == 0 ) goto label$154;
			{
				OFS$1 = OFS$1 + 4;
			}
			label$154:;
			label$153:;
			if( OFS$1 <= 0 ) goto label$156;
			{
				if( IDX_OP$3 == (uint8*)0u ) goto label$158;
				{
					fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)"+", 2, 0 );
				}
				label$158:;
				label$157:;
				FBSTRING* vr$16 = fb_IntToStr( OFS$1 );
				fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)vr$16, -1, 0 );
			}
			goto label$155;
			label$156:;
			if( OFS$1 >= 0 ) goto label$159;
			{
				FBSTRING* vr$17 = fb_IntToStr( OFS$1 );
				fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)vr$17, -1, 0 );
			}
			goto label$155;
			label$159:;
			{
				if( IDX_OP$3 != (uint8*)0u ) goto label$161;
				{
					fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)"0", 2, 0 );
				}
				label$161:;
				label$160:;
			}
			label$155:;
			fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)"]", 2, 0 );
		}
		goto label$144;
		label$162:;
		{
			FBSTRING TMP$159$3;
			fb_StrAssign( (void*)OPERAND$1, -1, (void*)"offset ", 8, 0 );
			uint8* vr$19 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) );
			__builtin_memset( &TMP$159$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$159$3, (void*)OPERAND$1, -1, (void*)vr$19, 0 );
			fb_StrAssign( (void*)OPERAND$1, -1, (void*)vr$22, -1, 0 );
			if( *(int64*)((uint8*)VREG$1 + 40) == 0ll ) goto label$164;
			{
				FBSTRING TMP$161$4;
				fb_StrConcatByref( (void*)OPERAND$1, -1, (void*)" + ", 4, 0 );
				FBSTRING* vr$25 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 40) );
				__builtin_memset( &TMP$161$4, 0, 12 );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$161$4, (void*)OPERAND$1, -1, (void*)vr$25, -1 );
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)vr$28, -1, 0 );
			}
			label$164:;
			label$163:;
		}
		goto label$144;
		label$165:;
		{
			if( ISAUX$1 != 0 ) goto label$167;
			{
				uint8* vr$30 = HGETREGNAME( DTYPE$1, *(int32*)((uint8*)VREG$1 + 12) );
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)vr$30, 0, 0 );
			}
			goto label$166;
			label$167:;
			{
				uint8* vr$33 = HGETREGNAME( DTYPE$1, *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 12) );
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)vr$33, 0, 0 );
			}
			label$166:;
		}
		goto label$144;
		label$168:;
		{
			static int64 I$3;
			if( ISAUX$1 != 0 ) goto label$170;
			{
				I$3 = *(int64*)((uint8*)VREG$1 + 24);
			}
			goto label$169;
			label$170:;
			{
				I$3 = *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 24);
			}
			label$169:;
			if( DTYPE$1 != 1 ) goto label$172;
			{
				if( I$3 == 0ll ) goto label$174;
				{
					fb_StrAssign( (void*)OPERAND$1, -1, (void*)"1", 2, 0 );
				}
				goto label$173;
				label$174:;
				{
					fb_StrAssign( (void*)OPERAND$1, -1, (void*)"0", 2, 0 );
				}
				label$173:;
			}
			goto label$171;
			label$172:;
			{
				FBSTRING* vr$37 = fb_LongintToStr( I$3 );
				fb_StrAssign( (void*)OPERAND$1, -1, (void*)vr$37, -1, 0 );
			}
			label$171:;
		}
		goto label$144;
		label$175:;
		{
			fb_StrAssign( (void*)OPERAND$1, -1, (void*)"", 1, 0 );
		}
		goto label$144;
		label$145:;
		static const void* tmp$162[6] = {
			&&label$168,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$165,
			&&label$162,
		};
		if( TMP$153$2 > 5u ) goto label$175;
		goto *tmp$162[TMP$153$2 - 0u];
		label$144:;
	}
	label$139:;
}

void HPREPOPERAND64( struct $6IRVREG* VREG$1, FBSTRING* OPERAND1$1, FBSTRING* OPERAND2$1 )
{
	label$176:;
	HPREPOPERAND( VREG$1, OPERAND1$1, 9, 0, 0, -1 );
	HPREPOPERAND( VREG$1, OPERAND2$1, 8, 0, -1, -1 );
	label$177:;
}

void OUTP( uint8* S$1 )
{
	label$184:;
	static FBSTRING OSTR$1;
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$187;
	{
		FBSTRING TMP$164$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"\x09", 2, 0 );
		__builtin_memset( &TMP$164$2, 0, 12 );
		FBSTRING* vr$2 = fb_StrConcat( &TMP$164$2, (void*)&OSTR$1, -1, (void*)S$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	}
	goto label$186;
	label$187:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)S$1, 0, 0 );
	}
	label$186:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	int32 vr$3 = fb_StrLen( (void*)&OSTR$1, -1 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, vr$3 );
	label$185:;
}

void HBRANCH( uint8* MNEMONIC$1, uint8* LABEL$1 )
{
	FBSTRING TMP$167$1;
	label$188:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)MNEMONIC$1, 0, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)" ", 2, 0 );
	__builtin_memset( &TMP$167$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$167$1, (void*)&OSTR$1, -1, (void*)LABEL$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$189:;
}

void HPUSH( uint8* RNAME$1 )
{
	FBSTRING TMP$169$1;
	label$190:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
	__builtin_memset( &TMP$169$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$169$1, (void*)&OSTR$1, -1, (void*)RNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$191:;
}

void HPOP( uint8* RNAME$1 )
{
	FBSTRING TMP$171$1;
	label$192:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
	__builtin_memset( &TMP$171$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$171$1, (void*)&OSTR$1, -1, (void*)RNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$193:;
}

void HMOV( uint8* DNAME$1, uint8* SNAME$1 )
{
	FBSTRING TMP$173$1;
	FBSTRING TMP$174$1;
	label$194:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	__builtin_memset( &TMP$173$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$173$1, (void*)&OSTR$1, -1, (void*)DNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	__builtin_memset( &TMP$174$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$174$1, (void*)&OSTR$1, -1, (void*)SNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$5, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$195:;
}

void HLABEL( uint8* LABEL$1 )
{
	label$202:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)LABEL$1, 0, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)":\x0A", 3, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$203:;
}

void EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$1610:;
	_SETSECTION( 1, 0 );
	EDBGEMITGLOBALVAR( SYM$1, 1 );
	int32 vr$0 = HGETGLOBALVARALIGN( SYM$1 );
	HALIGN( vr$0 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$1613;
	{
		uint8* vr$6 = SYMBGETMANGLEDNAME( SYM$1 );
		HPUBLIC( vr$6, -((*(int32*)((uint8*)SYM$1 + 4) & 256) != 0) );
	}
	label$1613:;
	label$1612:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( SYM$1 );
	HLABEL( vr$7 );
	label$1611:;
}

void EMITVARINII( int32 DTYPE$1, int64 VALUE$1 )
{
	FBSTRING TMP$940$1;
	label$1614:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	uint8* vr$1 = _GETTYPESTRING( DTYPE$1 );
	__builtin_memset( &TMP$940$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$940$1, (void*)vr$1, 0, (void*)" ", 2 );
	fb_StrAssign( (void*)&S$1, -1, (void*)vr$4, -1, 0 );
	if( (-(DTYPE$1 == 1) & -(VALUE$1 != 0ll)) == 0 ) goto label$1617;
	{
		VALUE$1 = 1ll;
	}
	label$1617:;
	label$1616:;
	if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$1619;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$13 = fb_HEX_l( (uint64)VALUE$1 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$13, -1, 0 );
	}
	goto label$1618;
	label$1619:;
	{
		FBSTRING* vr$15 = fb_LongintToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$15, -1, 0 );
	}
	label$1618:;
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x0A", 2, 0 );
	OUTEX( (uint8*)*(uint8**)&S$1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1615:;
}

void EMITVARINIF( int32 DTYPE$1, double VALUE$1 )
{
	FBSTRING TMP$942$1;
	FBSTRING TMP$943$1;
	FBSTRING TMP$944$1;
	FBSTRING TMP$945$1;
	label$1620:;
	__builtin_memset( &TMP$945$1, 0, 12 );
	FBSTRING* vr$1 = HFLOATTOHEX( VALUE$1, DTYPE$1 );
	uint8* vr$2 = _GETTYPESTRING( DTYPE$1 );
	__builtin_memset( &TMP$942$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$942$1, (void*)vr$2, 0, (void*)" ", 2 );
	__builtin_memset( &TMP$943$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$943$1, (void*)vr$5, -1, (void*)vr$1, -1 );
	__builtin_memset( &TMP$944$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$944$1, (void*)vr$8, -1, (void*)"\x0A", 2 );
	fb_StrAssign( (void*)&TMP$945$1, -1, (void*)vr$11, -1, 0 );
	OUTEX( (uint8*)*(uint8**)&TMP$945$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$945$1 );
	label$1621:;
}

void EMITVARINIOFS( uint8* SNAME$1, int32 OFS$1 )
{
	FBSTRING TMP$947$1;
	label$1622:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".int ", 6, 0 );
	__builtin_memset( &TMP$947$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$947$1, (void*)&OSTR$1, -1, (void*)SNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	if( OFS$1 == 0 ) goto label$1625;
	{
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)" + ", 4, 0 );
		FBSTRING* vr$3 = fb_IntToStr( OFS$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	}
	label$1625:;
	label$1624:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$1623:;
}

void EMITVARINISTR( uint8* S$1 )
{
	FBSTRING TMP$948$1;
	label$1626:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".ascii \x22", 9, 0 );
	__builtin_memset( &TMP$948$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$948$1, (void*)&OSTR$1, -1, (void*)S$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x5C" "0\x22\x0A", 5, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$1627:;
}

void EMITVARINIWSTR( uint8* S$1 )
{
	FBSTRING TMP$950$1;
	label$1628:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".ascii \x22", 9, 0 );
	__builtin_memset( &TMP$950$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$950$1, (void*)&OSTR$1, -1, (void*)S$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$951$2;
		TMP$951$2 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
		goto label$1630;
		label$1633:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x5C" "0", 3, 0 );
		}
		label$1631:;
		I$2 = I$2 + 1;
		label$1630:;
		if( I$2 <= TMP$951$2 ) goto label$1633;
		label$1632:;
	}
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x22\x0A", 3, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$1629:;
}

void EMITVARINIPAD( int32 BYTES$1 )
{
	FBSTRING TMP$954$1;
	FBSTRING TMP$955$1;
	FBSTRING TMP$956$1;
	FBSTRING TMP$957$1;
	label$1634:;
	__builtin_memset( &TMP$957$1, 0, 12 );
	FBSTRING* vr$1 = fb_IntToStr( BYTES$1 );
	__builtin_memset( &TMP$954$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$954$1, (void*)".skip ", 7, (void*)vr$1, -1 );
	__builtin_memset( &TMP$955$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$955$1, (void*)vr$4, -1, (void*)",0", 3 );
	__builtin_memset( &TMP$956$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$956$1, (void*)vr$7, -1, (void*)"\x0A", 2 );
	fb_StrAssign( (void*)&TMP$957$1, -1, (void*)vr$10, -1, 0 );
	OUTEX( (uint8*)*(uint8**)&TMP$957$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$957$1 );
	label$1635:;
}

void EMITFBCTINFBEGIN( void )
{
	label$1636:;
	_SETSECTION( 7, 0 );
	label$1637:;
}

void EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$960$1;
	FBSTRING TMP$961$1;
	FBSTRING TMP$962$1;
	label$1638:;
	static FBSTRING LN$1;
	uint8* vr$0 = (*(tmp$102*)((uint8*)&EMIT$ + 228))( 4 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$0, 0, 0 );
	__builtin_memset( &TMP$960$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$960$1, (void*)" \x22", 3, (void*)S$1, 0 );
	__builtin_memset( &TMP$961$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$961$1, (void*)vr$3, -1, (void*)"\x5C" "0\x22", 4 );
	__builtin_memset( &TMP$962$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$962$1, (void*)&LN$1, -1, (void*)vr$6, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$9, -1, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&LN$1, 0 );
	label$1639:;
}

void EMITFBCTINFEND( void )
{
	label$1640:;
	EMITWRITESTR( (uint8*)"", 0 );
	label$1641:;
}

int32 EMITGASX86_CTOR( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1812:;
	static struct $9EMIT_VTBL _VTBL$1 = { (tmp$38)&_INIT, (tmp$37)&_END, (tmp$39)&_GETOPTIONVALUE, (tmp$38)&_OPEN, (tmp$37)&_CLOSE, (tmp$40)&_ISREGPRESERVED, (tmp$40)&_GETFREEPRESERVEDREG, (tmp$98)&_GETARGREG, (tmp$99)&_GETRESULTREG, (tmp$43)&_PROCGETFRAMEREGNAME, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCHEADER, (tmp$100)&_PROCFOOTER, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$101)&_SETSECTION, (tmp$102)&_GETTYPESTRING, (tmp$103)&_GETSECTIONSTRING };
	__builtin_memcpy( (struct $9EMIT_VTBL*)((uint8*)&EMIT$ + 148), &_VTBL$1, 88 );
	*(void***)((uint8*)&EMIT$ + 236) = (void**)_OPFNTB$;
	if( *(int32*)((uint8*)&ENV$ + 116) < 1 ) goto label$1815;
	{
		_INIT_OPFNTB_SSE( *(void***)((uint8*)&EMIT$ + 236) );
	}
	label$1815:;
	label$1814:;
	fb$result$1 = -1;
	label$1813:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__emit_x86( void )
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

static uint8* HGETIDXNAME( struct $6IRVREG* VREG$1 )
{
	FBSTRING TMP$147$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$119:;
	static uint8 INAME$1[154];
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* VI$1;
	static int32 ADDONE$1;
	static int32 MULT$1;
	static uint8* RNAME$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32);
	VI$1 = *(struct $6IRVREG**)((uint8*)VREG$1 + 52);
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$122;
	{
		if( VI$1 != (struct $6IRVREG*)0u ) goto label$124;
		{
			fb$result$1 = (uint8*)0u;
			goto label$120;
		}
		label$124:;
		label$123:;
		fb_StrAssign( (void*)INAME$1, 154, (void*)"", 1, 0 );
	}
	goto label$121;
	label$122:;
	{
		uint8* vr$3 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)INAME$1, 154, (void*)vr$3, 0, 0 );
		if( VI$1 == (struct $6IRVREG*)0u ) goto label$126;
		{
			FBSTRING TMP$146$3;
			__builtin_memset( &TMP$146$3, 0, 12 );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$146$3, (void*)INAME$1, 154, (void*)"+", 2 );
			fb_StrAssign( (void*)INAME$1, 154, (void*)vr$6, -1, 0 );
		}
		label$126:;
		label$125:;
	}
	label$121:;
	uint8* vr$9 = HGETREGNAME( *(int32*)((uint8*)VI$1 + 4), *(int32*)((uint8*)VI$1 + 12) );
	RNAME$1 = vr$9;
	__builtin_memset( &TMP$147$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$147$1, (void*)INAME$1, 154, (void*)RNAME$1, 0 );
	fb_StrAssign( (void*)INAME$1, 154, (void*)vr$12, -1, 0 );
	if( VI$1 == (struct $6IRVREG*)0u ) goto label$128;
	{
		MULT$1 = *(int32*)((uint8*)VREG$1 + 48);
		if( MULT$1 <= 1 ) goto label$130;
		{
			FBSTRING TMP$149$3;
			FBSTRING TMP$150$3;
			ADDONE$1 = 0;
			{
				if( MULT$1 == 3 ) goto label$133;
				label$134:;
				if( MULT$1 == 5 ) goto label$133;
				label$135:;
				if( MULT$1 != 9 ) goto label$132;
				label$133:;
				{
					MULT$1 = MULT$1 + -1;
					ADDONE$1 = -1;
				}
				label$132:;
				label$131:;
			}
			__builtin_memset( &TMP$149$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$149$3, (void*)INAME$1, 154, (void*)"*", 2 );
			fb_StrAssign( (void*)INAME$1, 154, (void*)vr$17, -1, 0 );
			FBSTRING* vr$18 = fb_IntToStr( MULT$1 );
			__builtin_memset( &TMP$150$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$150$3, (void*)INAME$1, 154, (void*)vr$18, -1 );
			fb_StrAssign( (void*)INAME$1, 154, (void*)vr$21, -1, 0 );
			if( ADDONE$1 == 0 ) goto label$137;
			{
				FBSTRING TMP$151$4;
				FBSTRING TMP$152$4;
				__builtin_memset( &TMP$151$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$151$4, (void*)INAME$1, 154, (void*)"+", 2 );
				fb_StrAssign( (void*)INAME$1, 154, (void*)vr$24, -1, 0 );
				__builtin_memset( &TMP$152$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$152$4, (void*)INAME$1, 154, (void*)RNAME$1, 0 );
				fb_StrAssign( (void*)INAME$1, 154, (void*)vr$27, -1, 0 );
			}
			label$137:;
			label$136:;
		}
		label$130:;
		label$129:;
	}
	label$128:;
	label$127:;
	fb$result$1 = (uint8*)INAME$1;
	label$120:;
	return fb$result$1;
}

static void OUTEX( uint8* S$1, int32 BYTES$1 )
{
	label$178:;
	if( BYTES$1 != 0 ) goto label$181;
	{
		int32 vr$0 = fb_StrLen( (void*)S$1, 0 );
		BYTES$1 = vr$0;
	}
	label$181:;
	label$180:;
	int32 vr$1 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)S$1, 0 );
	if( vr$1 != 0 ) goto label$183;
	{
	}
	label$183:;
	label$182:;
	label$179:;
}

static void HXCHG( uint8* DNAME$1, uint8* SNAME$1 )
{
	FBSTRING TMP$176$1;
	FBSTRING TMP$177$1;
	label$196:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg ", 6, 0 );
	__builtin_memset( &TMP$176$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$176$1, (void*)&OSTR$1, -1, (void*)DNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	__builtin_memset( &TMP$177$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$177$1, (void*)&OSTR$1, -1, (void*)SNAME$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$5, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$197:;
}

static void HPUBLIC( uint8* LABEL$1, int32 ISEXPORT$1 )
{
	FBSTRING TMP$183$1;
	label$200:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"\x0A.globl ", 9, 0 );
	__builtin_memset( &TMP$183$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$183$1, (void*)&OSTR$1, -1, (void*)LABEL$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$201:;
}

static void HALIGN( int32 BYTES$1 )
{
	label$204:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".balign ", 9, 0 );
	FBSTRING* vr$0 = fb_IntToStr( BYTES$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$0, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$205:;
}

static void HINITREGTB( void )
{
	label$206:;
	int32 LASTCLASS$1;
	__builtin_memset( &LASTCLASS$1, 0, 4 );
	int32 REGS$1;
	__builtin_memset( &REGS$1, 0, 4 );
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	static $12REG_SIZEMASK INT_BITSMASK$1[6] = { 7, 6, 6, 7, 7, 7 };
	static struct $8FBARRAY1I12REG_SIZEMASKE tmp$187$1 = { ($12REG_SIZEMASK*)INT_BITSMASK$1, ($12REG_SIZEMASK*)INT_BITSMASK$1, 24, 4, 1, 49, { { 6, 0, 5 } } };
	struct $8REGCLASS* vr$3 = REGNEWCLASS( 0, 6, (struct $7FBARRAYI12REG_SIZEMASKE*)&tmp$187$1, 0 );
	*(struct $8REGCLASS**)((uint8*)&EMIT$ + 8) = vr$3;
	static $12REG_SIZEMASK FLT_BITSMASK$1[7] = { 12, 12, 12, 12, 12, 12, 12 };
	static struct $8FBARRAY1I12REG_SIZEMASKE tmp$188$1 = { ($12REG_SIZEMASK*)FLT_BITSMASK$1, ($12REG_SIZEMASK*)FLT_BITSMASK$1, 28, 4, 1, 49, { { 7, 0, 6 } } };
	if( *(int32*)((uint8*)&ENV$ + 116) != 1 ) goto label$209;
	{
		struct $8REGCLASS* vr$4 = REGNEWCLASS( 1, 7, (struct $7FBARRAYI12REG_SIZEMASKE*)&tmp$188$1, 0 );
		*(struct $8REGCLASS**)((uint8*)&EMIT$ + 12) = vr$4;
		{
			I$1 = 0;
			label$213:;
			{
				FBSTRING TMP$190$4;
				FBSTRING* vr$5 = fb_IntToStr( I$1 );
				__builtin_memset( &TMP$190$4, 0, 12 );
				FBSTRING* vr$8 = fb_StrConcat( &TMP$190$4, (void*)"xmm", 4, (void*)vr$5, -1 );
				fb_StrAssign( (void*)(((int32)(uint8*)RNAMETB$ + (I$1 << (3 & 31))) + 192), 8, (void*)vr$8, -1, 0 );
			}
			label$211:;
			I$1 = I$1 + 1;
			label$210:;
			if( I$1 <= 7 ) goto label$213;
			label$212:;
		}
	}
	goto label$208;
	label$209:;
	{
		struct $8REGCLASS* vr$12 = REGNEWCLASS( 1, 7, (struct $7FBARRAYI12REG_SIZEMASKE*)&tmp$188$1, -1 );
		*(struct $8REGCLASS**)((uint8*)&EMIT$ + 12) = vr$12;
	}
	label$208:;
	label$207:;
}

static void HENDREGTB( void )
{
	label$214:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	{
		I$1 = 0;
		label$219:;
		{
			REGDELCLASS( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (I$1 << (2 & 31))) + 8) );
		}
		label$217:;
		I$1 = I$1 + 1;
		label$216:;
		if( I$1 <= 1 ) goto label$219;
		label$218:;
	}
	label$215:;
}

static int32 HGETGLOBALTYPEALIGN( int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$220:;
	if( DTYPE$1 != 16 ) goto label$223;
	{
		fb$result$1 = 8;
	}
	goto label$222;
	label$223:;
	{
		fb$result$1 = 4;
	}
	label$222:;
	label$221:;
	return fb$result$1;
}

static int32 HGETGLOBALVARALIGN( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$224:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$227;
	{
		fb$result$1 = 4;
	}
	goto label$226;
	label$227:;
	{
		int32 vr$5 = HGETGLOBALTYPEALIGN( *(int32*)((uint8*)SYM$1 + 28) & 511 );
		fb$result$1 = vr$5;
	}
	label$226:;
	label$225:;
	return fb$result$1;
}

static void HEMITVARBSS( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$193$1;
	label$228:;
	static FBSTRING ALLOC$1;
	static FBSTRING OSTR$1;
	static int32 ATTRIB$1;
	ATTRIB$1 = *(int32*)((uint8*)S$1 + 4);
	_SETSECTION( 2, 0 );
	if( (ATTRIB$1 & 8) != 0 ) goto label$231;
	{
		if( (ATTRIB$1 & 32) <= 0 ) goto label$233;
		{
			uint8* vr$3 = SYMBGETMANGLEDNAME( S$1 );
			HPUBLIC( vr$3, -1 );
		}
		label$233:;
		label$232:;
		fb_StrAssign( (void*)&ALLOC$1, -1, (void*)".lcomm", 7, 0 );
	}
	goto label$230;
	label$231:;
	{
		uint8* vr$4 = SYMBGETMANGLEDNAME( S$1 );
		HPUBLIC( vr$4, 0 );
		fb_StrAssign( (void*)&ALLOC$1, -1, (void*)".comm", 6, 0 );
	}
	label$230:;
	int32 vr$5 = HGETGLOBALVARALIGN( S$1 );
	HALIGN( vr$5 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)&ALLOC$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x09", 2, 0 );
	uint8* vr$6 = SYMBGETMANGLEDNAME( S$1 );
	__builtin_memset( &TMP$193$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$193$1, (void*)&OSTR$1, -1, (void*)vr$6, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$9, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	int64 vr$10 = SYMBGETREALSIZE( S$1 );
	FBSTRING* vr$11 = fb_LongintToStr( vr$10 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$11, -1, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, -1 );
	EDBGEMITGLOBALVAR( S$1, 2 );
	label$229:;
}

static void HWRITEHEADER( void )
{
	label$234:;
	EDBGEMITHEADER( (uint8*)((uint8*)&ENV$ + 304) );
	EMITWRITESTR( (uint8*)".intel_syntax noprefix", -1 );
	label$235:;
}

static void HEMITVARCONST( struct $8FBSYMBOL* S$1 )
{
	label$236:;
	static FBSTRING STEXT$1;
	static FBSTRING STYPE$1;
	static FBSTRING OSTR$1;
	static int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)S$1 + 28) & 511;
	{
		uint32 TMP$196$2;
		TMP$196$2 = (uint32)DTYPE$1;
		goto label$239;
		label$240:;
		{
			FBSTRING TMP$198$3;
			fb_StrAssign( (void*)&STEXT$1, -1, (void*)"\x22", 2, 0 );
			uint8* vr$3 = HESCAPE( (uint8*)*(uint8**)((uint8*)S$1 + 56) );
			__builtin_memset( &TMP$198$3, 0, 12 );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$198$3, (void*)&STEXT$1, -1, (void*)vr$3, 0 );
			fb_StrAssign( (void*)&STEXT$1, -1, (void*)vr$6, -1, 0 );
			fb_StrConcatAssign( (void*)&STEXT$1, -1, (void*)"\x5C" "0\x22", 4, 0 );
		}
		goto label$238;
		label$241:;
		{
			FBSTRING TMP$202$3;
			fb_StrAssign( (void*)&STEXT$1, -1, (void*)"\x22", 2, 0 );
			uint8* vr$8 = HESCAPEW( (uint32*)*(uint32**)((uint8*)S$1 + 56) );
			__builtin_memset( &TMP$202$3, 0, 12 );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$202$3, (void*)&STEXT$1, -1, (void*)vr$8, 0 );
			fb_StrAssign( (void*)&STEXT$1, -1, (void*)vr$11, -1, 0 );
			{
				int32 I$4;
				I$4 = 1;
				int32 TMP$203$4;
				TMP$203$4 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
				goto label$242;
				label$245:;
				{
					fb_StrConcatAssign( (void*)&STEXT$1, -1, (void*)"\x5C" "0", 3, 0 );
				}
				label$243:;
				I$4 = I$4 + 1;
				label$242:;
				if( I$4 <= TMP$203$4 ) goto label$245;
				label$244:;
			}
			fb_StrConcatAssign( (void*)&STEXT$1, -1, (void*)"\x22", 2, 0 );
		}
		goto label$238;
		label$246:;
		{
			fb_StrAssign( (void*)&STEXT$1, -1, *(void**)((uint8*)S$1 + 56), 0, 0 );
		}
		goto label$238;
		label$239:;
		static const void* tmp$1020[4] = {
			&&label$240,
			&&label$246,
			&&label$246,
			&&label$241,
		};
		if( (TMP$196$2 - 4u) > 3u ) goto label$246;
		goto *tmp$1020[TMP$196$2 - 4u];
		label$238:;
	}
	if( *(int32*)((uint8*)&ENV$ + 108) != 2 ) goto label$248;
	{
		_SETSECTION( 0, 0 );
	}
	goto label$247;
	label$248:;
	{
		_SETSECTION( 1, 0 );
	}
	label$247:;
	if( *(int32*)((uint8*)S$1 + 104) == 0 ) goto label$250;
	{
		HALIGN( *(int32*)((uint8*)S$1 + 104) );
	}
	goto label$249;
	label$250:;
	{
		int32 vr$16 = HGETGLOBALTYPEALIGN( DTYPE$1 );
		HALIGN( vr$16 );
	}
	label$249:;
	uint8* vr$17 = _GETTYPESTRING( DTYPE$1 );
	fb_StrAssign( (void*)&STYPE$1, -1, (void*)vr$17, 0, 0 );
	uint8* vr$18 = SYMBGETMANGLEDNAME( S$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$18, 0, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)":\x09", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&STYPE$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x09", 2, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&STEXT$1, -1, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$237:;
}

static void HWRITECTOR( struct $20FB_GLOBCTORLIST_ITEM* PROC_HEAD$1, int32 IS_CTOR$1 )
{
	label$251:;
	if( PROC_HEAD$1 != (struct $20FB_GLOBCTORLIST_ITEM*)0u ) goto label$254;
	{
		goto label$252;
	}
	label$254:;
	label$253:;
	label$255:;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)PROC_HEAD$1 + 12) & 16777216) == 0 ) goto label$259;
		{
			$10IR_SECTION TMP$205$3;
			if( IS_CTOR$1 == 0 ) goto label$260;
			TMP$205$3 = 5;
			goto label$1816;
			label$260:;
			TMP$205$3 = 6;
			label$1816:;
			_SETSECTION( TMP$205$3, *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)PROC_HEAD$1 + 112) + 56) );
			uint8* vr$7 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)PROC_HEAD$1 );
			EMITVARINIOFS( vr$7, 0 );
		}
		label$259:;
		label$258:;
		PROC_HEAD$1 = *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)PROC_HEAD$1 + 4);
	}
	label$257:;
	if( PROC_HEAD$1 != (struct $20FB_GLOBCTORLIST_ITEM*)0u ) goto label$255;
	label$256:;
	label$252:;
}

static void HEMITEXPORT( struct $8FBSYMBOL* S$1 )
{
	label$261:;
	if( (*(int32*)((uint8*)S$1 + 4) & 256) == 0 ) goto label$264;
	{
		FBSTRING TMP$211$2;
		FBSTRING TMP$212$2;
		FBSTRING TMP$213$2;
		_SETSECTION( 4, 0 );
		uint8* SNAME$2;
		uint8* vr$2 = SYMBGETMANGLEDNAME( S$1 );
		SNAME$2 = vr$2;
		if( *(int32*)((uint8*)&ENV$ + 292) == 0 ) goto label$266;
		{
			SNAME$2 = (uint8*)((uint8*)SNAME$2 + 1);
		}
		label$266:;
		label$265:;
		__builtin_memset( &TMP$213$2, 0, 12 );
		__builtin_memset( &TMP$211$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$211$2, (void*)".ascii \x22 -export:", 18, (void*)SNAME$2, 0 );
		__builtin_memset( &TMP$212$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$212$2, (void*)vr$7, -1, (void*)"\x22\x0A", 3 );
		fb_StrAssign( (void*)&TMP$213$2, -1, (void*)vr$10, -1, 0 );
		EMITWRITESTR( (uint8*)*(uint8**)&TMP$213$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$213$2 );
	}
	label$264:;
	label$263:;
	label$262:;
}

static void HDECLVARIABLE( struct $8FBSYMBOL* S$1 )
{
	label$267:;
	if( (*(int32*)((uint8*)S$1 + 4) & 1024) == 0 ) goto label$270;
	{
		{
			int32 TMP$214$3;
			TMP$214$3 = *(int32*)((uint8*)S$1 + 28) & 511;
			if( TMP$214$3 == 4 ) goto label$273;
			label$274:;
			if( TMP$214$3 != 7 ) goto label$272;
			label$273:;
			{
				if( (*(int32*)((uint8*)S$1 + 12) & 2) != 0 ) goto label$276;
				{
					goto label$268;
				}
				label$276:;
				label$275:;
			}
			label$272:;
			label$271:;
		}
		HEMITVARCONST( S$1 );
		goto label$268;
	}
	label$270:;
	label$269:;
	if( (*(int32*)((uint8*)S$1 + 12) & 32768) == 0 ) goto label$278;
	{
		goto label$268;
	}
	label$278:;
	label$277:;
	if( (-((*(int32*)((uint8*)S$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)S$1 + 4) & 4) != 0)) == 0 ) goto label$280;
	{
		goto label$268;
	}
	label$280:;
	label$279:;
	if( *(struct $7ASTNODE**)((uint8*)S$1 + 56) == (struct $7ASTNODE*)0u ) goto label$282;
	{
		if( (*(int32*)((uint8*)S$1 + 12) & 2) != 0 ) goto label$284;
		{
			if( (*(int32*)((uint8*)S$1 + 4) & 32) != 0 ) goto label$286;
			{
				goto label$268;
			}
			label$286:;
			label$285:;
		}
		label$284:;
		label$283:;
		_SETSECTION( 1, 0 );
		IRHLFLUSHSTATICINITIALIZER( S$1 );
		goto label$268;
	}
	label$282:;
	label$281:;
	HEMITVARBSS( S$1 );
	label$268:;
}

static void HCLEARLOCALS( int32 BYTESTOCLEAR$1, int32 BASEOFFSET$1 )
{
	label$287:;
	static int32 I$1;
	static FBSTRING LNAME$1;
	if( BYTESTOCLEAR$1 != 0 ) goto label$290;
	{
		goto label$288;
	}
	label$290:;
	label$289:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$292;
	{
		if( ((uint32)BYTESTOCLEAR$1 >> (3u & 31)) <= 7u ) goto label$294;
		{
			FBSTRING TMP$216$3;
			FBSTRING TMP$217$3;
			FBSTRING TMP$218$3;
			FBSTRING TMP$220$3;
			FBSTRING TMP$221$3;
			FBSTRING TMP$227$3;
			FBSTRING TMP$228$3;
			if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) != 0 ) goto label$296;
			{
				HPUSH( (uint8*)"edi" );
			}
			label$296:;
			label$295:;
			__builtin_memset( &TMP$218$3, 0, 12 );
			FBSTRING* vr$4 = fb_IntToStr( BASEOFFSET$1 + BYTESTOCLEAR$1 );
			__builtin_memset( &TMP$216$3, 0, 12 );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$216$3, (void*)"lea edi, [ebp-", 15, (void*)vr$4, -1 );
			__builtin_memset( &TMP$217$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$217$3, (void*)vr$7, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$218$3, -1, (void*)vr$10, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$218$3 );
			fb_StrDelete( (FBSTRING*)&TMP$218$3 );
			__builtin_memset( &TMP$221$3, 0, 12 );
			FBSTRING* vr$15 = fb_UIntToStr( (uint32)BYTESTOCLEAR$1 >> (3u & 31) );
			__builtin_memset( &TMP$220$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$220$3, (void*)"mov ecx,", 9, (void*)vr$15, -1 );
			fb_StrAssign( (void*)&TMP$221$3, -1, (void*)vr$18, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$221$3 );
			fb_StrDelete( (FBSTRING*)&TMP$221$3 );
			OUTP( (uint8*)"pxor mm0, mm0" );
			uint8* vr$21 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$21, 0, 0 );
			HLABEL( (uint8*)*(uint8**)&LNAME$1 );
			OUTP( (uint8*)"movq [edi], mm0" );
			OUTP( (uint8*)"add edi, 8" );
			OUTP( (uint8*)"dec ecx" );
			__builtin_memset( &TMP$228$3, 0, 12 );
			__builtin_memset( &TMP$227$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$227$3, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$228$3, -1, (void*)vr$25, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$228$3 );
			fb_StrDelete( (FBSTRING*)&TMP$228$3 );
			OUTP( (uint8*)"emms" );
			if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) != 0 ) goto label$298;
			{
				HPOP( (uint8*)"edi" );
			}
			label$298:;
			label$297:;
		}
		goto label$293;
		label$294:;
		if( ((uint32)BYTESTOCLEAR$1 >> (3u & 31)) <= 0u ) goto label$299;
		{
			OUTP( (uint8*)"pxor mm0, mm0" );
			{
				I$1 = (int32)((uint32)BYTESTOCLEAR$1 >> (3u & 31));
				goto label$300;
				label$303:;
				{
					FBSTRING TMP$232$5;
					FBSTRING TMP$233$5;
					FBSTRING TMP$234$5;
					__builtin_memset( &TMP$234$5, 0, 12 );
					FBSTRING* vr$33 = fb_IntToStr( I$1 << (3 & 31) );
					__builtin_memset( &TMP$232$5, 0, 12 );
					FBSTRING* vr$36 = fb_StrConcat( &TMP$232$5, (void*)"movq [ebp-", 11, (void*)vr$33, -1 );
					__builtin_memset( &TMP$233$5, 0, 12 );
					FBSTRING* vr$39 = fb_StrConcat( &TMP$233$5, (void*)vr$36, -1, (void*)"], mm0", 7 );
					fb_StrAssign( (void*)&TMP$234$5, -1, (void*)vr$39, -1, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$234$5 );
					fb_StrDelete( (FBSTRING*)&TMP$234$5 );
				}
				label$301:;
				I$1 = I$1 + -1;
				label$300:;
				if( I$1 >= 1 ) goto label$303;
				label$302:;
			}
			OUTP( (uint8*)"emms" );
		}
		label$299:;
		label$293:;
		if( (BYTESTOCLEAR$1 & 4) == 0 ) goto label$305;
		{
			FBSTRING TMP$237$3;
			FBSTRING TMP$238$3;
			FBSTRING TMP$239$3;
			__builtin_memset( &TMP$239$3, 0, 12 );
			FBSTRING* vr$46 = fb_IntToStr( BASEOFFSET$1 + BYTESTOCLEAR$1 );
			__builtin_memset( &TMP$237$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$237$3, (void*)"mov dword ptr [ebp-", 20, (void*)vr$46, -1 );
			__builtin_memset( &TMP$238$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$238$3, (void*)vr$49, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$239$3, -1, (void*)vr$52, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$239$3 );
			fb_StrDelete( (FBSTRING*)&TMP$239$3 );
		}
		label$305:;
		label$304:;
		goto label$288;
	}
	label$292:;
	label$291:;
	if( ((uint32)BYTESTOCLEAR$1 >> (2u & 31)) <= 6u ) goto label$307;
	{
		FBSTRING TMP$240$2;
		FBSTRING TMP$241$2;
		FBSTRING TMP$242$2;
		FBSTRING TMP$243$2;
		FBSTRING TMP$244$2;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) != 0 ) goto label$309;
		{
			HPUSH( (uint8*)"edi" );
		}
		label$309:;
		label$308:;
		__builtin_memset( &TMP$242$2, 0, 12 );
		FBSTRING* vr$59 = fb_IntToStr( BASEOFFSET$1 + BYTESTOCLEAR$1 );
		__builtin_memset( &TMP$240$2, 0, 12 );
		FBSTRING* vr$62 = fb_StrConcat( &TMP$240$2, (void*)"lea edi, [ebp-", 15, (void*)vr$59, -1 );
		__builtin_memset( &TMP$241$2, 0, 12 );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$241$2, (void*)vr$62, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$242$2, -1, (void*)vr$65, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$242$2 );
		fb_StrDelete( (FBSTRING*)&TMP$242$2 );
		__builtin_memset( &TMP$244$2, 0, 12 );
		FBSTRING* vr$70 = fb_UIntToStr( (uint32)BYTESTOCLEAR$1 >> (2u & 31) );
		__builtin_memset( &TMP$243$2, 0, 12 );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$243$2, (void*)"mov ecx,", 9, (void*)vr$70, -1 );
		fb_StrAssign( (void*)&TMP$244$2, -1, (void*)vr$73, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$244$2 );
		fb_StrDelete( (FBSTRING*)&TMP$244$2 );
		OUTP( (uint8*)"xor eax, eax" );
		OUTP( (uint8*)"rep stosd" );
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) != 0 ) goto label$311;
		{
			HPOP( (uint8*)"edi" );
		}
		label$311:;
		label$310:;
	}
	goto label$306;
	label$307:;
	{
		{
			I$1 = (int32)((uint32)BYTESTOCLEAR$1 >> (2u & 31));
			goto label$312;
			label$315:;
			{
				FBSTRING TMP$247$4;
				FBSTRING TMP$248$4;
				FBSTRING TMP$249$4;
				__builtin_memset( &TMP$249$4, 0, 12 );
				FBSTRING* vr$81 = fb_IntToStr( BASEOFFSET$1 + (I$1 << (2 & 31)) );
				__builtin_memset( &TMP$247$4, 0, 12 );
				FBSTRING* vr$84 = fb_StrConcat( &TMP$247$4, (void*)"mov dword ptr [ebp-", 20, (void*)vr$81, -1 );
				__builtin_memset( &TMP$248$4, 0, 12 );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$248$4, (void*)vr$84, -1, (void*)"], 0", 5 );
				fb_StrAssign( (void*)&TMP$249$4, -1, (void*)vr$87, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$249$4 );
				fb_StrDelete( (FBSTRING*)&TMP$249$4 );
			}
			label$313:;
			I$1 = I$1 + -1;
			label$312:;
			if( I$1 >= 1 ) goto label$315;
			label$314:;
		}
	}
	label$306:;
	label$288:;
}

static int32 HFRAMEBYTESTOALLOC( struct $8FBSYMBOL* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$316:;
	static int32 BYTESTOALLOC$1;
	static int32 BYTESPUSHED$1;
	BYTESTOALLOC$1 = (*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 12) + 3) & -4;
	if( (*(int32*)((uint8*)&ENV$ + 284) & 64) == 0 ) goto label$319;
	{
		BYTESPUSHED$1 = 8;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) == 0 ) goto label$321;
		{
			BYTESPUSHED$1 = BYTESPUSHED$1 + 4;
		}
		label$321:;
		label$320:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 4) == 0 ) goto label$323;
		{
			BYTESPUSHED$1 = BYTESPUSHED$1 + 4;
		}
		label$323:;
		label$322:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 16) == 0 ) goto label$325;
		{
			BYTESPUSHED$1 = BYTESPUSHED$1 + 4;
		}
		label$325:;
		label$324:;
		BYTESTOALLOC$1 = BYTESTOALLOC$1 + BYTESPUSHED$1;
		BYTESTOALLOC$1 = (BYTESTOALLOC$1 + 15) & -16;
		BYTESTOALLOC$1 = BYTESTOALLOC$1 - BYTESPUSHED$1;
	}
	label$319:;
	label$318:;
	fb$result$1 = BYTESTOALLOC$1;
	goto label$317;
	label$317:;
	return fb$result$1;
}

static void HSTOREREGISTERARGUMENT( struct $8FBSYMBOL* PARAM$1, FBSTRING* SRC$1 )
{
	FBSTRING TMP$251$1;
	FBSTRING TMP$252$1;
	FBSTRING TMP$253$1;
	FBSTRING TMP$254$1;
	label$326:;
	FBSTRING OPERAND$1;
	fb_StrInit( (void*)&OPERAND$1, -1, (void*)"", 1, 0 );
	int64 OFS$1;
	OFS$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 60) + 48);
	fb_StrAssign( (void*)&OPERAND$1, -1, (void*)"dword ptr [ebp", 15, 0 );
	if( OFS$1 <= 0ll ) goto label$329;
	{
		fb_StrConcatAssign( (void*)&OPERAND$1, -1, (void*)"+", 2, 0 );
	}
	label$329:;
	label$328:;
	if( OFS$1 == 0ll ) goto label$331;
	{
		FBSTRING* vr$5 = fb_LongintToStr( OFS$1 );
		fb_StrConcatAssign( (void*)&OPERAND$1, -1, (void*)vr$5, -1, 0 );
	}
	label$331:;
	label$330:;
	fb_StrConcatAssign( (void*)&OPERAND$1, -1, (void*)"]", 2, 0 );
	__builtin_memset( &TMP$254$1, 0, 12 );
	__builtin_memset( &TMP$251$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$251$1, (void*)"mov ", 5, (void*)&OPERAND$1, -1 );
	__builtin_memset( &TMP$252$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$252$1, (void*)vr$12, -1, (void*)", ", 3 );
	__builtin_memset( &TMP$253$1, 0, 12 );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$253$1, (void*)vr$15, -1, (void*)SRC$1, -1 );
	fb_StrAssign( (void*)&TMP$254$1, -1, (void*)vr$18, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$254$1 );
	fb_StrDelete( (FBSTRING*)&TMP$254$1 );
	fb_StrDelete( (FBSTRING*)&OPERAND$1 );
	label$327:;
}

static void HSTOREREGISTERARGUMENTS( struct $8FBSYMBOL* PROC$1 )
{
	label$332:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$334:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$335;
	{
		{
			int32 TMP$255$3;
			TMP$255$3 = *(int32*)((uint8*)PARAM$1 + 76);
			if( TMP$255$3 != 1 ) goto label$337;
			label$338:;
			{
				FBSTRING TMP$256$4;
				__builtin_memset( &TMP$256$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$256$4, -1, (void*)"ecx", 4, 0 );
				HSTOREREGISTERARGUMENT( PARAM$1, &TMP$256$4 );
				fb_StrDelete( (FBSTRING*)&TMP$256$4 );
			}
			goto label$336;
			label$337:;
			if( TMP$255$3 != 2 ) goto label$339;
			label$340:;
			{
				FBSTRING TMP$257$4;
				__builtin_memset( &TMP$257$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$257$4, -1, (void*)"edx", 4, 0 );
				HSTOREREGISTERARGUMENT( PARAM$1, &TMP$257$4 );
				fb_StrDelete( (FBSTRING*)&TMP$257$4 );
			}
			label$339:;
			label$336:;
		}
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$334;
	label$335:;
	label$333:;
}

static void HCREATEFRAME( struct $8FBSYMBOL* PROC$1 )
{
	int32 TMP$258$1;
	label$341:;
	static int32 BYTESTOALLOC$1;
	static int32 BYTESTOCLEAR$1;
	static int32 BYTESPUSHED$1;
	static uint8* LPROF$1;
	static int32 HASUNWIND$1;
	if( *(int32*)((uint8*)&ENV$ + 108) != 2 ) goto label$343;
	int32 vr$0 = FBGETOPTION( 21 );
	TMP$258$1 = -(vr$0 != 0);
	goto label$1817;
	label$343:;
	TMP$258$1 = 0;
	label$1817:;
	HASUNWIND$1 = TMP$258$1;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$345;
	{
		int32 vr$4 = HFRAMEBYTESTOALLOC( PROC$1 );
		BYTESTOALLOC$1 = vr$4;
		if( ((((-(BYTESTOALLOC$1 != 0) | -(*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 4) != 8)) | -((*(int32*)((uint8*)PROC$1 + 12) & 4096) != 0)) | *(int32*)((uint8*)&ENV$ + 148)) | *(int32*)((uint8*)&ENV$ + 184)) == 0 ) goto label$347;
		{
			HPUSH( (uint8*)"ebp" );
			if( HASUNWIND$1 == 0 ) goto label$349;
			{
				OUTP( (uint8*)".cfi_def_cfa_offset 8" );
				OUTP( (uint8*)".cfi_offset 5, -8" );
			}
			label$349:;
			label$348:;
			OUTP( (uint8*)"mov ebp, esp" );
			if( HASUNWIND$1 == 0 ) goto label$351;
			{
				OUTP( (uint8*)".cfi_def_cfa_register 5" );
				label$351:;
			}
			if( (*(int32*)((uint8*)PROC$1 + 12) & 4096) == 0 ) goto label$353;
			{
				OUTP( (uint8*)"and esp, 0xFFFFFFF0" );
				BYTESTOALLOC$1 = BYTESTOALLOC$1 + 8;
			}
			label$353:;
			label$352:;
			if( BYTESTOALLOC$1 <= 0 ) goto label$355;
			{
				FBSTRING TMP$265$4;
				FBSTRING TMP$266$4;
				__builtin_memset( &TMP$266$4, 0, 12 );
				FBSTRING* vr$20 = fb_IntToStr( BYTESTOALLOC$1 );
				__builtin_memset( &TMP$265$4, 0, 12 );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$265$4, (void*)"sub esp, ", 10, (void*)vr$20, -1 );
				fb_StrAssign( (void*)&TMP$266$4, -1, (void*)vr$23, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$266$4 );
				fb_StrDelete( (FBSTRING*)&TMP$266$4 );
			}
			label$355:;
			label$354:;
		}
		label$347:;
		label$346:;
		if( *(int32*)((uint8*)&ENV$ + 108) != 3 ) goto label$357;
		{
			if( *(int32*)((uint8*)&ENV$ + 184) == 0 ) goto label$359;
			{
				FBSTRING TMP$271$4;
				FBSTRING TMP$272$4;
				FBSTRING TMP$273$4;
				FBSTRING TMP$274$4;
				FBSTRING TMP$279$4;
				FBSTRING TMP$280$4;
				uint8* vr$26 = SYMBMAKEPROFILELABELNAME(  );
				LPROF$1 = vr$26;
				OUTEX( (uint8*)".section .data\x0A", 0 );
				OUTEX( (uint8*)".balign 4\x0A", 0 );
				__builtin_memset( &TMP$274$4, 0, 12 );
				__builtin_memset( &TMP$271$4, 0, 12 );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$271$4, (void*)".", 2, (void*)LPROF$1, 0 );
				__builtin_memset( &TMP$272$4, 0, 12 );
				FBSTRING* vr$33 = fb_StrConcat( &TMP$272$4, (void*)vr$30, -1, (void*)":", 2 );
				__builtin_memset( &TMP$273$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$273$4, (void*)vr$33, -1, (void*)"\x0A", 2 );
				fb_StrAssign( (void*)&TMP$274$4, -1, (void*)vr$36, -1, 0 );
				OUTEX( (uint8*)*(uint8**)&TMP$274$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$274$4 );
				OUTP( (uint8*)".long 0" );
				OUTEX( (uint8*)".section .text\x0A", 0 );
				__builtin_memset( &TMP$280$4, 0, 12 );
				__builtin_memset( &TMP$279$4, 0, 12 );
				FBSTRING* vr$42 = fb_StrConcat( &TMP$279$4, (void*)"mov edx, offset .", 18, (void*)LPROF$1, 0 );
				fb_StrAssign( (void*)&TMP$280$4, -1, (void*)vr$42, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$280$4 );
				fb_StrDelete( (FBSTRING*)&TMP$280$4 );
				OUTP( (uint8*)"call _mcount" );
			}
			label$359:;
			label$358:;
		}
		label$357:;
		label$356:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 16) == 0 ) goto label$361;
		{
			HPUSH( (uint8*)"ebx" );
		}
		label$361:;
		label$360:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 4) == 0 ) goto label$363;
		{
			HPUSH( (uint8*)"esi" );
		}
		label$363:;
		label$362:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) == 0 ) goto label$365;
		{
			HPUSH( (uint8*)"edi" );
		}
		label$365:;
		label$364:;
		HSTOREREGISTERARGUMENTS( PROC$1 );
	}
	label$345:;
	label$344:;
	label$342:;
}

static void HDESTROYFRAME( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1 )
{
	label$366:;
	static int32 ISLINUX$1;
	ISLINUX$1 = -(*(int32*)((uint8*)&ENV$ + 108) == 2);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$369;
	{
		int32 TMP$282$2;
		static int32 BYTESTOALLOC$2;
		static int32 HASUNWIND$2;
		if( ISLINUX$1 == 0 ) goto label$370;
		int32 vr$3 = FBGETOPTION( 21 );
		TMP$282$2 = -(vr$3 != 0);
		goto label$1818;
		label$370:;
		TMP$282$2 = 0;
		label$1818:;
		HASUNWIND$2 = TMP$282$2;
		int32 vr$5 = HFRAMEBYTESTOALLOC( PROC$1 );
		BYTESTOALLOC$2 = vr$5;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 2) == 0 ) goto label$372;
		{
			HPOP( (uint8*)"edi" );
		}
		label$372:;
		label$371:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 4) == 0 ) goto label$374;
		{
			HPOP( (uint8*)"esi" );
		}
		label$374:;
		label$373:;
		if( (*(int32*)((uint8*)&EMIT$ + 132) & 16) == 0 ) goto label$376;
		{
			HPOP( (uint8*)"ebx" );
		}
		label$376:;
		label$375:;
		if( ((((-(BYTESTOALLOC$2 != 0) | -(*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 4) != 8)) | -((*(int32*)((uint8*)PROC$1 + 12) & 4096) != 0)) | *(int32*)((uint8*)&ENV$ + 148)) | *(int32*)((uint8*)&ENV$ + 184)) == 0 ) goto label$378;
		{
			OUTP( (uint8*)"mov esp, ebp" );
			HPOP( (uint8*)"ebp" );
			if( HASUNWIND$2 == 0 ) goto label$380;
			{
				OUTP( (uint8*)".cfi_restore 5" );
				OUTP( (uint8*)".cfi_def_cfa 4, 4" );
			}
			label$380:;
			label$379:;
		}
		label$378:;
		label$377:;
		if( BYTESTOPOP$1 <= 0 ) goto label$382;
		{
			FBSTRING TMP$287$3;
			FBSTRING TMP$288$3;
			__builtin_memset( &TMP$288$3, 0, 12 );
			FBSTRING* vr$21 = fb_IntToStr( BYTESTOPOP$1 );
			__builtin_memset( &TMP$287$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$287$3, (void*)"ret ", 5, (void*)vr$21, -1 );
			fb_StrAssign( (void*)&TMP$288$3, -1, (void*)vr$24, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$288$3 );
			fb_StrDelete( (FBSTRING*)&TMP$288$3 );
		}
		goto label$381;
		label$382:;
		{
			OUTP( (uint8*)"ret" );
		}
		label$381:;
	}
	label$369:;
	label$368:;
	if( ISLINUX$1 == 0 ) goto label$384;
	{
		FBSTRING TMP$292$2;
		FBSTRING TMP$293$2;
		FBSTRING TMP$294$2;
		FBSTRING TMP$295$2;
		FBSTRING TMP$296$2;
		__builtin_memset( &TMP$296$2, 0, 12 );
		uint8* vr$28 = SYMBGETMANGLEDNAME( PROC$1 );
		uint8* vr$29 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$292$2, 0, 12 );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$292$2, (void*)".size ", 7, (void*)vr$29, 0 );
		__builtin_memset( &TMP$293$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$293$2, (void*)vr$32, -1, (void*)", .-", 5 );
		__builtin_memset( &TMP$294$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$294$2, (void*)vr$35, -1, (void*)vr$28, 0 );
		__builtin_memset( &TMP$295$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$295$2, (void*)vr$38, -1, (void*)"\x0A", 2 );
		fb_StrAssign( (void*)&TMP$296$2, -1, (void*)vr$41, -1, 0 );
		OUTEX( (uint8*)*(uint8**)&TMP$296$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$296$2 );
	}
	label$384:;
	label$383:;
	label$367:;
}

static void _EMITLIT( uint8* S$1 )
{
	FBSTRING TMP$297$1;
	label$385:;
	FBSTRING OSTR$1;
	__builtin_memset( &OSTR$1, 0, 12 );
	__builtin_memset( &TMP$297$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$297$1, (void*)S$1, 0, (void*)"\x0A", 2 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	fb_StrDelete( (FBSTRING*)&OSTR$1 );
	label$386:;
}

static void _EMITJMPTB( struct $8FBSYMBOL* TBSYM$1, uint64* VALUES1$1, struct $8FBSYMBOL** LABELS1$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$298$1;
	FBSTRING TMP$299$1;
	FBSTRING TMP$300$1;
	label$387:;
	FBSTRING DEFLABELNAME$1;
	__builtin_memset( &DEFLABELNAME$1, 0, 12 );
	FBSTRING TB$1;
	__builtin_memset( &TB$1, 0, 12 );
	uint8* vr$2 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
	fb_StrAssign( (void*)&DEFLABELNAME$1, -1, (void*)vr$2, 0, 0 );
	uint8* vr$4 = SYMBGETMANGLEDNAME( TBSYM$1 );
	fb_StrAssign( (void*)&TB$1, -1, (void*)vr$4, 0, 0 );
	__builtin_memset( &TMP$300$1, 0, 12 );
	__builtin_memset( &TMP$298$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$298$1, (void*)&TB$1, -1, (void*)":", 2 );
	__builtin_memset( &TMP$299$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$299$1, (void*)vr$10, -1, (void*)"\x0A", 2 );
	fb_StrAssign( (void*)&TMP$300$1, -1, (void*)vr$13, -1, 0 );
	OUTEX( (uint8*)*(uint8**)&TMP$300$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$300$1 );
	int32 I$1;
	I$1 = 0;
	int32 VALUE$1;
	VALUE$1 = 0;
	label$389:;
	{
		FBSTRING TMP$301$2;
		FBSTRING TMP$302$2;
		FBSTRING TMP$303$2;
		struct $8FBSYMBOL* LABEL$2;
		__builtin_memset( &LABEL$2, 0, 4 );
		if( (uint64)VALUE$1 != *(uint64*)((uint8*)VALUES1$1 + (I$1 << (3 & 31))) ) goto label$393;
		{
			LABEL$2 = *(struct $8FBSYMBOL**)((uint8*)LABELS1$1 + (I$1 << (2 & 31)));
			I$1 = I$1 + 1;
		}
		goto label$392;
		label$393:;
		{
			LABEL$2 = DEFLABEL$1;
		}
		label$392:;
		__builtin_memset( &TMP$303$2, 0, 12 );
		uint8* vr$24 = SYMBGETMANGLEDNAME( LABEL$2 );
		uint8* vr$25 = _GETTYPESTRING( 9 );
		__builtin_memset( &TMP$301$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$301$2, (void*)vr$25, 0, (void*)" ", 2 );
		__builtin_memset( &TMP$302$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$302$2, (void*)vr$28, -1, (void*)vr$24, 0 );
		fb_StrAssign( (void*)&TMP$303$2, -1, (void*)vr$31, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$303$2 );
		fb_StrDelete( (FBSTRING*)&TMP$303$2 );
		if( (uint64)VALUE$1 != SPAN$1 ) goto label$395;
		{
			goto label$390;
		}
		label$395:;
		label$394:;
		VALUE$1 = VALUE$1 + 1;
	}
	label$391:;
	goto label$389;
	label$390:;
	fb_StrDelete( (FBSTRING*)&TB$1 );
	fb_StrDelete( (FBSTRING*)&DEFLABELNAME$1 );
	label$388:;
}

static void _EMITCALL( struct $6IRVREG* UNUSED$1, struct $8FBSYMBOL* LABEL$1, int32 BYTESTOPOP$1 )
{
	FBSTRING TMP$305$1;
	label$396:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"call ", 6, 0 );
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$305$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$305$1, (void*)&OSTR$1, -1, (void*)vr$0, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( BYTESTOPOP$1 == 0 ) goto label$399;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"add esp, ", 10, 0 );
		FBSTRING* vr$4 = fb_IntToStr( BYTESTOPOP$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$4, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$399:;
	label$398:;
	label$397:;
}

static void _EMITCALLPTR( struct $6IRVREG* SVREG$1, struct $8FBSYMBOL* UNUSED$1, int32 BYTESTOPOP$1 )
{
	label$400:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"call ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( BYTESTOPOP$1 == 0 ) goto label$403;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"add esp, ", 10, 0 );
		FBSTRING* vr$0 = fb_IntToStr( BYTESTOPOP$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$0, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$403:;
	label$402:;
	label$401:;
}

static void _EMITBRANCH( struct $6IRVREG* UNUSED$1, struct $8FBSYMBOL* LABEL$1, int32 OP$1 )
{
	FBSTRING TMP$314$1;
	label$404:;
	static FBSTRING OSTR$1;
	{
		uint32 TMP$307$2;
		TMP$307$2 = (uint32)OP$1;
		goto label$407;
		label$408:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jle ", 5, 0 );
		}
		goto label$406;
		label$409:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jge ", 5, 0 );
		}
		goto label$406;
		label$410:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jl ", 4, 0 );
		}
		goto label$406;
		label$411:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jg ", 4, 0 );
		}
		goto label$406;
		label$412:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"je ", 4, 0 );
		}
		goto label$406;
		label$413:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jne ", 5, 0 );
		}
		goto label$406;
		label$407:;
		static const void* tmp$1021[6] = {
			&&label$412,
			&&label$411,
			&&label$410,
			&&label$413,
			&&label$409,
			&&label$408,
		};
		if( (TMP$307$2 - 92u) > 5u ) goto label$406;
		goto *tmp$1021[TMP$307$2 - 92u];
		label$406:;
	}
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$314$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$314$1, (void*)&OSTR$1, -1, (void*)vr$0, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$405:;
}

static void _EMITJUMP( struct $6IRVREG* UNUSED1$1, struct $8FBSYMBOL* LABEL$1, int32 UNUSED2$1 )
{
	FBSTRING TMP$316$1;
	label$414:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jmp ", 5, 0 );
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$316$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$316$1, (void*)&OSTR$1, -1, (void*)vr$0, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$415:;
}

static void _EMITJUMPPTR( struct $6IRVREG* SVREG$1, struct $8FBSYMBOL* UNUSED1$1, int32 UNUSED2$1 )
{
	label$416:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"jmp ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$417:;
}

static void _EMITRET( struct $6IRVREG* VREG$1 )
{
	FBSTRING TMP$317$1;
	label$418:;
	static FBSTRING OSTR$1;
	FBSTRING* vr$1 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 24) );
	__builtin_memset( &TMP$317$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$317$1, (void*)"ret ", 5, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$4, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$419:;
}

static void _EMITPUBLIC( struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$318$1;
	label$420:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"\x0A.globl ", 9, 0 );
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$318$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$318$1, (void*)&OSTR$1, -1, (void*)vr$0, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$421:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$422:;
	static FBSTRING OSTR$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$0, 0, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)":\x0A", 3, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$423:;
}

static void _EMITNOP( void )
{
	label$424:;
	label$425:;
}

static void HULONG2DBL( struct $6IRVREG* SVREG$1 )
{
	label$426:;
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
	label$427:;
}

static void _EMITSTORL2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$428:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$429:;
}

static void _EMITSTORI2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$327$1;
	int32 TMP$333$1;
	label$430:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING EXT$1;
	static FBSTRING OSTR$1;
	static int32 SDSIZE$1;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$432;
	TMP$327$1 = 24;
	goto label$1819;
	label$432:;
	TMP$327$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1819:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$327$1 * 28)) + 4);
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND( SVREG$1, &SRC1$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 0 ) goto label$434;
	{
		int32 TMP$328$2;
		HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$435;
		TMP$328$2 = 24;
		goto label$1820;
		label$435:;
		TMP$328$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1820:;
		if( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$328$2 * 28)) + 8) & -(*(int64*)((uint8*)SVREG$1 + 24) < 0ll)) == 0 ) goto label$437;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"-1" );
		}
		goto label$436;
		label$437:;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
		}
		label$436:;
		goto label$431;
	}
	label$434:;
	label$433:;
	if( SDSIZE$1 >= 4 ) goto label$439;
	{
		int32 TMP$330$2;
		uint8* vr$15 = HGETREGNAME( 8, *(int32*)((uint8*)SVREG$1 + 12) );
		fb_StrAssign( (void*)&EXT$1, -1, (void*)vr$15, 0, 0 );
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$440;
		TMP$330$2 = 24;
		goto label$1821;
		label$440:;
		TMP$330$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1821:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$330$2 * 28)) + 8) == 0 ) goto label$442;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
		}
		goto label$441;
		label$442:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
		}
		label$441:;
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EXT$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$438;
	label$439:;
	{
		fb_StrAssign( (void*)&EXT$1, -1, (void*)&SRC1$1, -1, 0 );
	}
	label$438:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EXT$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$443;
	TMP$333$1 = 24;
	goto label$1822;
	label$443:;
	TMP$333$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1822:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$333$1 * 28)) + 8) == 0 ) goto label$445;
	{
		HPUSH( (uint8*)*(uint8**)&EXT$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sar ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EXT$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 31", 5, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EXT$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPOP( (uint8*)*(uint8**)&EXT$1 );
	}
	goto label$444;
	label$445:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 0", 4, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$444:;
	label$431:;
}

static void _EMITSTORF2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$336$1;
	label$446:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$448;
	TMP$336$1 = 24;
	goto label$1823;
	label$448:;
	TMP$336$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1823:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$336$1 * 28)) + 8) == 0 ) goto label$450;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fistp ", 7, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$450:;
	label$449:;
	label$447:;
}

static void _EMITSTORI2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$338$1;
	int32 TMP$339$1;
	label$451:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$453;
	TMP$338$1 = 24;
	goto label$1824;
	label$453:;
	TMP$338$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1824:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$338$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$454;
	TMP$339$1 = 24;
	goto label$1825;
	label$454:;
	TMP$339$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1825:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$339$1 * 28)) + 4);
	if( DDSIZE$1 != 1 ) goto label$456;
	{
		if( *(int32*)SVREG$1 != 0 ) goto label$458;
		{
			DDSIZE$1 = 4;
		}
		label$458:;
		label$457:;
	}
	label$456:;
	label$455:;
	if( (-(*(int32*)SVREG$1 == 0) | -(DDSIZE$1 == SDSIZE$1)) == 0 ) goto label$460;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$459;
	label$460:;
	{
		static FBSTRING AUX$2;
		uint8* vr$17 = HGETREGNAME( *(int32*)((uint8*)DVREG$1 + 4), *(int32*)((uint8*)SVREG$1 + 12) );
		fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$17, 0, 0 );
		if( DDSIZE$1 <= SDSIZE$1 ) goto label$462;
		{
			int32 TMP$340$3;
			if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$463;
			TMP$340$3 = 24;
			goto label$1826;
			label$463:;
			TMP$340$3 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
			label$1826:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$340$3 * 28)) + 8) == 0 ) goto label$465;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
			}
			goto label$464;
			label$465:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
			}
			label$464:;
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$461;
		label$462:;
		{
			static int32 IS_DISI$3;
			IS_DISI$3 = 0;
			if( DDSIZE$1 != 1 ) goto label$467;
			{
				if( *(int32*)SVREG$1 != 4 ) goto label$469;
				{
					IS_DISI$3 = -(*(int32*)((uint8*)SVREG$1 + 12) == 2) | -(*(int32*)((uint8*)SVREG$1 + 12) == 1);
				}
				label$469:;
				label$468:;
			}
			label$467:;
			label$466:;
			if( IS_DISI$3 == 0 ) goto label$471;
			{
				static FBSTRING AUX8$4;
				static int32 REG$4;
				static int32 ISFREE$4;
				int32 vr$29 = HFINDREGNOTINVREG( DVREG$1, -1 );
				REG$4 = vr$29;
				uint8* vr$30 = HGETREGNAME( 2, REG$4 );
				fb_StrAssign( (void*)&AUX8$4, -1, (void*)vr$30, 0, 0 );
				uint8* vr$32 = HGETREGNAME( *(int32*)((uint8*)SVREG$1 + 4), REG$4 );
				fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$32, 0, 0 );
				int32 vr$33 = HISREGFREE( 0, REG$4 );
				ISFREE$4 = vr$33;
				if( ISFREE$4 != 0 ) goto label$473;
				{
					HPUSH( (uint8*)*(uint8**)&AUX$2 );
				}
				label$473:;
				label$472:;
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX8$4, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
				if( ISFREE$4 != 0 ) goto label$475;
				{
					HPOP( (uint8*)*(uint8**)&AUX$2 );
				}
				label$475:;
				label$474:;
			}
			goto label$470;
			label$471:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$470:;
		}
		label$461:;
	}
	label$459:;
	label$452:;
}

static void _EMITSTORL2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$476:;
	_EMITSTORI2I( DVREG$1, SVREG$1 );
	label$477:;
}

static void _EMITSTORF2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$341$1;
	label$478:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$480;
	TMP$341$1 = 24;
	goto label$1827;
	label$480:;
	TMP$341$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1827:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$341$1 * 28)) + 4);
	if( DDSIZE$1 != 1 ) goto label$482;
	{
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		if( *(int32*)DVREG$1 != 4 ) goto label$484;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"byte ptr [esp]" );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$483;
		label$484:;
		{
			static int32 REG$3;
			static int32 ISFREE$3;
			static FBSTRING AUX$3;
			static FBSTRING AUX8$3;
			int32 vr$6 = HFINDREGNOTINVREG( DVREG$1, -1 );
			REG$3 = vr$6;
			uint8* vr$7 = HGETREGNAME( 2, REG$3 );
			fb_StrAssign( (void*)&AUX8$3, -1, (void*)vr$7, 0, 0 );
			uint8* vr$8 = HGETREGNAME( 8, REG$3 );
			fb_StrAssign( (void*)&AUX$3, -1, (void*)vr$8, 0, 0 );
			int32 vr$9 = HISREGFREE( 0, REG$3 );
			ISFREE$3 = vr$9;
			if( ISFREE$3 != 0 ) goto label$486;
			{
				HXCHG( (uint8*)*(uint8**)&AUX$3, (uint8*)"dword ptr [esp]" );
			}
			goto label$485;
			label$486:;
			{
				HMOV( (uint8*)*(uint8**)&AUX8$3, (uint8*)"byte ptr [esp]" );
			}
			label$485:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$3 );
			if( ISFREE$3 != 0 ) goto label$488;
			{
				HPOP( (uint8*)*(uint8**)&AUX$3 );
			}
			goto label$487;
			label$488:;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			label$487:;
		}
		label$483:;
	}
	goto label$481;
	label$482:;
	{
		int32 TMP$347$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$489;
		TMP$347$2 = 24;
		goto label$1828;
		label$489:;
		TMP$347$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$1828:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$347$2 * 28)) + 8) == 0 ) goto label$491;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fistp ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$490;
		label$491:;
		{
			if( DDSIZE$1 != 4 ) goto label$493;
			{
				OUTP( (uint8*)"sub esp, 8" );
				OUTP( (uint8*)"fistp qword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 4" );
			}
			goto label$492;
			label$493:;
			{
				OUTP( (uint8*)"sub esp, 4" );
				OUTP( (uint8*)"fistp dword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 2" );
			}
			label$492:;
		}
		label$490:;
	}
	label$481:;
	label$479:;
}

static void _EMITSTORL2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$494:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (-(*(int32*)SVREG$1 == 4) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$497;
	{
		int32 TMP$351$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$498;
		TMP$351$2 = 24;
		goto label$1829;
		label$498:;
		TMP$351$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1829:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$351$2 * 28)) + 8) == 0 ) goto label$500;
		{
			FBSTRING TMP$354$3;
			FBSTRING TMP$355$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$354$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$354$3, (void*)"fild ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$355$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$355$3, (void*)vr$15, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$18, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$499;
		label$500:;
		{
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			OUTP( (uint8*)"fild qword ptr [esp]" );
			OUTP( (uint8*)"add esp, 8" );
			HULONG2DBL( SVREG$1 );
		}
		label$499:;
	}
	goto label$496;
	label$497:;
	{
		int32 TMP$358$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$501;
		TMP$358$2 = 24;
		goto label$1830;
		label$501:;
		TMP$358$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1830:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$358$2 * 28)) + 8) == 0 ) goto label$503;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$502;
		label$503:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$502:;
	}
	label$496:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fstp ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$495:;
}

static void _EMITSTORI2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$360$1;
	label$504:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$506;
	TMP$360$1 = 24;
	goto label$1831;
	label$506:;
	TMP$360$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1831:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$360$1 * 28)) + 4);
	if( SDSIZE$1 != 1 ) goto label$508;
	{
		int32 TMP$361$2;
		static FBSTRING AUX$2;
		static int32 REG$2;
		static int32 ISFREE$2;
		int32 vr$5 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$2 = vr$5;
		uint8* vr$6 = HGETREGNAME( 8, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$6, 0, 0 );
		int32 vr$7 = HISREGFREE( 0, REG$2 );
		ISFREE$2 = vr$7;
		if( ISFREE$2 != 0 ) goto label$510;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$510:;
		label$509:;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$511;
		TMP$361$2 = 24;
		goto label$1832;
		label$511:;
		TMP$361$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1832:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$361$2 * 28)) + 8) == 0 ) goto label$513;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
		}
		goto label$512;
		label$513:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
		}
		label$512:;
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0 ) goto label$515;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$515:;
		label$514:;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fstp ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		goto label$505;
	}
	label$508:;
	label$507:;
	if( (-(*(int32*)SVREG$1 == 4) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$517;
	{
		int32 TMP$363$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$518;
		TMP$363$2 = 24;
		goto label$1833;
		label$518:;
		TMP$363$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1833:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$363$2 * 28)) + 8) == 0 ) goto label$520;
		{
			FBSTRING TMP$364$3;
			FBSTRING TMP$365$3;
			if( (-(*(int32*)SVREG$1 == 4) & -(SDSIZE$1 < 4)) == 0 ) goto label$522;
			{
				uint8* vr$28 = HGETREGNAME( 8, *(int32*)((uint8*)SVREG$1 + 12) );
				fb_StrAssign( (void*)&SRC$1, -1, (void*)vr$28, 0, 0 );
			}
			label$522:;
			label$521:;
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$364$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$364$3, (void*)"fild ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$365$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$365$3, (void*)vr$34, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$37, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$519;
		label$520:;
		{
			if( SDSIZE$1 != 4 ) goto label$524;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$523;
			label$524:;
			{
				if( *(int32*)SVREG$1 == 0 ) goto label$526;
				{
					HPUSH( (uint8*)"0" );
				}
				label$526:;
				label$525:;
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				if( *(int32*)SVREG$1 == 0 ) goto label$528;
				{
					OUTP( (uint8*)"add esp, 6" );
				}
				goto label$527;
				label$528:;
				{
					OUTP( (uint8*)"add esp, 4" );
				}
				label$527:;
			}
			label$523:;
		}
		label$519:;
	}
	goto label$516;
	label$517:;
	{
		int32 TMP$367$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$529;
		TMP$367$2 = 24;
		goto label$1834;
		label$529:;
		TMP$367$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1834:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$367$2 * 28)) + 8) == 0 ) goto label$531;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$530;
		label$531:;
		{
			if( SDSIZE$1 != 4 ) goto label$533;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$532;
			label$533:;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				OUTP( (uint8*)"add esp, 6" );
			}
			label$532:;
		}
		label$530:;
	}
	label$516:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fstp ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$505:;
}

static void _EMITSTORF2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$368$1;
	int32 TMP$369$1;
	label$534:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$536;
	TMP$368$1 = 24;
	goto label$1835;
	label$536:;
	TMP$368$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1835:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$368$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$537;
	TMP$369$1 = 24;
	goto label$1836;
	label$537:;
	TMP$369$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1836:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$369$1 * 28)) + 4);
	if( *(int32*)SVREG$1 != 4 ) goto label$539;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fstp ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$538;
	label$539:;
	{
		if( SDSIZE$1 != DDSIZE$1 ) goto label$541;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8, 0, 0, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( SDSIZE$1 <= 4 ) goto label$543;
			{
				HPREPOPERAND( SVREG$1, &SRC$1, 8, 4, 0, -1 );
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
				HPREPOPERAND( DVREG$1, &DST$1, 8, 4, 0, -1 );
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$543:;
			label$542:;
			HPREPOPERAND( DVREG$1, &DST$1, 8, 0, 0, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$540;
		label$541:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fstp ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$540:;
	}
	label$538:;
	label$535:;
}

static void _EMITLOADL2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$544:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$545:;
}

static void _EMITLOADI2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$371$1;
	int32 TMP$373$1;
	label$546:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$548;
	TMP$371$1 = 24;
	goto label$1837;
	label$548:;
	TMP$371$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1837:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$371$1 * 28)) + 4);
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND( SVREG$1, &SRC1$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 0 ) goto label$550;
	{
		int32 TMP$372$2;
		HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$551;
		TMP$372$2 = 24;
		goto label$1838;
		label$551:;
		TMP$372$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1838:;
		if( (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$372$2 * 28)) + 8) & -(*(int64*)((uint8*)SVREG$1 + 24) < 0ll)) == 0 ) goto label$553;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"-1" );
		}
		goto label$552;
		label$553:;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
		}
		label$552:;
		goto label$547;
	}
	label$550:;
	label$549:;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$554;
	TMP$373$1 = 24;
	goto label$1839;
	label$554:;
	TMP$373$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1839:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$373$1 * 28)) + 8) == 0 ) goto label$556;
	{
		if( SDSIZE$1 >= 4 ) goto label$558;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$557;
		label$558:;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		}
		label$557:;
		HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)*(uint8**)&DST1$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sar ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 31", 5, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$555;
	label$556:;
	{
		if( SDSIZE$1 >= 4 ) goto label$560;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$559;
		label$560:;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		}
		label$559:;
		HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
	}
	label$555:;
	label$547:;
}

static void _EMITLOADF2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$374$1;
	label$561:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 == 4 ) goto label$564;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$564:;
	label$563:;
	HPREPOPERAND64( DVREG$1, &DST$1, &AUX$1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$565;
	TMP$374$1 = 24;
	goto label$1840;
	label$565:;
	TMP$374$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1840:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$374$1 * 28)) + 8) == 0 ) goto label$567;
	{
		FBSTRING TMP$375$2;
		FBSTRING TMP$376$2;
		OUTP( (uint8*)"sub esp, 8" );
		__builtin_memset( &TMP$375$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$375$2, (void*)"fistp ", 7, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
		__builtin_memset( &TMP$376$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$376$2, (void*)vr$11, -1, (void*)" [esp]", 7 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$14, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	goto label$566;
	label$567:;
	{
		int32 TMP$377$2;
		FBSTRING TMP$390$2;
		FBSTRING TMP$391$2;
		FBSTRING TMP$392$2;
		static FBSTRING LABEL_GEQ$2;
		static FBSTRING LABEL_DONE$2;
		static int32 ISEAXFREE$2;
		uint8* vr$15 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LABEL_GEQ$2, -1, (void*)vr$15, 0, 0 );
		uint8* vr$16 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LABEL_DONE$2, -1, (void*)vr$16, 0, 0 );
		int32 vr$17 = HISREGFREE( 0, 5 );
		ISEAXFREE$2 = vr$17;
		if( ISEAXFREE$2 != 0 ) goto label$568;
		int32 vr$18 = HISREGINVREG( DVREG$1, 5 );
		TMP$377$2 = -(vr$18 != 0);
		goto label$1841;
		label$568:;
		TMP$377$2 = -1;
		label$1841:;
		ISEAXFREE$2 = TMP$377$2;
		OUTP( (uint8*)"sub esp, 8" );
		OUTP( (uint8*)"mov dword ptr [esp], 0x5F000000" );
		if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$570;
		{
			OUTP( (uint8*)"fld dword ptr [esp]" );
			OUTP( (uint8*)"fcomip" );
			HBRANCH( (uint8*)"jbe", (uint8*)*(uint8**)&LABEL_GEQ$2 );
		}
		goto label$569;
		label$570:;
		{
			OUTP( (uint8*)"fcom dword ptr [esp]" );
			if( ISEAXFREE$2 == 0 ) goto label$572;
			{
				OUTP( (uint8*)"fnstsw ax" );
				OUTP( (uint8*)"test ah, 1" );
			}
			goto label$571;
			label$572:;
			{
				HPUSH( (uint8*)"eax" );
				OUTP( (uint8*)"fnstsw ax" );
				OUTP( (uint8*)"test ah, 1" );
				HPOP( (uint8*)"eax" );
			}
			label$571:;
			HBRANCH( (uint8*)"jz", (uint8*)*(uint8**)&LABEL_GEQ$2 );
		}
		label$569:;
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		HPOP( (uint8*)*(uint8**)&AUX$1 );
		HBRANCH( (uint8*)"jmp", (uint8*)*(uint8**)&LABEL_DONE$2 );
		HLABEL( (uint8*)*(uint8**)&LABEL_GEQ$2 );
		OUTP( (uint8*)"fsub dword ptr [esp]" );
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		HPOP( (uint8*)*(uint8**)&AUX$1 );
		__builtin_memset( &TMP$392$2, 0, 12 );
		__builtin_memset( &TMP$390$2, 0, 12 );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$390$2, (void*)"xor ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$391$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$391$2, (void*)vr$23, -1, (void*)", 0x80000000", 13 );
		fb_StrAssign( (void*)&TMP$392$2, -1, (void*)vr$26, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$392$2 );
		fb_StrDelete( (FBSTRING*)&TMP$392$2 );
		HLABEL( (uint8*)*(uint8**)&LABEL_DONE$2 );
	}
	label$566:;
	label$562:;
}

static void _EMITLOADI2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$393$1;
	int32 TMP$394$1;
	label$573:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$575;
	TMP$393$1 = 24;
	goto label$1842;
	label$575:;
	TMP$393$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1842:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$393$1 * 28)) + 4);
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$576;
	TMP$394$1 = 24;
	goto label$1843;
	label$576:;
	TMP$394$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1843:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$394$1 * 28)) + 4);
	if( DDSIZE$1 != 1 ) goto label$578;
	{
		if( *(int32*)SVREG$1 != 0 ) goto label$580;
		{
			DDSIZE$1 = 4;
		}
		label$580:;
		label$579:;
	}
	label$578:;
	label$577:;
	if( (-(*(int32*)SVREG$1 == 0) | -(DDSIZE$1 == SDSIZE$1)) == 0 ) goto label$582;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$581;
	label$582:;
	{
		if( DDSIZE$1 <= SDSIZE$1 ) goto label$584;
		{
			int32 TMP$395$3;
			if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$585;
			TMP$395$3 = 24;
			goto label$1844;
			label$585:;
			TMP$395$3 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
			label$1844:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$395$3 * 28)) + 8) == 0 ) goto label$587;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
			}
			goto label$586;
			label$587:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
			}
			label$586:;
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$583;
		label$584:;
		{
			if( *(int32*)SVREG$1 != 4 ) goto label$589;
			{
				if( *(int32*)((uint8*)SVREG$1 + 12) == *(int32*)((uint8*)DVREG$1 + 12) ) goto label$591;
				{
					static FBSTRING AUX$5;
					static int32 DTYPE$5;
					DTYPE$5 = *(int32*)((uint8*)DVREG$1 + 4);
					if( DDSIZE$1 != 1 ) goto label$593;
					{
						if( (-(*(int32*)((uint8*)SVREG$1 + 12) == 2) | -(*(int32*)((uint8*)SVREG$1 + 12) == 1)) == 0 ) goto label$595;
						{
							DTYPE$5 = 8;
							uint8* vr$30 = HGETREGNAME( DTYPE$5, *(int32*)((uint8*)DVREG$1 + 12) );
							fb_StrAssign( (void*)&DST$1, -1, (void*)vr$30, 0, 0 );
						}
						label$595:;
						label$594:;
					}
					label$593:;
					label$592:;
					uint8* vr$32 = HGETREGNAME( DTYPE$5, *(int32*)((uint8*)SVREG$1 + 12) );
					fb_StrAssign( (void*)&AUX$5, -1, (void*)vr$32, 0, 0 );
					fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$5, -1, 0 );
					OUTP( (uint8*)*(uint8**)&OSTR$1 );
				}
				label$591:;
				label$590:;
			}
			goto label$588;
			label$589:;
			{
				HPREPOPERAND( SVREG$1, &SRC$1, *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4), 0, 0, -1 );
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$588:;
		}
		label$583:;
	}
	label$581:;
	label$574:;
}

static void _EMITLOADL2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$596:;
	_EMITLOADI2I( DVREG$1, SVREG$1 );
	label$597:;
}

static void _EMITLOADF2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$396$1;
	label$598:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$600;
	TMP$396$1 = 24;
	goto label$1845;
	label$600:;
	TMP$396$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1845:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$396$1 * 28)) + 4);
	if( *(int32*)SVREG$1 == 4 ) goto label$602;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$602:;
	label$601:;
	if( DDSIZE$1 != 1 ) goto label$604;
	{
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		if( *(int32*)DVREG$1 != 4 ) goto label$606;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"byte ptr [esp]" );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$605;
		label$606:;
		{
			static FBSTRING AUX$3;
			static FBSTRING AUX8$3;
			static int32 REG$3;
			static int32 ISFREE$3;
			int32 vr$7 = HFINDREGNOTINVREG( DVREG$1, -1 );
			REG$3 = vr$7;
			uint8* vr$8 = HGETREGNAME( 2, REG$3 );
			fb_StrAssign( (void*)&AUX8$3, -1, (void*)vr$8, 0, 0 );
			uint8* vr$9 = HGETREGNAME( 8, REG$3 );
			fb_StrAssign( (void*)&AUX$3, -1, (void*)vr$9, 0, 0 );
			int32 vr$10 = HISREGFREE( 0, REG$3 );
			ISFREE$3 = vr$10;
			if( ISFREE$3 != 0 ) goto label$608;
			{
				HXCHG( (uint8*)*(uint8**)&AUX$3, (uint8*)"dword ptr [esp]" );
			}
			goto label$607;
			label$608:;
			{
				HMOV( (uint8*)*(uint8**)&AUX8$3, (uint8*)"byte ptr [esp]" );
			}
			label$607:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$3 );
			if( ISFREE$3 != 0 ) goto label$610;
			{
				HPOP( (uint8*)*(uint8**)&AUX$3 );
			}
			goto label$609;
			label$610:;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			label$609:;
		}
		label$605:;
	}
	goto label$603;
	label$604:;
	{
		int32 TMP$397$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$611;
		TMP$397$2 = 24;
		goto label$1846;
		label$611:;
		TMP$397$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$1846:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$397$2 * 28)) + 8) == 0 ) goto label$613;
		{
			FBSTRING TMP$398$3;
			FBSTRING TMP$399$3;
			OUTP( (uint8*)"sub esp, 4" );
			__builtin_memset( &TMP$398$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$398$3, (void*)"fistp ", 7, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$399$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$399$3, (void*)vr$21, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$24, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( DDSIZE$1 >= 4 ) goto label$615;
			{
				uint8* vr$26 = HGETREGNAME( 8, *(int32*)((uint8*)DVREG$1 + 12) );
				fb_StrAssign( (void*)&DST$1, -1, (void*)vr$26, 0, 0 );
			}
			label$615:;
			label$614:;
			HPOP( (uint8*)*(uint8**)&DST$1 );
		}
		goto label$612;
		label$613:;
		{
			if( DDSIZE$1 != 4 ) goto label$617;
			{
				OUTP( (uint8*)"sub esp, 8" );
				OUTP( (uint8*)"fistp qword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 4" );
			}
			goto label$616;
			label$617:;
			{
				OUTP( (uint8*)"sub esp, 4" );
				OUTP( (uint8*)"fistp dword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 2" );
			}
			label$616:;
		}
		label$612:;
	}
	label$603:;
	label$599:;
}

static void _EMITLOADL2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$618:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (-(*(int32*)SVREG$1 == 4) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$621;
	{
		int32 TMP$400$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$622;
		TMP$400$2 = 24;
		goto label$1847;
		label$622:;
		TMP$400$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1847:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$400$2 * 28)) + 8) == 0 ) goto label$624;
		{
			FBSTRING TMP$401$3;
			FBSTRING TMP$402$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$401$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$401$3, (void*)"fild ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$402$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$402$3, (void*)vr$15, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$18, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$623;
		label$624:;
		{
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			OUTP( (uint8*)"fild qword ptr [esp]" );
			OUTP( (uint8*)"add esp, 8" );
			HULONG2DBL( SVREG$1 );
		}
		label$623:;
	}
	goto label$620;
	label$621:;
	{
		int32 TMP$403$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$625;
		TMP$403$2 = 24;
		goto label$1848;
		label$625:;
		TMP$403$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1848:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$403$2 * 28)) + 8) == 0 ) goto label$627;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$626;
		label$627:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$626:;
	}
	label$620:;
	label$619:;
}

static void _EMITLOADI2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$404$1;
	label$628:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$630;
	TMP$404$1 = 24;
	goto label$1849;
	label$630:;
	TMP$404$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1849:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$404$1 * 28)) + 4);
	if( SDSIZE$1 != 1 ) goto label$632;
	{
		int32 TMP$405$2;
		static FBSTRING AUX$2;
		static int32 ISFREE$2;
		static int32 REG$2;
		int32 vr$5 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$2 = vr$5;
		uint8* vr$6 = HGETREGNAME( 8, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$6, 0, 0 );
		int32 vr$7 = HISREGFREE( 0, REG$2 );
		ISFREE$2 = vr$7;
		if( ISFREE$2 != 0 ) goto label$634;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$634:;
		label$633:;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$635;
		TMP$405$2 = 24;
		goto label$1850;
		label$635:;
		TMP$405$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1850:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$405$2 * 28)) + 8) == 0 ) goto label$637;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movsx ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$636;
		label$637:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"movzx ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&AUX$2, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$636:;
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0 ) goto label$639;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$639:;
		label$638:;
		goto label$629;
	}
	label$632:;
	label$631:;
	if( (-(*(int32*)SVREG$1 == 4) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$641;
	{
		int32 TMP$406$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$642;
		TMP$406$2 = 24;
		goto label$1851;
		label$642:;
		TMP$406$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1851:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$406$2 * 28)) + 8) == 0 ) goto label$644;
		{
			FBSTRING TMP$407$3;
			FBSTRING TMP$408$3;
			if( (-(*(int32*)SVREG$1 == 4) & -(SDSIZE$1 < 4)) == 0 ) goto label$646;
			{
				uint8* vr$28 = HGETREGNAME( 8, *(int32*)((uint8*)SVREG$1 + 12) );
				fb_StrAssign( (void*)&SRC$1, -1, (void*)vr$28, 0, 0 );
			}
			label$646:;
			label$645:;
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$407$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$407$3, (void*)"fild ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
			__builtin_memset( &TMP$408$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$408$3, (void*)vr$34, -1, (void*)" [esp]", 7 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$37, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$643;
		label$644:;
		{
			if( SDSIZE$1 != 4 ) goto label$648;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$647;
			label$648:;
			{
				if( *(int32*)SVREG$1 == 0 ) goto label$650;
				{
					HPUSH( (uint8*)"0" );
				}
				label$650:;
				label$649:;
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				if( *(int32*)SVREG$1 == 0 ) goto label$652;
				{
					OUTP( (uint8*)"add esp, 6" );
				}
				goto label$651;
				label$652:;
				{
					OUTP( (uint8*)"add esp, 4" );
				}
				label$651:;
			}
			label$647:;
		}
		label$643:;
	}
	goto label$640;
	label$641:;
	{
		int32 TMP$409$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$653;
		TMP$409$2 = 24;
		goto label$1852;
		label$653:;
		TMP$409$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1852:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$409$2 * 28)) + 8) == 0 ) goto label$655;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fild ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$654;
		label$655:;
		{
			if( SDSIZE$1 != 4 ) goto label$657;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$656;
			label$657:;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				OUTP( (uint8*)"add esp, 6" );
			}
			label$656:;
		}
		label$654:;
	}
	label$640:;
	label$629:;
}

static void _EMITLOADF2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$658:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$659:;
}

static void _EMITMOVL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$660:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$661:;
}

static void _EMITMOVI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$410$1;
	label$662:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$664;
	TMP$410$1 = 24;
	goto label$1853;
	label$664:;
	TMP$410$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1853:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$410$1 * 28)) + 4) != 1 ) goto label$666;
	{
		uint8* vr$6 = HGETREGNAME( 8, *(int32*)((uint8*)DVREG$1 + 12) );
		fb_StrAssign( (void*)&DST$1, -1, (void*)vr$6, 0, 0 );
		uint8* vr$8 = HGETREGNAME( 8, *(int32*)((uint8*)SVREG$1 + 12) );
		fb_StrAssign( (void*)&SRC$1, -1, (void*)vr$8, 0, 0 );
	}
	goto label$665;
	label$666:;
	{
		HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
		HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	}
	label$665:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$663:;
}

static void _EMITMOVF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$667:;
	label$668:;
}

static void _EMITADDL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$669:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"add ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"adc ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$670:;
}

static void _EMITADDI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$671:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DOINC$1;
	static int32 DODEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	DOINC$1 = 0;
	DODEC$1 = 0;
	if( *(int32*)SVREG$1 != 0 ) goto label$674;
	{
		{
			int64 TMP$413$3;
			TMP$413$3 = *(int64*)((uint8*)SVREG$1 + 24);
			if( TMP$413$3 != 1ll ) goto label$676;
			label$677:;
			{
				DOINC$1 = -1;
			}
			goto label$675;
			label$676:;
			if( TMP$413$3 != -1ll ) goto label$678;
			label$679:;
			{
				DODEC$1 = -1;
			}
			label$678:;
			label$675:;
		}
	}
	label$674:;
	label$673:;
	if( DOINC$1 == 0 ) goto label$681;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"inc ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$680;
	label$681:;
	if( DODEC$1 == 0 ) goto label$682;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"dec ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$680;
	label$682:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"add ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$680:;
	label$672:;
}

static void _EMITADDF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$683:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 4 ) goto label$686;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"faddp", 6, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$685;
	label$686:;
	{
		int32 TMP$416$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$687;
		TMP$416$2 = 24;
		goto label$1854;
		label$687:;
		TMP$416$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1854:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$416$2 * 28)) != 1 ) goto label$689;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fadd ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$688;
		label$689:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fiadd ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$688:;
	}
	label$685:;
	label$684:;
}

static void _EMITSUBL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$690:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sub ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sbb ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$691:;
}

static void _EMITSUBI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$692:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 DOINC$1;
	static int32 DODEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	DOINC$1 = 0;
	DODEC$1 = 0;
	if( *(int32*)SVREG$1 != 0 ) goto label$695;
	{
		{
			int64 TMP$421$3;
			TMP$421$3 = *(int64*)((uint8*)SVREG$1 + 24);
			if( TMP$421$3 != 1ll ) goto label$697;
			label$698:;
			{
				DODEC$1 = -1;
			}
			goto label$696;
			label$697:;
			if( TMP$421$3 != -1ll ) goto label$699;
			label$700:;
			{
				DOINC$1 = -1;
			}
			label$699:;
			label$696:;
		}
	}
	label$695:;
	label$694:;
	if( DODEC$1 == 0 ) goto label$702;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"dec ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$701;
	label$702:;
	if( DOINC$1 == 0 ) goto label$703;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"inc ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$701;
	label$703:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sub ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$701:;
	label$693:;
}

static void _EMITSUBF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$704:;
	static FBSTRING SRC$1;
	static int32 DOINC$1;
	static int32 DODEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 4 ) goto label$707;
	{
		OUTP( (uint8*)"fsubrp" );
	}
	goto label$706;
	label$707:;
	{
		int32 TMP$423$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$708;
		TMP$423$2 = 24;
		goto label$1855;
		label$708:;
		TMP$423$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1855:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$423$2 * 28)) != 1 ) goto label$710;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fsub ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$709;
		label$710:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fisub ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$709:;
	}
	label$706:;
	label$705:;
}

static void _EMITMULL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	FBSTRING TMP$427$1;
	FBSTRING TMP$428$1;
	FBSTRING TMP$429$1;
	FBSTRING TMP$431$1;
	FBSTRING TMP$432$1;
	FBSTRING TMP$433$1;
	FBSTRING TMP$435$1;
	FBSTRING TMP$436$1;
	FBSTRING TMP$437$1;
	FBSTRING TMP$439$1;
	FBSTRING TMP$440$1;
	FBSTRING TMP$441$1;
	FBSTRING TMP$444$1;
	FBSTRING TMP$445$1;
	FBSTRING TMP$446$1;
	FBSTRING TMP$448$1;
	FBSTRING TMP$449$1;
	FBSTRING TMP$450$1;
	FBSTRING TMP$454$1;
	FBSTRING TMP$455$1;
	FBSTRING TMP$456$1;
	label$711:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static int32 ISEAXFREE$1;
	static int32 ISEDXFREE$1;
	static int32 EAXINDEST$1;
	static int32 EDXINDEST$1;
	static int32 OFS$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	int32 vr$0 = HISREGFREE( 0, 5 );
	ISEAXFREE$1 = vr$0;
	int32 vr$1 = HISREGFREE( 0, 0 );
	ISEDXFREE$1 = vr$1;
	int32 vr$2 = HISREGINVREG( DVREG$1, 5 );
	EAXINDEST$1 = vr$2;
	int32 vr$3 = HISREGINVREG( DVREG$1, 0 );
	EDXINDEST$1 = vr$3;
	HPUSH( (uint8*)*(uint8**)&SRC2$1 );
	HPUSH( (uint8*)*(uint8**)&SRC1$1 );
	HPUSH( (uint8*)*(uint8**)&DST2$1 );
	HPUSH( (uint8*)*(uint8**)&DST1$1 );
	OFS$1 = 0;
	if( EDXINDEST$1 == 0 ) goto label$714;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$716;
		{
			OFS$1 = OFS$1 + 4;
			HPUSH( (uint8*)"edx" );
		}
		label$716:;
		label$715:;
	}
	goto label$713;
	label$714:;
	{
		if( ISEDXFREE$1 != 0 ) goto label$718;
		{
			OFS$1 = OFS$1 + 4;
			HPUSH( (uint8*)"edx" );
		}
		label$718:;
		label$717:;
	}
	label$713:;
	if( EAXINDEST$1 == 0 ) goto label$720;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$722;
		{
			OFS$1 = OFS$1 + 4;
			HPUSH( (uint8*)"eax" );
		}
		label$722:;
		label$721:;
	}
	goto label$719;
	label$720:;
	{
		if( ISEAXFREE$1 != 0 ) goto label$724;
		{
			OFS$1 = OFS$1 + 4;
			HPUSH( (uint8*)"eax" );
		}
		label$724:;
		label$723:;
	}
	label$719:;
	__builtin_memset( &TMP$429$1, 0, 12 );
	FBSTRING* vr$11 = fb_IntToStr( OFS$1 );
	__builtin_memset( &TMP$427$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$427$1, (void*)"mov eax, [esp+", 15, (void*)vr$11, -1 );
	__builtin_memset( &TMP$428$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$428$1, (void*)vr$14, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$429$1, -1, (void*)vr$17, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$429$1 );
	fb_StrDelete( (FBSTRING*)&TMP$429$1 );
	__builtin_memset( &TMP$433$1, 0, 12 );
	FBSTRING* vr$22 = fb_IntToStr( OFS$1 + 8 );
	__builtin_memset( &TMP$431$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$431$1, (void*)"mul dword ptr [esp+", 20, (void*)vr$22, -1 );
	__builtin_memset( &TMP$432$1, 0, 12 );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$432$1, (void*)vr$25, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$433$1, -1, (void*)vr$28, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$433$1 );
	fb_StrDelete( (FBSTRING*)&TMP$433$1 );
	__builtin_memset( &TMP$437$1, 0, 12 );
	FBSTRING* vr$32 = fb_IntToStr( OFS$1 );
	__builtin_memset( &TMP$435$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$435$1, (void*)"xchg eax, [esp+", 16, (void*)vr$32, -1 );
	__builtin_memset( &TMP$436$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$436$1, (void*)vr$35, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$437$1, -1, (void*)vr$38, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$437$1 );
	fb_StrDelete( (FBSTRING*)&TMP$437$1 );
	__builtin_memset( &TMP$441$1, 0, 12 );
	FBSTRING* vr$43 = fb_IntToStr( OFS$1 + 12 );
	__builtin_memset( &TMP$439$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$439$1, (void*)"imul eax, [esp+", 16, (void*)vr$43, -1 );
	__builtin_memset( &TMP$440$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$440$1, (void*)vr$46, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$441$1, -1, (void*)vr$49, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$441$1 );
	fb_StrDelete( (FBSTRING*)&TMP$441$1 );
	OUTP( (uint8*)"add eax, edx" );
	__builtin_memset( &TMP$446$1, 0, 12 );
	FBSTRING* vr$54 = fb_IntToStr( OFS$1 + 4 );
	__builtin_memset( &TMP$444$1, 0, 12 );
	FBSTRING* vr$57 = fb_StrConcat( &TMP$444$1, (void*)"mov edx, [esp+", 15, (void*)vr$54, -1 );
	__builtin_memset( &TMP$445$1, 0, 12 );
	FBSTRING* vr$60 = fb_StrConcat( &TMP$445$1, (void*)vr$57, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$446$1, -1, (void*)vr$60, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$446$1 );
	fb_StrDelete( (FBSTRING*)&TMP$446$1 );
	__builtin_memset( &TMP$450$1, 0, 12 );
	FBSTRING* vr$65 = fb_IntToStr( OFS$1 + 8 );
	__builtin_memset( &TMP$448$1, 0, 12 );
	FBSTRING* vr$68 = fb_StrConcat( &TMP$448$1, (void*)"imul edx, [esp+", 16, (void*)vr$65, -1 );
	__builtin_memset( &TMP$449$1, 0, 12 );
	FBSTRING* vr$71 = fb_StrConcat( &TMP$449$1, (void*)vr$68, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$450$1, -1, (void*)vr$71, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$450$1 );
	fb_StrDelete( (FBSTRING*)&TMP$450$1 );
	OUTP( (uint8*)"add edx, eax" );
	__builtin_memset( &TMP$456$1, 0, 12 );
	FBSTRING* vr$76 = fb_IntToStr( OFS$1 + 4 );
	__builtin_memset( &TMP$454$1, 0, 12 );
	FBSTRING* vr$79 = fb_StrConcat( &TMP$454$1, (void*)"mov [esp+", 10, (void*)vr$76, -1 );
	__builtin_memset( &TMP$455$1, 0, 12 );
	FBSTRING* vr$82 = fb_StrConcat( &TMP$455$1, (void*)vr$79, -1, (void*)"], edx", 7 );
	fb_StrAssign( (void*)&TMP$456$1, -1, (void*)vr$82, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$456$1 );
	fb_StrDelete( (FBSTRING*)&TMP$456$1 );
	if( EAXINDEST$1 == 0 ) goto label$726;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$728;
		{
			HPOP( (uint8*)"eax" );
		}
		label$728:;
		label$727:;
	}
	goto label$725;
	label$726:;
	{
		if( ISEAXFREE$1 != 0 ) goto label$730;
		{
			HPOP( (uint8*)"eax" );
		}
		label$730:;
		label$729:;
	}
	label$725:;
	if( EDXINDEST$1 == 0 ) goto label$732;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$734;
		{
			HPOP( (uint8*)"edx" );
		}
		label$734:;
		label$733:;
	}
	goto label$731;
	label$732:;
	{
		if( ISEDXFREE$1 != 0 ) goto label$736;
		{
			HPOP( (uint8*)"edx" );
		}
		label$736:;
		label$735:;
	}
	label$731:;
	HPOP( (uint8*)*(uint8**)&DST1$1 );
	HPOP( (uint8*)*(uint8**)&DST2$1 );
	OUTP( (uint8*)"add esp, 8" );
	label$712:;
}

static void _EMITMULI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$737:;
	static int32 REG$1;
	static int32 ISFREE$1;
	static FBSTRING RNAME$1;
	static FBSTRING OSTR$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)DVREG$1 == 4 ) goto label$740;
	{
		int32 vr$1 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$1 = vr$1;
		uint8* vr$3 = HGETREGNAME( *(int32*)((uint8*)SVREG$1 + 4), REG$1 );
		fb_StrAssign( (void*)&RNAME$1, -1, (void*)vr$3, 0, 0 );
		int32 vr$4 = HISREGFREE( 0, REG$1 );
		ISFREE$1 = vr$4;
		if( ISFREE$1 != 0 ) goto label$742;
		{
			HPUSH( (uint8*)*(uint8**)&RNAME$1 );
		}
		label$742:;
		label$741:;
		HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)*(uint8**)&DST$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"imul ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&RNAME$1 );
		if( ISFREE$1 != 0 ) goto label$744;
		{
			HPOP( (uint8*)*(uint8**)&RNAME$1 );
		}
		label$744:;
		label$743:;
	}
	goto label$739;
	label$740:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"imul ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$739:;
	label$738:;
}

static void _EMITMULF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$745:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 4 ) goto label$748;
	{
		OUTP( (uint8*)"fmulp" );
	}
	goto label$747;
	label$748:;
	{
		int32 TMP$459$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$749;
		TMP$459$2 = 24;
		goto label$1856;
		label$749:;
		TMP$459$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1856:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$459$2 * 28)) != 1 ) goto label$751;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fmul ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$750;
		label$751:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fimul ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$750:;
	}
	label$747:;
	label$746:;
}

static void _EMITDIVF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$752:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 4 ) goto label$755;
	{
		OUTP( (uint8*)"fdivrp" );
	}
	goto label$754;
	label$755:;
	{
		int32 TMP$463$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$756;
		TMP$463$2 = 24;
		goto label$1857;
		label$756:;
		TMP$463$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$1857:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$463$2 * 28)) != 1 ) goto label$758;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fdiv ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$757;
		label$758:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fidiv ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$757:;
	}
	label$754:;
	label$753:;
}

static void _EMITDIVI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$466$1;
	int32 TMP$468$1;
	label$759:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 ECXTRASHED$1;
	static int32 EAXFREE$1;
	static int32 ECXFREE$1;
	static int32 EDXFREE$1;
	static int32 EAXINDEST$1;
	static int32 ECXINDEST$1;
	static int32 EDXINDEST$1;
	static int32 EAXINSOURCE$1;
	static int32 EDXINSOURCE$1;
	static FBSTRING EAX$1;
	static FBSTRING ECX$1;
	static FBSTRING EDX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$761;
	TMP$466$1 = 24;
	goto label$1858;
	label$761:;
	TMP$466$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1858:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$466$1 * 28)) + 4) != 4 ) goto label$763;
	{
		fb_StrAssign( (void*)&EAX$1, -1, (void*)"eax", 4, 0 );
		fb_StrAssign( (void*)&ECX$1, -1, (void*)"ecx", 4, 0 );
		fb_StrAssign( (void*)&EDX$1, -1, (void*)"edx", 4, 0 );
	}
	goto label$762;
	label$763:;
	{
		fb_StrAssign( (void*)&EAX$1, -1, (void*)"ax", 3, 0 );
		fb_StrAssign( (void*)&ECX$1, -1, (void*)"cx", 3, 0 );
		fb_StrAssign( (void*)&EDX$1, -1, (void*)"dx", 3, 0 );
	}
	label$762:;
	ECXTRASHED$1 = 0;
	int32 vr$5 = HISREGFREE( 0, 5 );
	EAXFREE$1 = vr$5;
	int32 vr$6 = HISREGFREE( 0, 3 );
	ECXFREE$1 = vr$6;
	int32 vr$7 = HISREGFREE( 0, 0 );
	EDXFREE$1 = vr$7;
	int32 vr$8 = HISREGINVREG( SVREG$1, 5 );
	EAXINSOURCE$1 = vr$8;
	int32 vr$9 = HISREGINVREG( SVREG$1, 0 );
	EDXINSOURCE$1 = vr$9;
	int32 vr$10 = HISREGINVREG( DVREG$1, 5 );
	EAXINDEST$1 = vr$10;
	int32 vr$11 = HISREGINVREG( DVREG$1, 0 );
	EDXINDEST$1 = vr$11;
	int32 vr$12 = HISREGINVREG( DVREG$1, 3 );
	ECXINDEST$1 = vr$12;
	if( ((EAXINSOURCE$1 | EDXINSOURCE$1) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$765;
	{
		ECXTRASHED$1 = -1;
		if( ECXINDEST$1 == 0 ) goto label$767;
		{
			HPUSH( (uint8*)"ecx" );
			if( *(int32*)DVREG$1 == 4 ) goto label$769;
			{
				HPREPOPERAND( DVREG$1, &OSTR$1, 8, 0, 0, -1 );
				HPUSH( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$769:;
			label$768:;
		}
		goto label$766;
		label$767:;
		if( ECXFREE$1 != 0 ) goto label$770;
		{
			HPUSH( (uint8*)"ecx" );
		}
		label$770:;
		label$766:;
		HMOV( (uint8*)*(uint8**)&ECX$1, (uint8*)*(uint8**)&SRC$1 );
		fb_StrAssign( (void*)&SRC$1, -1, (void*)&ECX$1, -1, 0 );
	}
	label$765:;
	label$764:;
	if( EAXINDEST$1 != 0 ) goto label$772;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0 ) goto label$774;
		{
			if( EAXFREE$1 != 0 ) goto label$776;
			{
				OUTP( (uint8*)"xchg eax, [esp]" );
			}
			goto label$775;
			label$776:;
			{
				HPOP( (uint8*)"eax" );
			}
			label$775:;
		}
		goto label$773;
		label$774:;
		{
			if( EAXFREE$1 != 0 ) goto label$778;
			{
				HPUSH( (uint8*)"eax" );
			}
			label$778:;
			label$777:;
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$773:;
	}
	goto label$771;
	label$772:;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$780;
		{
			HPUSH( (uint8*)"eax" );
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$780:;
		label$779:;
	}
	label$771:;
	if( EDXINDEST$1 == 0 ) goto label$782;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$784;
		{
			HPUSH( (uint8*)"edx" );
		}
		label$784:;
		label$783:;
	}
	goto label$781;
	label$782:;
	if( EDXFREE$1 != 0 ) goto label$785;
	{
		HPUSH( (uint8*)"edx" );
	}
	label$785:;
	label$781:;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$786;
	TMP$468$1 = 24;
	goto label$1859;
	label$786:;
	TMP$468$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1859:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$468$1 * 28)) + 8) == 0 ) goto label$788;
	{
		int32 TMP$469$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$789;
		TMP$469$2 = 24;
		goto label$1860;
		label$789:;
		TMP$469$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$1860:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$469$2 * 28)) + 4) != 4 ) goto label$791;
		{
			OUTP( (uint8*)"cdq" );
		}
		goto label$790;
		label$791:;
		{
			OUTP( (uint8*)"cwd" );
		}
		label$790:;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"idiv ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$787;
	label$788:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EDX$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EDX$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"div ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$787:;
	if( EDXINDEST$1 == 0 ) goto label$793;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$795;
		{
			HPOP( (uint8*)"edx" );
		}
		label$795:;
		label$794:;
	}
	goto label$792;
	label$793:;
	if( EDXFREE$1 != 0 ) goto label$796;
	{
		HPOP( (uint8*)"edx" );
	}
	label$796:;
	label$792:;
	if( EAXINDEST$1 != 0 ) goto label$798;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0 ) goto label$800;
		{
			if( *(int32*)DVREG$1 == 4 ) goto label$802;
			{
				if( EAXFREE$1 != 0 ) goto label$804;
				{
					HPOP( (uint8*)"ecx" );
					OUTP( (uint8*)"xchg ecx, [esp]" );
				}
				goto label$803;
				label$804:;
				{
					HPOP( (uint8*)"ecx" );
				}
				label$803:;
			}
			label$802:;
			label$801:;
		}
		label$800:;
		label$799:;
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&EAX$1 );
		if( EAXFREE$1 != 0 ) goto label$806;
		{
			HPOP( (uint8*)"eax" );
		}
		label$806:;
		label$805:;
	}
	goto label$797;
	label$798:;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$808;
		{
			if( (-(ECXFREE$1 == 0) & -(ECXTRASHED$1 == 0)) == 0 ) goto label$810;
			{
				OUTP( (uint8*)"xchg ecx, [esp]" );
				OUTP( (uint8*)"xchg ecx, eax" );
			}
			goto label$809;
			label$810:;
			{
				HMOV( (uint8*)"ecx", (uint8*)"eax" );
				HPOP( (uint8*)"eax" );
			}
			label$809:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&ECX$1 );
			if( (-(ECXFREE$1 == 0) & -(ECXTRASHED$1 == 0)) == 0 ) goto label$812;
			{
				HPOP( (uint8*)"ecx" );
			}
			label$812:;
			label$811:;
		}
		label$808:;
		label$807:;
	}
	label$797:;
	if( ECXTRASHED$1 == 0 ) goto label$814;
	{
		if( (-(ECXFREE$1 == 0) & -(ECXINDEST$1 == 0)) == 0 ) goto label$816;
		{
			HPOP( (uint8*)"ecx" );
		}
		label$816:;
		label$815:;
	}
	label$814:;
	label$813:;
	label$760:;
}

static void _EMITMODI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$476$1;
	int32 TMP$477$1;
	label$817:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int32 ECXTRASHED$1;
	static int32 EAXFREE$1;
	static int32 ECXFREE$1;
	static int32 EDXFREE$1;
	static int32 EAXINDEST$1;
	static int32 ECXINDEST$1;
	static int32 EDXINDEST$1;
	static int32 EAXINSOURCE$1;
	static int32 EDXINSOURCE$1;
	static FBSTRING EAX$1;
	static FBSTRING ECX$1;
	static FBSTRING EDX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$819;
	TMP$476$1 = 24;
	goto label$1861;
	label$819:;
	TMP$476$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1861:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$476$1 * 28)) + 4) != 4 ) goto label$821;
	{
		fb_StrAssign( (void*)&EAX$1, -1, (void*)"eax", 4, 0 );
		fb_StrAssign( (void*)&ECX$1, -1, (void*)"ecx", 4, 0 );
		fb_StrAssign( (void*)&EDX$1, -1, (void*)"edx", 4, 0 );
	}
	goto label$820;
	label$821:;
	{
		fb_StrAssign( (void*)&EAX$1, -1, (void*)"ax", 3, 0 );
		fb_StrAssign( (void*)&ECX$1, -1, (void*)"cx", 3, 0 );
		fb_StrAssign( (void*)&EDX$1, -1, (void*)"dx", 3, 0 );
	}
	label$820:;
	ECXTRASHED$1 = 0;
	int32 vr$5 = HISREGFREE( 0, 5 );
	EAXFREE$1 = vr$5;
	int32 vr$6 = HISREGFREE( 0, 3 );
	ECXFREE$1 = vr$6;
	int32 vr$7 = HISREGFREE( 0, 0 );
	EDXFREE$1 = vr$7;
	int32 vr$8 = HISREGINVREG( SVREG$1, 5 );
	EAXINSOURCE$1 = vr$8;
	int32 vr$9 = HISREGINVREG( SVREG$1, 0 );
	EDXINSOURCE$1 = vr$9;
	int32 vr$10 = HISREGINVREG( DVREG$1, 5 );
	EAXINDEST$1 = vr$10;
	int32 vr$11 = HISREGINVREG( DVREG$1, 0 );
	EDXINDEST$1 = vr$11;
	int32 vr$12 = HISREGINVREG( DVREG$1, 3 );
	ECXINDEST$1 = vr$12;
	if( ((EAXINSOURCE$1 | EDXINSOURCE$1) | -(*(int32*)SVREG$1 == 0)) == 0 ) goto label$823;
	{
		ECXTRASHED$1 = -1;
		if( ECXINDEST$1 == 0 ) goto label$825;
		{
			HPUSH( (uint8*)"ecx" );
			if( *(int32*)DVREG$1 == 4 ) goto label$827;
			{
				HPREPOPERAND( DVREG$1, &OSTR$1, 8, 0, 0, -1 );
				HPUSH( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$827:;
			label$826:;
		}
		goto label$824;
		label$825:;
		if( ECXFREE$1 != 0 ) goto label$828;
		{
			HPUSH( (uint8*)"ecx" );
		}
		label$828:;
		label$824:;
		HMOV( (uint8*)*(uint8**)&ECX$1, (uint8*)*(uint8**)&SRC$1 );
		fb_StrAssign( (void*)&SRC$1, -1, (void*)&ECX$1, -1, 0 );
	}
	label$823:;
	label$822:;
	if( EAXINDEST$1 != 0 ) goto label$830;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0 ) goto label$832;
		{
			if( EAXFREE$1 != 0 ) goto label$834;
			{
				OUTP( (uint8*)"xchg eax, [esp]" );
			}
			goto label$833;
			label$834:;
			{
				HPOP( (uint8*)"eax" );
			}
			label$833:;
		}
		goto label$831;
		label$832:;
		{
			if( EAXFREE$1 != 0 ) goto label$836;
			{
				HPUSH( (uint8*)"eax" );
			}
			label$836:;
			label$835:;
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$831:;
	}
	goto label$829;
	label$830:;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$838;
		{
			HPUSH( (uint8*)"eax" );
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$838:;
		label$837:;
	}
	label$829:;
	if( EDXINDEST$1 == 0 ) goto label$840;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$842;
		{
			HPUSH( (uint8*)"edx" );
		}
		label$842:;
		label$841:;
	}
	goto label$839;
	label$840:;
	if( EDXFREE$1 != 0 ) goto label$843;
	{
		HPUSH( (uint8*)"edx" );
	}
	label$843:;
	label$839:;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$844;
	TMP$477$1 = 24;
	goto label$1862;
	label$844:;
	TMP$477$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1862:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$477$1 * 28)) + 8) == 0 ) goto label$846;
	{
		int32 TMP$478$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$847;
		TMP$478$2 = 24;
		goto label$1863;
		label$847:;
		TMP$478$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$1863:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$478$2 * 28)) + 4) != 4 ) goto label$849;
		{
			OUTP( (uint8*)"cdq" );
		}
		goto label$848;
		label$849:;
		{
			OUTP( (uint8*)"cwd" );
		}
		label$848:;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"idiv ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$845;
	label$846:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EDX$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&EDX$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"div ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$845:;
	HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&EDX$1 );
	if( EDXINDEST$1 == 0 ) goto label$851;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$853;
		{
			HPOP( (uint8*)"edx" );
		}
		label$853:;
		label$852:;
	}
	goto label$850;
	label$851:;
	if( EDXFREE$1 != 0 ) goto label$854;
	{
		HPOP( (uint8*)"edx" );
	}
	label$854:;
	label$850:;
	if( EAXINDEST$1 != 0 ) goto label$856;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0 ) goto label$858;
		{
			if( *(int32*)DVREG$1 == 4 ) goto label$860;
			{
				if( EAXFREE$1 != 0 ) goto label$862;
				{
					HPOP( (uint8*)"ecx" );
					OUTP( (uint8*)"xchg ecx, [esp]" );
				}
				goto label$861;
				label$862:;
				{
					HPOP( (uint8*)"ecx" );
				}
				label$861:;
			}
			label$860:;
			label$859:;
		}
		label$858:;
		label$857:;
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&EAX$1 );
		if( EAXFREE$1 != 0 ) goto label$864;
		{
			HPOP( (uint8*)"eax" );
		}
		label$864:;
		label$863:;
	}
	goto label$855;
	label$856:;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$866;
		{
			if( (-(ECXFREE$1 == 0) & -(ECXTRASHED$1 == 0)) == 0 ) goto label$868;
			{
				OUTP( (uint8*)"xchg ecx, [esp]" );
				OUTP( (uint8*)"xchg ecx, eax" );
			}
			goto label$867;
			label$868:;
			{
				HMOV( (uint8*)"ecx", (uint8*)"eax" );
				HPOP( (uint8*)"eax" );
			}
			label$867:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&ECX$1 );
			if( (-(ECXFREE$1 == 0) & -(ECXTRASHED$1 == 0)) == 0 ) goto label$870;
			{
				HPOP( (uint8*)"ecx" );
			}
			label$870:;
			label$869:;
		}
		label$866:;
		label$865:;
	}
	label$855:;
	if( ECXTRASHED$1 == 0 ) goto label$872;
	{
		if( (-(ECXFREE$1 == 0) & -(ECXINDEST$1 == 0)) == 0 ) goto label$874;
		{
			HPOP( (uint8*)"ecx" );
		}
		label$874:;
		label$873:;
	}
	label$872:;
	label$871:;
	label$818:;
}

static void HSHIFTL( int32 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$875:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC$1;
	static FBSTRING LABEL$1;
	static FBSTRING MNEMONIC32$1;
	static FBSTRING MNEMONIC64$1;
	static int32 TMPREG$1;
	static int32 TMPISFREE$1;
	static FBSTRING TMPREGNAME$1;
	static FBSTRING A$1;
	static FBSTRING B$1;
	static struct $6IRVREG* AV$1;
	static struct $6IRVREG* BV$1;
	if( OP$1 != 41 ) goto label$878;
	{
		fb_StrAssign( (void*)&MNEMONIC32$1, -1, (void*)"shl ", 5, 0 );
		fb_StrAssign( (void*)&MNEMONIC64$1, -1, (void*)"shld ", 6, 0 );
	}
	goto label$877;
	label$878:;
	{
		int32 TMP$481$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$879;
		TMP$481$2 = 24;
		goto label$1864;
		label$879:;
		TMP$481$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$1864:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$481$2 * 28)) + 8) == 0 ) goto label$881;
		{
			fb_StrAssign( (void*)&MNEMONIC32$1, -1, (void*)"sar ", 5, 0 );
		}
		goto label$880;
		label$881:;
		{
			fb_StrAssign( (void*)&MNEMONIC32$1, -1, (void*)"shr ", 5, 0 );
		}
		label$880:;
		fb_StrAssign( (void*)&MNEMONIC64$1, -1, (void*)"shrd ", 6, 0 );
	}
	label$877:;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND( SVREG$1, &SRC$1, 8, 0, 0, -1 );
	if( OP$1 != 41 ) goto label$883;
	{
		fb_StrAssign( (void*)&A$1, -1, (void*)&DST2$1, -1, 0 );
		AV$1 = *(struct $6IRVREG**)((uint8*)DVREG$1 + 56);
		fb_StrAssign( (void*)&B$1, -1, (void*)&DST1$1, -1, 0 );
		BV$1 = DVREG$1;
	}
	goto label$882;
	label$883:;
	{
		fb_StrAssign( (void*)&A$1, -1, (void*)&DST1$1, -1, 0 );
		AV$1 = DVREG$1;
		fb_StrAssign( (void*)&B$1, -1, (void*)&DST2$1, -1, 0 );
		BV$1 = *(struct $6IRVREG**)((uint8*)DVREG$1 + 56);
	}
	label$882:;
	if( *(int32*)SVREG$1 != 0 ) goto label$885;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) < 64ll ) goto label$887;
		{
			if( *(int32*)BV$1 != 4 ) goto label$889;
			{
				FBSTRING TMP$484$4;
				FBSTRING TMP$485$4;
				FBSTRING TMP$486$4;
				FBSTRING TMP$487$4;
				__builtin_memset( &TMP$487$4, 0, 12 );
				__builtin_memset( &TMP$484$4, 0, 12 );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$484$4, (void*)"xor ", 5, (void*)&B$1, -1 );
				__builtin_memset( &TMP$485$4, 0, 12 );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$485$4, (void*)vr$13, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$486$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$486$4, (void*)vr$16, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$487$4, -1, (void*)vr$19, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$487$4 );
				fb_StrDelete( (FBSTRING*)&TMP$487$4 );
			}
			goto label$888;
			label$889:;
			{
				FBSTRING TMP$488$4;
				FBSTRING TMP$489$4;
				FBSTRING TMP$490$4;
				__builtin_memset( &TMP$490$4, 0, 12 );
				__builtin_memset( &TMP$488$4, 0, 12 );
				FBSTRING* vr$25 = fb_StrConcat( &TMP$488$4, (void*)"mov ", 5, (void*)&B$1, -1 );
				__builtin_memset( &TMP$489$4, 0, 12 );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$489$4, (void*)vr$25, -1, (void*)", 0", 4 );
				fb_StrAssign( (void*)&TMP$490$4, -1, (void*)vr$28, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$490$4 );
				fb_StrDelete( (FBSTRING*)&TMP$490$4 );
			}
			label$888:;
			if( *(int32*)AV$1 != 4 ) goto label$891;
			{
				FBSTRING TMP$491$4;
				FBSTRING TMP$492$4;
				FBSTRING TMP$493$4;
				FBSTRING TMP$494$4;
				__builtin_memset( &TMP$494$4, 0, 12 );
				__builtin_memset( &TMP$491$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$491$4, (void*)"xor ", 5, (void*)&A$1, -1 );
				__builtin_memset( &TMP$492$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$492$4, (void*)vr$35, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$493$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$493$4, (void*)vr$38, -1, (void*)&A$1, -1 );
				fb_StrAssign( (void*)&TMP$494$4, -1, (void*)vr$41, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$494$4 );
				fb_StrDelete( (FBSTRING*)&TMP$494$4 );
			}
			goto label$890;
			label$891:;
			{
				FBSTRING TMP$495$4;
				FBSTRING TMP$496$4;
				FBSTRING TMP$497$4;
				__builtin_memset( &TMP$497$4, 0, 12 );
				__builtin_memset( &TMP$495$4, 0, 12 );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$495$4, (void*)"mov ", 5, (void*)&A$1, -1 );
				__builtin_memset( &TMP$496$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$496$4, (void*)vr$47, -1, (void*)", 0", 4 );
				fb_StrAssign( (void*)&TMP$497$4, -1, (void*)vr$50, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$497$4 );
				fb_StrDelete( (FBSTRING*)&TMP$497$4 );
			}
			label$890:;
		}
		goto label$886;
		label$887:;
		if( *(int64*)((uint8*)SVREG$1 + 24) < 32ll ) goto label$892;
		{
			int32 TMP$510$3;
			TMPISFREE$1 = -1;
			if( (-(*(int32*)BV$1 == 4) | -(*(int32*)AV$1 == 4)) == 0 ) goto label$894;
			{
				FBSTRING TMP$498$4;
				FBSTRING TMP$499$4;
				FBSTRING TMP$500$4;
				FBSTRING TMP$501$4;
				__builtin_memset( &TMP$501$4, 0, 12 );
				__builtin_memset( &TMP$498$4, 0, 12 );
				FBSTRING* vr$62 = fb_StrConcat( &TMP$498$4, (void*)"mov ", 5, (void*)&A$1, -1 );
				__builtin_memset( &TMP$499$4, 0, 12 );
				FBSTRING* vr$65 = fb_StrConcat( &TMP$499$4, (void*)vr$62, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$500$4, 0, 12 );
				FBSTRING* vr$68 = fb_StrConcat( &TMP$500$4, (void*)vr$65, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$501$4, -1, (void*)vr$68, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$501$4 );
				fb_StrDelete( (FBSTRING*)&TMP$501$4 );
			}
			goto label$893;
			label$894:;
			{
				FBSTRING TMP$502$4;
				FBSTRING TMP$503$4;
				FBSTRING TMP$504$4;
				FBSTRING TMP$505$4;
				FBSTRING TMP$506$4;
				FBSTRING TMP$507$4;
				FBSTRING TMP$508$4;
				FBSTRING TMP$509$4;
				int32 vr$71 = HFINDFREEREG( 0 );
				TMPREG$1 = vr$71;
				if( TMPREG$1 != -1 ) goto label$896;
				{
					int32 vr$72 = HFINDREGNOTINVREG( DVREG$1, 0 );
					TMPREG$1 = vr$72;
					TMPISFREE$1 = 0;
				}
				label$896:;
				label$895:;
				uint8* vr$73 = HGETREGNAME( 8, TMPREG$1 );
				fb_StrAssign( (void*)&TMPREGNAME$1, -1, (void*)vr$73, 0, 0 );
				if( TMPISFREE$1 != 0 ) goto label$898;
				{
					HPUSH( (uint8*)*(uint8**)&TMPREGNAME$1 );
				}
				label$898:;
				label$897:;
				__builtin_memset( &TMP$505$4, 0, 12 );
				__builtin_memset( &TMP$502$4, 0, 12 );
				FBSTRING* vr$77 = fb_StrConcat( &TMP$502$4, (void*)"mov ", 5, (void*)&TMPREGNAME$1, -1 );
				__builtin_memset( &TMP$503$4, 0, 12 );
				FBSTRING* vr$80 = fb_StrConcat( &TMP$503$4, (void*)vr$77, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$504$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$504$4, (void*)vr$80, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$505$4, -1, (void*)vr$83, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$505$4 );
				fb_StrDelete( (FBSTRING*)&TMP$505$4 );
				__builtin_memset( &TMP$509$4, 0, 12 );
				__builtin_memset( &TMP$506$4, 0, 12 );
				FBSTRING* vr$89 = fb_StrConcat( &TMP$506$4, (void*)"mov ", 5, (void*)&A$1, -1 );
				__builtin_memset( &TMP$507$4, 0, 12 );
				FBSTRING* vr$92 = fb_StrConcat( &TMP$507$4, (void*)vr$89, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$508$4, 0, 12 );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$508$4, (void*)vr$92, -1, (void*)&TMPREGNAME$1, -1 );
				fb_StrAssign( (void*)&TMP$509$4, -1, (void*)vr$95, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$509$4 );
				fb_StrDelete( (FBSTRING*)&TMP$509$4 );
			}
			label$893:;
			if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$899;
			TMP$510$3 = 24;
			goto label$1865;
			label$899:;
			TMP$510$3 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
			label$1865:;
			if( (-(OP$1 == 42) & *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$510$3 * 28)) + 8)) == 0 ) goto label$901;
			{
				FBSTRING TMP$511$4;
				FBSTRING TMP$512$4;
				FBSTRING TMP$513$4;
				__builtin_memset( &TMP$513$4, 0, 12 );
				__builtin_memset( &TMP$511$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$511$4, (void*)"sar ", 5, (void*)&B$1, -1 );
				__builtin_memset( &TMP$512$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$512$4, (void*)vr$108, -1, (void*)", 31", 5 );
				fb_StrAssign( (void*)&TMP$513$4, -1, (void*)vr$111, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$513$4 );
				fb_StrDelete( (FBSTRING*)&TMP$513$4 );
			}
			goto label$900;
			label$901:;
			if( *(int32*)BV$1 != 4 ) goto label$902;
			{
				FBSTRING TMP$514$4;
				FBSTRING TMP$515$4;
				FBSTRING TMP$516$4;
				FBSTRING TMP$517$4;
				__builtin_memset( &TMP$517$4, 0, 12 );
				__builtin_memset( &TMP$514$4, 0, 12 );
				FBSTRING* vr$118 = fb_StrConcat( &TMP$514$4, (void*)"xor ", 5, (void*)&B$1, -1 );
				__builtin_memset( &TMP$515$4, 0, 12 );
				FBSTRING* vr$121 = fb_StrConcat( &TMP$515$4, (void*)vr$118, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$516$4, 0, 12 );
				FBSTRING* vr$124 = fb_StrConcat( &TMP$516$4, (void*)vr$121, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$517$4, -1, (void*)vr$124, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$517$4 );
				fb_StrDelete( (FBSTRING*)&TMP$517$4 );
			}
			goto label$900;
			label$902:;
			{
				FBSTRING TMP$518$4;
				FBSTRING TMP$519$4;
				FBSTRING TMP$520$4;
				__builtin_memset( &TMP$520$4, 0, 12 );
				__builtin_memset( &TMP$518$4, 0, 12 );
				FBSTRING* vr$130 = fb_StrConcat( &TMP$518$4, (void*)"mov ", 5, (void*)&B$1, -1 );
				__builtin_memset( &TMP$519$4, 0, 12 );
				FBSTRING* vr$133 = fb_StrConcat( &TMP$519$4, (void*)vr$130, -1, (void*)", 0", 4 );
				fb_StrAssign( (void*)&TMP$520$4, -1, (void*)vr$133, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$520$4 );
				fb_StrDelete( (FBSTRING*)&TMP$520$4 );
			}
			label$900:;
			if( *(int64*)((uint8*)SVREG$1 + 24) <= 32ll ) goto label$904;
			{
				FBSTRING TMP$521$4;
				FBSTRING TMP$522$4;
				FBSTRING TMP$523$4;
				FBSTRING TMP$524$4;
				FBSTRING* vr$139 = fb_LongintToStr( *(int64*)((uint8*)SVREG$1 + 24) + -32ll );
				fb_StrAssign( (void*)&SRC$1, -1, (void*)vr$139, -1, 0 );
				__builtin_memset( &TMP$524$4, 0, 12 );
				__builtin_memset( &TMP$521$4, 0, 12 );
				FBSTRING* vr$143 = fb_StrConcat( &TMP$521$4, (void*)&MNEMONIC32$1, -1, (void*)&A$1, -1 );
				__builtin_memset( &TMP$522$4, 0, 12 );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$522$4, (void*)vr$143, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$523$4, 0, 12 );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$523$4, (void*)vr$146, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$524$4, -1, (void*)vr$149, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$524$4 );
				fb_StrDelete( (FBSTRING*)&TMP$524$4 );
			}
			label$904:;
			label$903:;
			if( TMPISFREE$1 != 0 ) goto label$906;
			{
				HPOP( (uint8*)*(uint8**)&TMPREGNAME$1 );
			}
			label$906:;
			label$905:;
		}
		goto label$886;
		label$892:;
		{
			if( *(int32*)BV$1 != 4 ) goto label$908;
			{
				FBSTRING TMP$525$4;
				FBSTRING TMP$526$4;
				FBSTRING TMP$527$4;
				FBSTRING TMP$528$4;
				FBSTRING TMP$529$4;
				FBSTRING TMP$530$4;
				FBSTRING TMP$531$4;
				FBSTRING TMP$532$4;
				FBSTRING TMP$533$4;
				FBSTRING TMP$534$4;
				__builtin_memset( &TMP$530$4, 0, 12 );
				__builtin_memset( &TMP$525$4, 0, 12 );
				FBSTRING* vr$156 = fb_StrConcat( &TMP$525$4, (void*)&MNEMONIC64$1, -1, (void*)&A$1, -1 );
				__builtin_memset( &TMP$526$4, 0, 12 );
				FBSTRING* vr$159 = fb_StrConcat( &TMP$526$4, (void*)vr$156, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$527$4, 0, 12 );
				FBSTRING* vr$162 = fb_StrConcat( &TMP$527$4, (void*)vr$159, -1, (void*)&B$1, -1 );
				__builtin_memset( &TMP$528$4, 0, 12 );
				FBSTRING* vr$165 = fb_StrConcat( &TMP$528$4, (void*)vr$162, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$529$4, 0, 12 );
				FBSTRING* vr$168 = fb_StrConcat( &TMP$529$4, (void*)vr$165, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$530$4, -1, (void*)vr$168, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$530$4 );
				fb_StrDelete( (FBSTRING*)&TMP$530$4 );
				__builtin_memset( &TMP$534$4, 0, 12 );
				__builtin_memset( &TMP$531$4, 0, 12 );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$531$4, (void*)&MNEMONIC32$1, -1, (void*)&B$1, -1 );
				__builtin_memset( &TMP$532$4, 0, 12 );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$532$4, (void*)vr$174, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$533$4, 0, 12 );
				FBSTRING* vr$180 = fb_StrConcat( &TMP$533$4, (void*)vr$177, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$534$4, -1, (void*)vr$180, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$534$4 );
				fb_StrDelete( (FBSTRING*)&TMP$534$4 );
			}
			goto label$907;
			label$908:;
			if( *(int32*)AV$1 != 4 ) goto label$909;
			{
				FBSTRING TMP$535$4;
				FBSTRING TMP$536$4;
				FBSTRING TMP$537$4;
				FBSTRING TMP$538$4;
				FBSTRING TMP$539$4;
				FBSTRING TMP$540$4;
				FBSTRING TMP$541$4;
				FBSTRING TMP$542$4;
				FBSTRING TMP$543$4;
				FBSTRING TMP$544$4;
				FBSTRING TMP$545$4;
				FBSTRING TMP$546$4;
				FBSTRING TMP$547$4;
				FBSTRING TMP$548$4;
				FBSTRING TMP$549$4;
				FBSTRING TMP$550$4;
				FBSTRING TMP$551$4;
				FBSTRING TMP$552$4;
				__builtin_memset( &TMP$538$4, 0, 12 );
				__builtin_memset( &TMP$535$4, 0, 12 );
				FBSTRING* vr$187 = fb_StrConcat( &TMP$535$4, (void*)"xchg ", 6, (void*)&A$1, -1 );
				__builtin_memset( &TMP$536$4, 0, 12 );
				FBSTRING* vr$190 = fb_StrConcat( &TMP$536$4, (void*)vr$187, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$537$4, 0, 12 );
				FBSTRING* vr$193 = fb_StrConcat( &TMP$537$4, (void*)vr$190, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$538$4, -1, (void*)vr$193, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$538$4 );
				fb_StrDelete( (FBSTRING*)&TMP$538$4 );
				__builtin_memset( &TMP$544$4, 0, 12 );
				__builtin_memset( &TMP$539$4, 0, 12 );
				FBSTRING* vr$199 = fb_StrConcat( &TMP$539$4, (void*)&MNEMONIC64$1, -1, (void*)&B$1, -1 );
				__builtin_memset( &TMP$540$4, 0, 12 );
				FBSTRING* vr$202 = fb_StrConcat( &TMP$540$4, (void*)vr$199, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$541$4, 0, 12 );
				FBSTRING* vr$205 = fb_StrConcat( &TMP$541$4, (void*)vr$202, -1, (void*)&A$1, -1 );
				__builtin_memset( &TMP$542$4, 0, 12 );
				FBSTRING* vr$208 = fb_StrConcat( &TMP$542$4, (void*)vr$205, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$543$4, 0, 12 );
				FBSTRING* vr$211 = fb_StrConcat( &TMP$543$4, (void*)vr$208, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$544$4, -1, (void*)vr$211, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$544$4 );
				fb_StrDelete( (FBSTRING*)&TMP$544$4 );
				__builtin_memset( &TMP$548$4, 0, 12 );
				__builtin_memset( &TMP$545$4, 0, 12 );
				FBSTRING* vr$217 = fb_StrConcat( &TMP$545$4, (void*)&MNEMONIC32$1, -1, (void*)&A$1, -1 );
				__builtin_memset( &TMP$546$4, 0, 12 );
				FBSTRING* vr$220 = fb_StrConcat( &TMP$546$4, (void*)vr$217, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$547$4, 0, 12 );
				FBSTRING* vr$223 = fb_StrConcat( &TMP$547$4, (void*)vr$220, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$548$4, -1, (void*)vr$223, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$548$4 );
				fb_StrDelete( (FBSTRING*)&TMP$548$4 );
				__builtin_memset( &TMP$552$4, 0, 12 );
				__builtin_memset( &TMP$549$4, 0, 12 );
				FBSTRING* vr$229 = fb_StrConcat( &TMP$549$4, (void*)"xchg ", 6, (void*)&A$1, -1 );
				__builtin_memset( &TMP$550$4, 0, 12 );
				FBSTRING* vr$232 = fb_StrConcat( &TMP$550$4, (void*)vr$229, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$551$4, 0, 12 );
				FBSTRING* vr$235 = fb_StrConcat( &TMP$551$4, (void*)vr$232, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$552$4, -1, (void*)vr$235, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$552$4 );
				fb_StrDelete( (FBSTRING*)&TMP$552$4 );
			}
			goto label$907;
			label$909:;
			{
				FBSTRING TMP$553$4;
				FBSTRING TMP$554$4;
				FBSTRING TMP$555$4;
				FBSTRING TMP$556$4;
				FBSTRING TMP$557$4;
				FBSTRING TMP$558$4;
				FBSTRING TMP$559$4;
				FBSTRING TMP$560$4;
				FBSTRING TMP$561$4;
				FBSTRING TMP$562$4;
				FBSTRING TMP$563$4;
				FBSTRING TMP$564$4;
				FBSTRING TMP$565$4;
				FBSTRING TMP$566$4;
				FBSTRING TMP$567$4;
				FBSTRING TMP$568$4;
				FBSTRING TMP$569$4;
				FBSTRING TMP$570$4;
				int32 vr$238 = HFINDFREEREG( 0 );
				TMPREG$1 = vr$238;
				if( TMPREG$1 != -1 ) goto label$911;
				{
					int32 vr$239 = HFINDREGNOTINVREG( DVREG$1, 0 );
					TMPREG$1 = vr$239;
					TMPISFREE$1 = 0;
				}
				goto label$910;
				label$911:;
				{
					TMPISFREE$1 = -1;
				}
				label$910:;
				uint8* vr$240 = HGETREGNAME( 8, TMPREG$1 );
				fb_StrAssign( (void*)&TMPREGNAME$1, -1, (void*)vr$240, 0, 0 );
				if( TMPISFREE$1 != 0 ) goto label$913;
				{
					HPUSH( (uint8*)*(uint8**)&TMPREGNAME$1 );
				}
				label$913:;
				label$912:;
				__builtin_memset( &TMP$556$4, 0, 12 );
				__builtin_memset( &TMP$553$4, 0, 12 );
				FBSTRING* vr$244 = fb_StrConcat( &TMP$553$4, (void*)"mov ", 5, (void*)&TMPREGNAME$1, -1 );
				__builtin_memset( &TMP$554$4, 0, 12 );
				FBSTRING* vr$247 = fb_StrConcat( &TMP$554$4, (void*)vr$244, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$555$4, 0, 12 );
				FBSTRING* vr$250 = fb_StrConcat( &TMP$555$4, (void*)vr$247, -1, (void*)&B$1, -1 );
				fb_StrAssign( (void*)&TMP$556$4, -1, (void*)vr$250, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$556$4 );
				fb_StrDelete( (FBSTRING*)&TMP$556$4 );
				__builtin_memset( &TMP$562$4, 0, 12 );
				__builtin_memset( &TMP$557$4, 0, 12 );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$557$4, (void*)&MNEMONIC64$1, -1, (void*)&A$1, -1 );
				__builtin_memset( &TMP$558$4, 0, 12 );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$558$4, (void*)vr$256, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$559$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$559$4, (void*)vr$259, -1, (void*)&TMPREGNAME$1, -1 );
				__builtin_memset( &TMP$560$4, 0, 12 );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$560$4, (void*)vr$262, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$561$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$561$4, (void*)vr$265, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$562$4, -1, (void*)vr$268, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$562$4 );
				fb_StrDelete( (FBSTRING*)&TMP$562$4 );
				__builtin_memset( &TMP$566$4, 0, 12 );
				__builtin_memset( &TMP$563$4, 0, 12 );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$563$4, (void*)&MNEMONIC32$1, -1, (void*)&TMPREGNAME$1, -1 );
				__builtin_memset( &TMP$564$4, 0, 12 );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$564$4, (void*)vr$274, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$565$4, 0, 12 );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$565$4, (void*)vr$277, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$566$4, -1, (void*)vr$280, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$566$4 );
				fb_StrDelete( (FBSTRING*)&TMP$566$4 );
				__builtin_memset( &TMP$570$4, 0, 12 );
				__builtin_memset( &TMP$567$4, 0, 12 );
				FBSTRING* vr$286 = fb_StrConcat( &TMP$567$4, (void*)"mov ", 5, (void*)&B$1, -1 );
				__builtin_memset( &TMP$568$4, 0, 12 );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$568$4, (void*)vr$286, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$569$4, 0, 12 );
				FBSTRING* vr$292 = fb_StrConcat( &TMP$569$4, (void*)vr$289, -1, (void*)&TMPREGNAME$1, -1 );
				fb_StrAssign( (void*)&TMP$570$4, -1, (void*)vr$292, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$570$4 );
				fb_StrDelete( (FBSTRING*)&TMP$570$4 );
				if( TMPISFREE$1 != 0 ) goto label$915;
				{
					HPOP( (uint8*)"eax" );
				}
				label$915:;
				label$914:;
			}
			label$907:;
		}
		label$886:;
	}
	goto label$884;
	label$885:;
	{
		static int32 ISEAXFREE$2;
		static int32 ISEDXFREE$2;
		static int32 ISECXFREE$2;
		static int32 EAXINDEST$2;
		static int32 EDXINDEST$2;
		static int32 ECXINDEST$2;
		static int32 OFS$2;
		uint8* vr$295 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LABEL$1, -1, (void*)vr$295, 0, 0 );
		HPUSH( (uint8*)*(uint8**)&DST2$1 );
		HPUSH( (uint8*)*(uint8**)&DST1$1 );
		OFS$2 = 0;
		int32 vr$296 = HISREGFREE( 0, 5 );
		ISEAXFREE$2 = vr$296;
		int32 vr$297 = HISREGFREE( 0, 0 );
		ISEDXFREE$2 = vr$297;
		int32 vr$298 = HISREGFREE( 0, 3 );
		ISECXFREE$2 = vr$298;
		int32 vr$299 = HISREGINVREG( DVREG$1, 5 );
		EAXINDEST$2 = vr$299;
		int32 vr$300 = HISREGINVREG( DVREG$1, 0 );
		EDXINDEST$2 = vr$300;
		int32 vr$301 = HISREGINVREG( DVREG$1, 3 );
		ECXINDEST$2 = vr$301;
		if( (-(*(int32*)SVREG$1 != 4) | -(*(int32*)((uint8*)SVREG$1 + 12) != 3)) == 0 ) goto label$917;
		{
			int32 TMP$571$3;
			if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$918;
			TMP$571$3 = 24;
			goto label$1866;
			label$918:;
			TMP$571$3 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
			label$1866:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$571$3 * 28)) + 4) == 4 ) goto label$920;
			{
				if( *(int32*)SVREG$1 != 4 ) goto label$922;
				{
					uint8* vr$314 = HGETREGNAME( 8, *(int32*)((uint8*)SVREG$1 + 12) );
					fb_StrAssign( (void*)&SRC$1, -1, (void*)vr$314, 0, 0 );
				}
				label$922:;
				label$921:;
			}
			label$920:;
			label$919:;
			if( ISECXFREE$2 != 0 ) goto label$924;
			{
				if( (ECXINDEST$2 & -(*(int32*)DVREG$1 == 4)) == 0 ) goto label$926;
				{
					HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&SRC$1 );
					ISECXFREE$2 = -1;
				}
				goto label$925;
				label$926:;
				{
					HPUSH( (uint8*)*(uint8**)&SRC$1 );
					OUTP( (uint8*)"xchg ecx, [esp]" );
					OFS$2 = OFS$2 + 4;
				}
				label$925:;
			}
			goto label$923;
			label$924:;
			{
				HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&SRC$1 );
			}
			label$923:;
		}
		goto label$916;
		label$917:;
		{
			ISECXFREE$2 = -1;
		}
		label$916:;
		if( EAXINDEST$2 == 0 ) goto label$928;
		{
			if( *(int32*)DVREG$1 == 4 ) goto label$930;
			{
				FBSTRING TMP$572$4;
				FBSTRING TMP$573$4;
				FBSTRING TMP$574$4;
				__builtin_memset( &TMP$574$4, 0, 12 );
				FBSTRING* vr$321 = fb_IntToStr( OFS$2 );
				__builtin_memset( &TMP$572$4, 0, 12 );
				FBSTRING* vr$324 = fb_StrConcat( &TMP$572$4, (void*)"xchg eax, [esp+", 16, (void*)vr$321, -1 );
				__builtin_memset( &TMP$573$4, 0, 12 );
				FBSTRING* vr$327 = fb_StrConcat( &TMP$573$4, (void*)vr$324, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$574$4, -1, (void*)vr$327, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$574$4 );
				fb_StrDelete( (FBSTRING*)&TMP$574$4 );
			}
			goto label$929;
			label$930:;
			{
				FBSTRING TMP$575$4;
				FBSTRING TMP$576$4;
				FBSTRING TMP$577$4;
				__builtin_memset( &TMP$577$4, 0, 12 );
				FBSTRING* vr$331 = fb_IntToStr( OFS$2 );
				__builtin_memset( &TMP$575$4, 0, 12 );
				FBSTRING* vr$334 = fb_StrConcat( &TMP$575$4, (void*)"mov eax, [esp+", 15, (void*)vr$331, -1 );
				__builtin_memset( &TMP$576$4, 0, 12 );
				FBSTRING* vr$337 = fb_StrConcat( &TMP$576$4, (void*)vr$334, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$577$4, -1, (void*)vr$337, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$577$4 );
				fb_StrDelete( (FBSTRING*)&TMP$577$4 );
			}
			label$929:;
		}
		goto label$927;
		label$928:;
		{
			if( ISEAXFREE$2 != 0 ) goto label$932;
			{
				FBSTRING TMP$578$4;
				FBSTRING TMP$579$4;
				FBSTRING TMP$580$4;
				__builtin_memset( &TMP$580$4, 0, 12 );
				FBSTRING* vr$341 = fb_IntToStr( OFS$2 );
				__builtin_memset( &TMP$578$4, 0, 12 );
				FBSTRING* vr$344 = fb_StrConcat( &TMP$578$4, (void*)"xchg eax, [esp+", 16, (void*)vr$341, -1 );
				__builtin_memset( &TMP$579$4, 0, 12 );
				FBSTRING* vr$347 = fb_StrConcat( &TMP$579$4, (void*)vr$344, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$580$4, -1, (void*)vr$347, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$580$4 );
				fb_StrDelete( (FBSTRING*)&TMP$580$4 );
			}
			goto label$931;
			label$932:;
			{
				FBSTRING TMP$581$4;
				FBSTRING TMP$582$4;
				FBSTRING TMP$583$4;
				__builtin_memset( &TMP$583$4, 0, 12 );
				FBSTRING* vr$351 = fb_IntToStr( OFS$2 );
				__builtin_memset( &TMP$581$4, 0, 12 );
				FBSTRING* vr$354 = fb_StrConcat( &TMP$581$4, (void*)"mov eax, [esp+", 15, (void*)vr$351, -1 );
				__builtin_memset( &TMP$582$4, 0, 12 );
				FBSTRING* vr$357 = fb_StrConcat( &TMP$582$4, (void*)vr$354, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$583$4, -1, (void*)vr$357, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$583$4 );
				fb_StrDelete( (FBSTRING*)&TMP$583$4 );
			}
			label$931:;
		}
		label$927:;
		if( EDXINDEST$2 == 0 ) goto label$934;
		{
			if( *(int32*)DVREG$1 == 4 ) goto label$936;
			{
				FBSTRING TMP$585$4;
				FBSTRING TMP$586$4;
				FBSTRING TMP$587$4;
				__builtin_memset( &TMP$587$4, 0, 12 );
				FBSTRING* vr$363 = fb_IntToStr( OFS$2 + 4 );
				__builtin_memset( &TMP$585$4, 0, 12 );
				FBSTRING* vr$366 = fb_StrConcat( &TMP$585$4, (void*)"xchg edx, [esp+", 16, (void*)vr$363, -1 );
				__builtin_memset( &TMP$586$4, 0, 12 );
				FBSTRING* vr$369 = fb_StrConcat( &TMP$586$4, (void*)vr$366, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$587$4, -1, (void*)vr$369, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$587$4 );
				fb_StrDelete( (FBSTRING*)&TMP$587$4 );
			}
			goto label$935;
			label$936:;
			{
				FBSTRING TMP$588$4;
				FBSTRING TMP$589$4;
				FBSTRING TMP$590$4;
				__builtin_memset( &TMP$590$4, 0, 12 );
				FBSTRING* vr$374 = fb_IntToStr( OFS$2 + 4 );
				__builtin_memset( &TMP$588$4, 0, 12 );
				FBSTRING* vr$377 = fb_StrConcat( &TMP$588$4, (void*)"mov edx, [esp+", 15, (void*)vr$374, -1 );
				__builtin_memset( &TMP$589$4, 0, 12 );
				FBSTRING* vr$380 = fb_StrConcat( &TMP$589$4, (void*)vr$377, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$590$4, -1, (void*)vr$380, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$590$4 );
				fb_StrDelete( (FBSTRING*)&TMP$590$4 );
			}
			label$935:;
		}
		goto label$933;
		label$934:;
		{
			if( ISEDXFREE$2 != 0 ) goto label$938;
			{
				FBSTRING TMP$591$4;
				FBSTRING TMP$592$4;
				FBSTRING TMP$593$4;
				__builtin_memset( &TMP$593$4, 0, 12 );
				FBSTRING* vr$385 = fb_IntToStr( OFS$2 + 4 );
				__builtin_memset( &TMP$591$4, 0, 12 );
				FBSTRING* vr$388 = fb_StrConcat( &TMP$591$4, (void*)"xchg edx, [esp+", 16, (void*)vr$385, -1 );
				__builtin_memset( &TMP$592$4, 0, 12 );
				FBSTRING* vr$391 = fb_StrConcat( &TMP$592$4, (void*)vr$388, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$593$4, -1, (void*)vr$391, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$593$4 );
				fb_StrDelete( (FBSTRING*)&TMP$593$4 );
			}
			goto label$937;
			label$938:;
			{
				FBSTRING TMP$594$4;
				FBSTRING TMP$595$4;
				FBSTRING TMP$596$4;
				__builtin_memset( &TMP$596$4, 0, 12 );
				FBSTRING* vr$396 = fb_IntToStr( OFS$2 + 4 );
				__builtin_memset( &TMP$594$4, 0, 12 );
				FBSTRING* vr$399 = fb_StrConcat( &TMP$594$4, (void*)"mov edx, [esp+", 15, (void*)vr$396, -1 );
				__builtin_memset( &TMP$595$4, 0, 12 );
				FBSTRING* vr$402 = fb_StrConcat( &TMP$595$4, (void*)vr$399, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$596$4, -1, (void*)vr$402, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$596$4 );
				fb_StrDelete( (FBSTRING*)&TMP$596$4 );
			}
			label$937:;
		}
		label$933:;
		if( OP$1 != 41 ) goto label$940;
		{
			FBSTRING TMP$599$3;
			FBSTRING TMP$600$3;
			OUTP( (uint8*)"shld edx, eax, cl" );
			__builtin_memset( &TMP$600$3, 0, 12 );
			__builtin_memset( &TMP$599$3, 0, 12 );
			FBSTRING* vr$408 = fb_StrConcat( &TMP$599$3, (void*)&MNEMONIC32$1, -1, (void*)" eax, cl", 9 );
			fb_StrAssign( (void*)&TMP$600$3, -1, (void*)vr$408, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$600$3 );
			fb_StrDelete( (FBSTRING*)&TMP$600$3 );
		}
		goto label$939;
		label$940:;
		{
			FBSTRING TMP$603$3;
			FBSTRING TMP$604$3;
			OUTP( (uint8*)"shrd eax, edx, cl" );
			__builtin_memset( &TMP$604$3, 0, 12 );
			__builtin_memset( &TMP$603$3, 0, 12 );
			FBSTRING* vr$414 = fb_StrConcat( &TMP$603$3, (void*)&MNEMONIC32$1, -1, (void*)" edx, cl", 9 );
			fb_StrAssign( (void*)&TMP$604$3, -1, (void*)vr$414, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$604$3 );
			fb_StrDelete( (FBSTRING*)&TMP$604$3 );
		}
		label$939:;
		OUTP( (uint8*)"test cl, 32" );
		HBRANCH( (uint8*)"jz", (uint8*)*(uint8**)&LABEL$1 );
		if( OP$1 != 41 ) goto label$942;
		{
			OUTP( (uint8*)"mov edx, eax" );
			OUTP( (uint8*)"xor eax, eax" );
		}
		goto label$941;
		label$942:;
		{
			int32 TMP$608$3;
			OUTP( (uint8*)"mov eax, edx" );
			if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$943;
			TMP$608$3 = 24;
			goto label$1867;
			label$943:;
			TMP$608$3 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
			label$1867:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$608$3 * 28)) + 8) == 0 ) goto label$945;
			{
				OUTP( (uint8*)"sar edx, 31" );
			}
			goto label$944;
			label$945:;
			{
				OUTP( (uint8*)"xor edx, edx" );
			}
			label$944:;
		}
		label$941:;
		HLABEL( (uint8*)*(uint8**)&LABEL$1 );
		if( ISECXFREE$2 != 0 ) goto label$947;
		{
			HPOP( (uint8*)"ecx" );
		}
		label$947:;
		label$946:;
		if( EDXINDEST$2 == 0 ) goto label$949;
		{
			if( *(int32*)DVREG$1 == 4 ) goto label$951;
			{
				OUTP( (uint8*)"xchg edx, [esp+4]" );
			}
			goto label$950;
			label$951:;
			{
				OUTP( (uint8*)"mov [esp+4], edx" );
			}
			label$950:;
		}
		goto label$948;
		label$949:;
		{
			if( ISEDXFREE$2 != 0 ) goto label$953;
			{
				OUTP( (uint8*)"xchg edx, [esp+4]" );
			}
			goto label$952;
			label$953:;
			{
				OUTP( (uint8*)"mov [esp+4], edx" );
			}
			label$952:;
		}
		label$948:;
		if( EAXINDEST$2 == 0 ) goto label$955;
		{
			if( *(int32*)DVREG$1 == 4 ) goto label$957;
			{
				OUTP( (uint8*)"xchg eax, [esp+0]" );
			}
			goto label$956;
			label$957:;
			{
				OUTP( (uint8*)"mov [esp+0], eax" );
			}
			label$956:;
		}
		goto label$954;
		label$955:;
		{
			if( ISEAXFREE$2 != 0 ) goto label$959;
			{
				OUTP( (uint8*)"xchg eax, [esp+0]" );
			}
			goto label$958;
			label$959:;
			{
				OUTP( (uint8*)"mov [esp+0], eax" );
			}
			label$958:;
		}
		label$954:;
		HPOP( (uint8*)*(uint8**)&DST1$1 );
		HPOP( (uint8*)*(uint8**)&DST2$1 );
	}
	label$884:;
	label$876:;
}

static void HSHIFTI( int32 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$615$1;
	label$960:;
	static int32 EAXPRESERVED$1;
	static int32 ECXPRESERVED$1;
	static int32 EAXFREE$1;
	static int32 ECXFREE$1;
	static int32 REG$1;
	static int32 ECXINDEST$1;
	static FBSTRING OSTR$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING TMP$1;
	static FBSTRING MNEMONIC$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$962;
	TMP$615$1 = 24;
	goto label$1868;
	label$962:;
	TMP$615$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1868:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$615$1 * 28)) + 8) == 0 ) goto label$964;
	{
		if( OP$1 != 41 ) goto label$966;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1, (void*)"sal", 4, 0 );
		}
		goto label$965;
		label$966:;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1, (void*)"sar", 4, 0 );
		}
		label$965:;
	}
	goto label$963;
	label$964:;
	{
		if( OP$1 != 41 ) goto label$968;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1, (void*)"shl", 4, 0 );
		}
		goto label$967;
		label$968:;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1, (void*)"shr", 4, 0 );
		}
		label$967:;
	}
	label$963:;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	ECXINDEST$1 = 0;
	EAXPRESERVED$1 = 0;
	ECXPRESERVED$1 = 0;
	if( *(int32*)SVREG$1 != 0 ) goto label$970;
	{
		HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
		fb_StrAssign( (void*)&TMP$1, -1, (void*)&DST$1, -1, 0 );
	}
	goto label$969;
	label$970:;
	{
		int32 vr$6 = HISREGFREE( 0, 5 );
		EAXFREE$1 = vr$6;
		int32 vr$7 = HISREGFREE( 0, 3 );
		ECXFREE$1 = vr$7;
		if( *(int32*)SVREG$1 != 4 ) goto label$972;
		{
			REG$1 = *(int32*)((uint8*)SVREG$1 + 12);
		}
		goto label$971;
		label$972:;
		{
			REG$1 = -1;
		}
		label$971:;
		int32 vr$10 = HISREGINVREG( DVREG$1, 3 );
		ECXINDEST$1 = vr$10;
		if( ECXINDEST$1 == 0 ) goto label$974;
		{
			HPUSH( (uint8*)"ecx" );
			if( *(int32*)DVREG$1 == 4 ) goto label$976;
			{
				HPREPOPERAND( DVREG$1, &OSTR$1, 8, 0, 0, -1 );
				HPUSH( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$976:;
			label$975:;
		}
		goto label$973;
		label$974:;
		if( (-(REG$1 != 3) & -(ECXFREE$1 == 0)) == 0 ) goto label$977;
		{
			ECXPRESERVED$1 = -1;
			HPUSH( (uint8*)"ecx" );
		}
		label$977:;
		label$973:;
		if( *(int32*)SVREG$1 == 4 ) goto label$979;
		{
			HPREPOPERAND( SVREG$1, &OSTR$1, 2, 0, 0, -1 );
			HMOV( (uint8*)"cl", (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$978;
		label$979:;
		{
			if( REG$1 == 3 ) goto label$981;
			{
				HMOV( (uint8*)"ecx", (uint8*)((int32)(uint8*)RNAMETB$ + (((*(int32*)((int32)(struct $12EMITDATATYPE*)DTYPETB$ + 128) << (3 & 31)) + REG$1) << (3 & 31))) );
			}
			label$981:;
			label$980:;
		}
		label$978:;
		if( ECXINDEST$1 == 0 ) goto label$983;
		{
			if( EAXFREE$1 != 0 ) goto label$985;
			{
				EAXPRESERVED$1 = -1;
				OUTP( (uint8*)"xchg eax, [esp]" );
			}
			goto label$984;
			label$985:;
			{
				HPOP( (uint8*)"eax" );
			}
			label$984:;
			fb_StrAssign( (void*)&TMP$1, -1, (void*)(((int32)(uint8*)RNAMETB$ + (*(int32*)((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) << (6 & 31))) + 40), 8, 0 );
		}
		goto label$982;
		label$983:;
		{
			fb_StrAssign( (void*)&TMP$1, -1, (void*)&DST$1, -1, 0 );
		}
		label$982:;
		fb_StrAssign( (void*)&SRC$1, -1, (void*)"cl", 3, 0 );
	}
	label$969:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)&MNEMONIC$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)" ", 2, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&TMP$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( ECXINDEST$1 == 0 ) goto label$987;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$989;
		{
			HPOP( (uint8*)"ecx" );
			if( EAXPRESERVED$1 == 0 ) goto label$991;
			{
				OUTP( (uint8*)"xchg ecx, [esp]" );
			}
			label$991:;
			label$990:;
		}
		label$989:;
		label$988:;
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)(((int32)(uint8*)RNAMETB$ + (*(int32*)((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) << (6 & 31))) + 40) );
	}
	label$987:;
	label$986:;
	if( EAXPRESERVED$1 == 0 ) goto label$993;
	{
		HPOP( (uint8*)"eax" );
	}
	label$993:;
	label$992:;
	if( ECXPRESERVED$1 == 0 ) goto label$995;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$995:;
	label$994:;
	label$961:;
}

static void _EMITSHLL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$996:;
	HSHIFTL( 41, DVREG$1, SVREG$1 );
	label$997:;
}

static void _EMITSHLI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$998:;
	HSHIFTI( 41, DVREG$1, SVREG$1 );
	label$999:;
}

static void _EMITSHRL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1000:;
	HSHIFTL( 42, DVREG$1, SVREG$1 );
	label$1001:;
}

static void _EMITSHRI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1002:;
	HSHIFTI( 42, DVREG$1, SVREG$1 );
	label$1003:;
}

static void _EMITANDL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1004:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"and ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"and ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1005:;
}

static void _EMITANDI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1006:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"and ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1007:;
}

static void _EMITORL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1008:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"or ", 4, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"or ", 4, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1009:;
}

static void _EMITORI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1010:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"or ", 4, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1011:;
}

static void _EMITXORL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1012:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1013:;
}

static void _EMITXORI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1014:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1015:;
}

static void _EMITEQVL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1016:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1017:;
}

static void _EMITEQVI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1018:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( *(int32*)((uint8*)DVREG$1 + 4) != 1 ) goto label$1021;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"1", 2, 0 );
	}
	goto label$1020;
	label$1021:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	}
	label$1020:;
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1019:;
}

static void _EMITIMPL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1022:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"or ", 4, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"or ", 4, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1023:;
}

static void _EMITIMPI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1024:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 4) != 1 ) goto label$1027;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"1", 2, 0 );
	}
	goto label$1026;
	label$1027:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	}
	label$1026:;
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"or ", 4, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1025:;
}

static void _EMITATN2( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1028:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 == 4 ) goto label$1031;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1030;
	label$1031:;
	{
		OUTP( (uint8*)"fxch" );
	}
	label$1030:;
	OUTP( (uint8*)"fpatan" );
	label$1029:;
}

static void _EMITPOW( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1032:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 == 4 ) goto label$1035;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		OUTP( (uint8*)"fxch" );
	}
	label$1035:;
	label$1034:;
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
	label$1033:;
}

static void HCMPL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, uint8* REV_MNEMONIC$1, uint8* USG_MNEMONIC$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 ISINVERSE$1 )
{
	FBSTRING TMP$635$1;
	FBSTRING TMP$637$1;
	label$1036:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING RNAME$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static FBSTRING FALSELABEL$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1039;
	{
		uint8* vr$0 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$0, 0, 0 );
	}
	goto label$1038;
	label$1039:;
	{
		uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$1, 0, 0 );
	}
	label$1038:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"cmp ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	uint8* vr$2 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&FALSELABEL$1, -1, (void*)vr$2, 0, 0 );
	if( RVREG$1 == (struct $6IRVREG*)0u ) goto label$1041;
	{
		HPREPOPERAND( RVREG$1, &RNAME$1, -2147483648u, 0, 0, -1 );
		HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"-1" );
	}
	label$1041:;
	label$1040:;
	__builtin_memset( &TMP$635$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$635$1, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$5, -1, 0 );
	if( ISINVERSE$1 != 0 ) goto label$1043;
	{
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
	}
	goto label$1042;
	label$1043:;
	{
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&FALSELABEL$1 );
	}
	label$1042:;
	int32 vr$6 = fb_StrLen( (void*)REV_MNEMONIC$1, 0 );
	if( vr$6 <= 0 ) goto label$1045;
	{
		FBSTRING TMP$636$2;
		__builtin_memset( &TMP$636$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$636$2, (void*)"j", 2, (void*)REV_MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$9, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&FALSELABEL$1 );
	}
	label$1045:;
	label$1044:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"cmp ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	__builtin_memset( &TMP$637$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$637$1, (void*)"j", 2, (void*)USG_MNEMONIC$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$12, -1, 0 );
	HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
	HLABEL( (uint8*)*(uint8**)&FALSELABEL$1 );
	if( RVREG$1 == (struct $6IRVREG*)0u ) goto label$1047;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$1047:;
	label$1046:;
	label$1037:;
}

static void HCMPI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1048:;
	static FBSTRING RNAME$1;
	static FBSTRING RNAME8$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static int32 ISEDXFREE$1;
	static int32 DOTEST$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1051;
	{
		uint8* vr$0 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$0, 0, 0 );
	}
	goto label$1050;
	label$1051:;
	{
		uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$1, 0, 0 );
	}
	label$1050:;
	DOTEST$1 = 0;
	if( (-(*(int32*)SVREG$1 == 0) & -(*(int32*)DVREG$1 == 4)) == 0 ) goto label$1053;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) != 0ll ) goto label$1055;
		{
			DOTEST$1 = -1;
		}
		label$1055:;
		label$1054:;
	}
	label$1053:;
	label$1052:;
	if( DOTEST$1 == 0 ) goto label$1057;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"test ", 6, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1056;
	label$1057:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"cmp ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$1056:;
	if( RVREG$1 != (struct $6IRVREG*)0u ) goto label$1059;
	{
		FBSTRING TMP$639$2;
		__builtin_memset( &TMP$639$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$639$2, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$10, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		goto label$1049;
	}
	label$1059:;
	label$1058:;
	HPREPOPERAND( RVREG$1, &RNAME$1, -2147483648u, 0, 0, -1 );
	if( (-(*(int32*)((uint8*)&ENV$ + 112) >= 1) & -(*(int32*)RVREG$1 == 4)) == 0 ) goto label$1061;
	{
		uint8* vr$16 = HGETREGNAME( 2, *(int32*)((uint8*)RVREG$1 + 12) );
		fb_StrAssign( (void*)&RNAME8$1, -1, (void*)vr$16, 0, 0 );
		if( (-(*(int32*)((uint8*)RVREG$1 + 12) == 2) | -(*(int32*)((uint8*)RVREG$1 + 12) == 1)) == 0 ) goto label$1063;
		{
			FBSTRING TMP$643$3;
			FBSTRING TMP$644$3;
			int32 vr$22 = HISREGFREE( 0, 0 );
			ISEDXFREE$1 = vr$22;
			if( ISEDXFREE$1 != 0 ) goto label$1065;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg edx, ", 11, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$1065:;
			label$1064:;
			__builtin_memset( &TMP$643$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$643$3, (void*)"set", 4, (void*)MNEMONIC$1, 0 );
			__builtin_memset( &TMP$644$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$644$3, (void*)vr$25, -1, (void*)" dl", 4 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$28, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( ISEDXFREE$1 != 0 ) goto label$1067;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg edx, ", 11, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			goto label$1066;
			label$1067:;
			{
				HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"edx" );
			}
			label$1066:;
		}
		goto label$1062;
		label$1063:;
		{
			FBSTRING TMP$645$3;
			FBSTRING TMP$646$3;
			FBSTRING TMP$647$3;
			__builtin_memset( &TMP$645$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$645$3, (void*)"set", 4, (void*)MNEMONIC$1, 0 );
			__builtin_memset( &TMP$646$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$646$3, (void*)vr$31, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$647$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$647$3, (void*)vr$34, -1, (void*)&RNAME8$1, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$37, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1062:;
		if( *(int32*)((uint8*)RVREG$1 + 4) == 1 ) goto label$1069;
		{
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
		label$1069:;
		label$1068:;
	}
	goto label$1060;
	label$1061:;
	{
		FBSTRING TMP$650$2;
		if( *(int32*)((uint8*)RVREG$1 + 4) != 1 ) goto label$1071;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 1", 4, 0 );
		}
		goto label$1070;
		label$1071:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", -1", 5, 0 );
		}
		label$1070:;
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$650$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$650$2, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$42, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$1060:;
	label$1049:;
}

static void HCMPF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, uint8* MASK$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1072:;
	static FBSTRING RNAME$1;
	static FBSTRING RNAME8$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static int32 ISEAXFREE$1;
	static int32 ISEDXFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1075;
	{
		uint8* vr$0 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$0, 0, 0 );
	}
	goto label$1074;
	label$1075:;
	{
		uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$1, 0, 0 );
	}
	label$1074:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1077;
	{
		if( *(int32*)SVREG$1 != 4 ) goto label$1079;
		{
			OUTP( (uint8*)"fxch" );
			OUTP( (uint8*)"fcomip st, st(1)" );
			OUTP( (uint8*)"fstp st(0)" );
		}
		goto label$1078;
		label$1079:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fld ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"fcomip st, st(1)" );
			OUTP( (uint8*)"fstp st(0)" );
		}
		label$1078:;
	}
	goto label$1076;
	label$1077:;
	{
		if( *(int32*)SVREG$1 != 4 ) goto label$1081;
		{
			OUTP( (uint8*)"fcompp" );
		}
		goto label$1080;
		label$1081:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fcomp ", 7, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1080:;
		int32 vr$4 = HISREGFREE( 0, 5 );
		ISEAXFREE$1 = vr$4;
		if( RVREG$1 == (struct $6IRVREG*)0u ) goto label$1083;
		{
			ISEAXFREE$1 = -(*(int32*)((uint8*)RVREG$1 + 12) == 5);
		}
		label$1083:;
		label$1082:;
		if( ISEAXFREE$1 != 0 ) goto label$1085;
		{
			HPUSH( (uint8*)"eax" );
		}
		label$1085:;
		label$1084:;
		OUTP( (uint8*)"fnstsw ax" );
		int32 vr$7 = fb_StrLen( (void*)MASK$1, 0 );
		if( vr$7 <= 0 ) goto label$1087;
		{
			FBSTRING TMP$656$3;
			__builtin_memset( &TMP$656$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$656$3, (void*)"test ah, ", 10, (void*)MASK$1, 0 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$10, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1086;
		label$1087:;
		{
			OUTP( (uint8*)"sahf" );
		}
		label$1086:;
		if( ISEAXFREE$1 != 0 ) goto label$1089;
		{
			HPOP( (uint8*)"eax" );
		}
		label$1089:;
		label$1088:;
	}
	label$1076:;
	if( RVREG$1 != (struct $6IRVREG*)0u ) goto label$1091;
	{
		FBSTRING TMP$658$2;
		__builtin_memset( &TMP$658$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$658$2, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$13, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		goto label$1073;
	}
	label$1091:;
	label$1090:;
	HPREPOPERAND( RVREG$1, &RNAME$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)&ENV$ + 112) < 1 ) goto label$1093;
	{
		uint8* vr$15 = HGETREGNAME( 2, *(int32*)((uint8*)RVREG$1 + 12) );
		fb_StrAssign( (void*)&RNAME8$1, -1, (void*)vr$15, 0, 0 );
		if( (-(*(int32*)((uint8*)RVREG$1 + 12) == 2) | -(*(int32*)((uint8*)RVREG$1 + 12) == 1)) == 0 ) goto label$1095;
		{
			FBSTRING TMP$660$3;
			FBSTRING TMP$661$3;
			int32 vr$21 = HISREGFREE( 0, 0 );
			ISEDXFREE$1 = vr$21;
			if( ISEDXFREE$1 != 0 ) goto label$1097;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg edx, ", 11, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$1097:;
			label$1096:;
			__builtin_memset( &TMP$660$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$660$3, (void*)"set", 4, (void*)MNEMONIC$1, 0 );
			__builtin_memset( &TMP$661$3, 0, 12 );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$661$3, (void*)vr$24, -1, (void*)"\x09" "dl", 4 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$27, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( ISEDXFREE$1 != 0 ) goto label$1099;
			{
				fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xchg edx, ", 11, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			goto label$1098;
			label$1099:;
			{
				HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"edx" );
			}
			label$1098:;
		}
		goto label$1094;
		label$1095:;
		{
			FBSTRING TMP$662$3;
			FBSTRING TMP$663$3;
			FBSTRING TMP$664$3;
			__builtin_memset( &TMP$662$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$662$3, (void*)"set", 4, (void*)MNEMONIC$1, 0 );
			__builtin_memset( &TMP$663$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$663$3, (void*)vr$30, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$664$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$664$3, (void*)vr$33, -1, (void*)&RNAME8$1, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$36, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1094:;
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
	goto label$1092;
	label$1093:;
	{
		FBSTRING TMP$665$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", -1", 5, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$665$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$665$2, (void*)"j", 2, (void*)MNEMONIC$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$39, -1, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$1092:;
	label$1073:;
}

static void _EMITCGTL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$666$1;
	label$1100:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1102;
	TMP$666$1 = 24;
	goto label$1869;
	label$1102:;
	TMP$666$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1869:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$666$1 * 28)) + 8) == 0 ) goto label$1104;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"g", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"l", 2, 0 );
	}
	goto label$1103;
	label$1104:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"a", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"b", 2, 0 );
	}
	label$1103:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"a", DVREG$1, SVREG$1, 0 );
	label$1101:;
}

static void _EMITCGTI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$671$1;
	label$1105:;
	static FBSTRING JMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1107;
	TMP$671$1 = 24;
	goto label$1870;
	label$1107:;
	TMP$671$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1870:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$671$1 * 28)) + 8) == 0 ) goto label$1109;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"g", 2, 0 );
	}
	goto label$1108;
	label$1109:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"a", 2, 0 );
	}
	label$1108:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1106:;
}

static void _EMITCGTF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1110:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1113;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"b", (uint8*)"", DVREG$1, SVREG$1 );
	}
	goto label$1112;
	label$1113:;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"z", (uint8*)"0b01000001", DVREG$1, SVREG$1 );
	}
	label$1112:;
	label$1111:;
}

static void _EMITCLTL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$674$1;
	label$1114:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1116;
	TMP$674$1 = 24;
	goto label$1871;
	label$1116:;
	TMP$674$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1871:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$674$1 * 28)) + 8) == 0 ) goto label$1118;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"l", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"g", 2, 0 );
	}
	goto label$1117;
	label$1118:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"b", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"a", 2, 0 );
	}
	label$1117:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"b", DVREG$1, SVREG$1, 0 );
	label$1115:;
}

static void _EMITCLTI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$675$1;
	label$1119:;
	static FBSTRING JMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1121;
	TMP$675$1 = 24;
	goto label$1872;
	label$1121:;
	TMP$675$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1872:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$675$1 * 28)) + 8) == 0 ) goto label$1123;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"l", 2, 0 );
	}
	goto label$1122;
	label$1123:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"b", 2, 0 );
	}
	label$1122:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1120:;
}

static void _EMITCLTF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1124:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1127;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"a", (uint8*)"", DVREG$1, SVREG$1 );
	}
	goto label$1126;
	label$1127:;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"0b00000001", DVREG$1, SVREG$1 );
	}
	label$1126:;
	label$1125:;
}

static void _EMITCEQL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1128:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)"ne", (uint8*)"", (uint8*)"e", DVREG$1, SVREG$1, -1 );
	label$1129:;
}

static void _EMITCEQI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1130:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)"e", DVREG$1, SVREG$1 );
	label$1131:;
}

static void _EMITCEQF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1132:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1135;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"z", (uint8*)"", DVREG$1, SVREG$1 );
	}
	goto label$1134;
	label$1135:;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"0b01000000", DVREG$1, SVREG$1 );
	}
	label$1134:;
	label$1133:;
}

static void _EMITCNEL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1136:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)"ne", (uint8*)"", (uint8*)"ne", DVREG$1, SVREG$1, 0 );
	label$1137:;
}

static void _EMITCNEI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1138:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)"ne", DVREG$1, SVREG$1 );
	label$1139:;
}

static void _EMITCNEF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1140:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1143;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"", DVREG$1, SVREG$1 );
	}
	goto label$1142;
	label$1143:;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"z", (uint8*)"0b01000000", DVREG$1, SVREG$1 );
	}
	label$1142:;
	label$1141:;
}

static void _EMITCLEL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$681$1;
	label$1144:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1146;
	TMP$681$1 = 24;
	goto label$1873;
	label$1146:;
	TMP$681$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1873:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$681$1 * 28)) + 8) == 0 ) goto label$1148;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"l", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"g", 2, 0 );
	}
	goto label$1147;
	label$1148:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"b", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"a", 2, 0 );
	}
	label$1147:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"be", DVREG$1, SVREG$1, 0 );
	label$1145:;
}

static void _EMITCLEI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$683$1;
	label$1149:;
	static FBSTRING JMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1151;
	TMP$683$1 = 24;
	goto label$1874;
	label$1151:;
	TMP$683$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1874:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$683$1 * 28)) + 8) == 0 ) goto label$1153;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"le", 3, 0 );
	}
	goto label$1152;
	label$1153:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"be", 3, 0 );
	}
	label$1152:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1150:;
}

static void _EMITCLEF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1154:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1157;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"ae", (uint8*)"", DVREG$1, SVREG$1 );
	}
	goto label$1156;
	label$1157:;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"0b01000001", DVREG$1, SVREG$1 );
	}
	label$1156:;
	label$1155:;
}

static void _EMITCGEL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$686$1;
	label$1158:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1160;
	TMP$686$1 = 24;
	goto label$1875;
	label$1160:;
	TMP$686$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1875:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$686$1 * 28)) + 8) == 0 ) goto label$1162;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"g", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"l", 2, 0 );
	}
	goto label$1161;
	label$1162:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"a", 2, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1, (void*)"b", 2, 0 );
	}
	label$1161:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"ae", DVREG$1, SVREG$1, 0 );
	label$1159:;
}

static void _EMITCGEI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$687$1;
	label$1163:;
	static FBSTRING JMP$1;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1165;
	TMP$687$1 = 24;
	goto label$1876;
	label$1165:;
	TMP$687$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1876:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$687$1 * 28)) + 8) == 0 ) goto label$1167;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"ge", 3, 0 );
	}
	goto label$1166;
	label$1167:;
	{
		fb_StrAssign( (void*)&JMP$1, -1, (void*)"ae", 3, 0 );
	}
	label$1166:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1164:;
}

static void _EMITCGEF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1168:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1171;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"be", (uint8*)"", DVREG$1, SVREG$1 );
	}
	goto label$1170;
	label$1171:;
	{
		HCMPF( RVREG$1, LABEL$1, (uint8*)"ae", (uint8*)"", DVREG$1, SVREG$1 );
	}
	label$1170:;
	label$1169:;
}

static void _EMITNEGL( struct $6IRVREG* DVREG$1 )
{
	label$1172:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"neg ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"adc ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 0", 4, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"neg ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1173:;
}

static void _EMITNEGI( struct $6IRVREG* DVREG$1 )
{
	label$1174:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"neg ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1175:;
}

static void _EMITNEGF( struct $6IRVREG* DVREG$1 )
{
	label$1176:;
	OUTP( (uint8*)"fchs" );
	label$1177:;
}

static void _EMITNOTL( struct $6IRVREG* DVREG$1 )
{
	label$1178:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1179:;
}

static void _EMITNOTI( struct $6IRVREG* DVREG$1 )
{
	label$1180:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)((uint8*)DVREG$1 + 4) != 1 ) goto label$1183;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"1", 2, 0 );
	}
	goto label$1182;
	label$1183:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"not ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	}
	label$1182:;
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1181:;
}

static void _EMITABSL( struct $6IRVREG* DVREG$1 )
{
	label$1184:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static int32 REG$1;
	static int32 ISFREE$1;
	static FBSTRING RNAME$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	int32 vr$0 = HFINDREGNOTINVREG( DVREG$1, 0 );
	REG$1 = vr$0;
	uint8* vr$1 = HGETREGNAME( 8, REG$1 );
	fb_StrAssign( (void*)&RNAME$1, -1, (void*)vr$1, 0, 0 );
	int32 vr$2 = HISREGFREE( 0, REG$1 );
	ISFREE$1 = vr$2;
	if( ISFREE$1 != 0 ) goto label$1187;
	{
		HPUSH( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1187:;
	label$1186:;
	HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)*(uint8**)&DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sar ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", 31", 5, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sub ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sbb ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( ISFREE$1 != 0 ) goto label$1189;
	{
		HPOP( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1189:;
	label$1188:;
	label$1185:;
}

static void _EMITABSI( struct $6IRVREG* DVREG$1 )
{
	int32 TMP$691$1;
	label$1190:;
	static FBSTRING DST$1;
	static int32 REG$1;
	static int32 ISFREE$1;
	static FBSTRING RNAME$1;
	static int32 BITS$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	int32 vr$0 = HFINDREGNOTINVREG( DVREG$1, 0 );
	REG$1 = vr$0;
	uint8* vr$2 = HGETREGNAME( *(int32*)((uint8*)DVREG$1 + 4), REG$1 );
	fb_StrAssign( (void*)&RNAME$1, -1, (void*)vr$2, 0, 0 );
	int32 vr$3 = HISREGFREE( 0, REG$1 );
	ISFREE$1 = vr$3;
	if( ISFREE$1 != 0 ) goto label$1193;
	{
		HPUSH( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1193:;
	label$1192:;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1194;
	TMP$691$1 = 24;
	goto label$1877;
	label$1194:;
	TMP$691$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1877:;
	BITS$1 = (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$691$1 * 28)) + 4) << (3 & 31)) + -1;
	HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)*(uint8**)&DST$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sar ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	FBSTRING* vr$11 = fb_IntToStr( BITS$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$11, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"xor ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sub ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&RNAME$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( ISFREE$1 != 0 ) goto label$1196;
	{
		HPOP( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1196:;
	label$1195:;
	label$1191:;
}

static void _EMITABSF( struct $6IRVREG* DVREG$1 )
{
	label$1197:;
	OUTP( (uint8*)"fabs" );
	label$1198:;
}

static void _EMITSGNL( struct $6IRVREG* DVREG$1 )
{
	FBSTRING TMP$692$1;
	FBSTRING TMP$693$1;
	FBSTRING TMP$694$1;
	FBSTRING TMP$697$1;
	FBSTRING TMP$698$1;
	FBSTRING TMP$699$1;
	label$1199:;
	FBSTRING LOW$1;
	__builtin_memset( &LOW$1, 0, 12 );
	FBSTRING HIGH$1;
	__builtin_memset( &HIGH$1, 0, 12 );
	FBSTRING EXITLABEL$1;
	__builtin_memset( &EXITLABEL$1, 0, 12 );
	FBSTRING TMP32$1;
	__builtin_memset( &TMP32$1, 0, 12 );
	int32 TMPREG$1;
	int32 ISTMPFREE$1;
	HPREPOPERAND64( DVREG$1, &LOW$1, &HIGH$1 );
	uint8* vr$6 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&EXITLABEL$1, -1, (void*)vr$6, 0, 0 );
	int32 vr$8 = HFINDREGNOTINVREG( DVREG$1, 0 );
	TMPREG$1 = vr$8;
	int32 vr$9 = HISREGFREE( 0, TMPREG$1 );
	ISTMPFREE$1 = vr$9;
	uint8* vr$10 = HGETREGNAME( 8, TMPREG$1 );
	fb_StrAssign( (void*)&TMP32$1, -1, (void*)vr$10, 0, 0 );
	if( ISTMPFREE$1 != 0 ) goto label$1202;
	{
		HPUSH( (uint8*)*(uint8**)&TMP32$1 );
	}
	label$1202:;
	label$1201:;
	HMOV( (uint8*)*(uint8**)&TMP32$1, (uint8*)*(uint8**)&LOW$1 );
	__builtin_memset( &TMP$694$1, 0, 12 );
	__builtin_memset( &TMP$692$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$692$1, (void*)"cmp ", 5, (void*)&HIGH$1, -1 );
	__builtin_memset( &TMP$693$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$693$1, (void*)vr$16, -1, (void*)", 0", 4 );
	fb_StrAssign( (void*)&TMP$694$1, -1, (void*)vr$19, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$694$1 );
	fb_StrDelete( (FBSTRING*)&TMP$694$1 );
	HMOV( (uint8*)*(uint8**)&LOW$1, (uint8*)"-1" );
	HMOV( (uint8*)*(uint8**)&HIGH$1, (uint8*)"-1" );
	HBRANCH( (uint8*)"jl", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&LOW$1, (uint8*)"1" );
	HMOV( (uint8*)*(uint8**)&HIGH$1, (uint8*)"0" );
	HBRANCH( (uint8*)"jg", (uint8*)*(uint8**)&EXITLABEL$1 );
	__builtin_memset( &TMP$699$1, 0, 12 );
	__builtin_memset( &TMP$697$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$697$1, (void*)"cmp ", 5, (void*)&TMP32$1, -1 );
	__builtin_memset( &TMP$698$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$698$1, (void*)vr$26, -1, (void*)", 0", 4 );
	fb_StrAssign( (void*)&TMP$699$1, -1, (void*)vr$29, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$699$1 );
	fb_StrDelete( (FBSTRING*)&TMP$699$1 );
	HBRANCH( (uint8*)"jne", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&LOW$1, (uint8*)"0" );
	HLABEL( (uint8*)*(uint8**)&EXITLABEL$1 );
	if( ISTMPFREE$1 != 0 ) goto label$1204;
	{
		HPOP( (uint8*)*(uint8**)&TMP32$1 );
	}
	label$1204:;
	label$1203:;
	fb_StrDelete( (FBSTRING*)&TMP32$1 );
	fb_StrDelete( (FBSTRING*)&EXITLABEL$1 );
	fb_StrDelete( (FBSTRING*)&HIGH$1 );
	fb_StrDelete( (FBSTRING*)&LOW$1 );
	label$1200:;
}

static void _EMITSGNI( struct $6IRVREG* DVREG$1 )
{
	FBSTRING TMP$701$1;
	FBSTRING TMP$702$1;
	FBSTRING TMP$703$1;
	label$1205:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	FBSTRING EXITLABEL$1;
	__builtin_memset( &EXITLABEL$1, 0, 12 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	uint8* vr$3 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&EXITLABEL$1, -1, (void*)vr$3, 0, 0 );
	__builtin_memset( &TMP$703$1, 0, 12 );
	__builtin_memset( &TMP$701$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$701$1, (void*)"cmp ", 5, (void*)&DST$1, -1 );
	__builtin_memset( &TMP$702$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$702$1, (void*)vr$9, -1, (void*)", 0", 4 );
	fb_StrAssign( (void*)&TMP$703$1, -1, (void*)vr$12, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$703$1 );
	fb_StrDelete( (FBSTRING*)&TMP$703$1 );
	HBRANCH( (uint8*)"je", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"1" );
	HBRANCH( (uint8*)"jg", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"-1" );
	HLABEL( (uint8*)*(uint8**)&EXITLABEL$1 );
	fb_StrDelete( (FBSTRING*)&EXITLABEL$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1206:;
}

static void _EMITSGNF( struct $6IRVREG* DVREG$1 )
{
	label$1207:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	FBSTRING LABEL$1;
	__builtin_memset( &LABEL$1, 0, 12 );
	int32 ISEAXFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	uint8* vr$3 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LABEL$1, -1, (void*)vr$3, 0, 0 );
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1210;
	{
		OUTP( (uint8*)"fldz" );
		OUTP( (uint8*)"fxch" );
		OUTP( (uint8*)"fcomip" );
	}
	goto label$1209;
	label$1210:;
	{
		int32 vr$5 = HISREGFREE( 0, 5 );
		ISEAXFREE$1 = vr$5;
		if( ISEAXFREE$1 != 0 ) goto label$1212;
		{
			HPUSH( (uint8*)"eax" );
		}
		label$1212:;
		label$1211:;
		OUTP( (uint8*)"ftst" );
		OUTP( (uint8*)"fnstsw ax" );
		OUTP( (uint8*)"sahf" );
		if( ISEAXFREE$1 != 0 ) goto label$1214;
		{
			HPOP( (uint8*)"eax" );
		}
		label$1214:;
		label$1213:;
	}
	label$1209:;
	HBRANCH( (uint8*)"jz", (uint8*)*(uint8**)&LABEL$1 );
	OUTP( (uint8*)"fstp st(0)" );
	OUTP( (uint8*)"fld1" );
	HBRANCH( (uint8*)"ja", (uint8*)*(uint8**)&LABEL$1 );
	OUTP( (uint8*)"fchs" );
	HLABEL( (uint8*)*(uint8**)&LABEL$1 );
	fb_StrDelete( (FBSTRING*)&LABEL$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1208:;
}

static void _EMITSIN( struct $6IRVREG* DVREG$1 )
{
	label$1215:;
	OUTP( (uint8*)"fsin" );
	label$1216:;
}

static void _EMITASIN( struct $6IRVREG* DVREG$1 )
{
	label$1217:;
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"fmul st(0), st(0)" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubrp" );
	OUTP( (uint8*)"fsqrt" );
	OUTP( (uint8*)"fpatan" );
	label$1218:;
}

static void _EMITCOS( struct $6IRVREG* DVREG$1 )
{
	label$1219:;
	OUTP( (uint8*)"fcos" );
	label$1220:;
}

static void _EMITACOS( struct $6IRVREG* DVREG$1 )
{
	label$1221:;
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"fmul st(0), st(0)" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubrp" );
	OUTP( (uint8*)"fsqrt" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fpatan" );
	label$1222:;
}

static void _EMITTAN( struct $6IRVREG* DVREG$1 )
{
	label$1223:;
	OUTP( (uint8*)"fptan" );
	OUTP( (uint8*)"fstp st(0)" );
	label$1224:;
}

static void _EMITATAN( struct $6IRVREG* DVREG$1 )
{
	label$1225:;
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fpatan" );
	label$1226:;
}

static void _EMITSQRT( struct $6IRVREG* DVREG$1 )
{
	label$1227:;
	OUTP( (uint8*)"fsqrt" );
	label$1228:;
}

static void _EMITLOG( struct $6IRVREG* DVREG$1 )
{
	label$1229:;
	OUTP( (uint8*)"fldln2" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fyl2x" );
	label$1230:;
}

static void _EMITEXP( struct $6IRVREG* DVREG$1 )
{
	label$1231:;
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
	label$1232:;
}

static void HFPUCHANGERC( FBSTRING* REGNAME$1, uint8* MODE$1 )
{
	FBSTRING TMP$729$1;
	FBSTRING TMP$730$1;
	FBSTRING TMP$731$1;
	FBSTRING TMP$732$1;
	FBSTRING TMP$733$1;
	label$1233:;
	OUTP( (uint8*)"sub esp, 4" );
	OUTP( (uint8*)"fnstcw [esp]" );
	HMOV( (uint8*)*(uint8**)REGNAME$1, (uint8*)"[esp]" );
	int32 vr$1 = fb_StrCompare( (void*)MODE$1, 0, (void*)"11", 3 );
	if( vr$1 == 0 ) goto label$1236;
	{
		FBSTRING TMP$724$2;
		FBSTRING TMP$725$2;
		FBSTRING TMP$726$2;
		__builtin_memset( &TMP$726$2, 0, 12 );
		__builtin_memset( &TMP$724$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$724$2, (void*)"and ", 5, (void*)REGNAME$1, -1 );
		__builtin_memset( &TMP$725$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$725$2, (void*)vr$5, -1, (void*)", 0b1111001111111111", 21 );
		fb_StrAssign( (void*)&TMP$726$2, -1, (void*)vr$8, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$726$2 );
		fb_StrDelete( (FBSTRING*)&TMP$726$2 );
	}
	label$1236:;
	label$1235:;
	__builtin_memset( &TMP$733$1, 0, 12 );
	__builtin_memset( &TMP$730$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$730$1, (void*)", 0b0000", 9, (void*)MODE$1, 0 );
	__builtin_memset( &TMP$731$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$731$1, (void*)vr$14, -1, (void*)"0000000000", 11 );
	__builtin_memset( &TMP$729$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$729$1, (void*)"or ", 4, (void*)REGNAME$1, -1 );
	__builtin_memset( &TMP$732$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$732$1, (void*)vr$20, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&TMP$733$1, -1, (void*)vr$23, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$733$1 );
	fb_StrDelete( (FBSTRING*)&TMP$733$1 );
	HPUSH( (uint8*)*(uint8**)REGNAME$1 );
	OUTP( (uint8*)"fldcw [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	label$1234:;
}

static void HEMITFLOATFUNC( int32 FUNC$1 )
{
	label$1237:;
	int32 REG$1;
	int32 ISREGFREE$1;
	FBSTRING REGNAME$1;
	__builtin_memset( &REGNAME$1, 0, 12 );
	int32 vr$1 = HFINDFREEREG( 0 );
	REG$1 = vr$1;
	if( REG$1 != -1 ) goto label$1240;
	{
		REG$1 = 5;
		ISREGFREE$1 = 0;
	}
	goto label$1239;
	label$1240:;
	{
		ISREGFREE$1 = -1;
	}
	label$1239:;
	uint8* vr$2 = HGETREGNAME( 8, REG$1 );
	fb_StrAssign( (void*)&REGNAME$1, -1, (void*)vr$2, 0, 0 );
	if( ISREGFREE$1 != 0 ) goto label$1242;
	{
		HPUSH( (uint8*)*(uint8**)&REGNAME$1 );
	}
	label$1242:;
	label$1241:;
	{
		if( FUNC$1 != 1 ) goto label$1244;
		label$1245:;
		{
			HFPUCHANGERC( &REGNAME$1, (uint8*)"01" );
			OUTP( (uint8*)"frndint" );
		}
		goto label$1243;
		label$1244:;
		if( FUNC$1 != 2 ) goto label$1246;
		label$1247:;
		{
			HFPUCHANGERC( &REGNAME$1, (uint8*)"11" );
			OUTP( (uint8*)"frndint" );
		}
		goto label$1243;
		label$1246:;
		if( FUNC$1 != 3 ) goto label$1248;
		label$1249:;
		{
			HFPUCHANGERC( &REGNAME$1, (uint8*)"11" );
			OUTP( (uint8*)"fld st(0)" );
			OUTP( (uint8*)"frndint" );
			OUTP( (uint8*)"fsubp" );
		}
		label$1248:;
		label$1243:;
	}
	OUTP( (uint8*)"fldcw [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	if( ISREGFREE$1 != 0 ) goto label$1251;
	{
		HPOP( (uint8*)*(uint8**)&REGNAME$1 );
	}
	label$1251:;
	label$1250:;
	fb_StrDelete( (FBSTRING*)&REGNAME$1 );
	label$1238:;
}

static void HEMITFLOAT_INT_686( struct $6IRVREG* DVREG$1 )
{
	label$1252:;
	if( *(int32*)((uint8*)DVREG$1 + 4) != 15 ) goto label$1255;
	{
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fist dword ptr [esp]" );
		OUTP( (uint8*)"fild dword ptr [esp]" );
	}
	goto label$1254;
	label$1255:;
	{
		OUTP( (uint8*)"sub esp, 8" );
		OUTP( (uint8*)"fld st(0)" );
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		OUTP( (uint8*)"fild  qword ptr [esp]" );
	}
	label$1254:;
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubr st(0), st(1)" );
	OUTP( (uint8*)"fxch st(2)" );
	OUTP( (uint8*)"fcomip" );
	OUTP( (uint8*)"fcmovb st(0), st(1)" );
	OUTP( (uint8*)"fstp st(1)" );
	if( *(int32*)((uint8*)DVREG$1 + 4) != 15 ) goto label$1257;
	{
		OUTP( (uint8*)"add esp, 4" );
	}
	goto label$1256;
	label$1257:;
	{
		OUTP( (uint8*)"add esp, 8" );
	}
	label$1256:;
	label$1253:;
}

static void HEMITFLOAT_FIX_686( struct $6IRVREG* DVREG$1 )
{
	label$1258:;
	if( *(int32*)((uint8*)DVREG$1 + 4) != 15 ) goto label$1261;
	{
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fld st(0)" );
		OUTP( (uint8*)"fabs" );
		OUTP( (uint8*)"fist dword ptr [esp]" );
		OUTP( (uint8*)"fild dword ptr [esp]" );
	}
	goto label$1260;
	label$1261:;
	{
		OUTP( (uint8*)"sub esp, 8" );
		OUTP( (uint8*)"fld st(0)" );
		OUTP( (uint8*)"fabs" );
		OUTP( (uint8*)"fld st(0)" );
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		OUTP( (uint8*)"fild  qword ptr [esp]" );
	}
	label$1260:;
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubr st(1)" );
	OUTP( (uint8*)"fxch st(2)" );
	OUTP( (uint8*)"fcomip" );
	OUTP( (uint8*)"fcmovb st(0), st(1)" );
	OUTP( (uint8*)"fstp st(1)" );
	OUTP( (uint8*)"fldz" );
	OUTP( (uint8*)"fcomip st(2)" );
	OUTP( (uint8*)"fst st(1)" );
	OUTP( (uint8*)"fchs" );
	OUTP( (uint8*)"fcmovb st(0), st(1)" );
	OUTP( (uint8*)"fstp st(1)" );
	if( *(int32*)((uint8*)DVREG$1 + 4) != 15 ) goto label$1263;
	{
		OUTP( (uint8*)"add esp, 4" );
	}
	goto label$1262;
	label$1263:;
	{
		OUTP( (uint8*)"add esp, 8" );
	}
	label$1262:;
	label$1259:;
}

static void _EMITFLOOR( struct $6IRVREG* DVREG$1 )
{
	label$1264:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1267;
	{
		HEMITFLOAT_INT_686( DVREG$1 );
	}
	goto label$1266;
	label$1267:;
	{
		HEMITFLOATFUNC( 1 );
	}
	label$1266:;
	label$1265:;
}

static void _EMITFIX( struct $6IRVREG* DVREG$1 )
{
	label$1268:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1271;
	{
		HEMITFLOAT_FIX_686( DVREG$1 );
	}
	goto label$1270;
	label$1271:;
	{
		HEMITFLOATFUNC( 2 );
	}
	label$1270:;
	label$1269:;
}

static void _EMITFRAC( struct $6IRVREG* DVREG$1 )
{
	label$1272:;
	HEMITFLOATFUNC( 3 );
	label$1273:;
}

static void _EMITCONVFD2FS( struct $6IRVREG* DVREG$1 )
{
	label$1274:;
	OUTP( (uint8*)"sub esp, 4" );
	OUTP( (uint8*)"fstp dword ptr [esp]" );
	OUTP( (uint8*)"fld dword ptr [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	label$1275:;
}

static void _EMITXCHGTOS( struct $6IRVREG* SVREG$1 )
{
	label$1276:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"fxch ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1277:;
}

static void _EMITSTACKALIGN( struct $6IRVREG* VREG$1, int32 UNUSED$1 )
{
	label$1278:;
	if( *(int64*)((uint8*)VREG$1 + 24) <= 0ll ) goto label$1281;
	{
		FBSTRING TMP$747$2;
		FBSTRING TMP$748$2;
		__builtin_memset( &TMP$748$2, 0, 12 );
		FBSTRING* vr$3 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 24) );
		__builtin_memset( &TMP$747$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$747$2, (void*)"sub esp, ", 10, (void*)vr$3, -1 );
		fb_StrAssign( (void*)&TMP$748$2, -1, (void*)vr$6, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$748$2 );
		fb_StrDelete( (FBSTRING*)&TMP$748$2 );
	}
	goto label$1280;
	label$1281:;
	{
		FBSTRING TMP$749$2;
		FBSTRING TMP$750$2;
		__builtin_memset( &TMP$750$2, 0, 12 );
		FBSTRING* vr$12 = fb_LongintToStr( -(*(int64*)((uint8*)VREG$1 + 24)) );
		__builtin_memset( &TMP$749$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$749$2, (void*)"add esp, ", 10, (void*)vr$12, -1 );
		fb_StrAssign( (void*)&TMP$750$2, -1, (void*)vr$15, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$750$2 );
		fb_StrDelete( (FBSTRING*)&TMP$750$2 );
	}
	label$1280:;
	label$1279:;
}

static void _EMITPUSHL( struct $6IRVREG* SVREG$1, int32 UNUSED$1 )
{
	label$1282:;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1283:;
}

static void _EMITPUSHI( struct $6IRVREG* SVREG$1, int32 UNUSED$1 )
{
	int32 TMP$751$1;
	label$1284:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	FBSTRING TMP32$1;
	__builtin_memset( &TMP32$1, 0, 12 );
	int32 SDSIZE$1;
	int32 TMPREG$1;
	int32 ISTMPFREE$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$1286;
	TMP$751$1 = 24;
	goto label$1878;
	label$1286:;
	TMP$751$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1878:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$751$1 * 28)) + 4);
	{
		$15IRVREGTYPE_ENUM TMP$752$2;
		TMP$752$2 = *($15IRVREGTYPE_ENUM*)SVREG$1;
		if( TMP$752$2 != 4 ) goto label$1288;
		label$1289:;
		{
			FBSTRING TMP$753$3;
			FBSTRING TMP$754$3;
			if( SDSIZE$1 >= 4 ) goto label$1291;
			{
				uint8* vr$10 = HGETREGNAME( 8, *(int32*)((uint8*)SVREG$1 + 12) );
				fb_StrAssign( (void*)&SRC$1, -1, (void*)vr$10, 0, 0 );
			}
			label$1291:;
			label$1290:;
			__builtin_memset( &TMP$754$3, 0, 12 );
			__builtin_memset( &TMP$753$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$753$3, (void*)"push ", 6, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$754$3, -1, (void*)vr$16, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$754$3 );
			fb_StrDelete( (FBSTRING*)&TMP$754$3 );
		}
		goto label$1287;
		label$1288:;
		if( TMP$752$2 != 0 ) goto label$1292;
		label$1293:;
		{
			FBSTRING TMP$755$3;
			FBSTRING TMP$756$3;
			__builtin_memset( &TMP$756$3, 0, 12 );
			__builtin_memset( &TMP$755$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$755$3, (void*)"push ", 6, (void*)&SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$756$3, -1, (void*)vr$23, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$756$3 );
			fb_StrDelete( (FBSTRING*)&TMP$756$3 );
		}
		goto label$1287;
		label$1292:;
		{
			if( SDSIZE$1 >= 4 ) goto label$1296;
			{
				FBSTRING TMP$757$4;
				FBSTRING TMP$758$4;
				FBSTRING TMP$759$4;
				FBSTRING TMP$760$4;
				FBSTRING TMP$761$4;
				FBSTRING TMP$762$4;
				int32 vr$26 = HFINDREGNOTINVREG( SVREG$1, 0 );
				TMPREG$1 = vr$26;
				int32 vr$27 = HISREGFREE( 0, TMPREG$1 );
				ISTMPFREE$1 = vr$27;
				uint8* vr$28 = HGETREGNAME( 8, TMPREG$1 );
				fb_StrAssign( (void*)&TMP32$1, -1, (void*)vr$28, 0, 0 );
				if( ISTMPFREE$1 != 0 ) goto label$1298;
				{
					HPUSH( (uint8*)*(uint8**)&TMP32$1 );
				}
				label$1298:;
				label$1297:;
				__builtin_memset( &TMP$760$4, 0, 12 );
				__builtin_memset( &TMP$757$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$757$4, (void*)"movzx ", 7, (void*)&TMP32$1, -1 );
				__builtin_memset( &TMP$758$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$758$4, (void*)vr$35, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$759$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$759$4, (void*)vr$38, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$760$4, -1, (void*)vr$41, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$760$4 );
				fb_StrDelete( (FBSTRING*)&TMP$760$4 );
				__builtin_memset( &TMP$762$4, 0, 12 );
				__builtin_memset( &TMP$761$4, 0, 12 );
				FBSTRING* vr$48 = fb_StrConcat( &TMP$761$4, (void*)"push ", 6, (void*)&TMP32$1, -1 );
				fb_StrAssign( (void*)&TMP$762$4, -1, (void*)vr$48, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$762$4 );
				fb_StrDelete( (FBSTRING*)&TMP$762$4 );
				if( ISTMPFREE$1 != 0 ) goto label$1300;
				{
					HPOP( (uint8*)*(uint8**)&TMP32$1 );
				}
				label$1300:;
				label$1299:;
			}
			goto label$1295;
			label$1296:;
			{
				FBSTRING TMP$763$4;
				FBSTRING TMP$764$4;
				__builtin_memset( &TMP$764$4, 0, 12 );
				__builtin_memset( &TMP$763$4, 0, 12 );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$763$4, (void*)"push ", 6, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$764$4, -1, (void*)vr$55, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$764$4 );
				fb_StrDelete( (FBSTRING*)&TMP$764$4 );
			}
			label$1295:;
		}
		label$1294:;
		label$1287:;
	}
	fb_StrDelete( (FBSTRING*)&TMP32$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1285:;
}

static void _EMITPUSHF( struct $6IRVREG* SVREG$1, int32 UNUSED$1 )
{
	int32 TMP$765$1;
	label$1301:;
	static FBSTRING SRC$1;
	static int32 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$1303;
	TMP$765$1 = 24;
	goto label$1879;
	label$1303:;
	TMP$765$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1879:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$765$1 * 28)) + 4);
	if( *(int32*)SVREG$1 == 4 ) goto label$1305;
	{
		if( *(int32*)((uint8*)SVREG$1 + 4) != 15 ) goto label$1307;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"push ", 6, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1306;
		label$1307:;
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
		label$1306:;
	}
	goto label$1304;
	label$1305:;
	{
		FBSTRING TMP$767$2;
		FBSTRING TMP$768$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"sub esp,", 9, 0 );
		FBSTRING* vr$7 = fb_IntToStr( SDSIZE$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$7, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$767$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$767$2, (void*)"fstp ", 6, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)SVREG$1 + 4) << (4 & 31))) + 4), 12 );
		__builtin_memset( &TMP$768$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$768$2, (void*)vr$13, -1, (void*)" [esp]", 7 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$1304:;
	label$1302:;
}

static void _EMITPUSHUDT( struct $6IRVREG* SVREG$1, int32 SDSIZE$1 )
{
	label$1308:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	FBSTRING TMP32$1;
	__builtin_memset( &TMP32$1, 0, 12 );
	FBSTRING TMP16$1;
	__builtin_memset( &TMP16$1, 0, 12 );
	int32 OFS$1;
	int32 TMPREG$1;
	int32 ISTMPFREE$1;
	int32 REMAINDER$1;
	REMAINDER$1 = SDSIZE$1 & 3;
	if( REMAINDER$1 <= 0 ) goto label$1311;
	{
		FBSTRING TMP$789$2;
		FBSTRING TMP$790$2;
		int32 vr$4 = HFINDREGNOTINVREG( SVREG$1, 0 );
		TMPREG$1 = vr$4;
		int32 vr$5 = HISREGFREE( 0, TMPREG$1 );
		ISTMPFREE$1 = vr$5;
		uint8* vr$6 = HGETREGNAME( 8, TMPREG$1 );
		fb_StrAssign( (void*)&TMP32$1, -1, (void*)vr$6, 0, 0 );
		if( ISTMPFREE$1 != 0 ) goto label$1313;
		{
			HPUSH( (uint8*)*(uint8**)&TMP32$1 );
		}
		label$1313:;
		label$1312:;
		{
			if( REMAINDER$1 != 3 ) goto label$1315;
			label$1316:;
			{
				FBSTRING TMP$769$4;
				FBSTRING TMP$770$4;
				FBSTRING TMP$771$4;
				FBSTRING TMP$772$4;
				FBSTRING TMP$774$4;
				FBSTRING TMP$775$4;
				FBSTRING TMP$776$4;
				FBSTRING TMP$777$4;
				FBSTRING TMP$778$4;
				FBSTRING TMP$779$4;
				FBSTRING TMP$780$4;
				HPREPOPERAND( SVREG$1, &SRC$1, 2, SDSIZE$1 + -1, 0, -1 );
				__builtin_memset( &TMP$772$4, 0, 12 );
				__builtin_memset( &TMP$769$4, 0, 12 );
				FBSTRING* vr$15 = fb_StrConcat( &TMP$769$4, (void*)"movzx ", 7, (void*)&TMP32$1, -1 );
				__builtin_memset( &TMP$770$4, 0, 12 );
				FBSTRING* vr$18 = fb_StrConcat( &TMP$770$4, (void*)vr$15, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$771$4, 0, 12 );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$771$4, (void*)vr$18, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$772$4, -1, (void*)vr$21, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$772$4 );
				fb_StrDelete( (FBSTRING*)&TMP$772$4 );
				__builtin_memset( &TMP$776$4, 0, 12 );
				__builtin_memset( &TMP$774$4, 0, 12 );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$774$4, (void*)"shl ", 5, (void*)&TMP32$1, -1 );
				__builtin_memset( &TMP$775$4, 0, 12 );
				FBSTRING* vr$31 = fb_StrConcat( &TMP$775$4, (void*)vr$28, -1, (void*)", 16", 5 );
				fb_StrAssign( (void*)&TMP$776$4, -1, (void*)vr$31, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$776$4 );
				fb_StrDelete( (FBSTRING*)&TMP$776$4 );
				uint8* vr$34 = HGETREGNAME( 5, TMPREG$1 );
				fb_StrAssign( (void*)&TMP16$1, -1, (void*)vr$34, 0, 0 );
				HPREPOPERAND( SVREG$1, &SRC$1, 5, SDSIZE$1 + -3, 0, -1 );
				__builtin_memset( &TMP$780$4, 0, 12 );
				__builtin_memset( &TMP$777$4, 0, 12 );
				FBSTRING* vr$43 = fb_StrConcat( &TMP$777$4, (void*)"mov ", 5, (void*)&TMP16$1, -1 );
				__builtin_memset( &TMP$778$4, 0, 12 );
				FBSTRING* vr$46 = fb_StrConcat( &TMP$778$4, (void*)vr$43, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$779$4, 0, 12 );
				FBSTRING* vr$49 = fb_StrConcat( &TMP$779$4, (void*)vr$46, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$780$4, -1, (void*)vr$49, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$780$4 );
				fb_StrDelete( (FBSTRING*)&TMP$780$4 );
			}
			goto label$1314;
			label$1315:;
			if( REMAINDER$1 != 2 ) goto label$1317;
			label$1318:;
			{
				FBSTRING TMP$781$4;
				FBSTRING TMP$782$4;
				FBSTRING TMP$783$4;
				FBSTRING TMP$784$4;
				OFS$1 = SDSIZE$1 + -2;
				HPREPOPERAND( SVREG$1, &SRC$1, 5, OFS$1, 0, -1 );
				__builtin_memset( &TMP$784$4, 0, 12 );
				__builtin_memset( &TMP$781$4, 0, 12 );
				FBSTRING* vr$59 = fb_StrConcat( &TMP$781$4, (void*)"movzx ", 7, (void*)&TMP32$1, -1 );
				__builtin_memset( &TMP$782$4, 0, 12 );
				FBSTRING* vr$62 = fb_StrConcat( &TMP$782$4, (void*)vr$59, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$783$4, 0, 12 );
				FBSTRING* vr$65 = fb_StrConcat( &TMP$783$4, (void*)vr$62, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$784$4, -1, (void*)vr$65, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$784$4 );
				fb_StrDelete( (FBSTRING*)&TMP$784$4 );
			}
			goto label$1314;
			label$1317:;
			if( REMAINDER$1 != 1 ) goto label$1319;
			label$1320:;
			{
				FBSTRING TMP$785$4;
				FBSTRING TMP$786$4;
				FBSTRING TMP$787$4;
				FBSTRING TMP$788$4;
				OFS$1 = SDSIZE$1 + -1;
				HPREPOPERAND( SVREG$1, &SRC$1, 2, OFS$1, 0, -1 );
				__builtin_memset( &TMP$788$4, 0, 12 );
				__builtin_memset( &TMP$785$4, 0, 12 );
				FBSTRING* vr$75 = fb_StrConcat( &TMP$785$4, (void*)"movzx ", 7, (void*)&TMP32$1, -1 );
				__builtin_memset( &TMP$786$4, 0, 12 );
				FBSTRING* vr$78 = fb_StrConcat( &TMP$786$4, (void*)vr$75, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$787$4, 0, 12 );
				FBSTRING* vr$81 = fb_StrConcat( &TMP$787$4, (void*)vr$78, -1, (void*)&SRC$1, -1 );
				fb_StrAssign( (void*)&TMP$788$4, -1, (void*)vr$81, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$788$4 );
				fb_StrDelete( (FBSTRING*)&TMP$788$4 );
			}
			label$1319:;
			label$1314:;
		}
		__builtin_memset( &TMP$790$2, 0, 12 );
		__builtin_memset( &TMP$789$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$789$2, (void*)"push ", 6, (void*)&TMP32$1, -1 );
		fb_StrAssign( (void*)&TMP$790$2, -1, (void*)vr$88, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$790$2 );
		fb_StrDelete( (FBSTRING*)&TMP$790$2 );
		if( ISTMPFREE$1 != 0 ) goto label$1322;
		{
			HPOP( (uint8*)*(uint8**)&TMP32$1 );
		}
		label$1322:;
		label$1321:;
		SDSIZE$1 = SDSIZE$1 - REMAINDER$1;
	}
	label$1311:;
	label$1310:;
	OFS$1 = SDSIZE$1 + -4;
	label$1323:;
	if( OFS$1 < 0 ) goto label$1324;
	{
		FBSTRING TMP$791$2;
		FBSTRING TMP$792$2;
		HPREPOPERAND( SVREG$1, &SRC$1, 8, OFS$1, 0, -1 );
		__builtin_memset( &TMP$792$2, 0, 12 );
		__builtin_memset( &TMP$791$2, 0, 12 );
		FBSTRING* vr$98 = fb_StrConcat( &TMP$791$2, (void*)"push ", 6, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$792$2, -1, (void*)vr$98, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$792$2 );
		fb_StrDelete( (FBSTRING*)&TMP$792$2 );
		OFS$1 = OFS$1 + -4;
	}
	goto label$1323;
	label$1324:;
	fb_StrDelete( (FBSTRING*)&TMP16$1 );
	fb_StrDelete( (FBSTRING*)&TMP32$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1309:;
}

static void _EMITPOPL( struct $6IRVREG* DVREG$1, int32 UNUSED$1 )
{
	label$1325:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST1$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST2$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1326:;
}

static void _EMITPOPI( struct $6IRVREG* DVREG$1, int32 UNUSED$1 )
{
	int32 TMP$793$1;
	label$1327:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int32 DSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1329;
	TMP$793$1 = 24;
	goto label$1880;
	label$1329:;
	TMP$793$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1880:;
	DSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$793$1 * 28)) + 4);
	if( *(int32*)DVREG$1 != 0 ) goto label$1331;
	{
		if( *(int64*)((uint8*)DVREG$1 + 24) != 4ll ) goto label$1333;
		{
			int32 vr$7 = HISREGFREE( 0, 5 );
			if( vr$7 == 0 ) goto label$1335;
			{
				HPOP( (uint8*)"eax" );
			}
			goto label$1334;
			label$1335:;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			label$1334:;
		}
		goto label$1332;
		label$1333:;
		{
			FBSTRING TMP$794$3;
			FBSTRING* vr$9 = fb_LongintToStr( *(int64*)((uint8*)DVREG$1 + 24) );
			__builtin_memset( &TMP$794$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$794$3, (void*)"add esp, ", 10, (void*)vr$9, -1 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$12, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1332:;
	}
	goto label$1330;
	label$1331:;
	if( DSIZE$1 != 4 ) goto label$1336;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1330;
	label$1336:;
	{
		if( *(int32*)DVREG$1 != 4 ) goto label$1338;
		{
			uint8* vr$15 = HGETREGNAME( 8, *(int32*)((uint8*)DVREG$1 + 12) );
			fb_StrAssign( (void*)&DST$1, -1, (void*)vr$15, 0, 0 );
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1337;
		label$1338:;
		{
			static int32 REG$3;
			static int32 ISFREE$3;
			static FBSTRING AUX8$3;
			static FBSTRING AUX16$3;
			static FBSTRING AUX32$3;
			int32 vr$16 = HFINDREGNOTINVREG( DVREG$1, 0 );
			REG$3 = vr$16;
			uint8* vr$17 = HGETREGNAME( 2, REG$3 );
			fb_StrAssign( (void*)&AUX8$3, -1, (void*)vr$17, 0, 0 );
			uint8* vr$18 = HGETREGNAME( 5, REG$3 );
			fb_StrAssign( (void*)&AUX16$3, -1, (void*)vr$18, 0, 0 );
			uint8* vr$19 = HGETREGNAME( 8, REG$3 );
			fb_StrAssign( (void*)&AUX32$3, -1, (void*)vr$19, 0, 0 );
			int32 vr$20 = HISREGFREE( 0, REG$3 );
			ISFREE$3 = vr$20;
			if( ISFREE$3 == 0 ) goto label$1340;
			{
				HMOV( (uint8*)*(uint8**)&AUX32$3, (uint8*)"dword ptr [esp]" );
			}
			goto label$1339;
			label$1340:;
			{
				HXCHG( (uint8*)*(uint8**)&AUX32$3, (uint8*)"dword ptr [esp]" );
			}
			label$1339:;
			if( DSIZE$1 != 1 ) goto label$1342;
			{
				HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$3 );
			}
			goto label$1341;
			label$1342:;
			{
				HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX16$3 );
			}
			label$1341:;
			if( ISFREE$3 == 0 ) goto label$1344;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			goto label$1343;
			label$1344:;
			{
				HPOP( (uint8*)*(uint8**)&AUX32$3 );
			}
			label$1343:;
		}
		label$1337:;
	}
	label$1330:;
	label$1328:;
}

static void _EMITPOPF( struct $6IRVREG* DVREG$1, int32 UNUSED$1 )
{
	int32 TMP$795$1;
	label$1345:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int32 DSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1347;
	TMP$795$1 = 24;
	goto label$1881;
	label$1347:;
	TMP$795$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1881:;
	DSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$795$1 * 28)) + 4);
	if( *(int32*)DVREG$1 == 4 ) goto label$1349;
	{
		if( *(int32*)((uint8*)DVREG$1 + 4) != 15 ) goto label$1351;
		{
			fb_StrAssign( (void*)&OSTR$1, -1, (void*)"pop ", 5, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1350;
		label$1351:;
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
		label$1350:;
	}
	goto label$1348;
	label$1349:;
	{
		FBSTRING TMP$796$2;
		FBSTRING TMP$797$2;
		__builtin_memset( &TMP$796$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$796$2, (void*)"fld ", 5, (void*)(((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)DVREG$1 + 4) << (4 & 31))) + 4), 12 );
		__builtin_memset( &TMP$797$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$797$2, (void*)vr$12, -1, (void*)" [esp]", 7 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$15, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"add esp,", 9, 0 );
		FBSTRING* vr$16 = fb_IntToStr( DSIZE$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$16, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$1348:;
	label$1346:;
}

static void _EMITPOPST0( void )
{
	label$1352:;
	OUTP( (uint8*)"fstp st(0)" );
	label$1353:;
}

static void _EMITADDROF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1354:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"lea ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1355:;
}

static void _EMITDEREF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1356:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, 9, 0, 0, -1 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ", 5, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", ", 3, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&SRC$1, -1, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1357:;
}

static void HMEMMOVEREP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1 )
{
	label$1358:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int32 ECXFREE$1;
	static int32 EDIFREE$1;
	static int32 ESIFREE$1;
	static int32 EDIINSRC$1;
	static int32 ECXINSRC$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	int32 vr$0 = HISREGFREE( 0, 3 );
	ECXFREE$1 = vr$0;
	int32 vr$1 = HISREGFREE( 0, 1 );
	EDIFREE$1 = vr$1;
	int32 vr$2 = HISREGFREE( 0, 2 );
	ESIFREE$1 = vr$2;
	int32 vr$3 = HISREGINVREG( SVREG$1, 1 );
	EDIINSRC$1 = vr$3;
	int32 vr$4 = HISREGINVREG( SVREG$1, 3 );
	ECXINSRC$1 = vr$4;
	if( ECXFREE$1 != 0 ) goto label$1361;
	{
		HPUSH( (uint8*)"ecx" );
	}
	label$1361:;
	label$1360:;
	if( EDIFREE$1 != 0 ) goto label$1363;
	{
		HPUSH( (uint8*)"edi" );
	}
	label$1363:;
	label$1362:;
	if( ESIFREE$1 != 0 ) goto label$1365;
	{
		HPUSH( (uint8*)"esi" );
	}
	label$1365:;
	label$1364:;
	if( EDIINSRC$1 != 0 ) goto label$1367;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$1369;
		{
			HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
		}
		goto label$1368;
		label$1369:;
		{
			if( *(int32*)((uint8*)DVREG$1 + 12) == 1 ) goto label$1371;
			{
				HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
			}
			label$1371:;
			label$1370:;
		}
		label$1368:;
	}
	goto label$1366;
	label$1367:;
	{
		if( ECXINSRC$1 == 0 ) goto label$1373;
		{
			HPUSH( (uint8*)"ecx" );
		}
		label$1373:;
		label$1372:;
		HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&DST$1 );
		if( ECXINSRC$1 == 0 ) goto label$1375;
		{
			OUTP( (uint8*)"xchg ecx, [esp]" );
		}
		label$1375:;
		label$1374:;
	}
	label$1366:;
	if( *(int32*)SVREG$1 == 4 ) goto label$1377;
	{
		HMOV( (uint8*)"esi", (uint8*)*(uint8**)&SRC$1 );
	}
	goto label$1376;
	label$1377:;
	{
		if( *(int32*)((uint8*)SVREG$1 + 12) == 2 ) goto label$1379;
		{
			HMOV( (uint8*)"esi", (uint8*)*(uint8**)&SRC$1 );
		}
		label$1379:;
		label$1378:;
	}
	label$1376:;
	if( EDIINSRC$1 == 0 ) goto label$1381;
	{
		if( ECXINSRC$1 != 0 ) goto label$1383;
		{
			HMOV( (uint8*)"edi", (uint8*)"ecx" );
		}
		goto label$1382;
		label$1383:;
		{
			HPOP( (uint8*)"edi" );
		}
		label$1382:;
	}
	label$1381:;
	label$1380:;
	if( BYTES$1 <= 4 ) goto label$1385;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ecx, ", 10, 0 );
		FBSTRING* vr$10 = fb_UIntToStr( (uint32)BYTES$1 >> (2u & 31) );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$10, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		OUTP( (uint8*)"rep movsd" );
	}
	goto label$1384;
	label$1385:;
	if( BYTES$1 != 4 ) goto label$1386;
	{
		OUTP( (uint8*)"mov ecx, [esi]" );
		OUTP( (uint8*)"mov [edi], ecx" );
		if( (BYTES$1 & 3) <= 0 ) goto label$1388;
		{
			OUTP( (uint8*)"add esi, 4" );
			OUTP( (uint8*)"add edi, 4" );
		}
		label$1388:;
		label$1387:;
	}
	label$1386:;
	label$1384:;
	BYTES$1 = BYTES$1 & 3;
	if( BYTES$1 <= 0 ) goto label$1390;
	{
		if( BYTES$1 < 2 ) goto label$1392;
		{
			OUTP( (uint8*)"mov cx, [esi]" );
			OUTP( (uint8*)"mov [edi], cx" );
			if( BYTES$1 != 3 ) goto label$1394;
			{
				OUTP( (uint8*)"add esi, 2" );
				OUTP( (uint8*)"add edi, 2" );
			}
			label$1394:;
			label$1393:;
		}
		label$1392:;
		label$1391:;
		if( (BYTES$1 & 1) == 0 ) goto label$1396;
		{
			OUTP( (uint8*)"mov cl, [esi]" );
			OUTP( (uint8*)"mov [edi], cl" );
		}
		label$1396:;
		label$1395:;
	}
	label$1390:;
	label$1389:;
	if( ESIFREE$1 != 0 ) goto label$1398;
	{
		HPOP( (uint8*)"esi" );
	}
	label$1398:;
	label$1397:;
	if( EDIFREE$1 != 0 ) goto label$1400;
	{
		HPOP( (uint8*)"edi" );
	}
	label$1400:;
	label$1399:;
	if( ECXFREE$1 != 0 ) goto label$1402;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$1402:;
	label$1401:;
	label$1359:;
}

static void HMEMMOVEBLK( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1 )
{
	label$1403:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static int32 I$1;
	static int32 OFS$1;
	static int32 REG$1;
	static int32 ISFREE$1;
	int32 vr$0 = HFINDREGNOTINVREG( DVREG$1, 0 );
	REG$1 = vr$0;
	int32 vr$1 = HISREGINVREG( SVREG$1, REG$1 );
	if( vr$1 == 0 ) goto label$1406;
	{
		HMEMMOVEREP( DVREG$1, SVREG$1, BYTES$1 );
		goto label$1404;
	}
	label$1406:;
	label$1405:;
	uint8* vr$2 = HGETREGNAME( 8, REG$1 );
	fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$2, 0, 0 );
	int32 vr$3 = HISREGFREE( 0, REG$1 );
	ISFREE$1 = vr$3;
	if( ISFREE$1 != 0 ) goto label$1408;
	{
		HPUSH( (uint8*)*(uint8**)&AUX$1 );
	}
	label$1408:;
	label$1407:;
	OFS$1 = 0;
	{
		I$1 = 1;
		int32 TMP$812$2;
		TMP$812$2 = (int32)((uint32)BYTES$1 >> (2u & 31));
		goto label$1409;
		label$1412:;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8, OFS$1, 0, -1 );
			HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC$1 );
			HPREPOPERAND( DVREG$1, &DST$1, 8, OFS$1, 0, -1 );
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
			OFS$1 = OFS$1 + 4;
		}
		label$1410:;
		I$1 = I$1 + 1;
		label$1409:;
		if( I$1 <= TMP$812$2 ) goto label$1412;
		label$1411:;
	}
	if( (BYTES$1 & 2) == 0 ) goto label$1414;
	{
		uint8* vr$8 = HGETREGNAME( 5, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$8, 0, 0 );
		HPREPOPERAND( SVREG$1, &SRC$1, 5, OFS$1, 0, -1 );
		HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC$1 );
		HPREPOPERAND( DVREG$1, &DST$1, 5, OFS$1, 0, -1 );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
		OFS$1 = OFS$1 + 2;
	}
	label$1414:;
	label$1413:;
	if( (BYTES$1 & 1) == 0 ) goto label$1416;
	{
		uint8* vr$11 = HGETREGNAME( 2, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$11, 0, 0 );
		HPREPOPERAND( SVREG$1, &SRC$1, 2, OFS$1, 0, -1 );
		HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC$1 );
		HPREPOPERAND( DVREG$1, &DST$1, 2, OFS$1, 0, -1 );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
	}
	label$1416:;
	label$1415:;
	if( ISFREE$1 != 0 ) goto label$1418;
	{
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	label$1418:;
	label$1417:;
	label$1404:;
}

static void _EMITMEMMOVE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1, int32 EXTRA$1 )
{
	label$1419:;
	if( (uint32)BYTES$1 <= 16u ) goto label$1422;
	{
		HMEMMOVEREP( DVREG$1, SVREG$1, BYTES$1 );
	}
	goto label$1421;
	label$1422:;
	{
		HMEMMOVEBLK( DVREG$1, SVREG$1, BYTES$1 );
	}
	label$1421:;
	label$1420:;
}

static void _EMITMEMSWAP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1, int32 EXTRA$1 )
{
	label$1423:;
	label$1424:;
}

static void HMEMCLEARREPIMM( struct $6IRVREG* DVREG$1, uint32 BYTES$1 )
{
	label$1425:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int32 EAXFREE$1;
	static int32 ECXFREE$1;
	static int32 EDIFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	int32 vr$0 = HISREGFREE( 0, 5 );
	EAXFREE$1 = vr$0;
	int32 vr$1 = HISREGFREE( 0, 3 );
	ECXFREE$1 = vr$1;
	int32 vr$2 = HISREGFREE( 0, 1 );
	EDIFREE$1 = vr$2;
	if( EAXFREE$1 != 0 ) goto label$1428;
	{
		HPUSH( (uint8*)"eax" );
	}
	label$1428:;
	label$1427:;
	if( ECXFREE$1 != 0 ) goto label$1430;
	{
		HPUSH( (uint8*)"ecx" );
	}
	label$1430:;
	label$1429:;
	if( EDIFREE$1 != 0 ) goto label$1432;
	{
		HPUSH( (uint8*)"edi" );
	}
	label$1432:;
	label$1431:;
	if( *(int32*)DVREG$1 == 4 ) goto label$1434;
	{
		HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
	}
	goto label$1433;
	label$1434:;
	{
		if( *(int32*)((uint8*)DVREG$1 + 12) == 1 ) goto label$1436;
		{
			HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
		}
		label$1436:;
		label$1435:;
	}
	label$1433:;
	OUTP( (uint8*)"xor eax, eax" );
	if( BYTES$1 <= 4u ) goto label$1438;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"mov ecx, ", 10, 0 );
		FBSTRING* vr$6 = fb_UIntToStr( BYTES$1 >> (2u & 31) );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$6, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		OUTP( (uint8*)"rep stosd" );
	}
	goto label$1437;
	label$1438:;
	if( BYTES$1 != 4u ) goto label$1439;
	{
		OUTP( (uint8*)"mov dword ptr [edi], eax" );
		if( (BYTES$1 & 3u) <= 0u ) goto label$1441;
		{
			OUTP( (uint8*)"add edi, 4" );
		}
		label$1441:;
		label$1440:;
	}
	label$1439:;
	label$1437:;
	BYTES$1 = BYTES$1 & 3u;
	if( BYTES$1 <= 0u ) goto label$1443;
	{
		if( BYTES$1 < 2u ) goto label$1445;
		{
			OUTP( (uint8*)"mov word ptr [edi], ax" );
			if( BYTES$1 != 3u ) goto label$1447;
			{
				OUTP( (uint8*)"add edi, 2" );
			}
			label$1447:;
			label$1446:;
		}
		label$1445:;
		label$1444:;
		if( (BYTES$1 & 1u) == 0u ) goto label$1449;
		{
			OUTP( (uint8*)"mov byte ptr [edi], al" );
		}
		label$1449:;
		label$1448:;
	}
	label$1443:;
	label$1442:;
	if( EDIFREE$1 != 0 ) goto label$1451;
	{
		HPOP( (uint8*)"edi" );
	}
	label$1451:;
	label$1450:;
	if( ECXFREE$1 != 0 ) goto label$1453;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$1453:;
	label$1452:;
	if( EAXFREE$1 != 0 ) goto label$1455;
	{
		HPOP( (uint8*)"eax" );
	}
	label$1455:;
	label$1454:;
	label$1426:;
}

static void HMEMCLEARBLKIMM( struct $6IRVREG* DVREG$1, uint32 BYTES$1 )
{
	label$1456:;
	static FBSTRING DST$1;
	static int32 I$1;
	static int32 OFS$1;
	OFS$1 = 0;
	{
		I$1 = 1;
		int32 TMP$816$2;
		TMP$816$2 = (int32)(BYTES$1 >> (2u & 31));
		goto label$1458;
		label$1461:;
		{
			HPREPOPERAND( DVREG$1, &DST$1, 8, OFS$1, 0, -1 );
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
			OFS$1 = OFS$1 + 4;
		}
		label$1459:;
		I$1 = I$1 + 1;
		label$1458:;
		if( I$1 <= TMP$816$2 ) goto label$1461;
		label$1460:;
	}
	if( (BYTES$1 & 2u) == 0u ) goto label$1463;
	{
		HPREPOPERAND( DVREG$1, &DST$1, 5, OFS$1, 0, -1 );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		OFS$1 = OFS$1 + 2;
	}
	label$1463:;
	label$1462:;
	if( (BYTES$1 & 1u) == 0u ) goto label$1465;
	{
		HPREPOPERAND( DVREG$1, &DST$1, 2, OFS$1, 0, -1 );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
	}
	label$1465:;
	label$1464:;
	label$1457:;
}

static void HMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* BYTES_VREG$1 )
{
	label$1466:;
	static FBSTRING DST$1;
	static FBSTRING BYTES$1;
	static FBSTRING OSTR$1;
	static int32 EAXFREE$1;
	static int32 ECXFREE$1;
	static int32 EDIFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( BYTES_VREG$1, &BYTES$1, -2147483648u, 0, 0, -1 );
	int32 vr$0 = HISREGFREE( 0, 5 );
	EAXFREE$1 = vr$0;
	int32 vr$1 = HISREGFREE( 0, 3 );
	ECXFREE$1 = vr$1;
	int32 vr$2 = HISREGFREE( 0, 1 );
	EDIFREE$1 = vr$2;
	if( EAXFREE$1 != 0 ) goto label$1469;
	{
		HPUSH( (uint8*)"eax" );
	}
	label$1469:;
	label$1468:;
	if( ECXFREE$1 != 0 ) goto label$1471;
	{
		HPUSH( (uint8*)"ecx" );
	}
	label$1471:;
	label$1470:;
	if( EDIFREE$1 != 0 ) goto label$1473;
	{
		HPUSH( (uint8*)"edi" );
	}
	label$1473:;
	label$1472:;
	int32 vr$3 = HISREGINVREG( BYTES_VREG$1, 1 );
	if( vr$3 != 0 ) goto label$1475;
	{
		if( *(int32*)DVREG$1 == 4 ) goto label$1477;
		{
			HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
		}
		goto label$1476;
		label$1477:;
		{
			if( *(int32*)((uint8*)DVREG$1 + 12) == 1 ) goto label$1479;
			{
				HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
			}
			label$1479:;
			label$1478:;
		}
		label$1476:;
		if( *(int32*)BYTES_VREG$1 == 4 ) goto label$1481;
		{
			HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&BYTES$1 );
		}
		goto label$1480;
		label$1481:;
		{
			if( *(int32*)((uint8*)BYTES_VREG$1 + 12) == 3 ) goto label$1483;
			{
				HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&BYTES$1 );
			}
			label$1483:;
			label$1482:;
		}
		label$1480:;
	}
	goto label$1474;
	label$1475:;
	{
		HPUSH( (uint8*)*(uint8**)&BYTES$1 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"lea edi, ", 10, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)&DST$1, -1, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPOP( (uint8*)"ecx" );
	}
	label$1474:;
	OUTP( (uint8*)"xor eax, eax" );
	OUTP( (uint8*)"push ecx" );
	OUTP( (uint8*)"shr ecx, 2" );
	OUTP( (uint8*)"rep stosd" );
	OUTP( (uint8*)"pop ecx" );
	OUTP( (uint8*)"and ecx, 3" );
	OUTP( (uint8*)"rep stosb" );
	if( EDIFREE$1 != 0 ) goto label$1485;
	{
		HPOP( (uint8*)"edi" );
	}
	label$1485:;
	label$1484:;
	if( ECXFREE$1 != 0 ) goto label$1487;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$1487:;
	label$1486:;
	if( EAXFREE$1 != 0 ) goto label$1489;
	{
		HPOP( (uint8*)"eax" );
	}
	label$1489:;
	label$1488:;
	label$1467:;
}

static void _EMITMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 UNUSED$1, int32 EXTRA$1 )
{
	label$1490:;
	if( *(int32*)SVREG$1 != 0 ) goto label$1493;
	{
		uint32 BYTES$2;
		BYTES$2 = (uint32)*(int64*)((uint8*)SVREG$1 + 24);
		if( BYTES$2 <= 16u ) goto label$1495;
		{
			HMEMCLEARREPIMM( DVREG$1, BYTES$2 );
		}
		goto label$1494;
		label$1495:;
		{
			HMEMCLEARBLKIMM( DVREG$1, BYTES$2 );
		}
		label$1494:;
	}
	goto label$1492;
	label$1493:;
	{
		HMEMCLEAR( DVREG$1, SVREG$1 );
	}
	label$1492:;
	label$1491:;
}

static void _EMITSTKCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1, int32 BASEOFS$1 )
{
	label$1496:;
	HCLEARLOCALS( BYTES$1, BASEOFS$1 );
	label$1497:;
}

static void _EMITLINEINI( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, int32 POS_$1, uint8* FILENAME$1 )
{
	label$1498:;
	EDBGLINEBEGIN( PROC$1, LNUM$1, POS_$1, FILENAME$1 );
	label$1499:;
}

static void _EMITLINEEND( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, int32 POS_$1 )
{
	label$1500:;
	EDBGLINEEND( PROC$1, LNUM$1, POS_$1 );
	label$1501:;
}

static void _EMITSCOPEINI( struct $8FBSYMBOL* SYM$1, int32 LNUM$1, int32 POS_$1 )
{
	label$1502:;
	EDBGEMITSCOPEINI( SYM$1 );
	label$1503:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* SYM$1, int32 LNUM$1, int32 POS_$1 )
{
	label$1504:;
	EDBGEMITSCOPEEND( SYM$1 );
	label$1505:;
}

static void _EMITLOADB2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1506:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&SRC$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1507:;
}

static void _EMITSTORB2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1508:;
	_EMITLOADB2B( DVREG$1, SVREG$1 );
	label$1509:;
}

static void _EMITLOADB2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$823$1;
	int32 TMP$824$1;
	FBSTRING TMP$829$1;
	FBSTRING TMP$830$1;
	label$1510:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	if( *(int32*)SVREG$1 != 0 ) goto label$1513;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) == 0ll ) goto label$1515;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"-1" );
		}
		goto label$1514;
		label$1515:;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		}
		label$1514:;
		fb_StrDelete( (FBSTRING*)&DST$1 );
		fb_StrDelete( (FBSTRING*)&SRC$1 );
		goto label$1511;
	}
	label$1513:;
	label$1512:;
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1516;
	TMP$823$1 = 24;
	goto label$1882;
	label$1516:;
	TMP$823$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1882:;
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$1517;
	TMP$824$1 = 24;
	goto label$1883;
	label$1517:;
	TMP$824$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1883:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$823$1 * 28)) + 4) <= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$824$1 * 28)) + 4) ) goto label$1519;
	{
		FBSTRING TMP$825$2;
		FBSTRING TMP$826$2;
		FBSTRING TMP$827$2;
		FBSTRING TMP$828$2;
		__builtin_memset( &TMP$828$2, 0, 12 );
		__builtin_memset( &TMP$825$2, 0, 12 );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$825$2, (void*)"movzx ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$826$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$826$2, (void*)vr$23, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$827$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$827$2, (void*)vr$26, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$828$2, -1, (void*)vr$29, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$828$2 );
		fb_StrDelete( (FBSTRING*)&TMP$828$2 );
	}
	goto label$1518;
	label$1519:;
	{
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&SRC$1 );
	}
	label$1518:;
	__builtin_memset( &TMP$830$1, 0, 12 );
	__builtin_memset( &TMP$829$1, 0, 12 );
	FBSTRING* vr$36 = fb_StrConcat( &TMP$829$1, (void*)"neg ", 5, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$830$1, -1, (void*)vr$36, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$830$1 );
	fb_StrDelete( (FBSTRING*)&TMP$830$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1511:;
}

static void _EMITSTORB2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1520:;
	_EMITLOADB2I( DVREG$1, SVREG$1 );
	label$1521:;
}

static void _EMITLOADI2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1522:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	FBSTRING DST8$1;
	__builtin_memset( &DST8$1, 0, 12 );
	int32 DDSIZE$1;
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	DDSIZE$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 32);
	if( *(int32*)SVREG$1 != 0 ) goto label$1525;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) == 0ll ) goto label$1527;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"1" );
		}
		goto label$1526;
		label$1527:;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		}
		label$1526:;
	}
	goto label$1524;
	label$1525:;
	if( DDSIZE$1 != 1 ) goto label$1528;
	{
		FBSTRING TMP$831$2;
		FBSTRING TMP$832$2;
		FBSTRING TMP$833$2;
		FBSTRING TMP$835$2;
		FBSTRING TMP$836$2;
		__builtin_memset( &TMP$833$2, 0, 12 );
		__builtin_memset( &TMP$831$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$831$2, (void*)"cmp ", 5, (void*)&SRC$1, -1 );
		__builtin_memset( &TMP$832$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$832$2, (void*)vr$11, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$833$2, -1, (void*)vr$14, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$833$2 );
		fb_StrDelete( (FBSTRING*)&TMP$833$2 );
		__builtin_memset( &TMP$836$2, 0, 12 );
		__builtin_memset( &TMP$835$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$835$2, (void*)"setne ", 7, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$836$2, -1, (void*)vr$21, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$836$2 );
		fb_StrDelete( (FBSTRING*)&TMP$836$2 );
	}
	goto label$1524;
	label$1528:;
	if( ((-(*(int32*)DVREG$1 == 4) & -(*(int32*)((uint8*)DVREG$1 + 12) != 2)) & -(*(int32*)((uint8*)DVREG$1 + 12) != 1)) == 0 ) goto label$1529;
	{
		FBSTRING TMP$837$2;
		FBSTRING TMP$838$2;
		FBSTRING TMP$839$2;
		FBSTRING TMP$840$2;
		FBSTRING TMP$841$2;
		FBSTRING TMP$842$2;
		FBSTRING TMP$843$2;
		FBSTRING TMP$844$2;
		FBSTRING TMP$845$2;
		uint8* vr$33 = HGETREGNAME( 2, *(int32*)((uint8*)DVREG$1 + 12) );
		fb_StrAssign( (void*)&DST8$1, -1, (void*)vr$33, 0, 0 );
		__builtin_memset( &TMP$839$2, 0, 12 );
		__builtin_memset( &TMP$837$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$837$2, (void*)"cmp ", 5, (void*)&SRC$1, -1 );
		__builtin_memset( &TMP$838$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$838$2, (void*)vr$39, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$839$2, -1, (void*)vr$42, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$839$2 );
		fb_StrDelete( (FBSTRING*)&TMP$839$2 );
		__builtin_memset( &TMP$841$2, 0, 12 );
		__builtin_memset( &TMP$840$2, 0, 12 );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$840$2, (void*)"setne ", 7, (void*)&DST8$1, -1 );
		fb_StrAssign( (void*)&TMP$841$2, -1, (void*)vr$49, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$841$2 );
		fb_StrDelete( (FBSTRING*)&TMP$841$2 );
		__builtin_memset( &TMP$845$2, 0, 12 );
		__builtin_memset( &TMP$842$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$842$2, (void*)"movzx ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$843$2, 0, 12 );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$843$2, (void*)vr$57, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$844$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$844$2, (void*)vr$60, -1, (void*)&DST8$1, -1 );
		fb_StrAssign( (void*)&TMP$845$2, -1, (void*)vr$63, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$845$2 );
		fb_StrDelete( (FBSTRING*)&TMP$845$2 );
	}
	goto label$1524;
	label$1529:;
	{
		FBSTRING TMP$846$2;
		FBSTRING TMP$847$2;
		FBSTRING TMP$848$2;
		FBSTRING TMP$849$2;
		FBSTRING TMP$850$2;
		FBSTRING TMP$851$2;
		FBSTRING AUX$2;
		__builtin_memset( &AUX$2, 0, 12 );
		FBSTRING AUX8$2;
		__builtin_memset( &AUX8$2, 0, 12 );
		int32 REG$2;
		__builtin_memset( &REG$2, 0, 4 );
		int32 ISFREE$2;
		__builtin_memset( &ISFREE$2, 0, 4 );
		int32 vr$70 = HFINDREGNOTINVREG( DVREG$1, -1 );
		REG$2 = vr$70;
		uint8* vr$71 = HGETREGNAME( 2, REG$2 );
		fb_StrAssign( (void*)&AUX8$2, -1, (void*)vr$71, 0, 0 );
		uint8* vr$74 = HGETREGNAME( *(int32*)((uint8*)DVREG$1 + 4), REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$74, 0, 0 );
		int32 vr$76 = HISREGFREE( 0, REG$2 );
		ISFREE$2 = vr$76;
		if( ISFREE$2 != 0 ) goto label$1531;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1531:;
		label$1530:;
		__builtin_memset( &TMP$849$2, 0, 12 );
		__builtin_memset( &TMP$846$2, 0, 12 );
		FBSTRING* vr$81 = fb_StrConcat( &TMP$846$2, (void*)"cmp ", 5, (void*)&SRC$1, -1 );
		__builtin_memset( &TMP$847$2, 0, 12 );
		FBSTRING* vr$84 = fb_StrConcat( &TMP$847$2, (void*)vr$81, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$848$2, 0, 12 );
		FBSTRING* vr$87 = fb_StrConcat( &TMP$848$2, (void*)vr$84, -1, (void*)"0", 2 );
		fb_StrAssign( (void*)&TMP$849$2, -1, (void*)vr$87, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$849$2 );
		fb_StrDelete( (FBSTRING*)&TMP$849$2 );
		__builtin_memset( &TMP$851$2, 0, 12 );
		__builtin_memset( &TMP$850$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$850$2, (void*)"setne ", 7, (void*)&AUX8$2, -1 );
		fb_StrAssign( (void*)&TMP$851$2, -1, (void*)vr$94, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$851$2 );
		fb_StrDelete( (FBSTRING*)&TMP$851$2 );
		if( *(int32*)DVREG$1 != 4 ) goto label$1533;
		{
			FBSTRING TMP$852$3;
			FBSTRING TMP$853$3;
			FBSTRING TMP$854$3;
			FBSTRING TMP$855$3;
			__builtin_memset( &TMP$855$3, 0, 12 );
			__builtin_memset( &TMP$852$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$852$3, (void*)"movzx ", 7, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$853$3, 0, 12 );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$853$3, (void*)vr$103, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$854$3, 0, 12 );
			FBSTRING* vr$109 = fb_StrConcat( &TMP$854$3, (void*)vr$106, -1, (void*)&AUX8$2, -1 );
			fb_StrAssign( (void*)&TMP$855$3, -1, (void*)vr$109, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$855$3 );
			fb_StrDelete( (FBSTRING*)&TMP$855$3 );
		}
		goto label$1532;
		label$1533:;
		{
			FBSTRING TMP$856$3;
			FBSTRING TMP$857$3;
			FBSTRING TMP$858$3;
			FBSTRING TMP$859$3;
			FBSTRING TMP$860$3;
			FBSTRING TMP$861$3;
			FBSTRING TMP$862$3;
			FBSTRING TMP$863$3;
			__builtin_memset( &TMP$859$3, 0, 12 );
			__builtin_memset( &TMP$856$3, 0, 12 );
			FBSTRING* vr$117 = fb_StrConcat( &TMP$856$3, (void*)"movzx ", 7, (void*)&AUX$2, -1 );
			__builtin_memset( &TMP$857$3, 0, 12 );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$857$3, (void*)vr$117, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$858$3, 0, 12 );
			FBSTRING* vr$123 = fb_StrConcat( &TMP$858$3, (void*)vr$120, -1, (void*)&AUX8$2, -1 );
			fb_StrAssign( (void*)&TMP$859$3, -1, (void*)vr$123, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$859$3 );
			fb_StrDelete( (FBSTRING*)&TMP$859$3 );
			__builtin_memset( &TMP$863$3, 0, 12 );
			__builtin_memset( &TMP$860$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$860$3, (void*)"mov ", 5, (void*)&DST$1, -1 );
			__builtin_memset( &TMP$861$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$861$3, (void*)vr$131, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$862$3, 0, 12 );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$862$3, (void*)vr$134, -1, (void*)&AUX$2, -1 );
			fb_StrAssign( (void*)&TMP$863$3, -1, (void*)vr$137, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$863$3 );
			fb_StrDelete( (FBSTRING*)&TMP$863$3 );
		}
		label$1532:;
		if( ISFREE$2 != 0 ) goto label$1535;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1535:;
		label$1534:;
		fb_StrDelete( (FBSTRING*)&AUX8$2 );
		fb_StrDelete( (FBSTRING*)&AUX$2 );
	}
	label$1524:;
	fb_StrDelete( (FBSTRING*)&DST8$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1523:;
}

static void _EMITSTORI2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1536:;
	_EMITLOADI2B( DVREG$1, SVREG$1 );
	label$1537:;
}

static void _EMITLOADF2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$864$1;
	int32 TMP$865$1;
	label$1538:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	int32 DDSIZE$1;
	int32 ISFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$1540;
	TMP$864$1 = 24;
	goto label$1884;
	label$1540:;
	TMP$864$1 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
	label$1884:;
	DDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$864$1 * 28)) + 4);
	int32 vr$9 = HISREGFREE( 0, 5 );
	ISFREE$1 = vr$9;
	if( ISFREE$1 != 0 ) goto label$1541;
	int32 vr$10 = HISREGINVREG( DVREG$1, 5 );
	TMP$865$1 = -(vr$10 != 0);
	goto label$1885;
	label$1541:;
	TMP$865$1 = -1;
	label$1885:;
	ISFREE$1 = TMP$865$1;
	if( *(int32*)SVREG$1 == 4 ) goto label$1543;
	{
		FBSTRING TMP$866$2;
		FBSTRING TMP$867$2;
		__builtin_memset( &TMP$867$2, 0, 12 );
		__builtin_memset( &TMP$866$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$866$2, (void*)"fld ", 5, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$867$2, -1, (void*)vr$17, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$867$2 );
		fb_StrDelete( (FBSTRING*)&TMP$867$2 );
	}
	label$1543:;
	label$1542:;
	if( ISFREE$1 != 0 ) goto label$1545;
	{
		OUTP( (uint8*)"push eax" );
	}
	label$1545:;
	label$1544:;
	if( *(int32*)((uint8*)&ENV$ + 112) < 3 ) goto label$1547;
	{
		OUTP( (uint8*)"fldz" );
		OUTP( (uint8*)"fcomip" );
		OUTP( (uint8*)"setnz al" );
	}
	goto label$1546;
	label$1547:;
	{
		OUTP( (uint8*)"ftst" );
		OUTP( (uint8*)"fnstsw ax" );
		OUTP( (uint8*)"sahf" );
		OUTP( (uint8*)"setnz al" );
	}
	label$1546:;
	OUTP( (uint8*)"fstp st(0)" );
	if( DDSIZE$1 != 1 ) goto label$1549;
	{
		FBSTRING TMP$871$2;
		FBSTRING TMP$872$2;
		FBSTRING TMP$873$2;
		__builtin_memset( &TMP$873$2, 0, 12 );
		__builtin_memset( &TMP$871$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$871$2, (void*)"mov ", 5, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$872$2, 0, 12 );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$872$2, (void*)vr$24, -1, (void*)", al", 5 );
		fb_StrAssign( (void*)&TMP$873$2, -1, (void*)vr$27, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$873$2 );
		fb_StrDelete( (FBSTRING*)&TMP$873$2 );
	}
	goto label$1548;
	label$1549:;
	{
		FBSTRING TMP$874$2;
		FBSTRING TMP$875$2;
		FBSTRING TMP$876$2;
		__builtin_memset( &TMP$876$2, 0, 12 );
		__builtin_memset( &TMP$874$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$874$2, (void*)"movzx ", 7, (void*)&DST$1, -1 );
		__builtin_memset( &TMP$875$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$875$2, (void*)vr$34, -1, (void*)", al", 5 );
		fb_StrAssign( (void*)&TMP$876$2, -1, (void*)vr$37, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$876$2 );
		fb_StrDelete( (FBSTRING*)&TMP$876$2 );
	}
	label$1548:;
	if( ISFREE$1 != 0 ) goto label$1551;
	{
		OUTP( (uint8*)"pop eax" );
	}
	label$1551:;
	label$1550:;
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1539:;
}

static void _EMITSTORF2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1552:;
	_EMITLOADF2B( DVREG$1, SVREG$1 );
	label$1553:;
}

static void _EMITLOADB2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$878$1;
	label$1554:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	int32 SDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$1556;
	TMP$878$1 = 24;
	goto label$1886;
	label$1556:;
	TMP$878$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1886:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$878$1 * 28)) + 4);
	if( *(int32*)SVREG$1 != 0 ) goto label$1558;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) == 0ll ) goto label$1560;
		{
			OUTP( (uint8*)"fld1" );
			OUTP( (uint8*)"fchs" );
		}
		goto label$1559;
		label$1560:;
		{
			OUTP( (uint8*)"fldz" );
		}
		label$1559:;
		fb_StrDelete( (FBSTRING*)&DST$1 );
		fb_StrDelete( (FBSTRING*)&SRC$1 );
		goto label$1555;
	}
	label$1558:;
	label$1557:;
	if( SDSIZE$1 != 1 ) goto label$1562;
	{
		FBSTRING TMP$879$2;
		FBSTRING TMP$880$2;
		FBSTRING TMP$881$2;
		FBSTRING TMP$882$2;
		FBSTRING AUX$2;
		__builtin_memset( &AUX$2, 0, 12 );
		int32 ISFREE$2;
		__builtin_memset( &ISFREE$2, 0, 4 );
		int32 REG$2;
		__builtin_memset( &REG$2, 0, 4 );
		int32 vr$16 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$2 = vr$16;
		uint8* vr$17 = HGETREGNAME( 8, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$17, 0, 0 );
		int32 vr$19 = HISREGFREE( 0, REG$2 );
		ISFREE$2 = vr$19;
		if( ISFREE$2 != 0 ) goto label$1564;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1564:;
		label$1563:;
		__builtin_memset( &TMP$882$2, 0, 12 );
		__builtin_memset( &TMP$879$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$879$2, (void*)"movzx ", 7, (void*)&AUX$2, -1 );
		__builtin_memset( &TMP$880$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$880$2, (void*)vr$25, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$881$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$881$2, (void*)vr$28, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$882$2, -1, (void*)vr$31, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$882$2 );
		fb_StrDelete( (FBSTRING*)&TMP$882$2 );
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0 ) goto label$1566;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1566:;
		label$1565:;
		fb_StrDelete( (FBSTRING*)&AUX$2 );
	}
	goto label$1561;
	label$1562:;
	{
		FBSTRING TMP$883$2;
		FBSTRING TMP$884$2;
		__builtin_memset( &TMP$884$2, 0, 12 );
		__builtin_memset( &TMP$883$2, 0, 12 );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$883$2, (void*)"fild ", 6, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$884$2, -1, (void*)vr$39, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$884$2 );
		fb_StrDelete( (FBSTRING*)&TMP$884$2 );
	}
	label$1561:;
	OUTP( (uint8*)"fchs" );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1555:;
}

static void _EMITSTORB2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int32 TMP$885$1;
	FBSTRING TMP$894$1;
	FBSTRING TMP$895$1;
	label$1567:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 12 );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	int32 SDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	HPREPOPERAND( SVREG$1, &SRC$1, -2147483648u, 0, 0, -1 );
	if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$1569;
	TMP$885$1 = 24;
	goto label$1887;
	label$1569:;
	TMP$885$1 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
	label$1887:;
	SDSIZE$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$885$1 * 28)) + 4);
	if( *(int32*)SVREG$1 != 0 ) goto label$1571;
	{
		FBSTRING TMP$886$2;
		FBSTRING TMP$887$2;
		if( *(int64*)((uint8*)SVREG$1 + 24) == 0ll ) goto label$1573;
		{
			OUTP( (uint8*)"fld1" );
			OUTP( (uint8*)"fchs" );
		}
		goto label$1572;
		label$1573:;
		{
			OUTP( (uint8*)"fldz" );
		}
		label$1572:;
		__builtin_memset( &TMP$887$2, 0, 12 );
		__builtin_memset( &TMP$886$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$886$2, (void*)"fstp ", 6, (void*)&DST$1, -1 );
		fb_StrAssign( (void*)&TMP$887$2, -1, (void*)vr$15, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$887$2 );
		fb_StrDelete( (FBSTRING*)&TMP$887$2 );
		fb_StrDelete( (FBSTRING*)&DST$1 );
		fb_StrDelete( (FBSTRING*)&SRC$1 );
		goto label$1568;
	}
	label$1571:;
	label$1570:;
	if( SDSIZE$1 != 1 ) goto label$1575;
	{
		FBSTRING TMP$888$2;
		FBSTRING TMP$889$2;
		FBSTRING TMP$890$2;
		FBSTRING TMP$891$2;
		FBSTRING AUX$2;
		__builtin_memset( &AUX$2, 0, 12 );
		int32 ISFREE$2;
		__builtin_memset( &ISFREE$2, 0, 4 );
		int32 REG$2;
		__builtin_memset( &REG$2, 0, 4 );
		int32 vr$23 = HFINDREGNOTINVREG( SVREG$1, 0 );
		REG$2 = vr$23;
		uint8* vr$24 = HGETREGNAME( 8, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1, (void*)vr$24, 0, 0 );
		int32 vr$26 = HISREGFREE( 0, REG$2 );
		ISFREE$2 = vr$26;
		if( ISFREE$2 != 0 ) goto label$1577;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1577:;
		label$1576:;
		__builtin_memset( &TMP$891$2, 0, 12 );
		__builtin_memset( &TMP$888$2, 0, 12 );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$888$2, (void*)"movzx ", 7, (void*)&AUX$2, -1 );
		__builtin_memset( &TMP$889$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$889$2, (void*)vr$32, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$890$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$890$2, (void*)vr$35, -1, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$891$2, -1, (void*)vr$38, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$891$2 );
		fb_StrDelete( (FBSTRING*)&TMP$891$2 );
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0 ) goto label$1579;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1579:;
		label$1578:;
		fb_StrDelete( (FBSTRING*)&AUX$2 );
	}
	goto label$1574;
	label$1575:;
	{
		FBSTRING TMP$892$2;
		FBSTRING TMP$893$2;
		__builtin_memset( &TMP$893$2, 0, 12 );
		__builtin_memset( &TMP$892$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$892$2, (void*)"fild ", 6, (void*)&SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$893$2, -1, (void*)vr$46, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$893$2 );
		fb_StrDelete( (FBSTRING*)&TMP$893$2 );
	}
	label$1574:;
	OUTP( (uint8*)"fchs" );
	__builtin_memset( &TMP$895$1, 0, 12 );
	__builtin_memset( &TMP$894$1, 0, 12 );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$894$1, (void*)"fstp ", 6, (void*)&DST$1, -1 );
	fb_StrAssign( (void*)&TMP$895$1, -1, (void*)vr$53, -1, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$895$1 );
	fb_StrDelete( (FBSTRING*)&TMP$895$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1568:;
}

static void _EMITLOADB2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1580:;
	FBSTRING DST1$1;
	__builtin_memset( &DST1$1, 0, 12 );
	FBSTRING DST2$1;
	__builtin_memset( &DST2$1, 0, 12 );
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	if( *(int32*)SVREG$1 != 0 ) goto label$1583;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) == 0ll ) goto label$1585;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)"-1" );
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"-1" );
		}
		goto label$1584;
		label$1585:;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)"0" );
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
		}
		label$1584:;
	}
	goto label$1582;
	label$1583:;
	{
		FBSTRING TMP$896$2;
		FBSTRING TMP$897$2;
		FBSTRING TMP$898$2;
		FBSTRING TMP$899$2;
		FBSTRING TMP$900$2;
		FBSTRING TMP$901$2;
		FBSTRING SRC$2;
		__builtin_memset( &SRC$2, 0, 12 );
		HPREPOPERAND( SVREG$1, &SRC$2, -2147483648u, 0, 0, -1 );
		__builtin_memset( &TMP$899$2, 0, 12 );
		__builtin_memset( &TMP$896$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$896$2, (void*)"movzx ", 7, (void*)&DST1$1, -1 );
		__builtin_memset( &TMP$897$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$897$2, (void*)vr$13, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$898$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$898$2, (void*)vr$16, -1, (void*)&SRC$2, -1 );
		fb_StrAssign( (void*)&TMP$899$2, -1, (void*)vr$19, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$899$2 );
		fb_StrDelete( (FBSTRING*)&TMP$899$2 );
		__builtin_memset( &TMP$901$2, 0, 12 );
		__builtin_memset( &TMP$900$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$900$2, (void*)"neg ", 5, (void*)&DST1$1, -1 );
		fb_StrAssign( (void*)&TMP$901$2, -1, (void*)vr$26, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$901$2 );
		fb_StrDelete( (FBSTRING*)&TMP$901$2 );
		HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)*(uint8**)&DST1$1 );
		fb_StrDelete( (FBSTRING*)&SRC$2 );
	}
	label$1582:;
	fb_StrDelete( (FBSTRING*)&DST2$1 );
	fb_StrDelete( (FBSTRING*)&DST1$1 );
	label$1581:;
}

static void _EMITSTORB2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1586:;
	_EMITLOADB2L( DVREG$1, SVREG$1 );
	label$1587:;
}

static void _EMITLOADL2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1588:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 12 );
	int32 DDSIZE$1;
	__builtin_memset( &DDSIZE$1, 0, 4 );
	FBSTRING SRC1$1;
	__builtin_memset( &SRC1$1, 0, 12 );
	FBSTRING SRC2$1;
	__builtin_memset( &SRC2$1, 0, 12 );
	FBSTRING AUX$1;
	__builtin_memset( &AUX$1, 0, 12 );
	FBSTRING AUX8$1;
	__builtin_memset( &AUX8$1, 0, 12 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	HPREPOPERAND( DVREG$1, &DST$1, -2147483648u, 0, 0, -1 );
	DDSIZE$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 32);
	if( *(int32*)SVREG$1 != 0 ) goto label$1591;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24) == 0ll ) goto label$1593;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"1" );
		}
		goto label$1592;
		label$1593:;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		}
		label$1592:;
	}
	goto label$1590;
	label$1591:;
	if( ((-(*(int32*)DVREG$1 == 4) & -(*(int32*)((uint8*)DVREG$1 + 12) != 2)) & -(*(int32*)((uint8*)DVREG$1 + 12) != 1)) == 0 ) goto label$1594;
	{
		FBSTRING TMP$902$2;
		FBSTRING TMP$903$2;
		FBSTRING TMP$904$2;
		FBSTRING TMP$905$2;
		FBSTRING TMP$906$2;
		FBSTRING TMP$907$2;
		FBSTRING TMP$908$2;
		FBSTRING TMP$909$2;
		FBSTRING TMP$910$2;
		uint8* vr$20 = HGETREGNAME( 2, *(int32*)((uint8*)DVREG$1 + 12) );
		fb_StrAssign( (void*)&AUX8$1, -1, (void*)vr$20, 0, 0 );
		uint8* vr$23 = HGETREGNAME( 8, *(int32*)((uint8*)DVREG$1 + 12) );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$23, 0, 0 );
		HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC1$1 );
		__builtin_memset( &TMP$905$2, 0, 12 );
		__builtin_memset( &TMP$902$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$902$2, (void*)"or ", 4, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$903$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$903$2, (void*)vr$30, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$904$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$904$2, (void*)vr$33, -1, (void*)&SRC2$1, -1 );
		fb_StrAssign( (void*)&TMP$905$2, -1, (void*)vr$36, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$905$2 );
		fb_StrDelete( (FBSTRING*)&TMP$905$2 );
		__builtin_memset( &TMP$908$2, 0, 12 );
		__builtin_memset( &TMP$906$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$906$2, (void*)"cmp ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$907$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$907$2, (void*)vr$43, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$908$2, -1, (void*)vr$46, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$908$2 );
		fb_StrDelete( (FBSTRING*)&TMP$908$2 );
		__builtin_memset( &TMP$910$2, 0, 12 );
		__builtin_memset( &TMP$909$2, 0, 12 );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$909$2, (void*)"setne ", 7, (void*)&AUX8$1, -1 );
		fb_StrAssign( (void*)&TMP$910$2, -1, (void*)vr$53, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$910$2 );
		fb_StrDelete( (FBSTRING*)&TMP$910$2 );
		if( DDSIZE$1 == 1 ) goto label$1596;
		{
			FBSTRING TMP$911$3;
			FBSTRING TMP$912$3;
			FBSTRING TMP$913$3;
			FBSTRING TMP$914$3;
			__builtin_memset( &TMP$914$3, 0, 12 );
			__builtin_memset( &TMP$911$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$911$3, (void*)"movzx ", 7, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$912$3, 0, 12 );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$912$3, (void*)vr$61, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$913$3, 0, 12 );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$913$3, (void*)vr$64, -1, (void*)&AUX8$1, -1 );
			fb_StrAssign( (void*)&TMP$914$3, -1, (void*)vr$67, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$914$3 );
			fb_StrDelete( (FBSTRING*)&TMP$914$3 );
		}
		label$1596:;
		label$1595:;
	}
	goto label$1590;
	label$1594:;
	{
		FBSTRING TMP$931$2;
		FBSTRING TMP$932$2;
		FBSTRING TMP$933$2;
		FBSTRING TMP$934$2;
		FBSTRING TMP$935$2;
		int32 REG$2;
		__builtin_memset( &REG$2, 0, 4 );
		int32 ISFREE$2;
		ISFREE$2 = 0;
		int32 vr$71 = HFINDREGNOTINVREG( DVREG$1, -1 );
		REG$2 = vr$71;
		uint8* vr$72 = HGETREGNAME( 2, REG$2 );
		fb_StrAssign( (void*)&AUX8$1, -1, (void*)vr$72, 0, 0 );
		uint8* vr$74 = HGETREGNAME( 8, REG$2 );
		fb_StrAssign( (void*)&AUX$1, -1, (void*)vr$74, 0, 0 );
		int32 vr$76 = HISREGFREE( 0, REG$2 );
		ISFREE$2 = vr$76;
		if( ISFREE$2 != 0 ) goto label$1598;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$1598:;
		label$1597:;
		if( *(int32*)SVREG$1 != 4 ) goto label$1600;
		{
			if( REG$2 != *(int32*)((uint8*)SVREG$1 + 12) ) goto label$1602;
			{
				FBSTRING TMP$915$4;
				FBSTRING TMP$916$4;
				FBSTRING TMP$917$4;
				FBSTRING TMP$918$4;
				__builtin_memset( &TMP$918$4, 0, 12 );
				__builtin_memset( &TMP$915$4, 0, 12 );
				FBSTRING* vr$84 = fb_StrConcat( &TMP$915$4, (void*)"or ", 4, (void*)&AUX$1, -1 );
				__builtin_memset( &TMP$916$4, 0, 12 );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$916$4, (void*)vr$84, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$917$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$917$4, (void*)vr$87, -1, (void*)&SRC2$1, -1 );
				fb_StrAssign( (void*)&TMP$918$4, -1, (void*)vr$90, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$918$4 );
				fb_StrDelete( (FBSTRING*)&TMP$918$4 );
			}
			goto label$1601;
			label$1602:;
			if( REG$2 != *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)SVREG$1 + 56) + 12) ) goto label$1603;
			{
				FBSTRING TMP$919$4;
				FBSTRING TMP$920$4;
				FBSTRING TMP$921$4;
				FBSTRING TMP$922$4;
				__builtin_memset( &TMP$922$4, 0, 12 );
				__builtin_memset( &TMP$919$4, 0, 12 );
				FBSTRING* vr$100 = fb_StrConcat( &TMP$919$4, (void*)"or ", 4, (void*)&AUX$1, -1 );
				__builtin_memset( &TMP$920$4, 0, 12 );
				FBSTRING* vr$103 = fb_StrConcat( &TMP$920$4, (void*)vr$100, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$921$4, 0, 12 );
				FBSTRING* vr$106 = fb_StrConcat( &TMP$921$4, (void*)vr$103, -1, (void*)&SRC1$1, -1 );
				fb_StrAssign( (void*)&TMP$922$4, -1, (void*)vr$106, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$922$4 );
				fb_StrDelete( (FBSTRING*)&TMP$922$4 );
			}
			goto label$1601;
			label$1603:;
			{
				FBSTRING TMP$923$4;
				FBSTRING TMP$924$4;
				FBSTRING TMP$925$4;
				FBSTRING TMP$926$4;
				HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC1$1 );
				__builtin_memset( &TMP$926$4, 0, 12 );
				__builtin_memset( &TMP$923$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$923$4, (void*)"or ", 4, (void*)&AUX$1, -1 );
				__builtin_memset( &TMP$924$4, 0, 12 );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$924$4, (void*)vr$114, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$925$4, 0, 12 );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$925$4, (void*)vr$117, -1, (void*)&SRC2$1, -1 );
				fb_StrAssign( (void*)&TMP$926$4, -1, (void*)vr$120, -1, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$926$4 );
				fb_StrDelete( (FBSTRING*)&TMP$926$4 );
			}
			label$1601:;
		}
		goto label$1599;
		label$1600:;
		{
			FBSTRING TMP$927$3;
			FBSTRING TMP$928$3;
			FBSTRING TMP$929$3;
			FBSTRING TMP$930$3;
			HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC1$1 );
			__builtin_memset( &TMP$930$3, 0, 12 );
			__builtin_memset( &TMP$927$3, 0, 12 );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$927$3, (void*)"or ", 4, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$928$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$928$3, (void*)vr$128, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$929$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$929$3, (void*)vr$131, -1, (void*)&SRC2$1, -1 );
			fb_StrAssign( (void*)&TMP$930$3, -1, (void*)vr$134, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$930$3 );
			fb_StrDelete( (FBSTRING*)&TMP$930$3 );
		}
		label$1599:;
		__builtin_memset( &TMP$933$2, 0, 12 );
		__builtin_memset( &TMP$931$2, 0, 12 );
		FBSTRING* vr$141 = fb_StrConcat( &TMP$931$2, (void*)"cmp ", 5, (void*)&AUX$1, -1 );
		__builtin_memset( &TMP$932$2, 0, 12 );
		FBSTRING* vr$144 = fb_StrConcat( &TMP$932$2, (void*)vr$141, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$933$2, -1, (void*)vr$144, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$933$2 );
		fb_StrDelete( (FBSTRING*)&TMP$933$2 );
		__builtin_memset( &TMP$935$2, 0, 12 );
		__builtin_memset( &TMP$934$2, 0, 12 );
		FBSTRING* vr$151 = fb_StrConcat( &TMP$934$2, (void*)"setne ", 7, (void*)&AUX8$1, -1 );
		fb_StrAssign( (void*)&TMP$935$2, -1, (void*)vr$151, -1, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$935$2 );
		fb_StrDelete( (FBSTRING*)&TMP$935$2 );
		if( DDSIZE$1 != 1 ) goto label$1605;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$1 );
		}
		goto label$1604;
		label$1605:;
		{
			FBSTRING TMP$936$3;
			FBSTRING TMP$937$3;
			FBSTRING TMP$938$3;
			FBSTRING TMP$939$3;
			__builtin_memset( &TMP$939$3, 0, 12 );
			__builtin_memset( &TMP$936$3, 0, 12 );
			FBSTRING* vr$159 = fb_StrConcat( &TMP$936$3, (void*)"movzx ", 7, (void*)&AUX$1, -1 );
			__builtin_memset( &TMP$937$3, 0, 12 );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$937$3, (void*)vr$159, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$938$3, 0, 12 );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$938$3, (void*)vr$162, -1, (void*)&AUX8$1, -1 );
			fb_StrAssign( (void*)&TMP$939$3, -1, (void*)vr$165, -1, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$939$3 );
			fb_StrDelete( (FBSTRING*)&TMP$939$3 );
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
		}
		label$1604:;
		if( ISFREE$2 != 0 ) goto label$1607;
		{
			HPOP( (uint8*)*(uint8**)&AUX$1 );
		}
		label$1607:;
		label$1606:;
	}
	label$1590:;
	fb_StrDelete( (FBSTRING*)&AUX8$1 );
	fb_StrDelete( (FBSTRING*)&AUX$1 );
	fb_StrDelete( (FBSTRING*)&SRC2$1 );
	fb_StrDelete( (FBSTRING*)&SRC1$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1589:;
}

static void _EMITSTORL2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1608:;
	_EMITLOADL2B( DVREG$1, SVREG$1 );
	label$1609:;
}

static int32 _INIT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1642:;
	HINITREGTB(  );
	__builtin_memcpy( (struct $12EMITDATATYPE*)((uint8*)DTYPETB$ + 112), (struct $12EMITDATATYPE*)((int32)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int32*)((uint8*)&ENV$ + 272) << (4 & 31))), 16 );
	*(int32*)((uint8*)&EMIT$ + 140) = -1;
	*(int32*)((uint8*)&EMIT$ + 144) = -1;
	uint32 IROPTIONS$1;
	IROPTIONS$1 = 66304u;
	if( *(int32*)((uint8*)&ENV$ + 116) != 1 ) goto label$1645;
	{
		IROPTIONS$1 = IROPTIONS$1 | 1u;
	}
	label$1645:;
	label$1644:;
	*($6IR_OPT*)((uint8*)&IR$ + 272) = ($6IR_OPT)(*(uint32*)((uint8*)&IR$ + 272) | IROPTIONS$1);
	EDBGINIT(  );
	fb$result$1 = -1;
	label$1643:;
	return fb$result$1;
}

static void _END( void )
{
	label$1646:;
	*(int32*)((uint8*)&EMIT$ + 140) = -1;
	*(int32*)((uint8*)&EMIT$ + 144) = -1;
	HENDREGTB(  );
	label$1647:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1648:;
	{
		if( OPT$1 != 1 ) goto label$1651;
		label$1652:;
		{
			fb$result$1 = 16;
			goto label$1649;
		}
		goto label$1650;
		label$1651:;
		{
			ERRREPORTEX( 21, (uint8*)"_GETOPTIONVALUE", 0, 1, (uint8*)0u );
		}
		label$1653:;
		label$1650:;
	}
	label$1649:;
	return fb$result$1;
}

static int32 _OPEN( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1654:;
	int32 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 584) );
	if( vr$2 == 0 ) goto label$1657;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$1657:;
	label$1656:;
	int32 vr$5 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 580) = vr$5;
	FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
	int32 vr$8 = fb_FileOpen( (FBSTRING*)vr$7, 0u, 3u, 0u, *(int32*)((uint8*)&ENV$ + 580), 0 );
	if( vr$8 == 0 ) goto label$1659;
	{
		fb$result$1 = 0;
		goto label$1655;
	}
	label$1659:;
	label$1658:;
	HWRITEHEADER(  );
	fb$result$1 = -1;
	label$1655:;
	return fb$result$1;
}

static void _CLOSE( void )
{
	label$1660:;
	EDBGINCLUDE( (uint8*)0u );
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HDECLVARIABLE );
	if( (*(int32*)((uint8*)&ENV$ + 224) & (*(int32*)((uint8*)&ENV$ + 284) & 4)) == 0 ) goto label$1663;
	{
		SYMBFOREACHGLOBAL( 3, (tmp$41)&HEMITEXPORT );
	}
	label$1663:;
	label$1662:;
	HWRITECTOR( *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 99048), -1 );
	HWRITECTOR( *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 99088), 0 );
	EDBGEMITFOOTER(  );
	int32 vr$2 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 580) );
	if( vr$2 == 0 ) goto label$1665;
	{
	}
	label$1665:;
	label$1664:;
	*(int32*)((uint8*)&ENV$ + 580) = 0;
	label$1661:;
}

static uint8* _PROCGETFRAMEREGNAME( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1666:;
	static uint8 SNAME$1[4] = "ebp";
	fb$result$1 = (uint8*)SNAME$1;
	label$1667:;
	return fb$result$1;
}

static int32 _ISREGPRESERVED( int32 DCLASS$1, int32 REG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1668:;
	if( DCLASS$1 != 1 ) goto label$1671;
	{
		fb$result$1 = 0;
		goto label$1669;
	}
	label$1671:;
	label$1670:;
	{
		uint32 TMP$967$2;
		TMP$967$2 = (uint32)REG$1;
		goto label$1673;
		label$1674:;
		{
			fb$result$1 = 0;
			goto label$1669;
		}
		goto label$1672;
		label$1675:;
		{
			fb$result$1 = -1;
			goto label$1669;
		}
		goto label$1672;
		label$1673:;
		static const void* tmp$1022[6] = {
			&&label$1674,
			&&label$1675,
			&&label$1675,
			&&label$1674,
			&&label$1675,
			&&label$1674,
		};
		if( TMP$967$2 > 5u ) goto label$1675;
		goto *tmp$1022[TMP$967$2 - 0u];
		label$1672:;
	}
	label$1669:;
	return fb$result$1;
}

static void _GETARGREG( int32 DTYPE$1, int32 DCLASS$1, int32 REGNUM$1, int32* R1$1 )
{
	label$1676:;
	{
		if( REGNUM$1 != 1 ) goto label$1679;
		label$1680:;
		{
			*R1$1 = 3;
		}
		goto label$1678;
		label$1679:;
		if( REGNUM$1 != 2 ) goto label$1681;
		label$1682:;
		{
			*R1$1 = 0;
		}
		goto label$1678;
		label$1681:;
		{
			*R1$1 = -1;
		}
		label$1683:;
		label$1678:;
	}
	label$1677:;
}

static void _GETRESULTREG( int32 DTYPE$1, int32 DCLASS$1, int32* R1$1, int32* R2$1 )
{
	label$1684:;
	if( DCLASS$1 != 0 ) goto label$1687;
	{
		int32 TMP$968$2;
		int32 TMP$969$2;
		*R1$1 = 5;
		if( (DTYPE$1 & 480) == 0 ) goto label$1688;
		TMP$968$2 = 24;
		goto label$1888;
		label$1688:;
		TMP$968$2 = DTYPE$1 & 31;
		label$1888:;
		if( (DTYPE$1 & 480) == 0 ) goto label$1689;
		TMP$969$2 = 24;
		goto label$1889;
		label$1689:;
		TMP$969$2 = DTYPE$1 & 31;
		label$1889:;
		if( (-(TMP$968$2 == 13) | -(TMP$969$2 == 14)) == 0 ) goto label$1691;
		{
			*R2$1 = 0;
		}
		goto label$1690;
		label$1691:;
		{
			*R2$1 = -1;
		}
		label$1690:;
	}
	goto label$1686;
	label$1687:;
	{
		*R1$1 = 0;
		*R2$1 = -1;
	}
	label$1686:;
	label$1685:;
}

static int32 _GETFREEPRESERVEDREG( int32 DCLASS$1, int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1692:;
	fb$result$1 = -1;
	if( DCLASS$1 != 1 ) goto label$1695;
	{
		goto label$1693;
	}
	label$1695:;
	label$1694:;
	int32 vr$3 = (*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) + 16))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8), 4 );
	if( vr$3 == 0 ) goto label$1697;
	{
		fb$result$1 = 4;
	}
	goto label$1696;
	label$1697:;
	int32 vr$9 = (*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) + 16))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8), 2 );
	if( vr$9 == 0 ) goto label$1698;
	{
		int32 TMP$970$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$1699;
		TMP$970$2 = 24;
		goto label$1890;
		label$1699:;
		TMP$970$2 = DTYPE$1 & 31;
		label$1890:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$970$2 * 28)) + 4) == 1 ) goto label$1701;
		{
			fb$result$1 = 2;
		}
		label$1701:;
		label$1700:;
	}
	goto label$1696;
	label$1698:;
	int32 vr$18 = (*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) + 16))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8), 1 );
	if( vr$18 == 0 ) goto label$1702;
	{
		int32 TMP$971$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$1703;
		TMP$971$2 = 24;
		goto label$1891;
		label$1703:;
		TMP$971$2 = DTYPE$1 & 31;
		label$1891:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$971$2 * 28)) + 4) == 1 ) goto label$1705;
		{
			fb$result$1 = 1;
		}
		label$1705:;
		label$1704:;
	}
	label$1702:;
	label$1696:;
	label$1693:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$1706:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 8) = 0;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 12) = 0;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 4) = 8;
	EDBGPROCBEGIN( PROC$1 );
	label$1707:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$1708:;
	EDBGPROCEND( PROC$1 );
	label$1709:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* S$1 )
{
	label$1710:;
	label$1712:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$1713;
	{
		{
			$12FB_SYMBCLASS TMP$972$3;
			TMP$972$3 = *($12FB_SYMBCLASS*)S$1;
			if( TMP$972$3 != 15 ) goto label$1715;
			label$1716:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)S$1 + 64) );
			}
			goto label$1714;
			label$1715:;
			if( TMP$972$3 != 1 ) goto label$1717;
			label$1718:;
			{
				if( (*(int32*)((uint8*)S$1 + 4) & 2) == 0 ) goto label$1720;
				{
					HDECLVARIABLE( S$1 );
				}
				label$1720:;
				label$1719:;
			}
			label$1717:;
			label$1714:;
		}
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
	}
	goto label$1712;
	label$1713:;
	label$1711:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$1721:;
	int32 OFS$1;
	int32 LGT$1;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 4) == 0 ) goto label$1724;
	{
		goto label$1722;
	}
	label$1724:;
	label$1723:;
	int64 vr$2 = SYMBGETREALSIZE( SYM$1 );
	LGT$1 = (int32)vr$2;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 8) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 8) + ((LGT$1 + 3) & -4);
	OFS$1 = -(*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 8));
	if( -OFS$1 <= *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 12) ) goto label$1726;
	{
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 12) = -OFS$1;
	}
	label$1726:;
	label$1725:;
	*(int64*)((uint8*)SYM$1 + 48) = (int64)OFS$1;
	label$1722:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$1727:;
	int32 LGT$1;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$1730;
	{
		LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
	}
	goto label$1729;
	label$1730:;
	{
		LGT$1 = *(int32*)((uint8*)&ENV$ + 296);
	}
	label$1729:;
	{
		$11FB_FUNCMODE TMP$973$2;
		TMP$973$2 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 84);
		if( TMP$973$2 == 5 ) goto label$1733;
		label$1734:;
		if( TMP$973$2 != 6 ) goto label$1732;
		label$1733:;
		{
			struct $8FBSYMBOL* PARAM$3;
			PARAM$3 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
			label$1735:;
			if( PARAM$3 == (struct $8FBSYMBOL*)0u ) goto label$1736;
			{
				if( *(int32*)((uint8*)PARAM$3 + 76) == 0 ) goto label$1738;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)PARAM$3 + 60) != SYM$1 ) goto label$1740;
					{
						_PROCALLOCLOCAL( PROC$1, SYM$1 );
						goto label$1728;
					}
					label$1740:;
					label$1739:;
				}
				label$1738:;
				label$1737:;
				PARAM$3 = *(struct $8FBSYMBOL**)((uint8*)PARAM$3 + 176);
			}
			goto label$1735;
			label$1736:;
		}
		label$1732:;
		label$1731:;
	}
	*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 4);
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 4) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 4) + ((LGT$1 + 3) & -4);
	label$1728:;
}

static void _PROCHEADER( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	label$1741:;
	EMITRESET(  );
	EDBGPROCEMITBEGIN( PROC$1 );
	label$1742:;
}

static void _PROCFOOTER( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	int32 TMP$974$1;
	int32 TMP$983$1;
	label$1743:;
	int32 OLDPOS$1;
	int32 ISPUBLIC$1;
	uint8* MANGLEDNAME$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( PROC$1 );
	MANGLEDNAME$1 = vr$0;
	struct $10FB_PROCEXT* PROCEXT$1;
	PROCEXT$1 = *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112);
	int32 ISLINUX$1;
	int32 HASUNWIND$1;
	ISLINUX$1 = -(*(int32*)((uint8*)&ENV$ + 108) == 2);
	if( ISLINUX$1 == 0 ) goto label$1745;
	int32 vr$3 = FBGETOPTION( 21 );
	TMP$974$1 = -(vr$3 != 0);
	goto label$1892;
	label$1745:;
	TMP$974$1 = 0;
	label$1892:;
	HASUNWIND$1 = TMP$974$1;
	ISPUBLIC$1 = -((*(int32*)((uint8*)PROC$1 + 4) & 32) != 0);
	_SETSECTION( 3, 0 );
	EDBGEMITPROCHEADER( PROC$1 );
	HALIGN( 16 );
	if( ISPUBLIC$1 == 0 ) goto label$1747;
	{
		HPUBLIC( MANGLEDNAME$1, -((*(int32*)((uint8*)PROC$1 + 4) & 256) != 0) );
	}
	label$1747:;
	label$1746:;
	HLABEL( MANGLEDNAME$1 );
	if( ISLINUX$1 == 0 ) goto label$1749;
	{
		FBSTRING TMP$977$2;
		FBSTRING TMP$978$2;
		FBSTRING TMP$979$2;
		FBSTRING TMP$980$2;
		__builtin_memset( &TMP$980$2, 0, 12 );
		__builtin_memset( &TMP$977$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$977$2, (void*)".type ", 7, (void*)MANGLEDNAME$1, 0 );
		__builtin_memset( &TMP$978$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$978$2, (void*)vr$14, -1, (void*)", @function", 12 );
		__builtin_memset( &TMP$979$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$979$2, (void*)vr$17, -1, (void*)"\x0A", 2 );
		fb_StrAssign( (void*)&TMP$980$2, -1, (void*)vr$20, -1, 0 );
		OUTEX( (uint8*)*(uint8**)&TMP$980$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$980$2 );
		if( HASUNWIND$1 == 0 ) goto label$1751;
		{
			OUTEX( (uint8*)".cfi_startproc\x0A", 0 );
		}
		label$1751:;
		label$1750:;
	}
	label$1749:;
	label$1748:;
	HCREATEFRAME( PROC$1 );
	EDBGEMITLINEFLUSH( PROC$1, *(int32*)((uint8*)PROCEXT$1 + 16), PROC$1 );
	EMITFLUSH(  );
	HDESTROYFRAME( PROC$1, BYTESTOPOP$1 );
	if( ISLINUX$1 == 0 ) goto label$1752;
	TMP$983$1 = -(HASUNWIND$1 != 0);
	goto label$1893;
	label$1752:;
	TMP$983$1 = 0;
	label$1893:;
	if( TMP$983$1 == 0 ) goto label$1754;
	{
		OUTEX( (uint8*)".cfi_endproc\x0A", 0 );
	}
	label$1754:;
	label$1753:;
	EDBGEMITLINEFLUSH( PROC$1, *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20), EXITLABEL$1 );
	EDBGEMITPROCFOOTER( PROC$1, INITLABEL$1, EXITLABEL$1 );
	label$1744:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$1755:;
	EDBGSCOPEBEGIN( S$1 );
	label$1756:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$1757:;
	EDBGSCOPEEND( S$1 );
	label$1758:;
}

static void _SETSECTION( int32 SECTION$1, int32 PRIORITY$1 )
{
	label$1759:;
	uint8* SEC$1;
	uint8* vr$0 = _GETSECTIONSTRING( SECTION$1, PRIORITY$1 );
	SEC$1 = vr$0;
	if( SEC$1 != (uint8*)0u ) goto label$1762;
	{
		goto label$1760;
	}
	label$1762:;
	label$1761:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)SEC$1, 0, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$1760:;
}

static uint8* _GETTYPESTRING( int32 DTYPE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1763:;
	{
		int32 TMP$986$2;
		uint32 TMP$987$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$1765;
		TMP$986$2 = 24;
		goto label$1894;
		label$1765:;
		TMP$986$2 = DTYPE$1 & 31;
		label$1894:;
		TMP$987$2 = (uint32)TMP$986$2;
		goto label$1767;
		label$1768:;
		{
			fb$result$1 = (uint8*)".byte";
		}
		goto label$1766;
		label$1769:;
		{
			fb$result$1 = (uint8*)".short";
		}
		goto label$1766;
		label$1770:;
		{
			fb$result$1 = (uint8*)".int";
		}
		goto label$1766;
		label$1771:;
		{
			fb$result$1 = (uint8*)".long";
		}
		goto label$1766;
		label$1772:;
		{
			fb$result$1 = (uint8*)".quad";
		}
		goto label$1766;
		label$1773:;
		{
			fb$result$1 = (uint8*)".ascii";
		}
		goto label$1766;
		label$1774:;
		{
			fb$result$1 = (uint8*)".INVALID";
		}
		goto label$1766;
		label$1775:;
		{
			fb$result$1 = (uint8*)".long";
		}
		goto label$1766;
		label$1776:;
		{
			fb$result$1 = (uint8*)".INVALID";
		}
		goto label$1766;
		label$1767:;
		static const void* tmp$1023[24] = {
			&&label$1768,
			&&label$1768,
			&&label$1768,
			&&label$1773,
			&&label$1769,
			&&label$1769,
			&&label$1773,
			&&label$1770,
			&&label$1770,
			&&label$1770,
			&&label$1771,
			&&label$1771,
			&&label$1772,
			&&label$1772,
			&&label$1771,
			&&label$1772,
			&&label$1774,
			&&label$1773,
			&&label$1776,
			&&label$1774,
			&&label$1776,
			&&label$1776,
			&&label$1776,
			&&label$1775,
		};
		if( (TMP$987$2 - 1u) > 23u ) goto label$1776;
		goto *tmp$1023[TMP$987$2 - 1u];
		label$1766:;
	}
	label$1764:;
	return fb$result$1;
}

static uint8* _GETSECTIONSTRING( int32 SECTION$1, int32 PRIORITY$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1777:;
	static FBSTRING OSTR$1;
	if( (-(SECTION$1 == *(int32*)((uint8*)&EMIT$ + 140)) & -(PRIORITY$1 == *(int32*)((uint8*)&EMIT$ + 144))) == 0 ) goto label$1780;
	{
		fb$result$1 = (uint8*)0u;
		goto label$1778;
	}
	label$1780:;
	label$1779:;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	int32 vr$4 = FBGETOPTION( 3 );
	if( vr$4 == 9 ) goto label$1782;
	{
		fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)".section ", 10, 0 );
	}
	label$1782:;
	label$1781:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)".", 2, 0 );
	{
		uint32 TMP$996$2;
		TMP$996$2 = (uint32)SECTION$1;
		goto label$1784;
		label$1785:;
		{
			{
				uint32 TMP$997$4;
				int32 vr$5 = FBGETOPTION( 3 );
				TMP$997$4 = (uint32)vr$5;
				goto label$1787;
				label$1788:;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"rdata", 6, 0 );
				}
				goto label$1786;
				label$1789:;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"const", 6, 0 );
				}
				goto label$1786;
				label$1790:;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"rodata", 7, 0 );
				}
				goto label$1786;
				label$1787:;
				static const void* tmp$1024[10] = {
					&&label$1788,
					&&label$1788,
					&&label$1790,
					&&label$1788,
					&&label$1788,
					&&label$1790,
					&&label$1790,
					&&label$1790,
					&&label$1790,
					&&label$1789,
				};
				if( TMP$997$4 > 9u ) goto label$1790;
				goto *tmp$1024[TMP$997$4 - 0u];
				label$1786:;
			}
		}
		goto label$1783;
		label$1791:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"data", 5, 0 );
		}
		goto label$1783;
		label$1792:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"bss", 4, 0 );
		}
		goto label$1783;
		label$1793:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"text", 5, 0 );
		}
		goto label$1783;
		label$1794:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"drectve", 8, 0 );
		}
		goto label$1783;
		label$1795:;
		{
			int32 vr$6 = FBGETOPTION( 3 );
			if( vr$6 != 9 ) goto label$1797;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"section __DATA,fbctinf", 23, 0 );
			}
			goto label$1796;
			label$1797:;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"fbctinf", 8, 0 );
			}
			label$1796:;
		}
		goto label$1783;
		label$1798:;
		{
			int32 vr$7 = FBGETOPTION( 3 );
			if( vr$7 != 9 ) goto label$1800;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"constructor", 12, 0 );
			}
			goto label$1799;
			label$1800:;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"ctors", 6, 0 );
				if( PRIORITY$1 <= 0 ) goto label$1802;
				{
					FBSTRING TMP$1010$5;
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)".", 2, 0 );
					FBSTRING* vr$9 = fb_IntToStr( 65535 - PRIORITY$1 );
					__builtin_memset( &TMP$1010$5, 0, 12 );
					FBSTRING* vr$12 = fb_StrConcat( &TMP$1010$5, (void*)"00000", 6, (void*)vr$9, -1 );
					FBSTRING* vr$13 = fb_RIGHT( (FBSTRING*)vr$12, 5 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$13, -1, 0 );
				}
				label$1802:;
				label$1801:;
				if( *(int32*)((uint8*)&ENV$ + 108) != 2 ) goto label$1804;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", \x22" "aw\x22, @progbits", 18, 0 );
				}
				label$1804:;
				label$1803:;
			}
			label$1799:;
		}
		goto label$1783;
		label$1805:;
		{
			int32 vr$14 = FBGETOPTION( 3 );
			if( vr$14 != 9 ) goto label$1807;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"destructor", 11, 0 );
			}
			goto label$1806;
			label$1807:;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"dtors", 6, 0 );
				if( PRIORITY$1 <= 0 ) goto label$1809;
				{
					FBSTRING TMP$1019$5;
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)".", 2, 0 );
					FBSTRING* vr$16 = fb_IntToStr( 65535 - PRIORITY$1 );
					__builtin_memset( &TMP$1019$5, 0, 12 );
					FBSTRING* vr$19 = fb_StrConcat( &TMP$1019$5, (void*)"00000", 6, (void*)vr$16, -1 );
					FBSTRING* vr$20 = fb_RIGHT( (FBSTRING*)vr$19, 5 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$20, -1, 0 );
				}
				label$1809:;
				label$1808:;
				if( *(int32*)((uint8*)&ENV$ + 108) != 2 ) goto label$1811;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)", \x22" "aw\x22, @progbits", 18, 0 );
				}
				label$1811:;
				label$1810:;
			}
			label$1806:;
		}
		goto label$1783;
		label$1784:;
		static const void* tmp$1025[8] = {
			&&label$1785,
			&&label$1791,
			&&label$1792,
			&&label$1793,
			&&label$1794,
			&&label$1798,
			&&label$1805,
			&&label$1795,
		};
		if( TMP$996$2 > 7u ) goto label$1783;
		goto *tmp$1025[TMP$996$2 - 0u];
		label$1783:;
	}
	fb$result$1 = (uint8*)*(uint8**)&OSTR$1;
	*(int32*)((uint8*)&EMIT$ + 140) = SECTION$1;
	*(int32*)((uint8*)&EMIT$ + 144) = PRIORITY$1;
	label$1778:;
	return fb$result$1;
}
