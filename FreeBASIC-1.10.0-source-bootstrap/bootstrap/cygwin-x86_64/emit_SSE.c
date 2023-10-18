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
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
struct $12EMITDATATYPE {
	int64 RNAMETB;
	uint8 MNAME[12];
};
__FB_STATIC_ASSERT( sizeof( struct $12EMITDATATYPE ) == 24 );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1IlE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IlE ) == 72 );
struct $8FBARRAY1I8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I8FBSTRINGE ) == 72 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_CHR( int32, ... );
static void fb_ctor__emit_SSE( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
struct $8FBSYMBOL* SYMBALLOCINTCONST( int64, int64 );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void HPREPOPERAND( struct $6IRVREG*, FBSTRING*, $11FB_DATATYPE, int64, int64, int64 );
void HPREPOPERAND64( struct $6IRVREG*, FBSTRING*, FBSTRING* );
void HPUSH( uint8* );
void HPOP( uint8* );
int64 HFINDREGNOTINVREG( struct $6IRVREG*, int64 );
int64 HFINDFREEREG( int64 );
int64 HISREGFREE( int64, int64 );
uint8* HGETREGNAME( int64, int64 );
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
static int64 HEMITCONVERTOPERANDS_SSE( struct $6IRVREG*, struct $6IRVREG* );
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
static void _EMITSINCOS_FAST_SSE( struct $6IRVREG*, int64 );
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
static void _EMITPUSHF_SSE( struct $6IRVREG*, int64 );
static void _EMITPOPF_SSE( struct $6IRVREG*, int64 );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$46)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
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
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
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
static struct $8FBARRAY1IPvE tmp$105$;
extern struct $12EMITDATATYPE DTYPETB$[26];
struct $8FBARRAY1I12EMITDATATYPEE {
	struct $12EMITDATATYPE* DATA;
	struct $12EMITDATATYPE* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I12EMITDATATYPEE ) == 72 );
static struct $8FBARRAY1I12EMITDATATYPEE tmp$107$;
static tmp$45 _EMITLOADB2F_X86$;

int64 _INIT_OPFNTB_SSE( void** _OPFNTB_SSE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$738:;
	_EMITLOADB2F_X86$ = *(tmp$45*)((uint8*)_OPFNTB_SSE$1 + 64ll);
	*(void**)((uint8*)_OPFNTB_SSE$1 + 16ll) = (void*)&_EMITLOADF2I_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 40ll) = (void*)&_EMITLOADI2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 80ll) = (void*)&_EMITLOADF2L_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 56ll) = (void*)&_EMITLOADL2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 48ll) = (void*)&_EMITLOADF2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 64ll) = (void*)&_EMITLOADB2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 144ll) = (void*)&_EMITSTORF2I_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 168ll) = (void*)&_EMITSTORI2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 208ll) = (void*)&_EMITSTORF2L_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 184ll) = (void*)&_EMITSTORL2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 176ll) = (void*)&_EMITSTORF2F_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 272ll) = (void*)&_EMITMOVF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 296ll) = (void*)&_EMITADDF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 320ll) = (void*)&_EMITSUBF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 344ll) = (void*)&_EMITMULF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 368ll) = (void*)&_EMITDIVF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 520ll) = (void*)&_EMITATN2_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 528ll) = (void*)&_EMITPOW_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 560ll) = (void*)&_EMITCGTF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 584ll) = (void*)&_EMITCLTF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 608ll) = (void*)&_EMITCEQF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 632ll) = (void*)&_EMITCNEF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 656ll) = (void*)&_EMITCGEF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 680ll) = (void*)&_EMITCLEF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 704ll) = (void*)&_EMITNEGF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 736ll) = (void*)&_EMITHADDF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 752ll) = (void*)&_EMITABSF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 776ll) = (void*)&_EMITSGNF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 792ll) = (void*)&_EMITFIX_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 800ll) = (void*)&_EMITFRAC_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 824ll) = (void*)&_EMITSIN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 832ll) = (void*)&_EMITASIN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 840ll) = (void*)&_EMITCOS_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 848ll) = (void*)&_EMITACOS_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 856ll) = (void*)&_EMITTAN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 864ll) = (void*)&_EMITATAN_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 872ll) = (void*)&_EMITSQRT_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 880ll) = (void*)&_EMITRSQRT_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 888ll) = (void*)&_EMITRCP_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 896ll) = (void*)&_EMITLOG_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 904ll) = (void*)&_EMITEXP_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 912ll) = (void*)&_EMITFLOOR_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 816ll) = (void*)&_EMITSWZREPF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 944ll) = (void*)&_EMITPUSHF_SSE;
	*(void**)((uint8*)_OPFNTB_SSE$1 + 968ll) = (void*)&_EMITPOPF_SSE;
	fb$result$1 = -1ll;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HULONG2DBL( struct $6IRVREG* SVREG$1 )
{
	label$10:;
	static FBSTRING LABEL$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	uint8* vr$0 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LABEL$1, -1ll, (void*)vr$0, 0ll, 0 );
	HPREPOPERAND( SVREG$1, &AUX$1, 8ll, 0ll, -1ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"cmp ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 0", 4ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jns ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&LABEL$1, -1ll, 0 );
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
	int64 TMP$116$1;
	FBSTRING TMP$119$1;
	FBSTRING TMP$120$1;
	FBSTRING TMP$137$1;
	FBSTRING TMP$138$1;
	label$12:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	int64 DDSIZE$1;
	(_EMITLOADB2F_X86$)( DVREG$1, SVREG$1 );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$14;
	TMP$116$1 = 24ll;
	goto label$740;
	label$14:;
	TMP$116$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$740:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$1 * 56ll)) + 8ll);
	__builtin_memset( &TMP$120$1, 0, 24ll );
	FBSTRING* vr$8 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$119$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$119$1, (void*)"sub esp, ", 10ll, (void*)vr$8, -1ll );
	fb_StrAssign( (void*)&TMP$120$1, -1ll, (void*)vr$11, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$120$1 );
	fb_StrDelete( (FBSTRING*)&TMP$120$1 );
	if( DDSIZE$1 <= 4ll ) goto label$16;
	{
		FBSTRING TMP$124$2;
		FBSTRING TMP$125$2;
		FBSTRING TMP$126$2;
		FBSTRING TMP$127$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$127$2, 0, 24ll );
		__builtin_memset( &TMP$124$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$124$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$125$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$125$2, (void*)vr$18, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$126$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$126$2, (void*)vr$21, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$127$2, -1ll, (void*)vr$24, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$127$2 );
		fb_StrDelete( (FBSTRING*)&TMP$127$2 );
	}
	goto label$15;
	label$16:;
	{
		FBSTRING TMP$131$2;
		FBSTRING TMP$132$2;
		FBSTRING TMP$133$2;
		FBSTRING TMP$134$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$134$2, 0, 24ll );
		__builtin_memset( &TMP$131$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$131$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$132$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$132$2, (void*)vr$31, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$133$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$133$2, (void*)vr$34, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$134$2, -1ll, (void*)vr$37, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$134$2 );
		fb_StrDelete( (FBSTRING*)&TMP$134$2 );
	}
	label$15:;
	__builtin_memset( &TMP$138$1, 0, 24ll );
	FBSTRING* vr$41 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$137$1, 0, 24ll );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$137$1, (void*)"add esp, ", 10ll, (void*)vr$41, -1ll );
	fb_StrAssign( (void*)&TMP$138$1, -1ll, (void*)vr$44, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$138$1 );
	fb_StrDelete( (FBSTRING*)&TMP$138$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$13:;
}

static void _EMITSTORF2L_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$139$1;
	FBSTRING TMP$156$1;
	FBSTRING TMP$157$1;
	label$17:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$19;
	TMP$139$1 = 24ll;
	goto label$741;
	label$19:;
	TMP$139$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$741:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$139$1 * 56ll)) + 16ll) != 0ll ) goto label$21;
	{
		goto label$18;
		label$21:;
	}
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 1ll ) goto label$23;
	{
		int64 TMP$140$2;
		FBSTRING TMP$141$2;
		FBSTRING TMP$142$2;
		FBSTRING TMP$153$2;
		FBSTRING TMP$154$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$24;
		TMP$140$2 = 24ll;
		goto label$742;
		label$24:;
		TMP$140$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$742:;
		SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$140$2 * 56ll)) + 8ll);
		__builtin_memset( &TMP$142$2, 0, 24ll );
		FBSTRING* vr$12 = fb_LongintToStr( SDSIZE$1 );
		__builtin_memset( &TMP$141$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$141$2, (void*)"sub esp, ", 10ll, (void*)vr$12, -1ll );
		fb_StrAssign( (void*)&TMP$142$2, -1ll, (void*)vr$15, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$142$2 );
		fb_StrDelete( (FBSTRING*)&TMP$142$2 );
		HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		if( SDSIZE$1 <= 4ll ) goto label$26;
		{
			FBSTRING TMP$145$3;
			FBSTRING TMP$146$3;
			__builtin_memset( &TMP$146$3, 0, 24ll );
			__builtin_memset( &TMP$145$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$145$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$146$3, -1ll, (void*)vr$21, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$146$3 );
			fb_StrDelete( (FBSTRING*)&TMP$146$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$25;
		label$26:;
		{
			FBSTRING TMP$150$3;
			FBSTRING TMP$151$3;
			__builtin_memset( &TMP$151$3, 0, 24ll );
			__builtin_memset( &TMP$150$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$150$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$151$3, -1ll, (void*)vr$27, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$151$3 );
			fb_StrDelete( (FBSTRING*)&TMP$151$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$25:;
		__builtin_memset( &TMP$154$2, 0, 24ll );
		FBSTRING* vr$31 = fb_LongintToStr( SDSIZE$1 );
		__builtin_memset( &TMP$153$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$153$2, (void*)"add esp, ", 10ll, (void*)vr$31, -1ll );
		fb_StrAssign( (void*)&TMP$154$2, -1ll, (void*)vr$34, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$154$2 );
		fb_StrDelete( (FBSTRING*)&TMP$154$2 );
	}
	label$23:;
	label$22:;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$157$1, 0, 24ll );
	__builtin_memset( &TMP$156$1, 0, 24ll );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$156$1, (void*)"fistp ", 7ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$157$1, -1ll, (void*)vr$40, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$157$1 );
	fb_StrDelete( (FBSTRING*)&TMP$157$1 );
	label$18:;
}

static void _EMITSTORF2I_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$158$1;
	int64 TMP$159$1;
	int64 TMP$160$1;
	int64 TMP$171$1;
	label$27:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static FBSTRING OSTR$1;
	static FBSTRING AUX$1;
	static FBSTRING AUX8$1;
	static FBSTRING AUX16$1;
	static int64 ISFREE$1;
	static int64 REG$1;
	static int64 WASREG$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$29;
	TMP$158$1 = 24ll;
	goto label$743;
	label$29:;
	TMP$158$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$743:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$158$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$30;
	TMP$159$1 = 24ll;
	goto label$744;
	label$30:;
	TMP$159$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$744:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$159$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$31;
	TMP$160$1 = 24ll;
	goto label$745;
	label$31:;
	TMP$160$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$745:;
	if( ((int64)-(DDSIZE$1 == 4ll) & (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$160$1 * 56ll)) + 16ll) == 0ll)) == 0ll ) goto label$33;
	{
		OUTP( (uint8*)"sub esp, 8" );
		if( *(int64*)SVREG$1 == 4ll ) goto label$35;
		{
			FBSTRING TMP$163$3;
			FBSTRING TMP$164$3;
			__builtin_memset( &TMP$164$3, 0, 24ll );
			__builtin_memset( &TMP$163$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$163$3, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$164$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$164$3 );
			fb_StrDelete( (FBSTRING*)&TMP$164$3 );
		}
		goto label$34;
		label$35:;
		if( *(int64*)((uint8*)SVREG$1 + 32ll) != 1ll ) goto label$36;
		{
			if( SDSIZE$1 <= 4ll ) goto label$38;
			{
				FBSTRING TMP$165$4;
				FBSTRING TMP$166$4;
				__builtin_memset( &TMP$166$4, 0, 24ll );
				__builtin_memset( &TMP$165$4, 0, 24ll );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$165$4, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$166$4, -1ll, (void*)vr$29, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$166$4 );
				fb_StrDelete( (FBSTRING*)&TMP$166$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$37;
			label$38:;
			{
				FBSTRING TMP$167$4;
				FBSTRING TMP$168$4;
				__builtin_memset( &TMP$168$4, 0, 24ll );
				__builtin_memset( &TMP$167$4, 0, 24ll );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$167$4, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$168$4, -1ll, (void*)vr$35, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$168$4 );
				fb_StrDelete( (FBSTRING*)&TMP$168$4 );
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
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$39;
	TMP$171$1 = 24ll;
	goto label$746;
	label$39:;
	TMP$171$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$746:;
	if( ((int64)-(DDSIZE$1 == 2ll) & *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$171$1 * 56ll)) + 16ll)) == 0ll ) goto label$41;
	{
		FBSTRING TMP$178$2;
		FBSTRING TMP$179$2;
		OUTP( (uint8*)"sub esp, 8" );
		if( *(int64*)SVREG$1 == 4ll ) goto label$43;
		{
			FBSTRING TMP$172$3;
			FBSTRING TMP$173$3;
			__builtin_memset( &TMP$173$3, 0, 24ll );
			__builtin_memset( &TMP$172$3, 0, 24ll );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$172$3, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$173$3, -1ll, (void*)vr$49, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$173$3 );
			fb_StrDelete( (FBSTRING*)&TMP$173$3 );
		}
		goto label$42;
		label$43:;
		if( *(int64*)((uint8*)SVREG$1 + 32ll) != 1ll ) goto label$44;
		{
			if( SDSIZE$1 <= 4ll ) goto label$46;
			{
				FBSTRING TMP$174$4;
				FBSTRING TMP$175$4;
				__builtin_memset( &TMP$175$4, 0, 24ll );
				__builtin_memset( &TMP$174$4, 0, 24ll );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$174$4, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$175$4, -1ll, (void*)vr$56, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$175$4 );
				fb_StrDelete( (FBSTRING*)&TMP$175$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$45;
			label$46:;
			{
				FBSTRING TMP$176$4;
				FBSTRING TMP$177$4;
				__builtin_memset( &TMP$177$4, 0, 24ll );
				__builtin_memset( &TMP$176$4, 0, 24ll );
				FBSTRING* vr$62 = fb_StrConcat( &TMP$176$4, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$177$4, -1ll, (void*)vr$62, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$177$4 );
				fb_StrDelete( (FBSTRING*)&TMP$177$4 );
				OUTP( (uint8*)"fld dword ptr [esp]" );
			}
			label$45:;
		}
		label$44:;
		label$42:;
		__builtin_memset( &TMP$179$2, 0, 24ll );
		__builtin_memset( &TMP$178$2, 0, 24ll );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$178$2, (void*)"fistp ", 7ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$179$2, -1ll, (void*)vr$68, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$179$2 );
		fb_StrDelete( (FBSTRING*)&TMP$179$2 );
		OUTP( (uint8*)"add esp, 8" );
		goto label$28;
	}
	label$41:;
	label$40:;
	if( ((int64)-(*(int64*)DVREG$1 == 4ll) & (int64)-(DDSIZE$1 == 4ll)) == 0ll ) goto label$48;
	{
		ISFREE$1 = -1ll;
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)&DST$1, -1ll, 0 );
		WASREG$1 = -1ll;
	}
	goto label$47;
	label$48:;
	{
		WASREG$1 = 0ll;
		int64 vr$75 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$1 = vr$75;
		uint8* vr$76 = HGETREGNAME( 8ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$76, 0ll, 0 );
		int64 vr$77 = HISREGFREE( 0ll, REG$1 );
		ISFREE$1 = vr$77;
		if( ISFREE$1 != 0ll ) goto label$50;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$50:;
		label$49:;
	}
	label$47:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$52;
	{
		FBSTRING TMP$184$2;
		FBSTRING TMP$185$2;
		FBSTRING TMP$186$2;
		FBSTRING TMP$187$2;
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		__builtin_memset( &TMP$187$2, 0, 24ll );
		__builtin_memset( &TMP$184$2, 0, 24ll );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$184$2, (void*)"mov ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$185$2, 0, 24ll );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$185$2, (void*)vr$82, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$186$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$186$2, (void*)vr$85, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$187$2, -1ll, (void*)vr$88, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$187$2 );
		fb_StrDelete( (FBSTRING*)&TMP$187$2 );
		OUTP( (uint8*)"add esp, 4" );
	}
	goto label$51;
	label$52:;
	{
		if( SDSIZE$1 <= 4ll ) goto label$54;
		{
			FBSTRING TMP$189$3;
			FBSTRING TMP$190$3;
			FBSTRING TMP$191$3;
			FBSTRING TMP$192$3;
			__builtin_memset( &TMP$192$3, 0, 24ll );
			__builtin_memset( &TMP$189$3, 0, 24ll );
			FBSTRING* vr$94 = fb_StrConcat( &TMP$189$3, (void*)"cvtsd2si ", 10ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$190$3, 0, 24ll );
			FBSTRING* vr$97 = fb_StrConcat( &TMP$190$3, (void*)vr$94, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$191$3, 0, 24ll );
			FBSTRING* vr$100 = fb_StrConcat( &TMP$191$3, (void*)vr$97, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$192$3, -1ll, (void*)vr$100, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$192$3 );
			fb_StrDelete( (FBSTRING*)&TMP$192$3 );
		}
		goto label$53;
		label$54:;
		{
			FBSTRING TMP$194$3;
			FBSTRING TMP$195$3;
			FBSTRING TMP$196$3;
			FBSTRING TMP$197$3;
			__builtin_memset( &TMP$197$3, 0, 24ll );
			__builtin_memset( &TMP$194$3, 0, 24ll );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$194$3, (void*)"cvtss2si ", 10ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$195$3, 0, 24ll );
			FBSTRING* vr$109 = fb_StrConcat( &TMP$195$3, (void*)vr$106, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$196$3, 0, 24ll );
			FBSTRING* vr$112 = fb_StrConcat( &TMP$196$3, (void*)vr$109, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$197$3, -1ll, (void*)vr$112, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$197$3 );
			fb_StrDelete( (FBSTRING*)&TMP$197$3 );
		}
		label$53:;
	}
	label$51:;
	if( WASREG$1 != 0ll ) goto label$56;
	{
		if( DDSIZE$1 != 1ll ) goto label$58;
		{
			FBSTRING TMP$198$3;
			FBSTRING TMP$199$3;
			FBSTRING TMP$200$3;
			FBSTRING TMP$201$3;
			uint8* vr$115 = HGETREGNAME( 2ll, REG$1 );
			fb_StrAssign( (void*)&AUX8$1, -1ll, (void*)vr$115, 0ll, 0 );
			__builtin_memset( &TMP$201$3, 0, 24ll );
			__builtin_memset( &TMP$198$3, 0, 24ll );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$198$3, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$199$3, 0, 24ll );
			FBSTRING* vr$122 = fb_StrConcat( &TMP$199$3, (void*)vr$119, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$200$3, 0, 24ll );
			FBSTRING* vr$125 = fb_StrConcat( &TMP$200$3, (void*)vr$122, -1ll, (void*)&AUX8$1, -1ll );
			fb_StrAssign( (void*)&TMP$201$3, -1ll, (void*)vr$125, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$201$3 );
			fb_StrDelete( (FBSTRING*)&TMP$201$3 );
		}
		goto label$57;
		label$58:;
		if( DDSIZE$1 != 2ll ) goto label$59;
		{
			FBSTRING TMP$202$3;
			FBSTRING TMP$203$3;
			FBSTRING TMP$204$3;
			FBSTRING TMP$205$3;
			uint8* vr$128 = HGETREGNAME( 5ll, REG$1 );
			fb_StrAssign( (void*)&AUX16$1, -1ll, (void*)vr$128, 0ll, 0 );
			__builtin_memset( &TMP$205$3, 0, 24ll );
			__builtin_memset( &TMP$202$3, 0, 24ll );
			FBSTRING* vr$132 = fb_StrConcat( &TMP$202$3, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$203$3, 0, 24ll );
			FBSTRING* vr$135 = fb_StrConcat( &TMP$203$3, (void*)vr$132, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$204$3, 0, 24ll );
			FBSTRING* vr$138 = fb_StrConcat( &TMP$204$3, (void*)vr$135, -1ll, (void*)&AUX16$1, -1ll );
			fb_StrAssign( (void*)&TMP$205$3, -1ll, (void*)vr$138, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$205$3 );
			fb_StrDelete( (FBSTRING*)&TMP$205$3 );
		}
		goto label$57;
		label$59:;
		{
			FBSTRING TMP$206$3;
			FBSTRING TMP$207$3;
			FBSTRING TMP$208$3;
			FBSTRING TMP$209$3;
			__builtin_memset( &TMP$209$3, 0, 24ll );
			__builtin_memset( &TMP$206$3, 0, 24ll );
			FBSTRING* vr$144 = fb_StrConcat( &TMP$206$3, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$207$3, 0, 24ll );
			FBSTRING* vr$147 = fb_StrConcat( &TMP$207$3, (void*)vr$144, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$208$3, 0, 24ll );
			FBSTRING* vr$150 = fb_StrConcat( &TMP$208$3, (void*)vr$147, -1ll, (void*)&AUX$1, -1ll );
			fb_StrAssign( (void*)&TMP$209$3, -1ll, (void*)vr$150, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$209$3 );
			fb_StrDelete( (FBSTRING*)&TMP$209$3 );
		}
		label$57:;
		if( ISFREE$1 != 0ll ) goto label$61;
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
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( ((int64)-(*(int64*)SVREG$1 == 4ll) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$65;
	{
		int64 TMP$210$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$66;
		TMP$210$2 = 24ll;
		goto label$747;
		label$66:;
		TMP$210$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$747:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$210$2 * 56ll)) + 16ll) == 0ll ) goto label$68;
		{
			FBSTRING TMP$213$3;
			FBSTRING TMP$214$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$213$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$213$3, (void*)"fild ", 6ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$214$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$214$3, (void*)vr$15, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$18, -1ll, 0 );
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
		int64 TMP$216$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$69;
		TMP$216$2 = 24ll;
		goto label$748;
		label$69:;
		TMP$216$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$748:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$216$2 * 56ll)) + 16ll) == 0ll ) goto label$71;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$70;
		label$71:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$70:;
	}
	label$64:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fstp ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$63:;
}

static void _EMITSTORI2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$218$1;
	int64 TMP$219$1;
	int64 TMP$220$1;
	label$72:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static int64 DDSIZE$1;
	static int64 SDSIZE$1;
	static int64 REG$1;
	static int64 ISFREE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$74;
	TMP$218$1 = 24ll;
	goto label$749;
	label$74:;
	TMP$218$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$749:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$218$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$75;
	TMP$219$1 = 24ll;
	goto label$750;
	label$75:;
	TMP$219$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$750:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$219$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$76;
	TMP$220$1 = 24ll;
	goto label$751;
	label$76:;
	TMP$220$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$751:;
	if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$220$1 * 56ll)) + 16ll) == 0ll) & (int64)-(SDSIZE$1 == 4ll)) == 0ll ) goto label$78;
	{
		FBSTRING TMP$221$2;
		FBSTRING TMP$222$2;
		HPUSH( (uint8*)"0" );
		HPUSH( (uint8*)*(uint8**)&SRC$1 );
		OUTP( (uint8*)"fild qword ptr [esp]" );
		OUTP( (uint8*)"add esp, 8" );
		__builtin_memset( &TMP$222$2, 0, 24ll );
		__builtin_memset( &TMP$221$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$221$2, (void*)"fstp ", 6ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$222$2, -1ll, (void*)vr$21, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$222$2 );
		fb_StrDelete( (FBSTRING*)&TMP$222$2 );
		goto label$73;
	}
	label$78:;
	label$77:;
	if( ((int64)-(*(int64*)SVREG$1 != 0ll) & (int64)-(SDSIZE$1 == 4ll)) == 0ll ) goto label$80;
	{
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		ISFREE$1 = -1ll;
	}
	goto label$79;
	label$80:;
	{
		int64 vr$28 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$1 = vr$28;
		uint8* vr$29 = HGETREGNAME( 8ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$29, 0ll, 0 );
		int64 vr$30 = HISREGFREE( 0ll, REG$1 );
		ISFREE$1 = vr$30;
		if( ISFREE$1 != 0ll ) goto label$82;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$82:;
		label$81:;
		if( *(int64*)SVREG$1 != 0ll ) goto label$84;
		{
			FBSTRING TMP$223$3;
			FBSTRING TMP$224$3;
			FBSTRING TMP$225$3;
			FBSTRING TMP$226$3;
			__builtin_memset( &TMP$226$3, 0, 24ll );
			__builtin_memset( &TMP$223$3, 0, 24ll );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$223$3, (void*)"mov ", 5ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$224$3, 0, 24ll );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$224$3, (void*)vr$35, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$225$3, 0, 24ll );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$225$3, (void*)vr$38, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$226$3, -1ll, (void*)vr$41, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$226$3 );
			fb_StrDelete( (FBSTRING*)&TMP$226$3 );
		}
		goto label$83;
		label$84:;
		{
			int64 TMP$227$3;
			FBSTRING TMP$230$3;
			FBSTRING TMP$231$3;
			FBSTRING TMP$232$3;
			FBSTRING TMP$233$3;
			if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$85;
			TMP$227$3 = 24ll;
			goto label$752;
			label$85:;
			TMP$227$3 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
			label$752:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$227$3 * 56ll)) + 16ll) == 0ll ) goto label$87;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
			}
			goto label$86;
			label$87:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
			}
			label$86:;
			__builtin_memset( &TMP$233$3, 0, 24ll );
			__builtin_memset( &TMP$230$3, 0, 24ll );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$230$3, (void*)&OSTR$1, -1ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$231$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$231$3, (void*)vr$52, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$232$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$232$3, (void*)vr$55, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$233$3, -1ll, (void*)vr$58, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$233$3 );
			fb_StrDelete( (FBSTRING*)&TMP$233$3 );
		}
		label$83:;
	}
	label$79:;
	if( DDSIZE$1 <= 4ll ) goto label$89;
	{
		FBSTRING TMP$236$2;
		FBSTRING TMP$237$2;
		FBSTRING TMP$239$2;
		FBSTRING TMP$240$2;
		FBSTRING TMP$241$2;
		FBSTRING TMP$242$2;
		__builtin_memset( &TMP$237$2, 0, 24ll );
		__builtin_memset( &TMP$236$2, 0, 24ll );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$236$2, (void*)"cvtsi2sd xmm7, ", 16ll, (void*)&AUX$1, -1ll );
		fb_StrAssign( (void*)&TMP$237$2, -1ll, (void*)vr$64, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$237$2 );
		fb_StrDelete( (FBSTRING*)&TMP$237$2 );
		__builtin_memset( &TMP$242$2, 0, 24ll );
		__builtin_memset( &TMP$239$2, 0, 24ll );
		FBSTRING* vr$70 = fb_StrConcat( &TMP$239$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$240$2, 0, 24ll );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$240$2, (void*)vr$70, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$241$2, 0, 24ll );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$241$2, (void*)vr$73, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$242$2, -1ll, (void*)vr$76, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$242$2 );
		fb_StrDelete( (FBSTRING*)&TMP$242$2 );
	}
	goto label$88;
	label$89:;
	{
		FBSTRING TMP$245$2;
		FBSTRING TMP$246$2;
		FBSTRING TMP$247$2;
		FBSTRING TMP$248$2;
		FBSTRING TMP$249$2;
		FBSTRING TMP$250$2;
		__builtin_memset( &TMP$246$2, 0, 24ll );
		__builtin_memset( &TMP$245$2, 0, 24ll );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$245$2, (void*)"cvtsi2ss xmm7, ", 16ll, (void*)&AUX$1, -1ll );
		fb_StrAssign( (void*)&TMP$246$2, -1ll, (void*)vr$82, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$246$2 );
		fb_StrDelete( (FBSTRING*)&TMP$246$2 );
		__builtin_memset( &TMP$250$2, 0, 24ll );
		__builtin_memset( &TMP$247$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$247$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$248$2, 0, 24ll );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$248$2, (void*)vr$88, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$249$2, 0, 24ll );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$249$2, (void*)vr$91, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$250$2, -1ll, (void*)vr$94, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$250$2 );
		fb_StrDelete( (FBSTRING*)&TMP$250$2 );
	}
	label$88:;
	if( ISFREE$1 != 0ll ) goto label$91;
	{
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	label$91:;
	label$90:;
	label$73:;
}

static void HEMITSTOREFREG2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$251$1;
	label$92:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, 0ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$94;
	TMP$251$1 = 24ll;
	goto label$753;
	label$94:;
	TMP$251$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$753:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$251$1 * 56ll)) + 8ll);
	if( ((int64)-(*(int64*)((uint8*)SVREG$1 + 40ll) == 2ll) & (int64)-(DDSIZE$1 > 4ll)) == 0ll ) goto label$96;
	{
		FBSTRING TMP$253$2;
		FBSTRING TMP$254$2;
		FBSTRING TMP$255$2;
		FBSTRING TMP$256$2;
		__builtin_memset( &TMP$256$2, 0, 24ll );
		__builtin_memset( &TMP$253$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$253$2, (void*)"movupd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$254$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$254$2, (void*)vr$12, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$255$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$255$2, (void*)vr$15, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$256$2, -1ll, (void*)vr$18, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$256$2 );
		fb_StrDelete( (FBSTRING*)&TMP$256$2 );
		goto label$93;
	}
	label$96:;
	label$95:;
	if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$98;
	{
		FBSTRING TMP$258$2;
		FBSTRING TMP$259$2;
		FBSTRING TMP$260$2;
		FBSTRING TMP$261$2;
		__builtin_memset( &TMP$261$2, 0, 24ll );
		__builtin_memset( &TMP$258$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$258$2, (void*)"movlps ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$259$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$259$2, (void*)vr$25, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$260$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$260$2, (void*)vr$28, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$261$2, -1ll, (void*)vr$31, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$261$2 );
		fb_StrDelete( (FBSTRING*)&TMP$261$2 );
	}
	goto label$97;
	label$98:;
	if( *(int64*)((uint8*)SVREG$1 + 40ll) != 3ll ) goto label$99;
	{
		FBSTRING TMP$264$2;
		FBSTRING TMP$265$2;
		FBSTRING TMP$266$2;
		FBSTRING TMP$267$2;
		FBSTRING TMP$268$2;
		FBSTRING TMP$269$2;
		FBSTRING TMP$270$2;
		FBSTRING TMP$271$2;
		FBSTRING TMP$272$2;
		FBSTRING TMP$273$2;
		__builtin_memset( &TMP$265$2, 0, 24ll );
		__builtin_memset( &TMP$264$2, 0, 24ll );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$264$2, (void*)"movhlps xmm7, ", 15ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$265$2, -1ll, (void*)vr$38, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$265$2 );
		fb_StrDelete( (FBSTRING*)&TMP$265$2 );
		__builtin_memset( &TMP$269$2, 0, 24ll );
		__builtin_memset( &TMP$266$2, 0, 24ll );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$266$2, (void*)"movlps ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$267$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$267$2, (void*)vr$44, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$268$2, 0, 24ll );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$268$2, (void*)vr$47, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$269$2, -1ll, (void*)vr$50, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$269$2 );
		fb_StrDelete( (FBSTRING*)&TMP$269$2 );
		HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 8ll, 0ll, -1ll );
		__builtin_memset( &TMP$273$2, 0, 24ll );
		__builtin_memset( &TMP$270$2, 0, 24ll );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$270$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$271$2, 0, 24ll );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$271$2, (void*)vr$56, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$272$2, 0, 24ll );
		FBSTRING* vr$62 = fb_StrConcat( &TMP$272$2, (void*)vr$59, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$273$2, -1ll, (void*)vr$62, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$273$2 );
		fb_StrDelete( (FBSTRING*)&TMP$273$2 );
	}
	goto label$97;
	label$99:;
	if( *(int64*)((uint8*)SVREG$1 + 40ll) != 4ll ) goto label$100;
	{
		FBSTRING TMP$275$2;
		FBSTRING TMP$276$2;
		FBSTRING TMP$277$2;
		FBSTRING TMP$278$2;
		__builtin_memset( &TMP$278$2, 0, 24ll );
		__builtin_memset( &TMP$275$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$275$2, (void*)"movups ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$276$2, 0, 24ll );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$276$2, (void*)vr$69, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$277$2, 0, 24ll );
		FBSTRING* vr$75 = fb_StrConcat( &TMP$277$2, (void*)vr$72, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$278$2, -1ll, (void*)vr$75, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$278$2 );
		fb_StrDelete( (FBSTRING*)&TMP$278$2 );
	}
	label$100:;
	label$97:;
	label$93:;
}

static void _EMITSTORF2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$279$1;
	int64 TMP$280$1;
	label$101:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static int64 SDSIZE$1;
	static int64 SRC_VEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, 0ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$103;
	TMP$279$1 = 24ll;
	goto label$754;
	label$103:;
	TMP$279$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$754:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$279$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$104;
	TMP$280$1 = 24ll;
	goto label$755;
	label$104:;
	TMP$280$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$755:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$280$1 * 56ll)) + 8ll);
	SRC_VEC$1 = (int64)-(*(int64*)((uint8*)SVREG$1 + 40ll) > 0ll);
	if( *(int64*)SVREG$1 != 4ll ) goto label$106;
	{
		if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$108;
		{
			FBSTRING TMP$281$3;
			FBSTRING TMP$282$3;
			HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
			__builtin_memset( &TMP$282$3, 0, 24ll );
			__builtin_memset( &TMP$281$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$281$3, (void*)"fstp ", 6ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$282$3, -1ll, (void*)vr$17, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$282$3 );
			fb_StrDelete( (FBSTRING*)&TMP$282$3 );
			goto label$102;
		}
		label$108:;
		label$107:;
		if( SRC_VEC$1 == 0ll ) goto label$110;
		{
			HEMITSTOREFREG2F_SSE( DVREG$1, SVREG$1 );
			goto label$102;
		}
		label$110:;
		label$109:;
		if( DDSIZE$1 <= 4ll ) goto label$112;
		{
			FBSTRING TMP$288$3;
			FBSTRING TMP$289$3;
			FBSTRING TMP$290$3;
			FBSTRING TMP$291$3;
			if( SDSIZE$1 > 4ll ) goto label$114;
			{
				FBSTRING TMP$284$4;
				FBSTRING TMP$285$4;
				FBSTRING TMP$286$4;
				FBSTRING TMP$287$4;
				__builtin_memset( &TMP$287$4, 0, 24ll );
				__builtin_memset( &TMP$284$4, 0, 24ll );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$284$4, (void*)"cvtss2sd ", 10ll, (void*)&SRC$1, -1ll );
				__builtin_memset( &TMP$285$4, 0, 24ll );
				FBSTRING* vr$26 = fb_StrConcat( &TMP$285$4, (void*)vr$23, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$286$4, 0, 24ll );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$286$4, (void*)vr$26, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$287$4, -1ll, (void*)vr$29, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$287$4 );
				fb_StrDelete( (FBSTRING*)&TMP$287$4 );
			}
			label$114:;
			label$113:;
			__builtin_memset( &TMP$291$3, 0, 24ll );
			__builtin_memset( &TMP$288$3, 0, 24ll );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$288$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$289$3, 0, 24ll );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$289$3, (void*)vr$35, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$290$3, 0, 24ll );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$290$3, (void*)vr$38, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$291$3, -1ll, (void*)vr$41, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$291$3 );
			fb_StrDelete( (FBSTRING*)&TMP$291$3 );
		}
		goto label$111;
		label$112:;
		{
			FBSTRING TMP$297$3;
			FBSTRING TMP$298$3;
			FBSTRING TMP$299$3;
			FBSTRING TMP$300$3;
			if( SDSIZE$1 <= 4ll ) goto label$116;
			{
				FBSTRING TMP$293$4;
				FBSTRING TMP$294$4;
				FBSTRING TMP$295$4;
				FBSTRING TMP$296$4;
				__builtin_memset( &TMP$296$4, 0, 24ll );
				__builtin_memset( &TMP$293$4, 0, 24ll );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$293$4, (void*)"cvtsd2ss ", 10ll, (void*)&SRC$1, -1ll );
				__builtin_memset( &TMP$294$4, 0, 24ll );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$294$4, (void*)vr$47, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$295$4, 0, 24ll );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$295$4, (void*)vr$50, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$296$4, -1ll, (void*)vr$53, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$296$4 );
				fb_StrDelete( (FBSTRING*)&TMP$296$4 );
			}
			label$116:;
			label$115:;
			__builtin_memset( &TMP$300$3, 0, 24ll );
			__builtin_memset( &TMP$297$3, 0, 24ll );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$297$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$298$3, 0, 24ll );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$298$3, (void*)vr$59, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$299$3, 0, 24ll );
			FBSTRING* vr$65 = fb_StrConcat( &TMP$299$3, (void*)vr$62, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$300$3, -1ll, (void*)vr$65, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$300$3 );
			fb_StrDelete( (FBSTRING*)&TMP$300$3 );
		}
		label$111:;
	}
	goto label$105;
	label$106:;
	{
		if( SDSIZE$1 != DDSIZE$1 ) goto label$118;
		{
			if( SRC_VEC$1 == 0ll ) goto label$120;
			{
				HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, 0ll );
				HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
				if( DDSIZE$1 <= 4ll ) goto label$122;
				{
					FBSTRING TMP$303$5;
					FBSTRING TMP$304$5;
					FBSTRING TMP$305$5;
					FBSTRING TMP$306$5;
					FBSTRING TMP$307$5;
					FBSTRING TMP$308$5;
					__builtin_memset( &TMP$304$5, 0, 24ll );
					__builtin_memset( &TMP$303$5, 0, 24ll );
					FBSTRING* vr$71 = fb_StrConcat( &TMP$303$5, (void*)"movupd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$304$5, -1ll, (void*)vr$71, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$304$5 );
					fb_StrDelete( (FBSTRING*)&TMP$304$5 );
					__builtin_memset( &TMP$308$5, 0, 24ll );
					__builtin_memset( &TMP$305$5, 0, 24ll );
					FBSTRING* vr$77 = fb_StrConcat( &TMP$305$5, (void*)"movupd ", 8ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$306$5, 0, 24ll );
					FBSTRING* vr$80 = fb_StrConcat( &TMP$306$5, (void*)vr$77, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$307$5, 0, 24ll );
					FBSTRING* vr$83 = fb_StrConcat( &TMP$307$5, (void*)vr$80, -1ll, (void*)"xmm7", 5ll );
					fb_StrAssign( (void*)&TMP$308$5, -1ll, (void*)vr$83, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$308$5 );
					fb_StrDelete( (FBSTRING*)&TMP$308$5 );
				}
				goto label$121;
				label$122:;
				{
					if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$124;
					{
						FBSTRING TMP$311$6;
						FBSTRING TMP$312$6;
						FBSTRING TMP$313$6;
						FBSTRING TMP$314$6;
						FBSTRING TMP$315$6;
						FBSTRING TMP$316$6;
						__builtin_memset( &TMP$312$6, 0, 24ll );
						__builtin_memset( &TMP$311$6, 0, 24ll );
						FBSTRING* vr$90 = fb_StrConcat( &TMP$311$6, (void*)"movlps xmm7, ", 14ll, (void*)&SRC$1, -1ll );
						fb_StrAssign( (void*)&TMP$312$6, -1ll, (void*)vr$90, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$312$6 );
						fb_StrDelete( (FBSTRING*)&TMP$312$6 );
						__builtin_memset( &TMP$316$6, 0, 24ll );
						__builtin_memset( &TMP$313$6, 0, 24ll );
						FBSTRING* vr$96 = fb_StrConcat( &TMP$313$6, (void*)"movlps ", 8ll, (void*)&DST$1, -1ll );
						__builtin_memset( &TMP$314$6, 0, 24ll );
						FBSTRING* vr$99 = fb_StrConcat( &TMP$314$6, (void*)vr$96, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$315$6, 0, 24ll );
						FBSTRING* vr$102 = fb_StrConcat( &TMP$315$6, (void*)vr$99, -1ll, (void*)"xmm7", 5ll );
						fb_StrAssign( (void*)&TMP$316$6, -1ll, (void*)vr$102, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$316$6 );
						fb_StrDelete( (FBSTRING*)&TMP$316$6 );
					}
					goto label$123;
					label$124:;
					if( *(int64*)((uint8*)SVREG$1 + 40ll) != 3ll ) goto label$125;
					{
						FBSTRING TMP$319$6;
						FBSTRING TMP$320$6;
						FBSTRING TMP$321$6;
						FBSTRING TMP$322$6;
						FBSTRING TMP$323$6;
						FBSTRING TMP$324$6;
						FBSTRING TMP$326$6;
						FBSTRING TMP$327$6;
						FBSTRING TMP$328$6;
						FBSTRING TMP$329$6;
						__builtin_memset( &TMP$320$6, 0, 24ll );
						__builtin_memset( &TMP$319$6, 0, 24ll );
						FBSTRING* vr$109 = fb_StrConcat( &TMP$319$6, (void*)"movups xmm7, ", 14ll, (void*)&SRC$1, -1ll );
						fb_StrAssign( (void*)&TMP$320$6, -1ll, (void*)vr$109, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$320$6 );
						fb_StrDelete( (FBSTRING*)&TMP$320$6 );
						__builtin_memset( &TMP$324$6, 0, 24ll );
						__builtin_memset( &TMP$321$6, 0, 24ll );
						FBSTRING* vr$115 = fb_StrConcat( &TMP$321$6, (void*)"movlps ", 8ll, (void*)&DST$1, -1ll );
						__builtin_memset( &TMP$322$6, 0, 24ll );
						FBSTRING* vr$118 = fb_StrConcat( &TMP$322$6, (void*)vr$115, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$323$6, 0, 24ll );
						FBSTRING* vr$121 = fb_StrConcat( &TMP$323$6, (void*)vr$118, -1ll, (void*)"xmm7", 5ll );
						fb_StrAssign( (void*)&TMP$324$6, -1ll, (void*)vr$121, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$324$6 );
						fb_StrDelete( (FBSTRING*)&TMP$324$6 );
						OUTP( (uint8*)"unpckhps xmm7, xmm7" );
						HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 8ll, 0ll, -1ll );
						__builtin_memset( &TMP$329$6, 0, 24ll );
						__builtin_memset( &TMP$326$6, 0, 24ll );
						FBSTRING* vr$127 = fb_StrConcat( &TMP$326$6, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
						__builtin_memset( &TMP$327$6, 0, 24ll );
						FBSTRING* vr$130 = fb_StrConcat( &TMP$327$6, (void*)vr$127, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$328$6, 0, 24ll );
						FBSTRING* vr$133 = fb_StrConcat( &TMP$328$6, (void*)vr$130, -1ll, (void*)"xmm7", 5ll );
						fb_StrAssign( (void*)&TMP$329$6, -1ll, (void*)vr$133, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$329$6 );
						fb_StrDelete( (FBSTRING*)&TMP$329$6 );
					}
					goto label$123;
					label$125:;
					if( *(int64*)((uint8*)SVREG$1 + 40ll) != 4ll ) goto label$126;
					{
						FBSTRING TMP$330$6;
						FBSTRING TMP$331$6;
						FBSTRING TMP$332$6;
						FBSTRING TMP$333$6;
						FBSTRING TMP$334$6;
						FBSTRING TMP$335$6;
						__builtin_memset( &TMP$331$6, 0, 24ll );
						__builtin_memset( &TMP$330$6, 0, 24ll );
						FBSTRING* vr$140 = fb_StrConcat( &TMP$330$6, (void*)"movups xmm7, ", 14ll, (void*)&SRC$1, -1ll );
						fb_StrAssign( (void*)&TMP$331$6, -1ll, (void*)vr$140, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$331$6 );
						fb_StrDelete( (FBSTRING*)&TMP$331$6 );
						__builtin_memset( &TMP$335$6, 0, 24ll );
						__builtin_memset( &TMP$332$6, 0, 24ll );
						FBSTRING* vr$146 = fb_StrConcat( &TMP$332$6, (void*)"movups ", 8ll, (void*)&DST$1, -1ll );
						__builtin_memset( &TMP$333$6, 0, 24ll );
						FBSTRING* vr$149 = fb_StrConcat( &TMP$333$6, (void*)vr$146, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$334$6, 0, 24ll );
						FBSTRING* vr$152 = fb_StrConcat( &TMP$334$6, (void*)vr$149, -1ll, (void*)"xmm7", 5ll );
						fb_StrAssign( (void*)&TMP$335$6, -1ll, (void*)vr$152, -1ll, 0 );
						OUTP( (uint8*)*(uint8**)&TMP$335$6 );
						fb_StrDelete( (FBSTRING*)&TMP$335$6 );
					}
					label$126:;
					label$123:;
				}
				label$121:;
				goto label$102;
			}
			label$120:;
			label$119:;
			if( DDSIZE$1 <= 4ll ) goto label$128;
			{
				FBSTRING TMP$338$4;
				FBSTRING TMP$339$4;
				FBSTRING TMP$340$4;
				FBSTRING TMP$341$4;
				FBSTRING TMP$342$4;
				FBSTRING TMP$343$4;
				__builtin_memset( &TMP$339$4, 0, 24ll );
				__builtin_memset( &TMP$338$4, 0, 24ll );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$338$4, (void*)"movlpd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$339$4, -1ll, (void*)vr$158, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$339$4 );
				fb_StrDelete( (FBSTRING*)&TMP$339$4 );
				__builtin_memset( &TMP$343$4, 0, 24ll );
				__builtin_memset( &TMP$340$4, 0, 24ll );
				FBSTRING* vr$164 = fb_StrConcat( &TMP$340$4, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
				__builtin_memset( &TMP$341$4, 0, 24ll );
				FBSTRING* vr$167 = fb_StrConcat( &TMP$341$4, (void*)vr$164, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$342$4, 0, 24ll );
				FBSTRING* vr$170 = fb_StrConcat( &TMP$342$4, (void*)vr$167, -1ll, (void*)"xmm7", 5ll );
				fb_StrAssign( (void*)&TMP$343$4, -1ll, (void*)vr$170, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$343$4 );
				fb_StrDelete( (FBSTRING*)&TMP$343$4 );
			}
			goto label$127;
			label$128:;
			{
				FBSTRING TMP$346$4;
				FBSTRING TMP$347$4;
				FBSTRING TMP$348$4;
				FBSTRING TMP$349$4;
				FBSTRING TMP$350$4;
				FBSTRING TMP$351$4;
				__builtin_memset( &TMP$347$4, 0, 24ll );
				__builtin_memset( &TMP$346$4, 0, 24ll );
				FBSTRING* vr$176 = fb_StrConcat( &TMP$346$4, (void*)"movss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$347$4, -1ll, (void*)vr$176, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$347$4 );
				fb_StrDelete( (FBSTRING*)&TMP$347$4 );
				__builtin_memset( &TMP$351$4, 0, 24ll );
				__builtin_memset( &TMP$348$4, 0, 24ll );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$348$4, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
				__builtin_memset( &TMP$349$4, 0, 24ll );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$349$4, (void*)vr$182, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$350$4, 0, 24ll );
				FBSTRING* vr$188 = fb_StrConcat( &TMP$350$4, (void*)vr$185, -1ll, (void*)"xmm7", 5ll );
				fb_StrAssign( (void*)&TMP$351$4, -1ll, (void*)vr$188, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$351$4 );
				fb_StrDelete( (FBSTRING*)&TMP$351$4 );
			}
			label$127:;
		}
		goto label$117;
		label$118:;
		{
			if( SDSIZE$1 <= 4ll ) goto label$130;
			{
				if( SRC_VEC$1 == 0ll ) goto label$132;
				{
					FBSTRING TMP$354$5;
					FBSTRING TMP$355$5;
					FBSTRING TMP$356$5;
					FBSTRING TMP$357$5;
					FBSTRING TMP$358$5;
					FBSTRING TMP$359$5;
					__builtin_memset( &TMP$355$5, 0, 24ll );
					__builtin_memset( &TMP$354$5, 0, 24ll );
					FBSTRING* vr$194 = fb_StrConcat( &TMP$354$5, (void*)"cvtpd2ps xmm7, ", 16ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$355$5, -1ll, (void*)vr$194, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$355$5 );
					fb_StrDelete( (FBSTRING*)&TMP$355$5 );
					__builtin_memset( &TMP$359$5, 0, 24ll );
					__builtin_memset( &TMP$356$5, 0, 24ll );
					FBSTRING* vr$200 = fb_StrConcat( &TMP$356$5, (void*)"movlps ", 8ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$357$5, 0, 24ll );
					FBSTRING* vr$203 = fb_StrConcat( &TMP$357$5, (void*)vr$200, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$358$5, 0, 24ll );
					FBSTRING* vr$206 = fb_StrConcat( &TMP$358$5, (void*)vr$203, -1ll, (void*)"xmm7", 5ll );
					fb_StrAssign( (void*)&TMP$359$5, -1ll, (void*)vr$206, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$359$5 );
					fb_StrDelete( (FBSTRING*)&TMP$359$5 );
				}
				goto label$131;
				label$132:;
				{
					FBSTRING TMP$362$5;
					FBSTRING TMP$363$5;
					FBSTRING TMP$364$5;
					FBSTRING TMP$365$5;
					FBSTRING TMP$366$5;
					FBSTRING TMP$367$5;
					__builtin_memset( &TMP$363$5, 0, 24ll );
					__builtin_memset( &TMP$362$5, 0, 24ll );
					FBSTRING* vr$212 = fb_StrConcat( &TMP$362$5, (void*)"cvtsd2ss xmm7, ", 16ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$363$5, -1ll, (void*)vr$212, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$363$5 );
					fb_StrDelete( (FBSTRING*)&TMP$363$5 );
					__builtin_memset( &TMP$367$5, 0, 24ll );
					__builtin_memset( &TMP$364$5, 0, 24ll );
					FBSTRING* vr$218 = fb_StrConcat( &TMP$364$5, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$365$5, 0, 24ll );
					FBSTRING* vr$221 = fb_StrConcat( &TMP$365$5, (void*)vr$218, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$366$5, 0, 24ll );
					FBSTRING* vr$224 = fb_StrConcat( &TMP$366$5, (void*)vr$221, -1ll, (void*)"xmm7", 5ll );
					fb_StrAssign( (void*)&TMP$367$5, -1ll, (void*)vr$224, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$367$5 );
					fb_StrDelete( (FBSTRING*)&TMP$367$5 );
				}
				label$131:;
			}
			goto label$129;
			label$130:;
			{
				if( SRC_VEC$1 == 0ll ) goto label$134;
				{
					FBSTRING TMP$370$5;
					FBSTRING TMP$371$5;
					FBSTRING TMP$372$5;
					FBSTRING TMP$373$5;
					FBSTRING TMP$374$5;
					FBSTRING TMP$375$5;
					__builtin_memset( &TMP$371$5, 0, 24ll );
					__builtin_memset( &TMP$370$5, 0, 24ll );
					FBSTRING* vr$230 = fb_StrConcat( &TMP$370$5, (void*)"cvtps2pd xmm7, ", 16ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$371$5, -1ll, (void*)vr$230, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$371$5 );
					fb_StrDelete( (FBSTRING*)&TMP$371$5 );
					__builtin_memset( &TMP$375$5, 0, 24ll );
					__builtin_memset( &TMP$372$5, 0, 24ll );
					FBSTRING* vr$236 = fb_StrConcat( &TMP$372$5, (void*)"movupd ", 8ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$373$5, 0, 24ll );
					FBSTRING* vr$239 = fb_StrConcat( &TMP$373$5, (void*)vr$236, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$374$5, 0, 24ll );
					FBSTRING* vr$242 = fb_StrConcat( &TMP$374$5, (void*)vr$239, -1ll, (void*)"xmm7", 5ll );
					fb_StrAssign( (void*)&TMP$375$5, -1ll, (void*)vr$242, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$375$5 );
					fb_StrDelete( (FBSTRING*)&TMP$375$5 );
				}
				goto label$133;
				label$134:;
				{
					FBSTRING TMP$378$5;
					FBSTRING TMP$379$5;
					FBSTRING TMP$380$5;
					FBSTRING TMP$381$5;
					FBSTRING TMP$382$5;
					FBSTRING TMP$383$5;
					__builtin_memset( &TMP$379$5, 0, 24ll );
					__builtin_memset( &TMP$378$5, 0, 24ll );
					FBSTRING* vr$248 = fb_StrConcat( &TMP$378$5, (void*)"cvtss2sd xmm7, ", 16ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$379$5, -1ll, (void*)vr$248, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$379$5 );
					fb_StrDelete( (FBSTRING*)&TMP$379$5 );
					__builtin_memset( &TMP$383$5, 0, 24ll );
					__builtin_memset( &TMP$380$5, 0, 24ll );
					FBSTRING* vr$254 = fb_StrConcat( &TMP$380$5, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$381$5, 0, 24ll );
					FBSTRING* vr$257 = fb_StrConcat( &TMP$381$5, (void*)vr$254, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$382$5, 0, 24ll );
					FBSTRING* vr$260 = fb_StrConcat( &TMP$382$5, (void*)vr$257, -1ll, (void*)"xmm7", 5ll );
					fb_StrAssign( (void*)&TMP$383$5, -1ll, (void*)vr$260, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$383$5 );
					fb_StrDelete( (FBSTRING*)&TMP$383$5 );
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
	int64 TMP$384$1;
	int64 TMP$391$1;
	int64 TMP$392$1;
	label$135:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	static int64 DDSIZE$1;
	static int64 SDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$137;
	TMP$384$1 = 24ll;
	goto label$756;
	label$137:;
	TMP$384$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$756:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$384$1 * 56ll)) + 8ll);
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 1ll ) goto label$139;
	{
		if( *(int64*)SVREG$1 != 4ll ) goto label$141;
		{
			OUTP( (uint8*)"sub esp, 8" );
			if( SDSIZE$1 <= 4ll ) goto label$143;
			{
				FBSTRING TMP$385$4;
				FBSTRING TMP$386$4;
				__builtin_memset( &TMP$386$4, 0, 24ll );
				__builtin_memset( &TMP$385$4, 0, 24ll );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$385$4, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$386$4, -1ll, (void*)vr$10, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$386$4 );
				fb_StrDelete( (FBSTRING*)&TMP$386$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$142;
			label$143:;
			{
				FBSTRING TMP$387$4;
				FBSTRING TMP$388$4;
				__builtin_memset( &TMP$388$4, 0, 24ll );
				__builtin_memset( &TMP$387$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$387$4, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$388$4, -1ll, (void*)vr$16, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$388$4 );
				fb_StrDelete( (FBSTRING*)&TMP$388$4 );
				OUTP( (uint8*)"fld dword ptr [esp]" );
			}
			label$142:;
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$140;
		label$141:;
		{
			FBSTRING TMP$389$3;
			FBSTRING TMP$390$3;
			__builtin_memset( &TMP$390$3, 0, 24ll );
			__builtin_memset( &TMP$389$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$389$3, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$390$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$390$3 );
			fb_StrDelete( (FBSTRING*)&TMP$390$3 );
		}
		label$140:;
	}
	label$139:;
	label$138:;
	HPREPOPERAND64( DVREG$1, &DST$1, &AUX$1 );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$144;
	TMP$391$1 = 24ll;
	goto label$757;
	label$144:;
	TMP$391$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$757:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$391$1 * 56ll)) + 16ll) != 0ll ) goto label$145;
	TMP$392$1 = (int64)-(*(int64*)((uint8*)DVREG$1 + 8ll) == 14ll);
	goto label$758;
	label$145:;
	TMP$392$1 = -1ll;
	label$758:;
	if( TMP$392$1 == 0ll ) goto label$147;
	{
		FBSTRING TMP$393$2;
		FBSTRING TMP$394$2;
		OUTP( (uint8*)"sub esp, 8" );
		__builtin_memset( &TMP$393$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$393$2, (void*)"fistp ", 7ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
		__builtin_memset( &TMP$394$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$394$2, (void*)vr$37, -1ll, (void*)" [esp]", 7ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$40, -1ll, 0 );
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
	int64 TMP$401$1;
	int64 TMP$402$1;
	int64 TMP$403$1;
	label$148:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING AUX$1;
	static FBSTRING AUX8_16$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 ISFREE$1;
	static int64 REG$1;
	static int64 WASREG$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$150;
	TMP$401$1 = 24ll;
	goto label$759;
	label$150:;
	TMP$401$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$759:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$401$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$151;
	TMP$402$1 = 24ll;
	goto label$760;
	label$151:;
	TMP$402$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$760:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$402$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$152;
	TMP$403$1 = 24ll;
	goto label$761;
	label$152:;
	TMP$403$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$761:;
	if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$403$1 * 56ll)) + 16ll) == 0ll) & (int64)-(DDSIZE$1 == 4ll)) == 0ll ) goto label$154;
	{
		OUTP( (uint8*)"sub esp, 8" );
		if( *(int64*)SVREG$1 == 4ll ) goto label$156;
		{
			FBSTRING TMP$404$3;
			FBSTRING TMP$405$3;
			__builtin_memset( &TMP$405$3, 0, 24ll );
			__builtin_memset( &TMP$404$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$404$3, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$405$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$405$3 );
			fb_StrDelete( (FBSTRING*)&TMP$405$3 );
		}
		goto label$155;
		label$156:;
		if( *(int64*)((uint8*)SVREG$1 + 32ll) != 1ll ) goto label$157;
		{
			if( SDSIZE$1 <= 4ll ) goto label$159;
			{
				FBSTRING TMP$406$4;
				FBSTRING TMP$407$4;
				__builtin_memset( &TMP$407$4, 0, 24ll );
				__builtin_memset( &TMP$406$4, 0, 24ll );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$406$4, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$407$4, -1ll, (void*)vr$29, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$407$4 );
				fb_StrDelete( (FBSTRING*)&TMP$407$4 );
				OUTP( (uint8*)"fld qword ptr [esp]" );
			}
			goto label$158;
			label$159:;
			{
				FBSTRING TMP$408$4;
				FBSTRING TMP$409$4;
				__builtin_memset( &TMP$409$4, 0, 24ll );
				__builtin_memset( &TMP$408$4, 0, 24ll );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$408$4, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$409$4, -1ll, (void*)vr$35, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$409$4 );
				fb_StrDelete( (FBSTRING*)&TMP$409$4 );
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
	if( *(int64*)DVREG$1 != 4ll ) goto label$161;
	{
		ISFREE$1 = -1ll;
		if( DDSIZE$1 >= 4ll ) goto label$163;
		{
			uint8* vr$40 = HGETREGNAME( 8ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
			fb_StrAssign( (void*)&DST$1, -1ll, (void*)vr$40, 0ll, 0 );
		}
		label$163:;
		label$162:;
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)&DST$1, -1ll, 0 );
		WASREG$1 = -1ll;
	}
	goto label$160;
	label$161:;
	{
		WASREG$1 = 0ll;
		int64 vr$41 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$1 = vr$41;
		uint8* vr$42 = HGETREGNAME( 8ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$42, 0ll, 0 );
		uint8* vr$44 = HGETREGNAME( *(int64*)((uint8*)DVREG$1 + 8ll), REG$1 );
		fb_StrAssign( (void*)&AUX8_16$1, -1ll, (void*)vr$44, 0ll, 0 );
		int64 vr$45 = HISREGFREE( 0ll, REG$1 );
		ISFREE$1 = vr$45;
		if( ISFREE$1 != 0ll ) goto label$165;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$165:;
		label$164:;
	}
	label$160:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$167;
	{
		OUTP( (uint8*)"sub esp, 4" );
		if( DDSIZE$1 != 2ll ) goto label$169;
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
		int64 TMP$411$2;
		int64 TMP$412$2;
		if( SDSIZE$1 <= 4ll ) goto label$170;
		TMP$411$2 = 100ll;
		goto label$762;
		label$170:;
		TMP$411$2 = 115ll;
		label$762:;
		FBSTRING* vr$47 = fb_CHR( 1, TMP$411$2 );
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)vr$47, -1ll, 0 );
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$171;
		TMP$412$2 = 24ll;
		goto label$763;
		label$171:;
		TMP$412$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$763:;
		if( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$412$2 * 56ll)) + 16ll) & (int64)-(DDSIZE$1 == 2ll)) == 0ll ) goto label$173;
		{
			FBSTRING TMP$419$3;
			FBSTRING TMP$420$3;
			FBSTRING TMP$421$3;
			FBSTRING TMP$422$3;
			FBSTRING TMP$423$3;
			FBSTRING TMP$426$3;
			FBSTRING TMP$427$3;
			FBSTRING TMP$428$3;
			FBSTRING TMP$429$3;
			if( *(int64*)SVREG$1 == 4ll ) goto label$175;
			{
				if( SDSIZE$1 <= 4ll ) goto label$177;
				{
					FBSTRING TMP$413$5;
					FBSTRING TMP$414$5;
					__builtin_memset( &TMP$414$5, 0, 24ll );
					__builtin_memset( &TMP$413$5, 0, 24ll );
					FBSTRING* vr$59 = fb_StrConcat( &TMP$413$5, (void*)"movlpd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$414$5, -1ll, (void*)vr$59, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$414$5 );
					fb_StrDelete( (FBSTRING*)&TMP$414$5 );
				}
				goto label$176;
				label$177:;
				{
					FBSTRING TMP$415$5;
					FBSTRING TMP$416$5;
					__builtin_memset( &TMP$416$5, 0, 24ll );
					__builtin_memset( &TMP$415$5, 0, 24ll );
					FBSTRING* vr$65 = fb_StrConcat( &TMP$415$5, (void*)"movss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$416$5, -1ll, (void*)vr$65, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$416$5 );
					fb_StrDelete( (FBSTRING*)&TMP$416$5 );
				}
				label$176:;
				fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
			}
			label$175:;
			label$174:;
			__builtin_memset( &TMP$423$3, 0, 24ll );
			__builtin_memset( &TMP$419$3, 0, 24ll );
			FBSTRING* vr$71 = fb_StrConcat( &TMP$419$3, (void*)"cvtp", 5ll, (void*)&SUFFIX$1, -1ll );
			__builtin_memset( &TMP$420$3, 0, 24ll );
			FBSTRING* vr$74 = fb_StrConcat( &TMP$420$3, (void*)vr$71, -1ll, (void*)"2dq xmm7", 9ll );
			__builtin_memset( &TMP$421$3, 0, 24ll );
			FBSTRING* vr$77 = fb_StrConcat( &TMP$421$3, (void*)vr$74, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$422$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$422$3, (void*)vr$77, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$423$3, -1ll, (void*)vr$80, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$423$3 );
			fb_StrDelete( (FBSTRING*)&TMP$423$3 );
			OUTP( (uint8*)"packssdw xmm7, xmm7" );
			__builtin_memset( &TMP$429$3, 0, 24ll );
			__builtin_memset( &TMP$426$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$426$3, (void*)"movd ", 6ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$427$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$427$3, (void*)vr$86, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$428$3, 0, 24ll );
			FBSTRING* vr$92 = fb_StrConcat( &TMP$428$3, (void*)vr$89, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$429$3, -1ll, (void*)vr$92, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$429$3 );
			fb_StrDelete( (FBSTRING*)&TMP$429$3 );
		}
		goto label$172;
		label$173:;
		{
			FBSTRING TMP$432$3;
			FBSTRING TMP$433$3;
			FBSTRING TMP$434$3;
			FBSTRING TMP$435$3;
			FBSTRING TMP$436$3;
			FBSTRING TMP$437$3;
			HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
			__builtin_memset( &TMP$437$3, 0, 24ll );
			__builtin_memset( &TMP$432$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$432$3, (void*)"cvts", 5ll, (void*)&SUFFIX$1, -1ll );
			__builtin_memset( &TMP$433$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$433$3, (void*)vr$98, -1ll, (void*)"2si ", 5ll );
			__builtin_memset( &TMP$434$3, 0, 24ll );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$434$3, (void*)vr$101, -1ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$435$3, 0, 24ll );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$435$3, (void*)vr$104, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$436$3, 0, 24ll );
			FBSTRING* vr$110 = fb_StrConcat( &TMP$436$3, (void*)vr$107, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$437$3, -1ll, (void*)vr$110, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$437$3 );
			fb_StrDelete( (FBSTRING*)&TMP$437$3 );
		}
		label$172:;
	}
	label$166:;
	if( WASREG$1 != 0ll ) goto label$179;
	{
		if( DDSIZE$1 != 4ll ) goto label$181;
		{
			FBSTRING TMP$438$3;
			FBSTRING TMP$439$3;
			FBSTRING TMP$440$3;
			FBSTRING TMP$441$3;
			__builtin_memset( &TMP$441$3, 0, 24ll );
			__builtin_memset( &TMP$438$3, 0, 24ll );
			FBSTRING* vr$116 = fb_StrConcat( &TMP$438$3, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$439$3, 0, 24ll );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$439$3, (void*)vr$116, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$440$3, 0, 24ll );
			FBSTRING* vr$122 = fb_StrConcat( &TMP$440$3, (void*)vr$119, -1ll, (void*)&AUX$1, -1ll );
			fb_StrAssign( (void*)&TMP$441$3, -1ll, (void*)vr$122, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$441$3 );
			fb_StrDelete( (FBSTRING*)&TMP$441$3 );
		}
		goto label$180;
		label$181:;
		{
			FBSTRING TMP$442$3;
			FBSTRING TMP$443$3;
			FBSTRING TMP$444$3;
			FBSTRING TMP$445$3;
			__builtin_memset( &TMP$445$3, 0, 24ll );
			__builtin_memset( &TMP$442$3, 0, 24ll );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$442$3, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$443$3, 0, 24ll );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$443$3, (void*)vr$128, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$444$3, 0, 24ll );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$444$3, (void*)vr$131, -1ll, (void*)&AUX8_16$1, -1ll );
			fb_StrAssign( (void*)&TMP$445$3, -1ll, (void*)vr$134, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$445$3 );
			fb_StrDelete( (FBSTRING*)&TMP$445$3 );
		}
		label$180:;
		if( ISFREE$1 != 0ll ) goto label$183;
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
	int64 TMP$450$1;
	FBSTRING TMP$451$1;
	FBSTRING TMP$452$1;
	FBSTRING TMP$461$1;
	FBSTRING TMP$462$1;
	label$184:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( ((int64)-(*(int64*)SVREG$1 == 4ll) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$187;
	{
		int64 TMP$446$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$188;
		TMP$446$2 = 24ll;
		goto label$764;
		label$188:;
		TMP$446$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$764:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$446$2 * 56ll)) + 16ll) == 0ll ) goto label$190;
		{
			FBSTRING TMP$447$3;
			FBSTRING TMP$448$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$447$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$447$3, (void*)"fild ", 6ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$448$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$448$3, (void*)vr$15, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$18, -1ll, 0 );
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
		int64 TMP$449$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$191;
		TMP$449$2 = 24ll;
		goto label$765;
		label$191:;
		TMP$449$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$765:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$449$2 * 56ll)) + 16ll) == 0ll ) goto label$193;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$192;
		label$193:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$192:;
	}
	label$186:;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$194;
	TMP$450$1 = 24ll;
	goto label$766;
	label$194:;
	TMP$450$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$766:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$450$1 * 56ll)) + 8ll);
	__builtin_memset( &TMP$452$1, 0, 24ll );
	FBSTRING* vr$30 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$451$1, 0, 24ll );
	FBSTRING* vr$33 = fb_StrConcat( &TMP$451$1, (void*)"sub esp, ", 10ll, (void*)vr$30, -1ll );
	fb_StrAssign( (void*)&TMP$452$1, -1ll, (void*)vr$33, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$452$1 );
	fb_StrDelete( (FBSTRING*)&TMP$452$1 );
	if( DDSIZE$1 <= 4ll ) goto label$196;
	{
		FBSTRING TMP$453$2;
		FBSTRING TMP$454$2;
		FBSTRING TMP$455$2;
		FBSTRING TMP$456$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$456$2, 0, 24ll );
		__builtin_memset( &TMP$453$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$453$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$454$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$454$2, (void*)vr$39, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$455$2, 0, 24ll );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$455$2, (void*)vr$42, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$456$2, -1ll, (void*)vr$45, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$456$2 );
		fb_StrDelete( (FBSTRING*)&TMP$456$2 );
	}
	goto label$195;
	label$196:;
	{
		FBSTRING TMP$457$2;
		FBSTRING TMP$458$2;
		FBSTRING TMP$459$2;
		FBSTRING TMP$460$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$460$2, 0, 24ll );
		__builtin_memset( &TMP$457$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$457$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$458$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$458$2, (void*)vr$51, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$459$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$459$2, (void*)vr$54, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$460$2, -1ll, (void*)vr$57, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$460$2 );
		fb_StrDelete( (FBSTRING*)&TMP$460$2 );
	}
	label$195:;
	__builtin_memset( &TMP$462$1, 0, 24ll );
	FBSTRING* vr$61 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$461$1, 0, 24ll );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$461$1, (void*)"add esp, ", 10ll, (void*)vr$61, -1ll );
	fb_StrAssign( (void*)&TMP$462$1, -1ll, (void*)vr$64, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$462$1 );
	fb_StrDelete( (FBSTRING*)&TMP$462$1 );
	label$185:;
}

static void _EMITLOADI2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$463$1;
	int64 TMP$464$1;
	int64 TMP$465$1;
	FBSTRING TMP$534$1;
	FBSTRING TMP$535$1;
	FBSTRING TMP$544$1;
	FBSTRING TMP$545$1;
	label$197:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING AUX$1;
	static int64 ISFREE$1;
	static int64 REG$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$199;
	TMP$463$1 = 24ll;
	goto label$767;
	label$199:;
	TMP$463$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$767:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$463$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$200;
	TMP$464$1 = 24ll;
	goto label$768;
	label$200:;
	TMP$464$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$768:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$464$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$201;
	TMP$465$1 = 24ll;
	goto label$769;
	label$201:;
	TMP$465$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$769:;
	if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$465$1 * 56ll)) + 16ll) == 0ll) & (int64)-(SDSIZE$1 == 4ll)) == 0ll ) goto label$203;
	{
		FBSTRING TMP$468$2;
		FBSTRING TMP$469$2;
		FBSTRING TMP$470$2;
		FBSTRING TMP$471$2;
		FBSTRING TMP$474$2;
		FBSTRING TMP$475$2;
		FBSTRING TMP$476$2;
		FBSTRING TMP$477$2;
		FBSTRING TMP$479$2;
		FBSTRING TMP$480$2;
		FBSTRING TMP$481$2;
		FBSTRING TMP$482$2;
		FBSTRING TMP$483$2;
		FBSTRING TMP$484$2;
		FBSTRING TMP$485$2;
		FBSTRING TMP$486$2;
		FBSTRING TMP$487$2;
		FBSTRING TMP$490$2;
		FBSTRING TMP$491$2;
		FBSTRING TMP$492$2;
		FBSTRING TMP$493$2;
		FBSTRING TMP$494$2;
		FBSTRING TMP$495$2;
		FBSTRING TMP$496$2;
		FBSTRING TMP$497$2;
		FBSTRING TMP$498$2;
		FBSTRING TMP$500$2;
		FBSTRING TMP$501$2;
		FBSTRING TMP$502$2;
		FBSTRING TMP$503$2;
		FBSTRING TMP$504$2;
		FBSTRING TMP$506$2;
		FBSTRING TMP$507$2;
		FBSTRING TMP$508$2;
		FBSTRING TMP$509$2;
		FBSTRING TMP$510$2;
		int64 vr$18 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$1 = vr$18;
		uint8* vr$19 = HGETREGNAME( 8ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$19, 0ll, 0 );
		int64 vr$20 = HISREGFREE( 0ll, REG$1 );
		ISFREE$1 = vr$20;
		if( ISFREE$1 != 0ll ) goto label$205;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$205:;
		label$204:;
		if( DDSIZE$1 <= 4ll ) goto label$207;
		{
			struct $8FBSYMBOL* vr$21 = SYMBALLOCINTCONST( 4679240012837945344ll, 14ll );
			SYM$1 = vr$21;
			struct $6IRVREG* vr$23 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
			TEMPVREG$1 = vr$23;
			fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"sd ", 4ll, 0 );
		}
		goto label$206;
		label$207:;
		{
			struct $8FBSYMBOL* vr$24 = SYMBALLOCINTCONST( 1199570944ll, 9ll );
			SYM$1 = vr$24;
			struct $6IRVREG* vr$26 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
			TEMPVREG$1 = vr$26;
			fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"ss ", 4ll, 0 );
		}
		label$206:;
		*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
		__builtin_memset( &TMP$471$2, 0, 24ll );
		__builtin_memset( &TMP$468$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$468$2, (void*)"mov ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$469$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$469$2, (void*)vr$31, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$470$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$470$2, (void*)vr$34, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$471$2, -1ll, (void*)vr$37, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$471$2 );
		fb_StrDelete( (FBSTRING*)&TMP$471$2 );
		__builtin_memset( &TMP$477$2, 0, 24ll );
		__builtin_memset( &TMP$474$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$474$2, (void*)"and ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$475$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$475$2, (void*)vr$43, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$476$2, 0, 24ll );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$476$2, (void*)vr$46, -1ll, (void*)"0xFFFF", 7ll );
		fb_StrAssign( (void*)&TMP$477$2, -1ll, (void*)vr$49, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$477$2 );
		fb_StrDelete( (FBSTRING*)&TMP$477$2 );
		__builtin_memset( &TMP$483$2, 0, 24ll );
		__builtin_memset( &TMP$479$2, 0, 24ll );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$479$2, (void*)"cvtsi2", 7ll, (void*)&SUFFIX$1, -1ll );
		__builtin_memset( &TMP$480$2, 0, 24ll );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$480$2, (void*)vr$55, -1ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$481$2, 0, 24ll );
		FBSTRING* vr$61 = fb_StrConcat( &TMP$481$2, (void*)vr$58, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$482$2, 0, 24ll );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$482$2, (void*)vr$61, -1ll, (void*)&AUX$1, -1ll );
		fb_StrAssign( (void*)&TMP$483$2, -1ll, (void*)vr$64, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$483$2 );
		fb_StrDelete( (FBSTRING*)&TMP$483$2 );
		__builtin_memset( &TMP$487$2, 0, 24ll );
		__builtin_memset( &TMP$484$2, 0, 24ll );
		FBSTRING* vr$70 = fb_StrConcat( &TMP$484$2, (void*)"mov ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$485$2, 0, 24ll );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$485$2, (void*)vr$70, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$486$2, 0, 24ll );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$486$2, (void*)vr$73, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$487$2, -1ll, (void*)vr$76, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$487$2 );
		fb_StrDelete( (FBSTRING*)&TMP$487$2 );
		__builtin_memset( &TMP$493$2, 0, 24ll );
		__builtin_memset( &TMP$490$2, 0, 24ll );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$490$2, (void*)"shr ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$491$2, 0, 24ll );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$491$2, (void*)vr$82, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$492$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$492$2, (void*)vr$85, -1ll, (void*)"16", 3ll );
		fb_StrAssign( (void*)&TMP$493$2, -1ll, (void*)vr$88, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$493$2 );
		fb_StrDelete( (FBSTRING*)&TMP$493$2 );
		__builtin_memset( &TMP$498$2, 0, 24ll );
		__builtin_memset( &TMP$494$2, 0, 24ll );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$494$2, (void*)"cvtsi2", 7ll, (void*)&SUFFIX$1, -1ll );
		__builtin_memset( &TMP$495$2, 0, 24ll );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$495$2, (void*)vr$94, -1ll, (void*)"xmm7", 5ll );
		__builtin_memset( &TMP$496$2, 0, 24ll );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$496$2, (void*)vr$97, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$497$2, 0, 24ll );
		FBSTRING* vr$103 = fb_StrConcat( &TMP$497$2, (void*)vr$100, -1ll, (void*)&AUX$1, -1ll );
		fb_StrAssign( (void*)&TMP$498$2, -1ll, (void*)vr$103, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$498$2 );
		fb_StrDelete( (FBSTRING*)&TMP$498$2 );
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$504$2, 0, 24ll );
		__builtin_memset( &TMP$500$2, 0, 24ll );
		FBSTRING* vr$109 = fb_StrConcat( &TMP$500$2, (void*)"mul", 4ll, (void*)&SUFFIX$1, -1ll );
		__builtin_memset( &TMP$501$2, 0, 24ll );
		FBSTRING* vr$112 = fb_StrConcat( &TMP$501$2, (void*)vr$109, -1ll, (void*)"xmm7", 5ll );
		__builtin_memset( &TMP$502$2, 0, 24ll );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$502$2, (void*)vr$112, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$503$2, 0, 24ll );
		FBSTRING* vr$118 = fb_StrConcat( &TMP$503$2, (void*)vr$115, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$504$2, -1ll, (void*)vr$118, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$504$2 );
		fb_StrDelete( (FBSTRING*)&TMP$504$2 );
		__builtin_memset( &TMP$510$2, 0, 24ll );
		__builtin_memset( &TMP$506$2, 0, 24ll );
		FBSTRING* vr$124 = fb_StrConcat( &TMP$506$2, (void*)"add", 4ll, (void*)&SUFFIX$1, -1ll );
		__builtin_memset( &TMP$507$2, 0, 24ll );
		FBSTRING* vr$127 = fb_StrConcat( &TMP$507$2, (void*)vr$124, -1ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$508$2, 0, 24ll );
		FBSTRING* vr$130 = fb_StrConcat( &TMP$508$2, (void*)vr$127, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$509$2, 0, 24ll );
		FBSTRING* vr$133 = fb_StrConcat( &TMP$509$2, (void*)vr$130, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$510$2, -1ll, (void*)vr$133, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$510$2 );
		fb_StrDelete( (FBSTRING*)&TMP$510$2 );
		if( ISFREE$1 != 0ll ) goto label$209;
		{
			HPOP( (uint8*)*(uint8**)&AUX$1 );
		}
		label$209:;
		label$208:;
		goto label$198;
	}
	label$203:;
	label$202:;
	if( ((int64)-(*(int64*)SVREG$1 != 0ll) & (int64)-(SDSIZE$1 == 4ll)) == 0ll ) goto label$211;
	{
		ISFREE$1 = -1ll;
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	}
	goto label$210;
	label$211:;
	{
		int64 vr$140 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$1 = vr$140;
		uint8* vr$141 = HGETREGNAME( 8ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$141, 0ll, 0 );
		int64 vr$142 = HISREGFREE( 0ll, REG$1 );
		ISFREE$1 = vr$142;
		if( ISFREE$1 != 0ll ) goto label$213;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$213:;
		label$212:;
		if( ((int64)-(*(int64*)SVREG$1 == 0ll) | (int64)-(SDSIZE$1 == 4ll)) == 0ll ) goto label$215;
		{
			FBSTRING TMP$511$3;
			FBSTRING TMP$512$3;
			FBSTRING TMP$513$3;
			FBSTRING TMP$514$3;
			__builtin_memset( &TMP$514$3, 0, 24ll );
			__builtin_memset( &TMP$511$3, 0, 24ll );
			FBSTRING* vr$150 = fb_StrConcat( &TMP$511$3, (void*)"mov ", 5ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$512$3, 0, 24ll );
			FBSTRING* vr$153 = fb_StrConcat( &TMP$512$3, (void*)vr$150, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$513$3, 0, 24ll );
			FBSTRING* vr$156 = fb_StrConcat( &TMP$513$3, (void*)vr$153, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$514$3, -1ll, (void*)vr$156, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$514$3 );
			fb_StrDelete( (FBSTRING*)&TMP$514$3 );
		}
		goto label$214;
		label$215:;
		{
			int64 TMP$515$3;
			if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$216;
			TMP$515$3 = 24ll;
			goto label$770;
			label$216:;
			TMP$515$3 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
			label$770:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$515$3 * 56ll)) + 16ll) == 0ll ) goto label$218;
			{
				FBSTRING TMP$516$4;
				FBSTRING TMP$517$4;
				FBSTRING TMP$518$4;
				FBSTRING TMP$519$4;
				__builtin_memset( &TMP$519$4, 0, 24ll );
				__builtin_memset( &TMP$516$4, 0, 24ll );
				FBSTRING* vr$167 = fb_StrConcat( &TMP$516$4, (void*)"movsx ", 7ll, (void*)&AUX$1, -1ll );
				__builtin_memset( &TMP$517$4, 0, 24ll );
				FBSTRING* vr$170 = fb_StrConcat( &TMP$517$4, (void*)vr$167, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$518$4, 0, 24ll );
				FBSTRING* vr$173 = fb_StrConcat( &TMP$518$4, (void*)vr$170, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$519$4, -1ll, (void*)vr$173, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$519$4 );
				fb_StrDelete( (FBSTRING*)&TMP$519$4 );
			}
			goto label$217;
			label$218:;
			{
				FBSTRING TMP$520$4;
				FBSTRING TMP$521$4;
				FBSTRING TMP$522$4;
				FBSTRING TMP$523$4;
				__builtin_memset( &TMP$523$4, 0, 24ll );
				__builtin_memset( &TMP$520$4, 0, 24ll );
				FBSTRING* vr$179 = fb_StrConcat( &TMP$520$4, (void*)"movzx ", 7ll, (void*)&AUX$1, -1ll );
				__builtin_memset( &TMP$521$4, 0, 24ll );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$521$4, (void*)vr$179, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$522$4, 0, 24ll );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$522$4, (void*)vr$182, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$523$4, -1ll, (void*)vr$185, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$523$4 );
				fb_StrDelete( (FBSTRING*)&TMP$523$4 );
			}
			label$217:;
		}
		label$214:;
	}
	label$210:;
	if( DDSIZE$1 <= 4ll ) goto label$220;
	{
		FBSTRING TMP$525$2;
		FBSTRING TMP$526$2;
		FBSTRING TMP$527$2;
		FBSTRING TMP$528$2;
		__builtin_memset( &TMP$528$2, 0, 24ll );
		__builtin_memset( &TMP$525$2, 0, 24ll );
		FBSTRING* vr$191 = fb_StrConcat( &TMP$525$2, (void*)"cvtsi2sd ", 10ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$526$2, 0, 24ll );
		FBSTRING* vr$194 = fb_StrConcat( &TMP$526$2, (void*)vr$191, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$527$2, 0, 24ll );
		FBSTRING* vr$197 = fb_StrConcat( &TMP$527$2, (void*)vr$194, -1ll, (void*)&AUX$1, -1ll );
		fb_StrAssign( (void*)&TMP$528$2, -1ll, (void*)vr$197, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$528$2 );
		fb_StrDelete( (FBSTRING*)&TMP$528$2 );
	}
	goto label$219;
	label$220:;
	{
		FBSTRING TMP$530$2;
		FBSTRING TMP$531$2;
		FBSTRING TMP$532$2;
		FBSTRING TMP$533$2;
		__builtin_memset( &TMP$533$2, 0, 24ll );
		__builtin_memset( &TMP$530$2, 0, 24ll );
		FBSTRING* vr$203 = fb_StrConcat( &TMP$530$2, (void*)"cvtsi2ss ", 10ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$531$2, 0, 24ll );
		FBSTRING* vr$206 = fb_StrConcat( &TMP$531$2, (void*)vr$203, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$532$2, 0, 24ll );
		FBSTRING* vr$209 = fb_StrConcat( &TMP$532$2, (void*)vr$206, -1ll, (void*)&AUX$1, -1ll );
		fb_StrAssign( (void*)&TMP$533$2, -1ll, (void*)vr$209, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$533$2 );
		fb_StrDelete( (FBSTRING*)&TMP$533$2 );
	}
	label$219:;
	if( ISFREE$1 != 0ll ) goto label$222;
	{
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	label$222:;
	label$221:;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$224;
	{
		goto label$198;
		label$224:;
	}
	__builtin_memset( &TMP$535$1, 0, 24ll );
	FBSTRING* vr$214 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$534$1, 0, 24ll );
	FBSTRING* vr$217 = fb_StrConcat( &TMP$534$1, (void*)"sub esp, ", 10ll, (void*)vr$214, -1ll );
	fb_StrAssign( (void*)&TMP$535$1, -1ll, (void*)vr$217, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$535$1 );
	fb_StrDelete( (FBSTRING*)&TMP$535$1 );
	if( DDSIZE$1 <= 4ll ) goto label$226;
	{
		FBSTRING TMP$538$2;
		FBSTRING TMP$539$2;
		__builtin_memset( &TMP$539$2, 0, 24ll );
		__builtin_memset( &TMP$538$2, 0, 24ll );
		FBSTRING* vr$223 = fb_StrConcat( &TMP$538$2, (void*)"movlpd [esp], ", 15ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$539$2, -1ll, (void*)vr$223, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$539$2 );
		fb_StrDelete( (FBSTRING*)&TMP$539$2 );
		OUTP( (uint8*)"fld qword ptr [esp]" );
	}
	goto label$225;
	label$226:;
	{
		FBSTRING TMP$542$2;
		FBSTRING TMP$543$2;
		__builtin_memset( &TMP$543$2, 0, 24ll );
		__builtin_memset( &TMP$542$2, 0, 24ll );
		FBSTRING* vr$229 = fb_StrConcat( &TMP$542$2, (void*)"movss [esp], ", 14ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$543$2, -1ll, (void*)vr$229, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$543$2 );
		fb_StrDelete( (FBSTRING*)&TMP$543$2 );
		OUTP( (uint8*)"fld dword ptr [esp]" );
	}
	label$225:;
	__builtin_memset( &TMP$545$1, 0, 24ll );
	FBSTRING* vr$233 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$544$1, 0, 24ll );
	FBSTRING* vr$236 = fb_StrConcat( &TMP$544$1, (void*)"add esp, ", 10ll, (void*)vr$233, -1ll );
	fb_StrAssign( (void*)&TMP$545$1, -1ll, (void*)vr$236, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$545$1 );
	fb_StrDelete( (FBSTRING*)&TMP$545$1 );
	label$198:;
}

static void _EMITLOADF2F_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$548$1;
	int64 TMP$549$1;
	label$227:;
	static FBSTRING SRC$1;
	static FBSTRING DST$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, 0ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$230;
	{
		FBSTRING TMP$546$2;
		FBSTRING TMP$547$2;
		HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$547$2, 0, 24ll );
		__builtin_memset( &TMP$546$2, 0, 24ll );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$546$2, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$547$2, -1ll, (void*)vr$4, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$547$2 );
		fb_StrDelete( (FBSTRING*)&TMP$547$2 );
		goto label$228;
	}
	label$230:;
	label$229:;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$231;
	TMP$548$1 = 24ll;
	goto label$771;
	label$231:;
	TMP$548$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$771:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$548$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$232;
	TMP$549$1 = 24ll;
	goto label$772;
	label$232:;
	TMP$549$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$772:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$549$1 * 56ll)) + 8ll);
	if( SDSIZE$1 != DDSIZE$1 ) goto label$234;
	{
		if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$236;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
			if( DDSIZE$1 <= 4ll ) goto label$238;
			{
				FBSTRING TMP$550$4;
				FBSTRING TMP$551$4;
				FBSTRING TMP$552$4;
				FBSTRING TMP$553$4;
				__builtin_memset( &TMP$553$4, 0, 24ll );
				__builtin_memset( &TMP$550$4, 0, 24ll );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$550$4, (void*)"movupd ", 8ll, (void*)&DST$1, -1ll );
				__builtin_memset( &TMP$551$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$551$4, (void*)vr$21, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$552$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$552$4, (void*)vr$24, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$553$4, -1ll, (void*)vr$27, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$553$4 );
				fb_StrDelete( (FBSTRING*)&TMP$553$4 );
			}
			goto label$237;
			label$238:;
			{
				if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$240;
				{
					FBSTRING TMP$554$5;
					FBSTRING TMP$555$5;
					FBSTRING TMP$556$5;
					FBSTRING TMP$557$5;
					__builtin_memset( &TMP$557$5, 0, 24ll );
					__builtin_memset( &TMP$554$5, 0, 24ll );
					FBSTRING* vr$34 = fb_StrConcat( &TMP$554$5, (void*)"movlps ", 8ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$555$5, 0, 24ll );
					FBSTRING* vr$37 = fb_StrConcat( &TMP$555$5, (void*)vr$34, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$556$5, 0, 24ll );
					FBSTRING* vr$40 = fb_StrConcat( &TMP$556$5, (void*)vr$37, -1ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$557$5, -1ll, (void*)vr$40, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$557$5 );
					fb_StrDelete( (FBSTRING*)&TMP$557$5 );
				}
				goto label$239;
				label$240:;
				{
					FBSTRING TMP$558$5;
					FBSTRING TMP$559$5;
					FBSTRING TMP$560$5;
					FBSTRING TMP$561$5;
					__builtin_memset( &TMP$561$5, 0, 24ll );
					__builtin_memset( &TMP$558$5, 0, 24ll );
					FBSTRING* vr$46 = fb_StrConcat( &TMP$558$5, (void*)"movups ", 8ll, (void*)&DST$1, -1ll );
					__builtin_memset( &TMP$559$5, 0, 24ll );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$559$5, (void*)vr$46, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$560$5, 0, 24ll );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$560$5, (void*)vr$49, -1ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$561$5, -1ll, (void*)vr$52, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$561$5 );
					fb_StrDelete( (FBSTRING*)&TMP$561$5 );
				}
				label$239:;
			}
			label$237:;
			goto label$228;
		}
		label$236:;
		label$235:;
		if( DDSIZE$1 <= 4ll ) goto label$242;
		{
			FBSTRING TMP$562$3;
			FBSTRING TMP$563$3;
			FBSTRING TMP$564$3;
			FBSTRING TMP$565$3;
			__builtin_memset( &TMP$565$3, 0, 24ll );
			__builtin_memset( &TMP$562$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$562$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$563$3, 0, 24ll );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$563$3, (void*)vr$58, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$564$3, 0, 24ll );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$564$3, (void*)vr$61, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$565$3, -1ll, (void*)vr$64, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$565$3 );
			fb_StrDelete( (FBSTRING*)&TMP$565$3 );
		}
		goto label$241;
		label$242:;
		{
			FBSTRING TMP$566$3;
			FBSTRING TMP$567$3;
			FBSTRING TMP$568$3;
			FBSTRING TMP$569$3;
			__builtin_memset( &TMP$569$3, 0, 24ll );
			__builtin_memset( &TMP$566$3, 0, 24ll );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$566$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$567$3, 0, 24ll );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$567$3, (void*)vr$70, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$568$3, 0, 24ll );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$568$3, (void*)vr$73, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$569$3, -1ll, (void*)vr$76, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$569$3 );
			fb_StrDelete( (FBSTRING*)&TMP$569$3 );
		}
		label$241:;
	}
	goto label$233;
	label$234:;
	if( SDSIZE$1 <= 4ll ) goto label$243;
	{
		if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$245;
		{
			FBSTRING TMP$571$3;
			FBSTRING TMP$572$3;
			FBSTRING TMP$573$3;
			FBSTRING TMP$574$3;
			__builtin_memset( &TMP$574$3, 0, 24ll );
			__builtin_memset( &TMP$571$3, 0, 24ll );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$571$3, (void*)"cvtpd2ps ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$572$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$572$3, (void*)vr$83, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$573$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$573$3, (void*)vr$86, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$574$3, -1ll, (void*)vr$89, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$574$3 );
			fb_StrDelete( (FBSTRING*)&TMP$574$3 );
		}
		goto label$244;
		label$245:;
		{
			FBSTRING TMP$575$3;
			FBSTRING TMP$576$3;
			FBSTRING TMP$577$3;
			FBSTRING TMP$578$3;
			__builtin_memset( &TMP$578$3, 0, 24ll );
			__builtin_memset( &TMP$575$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$575$3, (void*)"cvtsd2ss ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$576$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$576$3, (void*)vr$95, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$577$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$577$3, (void*)vr$98, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$578$3, -1ll, (void*)vr$101, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$578$3 );
			fb_StrDelete( (FBSTRING*)&TMP$578$3 );
		}
		label$244:;
	}
	goto label$233;
	label$243:;
	{
		if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$247;
		{
			FBSTRING TMP$580$3;
			FBSTRING TMP$581$3;
			FBSTRING TMP$582$3;
			FBSTRING TMP$583$3;
			__builtin_memset( &TMP$583$3, 0, 24ll );
			__builtin_memset( &TMP$580$3, 0, 24ll );
			FBSTRING* vr$108 = fb_StrConcat( &TMP$580$3, (void*)"cvtps2pd ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$581$3, 0, 24ll );
			FBSTRING* vr$111 = fb_StrConcat( &TMP$581$3, (void*)vr$108, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$582$3, 0, 24ll );
			FBSTRING* vr$114 = fb_StrConcat( &TMP$582$3, (void*)vr$111, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$583$3, -1ll, (void*)vr$114, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$583$3 );
			fb_StrDelete( (FBSTRING*)&TMP$583$3 );
		}
		goto label$246;
		label$247:;
		{
			FBSTRING TMP$584$3;
			FBSTRING TMP$585$3;
			FBSTRING TMP$586$3;
			FBSTRING TMP$587$3;
			__builtin_memset( &TMP$587$3, 0, 24ll );
			__builtin_memset( &TMP$584$3, 0, 24ll );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$584$3, (void*)"cvtss2sd ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$585$3, 0, 24ll );
			FBSTRING* vr$123 = fb_StrConcat( &TMP$585$3, (void*)vr$120, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$586$3, 0, 24ll );
			FBSTRING* vr$126 = fb_StrConcat( &TMP$586$3, (void*)vr$123, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$587$3, -1ll, (void*)vr$126, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$587$3 );
			fb_StrDelete( (FBSTRING*)&TMP$587$3 );
		}
		label$246:;
	}
	label$233:;
	label$228:;
}

static void _EMITMOVF_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$588$1;
	int64 TMP$589$1;
	label$248:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, 0ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$250;
	TMP$588$1 = 24ll;
	goto label$773;
	label$250:;
	TMP$588$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$773:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$588$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$251;
	TMP$589$1 = 24ll;
	goto label$774;
	label$251:;
	TMP$589$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$774:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$589$1 * 56ll)) + 8ll);
	if( ((int64)-(SDSIZE$1 > 4ll) & (int64)-(DDSIZE$1 <= 4ll)) == 0ll ) goto label$253;
	{
		if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$255;
		{
			FBSTRING TMP$590$3;
			FBSTRING TMP$591$3;
			FBSTRING TMP$592$3;
			FBSTRING TMP$593$3;
			__builtin_memset( &TMP$593$3, 0, 24ll );
			__builtin_memset( &TMP$590$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$590$3, (void*)"cvtpd2ps ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$591$3, 0, 24ll );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$591$3, (void*)vr$17, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$592$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$592$3, (void*)vr$20, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$593$3, -1ll, (void*)vr$23, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$593$3 );
			fb_StrDelete( (FBSTRING*)&TMP$593$3 );
		}
		goto label$254;
		label$255:;
		{
			FBSTRING TMP$594$3;
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			FBSTRING TMP$597$3;
			__builtin_memset( &TMP$597$3, 0, 24ll );
			__builtin_memset( &TMP$594$3, 0, 24ll );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$594$3, (void*)"cvtsd2ss ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$595$3, 0, 24ll );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$595$3, (void*)vr$29, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$596$3, 0, 24ll );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$596$3, (void*)vr$32, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$597$3, -1ll, (void*)vr$35, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$597$3 );
			fb_StrDelete( (FBSTRING*)&TMP$597$3 );
		}
		label$254:;
	}
	goto label$252;
	label$253:;
	if( ((int64)-(DDSIZE$1 > 4ll) & (int64)-(SDSIZE$1 <= 4ll)) == 0ll ) goto label$256;
	{
		if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$258;
		{
			FBSTRING TMP$598$3;
			FBSTRING TMP$599$3;
			FBSTRING TMP$600$3;
			FBSTRING TMP$601$3;
			__builtin_memset( &TMP$601$3, 0, 24ll );
			__builtin_memset( &TMP$598$3, 0, 24ll );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$598$3, (void*)"cvtps2pd ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$599$3, 0, 24ll );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$599$3, (void*)vr$45, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$600$3, 0, 24ll );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$600$3, (void*)vr$48, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$601$3, -1ll, (void*)vr$51, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$601$3 );
			fb_StrDelete( (FBSTRING*)&TMP$601$3 );
		}
		goto label$257;
		label$258:;
		{
			FBSTRING TMP$602$3;
			FBSTRING TMP$603$3;
			FBSTRING TMP$604$3;
			FBSTRING TMP$605$3;
			__builtin_memset( &TMP$605$3, 0, 24ll );
			__builtin_memset( &TMP$602$3, 0, 24ll );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$602$3, (void*)"cvtss2sd ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$603$3, 0, 24ll );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$603$3, (void*)vr$57, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$604$3, 0, 24ll );
			FBSTRING* vr$63 = fb_StrConcat( &TMP$604$3, (void*)vr$60, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$605$3, -1ll, (void*)vr$63, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$605$3 );
			fb_StrDelete( (FBSTRING*)&TMP$605$3 );
		}
		label$257:;
	}
	goto label$252;
	label$256:;
	{
		FBSTRING TMP$607$2;
		FBSTRING TMP$608$2;
		FBSTRING TMP$609$2;
		FBSTRING TMP$610$2;
		__builtin_memset( &TMP$610$2, 0, 24ll );
		__builtin_memset( &TMP$607$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$607$2, (void*)"movaps ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$608$2, 0, 24ll );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$608$2, (void*)vr$69, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$609$2, 0, 24ll );
		FBSTRING* vr$75 = fb_StrConcat( &TMP$609$2, (void*)vr$72, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$610$2, -1ll, (void*)vr$75, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$610$2 );
		fb_StrDelete( (FBSTRING*)&TMP$610$2 );
	}
	label$252:;
	label$249:;
}

static void _EMITSWZREPF_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$611$1;
	label$259:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$261;
	TMP$611$1 = 24ll;
	goto label$775;
	label$261:;
	TMP$611$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$775:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$611$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( DDSIZE$1 <= 4ll ) goto label$263;
	{
		FBSTRING TMP$613$2;
		FBSTRING TMP$614$2;
		FBSTRING TMP$615$2;
		FBSTRING TMP$616$2;
		__builtin_memset( &TMP$616$2, 0, 24ll );
		__builtin_memset( &TMP$613$2, 0, 24ll );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$613$2, (void*)"unpcklpd ", 10ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$614$2, 0, 24ll );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$614$2, (void*)vr$8, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$615$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$615$2, (void*)vr$11, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$616$2, -1ll, (void*)vr$14, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$616$2 );
		fb_StrDelete( (FBSTRING*)&TMP$616$2 );
	}
	goto label$262;
	label$263:;
	{
		if( *(int64*)((uint8*)DVREG$1 + 40ll) != 2ll ) goto label$265;
		{
			FBSTRING TMP$618$3;
			FBSTRING TMP$619$3;
			FBSTRING TMP$620$3;
			FBSTRING TMP$621$3;
			__builtin_memset( &TMP$621$3, 0, 24ll );
			__builtin_memset( &TMP$618$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$618$3, (void*)"unpcklps ", 10ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$619$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$619$3, (void*)vr$21, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$620$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$620$3, (void*)vr$24, -1ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$621$3, -1ll, (void*)vr$27, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$621$3 );
			fb_StrDelete( (FBSTRING*)&TMP$621$3 );
		}
		goto label$264;
		label$265:;
		{
			FBSTRING TMP$624$3;
			FBSTRING TMP$625$3;
			FBSTRING TMP$626$3;
			FBSTRING TMP$627$3;
			FBSTRING TMP$628$3;
			FBSTRING TMP$629$3;
			__builtin_memset( &TMP$629$3, 0, 24ll );
			__builtin_memset( &TMP$624$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$624$3, (void*)"shufps ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$625$3, 0, 24ll );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$625$3, (void*)vr$33, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$626$3, 0, 24ll );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$626$3, (void*)vr$36, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$627$3, 0, 24ll );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$627$3, (void*)vr$39, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$628$3, 0, 24ll );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$628$3, (void*)vr$42, -1ll, (void*)"0x0", 4ll );
			fb_StrAssign( (void*)&TMP$629$3, -1ll, (void*)vr$45, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$629$3 );
			fb_StrDelete( (FBSTRING*)&TMP$629$3 );
		}
		label$264:;
	}
	label$262:;
	label$260:;
}

static int64 HEMITCONVERTOPERANDS_SSE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$630$1;
	int64 TMP$631$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$266:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$268;
	TMP$630$1 = 24ll;
	goto label$776;
	label$268:;
	TMP$630$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$776:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$630$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$269;
	TMP$631$1 = 24ll;
	goto label$777;
	label$269:;
	TMP$631$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$777:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$631$1 * 56ll)) + 8ll);
	fb$result$1 = 0ll;
	if( DDSIZE$1 <= 4ll ) goto label$271;
	{
		if( SDSIZE$1 != 4ll ) goto label$273;
		{
			if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$275;
			{
				FBSTRING TMP$632$4;
				FBSTRING TMP$633$4;
				__builtin_memset( &TMP$633$4, 0, 24ll );
				__builtin_memset( &TMP$632$4, 0, 24ll );
				FBSTRING* vr$15 = fb_StrConcat( &TMP$632$4, (void*)"cvtps2pd xmm7, ", 16ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$633$4, -1ll, (void*)vr$15, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$633$4 );
				fb_StrDelete( (FBSTRING*)&TMP$633$4 );
			}
			goto label$274;
			label$275:;
			{
				FBSTRING TMP$634$4;
				FBSTRING TMP$635$4;
				__builtin_memset( &TMP$635$4, 0, 24ll );
				__builtin_memset( &TMP$634$4, 0, 24ll );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$634$4, (void*)"cvtss2sd xmm7, ", 16ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$635$4, -1ll, (void*)vr$21, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$635$4 );
				fb_StrDelete( (FBSTRING*)&TMP$635$4 );
			}
			label$274:;
			fb$result$1 = -1ll;
		}
		label$273:;
		label$272:;
	}
	goto label$270;
	label$271:;
	{
		if( SDSIZE$1 <= 4ll ) goto label$277;
		{
			if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$279;
			{
				FBSTRING TMP$636$4;
				FBSTRING TMP$637$4;
				__builtin_memset( &TMP$637$4, 0, 24ll );
				__builtin_memset( &TMP$636$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$636$4, (void*)"cvtpd2ps xmm7, ", 16ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$637$4, -1ll, (void*)vr$28, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$637$4 );
				fb_StrDelete( (FBSTRING*)&TMP$637$4 );
			}
			goto label$278;
			label$279:;
			{
				FBSTRING TMP$638$4;
				FBSTRING TMP$639$4;
				__builtin_memset( &TMP$639$4, 0, 24ll );
				__builtin_memset( &TMP$638$4, 0, 24ll );
				FBSTRING* vr$34 = fb_StrConcat( &TMP$638$4, (void*)"cvtsd2ss xmm7, ", 16ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$639$4, -1ll, (void*)vr$34, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$639$4 );
				fb_StrDelete( (FBSTRING*)&TMP$639$4 );
			}
			label$278:;
			fb$result$1 = -1ll;
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
	int64 TMP$640$1;
	int64 TMP$641$1;
	int64 TMP$662$1;
	label$280:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$282;
	TMP$640$1 = 24ll;
	goto label$778;
	label$282:;
	TMP$640$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$778:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$640$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$283;
	TMP$641$1 = 24ll;
	goto label$779;
	label$283:;
	TMP$641$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$779:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$641$1 * 56ll)) + 8ll);
	RETURNSIZE$1 = 0ll;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$285;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$284;
	label$285:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$286;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$286:;
	label$284:;
	if( RETURNSIZE$1 == 0ll ) goto label$288;
	{
		FBSTRING TMP$642$2;
		FBSTRING TMP$643$2;
		__builtin_memset( &TMP$643$2, 0, 24ll );
		FBSTRING* vr$13 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$642$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$642$2, (void*)"sub esp, ", 10ll, (void*)vr$13, -1ll );
		fb_StrAssign( (void*)&TMP$643$2, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$643$2 );
		fb_StrDelete( (FBSTRING*)&TMP$643$2 );
	}
	label$288:;
	label$287:;
	if( RETURNSIZE$1 != 8ll ) goto label$290;
	{
		FBSTRING TMP$644$2;
		FBSTRING TMP$645$2;
		FBSTRING TMP$646$2;
		FBSTRING TMP$647$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$647$2, 0, 24ll );
		__builtin_memset( &TMP$644$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$644$2, (void*)"movlpd ", 8ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$645$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$645$2, (void*)vr$22, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$646$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$646$2, (void*)vr$25, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$647$2, -1ll, (void*)vr$28, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$647$2 );
		fb_StrDelete( (FBSTRING*)&TMP$647$2 );
	}
	goto label$289;
	label$290:;
	if( RETURNSIZE$1 != 4ll ) goto label$291;
	{
		FBSTRING TMP$648$2;
		FBSTRING TMP$649$2;
		FBSTRING TMP$650$2;
		FBSTRING TMP$651$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$651$2, 0, 24ll );
		__builtin_memset( &TMP$648$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$648$2, (void*)"movss ", 7ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$649$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$649$2, (void*)vr$34, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$650$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$650$2, (void*)vr$37, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$651$2, -1ll, (void*)vr$40, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$651$2 );
		fb_StrDelete( (FBSTRING*)&TMP$651$2 );
	}
	label$291:;
	label$289:;
	if( RETURNSIZE$1 == 0ll ) goto label$293;
	{
		FBSTRING TMP$652$2;
		FBSTRING TMP$653$2;
		__builtin_memset( &TMP$653$2, 0, 24ll );
		FBSTRING* vr$44 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$652$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$652$2, (void*)"add esp, ", 10ll, (void*)vr$44, -1ll );
		fb_StrAssign( (void*)&TMP$653$2, -1ll, (void*)vr$47, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$653$2 );
		fb_StrDelete( (FBSTRING*)&TMP$653$2 );
	}
	label$293:;
	label$292:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"adds", 5ll, 0 );
	if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$295;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"addp", 5ll, 0 );
		if( *(int64*)SVREG$1 == 4ll ) goto label$297;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
			if( SDSIZE$1 <= 4ll ) goto label$299;
			{
				FBSTRING TMP$656$4;
				FBSTRING TMP$657$4;
				__builtin_memset( &TMP$657$4, 0, 24ll );
				__builtin_memset( &TMP$656$4, 0, 24ll );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$656$4, (void*)"movupd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$657$4, -1ll, (void*)vr$55, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$657$4 );
				fb_StrDelete( (FBSTRING*)&TMP$657$4 );
			}
			goto label$298;
			label$299:;
			{
				if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$301;
				{
					FBSTRING TMP$658$5;
					FBSTRING TMP$659$5;
					__builtin_memset( &TMP$659$5, 0, 24ll );
					__builtin_memset( &TMP$658$5, 0, 24ll );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$658$5, (void*)"movlps xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$659$5, -1ll, (void*)vr$62, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$659$5 );
					fb_StrDelete( (FBSTRING*)&TMP$659$5 );
				}
				goto label$300;
				label$301:;
				{
					FBSTRING TMP$660$5;
					FBSTRING TMP$661$5;
					__builtin_memset( &TMP$661$5, 0, 24ll );
					__builtin_memset( &TMP$660$5, 0, 24ll );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$660$5, (void*)"movups xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$661$5, -1ll, (void*)vr$68, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$661$5 );
					fb_StrDelete( (FBSTRING*)&TMP$661$5 );
				}
				label$300:;
			}
			label$298:;
			fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
		}
		label$297:;
		label$296:;
	}
	label$295:;
	label$294:;
	int64 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0ll ) goto label$303;
	{
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
	}
	label$303:;
	label$302:;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$304;
	TMP$662$1 = 24ll;
	goto label$780;
	label$304:;
	TMP$662$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$780:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$662$1 * 56ll)) != 1ll ) goto label$306;
	{
		if( DDSIZE$1 <= 4ll ) goto label$308;
		{
			FBSTRING TMP$664$3;
			FBSTRING TMP$665$3;
			FBSTRING TMP$666$3;
			FBSTRING TMP$667$3;
			FBSTRING TMP$668$3;
			__builtin_memset( &TMP$668$3, 0, 24ll );
			__builtin_memset( &TMP$664$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$664$3, (void*)&OSTR$1, -1ll, (void*)"d ", 3ll );
			__builtin_memset( &TMP$665$3, 0, 24ll );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$665$3, (void*)vr$80, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$666$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$666$3, (void*)vr$83, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$667$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$667$3, (void*)vr$86, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$668$3, -1ll, (void*)vr$89, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$668$3 );
			fb_StrDelete( (FBSTRING*)&TMP$668$3 );
		}
		goto label$307;
		label$308:;
		{
			FBSTRING TMP$670$3;
			FBSTRING TMP$671$3;
			FBSTRING TMP$672$3;
			FBSTRING TMP$673$3;
			FBSTRING TMP$674$3;
			__builtin_memset( &TMP$674$3, 0, 24ll );
			__builtin_memset( &TMP$670$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$670$3, (void*)&OSTR$1, -1ll, (void*)"s ", 3ll );
			__builtin_memset( &TMP$671$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$671$3, (void*)vr$95, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$672$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$672$3, (void*)vr$98, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$673$3, 0, 24ll );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$673$3, (void*)vr$101, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$674$3, -1ll, (void*)vr$104, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$674$3 );
			fb_StrDelete( (FBSTRING*)&TMP$674$3 );
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
	int64 TMP$676$1;
	int64 TMP$677$1;
	int64 TMP$698$1;
	label$309:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$311;
	TMP$676$1 = 24ll;
	goto label$781;
	label$311:;
	TMP$676$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$781:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$676$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$312;
	TMP$677$1 = 24ll;
	goto label$782;
	label$312:;
	TMP$677$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$782:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$677$1 * 56ll)) + 8ll);
	RETURNSIZE$1 = 0ll;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$314;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$313;
	label$314:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$315;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$315:;
	label$313:;
	if( RETURNSIZE$1 == 0ll ) goto label$317;
	{
		FBSTRING TMP$678$2;
		FBSTRING TMP$679$2;
		__builtin_memset( &TMP$679$2, 0, 24ll );
		FBSTRING* vr$13 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$678$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$678$2, (void*)"sub esp, ", 10ll, (void*)vr$13, -1ll );
		fb_StrAssign( (void*)&TMP$679$2, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$679$2 );
		fb_StrDelete( (FBSTRING*)&TMP$679$2 );
	}
	label$317:;
	label$316:;
	if( RETURNSIZE$1 != 8ll ) goto label$319;
	{
		FBSTRING TMP$680$2;
		FBSTRING TMP$681$2;
		FBSTRING TMP$682$2;
		FBSTRING TMP$683$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$683$2, 0, 24ll );
		__builtin_memset( &TMP$680$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$680$2, (void*)"movlpd ", 8ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$681$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$681$2, (void*)vr$22, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$682$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$682$2, (void*)vr$25, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$683$2, -1ll, (void*)vr$28, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$683$2 );
		fb_StrDelete( (FBSTRING*)&TMP$683$2 );
	}
	goto label$318;
	label$319:;
	if( RETURNSIZE$1 != 4ll ) goto label$320;
	{
		FBSTRING TMP$684$2;
		FBSTRING TMP$685$2;
		FBSTRING TMP$686$2;
		FBSTRING TMP$687$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$687$2, 0, 24ll );
		__builtin_memset( &TMP$684$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$684$2, (void*)"movss ", 7ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$685$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$685$2, (void*)vr$34, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$686$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$686$2, (void*)vr$37, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$687$2, -1ll, (void*)vr$40, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$687$2 );
		fb_StrDelete( (FBSTRING*)&TMP$687$2 );
	}
	label$320:;
	label$318:;
	if( RETURNSIZE$1 == 0ll ) goto label$322;
	{
		FBSTRING TMP$688$2;
		FBSTRING TMP$689$2;
		__builtin_memset( &TMP$689$2, 0, 24ll );
		FBSTRING* vr$44 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$688$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$688$2, (void*)"add esp, ", 10ll, (void*)vr$44, -1ll );
		fb_StrAssign( (void*)&TMP$689$2, -1ll, (void*)vr$47, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$689$2 );
		fb_StrDelete( (FBSTRING*)&TMP$689$2 );
	}
	label$322:;
	label$321:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"subs", 5ll, 0 );
	if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$324;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"subp", 5ll, 0 );
		if( *(int64*)SVREG$1 == 4ll ) goto label$326;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
			if( SDSIZE$1 <= 4ll ) goto label$328;
			{
				FBSTRING TMP$692$4;
				FBSTRING TMP$693$4;
				__builtin_memset( &TMP$693$4, 0, 24ll );
				__builtin_memset( &TMP$692$4, 0, 24ll );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$692$4, (void*)"movupd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$693$4, -1ll, (void*)vr$55, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$693$4 );
				fb_StrDelete( (FBSTRING*)&TMP$693$4 );
			}
			goto label$327;
			label$328:;
			{
				if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$330;
				{
					FBSTRING TMP$694$5;
					FBSTRING TMP$695$5;
					__builtin_memset( &TMP$695$5, 0, 24ll );
					__builtin_memset( &TMP$694$5, 0, 24ll );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$694$5, (void*)"movlps xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$695$5, -1ll, (void*)vr$62, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$695$5 );
					fb_StrDelete( (FBSTRING*)&TMP$695$5 );
				}
				goto label$329;
				label$330:;
				{
					FBSTRING TMP$696$5;
					FBSTRING TMP$697$5;
					__builtin_memset( &TMP$697$5, 0, 24ll );
					__builtin_memset( &TMP$696$5, 0, 24ll );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$696$5, (void*)"movups xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$697$5, -1ll, (void*)vr$68, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$697$5 );
					fb_StrDelete( (FBSTRING*)&TMP$697$5 );
				}
				label$329:;
			}
			label$327:;
			fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
		}
		label$326:;
		label$325:;
	}
	label$324:;
	label$323:;
	int64 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0ll ) goto label$332;
	{
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
	}
	label$332:;
	label$331:;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$333;
	TMP$698$1 = 24ll;
	goto label$783;
	label$333:;
	TMP$698$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$783:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$698$1 * 56ll)) != 1ll ) goto label$335;
	{
		if( DDSIZE$1 <= 4ll ) goto label$337;
		{
			FBSTRING TMP$699$3;
			FBSTRING TMP$700$3;
			FBSTRING TMP$701$3;
			FBSTRING TMP$702$3;
			FBSTRING TMP$703$3;
			__builtin_memset( &TMP$703$3, 0, 24ll );
			__builtin_memset( &TMP$699$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$699$3, (void*)&OSTR$1, -1ll, (void*)"d ", 3ll );
			__builtin_memset( &TMP$700$3, 0, 24ll );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$700$3, (void*)vr$80, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$701$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$701$3, (void*)vr$83, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$702$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$702$3, (void*)vr$86, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$703$3, -1ll, (void*)vr$89, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$703$3 );
			fb_StrDelete( (FBSTRING*)&TMP$703$3 );
		}
		goto label$336;
		label$337:;
		{
			FBSTRING TMP$704$3;
			FBSTRING TMP$705$3;
			FBSTRING TMP$706$3;
			FBSTRING TMP$707$3;
			FBSTRING TMP$708$3;
			__builtin_memset( &TMP$708$3, 0, 24ll );
			__builtin_memset( &TMP$704$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$704$3, (void*)&OSTR$1, -1ll, (void*)"s ", 3ll );
			__builtin_memset( &TMP$705$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$705$3, (void*)vr$95, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$706$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$706$3, (void*)vr$98, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$707$3, 0, 24ll );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$707$3, (void*)vr$101, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$708$3, -1ll, (void*)vr$104, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$708$3 );
			fb_StrDelete( (FBSTRING*)&TMP$708$3 );
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
	int64 TMP$710$1;
	int64 TMP$711$1;
	int64 TMP$732$1;
	label$338:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$340;
	TMP$710$1 = 24ll;
	goto label$784;
	label$340:;
	TMP$710$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$784:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$710$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$341;
	TMP$711$1 = 24ll;
	goto label$785;
	label$341:;
	TMP$711$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$785:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$711$1 * 56ll)) + 8ll);
	RETURNSIZE$1 = 0ll;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$343;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$342;
	label$343:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$344;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$344:;
	label$342:;
	if( RETURNSIZE$1 == 0ll ) goto label$346;
	{
		FBSTRING TMP$712$2;
		FBSTRING TMP$713$2;
		__builtin_memset( &TMP$713$2, 0, 24ll );
		FBSTRING* vr$13 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$712$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$712$2, (void*)"sub esp, ", 10ll, (void*)vr$13, -1ll );
		fb_StrAssign( (void*)&TMP$713$2, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$713$2 );
		fb_StrDelete( (FBSTRING*)&TMP$713$2 );
	}
	label$346:;
	label$345:;
	if( RETURNSIZE$1 != 8ll ) goto label$348;
	{
		FBSTRING TMP$714$2;
		FBSTRING TMP$715$2;
		FBSTRING TMP$716$2;
		FBSTRING TMP$717$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$717$2, 0, 24ll );
		__builtin_memset( &TMP$714$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$714$2, (void*)"movlpd ", 8ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$715$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$715$2, (void*)vr$22, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$716$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$716$2, (void*)vr$25, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$717$2, -1ll, (void*)vr$28, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$717$2 );
		fb_StrDelete( (FBSTRING*)&TMP$717$2 );
	}
	goto label$347;
	label$348:;
	if( RETURNSIZE$1 != 4ll ) goto label$349;
	{
		FBSTRING TMP$718$2;
		FBSTRING TMP$719$2;
		FBSTRING TMP$720$2;
		FBSTRING TMP$721$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$721$2, 0, 24ll );
		__builtin_memset( &TMP$718$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$718$2, (void*)"movss ", 7ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$719$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$719$2, (void*)vr$34, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$720$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$720$2, (void*)vr$37, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$721$2, -1ll, (void*)vr$40, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$721$2 );
		fb_StrDelete( (FBSTRING*)&TMP$721$2 );
	}
	label$349:;
	label$347:;
	if( RETURNSIZE$1 == 0ll ) goto label$351;
	{
		FBSTRING TMP$722$2;
		FBSTRING TMP$723$2;
		__builtin_memset( &TMP$723$2, 0, 24ll );
		FBSTRING* vr$44 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$722$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$722$2, (void*)"add esp, ", 10ll, (void*)vr$44, -1ll );
		fb_StrAssign( (void*)&TMP$723$2, -1ll, (void*)vr$47, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$723$2 );
		fb_StrDelete( (FBSTRING*)&TMP$723$2 );
	}
	label$351:;
	label$350:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"muls", 5ll, 0 );
	if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$353;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mulp", 5ll, 0 );
		if( *(int64*)SVREG$1 == 4ll ) goto label$355;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
			if( SDSIZE$1 <= 4ll ) goto label$357;
			{
				FBSTRING TMP$726$4;
				FBSTRING TMP$727$4;
				__builtin_memset( &TMP$727$4, 0, 24ll );
				__builtin_memset( &TMP$726$4, 0, 24ll );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$726$4, (void*)"movupd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$727$4, -1ll, (void*)vr$55, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$727$4 );
				fb_StrDelete( (FBSTRING*)&TMP$727$4 );
			}
			goto label$356;
			label$357:;
			{
				if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$359;
				{
					FBSTRING TMP$728$5;
					FBSTRING TMP$729$5;
					__builtin_memset( &TMP$729$5, 0, 24ll );
					__builtin_memset( &TMP$728$5, 0, 24ll );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$728$5, (void*)"movlps xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$729$5, -1ll, (void*)vr$62, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$729$5 );
					fb_StrDelete( (FBSTRING*)&TMP$729$5 );
				}
				goto label$358;
				label$359:;
				{
					FBSTRING TMP$730$5;
					FBSTRING TMP$731$5;
					__builtin_memset( &TMP$731$5, 0, 24ll );
					__builtin_memset( &TMP$730$5, 0, 24ll );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$730$5, (void*)"movups xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$731$5, -1ll, (void*)vr$68, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$731$5 );
					fb_StrDelete( (FBSTRING*)&TMP$731$5 );
				}
				label$358:;
			}
			label$356:;
			fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
		}
		label$355:;
		label$354:;
	}
	label$353:;
	label$352:;
	int64 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0ll ) goto label$361;
	{
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
	}
	label$361:;
	label$360:;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$362;
	TMP$732$1 = 24ll;
	goto label$786;
	label$362:;
	TMP$732$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$786:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$732$1 * 56ll)) != 1ll ) goto label$364;
	{
		if( DDSIZE$1 <= 4ll ) goto label$366;
		{
			FBSTRING TMP$733$3;
			FBSTRING TMP$734$3;
			FBSTRING TMP$735$3;
			FBSTRING TMP$736$3;
			FBSTRING TMP$737$3;
			__builtin_memset( &TMP$737$3, 0, 24ll );
			__builtin_memset( &TMP$733$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$733$3, (void*)&OSTR$1, -1ll, (void*)"d ", 3ll );
			__builtin_memset( &TMP$734$3, 0, 24ll );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$734$3, (void*)vr$80, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$735$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$735$3, (void*)vr$83, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$736$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$736$3, (void*)vr$86, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$737$3, -1ll, (void*)vr$89, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$737$3 );
			fb_StrDelete( (FBSTRING*)&TMP$737$3 );
		}
		goto label$365;
		label$366:;
		{
			FBSTRING TMP$738$3;
			FBSTRING TMP$739$3;
			FBSTRING TMP$740$3;
			FBSTRING TMP$741$3;
			FBSTRING TMP$742$3;
			__builtin_memset( &TMP$742$3, 0, 24ll );
			__builtin_memset( &TMP$738$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$738$3, (void*)&OSTR$1, -1ll, (void*)"s ", 3ll );
			__builtin_memset( &TMP$739$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$739$3, (void*)vr$95, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$740$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$740$3, (void*)vr$98, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$741$3, 0, 24ll );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$741$3, (void*)vr$101, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$742$3, -1ll, (void*)vr$104, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$742$3 );
			fb_StrDelete( (FBSTRING*)&TMP$742$3 );
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
	int64 TMP$744$1;
	int64 TMP$745$1;
	int64 TMP$766$1;
	label$367:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 RETURNSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$369;
	TMP$744$1 = 24ll;
	goto label$787;
	label$369:;
	TMP$744$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$787:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$744$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$370;
	TMP$745$1 = 24ll;
	goto label$788;
	label$370:;
	TMP$745$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$788:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$745$1 * 56ll)) + 8ll);
	RETURNSIZE$1 = 0ll;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$372;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$371;
	label$372:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$373;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$373:;
	label$371:;
	if( RETURNSIZE$1 == 0ll ) goto label$375;
	{
		FBSTRING TMP$746$2;
		FBSTRING TMP$747$2;
		__builtin_memset( &TMP$747$2, 0, 24ll );
		FBSTRING* vr$13 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$746$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$746$2, (void*)"sub esp, ", 10ll, (void*)vr$13, -1ll );
		fb_StrAssign( (void*)&TMP$747$2, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$747$2 );
		fb_StrDelete( (FBSTRING*)&TMP$747$2 );
	}
	label$375:;
	label$374:;
	if( RETURNSIZE$1 != 8ll ) goto label$377;
	{
		FBSTRING TMP$748$2;
		FBSTRING TMP$749$2;
		FBSTRING TMP$750$2;
		FBSTRING TMP$751$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$751$2, 0, 24ll );
		__builtin_memset( &TMP$748$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$748$2, (void*)"movlpd ", 8ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$749$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$749$2, (void*)vr$22, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$750$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$750$2, (void*)vr$25, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$751$2, -1ll, (void*)vr$28, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$751$2 );
		fb_StrDelete( (FBSTRING*)&TMP$751$2 );
	}
	goto label$376;
	label$377:;
	if( RETURNSIZE$1 != 4ll ) goto label$378;
	{
		FBSTRING TMP$752$2;
		FBSTRING TMP$753$2;
		FBSTRING TMP$754$2;
		FBSTRING TMP$755$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$755$2, 0, 24ll );
		__builtin_memset( &TMP$752$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$752$2, (void*)"movss ", 7ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$753$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$753$2, (void*)vr$34, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$754$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$754$2, (void*)vr$37, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$755$2, -1ll, (void*)vr$40, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$755$2 );
		fb_StrDelete( (FBSTRING*)&TMP$755$2 );
	}
	label$378:;
	label$376:;
	if( RETURNSIZE$1 == 0ll ) goto label$380;
	{
		FBSTRING TMP$756$2;
		FBSTRING TMP$757$2;
		__builtin_memset( &TMP$757$2, 0, 24ll );
		FBSTRING* vr$44 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$756$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$756$2, (void*)"add esp, ", 10ll, (void*)vr$44, -1ll );
		fb_StrAssign( (void*)&TMP$757$2, -1ll, (void*)vr$47, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$757$2 );
		fb_StrDelete( (FBSTRING*)&TMP$757$2 );
	}
	label$380:;
	label$379:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"divs", 5ll, 0 );
	if( *(int64*)((uint8*)SVREG$1 + 40ll) == 0ll ) goto label$382;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"divp", 5ll, 0 );
		if( *(int64*)SVREG$1 == 4ll ) goto label$384;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
			if( SDSIZE$1 <= 4ll ) goto label$386;
			{
				FBSTRING TMP$760$4;
				FBSTRING TMP$761$4;
				__builtin_memset( &TMP$761$4, 0, 24ll );
				__builtin_memset( &TMP$760$4, 0, 24ll );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$760$4, (void*)"movupd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$761$4, -1ll, (void*)vr$55, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$761$4 );
				fb_StrDelete( (FBSTRING*)&TMP$761$4 );
			}
			goto label$385;
			label$386:;
			{
				if( *(int64*)((uint8*)SVREG$1 + 40ll) != 2ll ) goto label$388;
				{
					FBSTRING TMP$762$5;
					FBSTRING TMP$763$5;
					__builtin_memset( &TMP$763$5, 0, 24ll );
					__builtin_memset( &TMP$762$5, 0, 24ll );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$762$5, (void*)"movlps xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$763$5, -1ll, (void*)vr$62, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$763$5 );
					fb_StrDelete( (FBSTRING*)&TMP$763$5 );
				}
				goto label$387;
				label$388:;
				{
					FBSTRING TMP$764$5;
					FBSTRING TMP$765$5;
					__builtin_memset( &TMP$765$5, 0, 24ll );
					__builtin_memset( &TMP$764$5, 0, 24ll );
					FBSTRING* vr$68 = fb_StrConcat( &TMP$764$5, (void*)"movups xmm7, ", 14ll, (void*)&SRC$1, -1ll );
					fb_StrAssign( (void*)&TMP$765$5, -1ll, (void*)vr$68, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$765$5 );
					fb_StrDelete( (FBSTRING*)&TMP$765$5 );
				}
				label$387:;
			}
			label$385:;
			fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
		}
		label$384:;
		label$383:;
	}
	label$382:;
	label$381:;
	int64 vr$71 = HEMITCONVERTOPERANDS_SSE( DVREG$1, SVREG$1 );
	if( vr$71 == 0ll ) goto label$390;
	{
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"xmm7", 5ll, 0 );
	}
	label$390:;
	label$389:;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$391;
	TMP$766$1 = 24ll;
	goto label$789;
	label$391:;
	TMP$766$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$789:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$766$1 * 56ll)) != 1ll ) goto label$393;
	{
		if( DDSIZE$1 <= 4ll ) goto label$395;
		{
			FBSTRING TMP$767$3;
			FBSTRING TMP$768$3;
			FBSTRING TMP$769$3;
			FBSTRING TMP$770$3;
			FBSTRING TMP$771$3;
			__builtin_memset( &TMP$771$3, 0, 24ll );
			__builtin_memset( &TMP$767$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$767$3, (void*)&OSTR$1, -1ll, (void*)"d ", 3ll );
			__builtin_memset( &TMP$768$3, 0, 24ll );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$768$3, (void*)vr$80, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$769$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$769$3, (void*)vr$83, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$770$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$770$3, (void*)vr$86, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$771$3, -1ll, (void*)vr$89, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$771$3 );
			fb_StrDelete( (FBSTRING*)&TMP$771$3 );
		}
		goto label$394;
		label$395:;
		{
			FBSTRING TMP$772$3;
			FBSTRING TMP$773$3;
			FBSTRING TMP$774$3;
			FBSTRING TMP$775$3;
			FBSTRING TMP$776$3;
			__builtin_memset( &TMP$776$3, 0, 24ll );
			__builtin_memset( &TMP$772$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$772$3, (void*)&OSTR$1, -1ll, (void*)"s ", 3ll );
			__builtin_memset( &TMP$773$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$773$3, (void*)vr$95, -1ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$774$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$774$3, (void*)vr$98, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$775$3, 0, 24ll );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$775$3, (void*)vr$101, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$776$3, -1ll, (void*)vr$104, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$776$3 );
			fb_StrDelete( (FBSTRING*)&TMP$776$3 );
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
	int64 TMP$778$1;
	int64 TMP$779$1;
	label$396:;
	static FBSTRING SRC$1;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 ADJUSTSTACK$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$398;
	TMP$778$1 = 24ll;
	goto label$790;
	label$398:;
	TMP$778$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$790:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$778$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$399;
	TMP$779$1 = 24ll;
	goto label$791;
	label$399:;
	TMP$779$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$791:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$779$1 * 56ll)) + 8ll);
	ADJUSTSTACK$1 = 0ll;
	if( *(int64*)DVREG$1 != 4ll ) goto label$401;
	{
		OUTP( (uint8*)"sub esp, 8" );
		ADJUSTSTACK$1 = -1ll;
		if( DDSIZE$1 <= 4ll ) goto label$403;
		{
			FBSTRING TMP$780$3;
			FBSTRING TMP$781$3;
			__builtin_memset( &TMP$781$3, 0, 24ll );
			__builtin_memset( &TMP$780$3, 0, 24ll );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$780$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$781$3, -1ll, (void*)vr$14, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$781$3 );
			fb_StrDelete( (FBSTRING*)&TMP$781$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$402;
		label$403:;
		{
			FBSTRING TMP$782$3;
			FBSTRING TMP$783$3;
			__builtin_memset( &TMP$783$3, 0, 24ll );
			__builtin_memset( &TMP$782$3, 0, 24ll );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$782$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$783$3, -1ll, (void*)vr$20, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$783$3 );
			fb_StrDelete( (FBSTRING*)&TMP$783$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$402:;
	}
	goto label$400;
	label$401:;
	{
		FBSTRING TMP$784$2;
		FBSTRING TMP$785$2;
		__builtin_memset( &TMP$785$2, 0, 24ll );
		__builtin_memset( &TMP$784$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$784$2, (void*)"fld ", 5ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$785$2, -1ll, (void*)vr$26, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$785$2 );
		fb_StrDelete( (FBSTRING*)&TMP$785$2 );
	}
	label$400:;
	if( *(int64*)SVREG$1 != 4ll ) goto label$405;
	{
		if( ADJUSTSTACK$1 != 0ll ) goto label$407;
		{
			OUTP( (uint8*)"sub esp, 8" );
			ADJUSTSTACK$1 = -1ll;
		}
		label$407:;
		label$406:;
		if( SDSIZE$1 <= 4ll ) goto label$409;
		{
			FBSTRING TMP$786$3;
			FBSTRING TMP$787$3;
			__builtin_memset( &TMP$787$3, 0, 24ll );
			__builtin_memset( &TMP$786$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$786$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$787$3, -1ll, (void*)vr$33, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$787$3 );
			fb_StrDelete( (FBSTRING*)&TMP$787$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$408;
		label$409:;
		{
			FBSTRING TMP$788$3;
			FBSTRING TMP$789$3;
			__builtin_memset( &TMP$789$3, 0, 24ll );
			__builtin_memset( &TMP$788$3, 0, 24ll );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$788$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$789$3, -1ll, (void*)vr$39, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$789$3 );
			fb_StrDelete( (FBSTRING*)&TMP$789$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$408:;
	}
	goto label$404;
	label$405:;
	{
		FBSTRING TMP$790$2;
		FBSTRING TMP$791$2;
		__builtin_memset( &TMP$791$2, 0, 24ll );
		__builtin_memset( &TMP$790$2, 0, 24ll );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$790$2, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$791$2, -1ll, (void*)vr$45, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$791$2 );
		fb_StrDelete( (FBSTRING*)&TMP$791$2 );
	}
	label$404:;
	OUTP( (uint8*)"fpatan" );
	if( DDSIZE$1 <= 4ll ) goto label$411;
	{
		FBSTRING TMP$793$2;
		FBSTRING TMP$794$2;
		FBSTRING TMP$795$2;
		FBSTRING TMP$796$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$796$2, 0, 24ll );
		__builtin_memset( &TMP$793$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$793$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$794$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$794$2, (void*)vr$51, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$795$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$795$2, (void*)vr$54, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$796$2, -1ll, (void*)vr$57, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$796$2 );
		fb_StrDelete( (FBSTRING*)&TMP$796$2 );
	}
	goto label$410;
	label$411:;
	{
		FBSTRING TMP$797$2;
		FBSTRING TMP$798$2;
		FBSTRING TMP$799$2;
		FBSTRING TMP$800$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$800$2, 0, 24ll );
		__builtin_memset( &TMP$797$2, 0, 24ll );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$797$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$798$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$798$2, (void*)vr$63, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$799$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$799$2, (void*)vr$66, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$800$2, -1ll, (void*)vr$69, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$800$2 );
		fb_StrDelete( (FBSTRING*)&TMP$800$2 );
	}
	label$410:;
	if( ADJUSTSTACK$1 == 0ll ) goto label$413;
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
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 ADJUSTSTACK$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	ADJUSTSTACK$1 = 0ll;
	if( *(int64*)DVREG$1 != 4ll ) goto label$417;
	{
		OUTP( (uint8*)"sub esp, 8" );
		ADJUSTSTACK$1 = -1ll;
		if( DDSIZE$1 <= 4ll ) goto label$419;
		{
			FBSTRING TMP$801$3;
			FBSTRING TMP$802$3;
			__builtin_memset( &TMP$802$3, 0, 24ll );
			__builtin_memset( &TMP$801$3, 0, 24ll );
			FBSTRING* vr$4 = fb_StrConcat( &TMP$801$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$802$3, -1ll, (void*)vr$4, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$802$3 );
			fb_StrDelete( (FBSTRING*)&TMP$802$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$418;
		label$419:;
		{
			FBSTRING TMP$803$3;
			FBSTRING TMP$804$3;
			__builtin_memset( &TMP$804$3, 0, 24ll );
			__builtin_memset( &TMP$803$3, 0, 24ll );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$803$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$804$3, -1ll, (void*)vr$10, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$804$3 );
			fb_StrDelete( (FBSTRING*)&TMP$804$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$418:;
	}
	goto label$416;
	label$417:;
	{
		FBSTRING TMP$805$2;
		FBSTRING TMP$806$2;
		__builtin_memset( &TMP$806$2, 0, 24ll );
		__builtin_memset( &TMP$805$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$805$2, (void*)"fld ", 5ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$806$2, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$806$2 );
		fb_StrDelete( (FBSTRING*)&TMP$806$2 );
	}
	label$416:;
	if( *(int64*)SVREG$1 != 4ll ) goto label$421;
	{
		if( ADJUSTSTACK$1 != 0ll ) goto label$423;
		{
			OUTP( (uint8*)"sub esp, 8" );
			ADJUSTSTACK$1 = -1ll;
		}
		label$423:;
		label$422:;
		if( SDSIZE$1 <= 4ll ) goto label$425;
		{
			FBSTRING TMP$807$3;
			FBSTRING TMP$808$3;
			__builtin_memset( &TMP$808$3, 0, 24ll );
			__builtin_memset( &TMP$807$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$807$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$808$3, -1ll, (void*)vr$23, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$808$3 );
			fb_StrDelete( (FBSTRING*)&TMP$808$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$424;
		label$425:;
		{
			FBSTRING TMP$809$3;
			FBSTRING TMP$810$3;
			__builtin_memset( &TMP$810$3, 0, 24ll );
			__builtin_memset( &TMP$809$3, 0, 24ll );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$809$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$810$3, -1ll, (void*)vr$29, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$810$3 );
			fb_StrDelete( (FBSTRING*)&TMP$810$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$424:;
	}
	goto label$420;
	label$421:;
	{
		FBSTRING TMP$811$2;
		FBSTRING TMP$812$2;
		__builtin_memset( &TMP$812$2, 0, 24ll );
		__builtin_memset( &TMP$811$2, 0, 24ll );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$811$2, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$812$2, -1ll, (void*)vr$35, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$812$2 );
		fb_StrDelete( (FBSTRING*)&TMP$812$2 );
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
	if( DDSIZE$1 <= 4ll ) goto label$427;
	{
		FBSTRING TMP$822$2;
		FBSTRING TMP$823$2;
		FBSTRING TMP$824$2;
		FBSTRING TMP$825$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$825$2, 0, 24ll );
		__builtin_memset( &TMP$822$2, 0, 24ll );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$822$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$823$2, 0, 24ll );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$823$2, (void*)vr$41, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$824$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$824$2, (void*)vr$44, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$825$2, -1ll, (void*)vr$47, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$825$2 );
		fb_StrDelete( (FBSTRING*)&TMP$825$2 );
	}
	goto label$426;
	label$427:;
	{
		FBSTRING TMP$826$2;
		FBSTRING TMP$827$2;
		FBSTRING TMP$828$2;
		FBSTRING TMP$829$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$829$2, 0, 24ll );
		__builtin_memset( &TMP$826$2, 0, 24ll );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$826$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$827$2, 0, 24ll );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$827$2, (void*)vr$53, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$828$2, 0, 24ll );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$828$2, (void*)vr$56, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$829$2, -1ll, (void*)vr$59, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$829$2 );
		fb_StrDelete( (FBSTRING*)&TMP$829$2 );
	}
	label$426:;
	if( ADJUSTSTACK$1 == 0ll ) goto label$429;
	{
		OUTP( (uint8*)"add esp, 8" );
	}
	label$429:;
	label$428:;
	label$415:;
}

static void HCMPF_SSE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, uint8* MASK$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$830$1;
	int64 TMP$831$1;
	label$430:;
	static FBSTRING RNAME$1;
	static FBSTRING RNAME8$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static int64 ISEAXFREE$1;
	static int64 ISEDXFREE$1;
	static int64 SDSIZE$1;
	static int64 DDSIZE$1;
	static int64 RETURNSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$432;
	TMP$830$1 = 24ll;
	goto label$792;
	label$432:;
	TMP$830$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$792:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$830$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$433;
	TMP$831$1 = 24ll;
	goto label$793;
	label$433:;
	TMP$831$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$793:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$831$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$435;
	{
		uint8* vr$10 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$10, 0ll, 0 );
	}
	goto label$434;
	label$435:;
	{
		uint8* vr$11 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$11, 0ll, 0 );
	}
	label$434:;
	RETURNSIZE$1 = 0ll;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$437;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		RETURNSIZE$1 = DDSIZE$1;
	}
	goto label$436;
	label$437:;
	if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$438;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		RETURNSIZE$1 = SDSIZE$1;
	}
	label$438:;
	label$436:;
	if( RETURNSIZE$1 == 0ll ) goto label$440;
	{
		FBSTRING TMP$832$2;
		FBSTRING TMP$833$2;
		__builtin_memset( &TMP$833$2, 0, 24ll );
		FBSTRING* vr$15 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$832$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$832$2, (void*)"sub esp, ", 10ll, (void*)vr$15, -1ll );
		fb_StrAssign( (void*)&TMP$833$2, -1ll, (void*)vr$18, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$833$2 );
		fb_StrDelete( (FBSTRING*)&TMP$833$2 );
	}
	label$440:;
	label$439:;
	if( RETURNSIZE$1 != 8ll ) goto label$442;
	{
		FBSTRING TMP$834$2;
		FBSTRING TMP$835$2;
		FBSTRING TMP$836$2;
		FBSTRING TMP$837$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$837$2, 0, 24ll );
		__builtin_memset( &TMP$834$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$834$2, (void*)"movlpd ", 8ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$835$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$835$2, (void*)vr$24, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$836$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$836$2, (void*)vr$27, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$837$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$837$2 );
		fb_StrDelete( (FBSTRING*)&TMP$837$2 );
	}
	goto label$441;
	label$442:;
	if( RETURNSIZE$1 != 4ll ) goto label$443;
	{
		FBSTRING TMP$838$2;
		FBSTRING TMP$839$2;
		FBSTRING TMP$840$2;
		FBSTRING TMP$841$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$841$2, 0, 24ll );
		__builtin_memset( &TMP$838$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$838$2, (void*)"movss ", 7ll, (void*)&OSTR$1, -1ll );
		__builtin_memset( &TMP$839$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$839$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$840$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$840$2, (void*)vr$39, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$841$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$841$2 );
		fb_StrDelete( (FBSTRING*)&TMP$841$2 );
	}
	label$443:;
	label$441:;
	if( RETURNSIZE$1 == 0ll ) goto label$445;
	{
		FBSTRING TMP$842$2;
		FBSTRING TMP$843$2;
		__builtin_memset( &TMP$843$2, 0, 24ll );
		FBSTRING* vr$46 = fb_LongintToStr( RETURNSIZE$1 );
		__builtin_memset( &TMP$842$2, 0, 24ll );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$842$2, (void*)"add esp, ", 10ll, (void*)vr$46, -1ll );
		fb_StrAssign( (void*)&TMP$843$2, -1ll, (void*)vr$49, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$843$2 );
		fb_StrDelete( (FBSTRING*)&TMP$843$2 );
	}
	label$445:;
	label$444:;
	if( DDSIZE$1 <= 4ll ) goto label$447;
	{
		if( SDSIZE$1 <= 4ll ) goto label$449;
		{
			FBSTRING TMP$845$3;
			FBSTRING TMP$846$3;
			FBSTRING TMP$847$3;
			FBSTRING TMP$848$3;
			__builtin_memset( &TMP$848$3, 0, 24ll );
			__builtin_memset( &TMP$845$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$845$3, (void*)"comisd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$846$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$846$3, (void*)vr$55, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$847$3, 0, 24ll );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$847$3, (void*)vr$58, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$848$3, -1ll, (void*)vr$61, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$848$3 );
			fb_StrDelete( (FBSTRING*)&TMP$848$3 );
		}
		goto label$448;
		label$449:;
		{
			FBSTRING TMP$849$3;
			FBSTRING TMP$850$3;
			FBSTRING TMP$851$3;
			FBSTRING TMP$852$3;
			FBSTRING TMP$853$3;
			FBSTRING TMP$854$3;
			__builtin_memset( &TMP$850$3, 0, 24ll );
			__builtin_memset( &TMP$849$3, 0, 24ll );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$849$3, (void*)"cvtss2sd xmm7, ", 16ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$850$3, -1ll, (void*)vr$67, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$850$3 );
			fb_StrDelete( (FBSTRING*)&TMP$850$3 );
			__builtin_memset( &TMP$854$3, 0, 24ll );
			__builtin_memset( &TMP$851$3, 0, 24ll );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$851$3, (void*)"comisd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$852$3, 0, 24ll );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$852$3, (void*)vr$73, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$853$3, 0, 24ll );
			FBSTRING* vr$79 = fb_StrConcat( &TMP$853$3, (void*)vr$76, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$854$3, -1ll, (void*)vr$79, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$854$3 );
			fb_StrDelete( (FBSTRING*)&TMP$854$3 );
		}
		label$448:;
	}
	goto label$446;
	label$447:;
	{
		if( SDSIZE$1 <= 4ll ) goto label$451;
		{
			FBSTRING TMP$855$3;
			FBSTRING TMP$856$3;
			FBSTRING TMP$859$3;
			FBSTRING TMP$860$3;
			__builtin_memset( &TMP$856$3, 0, 24ll );
			__builtin_memset( &TMP$855$3, 0, 24ll );
			FBSTRING* vr$85 = fb_StrConcat( &TMP$855$3, (void*)"cvtss2sd xmm7, ", 16ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$856$3, -1ll, (void*)vr$85, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$856$3 );
			fb_StrDelete( (FBSTRING*)&TMP$856$3 );
			__builtin_memset( &TMP$860$3, 0, 24ll );
			__builtin_memset( &TMP$859$3, 0, 24ll );
			FBSTRING* vr$91 = fb_StrConcat( &TMP$859$3, (void*)"comisd xmm7, ", 14ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$860$3, -1ll, (void*)vr$91, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$860$3 );
			fb_StrDelete( (FBSTRING*)&TMP$860$3 );
		}
		goto label$450;
		label$451:;
		{
			FBSTRING TMP$862$3;
			FBSTRING TMP$863$3;
			FBSTRING TMP$864$3;
			FBSTRING TMP$865$3;
			__builtin_memset( &TMP$865$3, 0, 24ll );
			__builtin_memset( &TMP$862$3, 0, 24ll );
			FBSTRING* vr$97 = fb_StrConcat( &TMP$862$3, (void*)"comiss ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$863$3, 0, 24ll );
			FBSTRING* vr$100 = fb_StrConcat( &TMP$863$3, (void*)vr$97, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$864$3, 0, 24ll );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$864$3, (void*)vr$100, -1ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$865$3, -1ll, (void*)vr$103, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$865$3 );
			fb_StrDelete( (FBSTRING*)&TMP$865$3 );
		}
		label$450:;
	}
	label$446:;
	if( RVREG$1 != (struct $6IRVREG*)0ull ) goto label$453;
	{
		FBSTRING TMP$867$2;
		__builtin_memset( &TMP$867$2, 0, 24ll );
		FBSTRING* vr$108 = fb_StrConcat( &TMP$867$2, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$108, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		goto label$431;
	}
	label$453:;
	label$452:;
	HPREPOPERAND( RVREG$1, &RNAME$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)&ENV$ + 224ll) < 1ll ) goto label$455;
	{
		uint8* vr$110 = HGETREGNAME( 2ll, *(int64*)((uint8*)RVREG$1 + 24ll) );
		fb_StrAssign( (void*)&RNAME8$1, -1ll, (void*)vr$110, 0ll, 0 );
		if( ((int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 2ll) | (int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 1ll)) == 0ll ) goto label$457;
		{
			FBSTRING TMP$873$3;
			FBSTRING TMP$874$3;
			int64 vr$116 = HISREGFREE( 0ll, 0ll );
			ISEDXFREE$1 = vr$116;
			if( ISEDXFREE$1 != 0ll ) goto label$459;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg edx, ", 11ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$459:;
			label$458:;
			__builtin_memset( &TMP$873$3, 0, 24ll );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$873$3, (void*)"set", 4ll, (void*)MNEMONIC$1, 0ll );
			__builtin_memset( &TMP$874$3, 0, 24ll );
			FBSTRING* vr$122 = fb_StrConcat( &TMP$874$3, (void*)vr$119, -1ll, (void*)"\x09" "dl", 4ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$122, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( ISEDXFREE$1 != 0ll ) goto label$461;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg edx, ", 11ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
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
			FBSTRING TMP$877$3;
			FBSTRING TMP$878$3;
			FBSTRING TMP$879$3;
			__builtin_memset( &TMP$877$3, 0, 24ll );
			FBSTRING* vr$125 = fb_StrConcat( &TMP$877$3, (void*)"set", 4ll, (void*)MNEMONIC$1, 0ll );
			__builtin_memset( &TMP$878$3, 0, 24ll );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$878$3, (void*)vr$125, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$879$3, 0, 24ll );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$879$3, (void*)vr$128, -1ll, (void*)&RNAME8$1, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$131, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$456:;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"shr ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 1", 4ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sbb ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$454;
	label$455:;
	{
		FBSTRING TMP$883$2;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", -1", 5ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$883$2, 0, 24ll );
		FBSTRING* vr$134 = fb_StrConcat( &TMP$883$2, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$134, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
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
	int64 TMP$891$1;
	label$474:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$476;
	TMP$891$1 = 24ll;
	goto label$794;
	label$476:;
	TMP$891$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$794:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$891$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$478;
	{
		FBSTRING TMP$892$2;
		FBSTRING TMP$893$2;
		FBSTRING TMP$902$2;
		FBSTRING TMP$903$2;
		__builtin_memset( &TMP$893$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$892$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$892$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$893$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$893$2 );
		fb_StrDelete( (FBSTRING*)&TMP$893$2 );
		if( DDSIZE$1 <= 4ll ) goto label$480;
		{
			FBSTRING TMP$894$3;
			FBSTRING TMP$895$3;
			FBSTRING TMP$896$3;
			FBSTRING TMP$897$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$897$3, 0, 24ll );
			__builtin_memset( &TMP$894$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$894$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$895$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$895$3, (void*)vr$16, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$896$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$896$3, (void*)vr$19, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$897$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$897$3 );
			fb_StrDelete( (FBSTRING*)&TMP$897$3 );
		}
		goto label$479;
		label$480:;
		{
			FBSTRING TMP$898$3;
			FBSTRING TMP$899$3;
			FBSTRING TMP$900$3;
			FBSTRING TMP$901$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$901$3, 0, 24ll );
			__builtin_memset( &TMP$898$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$898$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$899$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$899$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$900$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$900$3, (void*)vr$31, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$901$3, -1ll, (void*)vr$34, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$901$3 );
			fb_StrDelete( (FBSTRING*)&TMP$901$3 );
		}
		label$479:;
		__builtin_memset( &TMP$903$2, 0, 24ll );
		FBSTRING* vr$38 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$902$2, 0, 24ll );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$902$2, (void*)"add esp, ", 10ll, (void*)vr$38, -1ll );
		fb_StrAssign( (void*)&TMP$903$2, -1ll, (void*)vr$41, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$903$2 );
		fb_StrDelete( (FBSTRING*)&TMP$903$2 );
	}
	label$478:;
	label$477:;
	if( DDSIZE$1 <= 4ll ) goto label$482;
	{
		struct $8FBSYMBOL* vr$44 = SYMBALLOCINTCONST( -9223372036854775808ull, 14ll );
		SYM$1 = vr$44;
		struct $6IRVREG* vr$46 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$46;
	}
	goto label$481;
	label$482:;
	{
		struct $8FBSYMBOL* vr$47 = SYMBALLOCINTCONST( 2147483648ll, 9ll );
		SYM$1 = vr$47;
		struct $6IRVREG* vr$49 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$49;
	}
	label$481:;
	*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
	HPREPOPERAND( TEMPVREG$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
	if( DDSIZE$1 <= 4ll ) goto label$484;
	{
		FBSTRING TMP$905$2;
		FBSTRING TMP$906$2;
		FBSTRING TMP$907$2;
		FBSTRING TMP$908$2;
		__builtin_memset( &TMP$908$2, 0, 24ll );
		__builtin_memset( &TMP$905$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$905$2, (void*)"xorpd ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$906$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$906$2, (void*)vr$54, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$907$2, 0, 24ll );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$907$2, (void*)vr$57, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$908$2, -1ll, (void*)vr$60, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$908$2 );
		fb_StrDelete( (FBSTRING*)&TMP$908$2 );
	}
	goto label$483;
	label$484:;
	{
		FBSTRING TMP$910$2;
		FBSTRING TMP$911$2;
		FBSTRING TMP$912$2;
		FBSTRING TMP$913$2;
		__builtin_memset( &TMP$913$2, 0, 24ll );
		__builtin_memset( &TMP$910$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$910$2, (void*)"xorps ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$911$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$911$2, (void*)vr$66, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$912$2, 0, 24ll );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$912$2, (void*)vr$69, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$913$2, -1ll, (void*)vr$72, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$913$2 );
		fb_StrDelete( (FBSTRING*)&TMP$913$2 );
	}
	label$483:;
	label$475:;
}

static void _EMITHADDF_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$914$1;
	label$485:;
	static FBSTRING DST$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$487;
	TMP$914$1 = 24ll;
	goto label$795;
	label$487:;
	TMP$914$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$795:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$914$1 * 56ll)) + 8ll) <= 4ll ) goto label$489;
	{
		FBSTRING TMP$915$2;
		FBSTRING TMP$916$2;
		FBSTRING TMP$918$2;
		FBSTRING TMP$919$2;
		FBSTRING TMP$920$2;
		FBSTRING TMP$921$2;
		__builtin_memset( &TMP$916$2, 0, 24ll );
		__builtin_memset( &TMP$915$2, 0, 24ll );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$915$2, (void*)"movhlps xmm7, ", 15ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$916$2, -1ll, (void*)vr$8, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$916$2 );
		fb_StrDelete( (FBSTRING*)&TMP$916$2 );
		__builtin_memset( &TMP$921$2, 0, 24ll );
		__builtin_memset( &TMP$918$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$918$2, (void*)"addsd ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$919$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$919$2, (void*)vr$14, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$920$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$920$2, (void*)vr$17, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$921$2, -1ll, (void*)vr$20, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$921$2 );
		fb_StrDelete( (FBSTRING*)&TMP$921$2 );
	}
	goto label$488;
	label$489:;
	{
		if( *(int64*)((uint8*)DVREG$1 + 40ll) != 2ll ) goto label$491;
		{
			FBSTRING TMP$925$3;
			FBSTRING TMP$926$3;
			FBSTRING TMP$927$3;
			FBSTRING TMP$928$3;
			FBSTRING TMP$930$3;
			FBSTRING TMP$931$3;
			FBSTRING TMP$932$3;
			FBSTRING TMP$933$3;
			__builtin_memset( &TMP$928$3, 0, 24ll );
			__builtin_memset( &TMP$925$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$925$3, (void*)"pshufd xmm7, ", 14ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$926$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$926$3, (void*)vr$27, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$927$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$927$3, (void*)vr$30, -1ll, (void*)"0x01", 5ll );
			fb_StrAssign( (void*)&TMP$928$3, -1ll, (void*)vr$33, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$928$3 );
			fb_StrDelete( (FBSTRING*)&TMP$928$3 );
			__builtin_memset( &TMP$933$3, 0, 24ll );
			__builtin_memset( &TMP$930$3, 0, 24ll );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$930$3, (void*)"addss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$931$3, 0, 24ll );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$931$3, (void*)vr$39, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$932$3, 0, 24ll );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$932$3, (void*)vr$42, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$933$3, -1ll, (void*)vr$45, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$933$3 );
			fb_StrDelete( (FBSTRING*)&TMP$933$3 );
		}
		goto label$490;
		label$491:;
		if( *(int64*)((uint8*)DVREG$1 + 40ll) != 3ll ) goto label$492;
		{
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
			FBSTRING TMP$947$3;
			__builtin_memset( &TMP$937$3, 0, 24ll );
			__builtin_memset( &TMP$934$3, 0, 24ll );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$934$3, (void*)"pshufd xmm7, ", 14ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$935$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$935$3, (void*)vr$52, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$936$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$936$3, (void*)vr$55, -1ll, (void*)"0x01", 5ll );
			fb_StrAssign( (void*)&TMP$937$3, -1ll, (void*)vr$58, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$937$3 );
			fb_StrDelete( (FBSTRING*)&TMP$937$3 );
			__builtin_memset( &TMP$941$3, 0, 24ll );
			__builtin_memset( &TMP$938$3, 0, 24ll );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$938$3, (void*)"addss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$939$3, 0, 24ll );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$939$3, (void*)vr$64, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$940$3, 0, 24ll );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$940$3, (void*)vr$67, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$941$3, -1ll, (void*)vr$70, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$941$3 );
			fb_StrDelete( (FBSTRING*)&TMP$941$3 );
			__builtin_memset( &TMP$943$3, 0, 24ll );
			__builtin_memset( &TMP$942$3, 0, 24ll );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$942$3, (void*)"movhlps xmm7, ", 15ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$943$3, -1ll, (void*)vr$76, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$943$3 );
			fb_StrDelete( (FBSTRING*)&TMP$943$3 );
			__builtin_memset( &TMP$947$3, 0, 24ll );
			__builtin_memset( &TMP$944$3, 0, 24ll );
			FBSTRING* vr$82 = fb_StrConcat( &TMP$944$3, (void*)"addss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$945$3, 0, 24ll );
			FBSTRING* vr$85 = fb_StrConcat( &TMP$945$3, (void*)vr$82, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$946$3, 0, 24ll );
			FBSTRING* vr$88 = fb_StrConcat( &TMP$946$3, (void*)vr$85, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$947$3, -1ll, (void*)vr$88, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$947$3 );
			fb_StrDelete( (FBSTRING*)&TMP$947$3 );
		}
		goto label$490;
		label$492:;
		if( *(int64*)((uint8*)DVREG$1 + 40ll) != 4ll ) goto label$493;
		{
			FBSTRING TMP$948$3;
			FBSTRING TMP$949$3;
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
			FBSTRING TMP$962$3;
			__builtin_memset( &TMP$949$3, 0, 24ll );
			__builtin_memset( &TMP$948$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$948$3, (void*)"movhlps xmm7, ", 15ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$949$3, -1ll, (void*)vr$95, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$949$3 );
			fb_StrDelete( (FBSTRING*)&TMP$949$3 );
			__builtin_memset( &TMP$954$3, 0, 24ll );
			__builtin_memset( &TMP$951$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$951$3, (void*)"addps ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$952$3, 0, 24ll );
			FBSTRING* vr$104 = fb_StrConcat( &TMP$952$3, (void*)vr$101, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$953$3, 0, 24ll );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$953$3, (void*)vr$104, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$954$3, -1ll, (void*)vr$107, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$954$3 );
			fb_StrDelete( (FBSTRING*)&TMP$954$3 );
			__builtin_memset( &TMP$958$3, 0, 24ll );
			__builtin_memset( &TMP$955$3, 0, 24ll );
			FBSTRING* vr$113 = fb_StrConcat( &TMP$955$3, (void*)"pshufd xmm7, ", 14ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$956$3, 0, 24ll );
			FBSTRING* vr$116 = fb_StrConcat( &TMP$956$3, (void*)vr$113, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$957$3, 0, 24ll );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$957$3, (void*)vr$116, -1ll, (void*)"0x01", 5ll );
			fb_StrAssign( (void*)&TMP$958$3, -1ll, (void*)vr$119, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$958$3 );
			fb_StrDelete( (FBSTRING*)&TMP$958$3 );
			__builtin_memset( &TMP$962$3, 0, 24ll );
			__builtin_memset( &TMP$959$3, 0, 24ll );
			FBSTRING* vr$125 = fb_StrConcat( &TMP$959$3, (void*)"addss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$960$3, 0, 24ll );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$960$3, (void*)vr$125, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$961$3, 0, 24ll );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$961$3, (void*)vr$128, -1ll, (void*)"xmm7", 5ll );
			fb_StrAssign( (void*)&TMP$962$3, -1ll, (void*)vr$131, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$962$3 );
			fb_StrDelete( (FBSTRING*)&TMP$962$3 );
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
	int64 TMP$963$1;
	label$494:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$496;
	TMP$963$1 = 24ll;
	goto label$796;
	label$496:;
	TMP$963$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$796:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$963$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$498;
	{
		FBSTRING TMP$964$2;
		FBSTRING TMP$965$2;
		FBSTRING TMP$974$2;
		FBSTRING TMP$975$2;
		__builtin_memset( &TMP$965$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$964$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$964$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$965$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$965$2 );
		fb_StrDelete( (FBSTRING*)&TMP$965$2 );
		if( DDSIZE$1 <= 4ll ) goto label$500;
		{
			FBSTRING TMP$966$3;
			FBSTRING TMP$967$3;
			FBSTRING TMP$968$3;
			FBSTRING TMP$969$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$969$3, 0, 24ll );
			__builtin_memset( &TMP$966$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$966$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$967$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$967$3, (void*)vr$16, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$968$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$968$3, (void*)vr$19, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$969$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$969$3 );
			fb_StrDelete( (FBSTRING*)&TMP$969$3 );
		}
		goto label$499;
		label$500:;
		{
			FBSTRING TMP$970$3;
			FBSTRING TMP$971$3;
			FBSTRING TMP$972$3;
			FBSTRING TMP$973$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$973$3, 0, 24ll );
			__builtin_memset( &TMP$970$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$970$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$971$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$971$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$972$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$972$3, (void*)vr$31, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$973$3, -1ll, (void*)vr$34, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$973$3 );
			fb_StrDelete( (FBSTRING*)&TMP$973$3 );
		}
		label$499:;
		__builtin_memset( &TMP$975$2, 0, 24ll );
		FBSTRING* vr$38 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$974$2, 0, 24ll );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$974$2, (void*)"add esp, ", 10ll, (void*)vr$38, -1ll );
		fb_StrAssign( (void*)&TMP$975$2, -1ll, (void*)vr$41, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$975$2 );
		fb_StrDelete( (FBSTRING*)&TMP$975$2 );
	}
	label$498:;
	label$497:;
	if( DDSIZE$1 <= 4ll ) goto label$502;
	{
		struct $8FBSYMBOL* vr$44 = SYMBALLOCINTCONST( 9223372036854775807ll, 14ll );
		SYM$1 = vr$44;
		struct $6IRVREG* vr$46 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$46;
	}
	goto label$501;
	label$502:;
	{
		struct $8FBSYMBOL* vr$47 = SYMBALLOCINTCONST( 2147483647ll, 9ll );
		SYM$1 = vr$47;
		struct $6IRVREG* vr$49 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$49;
	}
	label$501:;
	*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
	HPREPOPERAND( TEMPVREG$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
	if( DDSIZE$1 <= 4ll ) goto label$504;
	{
		FBSTRING TMP$977$2;
		FBSTRING TMP$978$2;
		FBSTRING TMP$979$2;
		FBSTRING TMP$980$2;
		__builtin_memset( &TMP$980$2, 0, 24ll );
		__builtin_memset( &TMP$977$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$977$2, (void*)"andpd ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$978$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$978$2, (void*)vr$54, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$979$2, 0, 24ll );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$979$2, (void*)vr$57, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$980$2, -1ll, (void*)vr$60, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$980$2 );
		fb_StrDelete( (FBSTRING*)&TMP$980$2 );
	}
	goto label$503;
	label$504:;
	{
		FBSTRING TMP$982$2;
		FBSTRING TMP$983$2;
		FBSTRING TMP$984$2;
		FBSTRING TMP$985$2;
		__builtin_memset( &TMP$985$2, 0, 24ll );
		__builtin_memset( &TMP$982$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$982$2, (void*)"andps ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$983$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$983$2, (void*)vr$66, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$984$2, 0, 24ll );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$984$2, (void*)vr$69, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$985$2, -1ll, (void*)vr$72, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$985$2 );
		fb_StrDelete( (FBSTRING*)&TMP$985$2 );
	}
	label$503:;
	label$495:;
}

static void _EMITSGNF_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$986$1;
	label$505:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* TEMPVREG$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$507;
	TMP$986$1 = 24ll;
	goto label$797;
	label$507:;
	TMP$986$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$797:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$986$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$509;
	{
		FBSTRING TMP$987$2;
		FBSTRING TMP$988$2;
		FBSTRING TMP$997$2;
		FBSTRING TMP$998$2;
		__builtin_memset( &TMP$988$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$987$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$987$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$988$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$988$2 );
		fb_StrDelete( (FBSTRING*)&TMP$988$2 );
		if( DDSIZE$1 <= 4ll ) goto label$511;
		{
			FBSTRING TMP$989$3;
			FBSTRING TMP$990$3;
			FBSTRING TMP$991$3;
			FBSTRING TMP$992$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$992$3, 0, 24ll );
			__builtin_memset( &TMP$989$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$989$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$990$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$990$3, (void*)vr$16, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$991$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$991$3, (void*)vr$19, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$992$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$992$3 );
			fb_StrDelete( (FBSTRING*)&TMP$992$3 );
		}
		goto label$510;
		label$511:;
		{
			FBSTRING TMP$993$3;
			FBSTRING TMP$994$3;
			FBSTRING TMP$995$3;
			FBSTRING TMP$996$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$996$3, 0, 24ll );
			__builtin_memset( &TMP$993$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$993$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$994$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$994$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$995$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$995$3, (void*)vr$31, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$996$3, -1ll, (void*)vr$34, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$996$3 );
			fb_StrDelete( (FBSTRING*)&TMP$996$3 );
		}
		label$510:;
		__builtin_memset( &TMP$998$2, 0, 24ll );
		FBSTRING* vr$38 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$997$2, 0, 24ll );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$997$2, (void*)"add esp, ", 10ll, (void*)vr$38, -1ll );
		fb_StrAssign( (void*)&TMP$998$2, -1ll, (void*)vr$41, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$998$2 );
		fb_StrDelete( (FBSTRING*)&TMP$998$2 );
	}
	label$509:;
	label$508:;
	if( DDSIZE$1 <= 4ll ) goto label$513;
	{
		FBSTRING TMP$1002$2;
		FBSTRING TMP$1003$2;
		FBSTRING TMP$1005$2;
		FBSTRING TMP$1006$2;
		FBSTRING TMP$1007$2;
		FBSTRING TMP$1008$2;
		FBSTRING TMP$1011$2;
		FBSTRING TMP$1012$2;
		FBSTRING TMP$1013$2;
		FBSTRING TMP$1014$2;
		FBSTRING TMP$1015$2;
		FBSTRING TMP$1016$2;
		OUTP( (uint8*)"xorpd xmm7, xmm7" );
		__builtin_memset( &TMP$1003$2, 0, 24ll );
		__builtin_memset( &TMP$1002$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$1002$2, (void*)"cmpneqsd xmm7, ", 16ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1003$2, -1ll, (void*)vr$47, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1003$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1003$2 );
		struct $8FBSYMBOL* vr$50 = SYMBALLOCINTCONST( 9223372036854775807ll, 14ll );
		SYM$1 = vr$50;
		*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
		struct $6IRVREG* vr$53 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$53;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1008$2, 0, 24ll );
		__builtin_memset( &TMP$1005$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1005$2, (void*)"orpd ", 6ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1006$2, 0, 24ll );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$1006$2, (void*)vr$57, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1007$2, 0, 24ll );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$1007$2, (void*)vr$60, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1008$2, -1ll, (void*)vr$63, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1008$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1008$2 );
		struct $8FBSYMBOL* vr$66 = SYMBALLOCINTCONST( -4616189618054758400ll, 14ll );
		SYM$1 = vr$66;
		*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
		struct $6IRVREG* vr$69 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$69;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1012$2, 0, 24ll );
		__builtin_memset( &TMP$1011$2, 0, 24ll );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$1011$2, (void*)"andpd xmm7, ", 13ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1012$2, -1ll, (void*)vr$73, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1012$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1012$2 );
		__builtin_memset( &TMP$1016$2, 0, 24ll );
		__builtin_memset( &TMP$1013$2, 0, 24ll );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1013$2, (void*)"andpd ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1014$2, 0, 24ll );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$1014$2, (void*)vr$79, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1015$2, 0, 24ll );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$1015$2, (void*)vr$82, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$1016$2, -1ll, (void*)vr$85, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1016$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1016$2 );
	}
	goto label$512;
	label$513:;
	{
		FBSTRING TMP$1020$2;
		FBSTRING TMP$1021$2;
		FBSTRING TMP$1023$2;
		FBSTRING TMP$1024$2;
		FBSTRING TMP$1025$2;
		FBSTRING TMP$1026$2;
		FBSTRING TMP$1029$2;
		FBSTRING TMP$1030$2;
		FBSTRING TMP$1031$2;
		FBSTRING TMP$1032$2;
		FBSTRING TMP$1033$2;
		FBSTRING TMP$1034$2;
		OUTP( (uint8*)"xorps xmm7, xmm7" );
		__builtin_memset( &TMP$1021$2, 0, 24ll );
		__builtin_memset( &TMP$1020$2, 0, 24ll );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$1020$2, (void*)"cmpneqss xmm7, ", 16ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1021$2, -1ll, (void*)vr$91, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1021$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1021$2 );
		struct $8FBSYMBOL* vr$94 = SYMBALLOCINTCONST( 2147483647ll, 9ll );
		SYM$1 = vr$94;
		*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
		struct $6IRVREG* vr$97 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$97;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1026$2, 0, 24ll );
		__builtin_memset( &TMP$1023$2, 0, 24ll );
		FBSTRING* vr$101 = fb_StrConcat( &TMP$1023$2, (void*)"orps ", 6ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1024$2, 0, 24ll );
		FBSTRING* vr$104 = fb_StrConcat( &TMP$1024$2, (void*)vr$101, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1025$2, 0, 24ll );
		FBSTRING* vr$107 = fb_StrConcat( &TMP$1025$2, (void*)vr$104, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1026$2, -1ll, (void*)vr$107, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1026$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1026$2 );
		struct $8FBSYMBOL* vr$110 = SYMBALLOCINTCONST( 3212836864ll, 9ll );
		SYM$1 = vr$110;
		*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
		struct $6IRVREG* vr$113 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		TEMPVREG$1 = vr$113;
		HPREPOPERAND( TEMPVREG$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1030$2, 0, 24ll );
		__builtin_memset( &TMP$1029$2, 0, 24ll );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$1029$2, (void*)"andps xmm7, ", 13ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1030$2, -1ll, (void*)vr$117, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1030$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1030$2 );
		__builtin_memset( &TMP$1034$2, 0, 24ll );
		__builtin_memset( &TMP$1031$2, 0, 24ll );
		FBSTRING* vr$123 = fb_StrConcat( &TMP$1031$2, (void*)"andps ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1032$2, 0, 24ll );
		FBSTRING* vr$126 = fb_StrConcat( &TMP$1032$2, (void*)vr$123, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1033$2, 0, 24ll );
		FBSTRING* vr$129 = fb_StrConcat( &TMP$1033$2, (void*)vr$126, -1ll, (void*)"xmm7", 5ll );
		fb_StrAssign( (void*)&TMP$1034$2, -1ll, (void*)vr$129, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1034$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1034$2 );
	}
	label$512:;
	label$506:;
}

static void _EMITSINCOS_FAST_SSE( struct $6IRVREG* DVREG$1, int64 ISCOS$1 )
{
	FBSTRING TMP$1038$1;
	FBSTRING TMP$1039$1;
	FBSTRING TMP$1065$1;
	FBSTRING TMP$1066$1;
	FBSTRING TMP$1067$1;
	FBSTRING TMP$1068$1;
	FBSTRING TMP$1078$1;
	FBSTRING TMP$1079$1;
	FBSTRING TMP$1080$1;
	FBSTRING TMP$1081$1;
	FBSTRING TMP$1082$1;
	FBSTRING TMP$1083$1;
	FBSTRING TMP$1085$1;
	FBSTRING TMP$1086$1;
	FBSTRING TMP$1087$1;
	FBSTRING TMP$1088$1;
	FBSTRING TMP$1090$1;
	FBSTRING TMP$1091$1;
	FBSTRING TMP$1092$1;
	FBSTRING TMP$1093$1;
	FBSTRING TMP$1096$1;
	FBSTRING TMP$1097$1;
	FBSTRING TMP$1098$1;
	FBSTRING TMP$1099$1;
	FBSTRING TMP$1101$1;
	FBSTRING TMP$1102$1;
	FBSTRING TMP$1104$1;
	FBSTRING TMP$1105$1;
	FBSTRING TMP$1106$1;
	FBSTRING TMP$1107$1;
	FBSTRING TMP$1109$1;
	FBSTRING TMP$1110$1;
	FBSTRING TMP$1111$1;
	FBSTRING TMP$1112$1;
	FBSTRING TMP$1114$1;
	FBSTRING TMP$1115$1;
	FBSTRING TMP$1116$1;
	FBSTRING TMP$1117$1;
	FBSTRING TMP$1119$1;
	FBSTRING TMP$1120$1;
	FBSTRING TMP$1122$1;
	FBSTRING TMP$1123$1;
	FBSTRING TMP$1124$1;
	FBSTRING TMP$1125$1;
	FBSTRING TMP$1127$1;
	FBSTRING TMP$1128$1;
	FBSTRING TMP$1129$1;
	FBSTRING TMP$1130$1;
	FBSTRING TMP$1133$1;
	FBSTRING TMP$1134$1;
	FBSTRING TMP$1135$1;
	FBSTRING TMP$1136$1;
	FBSTRING TMP$1138$1;
	FBSTRING TMP$1139$1;
	FBSTRING TMP$1140$1;
	FBSTRING TMP$1141$1;
	FBSTRING TMP$1144$1;
	FBSTRING TMP$1145$1;
	FBSTRING TMP$1152$1;
	FBSTRING TMP$1153$1;
	FBSTRING TMP$1154$1;
	FBSTRING TMP$1155$1;
	FBSTRING TMP$1158$1;
	FBSTRING TMP$1159$1;
	FBSTRING TMP$1160$1;
	FBSTRING TMP$1161$1;
	FBSTRING TMP$1162$1;
	FBSTRING TMP$1163$1;
	FBSTRING TMP$1164$1;
	FBSTRING TMP$1165$1;
	FBSTRING TMP$1168$1;
	FBSTRING TMP$1169$1;
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
	FBSTRING TMP$1189$1;
	FBSTRING TMP$1203$1;
	FBSTRING TMP$1204$1;
	label$514:;
	static int64 REG$1[3];
	static struct $8FBARRAY1IlE tmp$1035$1 = { (int64*)REG$1, (int64*)REG$1, 24ll, 8ll, 1ll, 49ll, { { 3ll, 0ll, 2ll } } };
	static int64 ISFREE$1[3];
	static struct $8FBARRAY1IlE tmp$1036$1 = { (int64*)ISFREE$1, (int64*)ISFREE$1, 24ll, 8ll, 1ll, 49ll, { { 3ll, 0ll, 2ll } } };
	static int64 STACKSIZE$1;
	static int64 I$1;
	static int64 STACKPOINTER$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING REGNAME$1[3];
	static struct $8FBARRAY1I8FBSTRINGE tmp$1037$1 = { (FBSTRING*)REGNAME$1, (FBSTRING*)REGNAME$1, 72ll, 24ll, 1ll, 49ll, { { 3ll, 0ll, 2ll } } };
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
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	STACKSIZE$1 = 4ll;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$517;
	{
		STACKSIZE$1 = STACKSIZE$1 + 4ll;
	}
	label$517:;
	label$516:;
	*(int64*)REG$1 = 3ll;
	*(int64*)ISFREE$1 = 0ll;
	*(int64*)((int64)(int64*)REG$1 + 8ll) = 5ll;
	*(int64*)((int64)(int64*)ISFREE$1 + 8ll) = 0ll;
	int64 vr$2 = HISREGFREE( 0ll, 3ll );
	if( vr$2 == 0ll ) goto label$519;
	{
		*(int64*)REG$1 = 3ll;
		*(int64*)ISFREE$1 = -1ll;
		int64 vr$3 = HISREGFREE( 0ll, 0ll );
		if( vr$3 == 0ll ) goto label$521;
		{
			*(int64*)((int64)(int64*)REG$1 + 8ll) = 0ll;
			*(int64*)((int64)(int64*)ISFREE$1 + 8ll) = -1ll;
		}
		goto label$520;
		label$521:;
		int64 vr$4 = HISREGFREE( 0ll, 5ll );
		if( vr$4 == 0ll ) goto label$522;
		{
			*(int64*)((int64)(int64*)REG$1 + 8ll) = 5ll;
			*(int64*)((int64)(int64*)ISFREE$1 + 8ll) = -1ll;
		}
		label$522:;
		label$520:;
	}
	goto label$518;
	label$519:;
	int64 vr$5 = HISREGFREE( 0ll, 0ll );
	if( vr$5 == 0ll ) goto label$523;
	{
		*(int64*)REG$1 = 0ll;
		*(int64*)ISFREE$1 = -1ll;
		int64 vr$6 = HISREGFREE( 0ll, 5ll );
		if( vr$6 == 0ll ) goto label$525;
		{
			*(int64*)((int64)(int64*)REG$1 + 8ll) = 5ll;
			*(int64*)((int64)(int64*)ISFREE$1 + 8ll) = -1ll;
		}
		label$525:;
		label$524:;
	}
	goto label$518;
	label$523:;
	{
		int64 vr$7 = HISREGFREE( 0ll, 5ll );
		if( vr$7 == 0ll ) goto label$527;
		{
			*(int64*)((int64)(int64*)REG$1 + 8ll) = 5ll;
			*(int64*)((int64)(int64*)ISFREE$1 + 8ll) = -1ll;
		}
		label$527:;
		label$526:;
	}
	label$518:;
	int64 vr$8 = HFINDFREEREG( 1ll );
	*(int64*)((int64)(int64*)REG$1 + 16ll) = vr$8;
	if( *(int64*)((int64)(int64*)REG$1 + 16ll) != -1ll ) goto label$529;
	{
		*(int64*)((int64)(int64*)REG$1 + 16ll) = 0ll;
		*(int64*)((int64)(int64*)ISFREE$1 + 16ll) = 0ll;
	}
	goto label$528;
	label$529:;
	{
		*(int64*)((int64)(int64*)ISFREE$1 + 16ll) = -1ll;
	}
	label$528:;
	STACKSIZE$1 = STACKSIZE$1 + ((*(int64*)ISFREE$1 & 1ll) << (2ll & 63ll));
	STACKSIZE$1 = STACKSIZE$1 + ((*(int64*)((int64)(int64*)ISFREE$1 + 8ll) & 1ll) << (2ll & 63ll));
	STACKSIZE$1 = STACKSIZE$1 + ((*(int64*)((int64)(int64*)ISFREE$1 + 16ll) & 1ll) << (2ll & 63ll));
	uint8* vr$18 = HGETREGNAME( 8ll, *(int64*)REG$1 );
	fb_StrAssign( (void*)REGNAME$1, -1ll, (void*)vr$18, 0ll, 0 );
	uint8* vr$19 = HGETREGNAME( 8ll, *(int64*)((int64)(int64*)REG$1 + 8ll) );
	fb_StrAssign( (void*)((uint8*)REGNAME$1 + 24ll), -1ll, (void*)vr$19, 0ll, 0 );
	uint8* vr$20 = HGETREGNAME( 15ll, *(int64*)((int64)(int64*)REG$1 + 16ll) );
	fb_StrAssign( (void*)((uint8*)REGNAME$1 + 48ll), -1ll, (void*)vr$20, 0ll, 0 );
	struct $8FBSYMBOL* vr$21 = SYMBALLOCINTCONST( 2147483647ll, 9ll );
	SYM_INVSIGNBITMASK$1 = vr$21;
	*(int64*)((uint8*)SYM_INVSIGNBITMASK$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$24 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_INVSIGNBITMASK$1, *(int64*)((uint8*)SYM_INVSIGNBITMASK$1 + 88ll) );
	VREG_INVSIGNBITMASK$1 = vr$24;
	struct $8FBSYMBOL* vr$25 = SYMBALLOCINTCONST( 1070141403ll, 9ll );
	SYM_PIOVERTWO$1 = vr$25;
	*(int64*)((uint8*)SYM_PIOVERTWO$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$28 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_PIOVERTWO$1, *(int64*)((uint8*)SYM_PIOVERTWO$1 + 88ll) );
	VREG_PIOVERTWO$1 = vr$28;
	struct $8FBSYMBOL* vr$29 = SYMBALLOCINTCONST( 1059256707ll, 9ll );
	SYM_TWOOVERPI$1 = vr$29;
	*(int64*)((uint8*)SYM_TWOOVERPI$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$32 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_TWOOVERPI$1, *(int64*)((uint8*)SYM_TWOOVERPI$1 + 88ll) );
	VREG_TWOOVERPI$1 = vr$32;
	struct $8FBSYMBOL* vr$33 = SYMBALLOCINTCONST( 1065353216ll, 9ll );
	SYM_ONE$1 = vr$33;
	*(int64*)((uint8*)SYM_ONE$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$36 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_ONE$1, *(int64*)((uint8*)SYM_ONE$1 + 88ll) );
	VREG_ONE$1 = vr$36;
	struct $8FBSYMBOL* vr$37 = SYMBALLOCINTCONST( 1070141403ll, 9ll );
	SYM_SIN_C0$1 = vr$37;
	*(int64*)((uint8*)SYM_SIN_C0$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$40 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_SIN_C0$1, *(int64*)((uint8*)SYM_SIN_C0$1 + 88ll) );
	VREG_SIN_C0$1 = vr$40;
	struct $8FBSYMBOL* vr$41 = SYMBALLOCINTCONST( 3206897127ll, 9ll );
	SYM_SIN_C1$1 = vr$41;
	*(int64*)((uint8*)SYM_SIN_C1$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$44 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_SIN_C1$1, *(int64*)((uint8*)SYM_SIN_C1$1 + 88ll) );
	VREG_SIN_C1$1 = vr$44;
	struct $8FBSYMBOL* vr$45 = SYMBALLOCINTCONST( 1034106339ll, 9ll );
	SYM_SIN_C2$1 = vr$45;
	*(int64*)((uint8*)SYM_SIN_C2$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$48 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_SIN_C2$1, *(int64*)((uint8*)SYM_SIN_C2$1 + 88ll) );
	VREG_SIN_C2$1 = vr$48;
	struct $8FBSYMBOL* vr$49 = SYMBALLOCINTCONST( 3147393382ll, 9ll );
	SYM_SIN_C3$1 = vr$49;
	*(int64*)((uint8*)SYM_SIN_C3$1 + 168ll) = 16ll;
	struct $6IRVREG* vr$52 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM_SIN_C3$1, *(int64*)((uint8*)SYM_SIN_C3$1 + 88ll) );
	VREG_SIN_C3$1 = vr$52;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1039$1, 0, 24ll );
	FBSTRING* vr$54 = fb_LongintToStr( STACKSIZE$1 );
	__builtin_memset( &TMP$1038$1, 0, 24ll );
	FBSTRING* vr$57 = fb_StrConcat( &TMP$1038$1, (void*)"sub esp, ", 10ll, (void*)vr$54, -1ll );
	fb_StrAssign( (void*)&TMP$1039$1, -1ll, (void*)vr$57, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1039$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1039$1 );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$531;
	{
		FBSTRING TMP$1040$2;
		FBSTRING TMP$1041$2;
		FBSTRING TMP$1042$2;
		FBSTRING TMP$1043$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1043$2, 0, 24ll );
		__builtin_memset( &TMP$1040$2, 0, 24ll );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$1040$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1041$2, 0, 24ll );
		FBSTRING* vr$67 = fb_StrConcat( &TMP$1041$2, (void*)vr$64, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1042$2, 0, 24ll );
		FBSTRING* vr$70 = fb_StrConcat( &TMP$1042$2, (void*)vr$67, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1043$2, -1ll, (void*)vr$70, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1043$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1043$2 );
	}
	label$531:;
	label$530:;
	STACKPOINTER$1 = 4ll;
	{
		I$1 = 0ll;
		label$535:;
		{
			if( *(int64*)((int64)(int64*)ISFREE$1 + (I$1 << (3ll & 63ll))) != 0ll ) goto label$537;
			{
				if( I$1 >= 2ll ) goto label$539;
				{
					FBSTRING TMP$1046$5;
					FBSTRING TMP$1047$5;
					FBSTRING TMP$1048$5;
					FBSTRING TMP$1049$5;
					FBSTRING TMP$1050$5;
					__builtin_memset( &TMP$1050$5, 0, 24ll );
					FBSTRING* vr$77 = fb_LongintToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1046$5, 0, 24ll );
					FBSTRING* vr$80 = fb_StrConcat( &TMP$1046$5, (void*)"mov [esp+", 10ll, (void*)vr$77, -1ll );
					__builtin_memset( &TMP$1047$5, 0, 24ll );
					FBSTRING* vr$83 = fb_StrConcat( &TMP$1047$5, (void*)vr$80, -1ll, (void*)"]", 2ll );
					__builtin_memset( &TMP$1048$5, 0, 24ll );
					FBSTRING* vr$86 = fb_StrConcat( &TMP$1048$5, (void*)vr$83, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1049$5, 0, 24ll );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$1049$5, (void*)vr$86, -1ll, (void*)((int64)(FBSTRING*)REGNAME$1 + (I$1 * 24ll)), -1ll );
					fb_StrAssign( (void*)&TMP$1050$5, -1ll, (void*)vr$89, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1050$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1050$5 );
				}
				goto label$538;
				label$539:;
				{
					FBSTRING TMP$1052$5;
					FBSTRING TMP$1053$5;
					FBSTRING TMP$1054$5;
					FBSTRING TMP$1055$5;
					FBSTRING TMP$1056$5;
					__builtin_memset( &TMP$1056$5, 0, 24ll );
					FBSTRING* vr$95 = fb_LongintToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1052$5, 0, 24ll );
					FBSTRING* vr$98 = fb_StrConcat( &TMP$1052$5, (void*)"movss [esp+", 12ll, (void*)vr$95, -1ll );
					__builtin_memset( &TMP$1053$5, 0, 24ll );
					FBSTRING* vr$101 = fb_StrConcat( &TMP$1053$5, (void*)vr$98, -1ll, (void*)"]", 2ll );
					__builtin_memset( &TMP$1054$5, 0, 24ll );
					FBSTRING* vr$104 = fb_StrConcat( &TMP$1054$5, (void*)vr$101, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1055$5, 0, 24ll );
					FBSTRING* vr$107 = fb_StrConcat( &TMP$1055$5, (void*)vr$104, -1ll, (void*)((int64)(FBSTRING*)REGNAME$1 + (I$1 * 24ll)), -1ll );
					fb_StrAssign( (void*)&TMP$1056$5, -1ll, (void*)vr$107, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1056$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1056$5 );
				}
				label$538:;
				STACKPOINTER$1 = STACKPOINTER$1 + 4ll;
			}
			label$537:;
			label$536:;
		}
		label$533:;
		I$1 = I$1 + 1ll;
		label$532:;
		if( I$1 <= 2ll ) goto label$535;
		label$534:;
	}
	if( ISCOS$1 != 0ll ) goto label$541;
	{
		FBSTRING TMP$1057$2;
		FBSTRING TMP$1058$2;
		FBSTRING TMP$1060$2;
		FBSTRING TMP$1061$2;
		FBSTRING TMP$1062$2;
		FBSTRING TMP$1063$2;
		__builtin_memset( &TMP$1058$2, 0, 24ll );
		__builtin_memset( &TMP$1057$2, 0, 24ll );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$1057$2, (void*)"movss [esp], ", 14ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1058$2, -1ll, (void*)vr$115, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1058$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1058$2 );
		HPREPOPERAND( VREG_TWOOVERPI$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1063$2, 0, 24ll );
		__builtin_memset( &TMP$1060$2, 0, 24ll );
		FBSTRING* vr$121 = fb_StrConcat( &TMP$1060$2, (void*)"mulss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1061$2, 0, 24ll );
		FBSTRING* vr$124 = fb_StrConcat( &TMP$1061$2, (void*)vr$121, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1062$2, 0, 24ll );
		FBSTRING* vr$127 = fb_StrConcat( &TMP$1062$2, (void*)vr$124, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1063$2, -1ll, (void*)vr$127, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1063$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1063$2 );
		OUTP( (uint8*)"and       dword ptr [esp], 0x80000000" );
	}
	label$541:;
	label$540:;
	HPREPOPERAND( VREG_INVSIGNBITMASK$1, &SRC$1, 25ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1068$1, 0, 24ll );
	__builtin_memset( &TMP$1065$1, 0, 24ll );
	FBSTRING* vr$133 = fb_StrConcat( &TMP$1065$1, (void*)"andps ", 7ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1066$1, 0, 24ll );
	FBSTRING* vr$136 = fb_StrConcat( &TMP$1066$1, (void*)vr$133, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1067$1, 0, 24ll );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1067$1, (void*)vr$136, -1ll, (void*)&SRC$1, -1ll );
	fb_StrAssign( (void*)&TMP$1068$1, -1ll, (void*)vr$139, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1068$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1068$1 );
	if( ISCOS$1 != -1ll ) goto label$543;
	{
		FBSTRING TMP$1069$2;
		FBSTRING TMP$1070$2;
		FBSTRING TMP$1071$2;
		FBSTRING TMP$1072$2;
		FBSTRING TMP$1073$2;
		FBSTRING TMP$1074$2;
		FBSTRING TMP$1075$2;
		FBSTRING TMP$1076$2;
		HPREPOPERAND( VREG_PIOVERTWO$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1072$2, 0, 24ll );
		__builtin_memset( &TMP$1069$2, 0, 24ll );
		FBSTRING* vr$145 = fb_StrConcat( &TMP$1069$2, (void*)"addss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1070$2, 0, 24ll );
		FBSTRING* vr$148 = fb_StrConcat( &TMP$1070$2, (void*)vr$145, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1071$2, 0, 24ll );
		FBSTRING* vr$151 = fb_StrConcat( &TMP$1071$2, (void*)vr$148, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1072$2, -1ll, (void*)vr$151, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1072$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1072$2 );
		HPREPOPERAND( VREG_TWOOVERPI$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$1076$2, 0, 24ll );
		__builtin_memset( &TMP$1073$2, 0, 24ll );
		FBSTRING* vr$157 = fb_StrConcat( &TMP$1073$2, (void*)"mulss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1074$2, 0, 24ll );
		FBSTRING* vr$160 = fb_StrConcat( &TMP$1074$2, (void*)vr$157, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1075$2, 0, 24ll );
		FBSTRING* vr$163 = fb_StrConcat( &TMP$1075$2, (void*)vr$160, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1076$2, -1ll, (void*)vr$163, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1076$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1076$2 );
	}
	label$543:;
	label$542:;
	__builtin_memset( &TMP$1081$1, 0, 24ll );
	__builtin_memset( &TMP$1078$1, 0, 24ll );
	FBSTRING* vr$169 = fb_StrConcat( &TMP$1078$1, (void*)"cvttss2si ", 11ll, (void*)REGNAME$1, -1ll );
	__builtin_memset( &TMP$1079$1, 0, 24ll );
	FBSTRING* vr$172 = fb_StrConcat( &TMP$1079$1, (void*)vr$169, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1080$1, 0, 24ll );
	FBSTRING* vr$175 = fb_StrConcat( &TMP$1080$1, (void*)vr$172, -1ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1081$1, -1ll, (void*)vr$175, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1081$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1081$1 );
	HPREPOPERAND( VREG_ONE$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1083$1, 0, 24ll );
	__builtin_memset( &TMP$1082$1, 0, 24ll );
	FBSTRING* vr$181 = fb_StrConcat( &TMP$1082$1, (void*)"movss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
	fb_StrAssign( (void*)&TMP$1083$1, -1ll, (void*)vr$181, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1083$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1083$1 );
	__builtin_memset( &TMP$1088$1, 0, 24ll );
	__builtin_memset( &TMP$1085$1, 0, 24ll );
	FBSTRING* vr$187 = fb_StrConcat( &TMP$1085$1, (void*)"mov       ", 11ll, (void*)((uint8*)REGNAME$1 + 24ll), -1ll );
	__builtin_memset( &TMP$1086$1, 0, 24ll );
	FBSTRING* vr$190 = fb_StrConcat( &TMP$1086$1, (void*)vr$187, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1087$1, 0, 24ll );
	FBSTRING* vr$193 = fb_StrConcat( &TMP$1087$1, (void*)vr$190, -1ll, (void*)REGNAME$1, -1ll );
	fb_StrAssign( (void*)&TMP$1088$1, -1ll, (void*)vr$193, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1088$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1088$1 );
	__builtin_memset( &TMP$1093$1, 0, 24ll );
	__builtin_memset( &TMP$1090$1, 0, 24ll );
	FBSTRING* vr$199 = fb_StrConcat( &TMP$1090$1, (void*)"cvtsi2ss  ", 11ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	__builtin_memset( &TMP$1091$1, 0, 24ll );
	FBSTRING* vr$202 = fb_StrConcat( &TMP$1091$1, (void*)vr$199, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1092$1, 0, 24ll );
	FBSTRING* vr$205 = fb_StrConcat( &TMP$1092$1, (void*)vr$202, -1ll, (void*)REGNAME$1, -1ll );
	fb_StrAssign( (void*)&TMP$1093$1, -1ll, (void*)vr$205, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1093$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1093$1 );
	__builtin_memset( &TMP$1099$1, 0, 24ll );
	__builtin_memset( &TMP$1096$1, 0, 24ll );
	FBSTRING* vr$211 = fb_StrConcat( &TMP$1096$1, (void*)"shl       ", 11ll, (void*)((uint8*)REGNAME$1 + 24ll), -1ll );
	__builtin_memset( &TMP$1097$1, 0, 24ll );
	FBSTRING* vr$214 = fb_StrConcat( &TMP$1097$1, (void*)vr$211, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1098$1, 0, 24ll );
	FBSTRING* vr$217 = fb_StrConcat( &TMP$1098$1, (void*)vr$214, -1ll, (void*)"30", 3ll );
	fb_StrAssign( (void*)&TMP$1099$1, -1ll, (void*)vr$217, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1099$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1099$1 );
	__builtin_memset( &TMP$1102$1, 0, 24ll );
	__builtin_memset( &TMP$1101$1, 0, 24ll );
	FBSTRING* vr$223 = fb_StrConcat( &TMP$1101$1, (void*)"not       ", 11ll, (void*)REGNAME$1, -1ll );
	fb_StrAssign( (void*)&TMP$1102$1, -1ll, (void*)vr$223, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1102$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1102$1 );
	__builtin_memset( &TMP$1107$1, 0, 24ll );
	__builtin_memset( &TMP$1104$1, 0, 24ll );
	FBSTRING* vr$229 = fb_StrConcat( &TMP$1104$1, (void*)"and       ", 11ll, (void*)((uint8*)REGNAME$1 + 24ll), -1ll );
	__builtin_memset( &TMP$1105$1, 0, 24ll );
	FBSTRING* vr$232 = fb_StrConcat( &TMP$1105$1, (void*)vr$229, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1106$1, 0, 24ll );
	FBSTRING* vr$235 = fb_StrConcat( &TMP$1106$1, (void*)vr$232, -1ll, (void*)"0x80000000", 11ll );
	fb_StrAssign( (void*)&TMP$1107$1, -1ll, (void*)vr$235, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1107$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1107$1 );
	__builtin_memset( &TMP$1112$1, 0, 24ll );
	__builtin_memset( &TMP$1109$1, 0, 24ll );
	FBSTRING* vr$241 = fb_StrConcat( &TMP$1109$1, (void*)"and       ", 11ll, (void*)REGNAME$1, -1ll );
	__builtin_memset( &TMP$1110$1, 0, 24ll );
	FBSTRING* vr$244 = fb_StrConcat( &TMP$1110$1, (void*)vr$241, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1111$1, 0, 24ll );
	FBSTRING* vr$247 = fb_StrConcat( &TMP$1111$1, (void*)vr$244, -1ll, (void*)"0x1", 4ll );
	fb_StrAssign( (void*)&TMP$1112$1, -1ll, (void*)vr$247, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1112$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1112$1 );
	__builtin_memset( &TMP$1117$1, 0, 24ll );
	__builtin_memset( &TMP$1114$1, 0, 24ll );
	FBSTRING* vr$253 = fb_StrConcat( &TMP$1114$1, (void*)"subss ", 7ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1115$1, 0, 24ll );
	FBSTRING* vr$256 = fb_StrConcat( &TMP$1115$1, (void*)vr$253, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1116$1, 0, 24ll );
	FBSTRING* vr$259 = fb_StrConcat( &TMP$1116$1, (void*)vr$256, -1ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	fb_StrAssign( (void*)&TMP$1117$1, -1ll, (void*)vr$259, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1117$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1117$1 );
	__builtin_memset( &TMP$1120$1, 0, 24ll );
	__builtin_memset( &TMP$1119$1, 0, 24ll );
	FBSTRING* vr$265 = fb_StrConcat( &TMP$1119$1, (void*)"dec       ", 11ll, (void*)REGNAME$1, -1ll );
	fb_StrAssign( (void*)&TMP$1120$1, -1ll, (void*)vr$265, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1120$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1120$1 );
	__builtin_memset( &TMP$1125$1, 0, 24ll );
	__builtin_memset( &TMP$1122$1, 0, 24ll );
	FBSTRING* vr$271 = fb_StrConcat( &TMP$1122$1, (void*)"minss ", 7ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1123$1, 0, 24ll );
	FBSTRING* vr$274 = fb_StrConcat( &TMP$1123$1, (void*)vr$271, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1124$1, 0, 24ll );
	FBSTRING* vr$277 = fb_StrConcat( &TMP$1124$1, (void*)vr$274, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1125$1, -1ll, (void*)vr$277, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1125$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1125$1 );
	__builtin_memset( &TMP$1130$1, 0, 24ll );
	__builtin_memset( &TMP$1127$1, 0, 24ll );
	FBSTRING* vr$283 = fb_StrConcat( &TMP$1127$1, (void*)"movd      ", 11ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	__builtin_memset( &TMP$1128$1, 0, 24ll );
	FBSTRING* vr$286 = fb_StrConcat( &TMP$1128$1, (void*)vr$283, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1129$1, 0, 24ll );
	FBSTRING* vr$289 = fb_StrConcat( &TMP$1129$1, (void*)vr$286, -1ll, (void*)REGNAME$1, -1ll );
	fb_StrAssign( (void*)&TMP$1130$1, -1ll, (void*)vr$289, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1130$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1130$1 );
	__builtin_memset( &TMP$1134$1, 0, 24ll );
	__builtin_memset( &TMP$1133$1, 0, 24ll );
	FBSTRING* vr$295 = fb_StrConcat( &TMP$1133$1, (void*)"subss xmm7, ", 13ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1134$1, -1ll, (void*)vr$295, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1134$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1134$1 );
	__builtin_memset( &TMP$1136$1, 0, 24ll );
	__builtin_memset( &TMP$1135$1, 0, 24ll );
	FBSTRING* vr$301 = fb_StrConcat( &TMP$1135$1, (void*)"andps xmm7, ", 13ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	fb_StrAssign( (void*)&TMP$1136$1, -1ll, (void*)vr$301, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1136$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1136$1 );
	__builtin_memset( &TMP$1141$1, 0, 24ll );
	__builtin_memset( &TMP$1138$1, 0, 24ll );
	FBSTRING* vr$307 = fb_StrConcat( &TMP$1138$1, (void*)"andnps    ", 11ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	__builtin_memset( &TMP$1139$1, 0, 24ll );
	FBSTRING* vr$310 = fb_StrConcat( &TMP$1139$1, (void*)vr$307, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1140$1, 0, 24ll );
	FBSTRING* vr$313 = fb_StrConcat( &TMP$1140$1, (void*)vr$310, -1ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1141$1, -1ll, (void*)vr$313, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1141$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1141$1 );
	__builtin_memset( &TMP$1145$1, 0, 24ll );
	__builtin_memset( &TMP$1144$1, 0, 24ll );
	FBSTRING* vr$319 = fb_StrConcat( &TMP$1144$1, (void*)"orps      xmm7, ", 17ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	fb_StrAssign( (void*)&TMP$1145$1, -1ll, (void*)vr$319, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1145$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1145$1 );
	if( ISCOS$1 != 0ll ) goto label$545;
	{
		FBSTRING TMP$1148$2;
		FBSTRING TMP$1149$2;
		FBSTRING TMP$1150$2;
		FBSTRING TMP$1151$2;
		__builtin_memset( &TMP$1151$2, 0, 24ll );
		__builtin_memset( &TMP$1148$2, 0, 24ll );
		FBSTRING* vr$325 = fb_StrConcat( &TMP$1148$2, (void*)"xor       ", 11ll, (void*)((uint8*)REGNAME$1 + 24ll), -1ll );
		__builtin_memset( &TMP$1149$2, 0, 24ll );
		FBSTRING* vr$328 = fb_StrConcat( &TMP$1149$2, (void*)vr$325, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1150$2, 0, 24ll );
		FBSTRING* vr$331 = fb_StrConcat( &TMP$1150$2, (void*)vr$328, -1ll, (void*)"[esp]", 6ll );
		fb_StrAssign( (void*)&TMP$1151$2, -1ll, (void*)vr$331, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1151$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1151$2 );
	}
	label$545:;
	label$544:;
	__builtin_memset( &TMP$1155$1, 0, 24ll );
	__builtin_memset( &TMP$1152$1, 0, 24ll );
	FBSTRING* vr$337 = fb_StrConcat( &TMP$1152$1, (void*)"movd      ", 11ll, (void*)REGNAME$1, -1ll );
	__builtin_memset( &TMP$1153$1, 0, 24ll );
	FBSTRING* vr$340 = fb_StrConcat( &TMP$1153$1, (void*)vr$337, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1154$1, 0, 24ll );
	FBSTRING* vr$343 = fb_StrConcat( &TMP$1154$1, (void*)vr$340, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1155$1, -1ll, (void*)vr$343, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1155$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1155$1 );
	OUTP( (uint8*)"mulss xmm7, xmm7" );
	__builtin_memset( &TMP$1161$1, 0, 24ll );
	__builtin_memset( &TMP$1158$1, 0, 24ll );
	FBSTRING* vr$349 = fb_StrConcat( &TMP$1158$1, (void*)"or        ", 11ll, (void*)((uint8*)REGNAME$1 + 24ll), -1ll );
	__builtin_memset( &TMP$1159$1, 0, 24ll );
	FBSTRING* vr$352 = fb_StrConcat( &TMP$1159$1, (void*)vr$349, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1160$1, 0, 24ll );
	FBSTRING* vr$355 = fb_StrConcat( &TMP$1160$1, (void*)vr$352, -1ll, (void*)REGNAME$1, -1ll );
	fb_StrAssign( (void*)&TMP$1161$1, -1ll, (void*)vr$355, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1161$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1161$1 );
	__builtin_memset( &TMP$1165$1, 0, 24ll );
	__builtin_memset( &TMP$1162$1, 0, 24ll );
	FBSTRING* vr$361 = fb_StrConcat( &TMP$1162$1, (void*)"movss ", 7ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	__builtin_memset( &TMP$1163$1, 0, 24ll );
	FBSTRING* vr$364 = fb_StrConcat( &TMP$1163$1, (void*)vr$361, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1164$1, 0, 24ll );
	FBSTRING* vr$367 = fb_StrConcat( &TMP$1164$1, (void*)vr$364, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1165$1, -1ll, (void*)vr$367, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1165$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1165$1 );
	HPREPOPERAND( VREG_SIN_C3$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1169$1, 0, 24ll );
	__builtin_memset( &TMP$1168$1, 0, 24ll );
	FBSTRING* vr$373 = fb_StrConcat( &TMP$1168$1, (void*)"mulss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
	fb_StrAssign( (void*)&TMP$1169$1, -1ll, (void*)vr$373, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1169$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1169$1 );
	HPREPOPERAND( VREG_SIN_C2$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1173$1, 0, 24ll );
	__builtin_memset( &TMP$1172$1, 0, 24ll );
	FBSTRING* vr$379 = fb_StrConcat( &TMP$1172$1, (void*)"addss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
	fb_StrAssign( (void*)&TMP$1173$1, -1ll, (void*)vr$379, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1173$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1173$1 );
	__builtin_memset( &TMP$1175$1, 0, 24ll );
	__builtin_memset( &TMP$1174$1, 0, 24ll );
	FBSTRING* vr$385 = fb_StrConcat( &TMP$1174$1, (void*)"mulss xmm7, ", 13ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	fb_StrAssign( (void*)&TMP$1175$1, -1ll, (void*)vr$385, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1175$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1175$1 );
	__builtin_memset( &TMP$1179$1, 0, 24ll );
	__builtin_memset( &TMP$1176$1, 0, 24ll );
	FBSTRING* vr$391 = fb_StrConcat( &TMP$1176$1, (void*)"movd      ", 11ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1177$1, 0, 24ll );
	FBSTRING* vr$394 = fb_StrConcat( &TMP$1177$1, (void*)vr$391, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1178$1, 0, 24ll );
	FBSTRING* vr$397 = fb_StrConcat( &TMP$1178$1, (void*)vr$394, -1ll, (void*)((uint8*)REGNAME$1 + 24ll), -1ll );
	fb_StrAssign( (void*)&TMP$1179$1, -1ll, (void*)vr$397, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1179$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1179$1 );
	HPREPOPERAND( VREG_SIN_C1$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1181$1, 0, 24ll );
	__builtin_memset( &TMP$1180$1, 0, 24ll );
	FBSTRING* vr$403 = fb_StrConcat( &TMP$1180$1, (void*)"addss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
	fb_StrAssign( (void*)&TMP$1181$1, -1ll, (void*)vr$403, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1181$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1181$1 );
	__builtin_memset( &TMP$1183$1, 0, 24ll );
	__builtin_memset( &TMP$1182$1, 0, 24ll );
	FBSTRING* vr$409 = fb_StrConcat( &TMP$1182$1, (void*)"mulss xmm7, ", 13ll, (void*)((uint8*)REGNAME$1 + 48ll), -1ll );
	fb_StrAssign( (void*)&TMP$1183$1, -1ll, (void*)vr$409, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1183$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1183$1 );
	HPREPOPERAND( VREG_SIN_C0$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1185$1, 0, 24ll );
	__builtin_memset( &TMP$1184$1, 0, 24ll );
	FBSTRING* vr$415 = fb_StrConcat( &TMP$1184$1, (void*)"addss xmm7, ", 13ll, (void*)&SRC$1, -1ll );
	fb_StrAssign( (void*)&TMP$1185$1, -1ll, (void*)vr$415, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1185$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1185$1 );
	__builtin_memset( &TMP$1189$1, 0, 24ll );
	__builtin_memset( &TMP$1186$1, 0, 24ll );
	FBSTRING* vr$421 = fb_StrConcat( &TMP$1186$1, (void*)"mulss ", 7ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1187$1, 0, 24ll );
	FBSTRING* vr$424 = fb_StrConcat( &TMP$1187$1, (void*)vr$421, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1188$1, 0, 24ll );
	FBSTRING* vr$427 = fb_StrConcat( &TMP$1188$1, (void*)vr$424, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1189$1, -1ll, (void*)vr$427, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1189$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1189$1 );
	STACKPOINTER$1 = 4ll;
	{
		I$1 = 0ll;
		label$549:;
		{
			if( *(int64*)((int64)(int64*)ISFREE$1 + (I$1 << (3ll & 63ll))) != 0ll ) goto label$551;
			{
				if( I$1 >= 2ll ) goto label$553;
				{
					FBSTRING TMP$1191$5;
					FBSTRING TMP$1192$5;
					FBSTRING TMP$1193$5;
					FBSTRING TMP$1194$5;
					FBSTRING TMP$1195$5;
					FBSTRING TMP$1196$5;
					__builtin_memset( &TMP$1196$5, 0, 24ll );
					FBSTRING* vr$432 = fb_LongintToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1191$5, 0, 24ll );
					FBSTRING* vr$437 = fb_StrConcat( &TMP$1191$5, (void*)"mov ", 5ll, (void*)((int64)(FBSTRING*)REGNAME$1 + (I$1 * 24ll)), -1ll );
					__builtin_memset( &TMP$1192$5, 0, 24ll );
					FBSTRING* vr$440 = fb_StrConcat( &TMP$1192$5, (void*)vr$437, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1193$5, 0, 24ll );
					FBSTRING* vr$443 = fb_StrConcat( &TMP$1193$5, (void*)vr$440, -1ll, (void*)"[esp+", 6ll );
					__builtin_memset( &TMP$1194$5, 0, 24ll );
					FBSTRING* vr$446 = fb_StrConcat( &TMP$1194$5, (void*)vr$443, -1ll, (void*)vr$432, -1ll );
					__builtin_memset( &TMP$1195$5, 0, 24ll );
					FBSTRING* vr$449 = fb_StrConcat( &TMP$1195$5, (void*)vr$446, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$1196$5, -1ll, (void*)vr$449, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1196$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1196$5 );
				}
				goto label$552;
				label$553:;
				{
					FBSTRING TMP$1197$5;
					FBSTRING TMP$1198$5;
					FBSTRING TMP$1199$5;
					FBSTRING TMP$1200$5;
					FBSTRING TMP$1201$5;
					FBSTRING TMP$1202$5;
					__builtin_memset( &TMP$1202$5, 0, 24ll );
					FBSTRING* vr$453 = fb_LongintToStr( STACKPOINTER$1 );
					__builtin_memset( &TMP$1197$5, 0, 24ll );
					FBSTRING* vr$458 = fb_StrConcat( &TMP$1197$5, (void*)"movss ", 7ll, (void*)((int64)(FBSTRING*)REGNAME$1 + (I$1 * 24ll)), -1ll );
					__builtin_memset( &TMP$1198$5, 0, 24ll );
					FBSTRING* vr$461 = fb_StrConcat( &TMP$1198$5, (void*)vr$458, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1199$5, 0, 24ll );
					FBSTRING* vr$464 = fb_StrConcat( &TMP$1199$5, (void*)vr$461, -1ll, (void*)"[esp+", 6ll );
					__builtin_memset( &TMP$1200$5, 0, 24ll );
					FBSTRING* vr$467 = fb_StrConcat( &TMP$1200$5, (void*)vr$464, -1ll, (void*)vr$453, -1ll );
					__builtin_memset( &TMP$1201$5, 0, 24ll );
					FBSTRING* vr$470 = fb_StrConcat( &TMP$1201$5, (void*)vr$467, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$1202$5, -1ll, (void*)vr$470, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$1202$5 );
					fb_StrDelete( (FBSTRING*)&TMP$1202$5 );
				}
				label$552:;
				STACKPOINTER$1 = STACKPOINTER$1 + 4ll;
			}
			label$551:;
			label$550:;
		}
		label$547:;
		I$1 = I$1 + 1ll;
		label$546:;
		if( I$1 <= 2ll ) goto label$549;
		label$548:;
	}
	__builtin_memset( &TMP$1204$1, 0, 24ll );
	FBSTRING* vr$476 = fb_LongintToStr( STACKSIZE$1 );
	__builtin_memset( &TMP$1203$1, 0, 24ll );
	FBSTRING* vr$479 = fb_StrConcat( &TMP$1203$1, (void*)"add esp, ", 10ll, (void*)vr$476, -1ll );
	fb_StrAssign( (void*)&TMP$1204$1, -1ll, (void*)vr$479, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1204$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1204$1 );
	label$515:;
}

static void _EMITSIN_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1205$1;
	FBSTRING TMP$1223$1;
	FBSTRING TMP$1224$1;
	label$554:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$556;
	TMP$1205$1 = 24ll;
	goto label$798;
	label$556:;
	TMP$1205$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$798:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1205$1 * 56ll)) + 8ll);
	if( ((int64)-(DDSIZE$1 == 4ll) & (int64)-(*(int64*)((uint8*)&ENV$ + 240ll) == 1ll)) == 0ll ) goto label$558;
	{
		_EMITSINCOS_FAST_SSE( DVREG$1, 0ll );
		goto label$555;
	}
	label$558:;
	label$557:;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$560;
	{
		FBSTRING TMP$1206$2;
		FBSTRING TMP$1207$2;
		__builtin_memset( &TMP$1207$2, 0, 24ll );
		FBSTRING* vr$10 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1206$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$1206$2, (void*)"sub esp, ", 10ll, (void*)vr$10, -1ll );
		fb_StrAssign( (void*)&TMP$1207$2, -1ll, (void*)vr$13, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1207$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1207$2 );
		if( DDSIZE$1 <= 4ll ) goto label$562;
		{
			FBSTRING TMP$1208$3;
			FBSTRING TMP$1209$3;
			__builtin_memset( &TMP$1209$3, 0, 24ll );
			__builtin_memset( &TMP$1208$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1208$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1209$3, -1ll, (void*)vr$19, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1209$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1209$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$561;
		label$562:;
		{
			FBSTRING TMP$1210$3;
			FBSTRING TMP$1211$3;
			__builtin_memset( &TMP$1211$3, 0, 24ll );
			__builtin_memset( &TMP$1210$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$1210$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1211$3, -1ll, (void*)vr$25, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1211$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1211$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$561:;
	}
	label$560:;
	label$559:;
	OUTP( (uint8*)"fsin" );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$564;
	{
		FBSTRING TMP$1213$2;
		FBSTRING TMP$1214$2;
		__builtin_memset( &TMP$1214$2, 0, 24ll );
		FBSTRING* vr$30 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1213$2, 0, 24ll );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1213$2, (void*)"sub esp, ", 10ll, (void*)vr$30, -1ll );
		fb_StrAssign( (void*)&TMP$1214$2, -1ll, (void*)vr$33, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1214$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1214$2 );
	}
	label$564:;
	label$563:;
	if( DDSIZE$1 <= 4ll ) goto label$566;
	{
		FBSTRING TMP$1215$2;
		FBSTRING TMP$1216$2;
		FBSTRING TMP$1217$2;
		FBSTRING TMP$1218$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1218$2, 0, 24ll );
		__builtin_memset( &TMP$1215$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1215$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1216$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1216$2, (void*)vr$39, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1217$2, 0, 24ll );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1217$2, (void*)vr$42, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1218$2, -1ll, (void*)vr$45, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1218$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1218$2 );
	}
	goto label$565;
	label$566:;
	{
		FBSTRING TMP$1219$2;
		FBSTRING TMP$1220$2;
		FBSTRING TMP$1221$2;
		FBSTRING TMP$1222$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1222$2, 0, 24ll );
		__builtin_memset( &TMP$1219$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1219$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1220$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1220$2, (void*)vr$51, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1221$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1221$2, (void*)vr$54, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1222$2, -1ll, (void*)vr$57, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1222$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1222$2 );
	}
	label$565:;
	__builtin_memset( &TMP$1224$1, 0, 24ll );
	FBSTRING* vr$61 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1223$1, 0, 24ll );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$1223$1, (void*)"add esp, ", 10ll, (void*)vr$61, -1ll );
	fb_StrAssign( (void*)&TMP$1224$1, -1ll, (void*)vr$64, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1224$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1224$1 );
	label$555:;
}

static void _EMITASIN_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1225$1;
	FBSTRING TMP$1245$1;
	FBSTRING TMP$1246$1;
	label$567:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$569;
	TMP$1225$1 = 24ll;
	goto label$799;
	label$569:;
	TMP$1225$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$799:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1225$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$571;
	{
		FBSTRING TMP$1226$2;
		FBSTRING TMP$1227$2;
		__builtin_memset( &TMP$1227$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1226$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1226$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1227$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1227$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1227$2 );
		if( DDSIZE$1 <= 4ll ) goto label$573;
		{
			FBSTRING TMP$1228$3;
			FBSTRING TMP$1229$3;
			__builtin_memset( &TMP$1229$3, 0, 24ll );
			__builtin_memset( &TMP$1228$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1228$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1229$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1229$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1229$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$572;
		label$573:;
		{
			FBSTRING TMP$1230$3;
			FBSTRING TMP$1231$3;
			__builtin_memset( &TMP$1231$3, 0, 24ll );
			__builtin_memset( &TMP$1230$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1230$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1231$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1231$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1231$3 );
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
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$575;
	{
		FBSTRING TMP$1235$2;
		FBSTRING TMP$1236$2;
		__builtin_memset( &TMP$1236$2, 0, 24ll );
		FBSTRING* vr$27 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1235$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1235$2, (void*)"sub esp, ", 10ll, (void*)vr$27, -1ll );
		fb_StrAssign( (void*)&TMP$1236$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1236$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1236$2 );
	}
	label$575:;
	label$574:;
	if( DDSIZE$1 <= 4ll ) goto label$577;
	{
		FBSTRING TMP$1237$2;
		FBSTRING TMP$1238$2;
		FBSTRING TMP$1239$2;
		FBSTRING TMP$1240$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1240$2, 0, 24ll );
		__builtin_memset( &TMP$1237$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1237$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1238$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1238$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1239$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1239$2, (void*)vr$39, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1240$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1240$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1240$2 );
	}
	goto label$576;
	label$577:;
	{
		FBSTRING TMP$1241$2;
		FBSTRING TMP$1242$2;
		FBSTRING TMP$1243$2;
		FBSTRING TMP$1244$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1244$2, 0, 24ll );
		__builtin_memset( &TMP$1241$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1241$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1242$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1242$2, (void*)vr$48, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1243$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1243$2, (void*)vr$51, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1244$2, -1ll, (void*)vr$54, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1244$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1244$2 );
	}
	label$576:;
	__builtin_memset( &TMP$1246$1, 0, 24ll );
	FBSTRING* vr$58 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1245$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1245$1, (void*)"add esp, ", 10ll, (void*)vr$58, -1ll );
	fb_StrAssign( (void*)&TMP$1246$1, -1ll, (void*)vr$61, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1246$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1246$1 );
	label$568:;
}

static void _EMITCOS_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1247$1;
	FBSTRING TMP$1265$1;
	FBSTRING TMP$1266$1;
	label$578:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$580;
	TMP$1247$1 = 24ll;
	goto label$800;
	label$580:;
	TMP$1247$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$800:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1247$1 * 56ll)) + 8ll);
	if( ((int64)-(DDSIZE$1 == 4ll) & (int64)-(*(int64*)((uint8*)&ENV$ + 240ll) == 1ll)) == 0ll ) goto label$582;
	{
		_EMITSINCOS_FAST_SSE( DVREG$1, -1ll );
		goto label$579;
	}
	label$582:;
	label$581:;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$584;
	{
		FBSTRING TMP$1248$2;
		FBSTRING TMP$1249$2;
		__builtin_memset( &TMP$1249$2, 0, 24ll );
		FBSTRING* vr$10 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1248$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$1248$2, (void*)"sub esp, ", 10ll, (void*)vr$10, -1ll );
		fb_StrAssign( (void*)&TMP$1249$2, -1ll, (void*)vr$13, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1249$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1249$2 );
		if( DDSIZE$1 <= 4ll ) goto label$586;
		{
			FBSTRING TMP$1250$3;
			FBSTRING TMP$1251$3;
			__builtin_memset( &TMP$1251$3, 0, 24ll );
			__builtin_memset( &TMP$1250$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1250$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1251$3, -1ll, (void*)vr$19, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1251$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1251$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$585;
		label$586:;
		{
			FBSTRING TMP$1252$3;
			FBSTRING TMP$1253$3;
			__builtin_memset( &TMP$1253$3, 0, 24ll );
			__builtin_memset( &TMP$1252$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$1252$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1253$3, -1ll, (void*)vr$25, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1253$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1253$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$585:;
	}
	label$584:;
	label$583:;
	OUTP( (uint8*)"fcos" );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$588;
	{
		FBSTRING TMP$1255$2;
		FBSTRING TMP$1256$2;
		__builtin_memset( &TMP$1256$2, 0, 24ll );
		FBSTRING* vr$30 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1255$2, 0, 24ll );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1255$2, (void*)"sub esp, ", 10ll, (void*)vr$30, -1ll );
		fb_StrAssign( (void*)&TMP$1256$2, -1ll, (void*)vr$33, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1256$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1256$2 );
	}
	label$588:;
	label$587:;
	if( DDSIZE$1 <= 4ll ) goto label$590;
	{
		FBSTRING TMP$1257$2;
		FBSTRING TMP$1258$2;
		FBSTRING TMP$1259$2;
		FBSTRING TMP$1260$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1260$2, 0, 24ll );
		__builtin_memset( &TMP$1257$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1257$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1258$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1258$2, (void*)vr$39, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1259$2, 0, 24ll );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1259$2, (void*)vr$42, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1260$2, -1ll, (void*)vr$45, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1260$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1260$2 );
	}
	goto label$589;
	label$590:;
	{
		FBSTRING TMP$1261$2;
		FBSTRING TMP$1262$2;
		FBSTRING TMP$1263$2;
		FBSTRING TMP$1264$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1264$2, 0, 24ll );
		__builtin_memset( &TMP$1261$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1261$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1262$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1262$2, (void*)vr$51, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1263$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1263$2, (void*)vr$54, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1264$2, -1ll, (void*)vr$57, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1264$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1264$2 );
	}
	label$589:;
	__builtin_memset( &TMP$1266$1, 0, 24ll );
	FBSTRING* vr$61 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1265$1, 0, 24ll );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$1265$1, (void*)"add esp, ", 10ll, (void*)vr$61, -1ll );
	fb_StrAssign( (void*)&TMP$1266$1, -1ll, (void*)vr$64, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1266$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1266$1 );
	label$579:;
}

static void _EMITACOS_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1267$1;
	FBSTRING TMP$1284$1;
	FBSTRING TMP$1285$1;
	label$591:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$593;
	TMP$1267$1 = 24ll;
	goto label$801;
	label$593:;
	TMP$1267$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$801:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1267$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$595;
	{
		FBSTRING TMP$1268$2;
		FBSTRING TMP$1269$2;
		__builtin_memset( &TMP$1269$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1268$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1268$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1269$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1269$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1269$2 );
		if( DDSIZE$1 <= 4ll ) goto label$597;
		{
			FBSTRING TMP$1270$3;
			FBSTRING TMP$1271$3;
			__builtin_memset( &TMP$1271$3, 0, 24ll );
			__builtin_memset( &TMP$1270$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1270$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1271$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1271$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1271$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$596;
		label$597:;
		{
			FBSTRING TMP$1272$3;
			FBSTRING TMP$1273$3;
			__builtin_memset( &TMP$1273$3, 0, 24ll );
			__builtin_memset( &TMP$1272$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1272$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1273$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1273$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1273$3 );
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
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$599;
	{
		FBSTRING TMP$1274$2;
		FBSTRING TMP$1275$2;
		__builtin_memset( &TMP$1275$2, 0, 24ll );
		FBSTRING* vr$27 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1274$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1274$2, (void*)"sub esp, ", 10ll, (void*)vr$27, -1ll );
		fb_StrAssign( (void*)&TMP$1275$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1275$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1275$2 );
	}
	label$599:;
	label$598:;
	if( DDSIZE$1 <= 4ll ) goto label$601;
	{
		FBSTRING TMP$1276$2;
		FBSTRING TMP$1277$2;
		FBSTRING TMP$1278$2;
		FBSTRING TMP$1279$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1279$2, 0, 24ll );
		__builtin_memset( &TMP$1276$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1276$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1277$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1277$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1278$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1278$2, (void*)vr$39, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1279$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1279$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1279$2 );
	}
	goto label$600;
	label$601:;
	{
		FBSTRING TMP$1280$2;
		FBSTRING TMP$1281$2;
		FBSTRING TMP$1282$2;
		FBSTRING TMP$1283$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1283$2, 0, 24ll );
		__builtin_memset( &TMP$1280$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1280$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1281$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1281$2, (void*)vr$48, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1282$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1282$2, (void*)vr$51, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1283$2, -1ll, (void*)vr$54, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1283$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1283$2 );
	}
	label$600:;
	__builtin_memset( &TMP$1285$1, 0, 24ll );
	FBSTRING* vr$58 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1284$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1284$1, (void*)"add esp, ", 10ll, (void*)vr$58, -1ll );
	fb_StrAssign( (void*)&TMP$1285$1, -1ll, (void*)vr$61, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1285$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1285$1 );
	label$592:;
}

static void _EMITTAN_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1286$1;
	FBSTRING TMP$1305$1;
	FBSTRING TMP$1306$1;
	label$602:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$604;
	TMP$1286$1 = 24ll;
	goto label$802;
	label$604:;
	TMP$1286$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$802:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1286$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$606;
	{
		FBSTRING TMP$1287$2;
		FBSTRING TMP$1288$2;
		__builtin_memset( &TMP$1288$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1287$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1287$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1288$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1288$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1288$2 );
		if( DDSIZE$1 <= 4ll ) goto label$608;
		{
			FBSTRING TMP$1289$3;
			FBSTRING TMP$1290$3;
			__builtin_memset( &TMP$1290$3, 0, 24ll );
			__builtin_memset( &TMP$1289$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1289$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1290$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1290$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1290$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$607;
		label$608:;
		{
			FBSTRING TMP$1291$3;
			FBSTRING TMP$1292$3;
			__builtin_memset( &TMP$1292$3, 0, 24ll );
			__builtin_memset( &TMP$1291$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1291$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1292$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1292$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1292$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$607:;
	}
	label$606:;
	label$605:;
	OUTP( (uint8*)"fptan" );
	OUTP( (uint8*)"fstp st(0)" );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$610;
	{
		FBSTRING TMP$1295$2;
		FBSTRING TMP$1296$2;
		__builtin_memset( &TMP$1296$2, 0, 24ll );
		FBSTRING* vr$27 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1295$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1295$2, (void*)"sub esp, ", 10ll, (void*)vr$27, -1ll );
		fb_StrAssign( (void*)&TMP$1296$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1296$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1296$2 );
	}
	label$610:;
	label$609:;
	if( DDSIZE$1 <= 4ll ) goto label$612;
	{
		FBSTRING TMP$1297$2;
		FBSTRING TMP$1298$2;
		FBSTRING TMP$1299$2;
		FBSTRING TMP$1300$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1300$2, 0, 24ll );
		__builtin_memset( &TMP$1297$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1297$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1298$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1298$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1299$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1299$2, (void*)vr$39, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1300$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1300$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1300$2 );
	}
	goto label$611;
	label$612:;
	{
		FBSTRING TMP$1301$2;
		FBSTRING TMP$1302$2;
		FBSTRING TMP$1303$2;
		FBSTRING TMP$1304$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1304$2, 0, 24ll );
		__builtin_memset( &TMP$1301$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1301$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1302$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1302$2, (void*)vr$48, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1303$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1303$2, (void*)vr$51, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1304$2, -1ll, (void*)vr$54, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1304$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1304$2 );
	}
	label$611:;
	__builtin_memset( &TMP$1306$1, 0, 24ll );
	FBSTRING* vr$58 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1305$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1305$1, (void*)"add esp, ", 10ll, (void*)vr$58, -1ll );
	fb_StrAssign( (void*)&TMP$1306$1, -1ll, (void*)vr$61, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1306$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1306$1 );
	label$603:;
}

static void _EMITATAN_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1307$1;
	FBSTRING TMP$1324$1;
	FBSTRING TMP$1325$1;
	label$613:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$615;
	TMP$1307$1 = 24ll;
	goto label$803;
	label$615:;
	TMP$1307$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$803:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1307$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$617;
	{
		FBSTRING TMP$1308$2;
		FBSTRING TMP$1309$2;
		__builtin_memset( &TMP$1309$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1308$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1308$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1309$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1309$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1309$2 );
		if( DDSIZE$1 <= 4ll ) goto label$619;
		{
			FBSTRING TMP$1310$3;
			FBSTRING TMP$1311$3;
			__builtin_memset( &TMP$1311$3, 0, 24ll );
			__builtin_memset( &TMP$1310$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1310$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1311$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1311$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1311$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$618;
		label$619:;
		{
			FBSTRING TMP$1312$3;
			FBSTRING TMP$1313$3;
			__builtin_memset( &TMP$1313$3, 0, 24ll );
			__builtin_memset( &TMP$1312$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1312$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1313$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1313$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1313$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$618:;
	}
	label$617:;
	label$616:;
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fpatan" );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$621;
	{
		FBSTRING TMP$1314$2;
		FBSTRING TMP$1315$2;
		__builtin_memset( &TMP$1315$2, 0, 24ll );
		FBSTRING* vr$27 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1314$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1314$2, (void*)"sub esp, ", 10ll, (void*)vr$27, -1ll );
		fb_StrAssign( (void*)&TMP$1315$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1315$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1315$2 );
	}
	label$621:;
	label$620:;
	if( DDSIZE$1 <= 4ll ) goto label$623;
	{
		FBSTRING TMP$1316$2;
		FBSTRING TMP$1317$2;
		FBSTRING TMP$1318$2;
		FBSTRING TMP$1319$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1319$2, 0, 24ll );
		__builtin_memset( &TMP$1316$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1316$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1317$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1317$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1318$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1318$2, (void*)vr$39, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1319$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1319$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1319$2 );
	}
	goto label$622;
	label$623:;
	{
		FBSTRING TMP$1320$2;
		FBSTRING TMP$1321$2;
		FBSTRING TMP$1322$2;
		FBSTRING TMP$1323$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1323$2, 0, 24ll );
		__builtin_memset( &TMP$1320$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1320$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1321$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1321$2, (void*)vr$48, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1322$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1322$2, (void*)vr$51, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1323$2, -1ll, (void*)vr$54, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1323$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1323$2 );
	}
	label$622:;
	__builtin_memset( &TMP$1325$1, 0, 24ll );
	FBSTRING* vr$58 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1324$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1324$1, (void*)"add esp, ", 10ll, (void*)vr$58, -1ll );
	fb_StrAssign( (void*)&TMP$1325$1, -1ll, (void*)vr$61, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1325$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1325$1 );
	label$614:;
}

static void _EMITSQRT_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1326$1;
	label$624:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$626;
	TMP$1326$1 = 24ll;
	goto label$804;
	label$626:;
	TMP$1326$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$804:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1326$1 * 56ll)) + 8ll);
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$628;
	{
		FBSTRING TMP$1327$2;
		FBSTRING TMP$1328$2;
		__builtin_memset( &TMP$1328$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1327$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1327$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1328$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1328$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1328$2 );
		if( DDSIZE$1 <= 4ll ) goto label$630;
		{
			FBSTRING TMP$1329$3;
			FBSTRING TMP$1330$3;
			FBSTRING TMP$1331$3;
			FBSTRING TMP$1332$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$1332$3, 0, 24ll );
			__builtin_memset( &TMP$1329$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1329$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1330$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1330$3, (void*)vr$16, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1331$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1331$3, (void*)vr$19, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1332$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1332$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1332$3 );
		}
		goto label$629;
		label$630:;
		{
			FBSTRING TMP$1333$3;
			FBSTRING TMP$1334$3;
			FBSTRING TMP$1335$3;
			FBSTRING TMP$1336$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$1336$3, 0, 24ll );
			__builtin_memset( &TMP$1333$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$1333$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1334$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1334$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1335$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$1335$3, (void*)vr$31, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1336$3, -1ll, (void*)vr$34, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1336$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1336$3 );
		}
		label$629:;
	}
	label$628:;
	label$627:;
	if( DDSIZE$1 <= 4ll ) goto label$632;
	{
		FBSTRING TMP$1338$2;
		FBSTRING TMP$1339$2;
		FBSTRING TMP$1340$2;
		FBSTRING TMP$1341$2;
		__builtin_memset( &TMP$1341$2, 0, 24ll );
		__builtin_memset( &TMP$1338$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$1338$2, (void*)"sqrtsd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1339$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$1339$2, (void*)vr$40, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1340$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1340$2, (void*)vr$43, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1341$2, -1ll, (void*)vr$46, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1341$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1341$2 );
	}
	goto label$631;
	label$632:;
	{
		FBSTRING TMP$1343$2;
		FBSTRING TMP$1344$2;
		FBSTRING TMP$1345$2;
		FBSTRING TMP$1346$2;
		__builtin_memset( &TMP$1346$2, 0, 24ll );
		__builtin_memset( &TMP$1343$2, 0, 24ll );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1343$2, (void*)"sqrtss ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1344$2, 0, 24ll );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$1344$2, (void*)vr$52, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1345$2, 0, 24ll );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$1345$2, (void*)vr$55, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1346$2, -1ll, (void*)vr$58, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1346$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1346$2 );
	}
	label$631:;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$634;
	{
		FBSTRING TMP$1347$2;
		FBSTRING TMP$1348$2;
		__builtin_memset( &TMP$1348$2, 0, 24ll );
		FBSTRING* vr$63 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1347$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1347$2, (void*)"add esp, ", 10ll, (void*)vr$63, -1ll );
		fb_StrAssign( (void*)&TMP$1348$2, -1ll, (void*)vr$66, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1348$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1348$2 );
	}
	label$634:;
	label$633:;
	label$625:;
}

static void _EMITRSQRT_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1349$1;
	label$635:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$637;
	TMP$1349$1 = 24ll;
	goto label$805;
	label$637:;
	TMP$1349$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$805:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1349$1 * 56ll)) + 8ll);
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$639;
	{
		FBSTRING TMP$1350$2;
		FBSTRING TMP$1351$2;
		__builtin_memset( &TMP$1351$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1350$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1350$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1351$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1351$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1351$2 );
		if( DDSIZE$1 <= 4ll ) goto label$641;
		{
			FBSTRING TMP$1352$3;
			FBSTRING TMP$1353$3;
			FBSTRING TMP$1354$3;
			FBSTRING TMP$1355$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$1355$3, 0, 24ll );
			__builtin_memset( &TMP$1352$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1352$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1353$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1353$3, (void*)vr$16, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1354$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1354$3, (void*)vr$19, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1355$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1355$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1355$3 );
		}
		goto label$640;
		label$641:;
		{
			FBSTRING TMP$1356$3;
			FBSTRING TMP$1357$3;
			FBSTRING TMP$1358$3;
			FBSTRING TMP$1359$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$1359$3, 0, 24ll );
			__builtin_memset( &TMP$1356$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$1356$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1357$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1357$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1358$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$1358$3, (void*)vr$31, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1359$3, -1ll, (void*)vr$34, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1359$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1359$3 );
		}
		label$640:;
	}
	label$639:;
	label$638:;
	if( DDSIZE$1 <= 4ll ) goto label$643;
	{
		FBSTRING TMP$1361$2;
		FBSTRING TMP$1362$2;
		FBSTRING TMP$1363$2;
		FBSTRING TMP$1364$2;
		__builtin_memset( &TMP$1364$2, 0, 24ll );
		__builtin_memset( &TMP$1361$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$1361$2, (void*)"rsqrtsd ", 9ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1362$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$1362$2, (void*)vr$40, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1363$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1363$2, (void*)vr$43, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1364$2, -1ll, (void*)vr$46, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1364$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1364$2 );
	}
	goto label$642;
	label$643:;
	{
		FBSTRING TMP$1366$2;
		FBSTRING TMP$1367$2;
		FBSTRING TMP$1368$2;
		FBSTRING TMP$1369$2;
		__builtin_memset( &TMP$1369$2, 0, 24ll );
		__builtin_memset( &TMP$1366$2, 0, 24ll );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1366$2, (void*)"rsqrtss ", 9ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1367$2, 0, 24ll );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$1367$2, (void*)vr$52, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1368$2, 0, 24ll );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$1368$2, (void*)vr$55, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1369$2, -1ll, (void*)vr$58, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1369$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1369$2 );
	}
	label$642:;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$645;
	{
		FBSTRING TMP$1370$2;
		FBSTRING TMP$1371$2;
		__builtin_memset( &TMP$1371$2, 0, 24ll );
		FBSTRING* vr$63 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1370$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1370$2, (void*)"add esp, ", 10ll, (void*)vr$63, -1ll );
		fb_StrAssign( (void*)&TMP$1371$2, -1ll, (void*)vr$66, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1371$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1371$2 );
	}
	label$645:;
	label$644:;
	label$636:;
}

static void _EMITRCP_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1372$1;
	label$646:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$648;
	TMP$1372$1 = 24ll;
	goto label$806;
	label$648:;
	TMP$1372$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$806:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1372$1 * 56ll)) + 8ll);
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$650;
	{
		FBSTRING TMP$1373$2;
		FBSTRING TMP$1374$2;
		__builtin_memset( &TMP$1374$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1373$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1373$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1374$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1374$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1374$2 );
		if( DDSIZE$1 <= 4ll ) goto label$652;
		{
			FBSTRING TMP$1375$3;
			FBSTRING TMP$1376$3;
			FBSTRING TMP$1377$3;
			FBSTRING TMP$1378$3;
			OUTP( (uint8*)"fstp qword ptr [esp]" );
			__builtin_memset( &TMP$1378$3, 0, 24ll );
			__builtin_memset( &TMP$1375$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1375$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1376$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$1376$3, (void*)vr$16, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1377$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1377$3, (void*)vr$19, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1378$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1378$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1378$3 );
		}
		goto label$651;
		label$652:;
		{
			FBSTRING TMP$1379$3;
			FBSTRING TMP$1380$3;
			FBSTRING TMP$1381$3;
			FBSTRING TMP$1382$3;
			OUTP( (uint8*)"fstp dword ptr [esp]" );
			__builtin_memset( &TMP$1382$3, 0, 24ll );
			__builtin_memset( &TMP$1379$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$1379$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1380$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1380$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1381$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$1381$3, (void*)vr$31, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1382$3, -1ll, (void*)vr$34, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1382$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1382$3 );
		}
		label$651:;
	}
	label$650:;
	label$649:;
	if( DDSIZE$1 <= 4ll ) goto label$654;
	{
		FBSTRING TMP$1384$2;
		FBSTRING TMP$1385$2;
		FBSTRING TMP$1386$2;
		FBSTRING TMP$1387$2;
		__builtin_memset( &TMP$1387$2, 0, 24ll );
		__builtin_memset( &TMP$1384$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$1384$2, (void*)"rcpsd ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1385$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$1385$2, (void*)vr$40, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1386$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1386$2, (void*)vr$43, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1387$2, -1ll, (void*)vr$46, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1387$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1387$2 );
	}
	goto label$653;
	label$654:;
	{
		FBSTRING TMP$1389$2;
		FBSTRING TMP$1390$2;
		FBSTRING TMP$1391$2;
		FBSTRING TMP$1392$2;
		__builtin_memset( &TMP$1392$2, 0, 24ll );
		__builtin_memset( &TMP$1389$2, 0, 24ll );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1389$2, (void*)"rcpss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1390$2, 0, 24ll );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$1390$2, (void*)vr$52, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1391$2, 0, 24ll );
		FBSTRING* vr$58 = fb_StrConcat( &TMP$1391$2, (void*)vr$55, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1392$2, -1ll, (void*)vr$58, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1392$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1392$2 );
	}
	label$653:;
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$656;
	{
		FBSTRING TMP$1393$2;
		FBSTRING TMP$1394$2;
		__builtin_memset( &TMP$1394$2, 0, 24ll );
		FBSTRING* vr$63 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1393$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1393$2, (void*)"add esp, ", 10ll, (void*)vr$63, -1ll );
		fb_StrAssign( (void*)&TMP$1394$2, -1ll, (void*)vr$66, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1394$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1394$2 );
	}
	label$656:;
	label$655:;
	label$647:;
}

static void _EMITLOG_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1395$1;
	FBSTRING TMP$1413$1;
	FBSTRING TMP$1414$1;
	label$657:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$659;
	TMP$1395$1 = 24ll;
	goto label$807;
	label$659:;
	TMP$1395$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$807:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1395$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$661;
	{
		FBSTRING TMP$1396$2;
		FBSTRING TMP$1397$2;
		__builtin_memset( &TMP$1397$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1396$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1396$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1397$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1397$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1397$2 );
		if( DDSIZE$1 <= 4ll ) goto label$663;
		{
			FBSTRING TMP$1398$3;
			FBSTRING TMP$1399$3;
			__builtin_memset( &TMP$1399$3, 0, 24ll );
			__builtin_memset( &TMP$1398$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1398$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1399$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1399$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1399$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$662;
		label$663:;
		{
			FBSTRING TMP$1400$3;
			FBSTRING TMP$1401$3;
			__builtin_memset( &TMP$1401$3, 0, 24ll );
			__builtin_memset( &TMP$1400$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1400$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1401$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1401$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1401$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$662:;
	}
	label$661:;
	label$660:;
	OUTP( (uint8*)"fldln2" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fyl2x" );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$665;
	{
		FBSTRING TMP$1403$2;
		FBSTRING TMP$1404$2;
		__builtin_memset( &TMP$1404$2, 0, 24ll );
		FBSTRING* vr$27 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1403$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1403$2, (void*)"sub esp, ", 10ll, (void*)vr$27, -1ll );
		fb_StrAssign( (void*)&TMP$1404$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1404$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1404$2 );
	}
	label$665:;
	label$664:;
	if( DDSIZE$1 <= 4ll ) goto label$667;
	{
		FBSTRING TMP$1405$2;
		FBSTRING TMP$1406$2;
		FBSTRING TMP$1407$2;
		FBSTRING TMP$1408$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1408$2, 0, 24ll );
		__builtin_memset( &TMP$1405$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1405$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1406$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1406$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1407$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1407$2, (void*)vr$39, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1408$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1408$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1408$2 );
	}
	goto label$666;
	label$667:;
	{
		FBSTRING TMP$1409$2;
		FBSTRING TMP$1410$2;
		FBSTRING TMP$1411$2;
		FBSTRING TMP$1412$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1412$2, 0, 24ll );
		__builtin_memset( &TMP$1409$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1409$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1410$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1410$2, (void*)vr$48, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1411$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1411$2, (void*)vr$51, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1412$2, -1ll, (void*)vr$54, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1412$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1412$2 );
	}
	label$666:;
	__builtin_memset( &TMP$1414$1, 0, 24ll );
	FBSTRING* vr$58 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1413$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1413$1, (void*)"add esp, ", 10ll, (void*)vr$58, -1ll );
	fb_StrAssign( (void*)&TMP$1414$1, -1ll, (void*)vr$61, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1414$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1414$1 );
	label$658:;
}

static void _EMITEXP_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1415$1;
	FBSTRING TMP$1438$1;
	FBSTRING TMP$1439$1;
	label$668:;
	static FBSTRING DST$1;
	static int64 DDSIZE$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$670;
	TMP$1415$1 = 24ll;
	goto label$808;
	label$670:;
	TMP$1415$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$808:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1415$1 * 56ll)) + 8ll);
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$672;
	{
		FBSTRING TMP$1416$2;
		FBSTRING TMP$1417$2;
		__builtin_memset( &TMP$1417$2, 0, 24ll );
		FBSTRING* vr$7 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1416$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$1416$2, (void*)"sub esp, ", 10ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)&TMP$1417$2, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1417$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1417$2 );
		if( DDSIZE$1 <= 4ll ) goto label$674;
		{
			FBSTRING TMP$1418$3;
			FBSTRING TMP$1419$3;
			__builtin_memset( &TMP$1419$3, 0, 24ll );
			__builtin_memset( &TMP$1418$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1418$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1419$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1419$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1419$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$673;
		label$674:;
		{
			FBSTRING TMP$1420$3;
			FBSTRING TMP$1421$3;
			__builtin_memset( &TMP$1421$3, 0, 24ll );
			__builtin_memset( &TMP$1420$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1420$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1421$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1421$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1421$3 );
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
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 0ll ) goto label$676;
	{
		FBSTRING TMP$1428$2;
		FBSTRING TMP$1429$2;
		__builtin_memset( &TMP$1429$2, 0, 24ll );
		FBSTRING* vr$27 = fb_LongintToStr( DDSIZE$1 );
		__builtin_memset( &TMP$1428$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1428$2, (void*)"sub esp, ", 10ll, (void*)vr$27, -1ll );
		fb_StrAssign( (void*)&TMP$1429$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1429$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1429$2 );
	}
	label$676:;
	label$675:;
	if( DDSIZE$1 <= 4ll ) goto label$678;
	{
		FBSTRING TMP$1430$2;
		FBSTRING TMP$1431$2;
		FBSTRING TMP$1432$2;
		FBSTRING TMP$1433$2;
		OUTP( (uint8*)"fstp qword ptr [esp]" );
		__builtin_memset( &TMP$1433$2, 0, 24ll );
		__builtin_memset( &TMP$1430$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1430$2, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1431$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1431$2, (void*)vr$36, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1432$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1432$2, (void*)vr$39, -1ll, (void*)"qword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1433$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1433$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1433$2 );
	}
	goto label$677;
	label$678:;
	{
		FBSTRING TMP$1434$2;
		FBSTRING TMP$1435$2;
		FBSTRING TMP$1436$2;
		FBSTRING TMP$1437$2;
		OUTP( (uint8*)"fstp dword ptr [esp]" );
		__builtin_memset( &TMP$1437$2, 0, 24ll );
		__builtin_memset( &TMP$1434$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1434$2, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1435$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1435$2, (void*)vr$48, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1436$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1436$2, (void*)vr$51, -1ll, (void*)"dword ptr [esp]", 16ll );
		fb_StrAssign( (void*)&TMP$1437$2, -1ll, (void*)vr$54, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1437$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1437$2 );
	}
	label$677:;
	__builtin_memset( &TMP$1439$1, 0, 24ll );
	FBSTRING* vr$58 = fb_LongintToStr( DDSIZE$1 );
	__builtin_memset( &TMP$1438$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1438$1, (void*)"add esp, ", 10ll, (void*)vr$58, -1ll );
	fb_StrAssign( (void*)&TMP$1439$1, -1ll, (void*)vr$61, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1439$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1439$1 );
	label$669:;
}

static void _EMITFLOOR_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1440$1;
	FBSTRING TMP$1455$1;
	FBSTRING TMP$1456$1;
	FBSTRING TMP$1457$1;
	FBSTRING TMP$1459$1;
	FBSTRING TMP$1460$1;
	FBSTRING TMP$1461$1;
	FBSTRING TMP$1462$1;
	FBSTRING TMP$1463$1;
	FBSTRING TMP$1464$1;
	FBSTRING TMP$1465$1;
	FBSTRING TMP$1466$1;
	FBSTRING TMP$1467$1;
	FBSTRING TMP$1468$1;
	FBSTRING TMP$1470$1;
	FBSTRING TMP$1471$1;
	FBSTRING TMP$1472$1;
	FBSTRING TMP$1473$1;
	FBSTRING TMP$1474$1;
	FBSTRING TMP$1476$1;
	FBSTRING TMP$1477$1;
	FBSTRING TMP$1478$1;
	FBSTRING TMP$1479$1;
	FBSTRING TMP$1480$1;
	FBSTRING TMP$1481$1;
	FBSTRING TMP$1482$1;
	FBSTRING TMP$1483$1;
	FBSTRING TMP$1484$1;
	FBSTRING TMP$1485$1;
	label$679:;
	static FBSTRING DST$1;
	static FBSTRING NEG1$1;
	static FBSTRING SUFFIX$1;
	static int64 DDSIZE$1;
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* VREG$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$681;
	TMP$1440$1 = 24ll;
	goto label$809;
	label$681:;
	TMP$1440$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$809:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1440$1 * 56ll)) + 8ll);
	if( DDSIZE$1 <= 4ll ) goto label$683;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCINTCONST( -4616189618054758400ll, 14ll );
		SYM$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		VREG$1 = vr$7;
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"d ", 3ll, 0 );
	}
	goto label$682;
	label$683:;
	{
		struct $8FBSYMBOL* vr$8 = SYMBALLOCINTCONST( 3212836864ll, 9ll );
		SYM$1 = vr$8;
		struct $6IRVREG* vr$10 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, SYM$1, *(int64*)((uint8*)SYM$1 + 88ll) );
		VREG$1 = vr$10;
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"s ", 3ll, 0 );
	}
	label$682:;
	*(int64*)((uint8*)SYM$1 + 168ll) = 16ll;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( VREG$1, &NEG1$1, 25ll, 0ll, 0ll, -1ll );
	OUTP( (uint8*)"sub esp, 8" );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$685;
	{
		FBSTRING TMP$1446$2;
		FBSTRING TMP$1447$2;
		FBSTRING TMP$1448$2;
		FBSTRING TMP$1449$2;
		FBSTRING TMP$1450$2;
		if( DDSIZE$1 <= 4ll ) goto label$687;
		{
			FBSTRING TMP$1441$3;
			FBSTRING TMP$1442$3;
			__builtin_memset( &TMP$1442$3, 0, 24ll );
			__builtin_memset( &TMP$1441$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$1441$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1442$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1442$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1442$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$686;
		label$687:;
		{
			FBSTRING TMP$1443$3;
			FBSTRING TMP$1444$3;
			__builtin_memset( &TMP$1444$3, 0, 24ll );
			__builtin_memset( &TMP$1443$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$1443$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1444$3, -1ll, (void*)vr$22, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1444$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1444$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$686:;
		__builtin_memset( &TMP$1450$2, 0, 24ll );
		__builtin_memset( &TMP$1446$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$1446$2, (void*)"movap", 6ll, (void*)&SUFFIX$1, -1ll );
		__builtin_memset( &TMP$1447$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$1447$2, (void*)vr$28, -1ll, (void*)"xmm7", 5ll );
		__builtin_memset( &TMP$1448$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$1448$2, (void*)vr$31, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1449$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$1449$2, (void*)vr$34, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1450$2, -1ll, (void*)vr$37, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1450$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1450$2 );
	}
	goto label$684;
	label$685:;
	{
		if( DDSIZE$1 <= 4ll ) goto label$689;
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
	__builtin_memset( &TMP$1457$1, 0, 24ll );
	__builtin_memset( &TMP$1455$1, 0, 24ll );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$1455$1, (void*)"fstp ", 6ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
	__builtin_memset( &TMP$1456$1, 0, 24ll );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$1456$1, (void*)vr$46, -1ll, (void*)" [esp]", 7ll );
	fb_StrAssign( (void*)&TMP$1457$1, -1ll, (void*)vr$49, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1457$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1457$1 );
	__builtin_memset( &TMP$1463$1, 0, 24ll );
	__builtin_memset( &TMP$1459$1, 0, 24ll );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$1459$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1460$1, 0, 24ll );
	FBSTRING* vr$58 = fb_StrConcat( &TMP$1460$1, (void*)vr$55, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1461$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$1461$1, (void*)vr$58, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1462$1, 0, 24ll );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$1462$1, (void*)vr$61, -1ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1463$1, -1ll, (void*)vr$64, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1463$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1463$1 );
	__builtin_memset( &TMP$1468$1, 0, 24ll );
	__builtin_memset( &TMP$1464$1, 0, 24ll );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$1464$1, (void*)"subs", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1465$1, 0, 24ll );
	FBSTRING* vr$73 = fb_StrConcat( &TMP$1465$1, (void*)vr$70, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1466$1, 0, 24ll );
	FBSTRING* vr$76 = fb_StrConcat( &TMP$1466$1, (void*)vr$73, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1467$1, 0, 24ll );
	FBSTRING* vr$79 = fb_StrConcat( &TMP$1467$1, (void*)vr$76, -1ll, (void*)"[esp]", 6ll );
	fb_StrAssign( (void*)&TMP$1468$1, -1ll, (void*)vr$79, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1468$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1468$1 );
	__builtin_memset( &TMP$1474$1, 0, 24ll );
	__builtin_memset( &TMP$1470$1, 0, 24ll );
	FBSTRING* vr$85 = fb_StrConcat( &TMP$1470$1, (void*)"cmpnles", 8ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1471$1, 0, 24ll );
	FBSTRING* vr$88 = fb_StrConcat( &TMP$1471$1, (void*)vr$85, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1472$1, 0, 24ll );
	FBSTRING* vr$91 = fb_StrConcat( &TMP$1472$1, (void*)vr$88, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1473$1, 0, 24ll );
	FBSTRING* vr$94 = fb_StrConcat( &TMP$1473$1, (void*)vr$91, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1474$1, -1ll, (void*)vr$94, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1474$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1474$1 );
	__builtin_memset( &TMP$1480$1, 0, 24ll );
	__builtin_memset( &TMP$1476$1, 0, 24ll );
	FBSTRING* vr$100 = fb_StrConcat( &TMP$1476$1, (void*)"andp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1477$1, 0, 24ll );
	FBSTRING* vr$103 = fb_StrConcat( &TMP$1477$1, (void*)vr$100, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1478$1, 0, 24ll );
	FBSTRING* vr$106 = fb_StrConcat( &TMP$1478$1, (void*)vr$103, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1479$1, 0, 24ll );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$1479$1, (void*)vr$106, -1ll, (void*)&NEG1$1, -1ll );
	fb_StrAssign( (void*)&TMP$1480$1, -1ll, (void*)vr$109, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1480$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1480$1 );
	__builtin_memset( &TMP$1485$1, 0, 24ll );
	__builtin_memset( &TMP$1481$1, 0, 24ll );
	FBSTRING* vr$115 = fb_StrConcat( &TMP$1481$1, (void*)"adds", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1482$1, 0, 24ll );
	FBSTRING* vr$118 = fb_StrConcat( &TMP$1482$1, (void*)vr$115, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1483$1, 0, 24ll );
	FBSTRING* vr$121 = fb_StrConcat( &TMP$1483$1, (void*)vr$118, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1484$1, 0, 24ll );
	FBSTRING* vr$124 = fb_StrConcat( &TMP$1484$1, (void*)vr$121, -1ll, (void*)"[esp]", 6ll );
	fb_StrAssign( (void*)&TMP$1485$1, -1ll, (void*)vr$124, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1485$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1485$1 );
	OUTP( (uint8*)"add esp, 8" );
	label$680:;
}

static void _EMITFIX_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1486$1;
	FBSTRING TMP$1487$1;
	FBSTRING TMP$1488$1;
	FBSTRING TMP$1502$1;
	FBSTRING TMP$1503$1;
	FBSTRING TMP$1504$1;
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
	FBSTRING TMP$1534$1;
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
	FBSTRING TMP$1553$1;
	label$690:;
	static FBSTRING DST$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING ABSVAL$1;
	static FBSTRING NEG1$1;
	static int64 DDSIZE$1;
	static struct $8FBSYMBOL* NEG1_SYM$1;
	static struct $8FBSYMBOL* ABSVAL_SYM$1;
	static struct $6IRVREG* NEG1_VREG$1;
	static struct $6IRVREG* ABSVAL_VREG$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$692;
	TMP$1486$1 = 24ll;
	goto label$810;
	label$692:;
	TMP$1486$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$810:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1486$1 * 56ll)) + 8ll);
	if( DDSIZE$1 <= 4ll ) goto label$694;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCINTCONST( -4616189618054758400ll, 14ll );
		NEG1_SYM$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 88ll) );
		NEG1_VREG$1 = vr$7;
		struct $8FBSYMBOL* vr$8 = SYMBALLOCINTCONST( -9223372036854775808ull, 14ll );
		ABSVAL_SYM$1 = vr$8;
		struct $6IRVREG* vr$10 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 88ll) );
		ABSVAL_VREG$1 = vr$10;
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"d ", 3ll, 0 );
	}
	goto label$693;
	label$694:;
	{
		struct $8FBSYMBOL* vr$11 = SYMBALLOCINTCONST( 3212836864ll, 9ll );
		NEG1_SYM$1 = vr$11;
		struct $6IRVREG* vr$13 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 88ll) );
		NEG1_VREG$1 = vr$13;
		struct $8FBSYMBOL* vr$14 = SYMBALLOCINTCONST( 2147483648ll, 9ll );
		ABSVAL_SYM$1 = vr$14;
		struct $6IRVREG* vr$16 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 88ll) );
		ABSVAL_VREG$1 = vr$16;
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"s ", 3ll, 0 );
	}
	label$693:;
	*(int64*)((uint8*)NEG1_SYM$1 + 168ll) = 16ll;
	*(int64*)((uint8*)ABSVAL_SYM$1 + 168ll) = 16ll;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( NEG1_VREG$1, &NEG1$1, 25ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( ABSVAL_VREG$1, &ABSVAL$1, 25ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1488$1, 0, 24ll );
	FBSTRING* vr$21 = fb_LongintToStr( DDSIZE$1 + 8ll );
	__builtin_memset( &TMP$1487$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$1487$1, (void*)"sub esp, ", 10ll, (void*)vr$21, -1ll );
	fb_StrAssign( (void*)&TMP$1488$1, -1ll, (void*)vr$24, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1488$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1488$1 );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$696;
	{
		if( DDSIZE$1 <= 4ll ) goto label$698;
		{
			FBSTRING TMP$1489$3;
			FBSTRING TMP$1490$3;
			__builtin_memset( &TMP$1490$3, 0, 24ll );
			__builtin_memset( &TMP$1489$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1489$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1490$3, -1ll, (void*)vr$31, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1490$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1490$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$697;
		label$698:;
		{
			FBSTRING TMP$1491$3;
			FBSTRING TMP$1492$3;
			__builtin_memset( &TMP$1492$3, 0, 24ll );
			__builtin_memset( &TMP$1491$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$1491$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1492$3, -1ll, (void*)vr$37, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1492$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1492$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$697:;
	}
	goto label$695;
	label$696:;
	{
		if( DDSIZE$1 <= 4ll ) goto label$700;
		{
			FBSTRING TMP$1493$3;
			FBSTRING TMP$1494$3;
			FBSTRING TMP$1495$3;
			FBSTRING TMP$1496$3;
			OUTP( (uint8*)"fst qword ptr [esp]" );
			__builtin_memset( &TMP$1496$3, 0, 24ll );
			__builtin_memset( &TMP$1493$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$1493$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1494$3, 0, 24ll );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$1494$3, (void*)vr$43, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1495$3, 0, 24ll );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$1495$3, (void*)vr$46, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1496$3, -1ll, (void*)vr$49, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1496$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1496$3 );
		}
		goto label$699;
		label$700:;
		{
			FBSTRING TMP$1497$3;
			FBSTRING TMP$1498$3;
			FBSTRING TMP$1499$3;
			FBSTRING TMP$1500$3;
			OUTP( (uint8*)"fst dword ptr [esp]" );
			__builtin_memset( &TMP$1500$3, 0, 24ll );
			__builtin_memset( &TMP$1497$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$1497$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1498$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$1498$3, (void*)vr$55, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1499$3, 0, 24ll );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$1499$3, (void*)vr$58, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1500$3, -1ll, (void*)vr$61, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1500$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1500$3 );
		}
		label$699:;
	}
	label$695:;
	__builtin_memset( &TMP$1504$1, 0, 24ll );
	__builtin_memset( &TMP$1502$1, 0, 24ll );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$1502$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1503$1, 0, 24ll );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$1503$1, (void*)vr$67, -1ll, (void*)"xmm7, xmm7", 11ll );
	fb_StrAssign( (void*)&TMP$1504$1, -1ll, (void*)vr$70, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1504$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1504$1 );
	if( DDSIZE$1 <= 4ll ) goto label$702;
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
	__builtin_memset( &TMP$1511$1, 0, 24ll );
	__builtin_memset( &TMP$1507$1, 0, 24ll );
	FBSTRING* vr$76 = fb_StrConcat( &TMP$1507$1, (void*)"cmpnles", 8ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1508$1, 0, 24ll );
	FBSTRING* vr$79 = fb_StrConcat( &TMP$1508$1, (void*)vr$76, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1509$1, 0, 24ll );
	FBSTRING* vr$82 = fb_StrConcat( &TMP$1509$1, (void*)vr$79, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1510$1, 0, 24ll );
	FBSTRING* vr$85 = fb_StrConcat( &TMP$1510$1, (void*)vr$82, -1ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1511$1, -1ll, (void*)vr$85, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1511$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1511$1 );
	OUTP( (uint8*)"fild qword ptr [esp]" );
	__builtin_memset( &TMP$1516$1, 0, 24ll );
	__builtin_memset( &TMP$1512$1, 0, 24ll );
	FBSTRING* vr$91 = fb_StrConcat( &TMP$1512$1, (void*)"andp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1513$1, 0, 24ll );
	FBSTRING* vr$94 = fb_StrConcat( &TMP$1513$1, (void*)vr$91, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1514$1, 0, 24ll );
	FBSTRING* vr$97 = fb_StrConcat( &TMP$1514$1, (void*)vr$94, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1515$1, 0, 24ll );
	FBSTRING* vr$100 = fb_StrConcat( &TMP$1515$1, (void*)vr$97, -1ll, (void*)&ABSVAL$1, -1ll );
	fb_StrAssign( (void*)&TMP$1516$1, -1ll, (void*)vr$100, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1516$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1516$1 );
	__builtin_memset( &TMP$1519$1, 0, 24ll );
	__builtin_memset( &TMP$1517$1, 0, 24ll );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$1517$1, (void*)"fstp ", 6ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
	__builtin_memset( &TMP$1518$1, 0, 24ll );
	FBSTRING* vr$112 = fb_StrConcat( &TMP$1518$1, (void*)vr$109, -1ll, (void*)" [esp]", 7ll );
	fb_StrAssign( (void*)&TMP$1519$1, -1ll, (void*)vr$112, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1519$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1519$1 );
	__builtin_memset( &TMP$1524$1, 0, 24ll );
	__builtin_memset( &TMP$1520$1, 0, 24ll );
	FBSTRING* vr$118 = fb_StrConcat( &TMP$1520$1, (void*)"subs", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1521$1, 0, 24ll );
	FBSTRING* vr$121 = fb_StrConcat( &TMP$1521$1, (void*)vr$118, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1522$1, 0, 24ll );
	FBSTRING* vr$124 = fb_StrConcat( &TMP$1522$1, (void*)vr$121, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1523$1, 0, 24ll );
	FBSTRING* vr$127 = fb_StrConcat( &TMP$1523$1, (void*)vr$124, -1ll, (void*)"[esp]", 6ll );
	fb_StrAssign( (void*)&TMP$1524$1, -1ll, (void*)vr$127, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1524$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1524$1 );
	__builtin_memset( &TMP$1529$1, 0, 24ll );
	__builtin_memset( &TMP$1525$1, 0, 24ll );
	FBSTRING* vr$133 = fb_StrConcat( &TMP$1525$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1526$1, 0, 24ll );
	FBSTRING* vr$136 = fb_StrConcat( &TMP$1526$1, (void*)vr$133, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1527$1, 0, 24ll );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1527$1, (void*)vr$136, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1528$1, 0, 24ll );
	FBSTRING* vr$142 = fb_StrConcat( &TMP$1528$1, (void*)vr$139, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1529$1, -1ll, (void*)vr$142, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1529$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1529$1 );
	__builtin_memset( &TMP$1534$1, 0, 24ll );
	__builtin_memset( &TMP$1530$1, 0, 24ll );
	FBSTRING* vr$148 = fb_StrConcat( &TMP$1530$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1531$1, 0, 24ll );
	FBSTRING* vr$151 = fb_StrConcat( &TMP$1531$1, (void*)vr$148, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1532$1, 0, 24ll );
	FBSTRING* vr$154 = fb_StrConcat( &TMP$1532$1, (void*)vr$151, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1533$1, 0, 24ll );
	FBSTRING* vr$157 = fb_StrConcat( &TMP$1533$1, (void*)vr$154, -1ll, (void*)&NEG1$1, -1ll );
	fb_StrAssign( (void*)&TMP$1534$1, -1ll, (void*)vr$157, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1534$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1534$1 );
	__builtin_memset( &TMP$1541$1, 0, 24ll );
	__builtin_memset( &TMP$1537$1, 0, 24ll );
	FBSTRING* vr$163 = fb_StrConcat( &TMP$1537$1, (void*)"cmplts", 7ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1538$1, 0, 24ll );
	FBSTRING* vr$166 = fb_StrConcat( &TMP$1538$1, (void*)vr$163, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1539$1, 0, 24ll );
	FBSTRING* vr$169 = fb_StrConcat( &TMP$1539$1, (void*)vr$166, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1540$1, 0, 24ll );
	FBSTRING* vr$172 = fb_StrConcat( &TMP$1540$1, (void*)vr$169, -1ll, (void*)"[esp+8]", 8ll );
	fb_StrAssign( (void*)&TMP$1541$1, -1ll, (void*)vr$172, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1541$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1541$1 );
	__builtin_memset( &TMP$1546$1, 0, 24ll );
	__builtin_memset( &TMP$1542$1, 0, 24ll );
	FBSTRING* vr$178 = fb_StrConcat( &TMP$1542$1, (void*)"andp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1543$1, 0, 24ll );
	FBSTRING* vr$181 = fb_StrConcat( &TMP$1543$1, (void*)vr$178, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1544$1, 0, 24ll );
	FBSTRING* vr$184 = fb_StrConcat( &TMP$1544$1, (void*)vr$181, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1545$1, 0, 24ll );
	FBSTRING* vr$187 = fb_StrConcat( &TMP$1545$1, (void*)vr$184, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1546$1, -1ll, (void*)vr$187, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1546$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1546$1 );
	__builtin_memset( &TMP$1551$1, 0, 24ll );
	__builtin_memset( &TMP$1547$1, 0, 24ll );
	FBSTRING* vr$193 = fb_StrConcat( &TMP$1547$1, (void*)"adds", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1548$1, 0, 24ll );
	FBSTRING* vr$196 = fb_StrConcat( &TMP$1548$1, (void*)vr$193, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1549$1, 0, 24ll );
	FBSTRING* vr$199 = fb_StrConcat( &TMP$1549$1, (void*)vr$196, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1550$1, 0, 24ll );
	FBSTRING* vr$202 = fb_StrConcat( &TMP$1550$1, (void*)vr$199, -1ll, (void*)"[esp]", 6ll );
	fb_StrAssign( (void*)&TMP$1551$1, -1ll, (void*)vr$202, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1551$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1551$1 );
	__builtin_memset( &TMP$1553$1, 0, 24ll );
	FBSTRING* vr$207 = fb_LongintToStr( DDSIZE$1 + 8ll );
	__builtin_memset( &TMP$1552$1, 0, 24ll );
	FBSTRING* vr$210 = fb_StrConcat( &TMP$1552$1, (void*)"add esp, ", 10ll, (void*)vr$207, -1ll );
	fb_StrAssign( (void*)&TMP$1553$1, -1ll, (void*)vr$210, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1553$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1553$1 );
	label$691:;
}

static void _EMITFRAC_SSE( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$1554$1;
	FBSTRING TMP$1555$1;
	FBSTRING TMP$1556$1;
	FBSTRING TMP$1569$1;
	FBSTRING TMP$1570$1;
	FBSTRING TMP$1571$1;
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
	FBSTRING TMP$1621$1;
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
	FBSTRING TMP$1644$1;
	label$703:;
	static FBSTRING DST$1;
	static FBSTRING SUFFIX$1;
	static FBSTRING ABSVAL$1;
	static FBSTRING NEG1$1;
	static int64 DDSIZE$1;
	static struct $8FBSYMBOL* NEG1_SYM$1;
	static struct $8FBSYMBOL* ABSVAL_SYM$1;
	static struct $6IRVREG* NEG1_VREG$1;
	static struct $6IRVREG* ABSVAL_VREG$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$705;
	TMP$1554$1 = 24ll;
	goto label$811;
	label$705:;
	TMP$1554$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$811:;
	DDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1554$1 * 56ll)) + 8ll);
	if( DDSIZE$1 <= 4ll ) goto label$707;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCINTCONST( -4616189618054758400ll, 14ll );
		NEG1_SYM$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 88ll) );
		NEG1_VREG$1 = vr$7;
		struct $8FBSYMBOL* vr$8 = SYMBALLOCINTCONST( -9223372036854775808ull, 14ll );
		ABSVAL_SYM$1 = vr$8;
		struct $6IRVREG* vr$10 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 14ll, (struct $8FBSYMBOL*)0ull, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 88ll) );
		ABSVAL_VREG$1 = vr$10;
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"d ", 3ll, 0 );
	}
	goto label$706;
	label$707:;
	{
		struct $8FBSYMBOL* vr$11 = SYMBALLOCINTCONST( 3212836864ll, 9ll );
		NEG1_SYM$1 = vr$11;
		struct $6IRVREG* vr$13 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, NEG1_SYM$1, *(int64*)((uint8*)NEG1_SYM$1 + 88ll) );
		NEG1_VREG$1 = vr$13;
		struct $8FBSYMBOL* vr$14 = SYMBALLOCINTCONST( 2147483648ll, 9ll );
		ABSVAL_SYM$1 = vr$14;
		struct $6IRVREG* vr$16 = (*(tmp$72*)((uint8*)&IR$ + 472ll))( 9ll, (struct $8FBSYMBOL*)0ull, ABSVAL_SYM$1, *(int64*)((uint8*)ABSVAL_SYM$1 + 88ll) );
		ABSVAL_VREG$1 = vr$16;
		fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"s ", 3ll, 0 );
	}
	label$706:;
	*(int64*)((uint8*)NEG1_SYM$1 + 168ll) = 16ll;
	*(int64*)((uint8*)ABSVAL_SYM$1 + 168ll) = 16ll;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( NEG1_VREG$1, &NEG1$1, 25ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( ABSVAL_VREG$1, &ABSVAL$1, 25ll, 0ll, 0ll, -1ll );
	__builtin_memset( &TMP$1556$1, 0, 24ll );
	FBSTRING* vr$21 = fb_LongintToStr( DDSIZE$1 + 8ll );
	__builtin_memset( &TMP$1555$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$1555$1, (void*)"sub esp, ", 10ll, (void*)vr$21, -1ll );
	fb_StrAssign( (void*)&TMP$1556$1, -1ll, (void*)vr$24, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1556$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1556$1 );
	if( *(int64*)((uint8*)DVREG$1 + 32ll) != 1ll ) goto label$709;
	{
		if( DDSIZE$1 <= 4ll ) goto label$711;
		{
			FBSTRING TMP$1557$3;
			FBSTRING TMP$1558$3;
			__builtin_memset( &TMP$1558$3, 0, 24ll );
			__builtin_memset( &TMP$1557$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$1557$3, (void*)"movlpd qword ptr [esp], ", 25ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1558$3, -1ll, (void*)vr$31, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1558$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1558$3 );
			OUTP( (uint8*)"fld qword ptr [esp]" );
		}
		goto label$710;
		label$711:;
		{
			FBSTRING TMP$1559$3;
			FBSTRING TMP$1560$3;
			__builtin_memset( &TMP$1560$3, 0, 24ll );
			__builtin_memset( &TMP$1559$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$1559$3, (void*)"movss dword ptr [esp], ", 24ll, (void*)&DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$1560$3, -1ll, (void*)vr$37, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1560$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1560$3 );
			OUTP( (uint8*)"fld dword ptr [esp]" );
		}
		label$710:;
	}
	goto label$708;
	label$709:;
	{
		if( DDSIZE$1 <= 4ll ) goto label$713;
		{
			FBSTRING TMP$1561$3;
			FBSTRING TMP$1562$3;
			FBSTRING TMP$1563$3;
			FBSTRING TMP$1564$3;
			OUTP( (uint8*)"fst qword ptr [esp]" );
			__builtin_memset( &TMP$1564$3, 0, 24ll );
			__builtin_memset( &TMP$1561$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$1561$3, (void*)"movlpd ", 8ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1562$3, 0, 24ll );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$1562$3, (void*)vr$43, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1563$3, 0, 24ll );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$1563$3, (void*)vr$46, -1ll, (void*)"qword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1564$3, -1ll, (void*)vr$49, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1564$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1564$3 );
		}
		goto label$712;
		label$713:;
		{
			FBSTRING TMP$1565$3;
			FBSTRING TMP$1566$3;
			FBSTRING TMP$1567$3;
			FBSTRING TMP$1568$3;
			OUTP( (uint8*)"fst dword ptr [esp]" );
			__builtin_memset( &TMP$1568$3, 0, 24ll );
			__builtin_memset( &TMP$1565$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$1565$3, (void*)"movss ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$1566$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$1566$3, (void*)vr$55, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1567$3, 0, 24ll );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$1567$3, (void*)vr$58, -1ll, (void*)"dword ptr [esp]", 16ll );
			fb_StrAssign( (void*)&TMP$1568$3, -1ll, (void*)vr$61, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$1568$3 );
			fb_StrDelete( (FBSTRING*)&TMP$1568$3 );
		}
		label$712:;
	}
	label$708:;
	__builtin_memset( &TMP$1571$1, 0, 24ll );
	__builtin_memset( &TMP$1569$1, 0, 24ll );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$1569$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1570$1, 0, 24ll );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$1570$1, (void*)vr$67, -1ll, (void*)"xmm7, xmm7", 11ll );
	fb_StrAssign( (void*)&TMP$1571$1, -1ll, (void*)vr$70, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1571$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1571$1 );
	if( DDSIZE$1 <= 4ll ) goto label$715;
	{
		FBSTRING TMP$1573$2;
		FBSTRING TMP$1574$2;
		FBSTRING TMP$1575$2;
		FBSTRING TMP$1576$2;
		FBSTRING TMP$1577$2;
		FBSTRING TMP$1578$2;
		__builtin_memset( &TMP$1578$2, 0, 24ll );
		__builtin_memset( &TMP$1573$2, 0, 24ll );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$1573$2, (void*)"shufpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1574$2, 0, 24ll );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1574$2, (void*)vr$76, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1575$2, 0, 24ll );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$1575$2, (void*)vr$79, -1ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1576$2, 0, 24ll );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$1576$2, (void*)vr$82, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1577$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$1577$2, (void*)vr$85, -1ll, (void*)"0", 2ll );
		fb_StrAssign( (void*)&TMP$1578$2, -1ll, (void*)vr$88, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1578$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1578$2 );
		OUTP( (uint8*)"movlpd [esp+8], xmm7" );
	}
	goto label$714;
	label$715:;
	{
		FBSTRING TMP$1580$2;
		FBSTRING TMP$1581$2;
		FBSTRING TMP$1582$2;
		FBSTRING TMP$1583$2;
		__builtin_memset( &TMP$1583$2, 0, 24ll );
		__builtin_memset( &TMP$1580$2, 0, 24ll );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$1580$2, (void*)"movlhps ", 9ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1581$2, 0, 24ll );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$1581$2, (void*)vr$94, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1582$2, 0, 24ll );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$1582$2, (void*)vr$97, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1583$2, -1ll, (void*)vr$100, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1583$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1583$2 );
		OUTP( (uint8*)"movss [esp+8], xmm7" );
	}
	label$714:;
	OUTP( (uint8*)"fistp qword ptr [esp]" );
	__builtin_memset( &TMP$1588$1, 0, 24ll );
	__builtin_memset( &TMP$1584$1, 0, 24ll );
	FBSTRING* vr$106 = fb_StrConcat( &TMP$1584$1, (void*)"cmpnles", 8ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1585$1, 0, 24ll );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$1585$1, (void*)vr$106, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1586$1, 0, 24ll );
	FBSTRING* vr$112 = fb_StrConcat( &TMP$1586$1, (void*)vr$109, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1587$1, 0, 24ll );
	FBSTRING* vr$115 = fb_StrConcat( &TMP$1587$1, (void*)vr$112, -1ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1588$1, -1ll, (void*)vr$115, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1588$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1588$1 );
	OUTP( (uint8*)"fild qword ptr [esp]" );
	__builtin_memset( &TMP$1593$1, 0, 24ll );
	__builtin_memset( &TMP$1589$1, 0, 24ll );
	FBSTRING* vr$121 = fb_StrConcat( &TMP$1589$1, (void*)"andp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1590$1, 0, 24ll );
	FBSTRING* vr$124 = fb_StrConcat( &TMP$1590$1, (void*)vr$121, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1591$1, 0, 24ll );
	FBSTRING* vr$127 = fb_StrConcat( &TMP$1591$1, (void*)vr$124, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1592$1, 0, 24ll );
	FBSTRING* vr$130 = fb_StrConcat( &TMP$1592$1, (void*)vr$127, -1ll, (void*)&ABSVAL$1, -1ll );
	fb_StrAssign( (void*)&TMP$1593$1, -1ll, (void*)vr$130, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1593$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1593$1 );
	__builtin_memset( &TMP$1596$1, 0, 24ll );
	__builtin_memset( &TMP$1594$1, 0, 24ll );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1594$1, (void*)"fstp ", 6ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
	__builtin_memset( &TMP$1595$1, 0, 24ll );
	FBSTRING* vr$142 = fb_StrConcat( &TMP$1595$1, (void*)vr$139, -1ll, (void*)" [esp]", 7ll );
	fb_StrAssign( (void*)&TMP$1596$1, -1ll, (void*)vr$142, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1596$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1596$1 );
	__builtin_memset( &TMP$1601$1, 0, 24ll );
	__builtin_memset( &TMP$1597$1, 0, 24ll );
	FBSTRING* vr$148 = fb_StrConcat( &TMP$1597$1, (void*)"subs", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1598$1, 0, 24ll );
	FBSTRING* vr$151 = fb_StrConcat( &TMP$1598$1, (void*)vr$148, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1599$1, 0, 24ll );
	FBSTRING* vr$154 = fb_StrConcat( &TMP$1599$1, (void*)vr$151, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1600$1, 0, 24ll );
	FBSTRING* vr$157 = fb_StrConcat( &TMP$1600$1, (void*)vr$154, -1ll, (void*)"[esp]", 6ll );
	fb_StrAssign( (void*)&TMP$1601$1, -1ll, (void*)vr$157, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1601$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1601$1 );
	__builtin_memset( &TMP$1606$1, 0, 24ll );
	__builtin_memset( &TMP$1602$1, 0, 24ll );
	FBSTRING* vr$163 = fb_StrConcat( &TMP$1602$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1603$1, 0, 24ll );
	FBSTRING* vr$166 = fb_StrConcat( &TMP$1603$1, (void*)vr$163, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1604$1, 0, 24ll );
	FBSTRING* vr$169 = fb_StrConcat( &TMP$1604$1, (void*)vr$166, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1605$1, 0, 24ll );
	FBSTRING* vr$172 = fb_StrConcat( &TMP$1605$1, (void*)vr$169, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1606$1, -1ll, (void*)vr$172, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1606$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1606$1 );
	__builtin_memset( &TMP$1611$1, 0, 24ll );
	__builtin_memset( &TMP$1607$1, 0, 24ll );
	FBSTRING* vr$178 = fb_StrConcat( &TMP$1607$1, (void*)"xorp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1608$1, 0, 24ll );
	FBSTRING* vr$181 = fb_StrConcat( &TMP$1608$1, (void*)vr$178, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1609$1, 0, 24ll );
	FBSTRING* vr$184 = fb_StrConcat( &TMP$1609$1, (void*)vr$181, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1610$1, 0, 24ll );
	FBSTRING* vr$187 = fb_StrConcat( &TMP$1610$1, (void*)vr$184, -1ll, (void*)&NEG1$1, -1ll );
	fb_StrAssign( (void*)&TMP$1611$1, -1ll, (void*)vr$187, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1611$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1611$1 );
	__builtin_memset( &TMP$1616$1, 0, 24ll );
	__builtin_memset( &TMP$1612$1, 0, 24ll );
	FBSTRING* vr$193 = fb_StrConcat( &TMP$1612$1, (void*)"cmplts", 7ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1613$1, 0, 24ll );
	FBSTRING* vr$196 = fb_StrConcat( &TMP$1613$1, (void*)vr$193, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1614$1, 0, 24ll );
	FBSTRING* vr$199 = fb_StrConcat( &TMP$1614$1, (void*)vr$196, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1615$1, 0, 24ll );
	FBSTRING* vr$202 = fb_StrConcat( &TMP$1615$1, (void*)vr$199, -1ll, (void*)"[esp+8]", 8ll );
	fb_StrAssign( (void*)&TMP$1616$1, -1ll, (void*)vr$202, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1616$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1616$1 );
	__builtin_memset( &TMP$1621$1, 0, 24ll );
	__builtin_memset( &TMP$1617$1, 0, 24ll );
	FBSTRING* vr$208 = fb_StrConcat( &TMP$1617$1, (void*)"andp", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1618$1, 0, 24ll );
	FBSTRING* vr$211 = fb_StrConcat( &TMP$1618$1, (void*)vr$208, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1619$1, 0, 24ll );
	FBSTRING* vr$214 = fb_StrConcat( &TMP$1619$1, (void*)vr$211, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1620$1, 0, 24ll );
	FBSTRING* vr$217 = fb_StrConcat( &TMP$1620$1, (void*)vr$214, -1ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$1621$1, -1ll, (void*)vr$217, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1621$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1621$1 );
	if( DDSIZE$1 <= 4ll ) goto label$717;
	{
		FBSTRING TMP$1622$2;
		FBSTRING TMP$1623$2;
		FBSTRING TMP$1624$2;
		FBSTRING TMP$1625$2;
		FBSTRING TMP$1626$2;
		FBSTRING TMP$1627$2;
		__builtin_memset( &TMP$1627$2, 0, 24ll );
		__builtin_memset( &TMP$1622$2, 0, 24ll );
		FBSTRING* vr$223 = fb_StrConcat( &TMP$1622$2, (void*)"shufpd ", 8ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1623$2, 0, 24ll );
		FBSTRING* vr$226 = fb_StrConcat( &TMP$1623$2, (void*)vr$223, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1624$2, 0, 24ll );
		FBSTRING* vr$229 = fb_StrConcat( &TMP$1624$2, (void*)vr$226, -1ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1625$2, 0, 24ll );
		FBSTRING* vr$232 = fb_StrConcat( &TMP$1625$2, (void*)vr$229, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1626$2, 0, 24ll );
		FBSTRING* vr$235 = fb_StrConcat( &TMP$1626$2, (void*)vr$232, -1ll, (void*)"1", 2ll );
		fb_StrAssign( (void*)&TMP$1627$2, -1ll, (void*)vr$235, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1627$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1627$2 );
	}
	goto label$716;
	label$717:;
	{
		FBSTRING TMP$1629$2;
		FBSTRING TMP$1630$2;
		FBSTRING TMP$1631$2;
		FBSTRING TMP$1632$2;
		__builtin_memset( &TMP$1632$2, 0, 24ll );
		__builtin_memset( &TMP$1629$2, 0, 24ll );
		FBSTRING* vr$241 = fb_StrConcat( &TMP$1629$2, (void*)"movhlps ", 9ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1630$2, 0, 24ll );
		FBSTRING* vr$244 = fb_StrConcat( &TMP$1630$2, (void*)vr$241, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1631$2, 0, 24ll );
		FBSTRING* vr$247 = fb_StrConcat( &TMP$1631$2, (void*)vr$244, -1ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$1632$2, -1ll, (void*)vr$247, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1632$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1632$2 );
	}
	label$716:;
	__builtin_memset( &TMP$1637$1, 0, 24ll );
	__builtin_memset( &TMP$1633$1, 0, 24ll );
	FBSTRING* vr$253 = fb_StrConcat( &TMP$1633$1, (void*)"adds", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1634$1, 0, 24ll );
	FBSTRING* vr$256 = fb_StrConcat( &TMP$1634$1, (void*)vr$253, -1ll, (void*)"xmm7", 5ll );
	__builtin_memset( &TMP$1635$1, 0, 24ll );
	FBSTRING* vr$259 = fb_StrConcat( &TMP$1635$1, (void*)vr$256, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1636$1, 0, 24ll );
	FBSTRING* vr$262 = fb_StrConcat( &TMP$1636$1, (void*)vr$259, -1ll, (void*)"[esp]", 6ll );
	fb_StrAssign( (void*)&TMP$1637$1, -1ll, (void*)vr$262, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1637$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1637$1 );
	__builtin_memset( &TMP$1642$1, 0, 24ll );
	__builtin_memset( &TMP$1638$1, 0, 24ll );
	FBSTRING* vr$268 = fb_StrConcat( &TMP$1638$1, (void*)"subs", 5ll, (void*)&SUFFIX$1, -1ll );
	__builtin_memset( &TMP$1639$1, 0, 24ll );
	FBSTRING* vr$271 = fb_StrConcat( &TMP$1639$1, (void*)vr$268, -1ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$1640$1, 0, 24ll );
	FBSTRING* vr$274 = fb_StrConcat( &TMP$1640$1, (void*)vr$271, -1ll, (void*)", ", 3ll );
	__builtin_memset( &TMP$1641$1, 0, 24ll );
	FBSTRING* vr$277 = fb_StrConcat( &TMP$1641$1, (void*)vr$274, -1ll, (void*)"xmm7", 5ll );
	fb_StrAssign( (void*)&TMP$1642$1, -1ll, (void*)vr$277, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1642$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1642$1 );
	__builtin_memset( &TMP$1644$1, 0, 24ll );
	FBSTRING* vr$282 = fb_LongintToStr( DDSIZE$1 + 8ll );
	__builtin_memset( &TMP$1643$1, 0, 24ll );
	FBSTRING* vr$285 = fb_StrConcat( &TMP$1643$1, (void*)"add esp, ", 10ll, (void*)vr$282, -1ll );
	fb_StrAssign( (void*)&TMP$1644$1, -1ll, (void*)vr$285, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$1644$1 );
	fb_StrDelete( (FBSTRING*)&TMP$1644$1 );
	label$704:;
}

static void _EMITPUSHF_SSE( struct $6IRVREG* SVREG$1, int64 UNUSED$1 )
{
	int64 TMP$1645$1;
	label$718:;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$720;
	TMP$1645$1 = 24ll;
	goto label$812;
	label$720:;
	TMP$1645$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$812:;
	SDSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1645$1 * 56ll)) + 8ll);
	if( *(int64*)SVREG$1 == 4ll ) goto label$722;
	{
		if( *(int64*)((uint8*)SVREG$1 + 8ll) != 15ll ) goto label$724;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$723;
		label$724:;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 4ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 0ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$723:;
	}
	goto label$721;
	label$722:;
	{
		FBSTRING TMP$1649$2;
		FBSTRING TMP$1650$2;
		FBSTRING TMP$1651$2;
		FBSTRING TMP$1652$2;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sub esp, ", 10ll, 0 );
		FBSTRING* vr$7 = fb_LongintToStr( SDSIZE$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$7, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		if( *(int64*)((uint8*)SVREG$1 + 32ll) != 0ll ) goto label$726;
		{
			FBSTRING TMP$1647$3;
			FBSTRING TMP$1648$3;
			__builtin_memset( &TMP$1647$3, 0, 24ll );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$1647$3, (void*)"fstp ", 6ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$1648$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$1648$3, (void*)vr$14, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$17, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			goto label$719;
		}
		label$726:;
		label$725:;
		if( SDSIZE$1 <= 4ll ) goto label$728;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movlpd ", 8ll, 0 );
		}
		goto label$727;
		label$728:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movss ", 7ll, 0 );
		}
		label$727:;
		__builtin_memset( &TMP$1652$2, 0, 24ll );
		__builtin_memset( &TMP$1649$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$1649$2, (void*)&OSTR$1, -1ll, (void*)"[esp]", 6ll );
		__builtin_memset( &TMP$1650$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$1650$2, (void*)vr$21, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1651$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$1651$2, (void*)vr$24, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1652$2, -1ll, (void*)vr$27, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1652$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1652$2 );
	}
	label$721:;
	label$719:;
}

static void _EMITPOPF_SSE( struct $6IRVREG* DVREG$1, int64 UNUSED$1 )
{
	int64 TMP$1653$1;
	label$729:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int64 DSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$731;
	TMP$1653$1 = 24ll;
	goto label$813;
	label$731:;
	TMP$1653$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$813:;
	DSIZE$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1653$1 * 56ll)) + 8ll);
	if( *(int64*)DVREG$1 == 4ll ) goto label$733;
	{
		if( *(int64*)((uint8*)DVREG$1 + 8ll) != 15ll ) goto label$735;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$734;
		label$735:;
		{
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, 0ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, 4ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$734:;
	}
	goto label$732;
	label$733:;
	{
		FBSTRING TMP$1655$2;
		FBSTRING TMP$1656$2;
		FBSTRING TMP$1657$2;
		FBSTRING TMP$1658$2;
		FBSTRING TMP$1659$2;
		FBSTRING TMP$1660$2;
		FBSTRING TMP$1661$2;
		if( DSIZE$1 <= 4ll ) goto label$737;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movlpd ", 8ll, 0 );
		}
		goto label$736;
		label$737:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movss ", 7ll, 0 );
		}
		label$736:;
		__builtin_memset( &TMP$1659$2, 0, 24ll );
		__builtin_memset( &TMP$1655$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$1655$2, (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$1656$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$1656$2, (void*)vr$13, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1657$2, 0, 24ll );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$1657$2, (void*)vr$16, -1ll, (void*)(((int64)(struct $12EMITDATATYPE*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
		__builtin_memset( &TMP$1658$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$1658$2, (void*)vr$19, -1ll, (void*)" [esp]", 7ll );
		fb_StrAssign( (void*)&TMP$1659$2, -1ll, (void*)vr$22, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1659$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1659$2 );
		__builtin_memset( &TMP$1661$2, 0, 24ll );
		FBSTRING* vr$26 = fb_LongintToStr( DSIZE$1 );
		__builtin_memset( &TMP$1660$2, 0, 24ll );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$1660$2, (void*)"add esp, ", 10ll, (void*)vr$26, -1ll );
		fb_StrAssign( (void*)&TMP$1661$2, -1ll, (void*)vr$29, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$1661$2 );
		fb_StrDelete( (FBSTRING*)&TMP$1661$2 );
	}
	label$732:;
	label$730:;
}
