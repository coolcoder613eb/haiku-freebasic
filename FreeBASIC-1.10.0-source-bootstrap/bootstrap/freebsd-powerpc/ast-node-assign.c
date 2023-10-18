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
typedef int32 $22FB_OVLPROC_MATCH_SCORE;
typedef int32 $9FB_ERRMSG;
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
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezassign( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTPTRCHECK( int32, struct $8FBSYMBOL*, int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWMEM( int32, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int32 ASTCHECKASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 ASTCHECKCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE*, int64, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTVAR( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int32 TYPEHASCTOR( int32, struct $8FBSYMBOL* );
int32 TYPEHASDTOR( int32, struct $8FBSYMBOL* );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int32, struct $8FBSYMBOL*, int32, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
int32 SYMBCOMPHASCOPYLETOPS( struct $8FBSYMBOL* );
int32 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static int32 HCHECKSTRINGOPS( struct $7ASTNODE*, $12FB_DATACLASS, struct $7ASTNODE*, $12FB_DATACLASS );
static int32 HCHECKUDTOPS( struct $7ASTNODE*, $12FB_DATACLASS, struct $7ASTNODE**, $12FB_DATACLASS, int32 );
static int32 HCHECKWSTRINGOPS( struct $7ASTNODE*, int32*, struct $7ASTNODE*, int32*, int32* );
static int32 HCHECKZSTRINGOPS( struct $7ASTNODE*, int32*, struct $7ASTNODE*, int32* );
static void HCHECKENUMOPS( struct $7ASTNODE*, $12FB_DATACLASS, struct $7ASTNODE*, $12FB_DATACLASS );
static int32 HCHECKCONSTANDPOINTEROPS( struct $7ASTNODE*, $11FB_DATATYPE, struct $7ASTNODE*, $11FB_DATATYPE );
static struct $7ASTNODE* HSHALLOWCOPY( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
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

int32 ASTCHECKASSIGN( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, int32 NO_UPCAST$1 )
{
	int32 TMP$90$1;
	int32 TMP$91$1;
	int32 TMP$92$1;
	int32 TMP$93$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$83:;
	struct $7ASTNODE* N$1;
	$11FB_DATATYPE LDTYPE$1;
	$11FB_DATATYPE RDTYPE$1;
	$11FB_DATATYPE LDFULL$1;
	$11FB_DATATYPE RDFULL$1;
	$12FB_DATACLASS LDCLASS$1;
	$12FB_DATACLASS RDCLASS$1;
	fb$result$1 = 0;
	LDFULL$1 = *($11FB_DATATYPE*)((uint8*)L$1 + 4);
	RDFULL$1 = *($11FB_DATATYPE*)((uint8*)R$1 + 4);
	if( (LDFULL$1 & 480) == 0 ) goto label$85;
	TMP$90$1 = 24;
	goto label$131;
	label$85:;
	TMP$90$1 = LDFULL$1 & 31;
	label$131:;
	LDTYPE$1 = TMP$90$1;
	if( (RDFULL$1 & 480) == 0 ) goto label$86;
	TMP$91$1 = 24;
	goto label$132;
	label$86:;
	TMP$91$1 = RDFULL$1 & 31;
	label$132:;
	RDTYPE$1 = TMP$91$1;
	if( (LDTYPE$1 & 480) == 0 ) goto label$87;
	TMP$92$1 = 24;
	goto label$133;
	label$87:;
	TMP$92$1 = LDTYPE$1 & 31;
	label$133:;
	LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$1 * 28));
	if( (RDTYPE$1 & 480) == 0 ) goto label$88;
	TMP$93$1 = 24;
	goto label$134;
	label$88:;
	TMP$93$1 = RDTYPE$1 & 31;
	label$134:;
	RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$1 * 28));
	if( (-(LDCLASS$1 == 2) | -(RDCLASS$1 == 2)) == 0 ) goto label$90;
	{
		if( LDCLASS$1 == RDCLASS$1 ) goto label$92;
		{
			int32 vr$16 = HCHECKSTRINGOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
			if( vr$16 != 0 ) goto label$94;
			{
				goto label$84;
			}
			label$94:;
			label$93:;
		}
		label$92:;
		label$91:;
		fb$result$1 = -1;
		goto label$84;
	}
	goto label$89;
	label$90:;
	if( (-(LDTYPE$1 == 20) | -(RDTYPE$1 == 20)) == 0 ) goto label$95;
	{
		int32 vr$21 = HCHECKUDTOPS( L$1, LDCLASS$1, &R$1, RDCLASS$1, NO_UPCAST$1 );
		if( vr$21 != 0 ) goto label$97;
		{
			goto label$84;
		}
		label$97:;
		label$96:;
		fb$result$1 = -1;
		goto label$84;
	}
	goto label$89;
	label$95:;
	if( (-(LDTYPE$1 == 7) | -(RDTYPE$1 == 7)) == 0 ) goto label$98;
	{
		if( LDTYPE$1 == RDTYPE$1 ) goto label$100;
		{
			int32 TMP$94$3;
			int32 TMP$95$3;
			int32 TMP$96$3;
			int32 TMP$97$3;
			int32 IS_ZSTR$3;
			__builtin_memset( &IS_ZSTR$3, 0, 4 );
			int32 vr$29 = HCHECKWSTRINGOPS( L$1, (int32*)&LDFULL$1, R$1, (int32*)&RDFULL$1, &IS_ZSTR$3 );
			if( vr$29 != 0 ) goto label$102;
			{
				goto label$84;
			}
			label$102:;
			label$101:;
			if( IS_ZSTR$3 == 0 ) goto label$104;
			{
				fb$result$1 = -1;
				goto label$84;
			}
			label$104:;
			label$103:;
			if( (LDFULL$1 & 480) == 0 ) goto label$105;
			TMP$94$3 = 24;
			goto label$135;
			label$105:;
			TMP$94$3 = LDFULL$1 & 31;
			label$135:;
			LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$3 * 28));
			if( (RDFULL$1 & 480) == 0 ) goto label$106;
			TMP$95$3 = 24;
			goto label$136;
			label$106:;
			TMP$95$3 = RDFULL$1 & 31;
			label$136:;
			RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$3 * 28));
			if( (LDFULL$1 & 480) == 0 ) goto label$107;
			TMP$96$3 = 24;
			goto label$137;
			label$107:;
			TMP$96$3 = LDFULL$1 & 31;
			label$137:;
			LDTYPE$1 = TMP$96$3;
			if( (RDFULL$1 & 480) == 0 ) goto label$108;
			TMP$97$3 = 24;
			goto label$138;
			label$108:;
			TMP$97$3 = RDFULL$1 & 31;
			label$138:;
			RDTYPE$1 = TMP$97$3;
		}
		label$100:;
		label$99:;
	}
	goto label$89;
	label$98:;
	if( (-(LDTYPE$1 == 4) | -(RDTYPE$1 == 4)) == 0 ) goto label$109;
	{
		int32 TMP$98$2;
		int32 TMP$99$2;
		int32 TMP$100$2;
		int32 TMP$101$2;
		if( LDTYPE$1 != RDTYPE$1 ) goto label$111;
		{
			fb$result$1 = -1;
			goto label$84;
		}
		label$111:;
		label$110:;
		int32 vr$45 = HCHECKZSTRINGOPS( L$1, (int32*)&LDFULL$1, R$1, (int32*)&RDFULL$1 );
		if( vr$45 != 0 ) goto label$113;
		{
			goto label$84;
		}
		label$113:;
		label$112:;
		if( (LDFULL$1 & 480) == 0 ) goto label$114;
		TMP$98$2 = 24;
		goto label$139;
		label$114:;
		TMP$98$2 = LDFULL$1 & 31;
		label$139:;
		LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$2 * 28));
		if( (RDFULL$1 & 480) == 0 ) goto label$115;
		TMP$99$2 = 24;
		goto label$140;
		label$115:;
		TMP$99$2 = RDFULL$1 & 31;
		label$140:;
		RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$2 * 28));
		if( (LDFULL$1 & 480) == 0 ) goto label$116;
		TMP$100$2 = 24;
		goto label$141;
		label$116:;
		TMP$100$2 = LDFULL$1 & 31;
		label$141:;
		LDTYPE$1 = TMP$100$2;
		if( (RDFULL$1 & 480) == 0 ) goto label$117;
		TMP$101$2 = 24;
		goto label$142;
		label$117:;
		TMP$101$2 = RDFULL$1 & 31;
		label$142:;
		RDTYPE$1 = TMP$101$2;
	}
	goto label$89;
	label$109:;
	if( (-(LDTYPE$1 == 10) | -(RDTYPE$1 == 10)) == 0 ) goto label$118;
	{
		HCHECKENUMOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
	}
	label$118:;
	label$89:;
	int32 vr$59 = HCHECKCONSTANDPOINTEROPS( L$1, LDFULL$1, R$1, RDFULL$1 );
	if( vr$59 != 0 ) goto label$120;
	{
		goto label$84;
	}
	label$120:;
	label$119:;
	if( (-(LDTYPE$1 != RDTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 8))) == 0 ) goto label$122;
	{
		if( RDCLASS$1 == 2 ) goto label$124;
		{
			if( *(int32*)R$1 != 16 ) goto label$126;
			{
				struct $7ASTNODE* vr$67 = ASTNEWCONV( LDFULL$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1, 0, (int32*)0u );
				R$1 = vr$67;
				if( R$1 != (struct $7ASTNODE*)0u ) goto label$128;
				{
					goto label$84;
				}
				label$128:;
				label$127:;
			}
			label$126:;
			label$125:;
			int32 vr$69 = ASTCHECKCONV( LDFULL$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1 );
			if( vr$69 != 0 ) goto label$130;
			{
				goto label$84;
			}
			label$130:;
			label$129:;
		}
		label$124:;
		label$123:;
	}
	label$122:;
	label$121:;
	fb$result$1 = -1;
	label$84:;
	return fb$result$1;
}

int32 ASTCHECKASSIGNTOTYPE( int32 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $7ASTNODE* R$1, int32 NO_UPCAST$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$143:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( (struct $8FBSYMBOL*)0u, 0ll, LDTYPE$1, LSUBTYPE$1 );
	L$1 = vr$1;
	int32 vr$2 = ASTCHECKASSIGN( L$1, R$1, NO_UPCAST$1 );
	fb$result$1 = vr$2;
	ASTDELTREE( L$1 );
	label$144:;
	return fb$result$1;
}

int32 ASTCHECKBYREFASSIGN( int32 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $7ASTNODE* R$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$145:;
	$22FB_OVLPROC_MATCH_SCORE vr$3 = TYPECALCMATCH( LDTYPE$1, LSUBTYPE$1, 2, *(int32*)((uint8*)R$1 + 4), *(struct $8FBSYMBOL**)((uint8*)R$1 + 8) );
	fb$result$1 = -(vr$3 > 0);
	label$146:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $9AST_OPOPT OPTIONS$1 )
{
	int32 TMP$102$1;
	int32 TMP$103$1;
	int32 TMP$104$1;
	int32 TMP$105$1;
	int32 TMP$107$1;
	int32 TMP$108$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$159:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* TR$1;
	$11FB_DATATYPE LDTYPE$1;
	$11FB_DATATYPE RDTYPE$1;
	$11FB_DATATYPE LDFULL$1;
	$11FB_DATATYPE RDFULL$1;
	$12FB_DATACLASS LDCLASS$1;
	$12FB_DATACLASS RDCLASS$1;
	struct $8FBSYMBOL* LSUBTYPE$1;
	struct $8FBSYMBOL* PROC$1;
	$9FB_ERRMSG ERR_NUM$1;
	int32 DO_MOVE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( (-(L$1 == (struct $7ASTNODE*)0u) | -(R$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$162;
	{
		goto label$160;
	}
	label$162:;
	label$161:;
	LDFULL$1 = *($11FB_DATATYPE*)((uint8*)L$1 + 4);
	if( (LDFULL$1 & 480) == 0 ) goto label$163;
	TMP$102$1 = 24;
	goto label$264;
	label$163:;
	TMP$102$1 = LDFULL$1 & 31;
	label$264:;
	LDTYPE$1 = TMP$102$1;
	if( (LDTYPE$1 & 480) == 0 ) goto label$164;
	TMP$103$1 = 24;
	goto label$265;
	label$164:;
	TMP$103$1 = LDTYPE$1 & 31;
	label$265:;
	LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$1 * 28));
	LSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
	RDFULL$1 = *($11FB_DATATYPE*)((uint8*)R$1 + 4);
	if( (RDFULL$1 & 480) == 0 ) goto label$165;
	TMP$104$1 = 24;
	goto label$266;
	label$165:;
	TMP$104$1 = RDFULL$1 & 31;
	label$266:;
	RDTYPE$1 = TMP$104$1;
	if( (RDTYPE$1 & 480) == 0 ) goto label$166;
	TMP$105$1 = 24;
	goto label$267;
	label$166:;
	TMP$105$1 = RDTYPE$1 & 31;
	label$267:;
	RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$1 * 28));
	if( (OPTIONS$1 & 32) != 0 ) goto label$168;
	{
		int32 CHECK_LETOP$2;
		CHECK_LETOP$2 = -1;
		{
			uint32 TMP$106$3;
			TMP$106$3 = (uint32)LDTYPE$1;
			goto label$170;
			label$171:;
			{
				if( LDTYPE$1 != RDTYPE$1 ) goto label$173;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 8) ) goto label$175;
					{
						if( (OPTIONS$1 & 64) != 0 ) goto label$177;
						{
							int32 vr$22 = SYMBCOMPHASCOPYLETOPS( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
							CHECK_LETOP$2 = vr$22;
						}
						goto label$176;
						label$177:;
						{
							CHECK_LETOP$2 = 0;
						}
						label$176:;
					}
					label$175:;
					label$174:;
				}
				label$173:;
				label$172:;
			}
			goto label$169;
			label$170:;
			static const void* tmp$121[1] = {
				&&label$171,
			};
			if( (TMP$106$3 - 20u) > 0u ) goto label$169;
			goto *tmp$121[TMP$106$3 - 20u];
			label$169:;
		}
		if( CHECK_LETOP$2 == 0 ) goto label$179;
		{
			struct $8FBSYMBOL* vr$24 = SYMBFINDSELFBOPOVLPROC( 0, L$1, R$1, &ERR_NUM$1 );
			PROC$1 = vr$24;
			if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$181;
			{
				struct $7ASTNODE* RESULT$4;
				if( (OPTIONS$1 & 64) == 0 ) goto label$183;
				{
					struct $8FBSYMBOL* vr$27 = SYMBGETCOMPDEFCTOR( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
					if( vr$27 == (struct $8FBSYMBOL*)0u ) goto label$185;
					{
						struct $7ASTNODE* vr$28 = ASTCLONETREE( L$1 );
						struct $7ASTNODE* vr$30 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), vr$28 );
						RESULT$4 = vr$30;
					}
					goto label$184;
					label$185:;
					{
						struct $7ASTNODE* vr$33 = ASTNEWCONSTI( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) + 40), 8, (struct $8FBSYMBOL*)0u );
						struct $7ASTNODE* vr$34 = ASTCLONETREE( L$1 );
						struct $7ASTNODE* vr$35 = ASTNEWMEM( 107, vr$34, vr$33, 0ll );
						RESULT$4 = vr$35;
					}
					label$184:;
				}
				goto label$182;
				label$183:;
				{
					RESULT$4 = (struct $7ASTNODE*)0u;
				}
				label$182:;
				struct $7ASTNODE* vr$36 = ASTBUILDCALL( PROC$1, L$1, R$1, (struct $7ASTNODE*)0u );
				struct $7ASTNODE* vr$37 = ASTNEWLINK( RESULT$4, vr$36, 0 );
				fb$result$1 = vr$37;
				goto label$160;
			}
			label$181:;
			label$180:;
			if( ERR_NUM$1 == 0 ) goto label$187;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$160;
			}
			label$187:;
			label$186:;
		}
		label$179:;
		label$178:;
	}
	label$168:;
	label$167:;
	if( (OPTIONS$1 & 32) != 0 ) goto label$189;
	{
		struct $8FBSYMBOL* vr$40 = SYMBFINDCASTOVLPROC( LDFULL$1, LSUBTYPE$1, R$1, &ERR_NUM$1, 0 );
		PROC$1 = vr$40;
		if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$191;
		{
			struct $7ASTNODE* vr$41 = ASTBUILDCALL( PROC$1, R$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
			R$1 = vr$41;
		}
		goto label$190;
		label$191:;
		{
			if( ERR_NUM$1 == 0 ) goto label$193;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$160;
			}
			label$193:;
			label$192:;
		}
		label$190:;
	}
	label$189:;
	label$188:;
	RDFULL$1 = *($11FB_DATATYPE*)((uint8*)R$1 + 4);
	if( (RDFULL$1 & 480) == 0 ) goto label$194;
	TMP$107$1 = 24;
	goto label$268;
	label$194:;
	TMP$107$1 = RDFULL$1 & 31;
	label$268:;
	RDTYPE$1 = TMP$107$1;
	if( (RDTYPE$1 & 480) == 0 ) goto label$195;
	TMP$108$1 = 24;
	goto label$269;
	label$195:;
	TMP$108$1 = RDTYPE$1 & 31;
	label$269:;
	RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$108$1 * 28));
	if( (-(LDCLASS$1 == 2) | -(RDCLASS$1 == 2)) == 0 ) goto label$197;
	{
		if( LDCLASS$1 == RDCLASS$1 ) goto label$199;
		{
			int32 vr$51 = HCHECKSTRINGOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
			if( vr$51 != 0 ) goto label$201;
			{
				goto label$160;
			}
			label$201:;
			label$200:;
			struct $7ASTNODE* vr$54 = RTLSTRASSIGN( L$1, R$1, -((OPTIONS$1 & 64) != 0) );
			fb$result$1 = vr$54;
			goto label$160;
		}
		label$199:;
		label$198:;
		if( (OPTIONS$1 & 64) == 0 ) goto label$203;
		{
			struct $7ASTNODE* vr$56 = RTLSTRASSIGN( L$1, R$1, -1 );
			fb$result$1 = vr$56;
			goto label$160;
		}
		label$203:;
		label$202:;
	}
	goto label$196;
	label$197:;
	if( (-(LDTYPE$1 == 20) | -(RDTYPE$1 == 20)) == 0 ) goto label$204;
	{
		int32 TMP$109$2;
		int32 TMP$110$2;
		int32 vr$61 = HCHECKUDTOPS( L$1, LDCLASS$1, &R$1, RDCLASS$1, 0 );
		if( vr$61 != 0 ) goto label$206;
		{
			goto label$160;
		}
		label$206:;
		label$205:;
		if( *(int32*)R$1 != 36 ) goto label$208;
		{
			int32 vr$65 = TYPEHASCTOR( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
			int32 vr$68 = TYPEHASDTOR( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
			if( (vr$65 | vr$68) != 0 ) goto label$210;
			{
				struct $7ASTNODE* vr$71 = ASTREMOVENOCONVCAST( L$1 );
				struct $7ASTNODE* vr$72 = _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( vr$71, R$1, -1, OPTIONS$1 & 64 );
				fb$result$1 = vr$72;
				goto label$160;
			}
			label$210:;
			label$209:;
		}
		label$208:;
		label$207:;
		struct $7ASTNODE* vr$73 = ASTSKIPNOCONVCAST( R$1 );
		TR$1 = vr$73;
		if( *(int32*)TR$1 == 9 ) goto label$212;
		{
			struct $7ASTNODE* vr$75 = HSHALLOWCOPY( L$1, R$1, OPTIONS$1 );
			fb$result$1 = vr$75;
			goto label$160;
		}
		label$212:;
		label$211:;
		int32 vr$77 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)TR$1 + 12) );
		if( vr$77 == 0 ) goto label$214;
		{
			struct $7ASTNODE* vr$78 = ASTREMOVENOCONVCAST( R$1 );
			struct $7ASTNODE* vr$79 = ASTBUILDCALLRESULTVAR( vr$78 );
			struct $7ASTNODE* vr$80 = HSHALLOWCOPY( L$1, vr$79, OPTIONS$1 );
			fb$result$1 = vr$80;
			goto label$160;
		}
		label$214:;
		label$213:;
		struct $7ASTNODE* vr$81 = ASTREMOVENOCONVCAST( L$1 );
		L$1 = vr$81;
		struct $7ASTNODE* vr$82 = ASTREMOVENOCONVCAST( R$1 );
		R$1 = vr$82;
		LDFULL$1 = *($11FB_DATATYPE*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 12) + 88);
		if( (LDFULL$1 & 480) == 0 ) goto label$215;
		TMP$109$2 = 24;
		goto label$270;
		label$215:;
		TMP$109$2 = LDFULL$1 & 31;
		label$270:;
		LDTYPE$1 = TMP$109$2;
		LSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 12) + 92);
		if( (LDTYPE$1 & 480) == 0 ) goto label$216;
		TMP$110$2 = 24;
		goto label$271;
		label$216:;
		TMP$110$2 = LDTYPE$1 & 31;
		label$271:;
		LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$110$2 * 28));
		ASTSETTYPE( L$1, LDFULL$1, LSUBTYPE$1 );
		RDFULL$1 = LDFULL$1;
		RDTYPE$1 = LDTYPE$1;
		RDCLASS$1 = LDCLASS$1;
		ASTSETTYPE( R$1, RDFULL$1, LSUBTYPE$1 );
	}
	goto label$196;
	label$204:;
	if( (-(LDTYPE$1 == 7) | -(RDTYPE$1 == 7)) == 0 ) goto label$217;
	{
		if( LDTYPE$1 != RDTYPE$1 ) goto label$219;
		{
			if( (OPTIONS$1 & 64) == 0 ) goto label$221;
			{
				struct $7ASTNODE* vr$96 = RTLWSTRASSIGN( L$1, R$1, -1 );
				fb$result$1 = vr$96;
				goto label$160;
			}
			label$221:;
			label$220:;
		}
		goto label$218;
		label$219:;
		{
			int32 TMP$111$3;
			int32 TMP$112$3;
			int32 TMP$113$3;
			int32 TMP$114$3;
			int32 IS_ZSTR$3;
			__builtin_memset( &IS_ZSTR$3, 0, 4 );
			int32 vr$101 = HCHECKWSTRINGOPS( L$1, (int32*)&LDFULL$1, R$1, (int32*)&RDFULL$1, &IS_ZSTR$3 );
			if( vr$101 != 0 ) goto label$223;
			{
				goto label$160;
			}
			label$223:;
			label$222:;
			if( IS_ZSTR$3 == 0 ) goto label$225;
			{
				struct $7ASTNODE* vr$104 = RTLWSTRASSIGN( L$1, R$1, -((OPTIONS$1 & 64) != 0) );
				fb$result$1 = vr$104;
				goto label$160;
			}
			label$225:;
			label$224:;
			if( (LDFULL$1 & 480) == 0 ) goto label$226;
			TMP$111$3 = 24;
			goto label$272;
			label$226:;
			TMP$111$3 = LDFULL$1 & 31;
			label$272:;
			LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$111$3 * 28));
			if( (RDFULL$1 & 480) == 0 ) goto label$227;
			TMP$112$3 = 24;
			goto label$273;
			label$227:;
			TMP$112$3 = RDFULL$1 & 31;
			label$273:;
			RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$112$3 * 28));
			if( (LDFULL$1 & 480) == 0 ) goto label$228;
			TMP$113$3 = 24;
			goto label$274;
			label$228:;
			TMP$113$3 = LDFULL$1 & 31;
			label$274:;
			LDTYPE$1 = TMP$113$3;
			if( (RDFULL$1 & 480) == 0 ) goto label$229;
			TMP$114$3 = 24;
			goto label$275;
			label$229:;
			TMP$114$3 = RDFULL$1 & 31;
			label$275:;
			RDTYPE$1 = TMP$114$3;
		}
		label$218:;
	}
	goto label$196;
	label$217:;
	if( (-(LDTYPE$1 == 4) | -(RDTYPE$1 == 4)) == 0 ) goto label$230;
	{
		int32 TMP$115$2;
		int32 TMP$116$2;
		int32 TMP$117$2;
		int32 TMP$118$2;
		if( LDTYPE$1 != RDTYPE$1 ) goto label$232;
		{
			struct $7ASTNODE* vr$118 = RTLSTRASSIGN( L$1, R$1, 0 );
			fb$result$1 = vr$118;
			goto label$160;
		}
		label$232:;
		label$231:;
		int32 vr$121 = HCHECKZSTRINGOPS( L$1, (int32*)&LDFULL$1, R$1, (int32*)&RDFULL$1 );
		if( vr$121 != 0 ) goto label$234;
		{
			goto label$160;
		}
		label$234:;
		label$233:;
		if( (LDFULL$1 & 480) == 0 ) goto label$235;
		TMP$115$2 = 24;
		goto label$276;
		label$235:;
		TMP$115$2 = LDFULL$1 & 31;
		label$276:;
		LDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$115$2 * 28));
		if( (RDFULL$1 & 480) == 0 ) goto label$236;
		TMP$116$2 = 24;
		goto label$277;
		label$236:;
		TMP$116$2 = RDFULL$1 & 31;
		label$277:;
		RDCLASS$1 = *($12FB_DATACLASS*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$2 * 28));
		if( (LDFULL$1 & 480) == 0 ) goto label$237;
		TMP$117$2 = 24;
		goto label$278;
		label$237:;
		TMP$117$2 = LDFULL$1 & 31;
		label$278:;
		LDTYPE$1 = TMP$117$2;
		if( (RDFULL$1 & 480) == 0 ) goto label$238;
		TMP$118$2 = 24;
		goto label$279;
		label$238:;
		TMP$118$2 = RDFULL$1 & 31;
		label$279:;
		RDTYPE$1 = TMP$118$2;
	}
	goto label$196;
	label$230:;
	if( (-(LDTYPE$1 == 10) | -(RDTYPE$1 == 10)) == 0 ) goto label$239;
	{
		HCHECKENUMOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
	}
	label$239:;
	label$196:;
	if( (OPTIONS$1 & 16) != 0 ) goto label$241;
	{
		int32 vr$136 = HCHECKCONSTANDPOINTEROPS( L$1, LDFULL$1, R$1, RDFULL$1 );
		if( vr$136 != 0 ) goto label$243;
		{
			goto label$160;
		}
		label$243:;
		label$242:;
	}
	label$241:;
	label$240:;
	if( (-(LDTYPE$1 != RDTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 8))) == 0 ) goto label$245;
	{
		if( RDCLASS$1 == 2 ) goto label$247;
		{
			if( *(int32*)R$1 != 16 ) goto label$249;
			{
				int32 TMP$119$4;
				if( (OPTIONS$1 & 16) == 0 ) goto label$250;
				TMP$119$4 = 8;
				goto label$280;
				label$250:;
				TMP$119$4 = 0;
				label$280:;
				struct $7ASTNODE* vr$144 = ASTNEWCONV( LDFULL$1, LSUBTYPE$1, R$1, TMP$119$4, (int32*)0u );
				R$1 = vr$144;
				if( R$1 != (struct $7ASTNODE*)0u ) goto label$252;
				{
					goto label$160;
				}
				label$252:;
				label$251:;
			}
			label$249:;
			label$248:;
			int32 DOCONV$3;
			DOCONV$3 = -1;
			if( *(int32*)((uint8*)&ENV$ + 104) != 0 ) goto label$254;
			{
				if( (-(LDCLASS$1 == 1) | -(RDCLASS$1 == 1)) == 0 ) goto label$256;
				{
					if( LDTYPE$1 == 14 ) goto label$258;
					{
						DOCONV$3 = -((*(int32*)((uint8*)&IR$ + 272) & 1) != 0);
					}
					label$258:;
					label$257:;
				}
				label$256:;
				label$255:;
			}
			label$254:;
			label$253:;
			if( DOCONV$3 == 0 ) goto label$260;
			{
				int32 TMP$120$4;
				if( (OPTIONS$1 & 16) == 0 ) goto label$261;
				TMP$120$4 = 8;
				goto label$281;
				label$261:;
				TMP$120$4 = 0;
				label$281:;
				struct $7ASTNODE* vr$152 = ASTNEWCONV( LDFULL$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1, TMP$120$4, (int32*)0u );
				R$1 = vr$152;
				if( R$1 != (struct $7ASTNODE*)0u ) goto label$263;
				{
					goto label$160;
				}
				label$263:;
				label$262:;
			}
			label$260:;
			label$259:;
		}
		label$247:;
		label$246:;
	}
	label$245:;
	label$244:;
	struct $7ASTNODE* vr$153 = ASTNEWNODE( 2, LDFULL$1, LSUBTYPE$1 );
	N$1 = vr$153;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = R$1;
	fb$result$1 = N$1;
	label$160:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADASSIGN( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$282:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $6IRVREG* VS$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	if( (-(L$1 == (struct $7ASTNODE*)0u) | -(R$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$285;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$283;
	}
	label$285:;
	label$284:;
	if( *(int32*)R$1 != 5 ) goto label$287;
	{
		ASTUPDATECONVFD2FS( R$1, *(int32*)((uint8*)L$1 + 4), 0 );
	}
	label$287:;
	label$286:;
	struct $6IRVREG* vr$8 = ASTLOAD( R$1 );
	VS$1 = vr$8;
	struct $6IRVREG* vr$9 = ASTLOAD( L$1 );
	VR$1 = vr$9;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$289;
	{
		(*(tmp$44*)((uint8*)&IR$ + 100))( VR$1, VS$1 );
	}
	label$289:;
	label$288:;
	ASTDELNODE( L$1 );
	ASTDELNODE( R$1 );
	fb$result$1 = VR$1;
	label$283:;
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

static int32 HCHECKSTRINGOPS( struct $7ASTNODE* L$1, $12FB_DATACLASS LDCLASS$1, struct $7ASTNODE* R$1, $12FB_DATACLASS RDCLASS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* OTHER$1;
	fb$result$1 = 0;
	if( LDCLASS$1 != 2 ) goto label$13;
	{
		OTHER$1 = R$1;
	}
	goto label$12;
	label$13:;
	{
		OTHER$1 = L$1;
	}
	label$12:;
	{
		int32 TMP$83$2;
		TMP$83$2 = *(int32*)((uint8*)OTHER$1 + 4) & 511;
		if( TMP$83$2 == 4 ) goto label$16;
		label$17:;
		if( TMP$83$2 != 7 ) goto label$15;
		label$16:;
		{
		}
		goto label$14;
		label$15:;
		{
			goto label$11;
		}
		label$18:;
		label$14:;
	}
	fb$result$1 = -1;
	label$11:;
	return fb$result$1;
}

static int32 HCHECKUDTOPS( struct $7ASTNODE* L$1, $12FB_DATACLASS LDCLASS$1, struct $7ASTNODE** R$1, $12FB_DATACLASS RDCLASS$1, int32 NO_UPCAST$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$19:;
	struct $8FBSYMBOL* PROC$1;
	fb$result$1 = 0;
	if( (*(int32*)((uint8*)L$1 + 4) & 511) == 20 ) goto label$22;
	{
		goto label$20;
	}
	goto label$21;
	label$22:;
	{
		if( *(int32*)L$1 != 9 ) goto label$24;
		{
			goto label$20;
		}
		label$24:;
		label$23:;
	}
	label$21:;
	if( (*(int32*)((uint8*)*R$1 + 4) & 511) == 20 ) goto label$26;
	{
		goto label$20;
	}
	label$26:;
	label$25:;
	if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) == *(struct $8FBSYMBOL**)((uint8*)*R$1 + 8) ) goto label$28;
	{
		int32 vr$13 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)*R$1 + 8), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
		if( vr$13 != 0 ) goto label$30;
		{
			goto label$20;
		}
		label$30:;
		label$29:;
		if( NO_UPCAST$1 == 0 ) goto label$32;
		{
			goto label$20;
		}
		goto label$31;
		label$32:;
		{
			struct $7ASTNODE* vr$18 = ASTNEWCONV( *(int32*)((uint8*)L$1 + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), *R$1, 0, (int32*)0u );
			*R$1 = vr$18;
		}
		label$31:;
	}
	label$28:;
	label$27:;
	fb$result$1 = -1;
	label$20:;
	return fb$result$1;
}

static int32 HCHECKWSTRINGOPS( struct $7ASTNODE* L$1, int32* LDFULL$1, struct $7ASTNODE* R$1, int32* RDFULL$1, int32* IS_ZSTR$1 )
{
	int32 TMP$84$1;
	int32 TMP$85$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$33:;
	fb$result$1 = 0;
	int32 LDTYPE$1;
	int32 RDTYPE$1;
	if( (*LDFULL$1 & 480) == 0 ) goto label$35;
	TMP$84$1 = 24;
	goto label$290;
	label$35:;
	TMP$84$1 = *LDFULL$1 & 31;
	label$290:;
	LDTYPE$1 = TMP$84$1;
	if( (*RDFULL$1 & 480) == 0 ) goto label$36;
	TMP$85$1 = 24;
	goto label$291;
	label$36:;
	TMP$85$1 = *RDFULL$1 & 31;
	label$291:;
	RDTYPE$1 = TMP$85$1;
	if( LDTYPE$1 != 7 ) goto label$38;
	{
		*IS_ZSTR$1 = -(RDTYPE$1 == 4);
	}
	goto label$37;
	label$38:;
	{
		*IS_ZSTR$1 = -(LDTYPE$1 == 4);
	}
	label$37:;
	if( *IS_ZSTR$1 == 0 ) goto label$40;
	{
		fb$result$1 = -1;
		goto label$34;
	}
	label$40:;
	label$39:;
	if( LDTYPE$1 != 7 ) goto label$42;
	{
		if( *(int32*)L$1 == 20 ) goto label$44;
		{
			goto label$34;
		}
		label$44:;
		label$43:;
		*LDFULL$1 = (*LDFULL$1 & -512) | (*(int32*)((uint8*)&ENV$ + 272) & 511);
	}
	goto label$41;
	label$42:;
	{
		if( *(int32*)R$1 == 20 ) goto label$46;
		{
			goto label$34;
		}
		label$46:;
		label$45:;
		*RDFULL$1 = (*RDFULL$1 & -512) | (*(int32*)((uint8*)&ENV$ + 272) & 511);
	}
	label$41:;
	fb$result$1 = -1;
	label$34:;
	return fb$result$1;
}

static int32 HCHECKZSTRINGOPS( struct $7ASTNODE* L$1, int32* LDFULL$1, struct $7ASTNODE* R$1, int32* RDFULL$1 )
{
	int32 TMP$86$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$47:;
	fb$result$1 = 0;
	if( (*LDFULL$1 & 480) == 0 ) goto label$49;
	TMP$86$1 = 24;
	goto label$292;
	label$49:;
	TMP$86$1 = *LDFULL$1 & 31;
	label$292:;
	if( TMP$86$1 != 4 ) goto label$51;
	{
		if( *(int32*)L$1 == 20 ) goto label$53;
		{
			goto label$48;
		}
		label$53:;
		label$52:;
		*LDFULL$1 = (*LDFULL$1 & -512) | 3;
	}
	goto label$50;
	label$51:;
	{
		if( *(int32*)R$1 == 20 ) goto label$55;
		{
			goto label$48;
		}
		label$55:;
		label$54:;
		*RDFULL$1 = (*RDFULL$1 & -512) | 3;
	}
	label$50:;
	fb$result$1 = -1;
	label$48:;
	return fb$result$1;
}

static void HCHECKENUMOPS( struct $7ASTNODE* L$1, $12FB_DATACLASS LDCLASS$1, struct $7ASTNODE* R$1, $12FB_DATACLASS RDCLASS$1 )
{
	label$56:;
	if( (*(int32*)((uint8*)L$1 + 4) & 511) == (*(int32*)((uint8*)R$1 + 4) & 511) ) goto label$59;
	{
		if( (-(LDCLASS$1 != 0) | -(RDCLASS$1 != 0)) == 0 ) goto label$61;
		{
			ERRREPORTWARN( 5, (uint8*)0u, 1, (uint8*)0u );
		}
		label$61:;
		label$60:;
	}
	label$59:;
	label$58:;
	label$57:;
}

static int32 HCHECKCONSTANDPOINTEROPS( struct $7ASTNODE* L$1, $11FB_DATATYPE LDTYPE$1, struct $7ASTNODE* R$1, $11FB_DATATYPE RDTYPE$1 )
{
	int32 TMP$87$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	fb$result$1 = 0;
	TMP$87$1 = 0;
	int32 vr$4 = SYMBCHECKCONSTASSIGNTOPLEVEL( LDTYPE$1, RDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), *(struct $8FBSYMBOL**)((uint8*)R$1 + 8), 0, &TMP$87$1 );
	if( vr$4 != 0 ) goto label$65;
	{
		ERRREPORT( 181, -1, (uint8*)0u );
		goto label$63;
	}
	label$65:;
	label$64:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$67;
	{
		int32 TMP$88$2;
		if( (RDTYPE$1 & 480) == 0 ) goto label$68;
		TMP$88$2 = 24;
		goto label$293;
		label$68:;
		TMP$88$2 = RDTYPE$1 & 31;
		label$293:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$2 * 28)) != 1 ) goto label$70;
		{
			goto label$63;
		}
		label$70:;
		label$69:;
		int32 vr$10 = ASTPTRCHECK( LDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), 1, R$1 );
		if( vr$10 != 0 ) goto label$72;
		{
			if( (-((LDTYPE$1 & 31) == 20) & -((RDTYPE$1 & 31) == 20)) == 0 ) goto label$74;
			{
				int32 vr$18 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), *(struct $8FBSYMBOL**)((uint8*)R$1 + 8) );
				if( vr$18 <= 0 ) goto label$76;
				{
					ERRREPORT( 181, -1, (uint8*)0u );
					goto label$63;
				}
				label$76:;
				label$75:;
			}
			label$74:;
			label$73:;
			int32 vr$21 = ASTCHECKCONV( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1 );
			if( vr$21 == 0 ) goto label$78;
			{
				ERRREPORTWARN( 4, (uint8*)0u, 1, (uint8*)0u );
			}
			label$78:;
			label$77:;
		}
		label$72:;
		label$71:;
	}
	goto label$66;
	label$67:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$79;
	{
		int32 TMP$89$2;
		if( (LDTYPE$1 & 480) == 0 ) goto label$80;
		TMP$89$2 = 24;
		goto label$294;
		label$80:;
		TMP$89$2 = LDTYPE$1 & 31;
		label$294:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 28)) != 1 ) goto label$82;
		{
			goto label$63;
		}
		label$82:;
		label$81:;
		ERRREPORTWARN( 5, (uint8*)0u, 1, (uint8*)0u );
	}
	label$79:;
	label$66:;
	fb$result$1 = -1;
	label$63:;
	return fb$result$1;
}

static struct $7ASTNODE* HSHALLOWCOPY( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, int32 OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$147:;
	struct $7ASTNODE* T$1;
	int64 OFFSET$1;
	int64 BYTESTOCOPY$1;
	int32 HAS_VPTR$1;
	BYTESTOCOPY$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) + 40);
	HAS_VPTR$1 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) + 12) & 4194304) != 0);
	struct $7ASTNODE* vr$7 = ASTREMOVENOCONVCAST( L$1 );
	L$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTREMOVENOCONVCAST( R$1 );
	R$1 = vr$8;
	if( HAS_VPTR$1 == 0 ) goto label$150;
	{
		BYTESTOCOPY$1 = BYTESTOCOPY$1 - (int64)*(int32*)((uint8*)&ENV$ + 296);
		if( BYTESTOCOPY$1 != 0ll ) goto label$152;
		{
			T$1 = (struct $7ASTNODE*)0u;
			int32 vr$11 = ASTHASSIDEFX( L$1 );
			if( vr$11 == 0 ) goto label$154;
			{
				struct $7ASTNODE* vr$13 = ASTREMSIDEFX( &L$1 );
				struct $7ASTNODE* vr$14 = ASTNEWLINK( T$1, vr$13, 0 );
				T$1 = vr$14;
			}
			label$154:;
			label$153:;
			int32 vr$15 = ASTHASSIDEFX( R$1 );
			if( vr$15 == 0 ) goto label$156;
			{
				struct $7ASTNODE* vr$17 = ASTREMSIDEFX( &R$1 );
				struct $7ASTNODE* vr$18 = ASTNEWLINK( T$1, vr$17, 0 );
				T$1 = vr$18;
			}
			label$156:;
			label$155:;
			ASTDELTREE( L$1 );
			ASTDELTREE( R$1 );
			if( T$1 != (struct $7ASTNODE*)0u ) goto label$158;
			{
				struct $7ASTNODE* vr$19 = ASTNEWNOP(  );
				T$1 = vr$19;
			}
			label$158:;
			label$157:;
			fb$result$1 = T$1;
			goto label$148;
		}
		label$152:;
		label$151:;
		struct $7ASTNODE* vr$21 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( L$1, (int64)*(int32*)((uint8*)&ENV$ + 296), 2, (struct $8FBSYMBOL*)0u, (struct $8FBSYMBOL*)0u );
		L$1 = vr$21;
		struct $7ASTNODE* vr$23 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( R$1, (int64)*(int32*)((uint8*)&ENV$ + 296), 2, (struct $8FBSYMBOL*)0u, (struct $8FBSYMBOL*)0u );
		R$1 = vr$23;
	}
	label$150:;
	label$149:;
	struct $7ASTNODE* vr$24 = ASTNEWMEM( 105, L$1, R$1, BYTESTOCOPY$1 );
	fb$result$1 = vr$24;
	label$148:;
	return fb$result$1;
}
