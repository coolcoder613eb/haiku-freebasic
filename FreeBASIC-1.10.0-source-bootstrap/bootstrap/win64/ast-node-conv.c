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
typedef int64 $11AST_CONVOPT;
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
typedef int64 $9FB_ERRMSG;
typedef int64 $13FB_WARNINGMSG;
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
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $14FB_SYMBFINDOPT;
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezconv( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
int64 ASTCONSTEQZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
void ASTCHECKCONST( int64, struct $7ASTNODE* );
int64 ASTCHECKCONVNONPTRTOPTR( int64, int64, struct $7ASTNODE*, $11AST_CONVOPT );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int64 SYMBCHECKCONSTASSIGN( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64*, $13FB_WARNINGMSG* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRTOVAL( struct $7ASTNODE*, int64 );
static void HCONSTCONV( int64, struct $7ASTNODE* );
static int64 HGETTYPEMISMATCHERRMSG( $11AST_CONVOPT );
static int64 HCHECKPTR( int64, struct $8FBSYMBOL*, int64, struct $7ASTNODE*, $11AST_CONVOPT );
static int64 ASTTRYOVLOPCASTCONV( struct $7ASTNODE**, int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT );
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

int64 ASTCHECKCONVNONPTRTOPTR( int64 TO_DTYPE$1, int64 EXPR_DTYPE$1, struct $7ASTNODE* EXPR$1, $11AST_CONVOPT OPTIONS$1 )
{
	int64 TMP$93$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	if( (EXPR_DTYPE$1 & 480ll) == 0ll ) goto label$68;
	TMP$93$1 = 24ll;
	goto label$78;
	label$68:;
	TMP$93$1 = EXPR_DTYPE$1 & 31ll;
	label$78:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$1 * 56ll)) != 0ll ) goto label$70;
	{
		int64 TMP$94$2;
		if( *(int64*)EXPR$1 != 16ll ) goto label$72;
		{
			int64 vr$5 = ASTCONSTEQZERO( EXPR$1 );
			if( vr$5 == 0ll ) goto label$74;
			{
				fb$result$1 = 0ll;
				goto label$67;
			}
			label$74:;
			label$73:;
		}
		label$72:;
		label$71:;
		if( (EXPR_DTYPE$1 & 480ll) == 0ll ) goto label$75;
		TMP$94$2 = 24ll;
		goto label$79;
		label$75:;
		TMP$94$2 = EXPR_DTYPE$1 & 31ll;
		label$79:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$2 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 592ll) ) goto label$77;
		{
			fb$result$1 = 0ll;
			goto label$67;
		}
		label$77:;
		label$76:;
	}
	label$70:;
	label$69:;
	int64 vr$9 = HGETTYPEMISMATCHERRMSG( OPTIONS$1 );
	fb$result$1 = vr$9;
	label$67:;
	return fb$result$1;
}

int64 ASTCHECKCONV( int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	int64 TMP$97$1;
	int64 TMP$98$1;
	int64 TMP$101$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$121:;
	int64 LDTYPE$1;
	fb$result$1 = 0ll;
	LDTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$123;
	TMP$97$1 = 24ll;
	goto label$143;
	label$123:;
	TMP$97$1 = TO_DTYPE$1 & 31ll;
	label$143:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$124;
	TMP$98$1 = 24ll;
	goto label$144;
	label$124:;
	TMP$98$1 = LDTYPE$1 & 31ll;
	label$144:;
	if( ((int64)-(TMP$97$1 == 20ll) | (int64)-(TMP$98$1 == 20ll)) == 0ll ) goto label$126;
	{
		int64 TMP$99$2;
		int64 TMP$100$2;
		if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$127;
		TMP$99$2 = 24ll;
		goto label$145;
		label$127:;
		TMP$99$2 = TO_DTYPE$1 & 31ll;
		label$145:;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$128;
		TMP$100$2 = 24ll;
		goto label$146;
		label$128:;
		TMP$100$2 = LDTYPE$1 & 31ll;
		label$146:;
		if( ((int64)-(TMP$99$2 == 20ll) & (int64)-(TMP$100$2 == 20ll)) == 0ll ) goto label$130;
		{
			int64 vr$17 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), TO_SUBTYPE$1 );
			fb$result$1 = (int64)-(vr$17 > 0ll);
		}
		label$130:;
		label$129:;
		goto label$122;
	}
	label$126:;
	label$125:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$131;
	TMP$101$1 = 24ll;
	goto label$147;
	label$131:;
	TMP$101$1 = LDTYPE$1 & 31ll;
	label$147:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$1 * 56ll)) != 2ll ) goto label$133;
	{
		goto label$122;
	}
	label$133:;
	label$132:;
	int64 vr$22 = HCHECKPTR( TO_DTYPE$1, TO_SUBTYPE$1, LDTYPE$1, L$1, 0ll );
	if( vr$22 == 0ll ) goto label$135;
	{
		goto label$122;
	}
	label$135:;
	label$134:;
	{
		int64 TMP$102$2;
		int64 TMP$103$2;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$136;
		TMP$102$2 = 24ll;
		goto label$148;
		label$136:;
		TMP$102$2 = LDTYPE$1 & 31ll;
		label$148:;
		TMP$103$2 = TMP$102$2;
		if( TMP$103$2 == 4ll ) goto label$139;
		label$140:;
		if( TMP$103$2 != 7ll ) goto label$138;
		label$139:;
		{
			if( *(int64*)L$1 == 20ll ) goto label$142;
			{
				goto label$122;
			}
			label$142:;
			label$141:;
		}
		label$138:;
		label$137:;
	}
	fb$result$1 = -1ll;
	label$122:;
	return fb$result$1;
}

int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$157:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* SYM$1;
	$9FB_ERRMSG ERR_NUM$1;
	int64 DTYPE$1;
	if( (*(int64*)((uint8*)*EXPR$1 + 8ll) & 511ll) != 20ll ) goto label$160;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 16ll);
		if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 131072ll) == 0ll ) goto label$162;
		{
			DTYPE$1 = 4ll;
		}
		goto label$161;
		label$162:;
		if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 65536ll) == 0ll ) goto label$163;
		{
			DTYPE$1 = 7ll;
		}
		goto label$161;
		label$163:;
		{
			DTYPE$1 = 0ll;
		}
		label$161:;
		if( DTYPE$1 == 0ll ) goto label$165;
		{
			struct $8FBSYMBOL* vr$14 = SYMBFINDCASTOVLPROC( DTYPE$1, (struct $8FBSYMBOL*)0ull, *EXPR$1, &ERR_NUM$1, 0ll );
			PROC$1 = vr$14;
			if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$167;
			{
				if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != DTYPE$1 ) goto label$169;
				{
					struct $7ASTNODE* vr$18 = ASTBUILDCALL( PROC$1, *EXPR$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
					*EXPR$1 = vr$18;
					fb$result$1 = -1ll;
					goto label$158;
				}
				label$169:;
				label$168:;
			}
			label$167:;
			label$166:;
		}
		label$165:;
		label$164:;
	}
	label$160:;
	label$159:;
	fb$result$1 = 0ll;
	goto label$158;
	label$158:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWCONV( int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1, $11AST_CONVOPT OPTIONS$1, int64* PERRMSG$1 )
{
	int64 TMP$104$1;
	int64 TMP$109$1;
	int64 TMP$114$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$170:;
	struct $7ASTNODE* N$1;
	int64 LDCLASS$1;
	int64 LDTYPE$1;
	int64 ERRMSG$1;
	int64 WRNMSG$1;
	int64 DOCONV$1;
	if( PERRMSG$1 == (int64*)0ull ) goto label$173;
	{
		*PERRMSG$1 = 0ll;
	}
	label$173:;
	label$172:;
	LDTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
	if( (LDTYPE$1 & 511ll) != (TO_DTYPE$1 & 511ll) ) goto label$175;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) != TO_SUBTYPE$1 ) goto label$177;
		{
			if( (LDTYPE$1 & 261632ll) == (TO_DTYPE$1 & 261632ll) ) goto label$179;
			{
				if( *(int64*)L$1 != 16ll ) goto label$181;
				{
					ASTSETTYPE( L$1, TO_DTYPE$1, TO_SUBTYPE$1 );
					N$1 = L$1;
				}
				goto label$180;
				label$181:;
				{
					struct $7ASTNODE* vr$9 = ASTNEWNODE( 5ll, TO_DTYPE$1, TO_SUBTYPE$1 );
					N$1 = vr$9;
					*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
					*(int64*)((uint8*)N$1 + 40ll) = 0ll;
					*(int64*)((uint8*)N$1 + 48ll) = 0ll;
					*(int64*)((uint8*)N$1 + 56ll) = -1ll;
					if( (OPTIONS$1 & 16ll) != 0ll ) goto label$183;
					{
						if( (*(int64*)((uint8*)&ENV$ + 400ll) & 128ll) == 0ll ) goto label$185;
						{
							ERRREPORTWARN( 40ll, (uint8*)0ull, 1ll, (uint8*)0ull );
						}
						label$185:;
						label$184:;
					}
					label$183:;
					label$182:;
				}
				label$180:;
			}
			goto label$178;
			label$179:;
			{
				N$1 = L$1;
			}
			label$178:;
			fb$result$1 = N$1;
			goto label$171;
		}
		label$177:;
		label$176:;
	}
	label$175:;
	label$174:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$186;
	TMP$104$1 = 24ll;
	goto label$299;
	label$186:;
	TMP$104$1 = LDTYPE$1 & 31ll;
	label$299:;
	if( TMP$104$1 != 20ll ) goto label$188;
	{
		struct $8FBSYMBOL* SUBTYPE$2;
		SUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
		if( ((int64)-(((int64)*(int32*)((uint8*)SUBTYPE$2 + 208ll) & 131072ll) != 0ll) | (int64)-(((int64)*(int32*)((uint8*)SUBTYPE$2 + 208ll) & 65536ll) != 0ll)) == 0ll ) goto label$190;
		{
			struct $8FBSYMBOL* PROC$3;
			PROC$3 = (struct $8FBSYMBOL*)0ull;
			$9FB_ERRMSG ERR_NUM$3;
			struct $8FBSYMBOL* vr$29 = SYMBFINDCASTOVLPROC( TO_DTYPE$1, TO_SUBTYPE$1, L$1, &ERR_NUM$3, 4ll );
			PROC$3 = vr$29;
			if( PROC$3 == (struct $8FBSYMBOL*)0ull ) goto label$192;
			{
				struct $7ASTNODE* vr$30 = ASTBUILDCALL( PROC$3, L$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
				fb$result$1 = vr$30;
				goto label$171;
			}
			label$192:;
			label$191:;
			if( ((int64)*(int32*)((uint8*)SUBTYPE$2 + 208ll) & 131072ll) == 0ll ) goto label$194;
			{
				struct $8FBSYMBOL* vr$35 = SYMBFINDCASTOVLPROC( 36ll, (struct $8FBSYMBOL*)0ull, L$1, &ERR_NUM$3, 4ll );
				PROC$3 = vr$35;
			}
			goto label$193;
			label$194:;
			if( ((int64)*(int32*)((uint8*)SUBTYPE$2 + 208ll) & 65536ll) == 0ll ) goto label$195;
			{
				struct $8FBSYMBOL* vr$40 = SYMBFINDCASTOVLPROC( 39ll, (struct $8FBSYMBOL*)0ull, L$1, &ERR_NUM$3, 4ll );
				PROC$3 = vr$40;
			}
			label$195:;
			label$193:;
			if( PROC$3 == (struct $8FBSYMBOL*)0ull ) goto label$197;
			{
				struct $7ASTNODE* vr$41 = ASTBUILDCALL( PROC$3, L$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
				fb$result$1 = vr$41;
				goto label$171;
			}
			label$197:;
			label$196:;
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$199;
			{
				int64 vr$44 = ASTTRYOVLSTRINGCONV( &L$1 );
				if( vr$44 == 0ll ) goto label$201;
				{
					LDTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
				}
				label$201:;
				label$200:;
			}
			label$199:;
			label$198:;
		}
		label$190:;
		label$189:;
	}
	label$188:;
	label$187:;
	int64 vr$47 = ASTTRYOVLOPCASTCONV( &N$1, TO_DTYPE$1, TO_SUBTYPE$1, L$1, OPTIONS$1 );
	if( vr$47 == 0ll ) goto label$203;
	{
		fb$result$1 = N$1;
		goto label$171;
	}
	label$203:;
	label$202:;
	{
		int64 TMP$105$2;
		uint64 TMP$106$2;
		if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$204;
		TMP$105$2 = 24ll;
		goto label$300;
		label$204:;
		TMP$105$2 = TO_DTYPE$1 & 31ll;
		label$300:;
		TMP$106$2 = (uint64)TMP$105$2;
		goto label$206;
		label$207:;
		{
			goto label$171;
		}
		goto label$205;
		label$208:;
		{
			int64 TMP$107$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$209;
			TMP$107$3 = 24ll;
			goto label$301;
			label$209:;
			TMP$107$3 = LDTYPE$1 & 31ll;
			label$301:;
			if( TMP$107$3 == 20ll ) goto label$211;
			{
				goto label$171;
			}
			label$211:;
			label$210:;
			if( (OPTIONS$1 & 128ll) == 0ll ) goto label$213;
			{
				goto label$171;
			}
			label$213:;
			label$212:;
			int64 vr$54 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), TO_SUBTYPE$1 );
			if( vr$54 != 0ll ) goto label$215;
			{
				goto label$171;
			}
			label$215:;
			label$214:;
		}
		goto label$205;
		label$216:;
		{
			int64 TMP$108$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$217;
			TMP$108$3 = 24ll;
			goto label$302;
			label$217:;
			TMP$108$3 = LDTYPE$1 & 31ll;
			label$302:;
			if( TMP$108$3 != 20ll ) goto label$219;
			{
				goto label$171;
			}
			label$219:;
			label$218:;
		}
		goto label$205;
		label$206:;
		static const void* tmp$126[21ll] = {
			&&label$207,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$207,
			&&label$216,
			&&label$216,
			&&label$207,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$216,
			&&label$207,
			&&label$207,
			&&label$216,
			&&label$208,
		};
		if( TMP$106$2 > 20ull ) goto label$216;
		goto *tmp$126[TMP$106$2 - 0ull];
		label$205:;
	}
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$220;
	TMP$109$1 = 24ll;
	goto label$303;
	label$220:;
	TMP$109$1 = LDTYPE$1 & 31ll;
	label$303:;
	LDCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$109$1 * 56ll));
	if( (OPTIONS$1 & 1ll) == 0ll ) goto label$222;
	{
		if( LDCLASS$1 == 0ll ) goto label$224;
		{
			goto label$171;
		}
		label$224:;
		label$223:;
	}
	label$222:;
	label$221:;
	if( (OPTIONS$1 & 8ll) != 0ll ) goto label$226;
	{
		int64 vr$62 = HCHECKPTR( TO_DTYPE$1, TO_SUBTYPE$1, LDTYPE$1, L$1, OPTIONS$1 );
		ERRMSG$1 = vr$62;
		if( ERRMSG$1 == 0ll ) goto label$228;
		{
			if( PERRMSG$1 == (int64*)0ull ) goto label$230;
			{
				*PERRMSG$1 = ERRMSG$1;
			}
			label$230:;
			label$229:;
			goto label$171;
		}
		label$228:;
		label$227:;
	}
	label$226:;
	label$225:;
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$232;
	{
		{
			int64 TMP$110$3;
			uint64 TMP$111$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$233;
			TMP$110$3 = 24ll;
			goto label$304;
			label$233:;
			TMP$110$3 = LDTYPE$1 & 31ll;
			label$304:;
			TMP$111$3 = (uint64)TMP$110$3;
			goto label$235;
			label$236:;
			{
				struct $7ASTNODE* vr$67 = RTLSTRTOVAL( L$1, TO_DTYPE$1 );
				fb$result$1 = vr$67;
				goto label$171;
			}
			goto label$234;
			label$235:;
			static const void* tmp$127[15ll] = {
				&&label$236,
				&&label$234,
				&&label$234,
				&&label$236,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$234,
				&&label$236,
				&&label$236,
			};
			if( (TMP$111$3 - 4ull) > 14ull ) goto label$234;
			goto *tmp$127[TMP$111$3 - 4ull];
			label$234:;
		}
	}
	goto label$231;
	label$232:;
	{
		if( LDCLASS$1 != 2ll ) goto label$238;
		{
			goto label$171;
		}
		goto label$237;
		label$238:;
		{
			{
				int64 TMP$112$4;
				int64 TMP$113$4;
				if( (LDTYPE$1 & 480ll) == 0ll ) goto label$239;
				TMP$112$4 = 24ll;
				goto label$305;
				label$239:;
				TMP$112$4 = LDTYPE$1 & 31ll;
				label$305:;
				TMP$113$4 = TMP$112$4;
				if( TMP$113$4 == 4ll ) goto label$242;
				label$243:;
				if( TMP$113$4 != 7ll ) goto label$241;
				label$242:;
				{
					if( *(int64*)L$1 == 20ll ) goto label$245;
					{
						goto label$171;
					}
					label$245:;
					label$244:;
				}
				label$241:;
				label$240:;
			}
		}
		label$237:;
	}
	label$231:;
	if( *(int64*)L$1 != 16ll ) goto label$247;
	{
		ASTCHECKCONST( TO_DTYPE$1, L$1 );
		HCONSTCONV( TO_DTYPE$1, L$1 );
		*(int64*)((uint8*)L$1 + 8ll) = TO_DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = TO_SUBTYPE$1;
		fb$result$1 = L$1;
		goto label$171;
	}
	label$247:;
	label$246:;
	DOCONV$1 = -1ll;
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$248;
	TMP$114$1 = 24ll;
	goto label$306;
	label$248:;
	TMP$114$1 = TO_DTYPE$1 & 31ll;
	label$306:;
	if( LDCLASS$1 != *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$114$1 * 56ll)) ) goto label$250;
	{
		{
			int64 TMP$115$3;
			int64 TMP$116$3;
			if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$251;
			TMP$115$3 = 24ll;
			goto label$307;
			label$251:;
			TMP$115$3 = TO_DTYPE$1 & 31ll;
			label$307:;
			TMP$116$3 = TMP$115$3;
			if( TMP$116$3 != 20ll ) goto label$253;
			label$254:;
			{
				DOCONV$1 = 0ll;
			}
			goto label$252;
			label$253:;
			{
				if( ((int64)-(LDTYPE$1 == 1ll) | (int64)-(TO_DTYPE$1 == 1ll)) == 0ll ) goto label$257;
				{
					if( LDTYPE$1 != TO_DTYPE$1 ) goto label$259;
					{
						DOCONV$1 = 0ll;
					}
					label$259:;
					label$258:;
				}
				goto label$256;
				label$257:;
				{
					int64 TMP$117$5;
					int64 TMP$118$5;
					if( (LDTYPE$1 & 480ll) == 0ll ) goto label$260;
					TMP$117$5 = 24ll;
					goto label$308;
					label$260:;
					TMP$117$5 = LDTYPE$1 & 31ll;
					label$308:;
					if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$261;
					TMP$118$5 = 24ll;
					goto label$309;
					label$261:;
					TMP$118$5 = TO_DTYPE$1 & 31ll;
					label$309:;
					if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$117$5 * 56ll)) + 8ll) != *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$118$5 * 56ll)) + 8ll) ) goto label$263;
					{
						DOCONV$1 = 0ll;
					}
					label$263:;
					label$262:;
				}
				label$256:;
			}
			label$255:;
			label$252:;
		}
	}
	label$250:;
	label$249:;
	if( (*(int64*)((uint8*)&IR$ + 544ll) & 1ll) == 0ll ) goto label$265;
	{
		int64 TMP$119$2;
		if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$266;
		TMP$119$2 = 24ll;
		goto label$310;
		label$266:;
		TMP$119$2 = TO_DTYPE$1 & 31ll;
		label$310:;
		if( ((int64)-(LDCLASS$1 == 1ll) & (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$119$2 * 56ll)) == 1ll)) == 0ll ) goto label$268;
		{
			int64 TMP$120$3;
			int64 TMP$121$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$269;
			TMP$120$3 = 24ll;
			goto label$311;
			label$269:;
			TMP$120$3 = LDTYPE$1 & 31ll;
			label$311:;
			if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$270;
			TMP$121$3 = 24ll;
			goto label$312;
			label$270:;
			TMP$121$3 = TO_DTYPE$1 & 31ll;
			label$312:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$120$3 * 56ll)) + 8ll) == *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$121$3 * 56ll)) + 8ll) ) goto label$272;
			{
				DOCONV$1 = -1ll;
			}
			label$272:;
			label$271:;
		}
		label$268:;
		label$267:;
	}
	label$265:;
	label$264:;
	if( *(int64*)L$1 != 5ll ) goto label$274;
	{
		if( *(int64*)((uint8*)L$1 + 40ll) != 0ll ) goto label$276;
		{
			if( DOCONV$1 != 0ll ) goto label$278;
			{
				*(int64*)((uint8*)L$1 + 8ll) = TO_DTYPE$1;
				*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = TO_SUBTYPE$1;
				fb$result$1 = L$1;
				goto label$171;
			}
			label$278:;
			label$277:;
		}
		label$276:;
		label$275:;
	}
	label$274:;
	label$273:;
	struct $7ASTNODE* vr$105 = ASTNEWNODE( 5ll, TO_DTYPE$1, TO_SUBTYPE$1 );
	N$1 = vr$105;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	*(int64*)((uint8*)N$1 + 40ll) = DOCONV$1;
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	*(int64*)((uint8*)N$1 + 56ll) = 0ll;
	if( ((int64)-((LDTYPE$1 & 480ll) != 0ll) & (int64)-((TO_DTYPE$1 & 480ll) != 0ll)) == 0ll ) goto label$280;
	{
		int64 TMP$122$2;
		WRNMSG$1 = 0ll;
		TMP$122$2 = 0ll;
		int64 vr$118 = SYMBCHECKCONSTASSIGN( TO_DTYPE$1, LDTYPE$1, TO_SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), 0ll, &TMP$122$2, ($13FB_WARNINGMSG*)&WRNMSG$1 );
		*(int64*)((uint8*)N$1 + 56ll) = (int64)-(vr$118 == 0ll);
		if( *(int64*)((uint8*)N$1 + 56ll) == 0ll ) goto label$282;
		{
			if( WRNMSG$1 == 0ll ) goto label$284;
			{
				if( (OPTIONS$1 & 32ll) != 0ll ) goto label$286;
				{
					ERRREPORTWARN( WRNMSG$1, (uint8*)0ull, 1ll, (uint8*)" in function pointer" );
				}
				label$286:;
				label$285:;
			}
			goto label$283;
			label$284:;
			{
				if( (OPTIONS$1 & 16ll) != 0ll ) goto label$288;
				{
					if( (*(int64*)((uint8*)&ENV$ + 400ll) & 128ll) == 0ll ) goto label$290;
					{
						ERRREPORTWARN( 40ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					}
					label$290:;
					label$289:;
				}
				label$288:;
				label$287:;
			}
			label$283:;
		}
		label$282:;
		label$281:;
	}
	label$280:;
	label$279:;
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 0ll ) goto label$292;
	{
		if( DOCONV$1 == 0ll ) goto label$294;
		{
			int64 TMP$124$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$295;
			TMP$124$3 = 24ll;
			goto label$313;
			label$295:;
			TMP$124$3 = LDTYPE$1 & 31ll;
			label$313:;
			if( TMP$124$3 != 16ll ) goto label$297;
			{
				int64 TMP$125$4;
				if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$298;
				TMP$125$4 = 24ll;
				goto label$314;
				label$298:;
				TMP$125$4 = TO_DTYPE$1 & 31ll;
				label$314:;
				*(int64*)((uint8*)N$1 + 48ll) = (int64)-(TMP$125$4 == 15ll);
			}
			label$297:;
			label$296:;
		}
		label$294:;
		label$293:;
	}
	label$292:;
	label$291:;
	fb$result$1 = N$1;
	label$171:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWOVLCONV( int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$315:;
	struct $7ASTNODE* N$1;
	N$1 = (struct $7ASTNODE*)0ull;
	int64 vr$2 = ASTTRYOVLOPCASTCONV( &N$1, TO_DTYPE$1, TO_SUBTYPE$1, L$1, 0ll );
	if( vr$2 == 0ll ) goto label$318;
	{
		fb$result$1 = N$1;
		goto label$316;
	}
	label$318:;
	label$317:;
	fb$result$1 = L$1;
	goto label$316;
	label$316:;
	return fb$result$1;
}

void ASTUPDATECONVFD2FS( struct $7ASTNODE* N$1, int64 TO_DTYPE$1, int64 IS_EXPR$1 )
{
	int64 TMP$128$1;
	int64 TMP$129$1;
	label$319:;
	if( *(int64*)((uint8*)N$1 + 48ll) != 0ll ) goto label$322;
	{
		goto label$320;
	}
	label$322:;
	label$321:;
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$323;
	TMP$128$1 = 24ll;
	goto label$327;
	label$323:;
	TMP$128$1 = TO_DTYPE$1 & 31ll;
	label$327:;
	*(int64*)((uint8*)N$1 + 48ll) = (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$128$1 * 56ll)) + 8ll) >= 4ll);
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$324;
	TMP$129$1 = 24ll;
	goto label$328;
	label$324:;
	TMP$129$1 = TO_DTYPE$1 & 31ll;
	label$328:;
	if( TMP$129$1 != 15ll ) goto label$326;
	{
		*(int64*)((uint8*)N$1 + 48ll) = IS_EXPR$1;
	}
	label$326:;
	label$325:;
	label$320:;
}

struct $6IRVREG* ASTLOADCONV( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$329:;
	struct $7ASTNODE* L$1;
	struct $6IRVREG* VS$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 != (struct $7ASTNODE*)0ull ) goto label$332;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$330;
	}
	label$332:;
	label$331:;
	struct $6IRVREG* vr$2 = ASTLOAD( L$1 );
	VS$1 = vr$2;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$334;
	{
		*(int64*)((uint8*)VS$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
		if( *(int64*)((uint8*)N$1 + 40ll) == 0ll ) goto label$336;
		{
			struct $6IRVREG* vr$8 = (*(tmp$69*)((uint8*)&IR$ + 448ll))( *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
			VR$1 = vr$8;
			*(int64*)((uint8*)VR$1 + 40ll) = *(int64*)((uint8*)N$1 + 32ll);
			(*(tmp$45*)((uint8*)&IR$ + 112ll))( VR$1, VS$1 );
			if( *(int64*)((uint8*)N$1 + 48ll) == 0ll ) goto label$338;
			{
				if( *(int64*)((uint8*)VS$1 + 8ll) != 16ll ) goto label$340;
				{
					if( *(int64*)((uint8*)VR$1 + 8ll) != 15ll ) goto label$342;
					{
						if( *(int64*)((uint8*)VR$1 + 32ll) != 0ll ) goto label$344;
						{
							(*(tmp$52*)((uint8*)&IR$ + 192ll))( 74ll, VR$1, (struct $6IRVREG*)0ull );
						}
						label$344:;
						label$343:;
					}
					label$342:;
					label$341:;
				}
				label$340:;
				label$339:;
			}
			label$338:;
			label$337:;
		}
		goto label$335;
		label$336:;
		{
			VR$1 = VS$1;
			(*(tmp$75*)((uint8*)&IR$ + 504ll))( VR$1, *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
		}
		label$335:;
	}
	label$334:;
	label$333:;
	ASTDELNODE( L$1 );
	fb$result$1 = VR$1;
	label$330:;
	return fb$result$1;
}

struct $7ASTNODE* ASTSKIPCONSTCASTS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$345:;
	fb$result$1 = N$1;
	if( *(int64*)N$1 != 5ll ) goto label$348;
	{
		if( *(int64*)((uint8*)N$1 + 40ll) != 0ll ) goto label$350;
		{
			fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		}
		label$350:;
		label$349:;
	}
	label$348:;
	label$347:;
	label$346:;
	return fb$result$1;
}

struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$351:;
	fb$result$1 = N$1;
	if( *(int64*)N$1 != 5ll ) goto label$354;
	{
		if( ((int64)-(*(int64*)((uint8*)N$1 + 40ll) == 0ll) & (int64)-(*(int64*)((uint8*)N$1 + 56ll) == 0ll)) == 0ll ) goto label$356;
		{
			fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		}
		label$356:;
		label$355:;
	}
	label$354:;
	label$353:;
	label$352:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$357:;
	fb$result$1 = N$1;
	if( *(int64*)N$1 != 5ll ) goto label$360;
	{
		if( ((int64)-(*(int64*)((uint8*)N$1 + 40ll) == 0ll) & (int64)-(*(int64*)((uint8*)N$1 + 56ll) == 0ll)) == 0ll ) goto label$362;
		{
			fb$result$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
			ASTDELTREE( N$1 );
		}
		label$362:;
		label$361:;
	}
	label$360:;
	label$359:;
	label$358:;
	return fb$result$1;
}

struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$363:;
	label$365:;
	if( *(int64*)N$1 != 5ll ) goto label$366;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	}
	goto label$365;
	label$366:;
	fb$result$1 = N$1;
	label$364:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMOVECASTS( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$367:;
	label$369:;
	if( *(int64*)N$1 != 5ll ) goto label$370;
	{
		struct $7ASTNODE* L$2;
		L$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		ASTDELNODE( N$1 );
		N$1 = L$2;
	}
	goto label$369;
	label$370:;
	fb$result$1 = N$1;
	label$368:;
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

static void HCONSTCONV( int64 TODTYPE$1, struct $7ASTNODE* L$1 )
{
	int64 TMP$84$1;
	int64 TMP$88$1;
	label$10:;
	int64 LDTYPE$1;
	LDTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$12;
	TMP$84$1 = 24ll;
	goto label$371;
	label$12:;
	TMP$84$1 = LDTYPE$1 & 31ll;
	label$371:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$84$1 * 56ll)) != 1ll ) goto label$14;
	{
		{
			int64 TMP$85$3;
			uint64 TMP$86$3;
			if( (TODTYPE$1 & 480ll) == 0ll ) goto label$15;
			TMP$85$3 = 24ll;
			goto label$372;
			label$15:;
			TMP$85$3 = TODTYPE$1 & 31ll;
			label$372:;
			TMP$86$3 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$85$3 * 56ll)) + 40ll);
			goto label$17;
			label$18:;
			{
				if( (LDTYPE$1 & 511ll) != 16ll ) goto label$20;
				{
					float F$5;
					F$5 = (float)*(double*)((uint8*)L$1 + 40ll);
					*(double*)((uint8*)L$1 + 40ll) = (double)F$5;
				}
				label$20:;
				label$19:;
			}
			goto label$16;
			label$21:;
			{
			}
			goto label$16;
			label$22:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)(*(double*)((uint8*)L$1 + 40ll) != 0ll);
			}
			goto label$16;
			label$23:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int8)fb_D2I( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$24:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint8)fb_D2I( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$25:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int16)fb_D2I( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$26:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint16)fb_D2I( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$27:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)fb_D2I( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$28:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint32)fb_D2L( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$29:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = fb_D2L( *(double*)((uint8*)L$1 + 40ll) );
			}
			goto label$16;
			label$30:;
			{
				int64 TMP$87$4;
				if( *(double*)((uint8*)L$1 + 40ll) < 0x1.1C37937E08p+53 ) goto label$31;
				TMP$87$4 = fb_D2L( *(double*)((uint8*)L$1 + 40ll) * 0x1.p-1 ) << (1ll & 63ll);
				goto label$373;
				label$31:;
				TMP$87$4 = fb_D2L( *(double*)((uint8*)L$1 + 40ll) );
				label$373:;
				*(int64*)((uint8*)L$1 + 40ll) = TMP$87$4;
			}
			goto label$16;
			label$17:;
			static const void* tmp$130[11ll] = {
				&&label$22,
				&&label$23,
				&&label$24,
				&&label$25,
				&&label$26,
				&&label$27,
				&&label$28,
				&&label$29,
				&&label$30,
				&&label$18,
				&&label$21,
			};
			if( TMP$86$3 > 10ull ) goto label$16;
			goto *tmp$130[TMP$86$3 - 0ull];
			label$16:;
		}
	}
	goto label$13;
	label$14:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$33;
	TMP$88$1 = 24ll;
	goto label$374;
	label$33:;
	TMP$88$1 = LDTYPE$1 & 31ll;
	label$374:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$1 * 56ll)) + 16ll) == 0ll ) goto label$32;
	{
		{
			int64 TMP$89$3;
			uint64 TMP$90$3;
			if( (TODTYPE$1 & 480ll) == 0ll ) goto label$34;
			TMP$89$3 = 24ll;
			goto label$375;
			label$34:;
			TMP$89$3 = TODTYPE$1 & 31ll;
			label$375:;
			TMP$90$3 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$3 * 56ll)) + 40ll);
			goto label$36;
			label$37:;
			{
				*(double*)((uint8*)L$1 + 40ll) = (double)(float)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$38:;
			{
				*(double*)((uint8*)L$1 + 40ll) = (double)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$39:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)(*(int64*)((uint8*)L$1 + 40ll) != 0ll);
			}
			goto label$35;
			label$40:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int8)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$41:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint8)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$42:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int16)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$43:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint16)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$44:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int32)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$45:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint32)*(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$46:;
			{
			}
			goto label$35;
			label$47:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$35;
			label$36:;
			static const void* tmp$131[11ll] = {
				&&label$39,
				&&label$40,
				&&label$41,
				&&label$42,
				&&label$43,
				&&label$44,
				&&label$45,
				&&label$46,
				&&label$47,
				&&label$37,
				&&label$38,
			};
			if( TMP$90$3 > 10ull ) goto label$35;
			goto *tmp$131[TMP$90$3 - 0ull];
			label$35:;
		}
	}
	goto label$13;
	label$32:;
	{
		{
			int64 TMP$91$3;
			uint64 TMP$92$3;
			if( (TODTYPE$1 & 480ll) == 0ll ) goto label$48;
			TMP$91$3 = 24ll;
			goto label$376;
			label$48:;
			TMP$91$3 = TODTYPE$1 & 31ll;
			label$376:;
			TMP$92$3 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$3 * 56ll)) + 40ll);
			goto label$50;
			label$51:;
			{
				*(double*)((uint8*)L$1 + 40ll) = (double)(float)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$52:;
			{
				*(double*)((uint8*)L$1 + 40ll) = (double)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$53:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)-(boolean)(*(uint64*)((uint8*)L$1 + 40ll) != 0ll);
			}
			goto label$49;
			label$54:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int8)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$55:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint8)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$56:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int16)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$57:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint16)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$58:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(int32)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$59:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = (int64)(uint32)*(uint64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$60:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$61:;
			{
				*(int64*)((uint8*)L$1 + 40ll) = *(int64*)((uint8*)L$1 + 40ll);
			}
			goto label$49;
			label$50:;
			static const void* tmp$132[11ll] = {
				&&label$53,
				&&label$54,
				&&label$55,
				&&label$56,
				&&label$57,
				&&label$58,
				&&label$59,
				&&label$60,
				&&label$61,
				&&label$51,
				&&label$52,
			};
			if( TMP$92$3 > 10ull ) goto label$49;
			goto *tmp$132[TMP$92$3 - 0ull];
			label$49:;
		}
	}
	label$13:;
	label$11:;
}

static int64 HGETTYPEMISMATCHERRMSG( $11AST_CONVOPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$62:;
	if( (OPTIONS$1 & 4ll) == 0ll ) goto label$65;
	{
		fb$result$1 = 28ll;
	}
	goto label$64;
	label$65:;
	{
		fb$result$1 = 20ll;
	}
	label$64:;
	label$63:;
	return fb$result$1;
}

static int64 HCHECKPTR( int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, int64 EXPR_DTYPE$1, struct $7ASTNODE* EXPR$1, $11AST_CONVOPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$80:;
	fb$result$1 = 0ll;
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$83;
	{
		if( (EXPR_DTYPE$1 & 480ll) != 0ll ) goto label$85;
		{
			int64 vr$3 = ASTCHECKCONVNONPTRTOPTR( TO_DTYPE$1, EXPR_DTYPE$1, EXPR$1, OPTIONS$1 );
			fb$result$1 = vr$3;
			goto label$81;
		}
		label$85:;
		label$84:;
	}
	goto label$82;
	label$83:;
	if( (EXPR_DTYPE$1 & 480ll) == 0ll ) goto label$86;
	{
		int64 TMP$95$2;
		if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$87;
		TMP$95$2 = 24ll;
		goto label$377;
		label$87:;
		TMP$95$2 = TO_DTYPE$1 & 31ll;
		label$377:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$2 * 56ll)) != 0ll ) goto label$89;
		{
			int64 TMP$96$3;
			if( *(int64*)EXPR$1 != 16ll ) goto label$91;
			{
				int64 vr$9 = ASTCONSTEQZERO( EXPR$1 );
				if( vr$9 == 0ll ) goto label$93;
				{
					goto label$81;
				}
				label$93:;
				label$92:;
			}
			label$91:;
			label$90:;
			if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$94;
			TMP$96$3 = 24ll;
			goto label$378;
			label$94:;
			TMP$96$3 = TO_DTYPE$1 & 31ll;
			label$378:;
			if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$3 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 592ll) ) goto label$96;
			{
				goto label$81;
			}
			label$96:;
			label$95:;
		}
		label$89:;
		label$88:;
		int64 vr$13 = HGETTYPEMISMATCHERRMSG( OPTIONS$1 );
		fb$result$1 = vr$13;
		goto label$81;
	}
	goto label$82;
	label$86:;
	{
		goto label$81;
	}
	label$82:;
	if( (TO_DTYPE$1 & 31ll) != 20ll ) goto label$98;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)TO_SUBTYPE$1 + 176ll) == (struct $8FBSYMBOL*)0ull ) goto label$100;
		{
			if( (EXPR_DTYPE$1 & 31ll) == 20ll ) goto label$102;
			{
				if( (EXPR_DTYPE$1 & 31ll) == 0ll ) goto label$104;
				{
					fb$result$1 = 300ll;
					goto label$81;
				}
				label$104:;
				label$103:;
			}
			goto label$101;
			label$102:;
			{
				int64 vr$19 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll), TO_SUBTYPE$1 );
				if( vr$19 != 0ll ) goto label$106;
				{
					int64 vr$21 = SYMBGETUDTBASELEVEL( TO_SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
					if( vr$21 != 0ll ) goto label$108;
					{
						fb$result$1 = 301ll;
						goto label$81;
					}
					label$108:;
					label$107:;
				}
				label$106:;
				label$105:;
			}
			label$101:;
		}
		label$100:;
		label$99:;
	}
	label$98:;
	label$97:;
	if( (EXPR_DTYPE$1 & 31ll) != 20ll ) goto label$110;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) + 176ll) == (struct $8FBSYMBOL*)0ull ) goto label$112;
		{
			if( (TO_DTYPE$1 & 31ll) == 20ll ) goto label$114;
			{
				if( (TO_DTYPE$1 & 31ll) == 0ll ) goto label$116;
				{
					fb$result$1 = 302ll;
					goto label$81;
				}
				label$116:;
				label$115:;
			}
			goto label$113;
			label$114:;
			{
				int64 vr$28 = SYMBGETUDTBASELEVEL( TO_SUBTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
				if( vr$28 != 0ll ) goto label$118;
				{
					int64 vr$30 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll), TO_SUBTYPE$1 );
					if( vr$30 != 0ll ) goto label$120;
					{
						fb$result$1 = 303ll;
						goto label$81;
					}
					label$120:;
					label$119:;
				}
				label$118:;
				label$117:;
			}
			label$113:;
		}
		label$112:;
		label$111:;
	}
	label$110:;
	label$109:;
	label$81:;
	return fb$result$1;
}

static int64 ASTTRYOVLOPCASTCONV( struct $7ASTNODE** N$1, int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* NODE$1, $11AST_CONVOPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$149:;
	struct $8FBSYMBOL* PROC$1;
	$9FB_ERRMSG ERR_NUM$1;
	$14FB_SYMBFINDOPT FIND_OPTIONS$1;
	FIND_OPTIONS$1 = 0ll;
	if( (OPTIONS$1 & 64ll) == 0ll ) goto label$152;
	{
		FIND_OPTIONS$1 = 4ll;
	}
	label$152:;
	label$151:;
	struct $8FBSYMBOL* vr$3 = SYMBFINDCASTOVLPROC( TO_DTYPE$1, TO_SUBTYPE$1, NODE$1, &ERR_NUM$1, FIND_OPTIONS$1 );
	PROC$1 = vr$3;
	if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$154;
	{
		struct $7ASTNODE* vr$4 = ASTBUILDCALL( PROC$1, NODE$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
		*N$1 = vr$4;
		fb$result$1 = -1ll;
		goto label$150;
	}
	goto label$153;
	label$154:;
	{
		if( ERR_NUM$1 == 0ll ) goto label$156;
		{
			*N$1 = (struct $7ASTNODE*)0ull;
			fb$result$1 = -1ll;
			goto label$150;
		}
		label$156:;
		label$155:;
	}
	label$153:;
	fb$result$1 = 0ll;
	goto label$150;
	label$150:;
	return fb$result$1;
}
