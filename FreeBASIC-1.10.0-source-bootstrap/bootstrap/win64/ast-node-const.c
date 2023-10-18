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
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint16* fb_WstrAssign( uint16*, int64, uint16* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_BoolToStr( boolean );
uint16* fb_BoolToWstr( boolean );
FBSTRING* fb_LongintToStr( int64 );
uint16* fb_LongintToWstr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
uint16* fb_ULongintToWstr( uint64 );
FBSTRING* fb_FloatToStr( float );
uint16* fb_FloatToWstr( float );
FBSTRING* fb_DoubleToStr( double );
uint16* fb_DoubleToWstr( double );
static void fb_ctor__astznodezconst( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONST( union $7FBVALUE*, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTWSTR( uint16* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int64 );
struct $7ASTNODE* ASTNEWCONSTZ( int64, struct $8FBSYMBOL* );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int64, struct $8FBSYMBOL*, int64, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint16*, int64 );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTINITABLEFIELD( struct $8FBSYMBOL* );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
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

int64 ASTCONSTEQZERO( struct $7ASTNODE* N$1 )
{
	int64 TMP$83$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$12;
	TMP$83$1 = 24ll;
	goto label$15;
	label$12:;
	TMP$83$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$15:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$83$1 * 56ll)) != 1ll ) goto label$14;
	{
		fb$result$1 = (int64)-(*(double*)((uint8*)N$1 + 40ll) == 0x0p+0);
	}
	goto label$13;
	label$14:;
	{
		fb$result$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 0ll);
	}
	label$13:;
	label$11:;
	return fb$result$1;
}

int64 ASTCONSTGEZERO( struct $7ASTNODE* N$1 )
{
	int64 TMP$84$1;
	int64 TMP$85$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$18;
	TMP$84$1 = 24ll;
	goto label$23;
	label$18:;
	TMP$84$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$23:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$84$1 * 56ll)) != 1ll ) goto label$20;
	{
		fb$result$1 = (int64)-(*(double*)((uint8*)N$1 + 40ll) >= 0x0p+0);
	}
	goto label$19;
	label$20:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$22;
	TMP$85$1 = 24ll;
	goto label$24;
	label$22:;
	TMP$85$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$24:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$85$1 * 56ll)) + 16ll) == 0ll ) goto label$21;
	{
		fb$result$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) >= 0ll);
	}
	goto label$19;
	label$21:;
	{
		fb$result$1 = -1ll;
	}
	label$19:;
	label$17:;
	return fb$result$1;
}

int64 ASTISCONST0ORMINUS1( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$25:;
	if( *(int64*)N$1 != 16ll ) goto label$28;
	{
		int64 VALUE$2;
		int64 vr$2 = ASTCONSTGETASINT64( N$1 );
		VALUE$2 = vr$2;
		if( ((int64)-(VALUE$2 == 0ll) | (int64)-(VALUE$2 == -1ll)) == 0ll ) goto label$30;
		{
			fb$result$1 = -1ll;
			goto label$26;
		}
		label$30:;
		label$29:;
	}
	label$28:;
	label$27:;
	fb$result$1 = 0ll;
	goto label$26;
	label$26:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTSTR( uint8* V$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$31:;
	struct $8FBSYMBOL* TC$1;
	struct $8FBSYMBOL* vr$1 = SYMBALLOCSTRCONST( V$1, -1ll );
	TC$1 = vr$1;
	if( TC$1 != (struct $8FBSYMBOL*)0ull ) goto label$34;
	{
		goto label$32;
	}
	label$34:;
	label$33:;
	struct $7ASTNODE* vr$2 = ASTNEWVAR( TC$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$2;
	label$32:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTWSTR( uint16* V$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$35:;
	struct $8FBSYMBOL* TC$1;
	struct $8FBSYMBOL* vr$1 = SYMBALLOCWSTRCONST( V$1, -1ll );
	TC$1 = vr$1;
	if( TC$1 != (struct $8FBSYMBOL*)0ull ) goto label$38;
	{
		goto label$36;
	}
	label$38:;
	label$37:;
	struct $7ASTNODE* vr$2 = ASTNEWVAR( TC$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$2;
	label$36:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTI( int64 VALUE$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$39:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 16ll, 13ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 40ll) = VALUE$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, N$1, 8ll, (int64*)0ull );
	N$1 = vr$3;
	fb$result$1 = N$1;
	label$40:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONSTF( double VALUE$1, int64 DTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$41:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 16ll, 16ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(double*)((uint8*)N$1 + 40ll) = VALUE$1;
	struct $7ASTNODE* vr$3 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0ull, N$1, 0ll, (int64*)0ull );
	fb$result$1 = vr$3;
	label$42:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONST( union $7FBVALUE* V$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 TMP$86$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$43:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$45;
	TMP$86$1 = 24ll;
	goto label$48;
	label$45:;
	TMP$86$1 = DTYPE$1 & 31ll;
	label$48:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$86$1 * 56ll)) != 1ll ) goto label$47;
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

struct $7ASTNODE* ASTNEWCONSTZ( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$49:;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* FLD$1;
	{
		uint64 TMP$87$2;
		TMP$87$2 = (uint64)(DTYPE$1 & 511ll);
		goto label$52;
		label$53:;
		{
			struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$2;
		}
		goto label$51;
		label$54:;
		{
			struct $7ASTNODE* vr$3 = ASTNEWCONSTSTR( (uint8*)0ull );
			fb$result$1 = vr$3;
		}
		goto label$51;
		label$55:;
		{
			struct $7ASTNODE* vr$4 = ASTNEWCONSTWSTR( (uint16*)0ull );
			fb$result$1 = vr$4;
		}
		goto label$51;
		label$56:;
		{
			struct $7ASTNODE* vr$5 = ASTTYPEINIBEGIN( 20ll, SUBTYPE$1, -1ll, 0ll );
			TREE$1 = vr$5;
			ASTTYPEINISCOPEBEGIN( TREE$1, (struct $8FBSYMBOL*)0ull, 0ll );
			struct $8FBSYMBOL* vr$6 = SYMBUDTGETFIRSTFIELD( SUBTYPE$1 );
			FLD$1 = vr$6;
			label$57:;
			if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$58;
			{
				struct $7ASTNODE* vr$9 = ASTNEWCONSTZ( *(int64*)((uint8*)FLD$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
				ASTTYPEINIADDASSIGN( TREE$1, vr$9, FLD$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
				struct $8FBSYMBOL* vr$10 = SYMBUDTGETNEXTINITABLEFIELD( FLD$1 );
				FLD$1 = vr$10;
			}
			goto label$57;
			label$58:;
			ASTTYPEINISCOPEEND( TREE$1, (struct $8FBSYMBOL*)0ull );
			ASTTYPEINIEND( TREE$1, 0ll );
			fb$result$1 = TREE$1;
		}
		goto label$51;
		label$59:;
		{
			int64 TMP$88$3;
			if( DTYPE$1 != 2147483648ll ) goto label$61;
			{
				DTYPE$1 = 8ll;
			}
			label$61:;
			label$60:;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$62;
			TMP$88$3 = 24ll;
			goto label$65;
			label$62:;
			TMP$88$3 = DTYPE$1 & 31ll;
			label$65:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$3 * 56ll)) != 1ll ) goto label$64;
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
		static const void* tmp$89[21ll] = {
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
		if( TMP$87$2 > 20ull ) goto label$59;
		goto *tmp$89[TMP$87$2 - 0ull];
		label$51:;
	}
	label$50:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADCONST( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	int64 DTYPE$1;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$69;
	{
		int64 TMP$90$2;
		DTYPE$1 = *(int64*)((uint8*)N$1 + 8ll) & 511ll;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$70;
		TMP$90$2 = 24ll;
		goto label$73;
		label$70:;
		TMP$90$2 = DTYPE$1 & 31ll;
		label$73:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$90$2 * 56ll)) != 1ll ) goto label$72;
		{
			struct $6IRVREG* vr$8 = (*(tmp$71*)((uint8*)&IR$ + 464ll))( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), *(double*)((uint8*)N$1 + 40ll) );
			fb$result$1 = vr$8;
		}
		goto label$71;
		label$72:;
		{
			struct $6IRVREG* vr$11 = (*(tmp$70*)((uint8*)&IR$ + 456ll))( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), *(int64*)((uint8*)N$1 + 40ll) );
			fb$result$1 = vr$11;
		}
		label$71:;
	}
	label$69:;
	label$68:;
	label$67:;
	return fb$result$1;
}

int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE* N$1, int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$74:;
	struct $7ASTNODE* vr$1 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0ull, N$1, 0ll, (int64*)0ull );
	N$1 = vr$1;
	fb$result$1 = *(int64*)((uint8*)N$1 + 40ll);
	ASTDELNODE( N$1 );
	label$75:;
	return fb$result$1;
}

FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* N$1 )
{
	int64 TMP$91$1;
	int64 TMP$92$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$76:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$78;
	TMP$91$1 = 24ll;
	goto label$86;
	label$78:;
	TMP$91$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$86:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$1 * 56ll)) != 1ll ) goto label$80;
	{
		if( (*(int64*)((uint8*)N$1 + 8ll) & 511ll) != 16ll ) goto label$82;
		{
			FBSTRING* vr$9 = fb_DoubleToStr( *(double*)((uint8*)N$1 + 40ll) );
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$9, -1ll, 0 );
		}
		goto label$81;
		label$82:;
		{
			FBSTRING* vr$13 = fb_FloatToStr( (float)*(double*)((uint8*)N$1 + 40ll) );
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$13, -1ll, 0 );
		}
		label$81:;
	}
	goto label$79;
	label$80:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 511ll) != 1ll ) goto label$83;
	{
		FBSTRING* vr$19 = fb_BoolToStr( (boolean)(*(int64*)((uint8*)N$1 + 40ll) != 0ll) );
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$19, -1ll, 0 );
	}
	goto label$79;
	label$83:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$85;
	TMP$92$1 = 24ll;
	goto label$87;
	label$85:;
	TMP$92$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$87:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$1 * 56ll)) + 16ll) == 0ll ) goto label$84;
	{
		FBSTRING* vr$27 = fb_LongintToStr( *(int64*)((uint8*)N$1 + 40ll) );
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$27, -1ll, 0 );
	}
	goto label$79;
	label$84:;
	{
		FBSTRING* vr$30 = fb_ULongintToStr( *(uint64*)((uint8*)N$1 + 40ll) );
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$30, -1ll, 0 );
	}
	label$79:;
	ASTDELNODE( N$1 );
	label$77:;
	FBSTRING* vr$33 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$33;
}

uint16* ASTCONSTFLUSHTOWSTR( struct $7ASTNODE* N$1 )
{
	int64 TMP$93$1;
	int64 TMP$97$1;
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$88:;
	static uint16 W$1[65];
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$90;
	TMP$93$1 = 24ll;
	goto label$98;
	label$90:;
	TMP$93$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$98:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$1 * 56ll)) != 1ll ) goto label$92;
	{
		if( (*(int64*)((uint8*)N$1 + 8ll) & 511ll) != 16ll ) goto label$94;
		{
			uint16* TMP$94$3;
			uint16* vr$9 = fb_DoubleToWstr( *(double*)((uint8*)N$1 + 40ll) );
			TMP$94$3 = vr$9;
			fb_WstrAssign( (uint16*)W$1, 65ll, (uint16*)TMP$94$3 );
			fb_WstrDelete( (uint16*)TMP$94$3 );
		}
		goto label$93;
		label$94:;
		{
			uint16* TMP$95$3;
			uint16* vr$12 = fb_FloatToWstr( (float)*(double*)((uint8*)N$1 + 40ll) );
			TMP$95$3 = vr$12;
			fb_WstrAssign( (uint16*)W$1, 65ll, (uint16*)TMP$95$3 );
			fb_WstrDelete( (uint16*)TMP$95$3 );
		}
		label$93:;
	}
	goto label$91;
	label$92:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 511ll) != 1ll ) goto label$95;
	{
		uint16* TMP$96$2;
		uint16* vr$17 = fb_BoolToWstr( (boolean)(*(int64*)((uint8*)N$1 + 40ll) != 0ll) );
		TMP$96$2 = vr$17;
		fb_WstrAssign( (uint16*)W$1, 65ll, (uint16*)TMP$96$2 );
		fb_WstrDelete( (uint16*)TMP$96$2 );
	}
	goto label$91;
	label$95:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$97;
	TMP$97$1 = 24ll;
	goto label$99;
	label$97:;
	TMP$97$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$99:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$1 * 56ll)) + 16ll) == 0ll ) goto label$96;
	{
		uint16* TMP$98$2;
		uint16* vr$24 = fb_LongintToWstr( *(int64*)((uint8*)N$1 + 40ll) );
		TMP$98$2 = vr$24;
		fb_WstrAssign( (uint16*)W$1, 65ll, (uint16*)TMP$98$2 );
		fb_WstrDelete( (uint16*)TMP$98$2 );
	}
	goto label$91;
	label$96:;
	{
		uint16* TMP$99$2;
		uint16* vr$26 = fb_ULongintToWstr( *(uint64*)((uint8*)N$1 + 40ll) );
		TMP$99$2 = vr$26;
		fb_WstrAssign( (uint16*)W$1, 65ll, (uint16*)TMP$99$2 );
		fb_WstrDelete( (uint16*)TMP$99$2 );
	}
	label$91:;
	ASTDELNODE( N$1 );
	fb$result$1 = (uint16*)W$1;
	label$89:;
	return fb$result$1;
}

int64 ASTCONSTGETASINT64( struct $7ASTNODE* N$1 )
{
	int64 TMP$100$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$100:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$102;
	TMP$100$1 = 24ll;
	goto label$105;
	label$102:;
	TMP$100$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$105:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$1 * 56ll)) != 1ll ) goto label$104;
	{
		fb$result$1 = fb_D2L( *(double*)((uint8*)N$1 + 40ll) );
	}
	goto label$103;
	label$104:;
	{
		fb$result$1 = *(int64*)((uint8*)N$1 + 40ll);
	}
	label$103:;
	label$101:;
	return fb$result$1;
}

double ASTCONSTGETASDOUBLE( struct $7ASTNODE* N$1 )
{
	int64 TMP$101$1;
	int64 TMP$102$1;
	double fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$106:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$108;
	TMP$101$1 = 24ll;
	goto label$113;
	label$108:;
	TMP$101$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$113:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$1 * 56ll)) != 1ll ) goto label$110;
	{
		fb$result$1 = *(double*)((uint8*)N$1 + 40ll);
	}
	goto label$109;
	label$110:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$112;
	TMP$102$1 = 24ll;
	goto label$114;
	label$112:;
	TMP$102$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$114:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$1 * 56ll)) + 16ll) == 0ll ) goto label$111;
	{
		fb$result$1 = (double)*(int64*)((uint8*)N$1 + 40ll);
	}
	goto label$109;
	label$111:;
	{
		fb$result$1 = (double)*(uint64*)((uint8*)N$1 + 40ll);
	}
	label$109:;
	label$107:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDCONST( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$115:;
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
	{
		int64 TMP$103$2;
		TMP$103$2 = DTYPE$1 & 511ll;
		if( TMP$103$2 == 4ll ) goto label$119;
		label$120:;
		if( TMP$103$2 != 7ll ) goto label$118;
		label$119:;
		{
			struct $7ASTNODE* vr$5 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$5;
		}
		goto label$117;
		label$118:;
		{
			struct $7ASTNODE* vr$8 = ASTNEWCONST( (union $7FBVALUE*)((uint8*)SYM$1 + 96ll), DTYPE$1, SUBTYPE$1 );
			fb$result$1 = vr$8;
		}
		label$121:;
		label$117:;
	}
	label$116:;
	return fb$result$1;
}

struct $7ASTNODE* ASTCONVERTRAWCONSTI( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	int64 TMP$104$1;
	$11FB_DATATYPE TMP$105$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$122:;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$124;
	TMP$104$1 = 24ll;
	goto label$126;
	label$124:;
	TMP$104$1 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
	label$126:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$1 * 56ll)) + 16ll) == 0ll ) goto label$125;
	TMP$105$1 = 13ll;
	goto label$127;
	label$125:;
	TMP$105$1 = 14ll;
	label$127:;
	*(int64*)((uint8*)L$1 + 8ll) = TMP$105$1;
	*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + 1ll;
	struct $7ASTNODE* vr$9 = ASTNEWCONV( DTYPE$1, SUBTYPE$1, L$1, 8ll, (int64*)0ull );
	L$1 = vr$9;
	*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + -1ll;
	fb$result$1 = L$1;
	label$123:;
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
