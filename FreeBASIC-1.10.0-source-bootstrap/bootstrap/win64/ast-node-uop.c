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
typedef int64 $13AST_NODECLASS;
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
typedef int64 $11FB_DATATYPE;
struct $8FBSYMBOL;
struct $7ASTNODE;
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
typedef int64 $9FB_ERRMSG;
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
typedef int64 (*tmp$41)( int64, int64 );
typedef int64 $15IRVREGTYPE_ENUM;
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
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
int32 fb_SGNl( int64 );
int32 fb_SGNDouble( double );
double fb_FIXDouble( double );
double fb_FRACd( double );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezuop( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTCONVERTRAWCONSTI( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int64 ASTGETINVERSELOGOP( int64 );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int64 ASTISRELATIONALBOP( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
int64 TYPETOSIGNED( int64 );
struct $7ASTNODE* RTLMATHUOP( int64, struct $7ASTNODE* );
static int64 HSGNLONGINT( int64 );
static struct $7ASTNODE* HCONSTUOP( int64, int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( int64 );
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
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
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
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 24 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 64 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int64 CTORCNT;
	int64 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 80 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 32 );
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int64 DOEMIT;
	int64 TYPEINICOUNT;
	int64 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int64 DTORLISTCOOKIES;
	int64 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int64 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 472 );
extern struct $6ASTCTX AST$;
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 16 );
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 16 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 24 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $10TSTACKNODE* TOS;
	int64 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 48 );
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 24 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint64 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 16 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int64 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 696 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 80 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 8 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 16 );
struct $7SYMBCTX {
	int64 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int64 CHAINPOOLHEAD;
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
	int64 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int64 FBARRAY_DATA;
	int64 FBARRAY_PTR;
	int64 FBARRAY_SIZE;
	int64 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int64 FBARRAYDIM_LBOUND;
	int64 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 199248 );
extern struct $7SYMBCTX SYMB$;
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

struct $7ASTNODE* ASTNEWUOP( int64 OP$1, struct $7ASTNODE* O$1 )
{
	int64 TMP$89$1;
	int64 TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$55:;
	struct $7ASTNODE* N$1;
	int64 DTYPE$1;
	int64 RANK$1;
	int64 INTRANK$1;
	int64 UINTRANK$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int64 DO_PROMOTE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( O$1 != (struct $7ASTNODE*)0ull ) goto label$58;
	{
		goto label$56;
	}
	label$58:;
	label$57:;
	if( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (3ll & 63ll))) + 198208ll) == (struct $8FBSYMBOL*)0ull ) goto label$60;
	{
		struct $8FBSYMBOL* PROC$2;
		$9FB_ERRMSG ERR_NUM$2;
		struct $8FBSYMBOL* vr$4 = SYMBFINDUOPOVLPROC( OP$1, O$1, &ERR_NUM$2 );
		PROC$2 = vr$4;
		if( PROC$2 == (struct $8FBSYMBOL*)0ull ) goto label$62;
		{
			struct $7ASTNODE* vr$5 = ASTBUILDCALL( PROC$2, O$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
			fb$result$1 = vr$5;
			goto label$56;
		}
		goto label$61;
		label$62:;
		{
			if( ERR_NUM$2 == 0ll ) goto label$64;
			{
				goto label$56;
			}
			label$64:;
			label$63:;
		}
		label$61:;
	}
	label$60:;
	label$59:;
	{
		if( OP$1 != 75ll ) goto label$66;
		label$67:;
		{
			struct $7ASTNODE* vr$8 = ASTNEWNODE( 4ll, *(int64*)((uint8*)O$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)O$1 + 16ll) );
			N$1 = vr$8;
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = O$1;
			*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = (struct $7ASTNODE*)0ull;
			*(int64*)((uint8*)N$1 + 40ll) = OP$1;
			*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = (struct $8FBSYMBOL*)0ull;
			*($9AST_OPOPT*)((uint8*)N$1 + 48ll) = 1ll;
			fb$result$1 = N$1;
			goto label$56;
		}
		goto label$65;
		label$66:;
		if( OP$1 != 73ll ) goto label$68;
		label$69:;
		{
			goto label$56;
		}
		label$68:;
		label$65:;
	}
	if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$70;
	TMP$89$1 = 24ll;
	goto label$142;
	label$70:;
	TMP$89$1 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
	label$142:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$1 * 56ll)) != 2ll ) goto label$72;
	{
		goto label$56;
	}
	label$72:;
	label$71:;
	{
		int64 TMP$90$2;
		uint64 TMP$91$2;
		if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$73;
		TMP$90$2 = 24ll;
		goto label$143;
		label$73:;
		TMP$90$2 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
		label$143:;
		TMP$91$2 = (uint64)TMP$90$2;
		goto label$75;
		label$76:;
		{
			if( *(int64*)O$1 == 20ll ) goto label$78;
			{
				goto label$56;
			}
			label$78:;
			label$77:;
		}
		goto label$74;
		label$79:;
		{
			struct $7ASTNODE* vr$26 = ASTNEWCONV( *(int64*)((uint8*)O$1 + 8ll) & -512ll, (struct $8FBSYMBOL*)0ull, O$1, 0ll, (int64*)0ull );
			O$1 = vr$26;
			if( O$1 != (struct $7ASTNODE*)0ull ) goto label$81;
			{
				goto label$56;
			}
			label$81:;
			label$80:;
		}
		goto label$74;
		label$82:;
		{
			struct $7ASTNODE* vr$30 = ASTNEWCONV( (*(int64*)((uint8*)O$1 + 8ll) & -512ll) | 8ll, (struct $8FBSYMBOL*)0ull, O$1, 0ll, (int64*)0ull );
			O$1 = vr$30;
		}
		goto label$74;
		label$83:;
		{
			goto label$56;
		}
		goto label$74;
		label$75:;
		static const void* tmp$104[21ll] = {
			&&label$76,
			&&label$74,
			&&label$74,
			&&label$76,
			&&label$74,
			&&label$74,
			&&label$82,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$79,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$83,
		};
		if( (TMP$91$2 - 4ull) > 20ull ) goto label$74;
		goto *tmp$104[TMP$91$2 - 4ull];
		label$74:;
	}
	if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$84;
	TMP$92$1 = 24ll;
	goto label$144;
	label$84:;
	TMP$92$1 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
	label$144:;
	DO_PROMOTE$1 = (int64)-(*(int64*)((uint8*)&ENV$ + 272ll) != 3ll) & (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$1 * 56ll)) == 0ll);
	if( (*(int64*)((uint8*)O$1 + 8ll) & 511ll) != 1ll ) goto label$86;
	{
		if( OP$1 != 52ll ) goto label$88;
		{
			DO_PROMOTE$1 = 0ll;
		}
		goto label$87;
		label$88:;
		{
			goto label$56;
		}
		label$87:;
	}
	label$86:;
	label$85:;
	if( DO_PROMOTE$1 == 0ll ) goto label$90;
	{
		int64 TMP$93$2;
		int64 TMP$94$2;
		int64 TMP$95$2;
		if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$91;
		TMP$93$2 = 24ll;
		goto label$145;
		label$91:;
		TMP$93$2 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
		label$145:;
		if( (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$2 * 56ll)) + 32ll) & 480ll) == 0ll ) goto label$93;
		TMP$95$2 = 24ll;
		goto label$146;
		label$93:;
		if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$92;
		TMP$94$2 = 24ll;
		goto label$147;
		label$92:;
		TMP$94$2 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
		label$147:;
		TMP$95$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$2 * 56ll)) + 32ll) & 31ll;
		label$146:;
		RANK$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$2 * 56ll)) + 24ll);
		INTRANK$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 472ll);
		UINTRANK$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 528ll);
		if( RANK$1 >= INTRANK$1 ) goto label$95;
		{
			struct $7ASTNODE* vr$57 = ASTNEWCONV( (*(int64*)((uint8*)O$1 + 8ll) & -512ll) | 8ll, (struct $8FBSYMBOL*)0ull, O$1, 0ll, (int64*)0ull );
			O$1 = vr$57;
		}
		goto label$94;
		label$95:;
		{
			if( ((int64)-(INTRANK$1 < RANK$1) & (int64)-(RANK$1 < UINTRANK$1)) == 0ll ) goto label$97;
			{
				struct $7ASTNODE* vr$64 = ASTNEWCONV( (*(int64*)((uint8*)O$1 + 8ll) & -512ll) | 9ll, (struct $8FBSYMBOL*)0ull, O$1, 0ll, (int64*)0ull );
				O$1 = vr$64;
			}
			label$97:;
			label$96:;
		}
		label$94:;
	}
	label$90:;
	label$89:;
	DTYPE$1 = *(int64*)((uint8*)O$1 + 8ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)O$1 + 16ll);
	{
		uint64 TMP$96$2;
		TMP$96$2 = (uint64)OP$1;
		goto label$99;
		label$100:;
		{
			int64 TMP$97$3;
			if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$101;
			TMP$97$3 = 24ll;
			goto label$148;
			label$101:;
			TMP$97$3 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
			label$148:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$3 * 56ll)) == 0ll ) goto label$103;
			{
				struct $7ASTNODE* vr$75 = ASTNEWCONV( (*(int64*)((uint8*)O$1 + 8ll) & -512ll) | 8ll, (struct $8FBSYMBOL*)0ull, O$1, 0ll, (int64*)0ull );
				O$1 = vr$75;
				DTYPE$1 = *(int64*)((uint8*)O$1 + 8ll);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)O$1 + 16ll);
			}
			label$103:;
			label$102:;
		}
		goto label$98;
		label$104:;
		{
			int64 TMP$98$3;
			if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$105;
			TMP$98$3 = 24ll;
			goto label$149;
			label$105:;
			TMP$98$3 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
			label$149:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$3 * 56ll)) != 0ll ) goto label$107;
			{
				int64 vr$83 = TYPETOSIGNED( DTYPE$1 );
				DTYPE$1 = vr$83;
			}
			label$107:;
			label$106:;
		}
		goto label$98;
		label$108:;
		{
			int64 TMP$99$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$109;
			TMP$99$3 = 24ll;
			goto label$150;
			label$109:;
			TMP$99$3 = DTYPE$1 & 31ll;
			label$150:;
			if( ~(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$3 * 56ll)) + 16ll)) == 0ll ) goto label$111;
			{
				if( *(int64*)O$1 != 16ll ) goto label$113;
				{
					if( *(int64*)((uint8*)&AST$ + 464ll) != 0ll ) goto label$115;
					{
						int64 TMP$100$6;
						if( (DTYPE$1 & 480ll) == 0ll ) goto label$116;
						TMP$100$6 = 24ll;
						goto label$151;
						label$116:;
						TMP$100$6 = DTYPE$1 & 31ll;
						label$151:;
						if( *(uint64*)((uint8*)O$1 + 40ll) <= (1ull << (((*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$6 * 56ll)) + 8ll) << (3ll & 63ll)) + -1ll) & 63ll)) ) goto label$118;
						{
							ERRREPORTWARN( 5ll, (uint8*)0ull, 1ll, (uint8*)0ull );
						}
						label$118:;
						label$117:;
					}
					label$115:;
					label$114:;
				}
				label$113:;
				label$112:;
				int64 vr$96 = TYPETOSIGNED( DTYPE$1 );
				DTYPE$1 = vr$96;
			}
			label$111:;
			label$110:;
		}
		goto label$98;
		label$119:;
		{
			int64 TMP$101$3;
			if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$120;
			TMP$101$3 = 24ll;
			goto label$152;
			label$120:;
			TMP$101$3 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
			label$152:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$3 * 56ll)) == 1ll ) goto label$122;
			{
				struct $7ASTNODE* vr$105 = ASTNEWCONV( (*(int64*)((uint8*)O$1 + 8ll) & -512ll) | 16ll, (struct $8FBSYMBOL*)0ull, O$1, 0ll, (int64*)0ull );
				O$1 = vr$105;
				DTYPE$1 = *(int64*)((uint8*)O$1 + 8ll);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)O$1 + 16ll);
			}
			label$122:;
			label$121:;
		}
		goto label$98;
		label$123:;
		{
			int64 TMP$102$3;
			if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$124;
			TMP$102$3 = 24ll;
			goto label$153;
			label$124:;
			TMP$102$3 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
			label$153:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$3 * 56ll)) != 0ll ) goto label$126;
			{
				struct $7ASTNODE* vr$113 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$114 = ASTNEWBOP( 28ll, O$1, vr$113, (struct $8FBSYMBOL*)0ull, 1ll );
				fb$result$1 = vr$114;
				goto label$56;
			}
			label$126:;
			label$125:;
		}
		goto label$98;
		label$127:;
		{
			int64 TMP$103$3;
			if( (*(int64*)((uint8*)O$1 + 8ll) & 480ll) == 0ll ) goto label$128;
			TMP$103$3 = 24ll;
			goto label$154;
			label$128:;
			TMP$103$3 = *(int64*)((uint8*)O$1 + 8ll) & 31ll;
			label$154:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$3 * 56ll)) != 0ll ) goto label$130;
			{
				struct $7ASTNODE* vr$120 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$121 = ASTNEWBOP( 34ll, O$1, vr$120, (struct $8FBSYMBOL*)0ull, 1ll );
				fb$result$1 = vr$121;
				goto label$56;
			}
			label$130:;
			label$129:;
		}
		goto label$98;
		label$131:;
		{
			fb$result$1 = O$1;
			goto label$56;
		}
		goto label$98;
		label$99:;
		static const void* tmp$105[21ll] = {
			&&label$100,
			&&label$131,
			&&label$108,
			&&label$98,
			&&label$98,
			&&label$104,
			&&label$119,
			&&label$119,
			&&label$119,
			&&label$119,
			&&label$119,
			&&label$119,
			&&label$98,
			&&label$119,
			&&label$98,
			&&label$98,
			&&label$119,
			&&label$119,
			&&label$123,
			&&label$123,
			&&label$127,
		};
		if( (TMP$96$2 - 52ull) > 20ull ) goto label$98;
		goto *tmp$105[TMP$96$2 - 52ull];
		label$98:;
	}
	if( *(int64*)O$1 != 16ll ) goto label$133;
	{
		struct $7ASTNODE* vr$123 = HCONSTUOP( OP$1, DTYPE$1, SUBTYPE$1, O$1 );
		O$1 = vr$123;
		*(int64*)((uint8*)O$1 + 8ll) = DTYPE$1;
		fb$result$1 = O$1;
		goto label$56;
	}
	label$133:;
	label$132:;
	if( OP$1 != 52ll ) goto label$135;
	{
		int64 vr$125 = ASTISRELATIONALBOP( O$1 );
		if( vr$125 == 0ll ) goto label$137;
		{
			int64 vr$127 = ASTGETINVERSELOGOP( *(int64*)((uint8*)O$1 + 40ll) );
			*(int64*)((uint8*)O$1 + 40ll) = vr$127;
			fb$result$1 = O$1;
			goto label$56;
		}
		label$137:;
		label$136:;
	}
	label$135:;
	label$134:;
	if( (*(int64*)((uint8*)&IR$ + 544ll) & 131072ll) == 0ll ) goto label$139;
	{
		int64 vr$130 = (*(tmp$41*)((uint8*)&IR$ + 40ll))( OP$1, DTYPE$1 );
		if( vr$130 != 0ll ) goto label$141;
		{
			struct $7ASTNODE* vr$131 = RTLMATHUOP( OP$1, O$1 );
			fb$result$1 = vr$131;
			goto label$56;
		}
		label$141:;
		label$140:;
	}
	label$139:;
	label$138:;
	struct $7ASTNODE* vr$132 = ASTNEWNODE( 4ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$132;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = O$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = (struct $7ASTNODE*)0ull;
	*(int64*)((uint8*)N$1 + 40ll) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = (struct $8FBSYMBOL*)0ull;
	*($9AST_OPOPT*)((uint8*)N$1 + 48ll) = 1ll;
	fb$result$1 = N$1;
	label$56:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADUOP( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$155:;
	struct $7ASTNODE* O$1;
	int64 OP$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* VR$1;
	O$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	OP$1 = *(int64*)((uint8*)N$1 + 40ll);
	if( O$1 != (struct $7ASTNODE*)0ull ) goto label$158;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$156;
	}
	label$158:;
	label$157:;
	if( *(int64*)O$1 != 5ll ) goto label$160;
	{
		ASTUPDATECONVFD2FS( O$1, *(int64*)((uint8*)N$1 + 8ll), -1ll );
	}
	label$160:;
	label$159:;
	struct $6IRVREG* vr$5 = ASTLOAD( O$1 );
	V1$1 = vr$5;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$162;
	{
		if( (*(int64*)((uint8*)N$1 + 48ll) & 1ll) == 0ll ) goto label$164;
		{
			struct $6IRVREG* vr$10 = (*(tmp$69*)((uint8*)&IR$ + 448ll))( *(int64*)((uint8*)O$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)O$1 + 16ll) );
			VR$1 = vr$10;
			*(int64*)((uint8*)V1$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
			*(int64*)((uint8*)VR$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
		}
		goto label$163;
		label$164:;
		{
			VR$1 = (struct $6IRVREG*)0ull;
			*(int64*)((uint8*)V1$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
		}
		label$163:;
		(*(tmp$52*)((uint8*)&IR$ + 192ll))( OP$1, V1$1, VR$1 );
		if( VR$1 != (struct $6IRVREG*)0ull ) goto label$166;
		{
			VR$1 = V1$1;
		}
		label$166:;
		label$165:;
	}
	label$162:;
	label$161:;
	ASTDELNODE( O$1 );
	fb$result$1 = VR$1;
	label$156:;
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

static int64 HSGNLONGINT( int64 X$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( X$1 != 0ll ) goto label$13;
	{
		fb$result$1 = 0ll;
	}
	goto label$12;
	label$13:;
	if( X$1 <= 0ll ) goto label$14;
	{
		fb$result$1 = 1ll;
	}
	goto label$12;
	label$14:;
	{
		fb$result$1 = -1ll;
	}
	label$12:;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONSTUOP( int64 OP$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	int64 TMP$84$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$15:;
	double D$1;
	int64 I$1;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$17;
	TMP$84$1 = 24ll;
	goto label$167;
	label$17:;
	TMP$84$1 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
	label$167:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$84$1 * 56ll)) != 1ll ) goto label$19;
	{
		D$1 = *(double*)((uint8*)L$1 + 40ll);
		{
			uint64 TMP$85$3;
			TMP$85$3 = (uint64)OP$1;
			goto label$21;
			label$22:;
			{
				D$1 = -D$1;
			}
			goto label$20;
			label$23:;
			{
				D$1 = __builtin_fabs( D$1 );
			}
			goto label$20;
			label$24:;
			{
				int32 vr$9 = fb_SGNDouble( D$1 );
				D$1 = (double)vr$9;
			}
			goto label$20;
			label$25:;
			{
				D$1 = __builtin_sin( D$1 );
			}
			goto label$20;
			label$26:;
			{
				D$1 = __builtin_asin( D$1 );
			}
			goto label$20;
			label$27:;
			{
				D$1 = __builtin_cos( D$1 );
			}
			goto label$20;
			label$28:;
			{
				D$1 = __builtin_acos( D$1 );
			}
			goto label$20;
			label$29:;
			{
				D$1 = __builtin_tan( D$1 );
			}
			goto label$20;
			label$30:;
			{
				D$1 = __builtin_atan( D$1 );
			}
			goto label$20;
			label$31:;
			{
				D$1 = __builtin_sqrt( D$1 );
			}
			goto label$20;
			label$32:;
			{
				D$1 = __builtin_log( D$1 );
			}
			goto label$20;
			label$33:;
			{
				D$1 = __builtin_exp( D$1 );
			}
			goto label$20;
			label$34:;
			{
				D$1 = __builtin_floor( D$1 );
			}
			goto label$20;
			label$35:;
			{
				double vr$21 = fb_FIXDouble( D$1 );
				D$1 = vr$21;
			}
			goto label$20;
			label$36:;
			{
				double vr$22 = fb_FRACd( D$1 );
				D$1 = vr$22;
			}
			goto label$20;
			label$37:;
			{
			}
			goto label$20;
			label$21:;
			static const void* tmp$106[19ll] = {
				&&label$22,
				&&label$37,
				&&label$23,
				&&label$24,
				&&label$25,
				&&label$26,
				&&label$27,
				&&label$28,
				&&label$29,
				&&label$30,
				&&label$37,
				&&label$31,
				&&label$37,
				&&label$37,
				&&label$32,
				&&label$33,
				&&label$34,
				&&label$35,
				&&label$36,
			};
			if( (TMP$85$3 - 54ull) > 18ull ) goto label$37;
			goto *tmp$106[TMP$85$3 - 54ull];
			label$20:;
		}
		*(double*)((uint8*)L$1 + 40ll) = D$1;
	}
	goto label$18;
	label$19:;
	{
		int64 TMP$86$2;
		I$1 = *(int64*)((uint8*)L$1 + 40ll);
		if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$38;
		TMP$86$2 = 24ll;
		goto label$168;
		label$38:;
		TMP$86$2 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
		label$168:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$86$2 * 56ll)) + 8ll) != 8ll ) goto label$40;
		{
			{
				uint64 TMP$87$4;
				TMP$87$4 = (uint64)OP$1;
				goto label$42;
				label$43:;
				{
					I$1 = ~I$1;
				}
				goto label$41;
				label$44:;
				{
					I$1 = -I$1;
				}
				goto label$41;
				label$45:;
				{
					I$1 = __builtin_llabs( I$1 );
				}
				goto label$41;
				label$46:;
				{
					int64 vr$33 = HSGNLONGINT( I$1 );
					I$1 = vr$33;
				}
				goto label$41;
				label$47:;
				{
				}
				goto label$41;
				label$42:;
				static const void* tmp$107[6ll] = {
					&&label$43,
					&&label$47,
					&&label$44,
					&&label$47,
					&&label$45,
					&&label$46,
				};
				if( (TMP$87$4 - 52ull) > 5ull ) goto label$47;
				goto *tmp$107[TMP$87$4 - 52ull];
				label$41:;
			}
		}
		goto label$39;
		label$40:;
		{
			{
				uint64 TMP$88$4;
				TMP$88$4 = (uint64)OP$1;
				goto label$49;
				label$50:;
				{
					I$1 = ~(int64)(int32)I$1;
				}
				goto label$48;
				label$51:;
				{
					I$1 = -(int64)(int32)I$1;
				}
				goto label$48;
				label$52:;
				{
					I$1 = __builtin_llabs( (int64)(int32)I$1 );
				}
				goto label$48;
				label$53:;
				{
					int32 vr$45 = fb_SGNl( (int64)(int32)I$1 );
					I$1 = (int64)vr$45;
				}
				goto label$48;
				label$54:;
				{
				}
				goto label$48;
				label$49:;
				static const void* tmp$108[6ll] = {
					&&label$50,
					&&label$54,
					&&label$51,
					&&label$54,
					&&label$52,
					&&label$53,
				};
				if( (TMP$88$4 - 52ull) > 5ull ) goto label$54;
				goto *tmp$108[TMP$88$4 - 52ull];
				label$48:;
			}
		}
		label$39:;
		*(int64*)((uint8*)L$1 + 40ll) = I$1;
		struct $7ASTNODE* vr$48 = ASTCONVERTRAWCONSTI( DTYPE$1, SUBTYPE$1, L$1 );
		L$1 = vr$48;
	}
	label$18:;
	fb$result$1 = L$1;
	label$16:;
	return fb$result$1;
}
