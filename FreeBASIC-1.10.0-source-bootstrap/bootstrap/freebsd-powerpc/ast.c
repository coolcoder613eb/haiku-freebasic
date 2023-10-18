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
typedef int32 $15AST_LINK_RETURN;
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
typedef struct $6IRVREG* (*tmp$82)( struct $7ASTNODE* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__ast( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTPROCLISTINIT( void );
void ASTPROCLISTEND( void );
void ASTCALLINIT( void );
void ASTCALLEND( void );
void ASTMISCINIT( void );
void ASTMISCEND( void );
void ASTDATASTMTINIT( void );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
void ASTCLONECALL( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTDELCALL( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
struct $7ASTNODE* ASTGETEFFECTIVENODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREBUILDWITHOUTEFFECTIVEPART( struct $7ASTNODE* );
int32 ASTCANTAKEADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
void ASTREPLACESYMBOLONTREE( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTDTORLISTADDREF( struct $8FBSYMBOL* );
void ASTDTORLISTREMOVEREF( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOADNOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADASSIGN( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCONV( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADBOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADUOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCONST( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADVAR( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADIDX( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADDEREF( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCALL( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCALLCTOR( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADADDROF( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLOAD( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADBRANCH( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADIIF( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADOFFSET( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLINK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADFIELD( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADSTACK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLABEL( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLIT( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADASM( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADJMPTB( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLOOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADDBG( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADMEM( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADBOUNDCHK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADPTRCHK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADSCOPEBEGIN( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADSCOPEEND( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADDECL( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADNIDXARRAY( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADMACRO( struct $7ASTNODE* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
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
extern struct $10AST_OPINFO AST_OPTB$[121];
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
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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
static tmp$82 AST_LOADCALLBACKS$[45] = { (tmp$82)&ASTLOADNOP, (tmp$82)&ASTLOADLOAD, (tmp$82)&ASTLOADASSIGN, (tmp$82)&ASTLOADBOP, (tmp$82)&ASTLOADUOP, (tmp$82)&ASTLOADCONV, (tmp$82)&ASTLOADADDROF, (tmp$82)&ASTLOADBRANCH, (tmp$82)&ASTLOADJMPTB, (tmp$82)&ASTLOADCALL, (tmp$82)&ASTLOADCALLCTOR, (tmp$82)&ASTLOADSTACK, (tmp$82)&ASTLOADMEM, (tmp$82)&ASTLOADLOOP, (tmp$82)0u, (tmp$82)&ASTLOADLINK, (tmp$82)&ASTLOADCONST, (tmp$82)&ASTLOADVAR, (tmp$82)&ASTLOADIDX, (tmp$82)&ASTLOADFIELD, (tmp$82)&ASTLOADDEREF, (tmp$82)&ASTLOADLABEL, (tmp$82)0u, (tmp$82)&ASTLOADOFFSET, (tmp$82)&ASTLOADDECL, (tmp$82)&ASTLOADNIDXARRAY, (tmp$82)&ASTLOADIIF, (tmp$82)&ASTLOADLIT, (tmp$82)&ASTLOADASM, (tmp$82)0u, (tmp$82)&ASTLOADDBG, (tmp$82)&ASTLOADBOUNDCHK, (tmp$82)&ASTLOADPTRCHK, (tmp$82)&ASTLOADSCOPEBEGIN, (tmp$82)&ASTLOADSCOPEEND, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)0u, (tmp$82)&ASTLOADMACRO };
struct $6ASTCTX AST$;
struct $10AST_OPINFO AST_OPTB$[121] = { { 2, 5, (uint8*)"let" }, { 3, 5, (uint8*)"+=", 28 }, { 3, 5, (uint8*)"-=", 29 }, { 3, 5, (uint8*)"*=", 30 }, { 3, 5, (uint8*)"/=", 31 }, { 3, 5, (uint8*)"/=", 32 }, { 3, 5, (uint8*)"mod=", 33 }, { 3, 5, (uint8*)"and=", 34 }, { 3, 5, (uint8*)"or=", 35 }, { 3, 5, (uint8*)"andalso=", 36 }, { 3, 5, (uint8*)"orelse=", 37 }, { 3, 5, (uint8*)"xor=", 38 }, { 3, 5, (uint8*)"eqv=", 39 }, { 3, 5, (uint8*)"imp=", 40 }, { 3, 5, (uint8*)"shl=", 41 }, { 3, 5, (uint8*)"shr=", 42 }, { 3, 5, (uint8*)"pow=", 43 }, { 3, 5, (uint8*)"&=", 44 }, { 12, 1, (uint8*)"new" }, { 12, 1, (uint8*)"new[]" }, { 12, 5, (uint8*)"delete" }, { 12, 5, (uint8*)"delete[]" }, { 6, 1, (uint8*)"@" }, { 3, 1, (uint8*)"[]" }, { 14, 5, (uint8*)"for" }, { 14, 5, (uint8*)"step" }, { 14, 1, (uint8*)"next" }, { 5, 1, (uint8*)"cast" }, { 3, 2, (uint8*)"+", 1 }, { 3, 0, (uint8*)"-", 2 }, { 3, 2, (uint8*)"*", 3 }, { 3, 0, (uint8*)"/", 4 }, { 3, 0, (uint8*)"/", 5 }, { 3, 0, (uint8*)"mod", 6 }, { 3, 2, (uint8*)"and", 7 }, { 3, 2, (uint8*)"or", 8 }, { 3, 2, (uint8*)"andalso", 9 }, { 3, 2, (uint8*)"orelse", 10 }, { 3, 2, (uint8*)"xor", 11 }, { 3, 0, (uint8*)"eqv", 12 }, { 3, 0, (uint8*)"imp", 13 }, { 3, 0, (uint8*)"shl", 14 }, { 3, 0, (uint8*)"shr", 15 }, { 3, 0, (uint8*)"pow", 16 }, { 3, 0, (uint8*)"&", 17 }, { 14, 10, (uint8*)"=" }, { 14, 8, (uint8*)">" }, { 14, 8, (uint8*)"<" }, { 14, 10, (uint8*)"<>" }, { 14, 8, (uint8*)">=" }, { 14, 8, (uint8*)"<=" }, { 14, 0, (uint8*)"is" }, { 4, 0, (uint8*)"not" }, { 4, 0, (uint8*)"+" }, { 4, 0, (uint8*)"-" }, { 4, 0, (uint8*)"HADD" }, { 4, 0, (uint8*)"abs" }, { 4, 0, (uint8*)"sgn" }, { 4, 0, (uint8*)"sin" }, { 4, 0, (uint8*)"asin" }, { 4, 0, (uint8*)"cos" }, { 4, 0, (uint8*)"acos" }, { 4, 0, (uint8*)"tan" }, { 4, 0, (uint8*)"atan" }, { 3, 0, (uint8*)"atn2" }, { 4, 0, (uint8*)"sqr" }, { 4, 0, (uint8*)"rsqrt" }, { 4, 0, (uint8*)"rcp" }, { 4, 0, (uint8*)"log" }, { 4, 0, (uint8*)"exp" }, { 4, 0, (uint8*)"int" }, { 4, 0, (uint8*)"fix" }, { 4, 0, (uint8*)"frac" }, { 4, 0, (uint8*)"len" }, { 4, 0, (uint8*)"convd2s" }, { 4, 0, (uint8*)"swzrep" }, { 6, 0, (uint8*)"*" }, { 6, 0, (uint8*)"->" }, { 12, 0, (uint8*)"new", 18 }, { 12, 0, (uint8*)"new[]", 19 }, { 12, 0, (uint8*)"delete", 20 }, { 12, 0, (uint8*)"delete[]", 21 }, { 5, 0, (uint8*)"cint" }, { 5, 0, (uint8*)"cflt" }, { 5, 0, (uint8*)"cbool" }, { 1, 0, (uint8*)"load" }, { 1, 0, (uint8*)"lres" }, { 2, 0, (uint8*)"spill" }, { 11, 0, (uint8*)"push" }, { 11, 0, (uint8*)"pop" }, { 11, 0, (uint8*)"pudt" }, { 11, 0, (uint8*)"stka" }, { 7, 0, (uint8*)"jeq" }, { 7, 0, (uint8*)"jgt" }, { 7, 0, (uint8*)"jlt" }, { 7, 0, (uint8*)"jne" }, { 7, 0, (uint8*)"jge" }, { 7, 0, (uint8*)"jle" }, { 7, 0, (uint8*)"jmp" }, { 7, 0, (uint8*)"call" }, { 7, 0, (uint8*)"lbl" }, { 7, 0, (uint8*)"ret" }, { 9, 0, (uint8*)"calf" }, { 9, 0, (uint8*)"calp" }, { 9, 0, (uint8*)"jmpp" }, { 12, 0, (uint8*)"mmov" }, { 12, 0, (uint8*)"mswp" }, { 12, 0, (uint8*)"mclr" }, { 12, 0, (uint8*)"stkc" }, { 44, 0, (uint8*)"va_start" }, { 44, 0, (uint8*)"va_end" }, { 44, 0, (uint8*)"va_copy" }, { 44, 0, (uint8*)"va_arg" }, { 30, 0, (uint8*)"lini" }, { 30, 0, (uint8*)"lend" }, { 30, 0, (uint8*)"sini" }, { 30, 0, (uint8*)"send" }, { 27, 0, (uint8*)"rem" }, { 27, 0, (uint8*)"asm" } };

void ASTINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)&AST$, 8192, 80, 6 );
	*(int32*)((uint8*)&AST$ + 136) = -1;
	*(int32*)((uint8*)&AST$ + 140) = 0;
	*(int32*)((uint8*)&AST$ + 144) = 0;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 132) = (struct $7ASTNODE*)0u;
	*(int32*)((uint8*)&AST$ + 232) = 0;
	ASTCALLINIT(  );
	ASTPROCLISTINIT(  );
	ASTDATASTMTINIT(  );
	ASTMISCINIT(  );
	LISTINIT( (struct $5TLIST*)((uint8*)&AST$ + 200), 16, 12, 6 );
	label$11:;
}

void ASTEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&AST$ + 200) );
	ASTMISCEND(  );
	ASTPROCLISTEND(  );
	ASTCALLEND(  );
	LISTEND( (struct $5TLIST*)&AST$ );
	label$13:;
}

struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* C$1;
	struct $7ASTNODE* T$1;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$17;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$15;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( -1, -2147483648u, (struct $8FBSYMBOL*)0u );
	C$1 = vr$1;
	__builtin_memcpy( C$1, N$1, 80 );
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$19;
	{
		struct $7ASTNODE* vr$3 = ASTCLONETREE( T$1 );
		*(struct $7ASTNODE**)((uint8*)C$1 + 64) = vr$3;
	}
	label$19:;
	label$18:;
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$21;
	{
		struct $7ASTNODE* vr$6 = ASTCLONETREE( T$1 );
		*(struct $7ASTNODE**)((uint8*)C$1 + 68) = vr$6;
	}
	label$21:;
	label$20:;
	{
		$13AST_NODECLASS TMP$193$2;
		TMP$193$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$193$2 != 17 ) goto label$23;
		label$24:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)C$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$26;
			{
				if( (-(*(int32*)*(struct $8FBSYMBOL**)((uint8*)C$1 + 12) == 1) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)C$1 + 12) + 4) & 4096) != 0)) == 0 ) goto label$28;
				{
					ASTDTORLISTADDREF( *(struct $8FBSYMBOL**)((uint8*)C$1 + 12) );
				}
				label$28:;
				label$27:;
			}
			label$26:;
			label$25:;
		}
		goto label$22;
		label$23:;
		if( TMP$193$2 != 9 ) goto label$29;
		label$30:;
		{
			ASTCLONECALL( N$1, C$1 );
		}
		goto label$22;
		label$29:;
		if( TMP$193$2 != 26 ) goto label$31;
		label$32:;
		{
			struct $8FBSYMBOL* vr$19 = SYMBADDLABEL( (uint8*)0u, 4 );
			ASTREPLACESYMBOLONTREE( C$1, *(struct $8FBSYMBOL**)((uint8*)C$1 + 24), vr$19 );
		}
		goto label$22;
		label$31:;
		if( TMP$193$2 != 13 ) goto label$33;
		label$34:;
		{
			struct $8FBSYMBOL* vr$21 = SYMBADDLABEL( (uint8*)0u, 4 );
			ASTREPLACESYMBOLONTREE( C$1, *(struct $8FBSYMBOL**)((uint8*)C$1 + 32), vr$21 );
		}
		goto label$22;
		label$33:;
		if( TMP$193$2 != 36 ) goto label$35;
		label$36:;
		{
			*(int32*)((uint8*)&AST$ + 140) = *(int32*)((uint8*)&AST$ + 140) + 1;
			*(struct $8FBSYMBOL**)((uint8*)C$1 + 40) = (struct $8FBSYMBOL*)0u;
		}
		goto label$22;
		label$35:;
		if( TMP$193$2 != 19 ) goto label$37;
		label$38:;
		{
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)C$1 + 12) + 116) <= 0 ) goto label$40;
			{
				*(int32*)((uint8*)&AST$ + 144) = *(int32*)((uint8*)&AST$ + 144) + 1;
			}
			label$40:;
			label$39:;
		}
		label$37:;
		label$22:;
	}
	fb$result$1 = C$1;
	label$15:;
	return fb$result$1;
}

struct $7ASTNODE* ASTGETEFFECTIVENODE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$41:;
	if( *(int32*)N$1 != 15 ) goto label$44;
	{
		{
			int32 TMP$194$3;
			TMP$194$3 = *(int32*)((uint8*)N$1 + 24);
			if( TMP$194$3 != 1 ) goto label$46;
			label$47:;
			{
				struct $7ASTNODE* vr$4 = ASTGETEFFECTIVENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
				fb$result$1 = vr$4;
			}
			goto label$45;
			label$46:;
			if( TMP$194$3 != 2 ) goto label$48;
			label$49:;
			{
				struct $7ASTNODE* vr$6 = ASTGETEFFECTIVENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
				fb$result$1 = vr$6;
			}
			goto label$45;
			label$48:;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
			}
			label$50:;
			label$45:;
		}
	}
	goto label$43;
	label$44:;
	{
		fb$result$1 = N$1;
	}
	label$43:;
	label$42:;
	return fb$result$1;
}

int32 ASTGETEFFECTIVECLASS( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$51:;
	struct $7ASTNODE* vr$1 = ASTGETEFFECTIVENODE( N$1 );
	fb$result$1 = *(int32*)vr$1;
	label$52:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREBUILDWITHOUTEFFECTIVEPART( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$53:;
	if( *(int32*)N$1 != 15 ) goto label$56;
	{
		struct $7ASTNODE* L$2;
		L$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
		struct $7ASTNODE* R$2;
		R$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
		{
			int32 TMP$195$3;
			TMP$195$3 = *(int32*)((uint8*)N$1 + 24);
			if( TMP$195$3 != 1 ) goto label$58;
			label$59:;
			{
				struct $7ASTNODE* vr$5 = ASTREBUILDWITHOUTEFFECTIVEPART( L$2 );
				L$2 = vr$5;
			}
			goto label$57;
			label$58:;
			if( TMP$195$3 != 2 ) goto label$60;
			label$61:;
			{
				struct $7ASTNODE* vr$6 = ASTREBUILDWITHOUTEFFECTIVEPART( R$2 );
				R$2 = vr$6;
			}
			goto label$57;
			label$60:;
			{
			}
			label$62:;
			label$57:;
		}
		struct $7ASTNODE* vr$8 = ASTNEWLINK( L$2, R$2, *($15AST_LINK_RETURN*)((uint8*)N$1 + 24) );
		fb$result$1 = vr$8;
		ASTDELNODE( N$1 );
	}
	goto label$55;
	label$56:;
	{
		ASTDELTREE( N$1 );
		fb$result$1 = (struct $7ASTNODE*)0u;
	}
	label$55:;
	label$54:;
	return fb$result$1;
}

int32 ASTCANTAKEADDROF( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$63:;
	{
		uint32 TMP$196$2;
		TMP$196$2 = *(uint32*)N$1;
		goto label$66;
		label$67:;
		{
			fb$result$1 = -1;
		}
		goto label$65;
		label$68:;
		{
			fb$result$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 116) <= 0);
		}
		goto label$65;
		label$69:;
		{
			{
				int32 TMP$197$4;
				TMP$197$4 = *(int32*)((uint8*)N$1 + 24);
				if( TMP$197$4 != 1 ) goto label$71;
				label$72:;
				{
					int32 vr$7 = ASTCANTAKEADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
					fb$result$1 = vr$7;
				}
				goto label$70;
				label$71:;
				if( TMP$197$4 != 2 ) goto label$73;
				label$74:;
				{
					int32 vr$9 = ASTCANTAKEADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
					fb$result$1 = vr$9;
				}
				goto label$70;
				label$73:;
				{
					fb$result$1 = 0;
				}
				label$75:;
				label$70:;
			}
		}
		goto label$65;
		label$76:;
		{
			fb$result$1 = 0;
		}
		goto label$65;
		label$66:;
		static const void* tmp$198[27] = {
			&&label$67,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$69,
			&&label$76,
			&&label$67,
			&&label$67,
			&&label$68,
			&&label$67,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$67,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$67,
		};
		if( (TMP$196$2 - 10u) > 26u ) goto label$76;
		goto *tmp$198[TMP$196$2 - 10u];
		label$65:;
	}
	label$64:;
	return fb$result$1;
}

struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** EXPR$1 )
{
	int32 TMP$199$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$77:;
	struct $8FBSYMBOL* TEMP$1;
	struct $7ASTNODE* CONTAINER$1;
	if( *(int32*)*EXPR$1 != 19 ) goto label$79;
	TMP$199$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 12) + 116) > 0);
	goto label$88;
	label$79:;
	TMP$199$1 = 0;
	label$88:;
	if( TMP$199$1 == 0 ) goto label$81;
	{
		CONTAINER$1 = *(struct $7ASTNODE**)((uint8*)*EXPR$1 + 64);
		TEMP$1 = *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 12);
		ASTDELNODE( *EXPR$1 );
		struct $7ASTNODE* vr$13 = ASTMAKEREF( &CONTAINER$1 );
		fb$result$1 = vr$13;
		struct $7ASTNODE* vr$14 = ASTNEWFIELD( CONTAINER$1, TEMP$1 );
		*EXPR$1 = vr$14;
		goto label$78;
	}
	label$81:;
	label$80:;
	if( *(int32*)*EXPR$1 != 9 ) goto label$83;
	{
		{
			int32 TMP$200$3;
			TMP$200$3 = *(int32*)((uint8*)*EXPR$1 + 4) & 511;
			if( TMP$200$3 == 17 ) goto label$86;
			label$87:;
			if( TMP$200$3 != 7 ) goto label$85;
			label$86:;
			{
				ASTSETTYPE( *EXPR$1, (((*(int32*)((uint8*)*EXPR$1 + 4) & 31) | ((*(int32*)((uint8*)*EXPR$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)*EXPR$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)*EXPR$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 8) );
				struct $7ASTNODE* vr$41 = ASTREMSIDEFX( EXPR$1 );
				fb$result$1 = vr$41;
				struct $7ASTNODE* vr$43 = ASTNEWDEREF( *EXPR$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
				*EXPR$1 = vr$43;
				goto label$78;
			}
			label$85:;
			label$84:;
		}
	}
	label$83:;
	label$82:;
	struct $8FBSYMBOL* vr$64 = SYMBADDTEMPVAR( (((*(int32*)((uint8*)*EXPR$1 + 4) & 31) | ((*(int32*)((uint8*)*EXPR$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)*EXPR$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)*EXPR$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 8) );
	TEMP$1 = vr$64;
	struct $7ASTNODE* vr$66 = ASTNEWADDROF( *EXPR$1 );
	struct $7ASTNODE* vr$67 = ASTNEWVAR( TEMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$68 = ASTNEWASSIGN( vr$67, vr$66, 64 );
	fb$result$1 = vr$68;
	struct $7ASTNODE* vr$69 = ASTNEWVAR( TEMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$70 = ASTNEWDEREF( vr$69, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	*EXPR$1 = vr$70;
	label$78:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$89:;
	struct $8FBSYMBOL* TMP$1;
	struct $7ASTNODE* vr$2 = ASTUPDSTRCONCAT( *N$1 );
	*N$1 = vr$2;
	{
		uint32 TMP$201$2;
		TMP$201$2 = (uint32)(*(int32*)((uint8*)*N$1 + 4) & 511);
		goto label$92;
		label$93:;
		{
			struct $7ASTNODE* vr$7 = ASTMAKEREF( N$1 );
			fb$result$1 = vr$7;
		}
		goto label$91;
		label$94:;
		{
			struct $8FBSYMBOL* vr$12 = SYMBADDTEMPVAR( *(int32*)((uint8*)*N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)*N$1 + 8) );
			TMP$1 = vr$12;
			struct $7ASTNODE* vr$14 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$15 = ASTNEWASSIGN( vr$14, *N$1, 64 );
			fb$result$1 = vr$15;
			struct $7ASTNODE* vr$16 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			*N$1 = vr$16;
		}
		goto label$91;
		label$92:;
		static const void* tmp$202[17] = {
			&&label$93,
			&&label$94,
			&&label$94,
			&&label$93,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$93,
			&&label$93,
			&&label$94,
			&&label$93,
		};
		if( (TMP$201$2 - 4u) > 16u ) goto label$94;
		goto *tmp$202[TMP$201$2 - 4u];
		label$91:;
	}
	label$90:;
	return fb$result$1;
}

void ASTDELTREE( struct $7ASTNODE* N$1 )
{
	label$95:;
	struct $7ASTNODE* T$1;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$98;
	{
		goto label$96;
	}
	label$98:;
	label$97:;
	if( *(int32*)N$1 != 9 ) goto label$100;
	{
		ASTDELCALL( N$1 );
	}
	label$100:;
	label$99:;
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$102;
	{
		ASTDELTREE( T$1 );
	}
	label$102:;
	label$101:;
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	if( T$1 == (struct $7ASTNODE*)0u ) goto label$104;
	{
		ASTDELTREE( T$1 );
	}
	label$104:;
	label$103:;
	ASTDELNODE( N$1 );
	label$96:;
}

struct $7ASTNODE* ASTNEWNODE( int32 CLASS_$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$105:;
	struct $7ASTNODE* N$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)&AST$ );
	N$1 = (struct $7ASTNODE*)vr$2;
	*($13AST_NODECLASS*)N$1 = CLASS_$1;
	*(int32*)((uint8*)N$1 + 4) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 8) = SUBTYPE$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = (struct $7ASTNODE*)0u;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = (struct $7ASTNODE*)0u;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)N$1 + 16) = 0;
	fb$result$1 = N$1;
	label$106:;
	return fb$result$1;
}

void ASTDELNODE( struct $7ASTNODE* N$1 )
{
	label$107:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$110;
	{
		goto label$108;
	}
	label$110:;
	label$109:;
	if( *(int32*)N$1 != 17 ) goto label$112;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$114;
		{
			if( (-(*(int32*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) == 1) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 4) & 4096) != 0)) == 0 ) goto label$116;
			{
				ASTDTORLISTREMOVEREF( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
			}
			label$116:;
			label$115:;
		}
		label$114:;
		label$113:;
	}
	label$112:;
	label$111:;
	LISTDELNODE( (struct $5TLIST*)&AST$, (void*)N$1 );
	label$108:;
}

int32 ASTGETINVERSELOGOP( int32 OP$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$117:;
	{
		uint32 TMP$203$2;
		TMP$203$2 = (uint32)OP$1;
		goto label$120;
		label$121:;
		{
			OP$1 = 48;
		}
		goto label$119;
		label$122:;
		{
			OP$1 = 45;
		}
		goto label$119;
		label$123:;
		{
			OP$1 = 50;
		}
		goto label$119;
		label$124:;
		{
			OP$1 = 49;
		}
		goto label$119;
		label$125:;
		{
			OP$1 = 47;
		}
		goto label$119;
		label$126:;
		{
			OP$1 = 46;
		}
		goto label$119;
		label$120:;
		static const void* tmp$204[6] = {
			&&label$121,
			&&label$123,
			&&label$124,
			&&label$122,
			&&label$125,
			&&label$126,
		};
		if( (TMP$203$2 - 45u) > 5u ) goto label$119;
		goto *tmp$204[TMP$203$2 - 45u];
		label$119:;
	}
	fb$result$1 = OP$1;
	label$118:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOAD( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$127:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$130;
	{
		struct $6IRVREG* vr$1 = (*(tmp$82*)((int32)(tmp$82*)AST_LOADCALLBACKS$ + (*(int32*)N$1 << (2 & 31))))( N$1 );
		fb$result$1 = vr$1;
	}
	label$130:;
	label$129:;
	label$128:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__ast( void )
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
