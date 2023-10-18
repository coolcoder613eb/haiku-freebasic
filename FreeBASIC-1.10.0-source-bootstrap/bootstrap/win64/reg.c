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
struct $8REGCLASS;
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $11FB_DATATYPE;
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
struct $8FBSYMBOL;
typedef int64 $13AST_NODECLASS;
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
	int64 MULT;
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
typedef int64 (*tmp$83)( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint64 );
typedef int64 (*tmp$84)( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$85)( struct $8REGCLASS*, int64 );
typedef int64 (*tmp$86)( struct $8REGCLASS*, int64 );
typedef void (*tmp$87)( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
typedef int64 (*tmp$88)( struct $8REGCLASS* );
typedef struct $6IRVREG* (*tmp$89)( struct $8REGCLASS*, int64, struct $6IRVREG** );
typedef void (*tmp$90)( struct $8REGCLASS* );
struct $7REG_REG;
struct $7REG_REG {
	int64 NUM;
	struct $7REG_REG* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $7REG_REG ) == 16 );
typedef int64 $12REG_SIZEMASK;
struct $10REG_REGCTX {
	struct $7REG_REG* FREETAIL;
	struct $7REG_REG* USEDTAIL;
	int64 FREETB;
	struct $7REG_REG REGTB[8];
	$12REG_SIZEMASK SIZETB[8];
	uint64 NEXTTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_REGCTX ) == 280 );
struct $10REG_STKCTX {
	int64 REGTB[8];
	int64 FREGS;
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_STKCTX ) == 72 );
struct $8REGCLASS {
	tmp$83 ENSURE;
	tmp$83 _ALLOCATE;
	tmp$84 ALLOCATEREG;
	tmp$85 FREE;
	tmp$86 ISFREE;
	tmp$87 SETOWNER;
	tmp$88 GETMAXREGS;
	tmp$88 GETFIRST;
	tmp$86 GETNEXT;
	tmp$89 GETVREG;
	tmp$86 GETREALREG;
	tmp$90 CLEAR;
	tmp$90 DUMP;
	int64 CLASS;
	int64 ISSTACK;
	int64 REGS;
	struct $6IRVREG* VREGTB[8];
	struct $6IRVREG* VAUXPARENT[8];
	struct $10REG_REGCTX REGCTX;
	struct $10REG_STKCTX STKCTX;
};
__FB_STATIC_ASSERT( sizeof( struct $8REGCLASS ) == 608 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYI12REG_SIZEMASKE {
	$12REG_SIZEMASK* DATA;
	$12REG_SIZEMASK* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI12REG_SIZEMASKE ) == 240 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef uint64 (*tmp$76)( struct $6IRVREG* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( int64 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__reg( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
static void REGINITCLASS( struct $8REGCLASS*, struct $7FBARRAYI12REG_SIZEMASKE* );
static void SREGINITCLASS( struct $8REGCLASS*, struct $7FBARRAYI12REG_SIZEMASKE* );
static void REGPUSH( struct $8REGCLASS*, int64 );
static int64 REGPOP( struct $8REGCLASS*, int64 );
static void REGPOPREG( struct $8REGCLASS*, int64 );
static void REGCLEAR( struct $8REGCLASS* );
static int64 REGFINDFAREST( struct $8REGCLASS*, int64, int64 );
static int64 REGALLOCATE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint64 );
static int64 REGALLOCATEREG( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
static int64 REGENSURE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint64 );
static void REGSETOWNER( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
static void REGFREE( struct $8REGCLASS*, int64 );
static int64 REGISFREE( struct $8REGCLASS*, int64 );
static int64 REGGETMAXREGS( struct $8REGCLASS* );
static int64 REGGETFIRST( struct $8REGCLASS* );
static int64 REGGETNEXT( struct $8REGCLASS*, int64 );
static struct $6IRVREG* REGGETVREG( struct $8REGCLASS*, int64, struct $6IRVREG** );
static int64 REGGETREALREG( struct $8REGCLASS*, int64 );
static void REGDUMP( struct $8REGCLASS* );
static int64 SREGFINDREG( struct $8REGCLASS*, struct $6IRVREG* );
static void SREGXCHG( struct $8REGCLASS*, int64 );
static int64 SREGFINDFREEREG( struct $8REGCLASS* );
static int64 SREGFINDTOSREG( struct $8REGCLASS* );
static int64 SREGALLOCATE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint64 );
static int64 SREGALLOCATEREG( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
static int64 SREGENSURE( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint64 );
static void SREGFREE( struct $8REGCLASS*, int64 );
static int64 SREGISFREE( struct $8REGCLASS*, int64 );
static void SREGSETOWNER( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
static int64 SREGGETREALREG( struct $8REGCLASS*, int64 );
static int64 SREGGETMAXREGS( struct $8REGCLASS* );
static int64 SREGGETFIRST( struct $8REGCLASS* );
static int64 SREGGETNEXT( struct $8REGCLASS*, int64 );
static struct $6IRVREG* SREGGETVREG( struct $8REGCLASS*, int64, struct $6IRVREG** );
static void SREGDUMP( struct $8REGCLASS* );
static void SREGCLEAR( struct $8REGCLASS* );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
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
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
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
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
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
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
struct $8FBARRAY1IPvE {
	void** DATA;
	void** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPvE ) == 72 );
static struct $8FBARRAY1IPvE tmp$104$;

struct $8REGCLASS* REGNEWCLASS( int64 CLASS_$1, int64 REGS$1, struct $7FBARRAYI12REG_SIZEMASKE* SIZETB$1, int64 ISSTACK$1 )
{
	struct $8REGCLASS* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $8REGCLASS* THIS_$1;
	__builtin_memset( &THIS_$1, 0, 8ll );
	void* vr$2 = XCALLOCATE( 608 );
	THIS_$1 = (struct $8REGCLASS*)vr$2;
	*(int64*)((uint8*)THIS_$1 + 104ll) = CLASS_$1;
	*(int64*)((uint8*)THIS_$1 + 120ll) = REGS$1;
	*(int64*)((uint8*)THIS_$1 + 112ll) = ISSTACK$1;
	if( *(int64*)((uint8*)THIS_$1 + 112ll) != 0ll ) goto label$13;
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

int64 REGDELCLASS( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	fb$result$1 = 0ll;
	if( THIS_$1 != (struct $8REGCLASS*)0ull ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	free( (void*)THIS_$1 );
	fb$result$1 = -1ll;
	label$15:;
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

static void REGPUSH( struct $8REGCLASS* THIS_$1, int64 N$1 )
{
	label$18:;
	static struct $7REG_REG* R$1;
	R$1 = *(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll);
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll) = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
	*(struct $7REG_REG**)((uint8*)R$1 + 8ll) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll);
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) = R$1;
	*(int64*)R$1 = N$1;
	label$19:;
}

static int64 REGPOP( struct $8REGCLASS* THIS_$1, int64 SIZE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$20:;
	static struct $7REG_REG* R$1;
	static struct $7REG_REG* LAST$1;
	R$1 = *(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll);
	label$22:;
	if( R$1 == (struct $7REG_REG*)0ull ) goto label$23;
	{
		if( (*(int64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (*(int64*)R$1 << (3ll & 63ll))) + 152ll) & SIZE$1) == 0ll ) goto label$25;
		{
			if( *(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) != R$1 ) goto label$27;
			{
				*(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
			}
			goto label$26;
			label$27:;
			{
				*(struct $7REG_REG**)((uint8*)LAST$1 + 8ll) = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
			}
			label$26:;
			*(struct $7REG_REG**)((uint8*)R$1 + 8ll) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll);
			*(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll) = R$1;
			fb$result$1 = *(int64*)R$1;
			goto label$21;
		}
		label$25:;
		label$24:;
		LAST$1 = R$1;
		R$1 = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
	}
	goto label$22;
	label$23:;
	fb$result$1 = -1ll;
	label$21:;
	return fb$result$1;
}

static void REGPOPREG( struct $8REGCLASS* THIS_$1, int64 N$1 )
{
	label$28:;
	static struct $7REG_REG* R$1;
	static struct $7REG_REG* LAST$1;
	R$1 = *(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll);
	label$30:;
	if( R$1 == (struct $7REG_REG*)0ull ) goto label$31;
	{
		if( *(int64*)R$1 != N$1 ) goto label$33;
		{
			if( *(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) != R$1 ) goto label$35;
			{
				*(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
			}
			goto label$34;
			label$35:;
			{
				*(struct $7REG_REG**)((uint8*)LAST$1 + 8ll) = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
			}
			label$34:;
			*(struct $7REG_REG**)((uint8*)R$1 + 8ll) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll);
			*(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll) = R$1;
			goto label$29;
		}
		label$33:;
		label$32:;
		LAST$1 = R$1;
		R$1 = *(struct $7REG_REG**)((uint8*)R$1 + 8ll);
	}
	goto label$30;
	label$31:;
	ERRREPORTEX( 21ll, (uint8*)"REGPOPREG", 0ll, 1ll, (uint8*)0ull );
	label$29:;
}

static void REGCLEAR( struct $8REGCLASS* THIS_$1 )
{
	label$36:;
	static struct $7REG_REG* R$1;
	static int64 N$1;
	*(int64*)((uint8*)THIS_$1 + 272ll) = -1ll;
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) = (struct $7REG_REG*)0ull;
	*(struct $7REG_REG**)((uint8*)THIS_$1 + 264ll) = (struct $7REG_REG*)0ull;
	{
		N$1 = 0ll;
		int64 TMP$106$2;
		TMP$106$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$38;
		label$41:;
		{
			*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (N$1 << (3ll & 63ll))) + 128ll) = (struct $6IRVREG*)0ull;
			*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (N$1 << (3ll & 63ll))) + 192ll) = (struct $6IRVREG*)0ull;
			*(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (N$1 << (3ll & 63ll))) + 216ll) = 18446744073709551615ull;
			R$1 = (struct $7REG_REG*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (N$1 << (4ll & 63ll))) + 24ll);
			*(struct $7REG_REG**)((uint8*)R$1 + 8ll) = *(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll);
			*(struct $7REG_REG**)((uint8*)THIS_$1 + 256ll) = R$1;
			*(int64*)R$1 = N$1;
		}
		label$39:;
		N$1 = N$1 + 1ll;
		label$38:;
		if( N$1 <= TMP$106$2 ) goto label$41;
		label$40:;
	}
	label$37:;
}

static int64 REGFINDFAREST( struct $8REGCLASS* THIS_$1, int64 SIZE$1, int64 RESERVEDREG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$42:;
	uint64 MAXDIST$1;
	MAXDIST$1 = 0ull;
	int64 R$1;
	R$1 = -1ll;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$107$2;
		TMP$107$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$44;
		label$47:;
		{
			if( I$2 == RESERVEDREG$1 ) goto label$49;
			{
				if( (*(int64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (I$2 << (3ll & 63ll))) + 152ll) & SIZE$1) == 0ll ) goto label$51;
				{
					if( MAXDIST$1 > *(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (I$2 << (3ll & 63ll))) + 216ll) ) goto label$53;
					{
						MAXDIST$1 = *(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (I$2 << (3ll & 63ll))) + 216ll);
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
		I$2 = I$2 + 1ll;
		label$44:;
		if( I$2 <= TMP$107$2 ) goto label$47;
		label$46:;
	}
	fb$result$1 = R$1;
	label$43:;
	return fb$result$1;
}

static int64 REGALLOCATE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint64 SIZE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	int64 R$1;
	int64 vr$1 = REGPOP( THIS_$1, (int64)SIZE$1 );
	R$1 = vr$1;
	if( R$1 != -1ll ) goto label$57;
	{
		int64 TMP$108$2;
		int64 RESERVEDREG$2;
		RESERVEDREG$2 = -1ll;
		if( *(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) == (struct $6IRVREG*)0ull ) goto label$58;
		TMP$108$2 = (int64)-((struct $6IRVREG*)(int64)-(*(int64*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) == 4ll) != (struct $6IRVREG*)0ull);
		goto label$203;
		label$58:;
		TMP$108$2 = 0ll;
		label$203:;
		if( TMP$108$2 == 0ll ) goto label$60;
		{
			RESERVEDREG$2 = *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) + 24ll);
		}
		label$60:;
		label$59:;
		int64 vr$9 = REGFINDFAREST( THIS_$1, (int64)SIZE$1, RESERVEDREG$2 );
		R$1 = vr$9;
		(*(tmp$45*)((uint8*)&IR$ + 528ll))( *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll), *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) );
		REGPOPREG( THIS_$1, R$1 );
	}
	label$57:;
	label$56:;
	*(int64*)((uint8*)THIS_$1 + 272ll) = *(int64*)((uint8*)THIS_$1 + 272ll) & ~(1ll << (R$1 & 63ll));
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = VAUXPARENT$1;
	uint64 vr$23 = (*(tmp$76*)((uint8*)&IR$ + 512ll))( VREG$1 );
	*(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (R$1 << (3ll & 63ll))) + 216ll) = vr$23;
	fb$result$1 = R$1;
	label$55:;
	return fb$result$1;
}

static int64 REGALLOCATEREG( struct $8REGCLASS* THIS_$1, int64 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$61:;
	if( (*(int64*)((uint8*)THIS_$1 + 272ll) & (1ll << (R$1 & 63ll))) == 0ll ) goto label$64;
	{
		REGPOPREG( THIS_$1, R$1 );
		*(int64*)((uint8*)THIS_$1 + 272ll) = *(int64*)((uint8*)THIS_$1 + 272ll) & ~(1ll << (R$1 & 63ll));
	}
	label$64:;
	label$63:;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = VAUXPARENT$1;
	uint64 vr$13 = (*(tmp$76*)((uint8*)&IR$ + 512ll))( VREG$1 );
	*(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (R$1 << (3ll & 63ll))) + 216ll) = vr$13;
	fb$result$1 = R$1;
	label$62:;
	return fb$result$1;
}

static int64 REGENSURE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint64 SIZE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$65:;
	int64 R$1;
	R$1 = *(int64*)((uint8*)VREG$1 + 24ll);
	if( R$1 != -1ll ) goto label$68;
	{
		int64 vr$2 = REGALLOCATE( THIS_$1, VREG$1, VAUXPARENT$1, SIZE$1 );
		R$1 = vr$2;
		(*(tmp$52*)((uint8*)&IR$ + 520ll))( R$1, VREG$1, VAUXPARENT$1 );
	}
	label$68:;
	label$67:;
	fb$result$1 = R$1;
	label$66:;
	return fb$result$1;
}

static void REGSETOWNER( struct $8REGCLASS* THIS_$1, int64 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	label$69:;
	*(int64*)((uint8*)THIS_$1 + 272ll) = *(int64*)((uint8*)THIS_$1 + 272ll) & ~(1ll << (R$1 & 63ll));
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = VAUXPARENT$1;
	uint64 vr$9 = (*(tmp$76*)((uint8*)&IR$ + 512ll))( VREG$1 );
	*(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (R$1 << (3ll & 63ll))) + 216ll) = vr$9;
	label$70:;
}

static void REGFREE( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	label$71:;
	if( (*(int64*)((uint8*)THIS_$1 + 272ll) & (1ll << (R$1 & 63ll))) != 0ll ) goto label$74;
	{
		*(int64*)((uint8*)THIS_$1 + 272ll) = *(int64*)((uint8*)THIS_$1 + 272ll) | (1ll << (R$1 & 63ll));
		*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = (struct $6IRVREG*)0ull;
		*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = (struct $6IRVREG*)0ull;
		*(uint64*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (R$1 << (3ll & 63ll))) + 216ll) = 18446744073709551615ull;
		REGPUSH( THIS_$1, R$1 );
	}
	label$74:;
	label$73:;
	label$72:;
}

static int64 REGISFREE( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$75:;
	fb$result$1 = (int64)-((*(int64*)((uint8*)THIS_$1 + 272ll) & (1ll << (R$1 & 63ll))) != 0ll);
	label$76:;
	return fb$result$1;
}

static int64 REGGETMAXREGS( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$77:;
	fb$result$1 = *(int64*)((uint8*)THIS_$1 + 120ll);
	label$78:;
	return fb$result$1;
}

static int64 REGGETFIRST( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$79:;
	fb$result$1 = 0ll;
	label$80:;
	return fb$result$1;
}

static int64 REGGETNEXT( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$81:;
	fb$result$1 = -1ll;
	if( R$1 < 0ll ) goto label$84;
	{
		R$1 = R$1 + 1ll;
		if( R$1 >= *(int64*)((uint8*)THIS_$1 + 120ll) ) goto label$86;
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

static struct $6IRVREG* REGGETVREG( struct $8REGCLASS* THIS_$1, int64 R$1, struct $6IRVREG** VAUXPARENT$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$87:;
	fb$result$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll);
	*VAUXPARENT$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll);
	label$88:;
	return fb$result$1;
}

static int64 REGGETREALREG( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
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
	static int64 I$1;
	REGCLEAR( THIS_$1 );
	{
		I$1 = 0ll;
		int64 TMP$109$2;
		TMP$109$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$95;
		label$98:;
		{
			*($12REG_SIZEMASK*)((uint8*)((uint8*)((uint8*)THIS_$1 + 256ll) + (I$1 << (3ll & 63ll))) + 152ll) = *($12REG_SIZEMASK*)((I$1 << (3ll & 63ll)) + *(int64*)SIZETB$1);
		}
		label$96:;
		I$1 = I$1 + 1ll;
		label$95:;
		if( I$1 <= TMP$109$2 ) goto label$98;
		label$97:;
	}
	*(tmp$83*)THIS_$1 = (tmp$83)&REGENSURE;
	*(tmp$83*)((uint8*)THIS_$1 + 8ll) = (tmp$83)&REGALLOCATE;
	*(tmp$84*)((uint8*)THIS_$1 + 16ll) = (tmp$84)&REGALLOCATEREG;
	*(tmp$85*)((uint8*)THIS_$1 + 24ll) = (tmp$85)&REGFREE;
	*(tmp$86*)((uint8*)THIS_$1 + 32ll) = (tmp$86)&REGISFREE;
	*(tmp$87*)((uint8*)THIS_$1 + 40ll) = (tmp$87)&REGSETOWNER;
	*(tmp$88*)((uint8*)THIS_$1 + 48ll) = (tmp$88)&REGGETMAXREGS;
	*(tmp$88*)((uint8*)THIS_$1 + 56ll) = (tmp$88)&REGGETFIRST;
	*(tmp$86*)((uint8*)THIS_$1 + 64ll) = (tmp$86)&REGGETNEXT;
	*(tmp$89*)((uint8*)THIS_$1 + 72ll) = (tmp$89)&REGGETVREG;
	*(tmp$86*)((uint8*)THIS_$1 + 80ll) = (tmp$86)&REGGETREALREG;
	*(tmp$90*)((uint8*)THIS_$1 + 88ll) = (tmp$90)&REGCLEAR;
	*(tmp$90*)((uint8*)THIS_$1 + 96ll) = (tmp$90)&REGDUMP;
	label$94:;
}

static int64 SREGFINDREG( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$99:;
	static int64 R$1;
	fb$result$1 = -1ll;
	if( *(int64*)((uint8*)THIS_$1 + 600ll) != *(int64*)((uint8*)THIS_$1 + 120ll) ) goto label$102;
	{
		goto label$100;
	}
	label$102:;
	label$101:;
	{
		R$1 = 0ll;
		int64 TMP$110$2;
		TMP$110$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$103;
		label$106:;
		{
			if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) == -1ll ) goto label$108;
			{
				if( *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) != VREG$1 ) goto label$110;
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
		R$1 = R$1 + 1ll;
		label$103:;
		if( R$1 <= TMP$110$2 ) goto label$106;
		label$105:;
	}
	label$100:;
	return fb$result$1;
}

static void SREGXCHG( struct $8REGCLASS* THIS_$1, int64 R1$1 )
{
	label$111:;
	static int64 I$1;
	static int64 R2$1;
	(*(tmp$46*)((uint8*)&IR$ + 536ll))( R1$1 );
	R2$1 = -1ll;
	{
		I$1 = 0ll;
		int64 TMP$111$2;
		TMP$111$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$113;
		label$116:;
		{
			if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$1 << (3ll & 63ll))) != 0ll ) goto label$118;
			{
				R2$1 = I$1;
				goto label$115;
			}
			label$118:;
			label$117:;
		}
		label$114:;
		I$1 = I$1 + 1ll;
		label$113:;
		if( I$1 <= TMP$111$2 ) goto label$116;
		label$115:;
	}
	{
		int64 TMP$112$2;
		TMP$112$2 = *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R1$1 << (3ll & 63ll)));
		*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R1$1 << (3ll & 63ll))) = *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R2$1 << (3ll & 63ll)));
		*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R2$1 << (3ll & 63ll))) = TMP$112$2;
	}
	label$112:;
}

static int64 SREGFINDFREEREG( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$119:;
	static int64 R$1;
	fb$result$1 = -1ll;
	if( *(int64*)((uint8*)THIS_$1 + 600ll) != 0ll ) goto label$122;
	{
		goto label$120;
	}
	label$122:;
	label$121:;
	{
		R$1 = 0ll;
		int64 TMP$113$2;
		TMP$113$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$123;
		label$126:;
		{
			if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) != -1ll ) goto label$128;
			{
				fb$result$1 = R$1;
				goto label$120;
			}
			label$128:;
			label$127:;
		}
		label$124:;
		R$1 = R$1 + 1ll;
		label$123:;
		if( R$1 <= TMP$113$2 ) goto label$126;
		label$125:;
	}
	label$120:;
	return fb$result$1;
}

static int64 SREGFINDTOSREG( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$139:;
	static int64 R$1;
	{
		R$1 = 0ll;
		int64 TMP$115$2;
		TMP$115$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$141;
		label$144:;
		{
			if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) != 0ll ) goto label$146;
			{
				fb$result$1 = R$1;
				goto label$140;
			}
			label$146:;
			label$145:;
		}
		label$142:;
		R$1 = R$1 + 1ll;
		label$141:;
		if( R$1 <= TMP$115$2 ) goto label$144;
		label$143:;
	}
	fb$result$1 = -1ll;
	label$140:;
	return fb$result$1;
}

static int64 SREGALLOCATE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint64 SIZE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$147:;
	int64 R$1;
	int64 vr$1 = SREGFINDFREEREG( THIS_$1 );
	R$1 = vr$1;
	if( R$1 != -1ll ) goto label$150;
	{
		int64 vr$2 = SREGFINDTOSREG( THIS_$1 );
		R$1 = vr$2;
		(*(tmp$45*)((uint8*)&IR$ + 528ll))( *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll), *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) );
	}
	label$150:;
	label$149:;
	*(int64*)((uint8*)THIS_$1 + 600ll) = *(int64*)((uint8*)THIS_$1 + 600ll) + -1ll;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$116$2;
		TMP$116$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$151;
		label$154:;
		{
			if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$2 << (3ll & 63ll))) == -1ll ) goto label$156;
			{
				*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$2 << (3ll & 63ll))) = *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$2 << (3ll & 63ll))) + 1ll;
			}
			label$156:;
			label$155:;
		}
		label$152:;
		I$2 = I$2 + 1ll;
		label$151:;
		if( I$2 <= TMP$116$2 ) goto label$154;
		label$153:;
	}
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = VAUXPARENT$1;
	*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) = 0ll;
	fb$result$1 = R$1;
	label$148:;
	return fb$result$1;
}

static int64 SREGALLOCATEREG( struct $8REGCLASS* THIS_$1, int64 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$157:;
	int64 vr$1 = SREGALLOCATE( THIS_$1, VREG$1, VAUXPARENT$1, 8ull );
	fb$result$1 = vr$1;
	label$158:;
	return fb$result$1;
}

static int64 SREGENSURE( struct $8REGCLASS* THIS_$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1, uint64 SIZE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$159:;
	int64 R$1;
	int64 vr$1 = SREGFINDREG( THIS_$1, VREG$1 );
	R$1 = vr$1;
	if( R$1 != -1ll ) goto label$162;
	{
		int64 vr$2 = SREGALLOCATE( THIS_$1, VREG$1, VAUXPARENT$1, 8ull );
		R$1 = vr$2;
		(*(tmp$52*)((uint8*)&IR$ + 520ll))( R$1, VREG$1, VAUXPARENT$1 );
	}
	goto label$161;
	label$162:;
	{
		if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) == 0ll ) goto label$164;
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

static void SREGFREE( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	label$165:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	int64 REALREG$1;
	__builtin_memset( &REALREG$1, 0, 8ll );
	if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) != -1ll ) goto label$168;
	{
		goto label$166;
	}
	label$168:;
	label$167:;
	REALREG$1 = *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll)));
	*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) = -1ll;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = (struct $6IRVREG*)0ull;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = (struct $6IRVREG*)0ull;
	{
		I$1 = 0ll;
		int64 TMP$117$2;
		TMP$117$2 = *(int64*)((uint8*)THIS_$1 + 120ll) + -1ll;
		goto label$169;
		label$172:;
		{
			if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$1 << (3ll & 63ll))) == -1ll ) goto label$174;
			{
				if( *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$1 << (3ll & 63ll))) <= REALREG$1 ) goto label$176;
				{
					*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$1 << (3ll & 63ll))) = *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (I$1 << (3ll & 63ll))) + -1ll;
				}
				label$176:;
				label$175:;
			}
			label$174:;
			label$173:;
		}
		label$170:;
		I$1 = I$1 + 1ll;
		label$169:;
		if( I$1 <= TMP$117$2 ) goto label$172;
		label$171:;
	}
	*(int64*)((uint8*)THIS_$1 + 600ll) = *(int64*)((uint8*)THIS_$1 + 600ll) + 1ll;
	label$166:;
}

static int64 SREGISFREE( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$177:;
	fb$result$1 = (int64)-(*(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll))) == -1ll);
	label$178:;
	return fb$result$1;
}

static void SREGSETOWNER( struct $8REGCLASS* THIS_$1, int64 R$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	label$179:;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll) = VREG$1;
	*(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll) = VAUXPARENT$1;
	label$180:;
}

static int64 SREGGETREALREG( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$181:;
	fb$result$1 = *(int64*)((uint8*)((uint8*)THIS_$1 + 536ll) + (R$1 << (3ll & 63ll)));
	label$182:;
	return fb$result$1;
}

static int64 SREGGETMAXREGS( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$183:;
	fb$result$1 = *(int64*)((uint8*)THIS_$1 + 120ll);
	label$184:;
	return fb$result$1;
}

static int64 SREGGETFIRST( struct $8REGCLASS* THIS_$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$185:;
	int64 vr$1 = SREGFINDTOSREG( THIS_$1 );
	fb$result$1 = vr$1;
	label$186:;
	return fb$result$1;
}

static int64 SREGGETNEXT( struct $8REGCLASS* THIS_$1, int64 R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$187:;
	if( ((int64)-(R$1 < 0ll) | (int64)-(R$1 >= *(int64*)((uint8*)THIS_$1 + 120ll))) == 0ll ) goto label$190;
	{
		fb$result$1 = -1ll;
	}
	goto label$189;
	label$190:;
	{
		int64 vr$5 = SREGFINDTOSREG( THIS_$1 );
		fb$result$1 = vr$5;
	}
	label$189:;
	label$188:;
	return fb$result$1;
}

static struct $6IRVREG* SREGGETVREG( struct $8REGCLASS* THIS_$1, int64 R$1, struct $6IRVREG** VAUXPARENT$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$191:;
	fb$result$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 128ll);
	*VAUXPARENT$1 = *(struct $6IRVREG**)((uint8*)((uint8*)THIS_$1 + (R$1 << (3ll & 63ll))) + 192ll);
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
	int64 R$1;
	*(int64*)((uint8*)REG$1 + 600ll) = *(int64*)((uint8*)REG$1 + 120ll);
	{
		R$1 = 0ll;
		int64 TMP$118$2;
		TMP$118$2 = *(int64*)((uint8*)REG$1 + 120ll) + -1ll;
		goto label$197;
		label$200:;
		{
			*(int64*)((uint8*)((uint8*)REG$1 + 536ll) + (R$1 << (3ll & 63ll))) = -1ll;
			*(struct $6IRVREG**)((uint8*)((uint8*)REG$1 + (R$1 << (3ll & 63ll))) + 128ll) = (struct $6IRVREG*)0ull;
			*(struct $6IRVREG**)((uint8*)((uint8*)REG$1 + (R$1 << (3ll & 63ll))) + 192ll) = (struct $6IRVREG*)0ull;
		}
		label$198:;
		R$1 = R$1 + 1ll;
		label$197:;
		if( R$1 <= TMP$118$2 ) goto label$200;
		label$199:;
	}
	label$196:;
}

static void SREGINITCLASS( struct $8REGCLASS* THIS_$1, struct $7FBARRAYI12REG_SIZEMASKE* SIZETB$1 )
{
	label$201:;
	SREGCLEAR( THIS_$1 );
	*(tmp$83*)THIS_$1 = (tmp$83)&SREGENSURE;
	*(tmp$83*)((uint8*)THIS_$1 + 8ll) = (tmp$83)&SREGALLOCATE;
	*(tmp$84*)((uint8*)THIS_$1 + 16ll) = (tmp$84)&SREGALLOCATEREG;
	*(tmp$85*)((uint8*)THIS_$1 + 24ll) = (tmp$85)&SREGFREE;
	*(tmp$86*)((uint8*)THIS_$1 + 32ll) = (tmp$86)&SREGISFREE;
	*(tmp$87*)((uint8*)THIS_$1 + 40ll) = (tmp$87)&SREGSETOWNER;
	*(tmp$88*)((uint8*)THIS_$1 + 48ll) = (tmp$88)&SREGGETMAXREGS;
	*(tmp$88*)((uint8*)THIS_$1 + 56ll) = (tmp$88)&SREGGETFIRST;
	*(tmp$86*)((uint8*)THIS_$1 + 64ll) = (tmp$86)&SREGGETNEXT;
	*(tmp$89*)((uint8*)THIS_$1 + 72ll) = (tmp$89)&SREGGETVREG;
	*(tmp$86*)((uint8*)THIS_$1 + 80ll) = (tmp$86)&SREGGETREALREG;
	*(tmp$90*)((uint8*)THIS_$1 + 88ll) = (tmp$90)&SREGCLEAR;
	*(tmp$90*)((uint8*)THIS_$1 + 96ll) = (tmp$90)&SREGDUMP;
	label$202:;
}
