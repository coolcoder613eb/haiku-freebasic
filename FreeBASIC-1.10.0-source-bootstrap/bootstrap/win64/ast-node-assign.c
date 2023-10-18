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
typedef int64 $22FB_OVLPROC_MATCH_SCORE;
typedef int64 $9FB_ERRMSG;
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
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezassign( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTPTRCHECK( int64, struct $8FBSYMBOL*, int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWMEM( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int64 ASTCHECKASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 ASTCHECKCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_u7INTEGERS1_( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( struct $7ASTNODE*, int64, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTVAR( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
typedef int64 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
int64 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 TYPEHASCTOR( int64, struct $8FBSYMBOL* );
int64 TYPEHASDTOR( int64, struct $8FBSYMBOL* );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int64, struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
int64 SYMBCOMPHASCOPYLETOPS( struct $8FBSYMBOL* );
int64 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static int64 HCHECKSTRINGOPS( struct $7ASTNODE*, $12FB_DATACLASS, struct $7ASTNODE*, $12FB_DATACLASS );
static int64 HCHECKUDTOPS( struct $7ASTNODE*, $12FB_DATACLASS, struct $7ASTNODE**, $12FB_DATACLASS, int64 );
static int64 HCHECKWSTRINGOPS( struct $7ASTNODE*, int64*, struct $7ASTNODE*, int64*, int64* );
static int64 HCHECKZSTRINGOPS( struct $7ASTNODE*, int64*, struct $7ASTNODE*, int64* );
static void HCHECKENUMOPS( struct $7ASTNODE*, $12FB_DATACLASS, struct $7ASTNODE*, $12FB_DATACLASS );
static int64 HCHECKCONSTANDPOINTEROPS( struct $7ASTNODE*, $11FB_DATATYPE, struct $7ASTNODE*, $11FB_DATATYPE );
static struct $7ASTNODE* HSHALLOWCOPY( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
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

int64 ASTCHECKASSIGN( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, int64 NO_UPCAST$1 )
{
	int64 TMP$91$1;
	int64 TMP$92$1;
	int64 TMP$93$1;
	int64 TMP$94$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$83:;
	struct $7ASTNODE* N$1;
	$11FB_DATATYPE LDTYPE$1;
	$11FB_DATATYPE RDTYPE$1;
	$11FB_DATATYPE LDFULL$1;
	$11FB_DATATYPE RDFULL$1;
	$12FB_DATACLASS LDCLASS$1;
	$12FB_DATACLASS RDCLASS$1;
	fb$result$1 = 0ll;
	LDFULL$1 = *($11FB_DATATYPE*)((uint8*)L$1 + 8ll);
	RDFULL$1 = *($11FB_DATATYPE*)((uint8*)R$1 + 8ll);
	if( (LDFULL$1 & 480ll) == 0ll ) goto label$85;
	TMP$91$1 = 24ll;
	goto label$131;
	label$85:;
	TMP$91$1 = LDFULL$1 & 31ll;
	label$131:;
	LDTYPE$1 = TMP$91$1;
	if( (RDFULL$1 & 480ll) == 0ll ) goto label$86;
	TMP$92$1 = 24ll;
	goto label$132;
	label$86:;
	TMP$92$1 = RDFULL$1 & 31ll;
	label$132:;
	RDTYPE$1 = TMP$92$1;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$87;
	TMP$93$1 = 24ll;
	goto label$133;
	label$87:;
	TMP$93$1 = LDTYPE$1 & 31ll;
	label$133:;
	LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$1 * 56ll));
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$88;
	TMP$94$1 = 24ll;
	goto label$134;
	label$88:;
	TMP$94$1 = RDTYPE$1 & 31ll;
	label$134:;
	RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$1 * 56ll));
	if( ((int64)-(LDCLASS$1 == 2ll) | (int64)-(RDCLASS$1 == 2ll)) == 0ll ) goto label$90;
	{
		if( LDCLASS$1 == RDCLASS$1 ) goto label$92;
		{
			int64 vr$16 = HCHECKSTRINGOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
			if( vr$16 != 0ll ) goto label$94;
			{
				goto label$84;
			}
			label$94:;
			label$93:;
		}
		label$92:;
		label$91:;
		fb$result$1 = -1ll;
		goto label$84;
	}
	goto label$89;
	label$90:;
	if( ((int64)-(LDTYPE$1 == 20ll) | (int64)-(RDTYPE$1 == 20ll)) == 0ll ) goto label$95;
	{
		int64 vr$21 = HCHECKUDTOPS( L$1, LDCLASS$1, &R$1, RDCLASS$1, NO_UPCAST$1 );
		if( vr$21 != 0ll ) goto label$97;
		{
			goto label$84;
		}
		label$97:;
		label$96:;
		fb$result$1 = -1ll;
		goto label$84;
	}
	goto label$89;
	label$95:;
	if( ((int64)-(LDTYPE$1 == 7ll) | (int64)-(RDTYPE$1 == 7ll)) == 0ll ) goto label$98;
	{
		if( LDTYPE$1 == RDTYPE$1 ) goto label$100;
		{
			int64 TMP$95$3;
			int64 TMP$96$3;
			int64 TMP$97$3;
			int64 TMP$98$3;
			int64 IS_ZSTR$3;
			__builtin_memset( &IS_ZSTR$3, 0, 8ll );
			int64 vr$29 = HCHECKWSTRINGOPS( L$1, (int64*)&LDFULL$1, R$1, (int64*)&RDFULL$1, &IS_ZSTR$3 );
			if( vr$29 != 0ll ) goto label$102;
			{
				goto label$84;
			}
			label$102:;
			label$101:;
			if( IS_ZSTR$3 == 0ll ) goto label$104;
			{
				fb$result$1 = -1ll;
				goto label$84;
			}
			label$104:;
			label$103:;
			if( (LDFULL$1 & 480ll) == 0ll ) goto label$105;
			TMP$95$3 = 24ll;
			goto label$135;
			label$105:;
			TMP$95$3 = LDFULL$1 & 31ll;
			label$135:;
			LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$3 * 56ll));
			if( (RDFULL$1 & 480ll) == 0ll ) goto label$106;
			TMP$96$3 = 24ll;
			goto label$136;
			label$106:;
			TMP$96$3 = RDFULL$1 & 31ll;
			label$136:;
			RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$3 * 56ll));
			if( (LDFULL$1 & 480ll) == 0ll ) goto label$107;
			TMP$97$3 = 24ll;
			goto label$137;
			label$107:;
			TMP$97$3 = LDFULL$1 & 31ll;
			label$137:;
			LDTYPE$1 = TMP$97$3;
			if( (RDFULL$1 & 480ll) == 0ll ) goto label$108;
			TMP$98$3 = 24ll;
			goto label$138;
			label$108:;
			TMP$98$3 = RDFULL$1 & 31ll;
			label$138:;
			RDTYPE$1 = TMP$98$3;
		}
		label$100:;
		label$99:;
	}
	goto label$89;
	label$98:;
	if( ((int64)-(LDTYPE$1 == 4ll) | (int64)-(RDTYPE$1 == 4ll)) == 0ll ) goto label$109;
	{
		int64 TMP$99$2;
		int64 TMP$100$2;
		int64 TMP$101$2;
		int64 TMP$102$2;
		if( LDTYPE$1 != RDTYPE$1 ) goto label$111;
		{
			fb$result$1 = -1ll;
			goto label$84;
		}
		label$111:;
		label$110:;
		int64 vr$45 = HCHECKZSTRINGOPS( L$1, (int64*)&LDFULL$1, R$1, (int64*)&RDFULL$1 );
		if( vr$45 != 0ll ) goto label$113;
		{
			goto label$84;
		}
		label$113:;
		label$112:;
		if( (LDFULL$1 & 480ll) == 0ll ) goto label$114;
		TMP$99$2 = 24ll;
		goto label$139;
		label$114:;
		TMP$99$2 = LDFULL$1 & 31ll;
		label$139:;
		LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$2 * 56ll));
		if( (RDFULL$1 & 480ll) == 0ll ) goto label$115;
		TMP$100$2 = 24ll;
		goto label$140;
		label$115:;
		TMP$100$2 = RDFULL$1 & 31ll;
		label$140:;
		RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$2 * 56ll));
		if( (LDFULL$1 & 480ll) == 0ll ) goto label$116;
		TMP$101$2 = 24ll;
		goto label$141;
		label$116:;
		TMP$101$2 = LDFULL$1 & 31ll;
		label$141:;
		LDTYPE$1 = TMP$101$2;
		if( (RDFULL$1 & 480ll) == 0ll ) goto label$117;
		TMP$102$2 = 24ll;
		goto label$142;
		label$117:;
		TMP$102$2 = RDFULL$1 & 31ll;
		label$142:;
		RDTYPE$1 = TMP$102$2;
	}
	goto label$89;
	label$109:;
	if( ((int64)-(LDTYPE$1 == 10ll) | (int64)-(RDTYPE$1 == 10ll)) == 0ll ) goto label$118;
	{
		HCHECKENUMOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
	}
	label$118:;
	label$89:;
	int64 vr$59 = HCHECKCONSTANDPOINTEROPS( L$1, LDFULL$1, R$1, RDFULL$1 );
	if( vr$59 != 0ll ) goto label$120;
	{
		goto label$84;
	}
	label$120:;
	label$119:;
	if( ((int64)-(LDTYPE$1 != RDTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll))) == 0ll ) goto label$122;
	{
		if( RDCLASS$1 == 2ll ) goto label$124;
		{
			if( *(int64*)R$1 != 16ll ) goto label$126;
			{
				struct $7ASTNODE* vr$67 = ASTNEWCONV( LDFULL$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1, 0ll, (int64*)0ull );
				R$1 = vr$67;
				if( R$1 != (struct $7ASTNODE*)0ull ) goto label$128;
				{
					goto label$84;
				}
				label$128:;
				label$127:;
			}
			label$126:;
			label$125:;
			int64 vr$69 = ASTCHECKCONV( LDFULL$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1 );
			if( vr$69 != 0ll ) goto label$130;
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
	fb$result$1 = -1ll;
	label$84:;
	return fb$result$1;
}

int64 ASTCHECKASSIGNTOTYPE( int64 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $7ASTNODE* R$1, int64 NO_UPCAST$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$143:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* vr$1 = ASTNEWVAR( (struct $8FBSYMBOL*)0ull, 0ll, LDTYPE$1, LSUBTYPE$1 );
	L$1 = vr$1;
	int64 vr$2 = ASTCHECKASSIGN( L$1, R$1, NO_UPCAST$1 );
	fb$result$1 = vr$2;
	ASTDELTREE( L$1 );
	label$144:;
	return fb$result$1;
}

int64 ASTCHECKBYREFASSIGN( int64 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $7ASTNODE* R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$145:;
	$22FB_OVLPROC_MATCH_SCORE vr$3 = TYPECALCMATCH( LDTYPE$1, LSUBTYPE$1, 2ll, *(int64*)((uint8*)R$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll) );
	fb$result$1 = (int64)-(vr$3 > 0ll);
	label$146:;
	return fb$result$1;
}

struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $9AST_OPOPT OPTIONS$1 )
{
	int64 TMP$103$1;
	int64 TMP$104$1;
	int64 TMP$105$1;
	int64 TMP$106$1;
	int64 TMP$108$1;
	int64 TMP$109$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
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
	int64 DO_MOVE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( ((int64)-(L$1 == (struct $7ASTNODE*)0ull) | (int64)-(R$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$162;
	{
		goto label$160;
	}
	label$162:;
	label$161:;
	LDFULL$1 = *($11FB_DATATYPE*)((uint8*)L$1 + 8ll);
	if( (LDFULL$1 & 480ll) == 0ll ) goto label$163;
	TMP$103$1 = 24ll;
	goto label$264;
	label$163:;
	TMP$103$1 = LDFULL$1 & 31ll;
	label$264:;
	LDTYPE$1 = TMP$103$1;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$164;
	TMP$104$1 = 24ll;
	goto label$265;
	label$164:;
	TMP$104$1 = LDTYPE$1 & 31ll;
	label$265:;
	LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$1 * 56ll));
	LSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
	RDFULL$1 = *($11FB_DATATYPE*)((uint8*)R$1 + 8ll);
	if( (RDFULL$1 & 480ll) == 0ll ) goto label$165;
	TMP$105$1 = 24ll;
	goto label$266;
	label$165:;
	TMP$105$1 = RDFULL$1 & 31ll;
	label$266:;
	RDTYPE$1 = TMP$105$1;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$166;
	TMP$106$1 = 24ll;
	goto label$267;
	label$166:;
	TMP$106$1 = RDTYPE$1 & 31ll;
	label$267:;
	RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$106$1 * 56ll));
	if( (OPTIONS$1 & 32ll) != 0ll ) goto label$168;
	{
		int64 CHECK_LETOP$2;
		CHECK_LETOP$2 = -1ll;
		{
			uint64 TMP$107$3;
			TMP$107$3 = (uint64)LDTYPE$1;
			goto label$170;
			label$171:;
			{
				if( LDTYPE$1 != RDTYPE$1 ) goto label$173;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll) ) goto label$175;
					{
						if( (OPTIONS$1 & 64ll) != 0ll ) goto label$177;
						{
							int64 vr$22 = SYMBCOMPHASCOPYLETOPS( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
							CHECK_LETOP$2 = vr$22;
						}
						goto label$176;
						label$177:;
						{
							CHECK_LETOP$2 = 0ll;
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
			static const void* tmp$122[1ll] = {
				&&label$171,
			};
			if( (TMP$107$3 - 20ull) > 0ull ) goto label$169;
			goto *tmp$122[TMP$107$3 - 20ull];
			label$169:;
		}
		if( CHECK_LETOP$2 == 0ll ) goto label$179;
		{
			struct $8FBSYMBOL* vr$24 = SYMBFINDSELFBOPOVLPROC( 0ll, L$1, R$1, &ERR_NUM$1 );
			PROC$1 = vr$24;
			if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$181;
			{
				struct $7ASTNODE* RESULT$4;
				if( (OPTIONS$1 & 64ll) == 0ll ) goto label$183;
				{
					struct $8FBSYMBOL* vr$27 = SYMBGETCOMPDEFCTOR( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
					if( vr$27 == (struct $8FBSYMBOL*)0ull ) goto label$185;
					{
						struct $7ASTNODE* vr$28 = ASTCLONETREE( L$1 );
						struct $7ASTNODE* vr$30 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), vr$28 );
						RESULT$4 = vr$30;
					}
					goto label$184;
					label$185:;
					{
						struct $7ASTNODE* vr$33 = ASTNEWCONSTI( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) + 80ll), 8ll, (struct $8FBSYMBOL*)0ull );
						struct $7ASTNODE* vr$34 = ASTCLONETREE( L$1 );
						struct $7ASTNODE* vr$35 = ASTNEWMEM( 107ll, vr$34, vr$33, 0ll );
						RESULT$4 = vr$35;
					}
					label$184:;
				}
				goto label$182;
				label$183:;
				{
					RESULT$4 = (struct $7ASTNODE*)0ull;
				}
				label$182:;
				struct $7ASTNODE* vr$36 = ASTBUILDCALL( PROC$1, L$1, R$1, (struct $7ASTNODE*)0ull );
				struct $7ASTNODE* vr$37 = ASTNEWLINK( RESULT$4, vr$36, 0ll );
				fb$result$1 = vr$37;
				goto label$160;
			}
			label$181:;
			label$180:;
			if( ERR_NUM$1 == 0ll ) goto label$187;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
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
	if( (OPTIONS$1 & 32ll) != 0ll ) goto label$189;
	{
		struct $8FBSYMBOL* vr$40 = SYMBFINDCASTOVLPROC( LDFULL$1, LSUBTYPE$1, R$1, &ERR_NUM$1, 0ll );
		PROC$1 = vr$40;
		if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$191;
		{
			struct $7ASTNODE* vr$41 = ASTBUILDCALL( PROC$1, R$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
			R$1 = vr$41;
		}
		goto label$190;
		label$191:;
		{
			if( ERR_NUM$1 == 0ll ) goto label$193;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
				goto label$160;
			}
			label$193:;
			label$192:;
		}
		label$190:;
	}
	label$189:;
	label$188:;
	RDFULL$1 = *($11FB_DATATYPE*)((uint8*)R$1 + 8ll);
	if( (RDFULL$1 & 480ll) == 0ll ) goto label$194;
	TMP$108$1 = 24ll;
	goto label$268;
	label$194:;
	TMP$108$1 = RDFULL$1 & 31ll;
	label$268:;
	RDTYPE$1 = TMP$108$1;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$195;
	TMP$109$1 = 24ll;
	goto label$269;
	label$195:;
	TMP$109$1 = RDTYPE$1 & 31ll;
	label$269:;
	RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$109$1 * 56ll));
	if( ((int64)-(LDCLASS$1 == 2ll) | (int64)-(RDCLASS$1 == 2ll)) == 0ll ) goto label$197;
	{
		if( LDCLASS$1 == RDCLASS$1 ) goto label$199;
		{
			int64 vr$51 = HCHECKSTRINGOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
			if( vr$51 != 0ll ) goto label$201;
			{
				goto label$160;
			}
			label$201:;
			label$200:;
			struct $7ASTNODE* vr$54 = RTLSTRASSIGN( L$1, R$1, (int64)-((OPTIONS$1 & 64ll) != 0ll) );
			fb$result$1 = vr$54;
			goto label$160;
		}
		label$199:;
		label$198:;
		if( (OPTIONS$1 & 64ll) == 0ll ) goto label$203;
		{
			struct $7ASTNODE* vr$56 = RTLSTRASSIGN( L$1, R$1, -1ll );
			fb$result$1 = vr$56;
			goto label$160;
		}
		label$203:;
		label$202:;
	}
	goto label$196;
	label$197:;
	if( ((int64)-(LDTYPE$1 == 20ll) | (int64)-(RDTYPE$1 == 20ll)) == 0ll ) goto label$204;
	{
		int64 TMP$110$2;
		int64 TMP$111$2;
		int64 vr$61 = HCHECKUDTOPS( L$1, LDCLASS$1, &R$1, RDCLASS$1, 0ll );
		if( vr$61 != 0ll ) goto label$206;
		{
			goto label$160;
		}
		label$206:;
		label$205:;
		if( *(int64*)R$1 != 36ll ) goto label$208;
		{
			int64 vr$65 = TYPEHASCTOR( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
			int64 vr$68 = TYPEHASDTOR( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
			if( (vr$65 | vr$68) != 0ll ) goto label$210;
			{
				struct $7ASTNODE* vr$71 = ASTREMOVENOCONVCAST( L$1 );
				struct $7ASTNODE* vr$72 = _Z15ASTTYPEINIFLUSHP7ASTNODES0_u7INTEGERS1_( vr$71, R$1, -1ll, OPTIONS$1 & 64ll );
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
		if( *(int64*)TR$1 == 9ll ) goto label$212;
		{
			struct $7ASTNODE* vr$75 = HSHALLOWCOPY( L$1, R$1, OPTIONS$1 );
			fb$result$1 = vr$75;
			goto label$160;
		}
		label$212:;
		label$211:;
		int64 vr$77 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)TR$1 + 24ll) );
		if( vr$77 == 0ll ) goto label$214;
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
		LDFULL$1 = *($11FB_DATATYPE*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 160ll);
		if( (LDFULL$1 & 480ll) == 0ll ) goto label$215;
		TMP$110$2 = 24ll;
		goto label$270;
		label$215:;
		TMP$110$2 = LDFULL$1 & 31ll;
		label$270:;
		LDTYPE$1 = TMP$110$2;
		LSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 24ll) + 168ll);
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$216;
		TMP$111$2 = 24ll;
		goto label$271;
		label$216:;
		TMP$111$2 = LDTYPE$1 & 31ll;
		label$271:;
		LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$111$2 * 56ll));
		ASTSETTYPE( L$1, LDFULL$1, LSUBTYPE$1 );
		RDFULL$1 = LDFULL$1;
		RDTYPE$1 = LDTYPE$1;
		RDCLASS$1 = LDCLASS$1;
		ASTSETTYPE( R$1, RDFULL$1, LSUBTYPE$1 );
	}
	goto label$196;
	label$204:;
	if( ((int64)-(LDTYPE$1 == 7ll) | (int64)-(RDTYPE$1 == 7ll)) == 0ll ) goto label$217;
	{
		if( LDTYPE$1 != RDTYPE$1 ) goto label$219;
		{
			if( (OPTIONS$1 & 64ll) == 0ll ) goto label$221;
			{
				struct $7ASTNODE* vr$96 = RTLWSTRASSIGN( L$1, R$1, -1ll );
				fb$result$1 = vr$96;
				goto label$160;
			}
			label$221:;
			label$220:;
		}
		goto label$218;
		label$219:;
		{
			int64 TMP$112$3;
			int64 TMP$113$3;
			int64 TMP$114$3;
			int64 TMP$115$3;
			int64 IS_ZSTR$3;
			__builtin_memset( &IS_ZSTR$3, 0, 8ll );
			int64 vr$101 = HCHECKWSTRINGOPS( L$1, (int64*)&LDFULL$1, R$1, (int64*)&RDFULL$1, &IS_ZSTR$3 );
			if( vr$101 != 0ll ) goto label$223;
			{
				goto label$160;
			}
			label$223:;
			label$222:;
			if( IS_ZSTR$3 == 0ll ) goto label$225;
			{
				struct $7ASTNODE* vr$104 = RTLWSTRASSIGN( L$1, R$1, (int64)-((OPTIONS$1 & 64ll) != 0ll) );
				fb$result$1 = vr$104;
				goto label$160;
			}
			label$225:;
			label$224:;
			if( (LDFULL$1 & 480ll) == 0ll ) goto label$226;
			TMP$112$3 = 24ll;
			goto label$272;
			label$226:;
			TMP$112$3 = LDFULL$1 & 31ll;
			label$272:;
			LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$112$3 * 56ll));
			if( (RDFULL$1 & 480ll) == 0ll ) goto label$227;
			TMP$113$3 = 24ll;
			goto label$273;
			label$227:;
			TMP$113$3 = RDFULL$1 & 31ll;
			label$273:;
			RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$3 * 56ll));
			if( (LDFULL$1 & 480ll) == 0ll ) goto label$228;
			TMP$114$3 = 24ll;
			goto label$274;
			label$228:;
			TMP$114$3 = LDFULL$1 & 31ll;
			label$274:;
			LDTYPE$1 = TMP$114$3;
			if( (RDFULL$1 & 480ll) == 0ll ) goto label$229;
			TMP$115$3 = 24ll;
			goto label$275;
			label$229:;
			TMP$115$3 = RDFULL$1 & 31ll;
			label$275:;
			RDTYPE$1 = TMP$115$3;
		}
		label$218:;
	}
	goto label$196;
	label$217:;
	if( ((int64)-(LDTYPE$1 == 4ll) | (int64)-(RDTYPE$1 == 4ll)) == 0ll ) goto label$230;
	{
		int64 TMP$116$2;
		int64 TMP$117$2;
		int64 TMP$118$2;
		int64 TMP$119$2;
		if( LDTYPE$1 != RDTYPE$1 ) goto label$232;
		{
			struct $7ASTNODE* vr$118 = RTLSTRASSIGN( L$1, R$1, 0ll );
			fb$result$1 = vr$118;
			goto label$160;
		}
		label$232:;
		label$231:;
		int64 vr$121 = HCHECKZSTRINGOPS( L$1, (int64*)&LDFULL$1, R$1, (int64*)&RDFULL$1 );
		if( vr$121 != 0ll ) goto label$234;
		{
			goto label$160;
		}
		label$234:;
		label$233:;
		if( (LDFULL$1 & 480ll) == 0ll ) goto label$235;
		TMP$116$2 = 24ll;
		goto label$276;
		label$235:;
		TMP$116$2 = LDFULL$1 & 31ll;
		label$276:;
		LDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$2 * 56ll));
		if( (RDFULL$1 & 480ll) == 0ll ) goto label$236;
		TMP$117$2 = 24ll;
		goto label$277;
		label$236:;
		TMP$117$2 = RDFULL$1 & 31ll;
		label$277:;
		RDCLASS$1 = *($12FB_DATACLASS*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$117$2 * 56ll));
		if( (LDFULL$1 & 480ll) == 0ll ) goto label$237;
		TMP$118$2 = 24ll;
		goto label$278;
		label$237:;
		TMP$118$2 = LDFULL$1 & 31ll;
		label$278:;
		LDTYPE$1 = TMP$118$2;
		if( (RDFULL$1 & 480ll) == 0ll ) goto label$238;
		TMP$119$2 = 24ll;
		goto label$279;
		label$238:;
		TMP$119$2 = RDFULL$1 & 31ll;
		label$279:;
		RDTYPE$1 = TMP$119$2;
	}
	goto label$196;
	label$230:;
	if( ((int64)-(LDTYPE$1 == 10ll) | (int64)-(RDTYPE$1 == 10ll)) == 0ll ) goto label$239;
	{
		HCHECKENUMOPS( L$1, LDCLASS$1, R$1, RDCLASS$1 );
	}
	label$239:;
	label$196:;
	if( (OPTIONS$1 & 16ll) != 0ll ) goto label$241;
	{
		int64 vr$136 = HCHECKCONSTANDPOINTEROPS( L$1, LDFULL$1, R$1, RDFULL$1 );
		if( vr$136 != 0ll ) goto label$243;
		{
			goto label$160;
		}
		label$243:;
		label$242:;
	}
	label$241:;
	label$240:;
	if( ((int64)-(LDTYPE$1 != RDTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) != *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll))) == 0ll ) goto label$245;
	{
		if( RDCLASS$1 == 2ll ) goto label$247;
		{
			if( *(int64*)R$1 != 16ll ) goto label$249;
			{
				int64 TMP$120$4;
				if( (OPTIONS$1 & 16ll) == 0ll ) goto label$250;
				TMP$120$4 = 8ll;
				goto label$280;
				label$250:;
				TMP$120$4 = 0ll;
				label$280:;
				struct $7ASTNODE* vr$144 = ASTNEWCONV( LDFULL$1, LSUBTYPE$1, R$1, TMP$120$4, (int64*)0ull );
				R$1 = vr$144;
				if( R$1 != (struct $7ASTNODE*)0ull ) goto label$252;
				{
					goto label$160;
				}
				label$252:;
				label$251:;
			}
			label$249:;
			label$248:;
			int64 DOCONV$3;
			DOCONV$3 = -1ll;
			if( *(int64*)((uint8*)&ENV$ + 208ll) != 0ll ) goto label$254;
			{
				if( ((int64)-(LDCLASS$1 == 1ll) | (int64)-(RDCLASS$1 == 1ll)) == 0ll ) goto label$256;
				{
					if( LDTYPE$1 == 14ll ) goto label$258;
					{
						DOCONV$3 = (int64)-((*(int64*)((uint8*)&IR$ + 544ll) & 1ll) != 0ll);
					}
					label$258:;
					label$257:;
				}
				label$256:;
				label$255:;
			}
			label$254:;
			label$253:;
			if( DOCONV$3 == 0ll ) goto label$260;
			{
				int64 TMP$121$4;
				if( (OPTIONS$1 & 16ll) == 0ll ) goto label$261;
				TMP$121$4 = 8ll;
				goto label$281;
				label$261:;
				TMP$121$4 = 0ll;
				label$281:;
				struct $7ASTNODE* vr$152 = ASTNEWCONV( LDFULL$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1, TMP$121$4, (int64*)0ull );
				R$1 = vr$152;
				if( R$1 != (struct $7ASTNODE*)0ull ) goto label$263;
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
	struct $7ASTNODE* vr$153 = ASTNEWNODE( 2ll, LDFULL$1, LSUBTYPE$1 );
	N$1 = vr$153;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = R$1;
	fb$result$1 = N$1;
	label$160:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADASSIGN( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$282:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $6IRVREG* VS$1;
	struct $6IRVREG* VR$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( ((int64)-(L$1 == (struct $7ASTNODE*)0ull) | (int64)-(R$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$285;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$283;
	}
	label$285:;
	label$284:;
	if( *(int64*)R$1 != 5ll ) goto label$287;
	{
		ASTUPDATECONVFD2FS( R$1, *(int64*)((uint8*)L$1 + 8ll), 0ll );
	}
	label$287:;
	label$286:;
	struct $6IRVREG* vr$8 = ASTLOAD( R$1 );
	VS$1 = vr$8;
	struct $6IRVREG* vr$9 = ASTLOAD( L$1 );
	VR$1 = vr$9;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$289;
	{
		(*(tmp$45*)((uint8*)&IR$ + 200ll))( VR$1, VS$1 );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static int64 HCHECKSTRINGOPS( struct $7ASTNODE* L$1, $12FB_DATACLASS LDCLASS$1, struct $7ASTNODE* R$1, $12FB_DATACLASS RDCLASS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* OTHER$1;
	fb$result$1 = 0ll;
	if( LDCLASS$1 != 2ll ) goto label$13;
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
		int64 TMP$84$2;
		TMP$84$2 = *(int64*)((uint8*)OTHER$1 + 8ll) & 511ll;
		if( TMP$84$2 == 4ll ) goto label$16;
		label$17:;
		if( TMP$84$2 != 7ll ) goto label$15;
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
	fb$result$1 = -1ll;
	label$11:;
	return fb$result$1;
}

static int64 HCHECKUDTOPS( struct $7ASTNODE* L$1, $12FB_DATACLASS LDCLASS$1, struct $7ASTNODE** R$1, $12FB_DATACLASS RDCLASS$1, int64 NO_UPCAST$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$19:;
	struct $8FBSYMBOL* PROC$1;
	fb$result$1 = 0ll;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 511ll) == 20ll ) goto label$22;
	{
		goto label$20;
	}
	goto label$21;
	label$22:;
	{
		if( *(int64*)L$1 != 9ll ) goto label$24;
		{
			goto label$20;
		}
		label$24:;
		label$23:;
	}
	label$21:;
	if( (*(int64*)((uint8*)*R$1 + 8ll) & 511ll) == 20ll ) goto label$26;
	{
		goto label$20;
	}
	label$26:;
	label$25:;
	if( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) == *(struct $8FBSYMBOL**)((uint8*)*R$1 + 16ll) ) goto label$28;
	{
		int64 vr$13 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)*R$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
		if( vr$13 != 0ll ) goto label$30;
		{
			goto label$20;
		}
		label$30:;
		label$29:;
		if( NO_UPCAST$1 == 0ll ) goto label$32;
		{
			goto label$20;
		}
		goto label$31;
		label$32:;
		{
			struct $7ASTNODE* vr$18 = ASTNEWCONV( *(int64*)((uint8*)L$1 + 8ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), *R$1, 0ll, (int64*)0ull );
			*R$1 = vr$18;
		}
		label$31:;
	}
	label$28:;
	label$27:;
	fb$result$1 = -1ll;
	label$20:;
	return fb$result$1;
}

static int64 HCHECKWSTRINGOPS( struct $7ASTNODE* L$1, int64* LDFULL$1, struct $7ASTNODE* R$1, int64* RDFULL$1, int64* IS_ZSTR$1 )
{
	int64 TMP$85$1;
	int64 TMP$86$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$33:;
	fb$result$1 = 0ll;
	int64 LDTYPE$1;
	int64 RDTYPE$1;
	if( (*LDFULL$1 & 480ll) == 0ll ) goto label$35;
	TMP$85$1 = 24ll;
	goto label$290;
	label$35:;
	TMP$85$1 = *LDFULL$1 & 31ll;
	label$290:;
	LDTYPE$1 = TMP$85$1;
	if( (*RDFULL$1 & 480ll) == 0ll ) goto label$36;
	TMP$86$1 = 24ll;
	goto label$291;
	label$36:;
	TMP$86$1 = *RDFULL$1 & 31ll;
	label$291:;
	RDTYPE$1 = TMP$86$1;
	if( LDTYPE$1 != 7ll ) goto label$38;
	{
		*IS_ZSTR$1 = (int64)-(RDTYPE$1 == 4ll);
	}
	goto label$37;
	label$38:;
	{
		*IS_ZSTR$1 = (int64)-(LDTYPE$1 == 4ll);
	}
	label$37:;
	if( *IS_ZSTR$1 == 0ll ) goto label$40;
	{
		fb$result$1 = -1ll;
		goto label$34;
	}
	label$40:;
	label$39:;
	if( LDTYPE$1 != 7ll ) goto label$42;
	{
		if( *(int64*)L$1 == 20ll ) goto label$44;
		{
			goto label$34;
		}
		label$44:;
		label$43:;
		*LDFULL$1 = (*LDFULL$1 & -512ll) | (*(int64*)((uint8*)&ENV$ + 544ll) & 511ll);
	}
	goto label$41;
	label$42:;
	{
		if( *(int64*)R$1 == 20ll ) goto label$46;
		{
			goto label$34;
		}
		label$46:;
		label$45:;
		*RDFULL$1 = (*RDFULL$1 & -512ll) | (*(int64*)((uint8*)&ENV$ + 544ll) & 511ll);
	}
	label$41:;
	fb$result$1 = -1ll;
	label$34:;
	return fb$result$1;
}

static int64 HCHECKZSTRINGOPS( struct $7ASTNODE* L$1, int64* LDFULL$1, struct $7ASTNODE* R$1, int64* RDFULL$1 )
{
	int64 TMP$87$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$47:;
	fb$result$1 = 0ll;
	if( (*LDFULL$1 & 480ll) == 0ll ) goto label$49;
	TMP$87$1 = 24ll;
	goto label$292;
	label$49:;
	TMP$87$1 = *LDFULL$1 & 31ll;
	label$292:;
	if( TMP$87$1 != 4ll ) goto label$51;
	{
		if( *(int64*)L$1 == 20ll ) goto label$53;
		{
			goto label$48;
		}
		label$53:;
		label$52:;
		*LDFULL$1 = (*LDFULL$1 & -512ll) | 3ll;
	}
	goto label$50;
	label$51:;
	{
		if( *(int64*)R$1 == 20ll ) goto label$55;
		{
			goto label$48;
		}
		label$55:;
		label$54:;
		*RDFULL$1 = (*RDFULL$1 & -512ll) | 3ll;
	}
	label$50:;
	fb$result$1 = -1ll;
	label$48:;
	return fb$result$1;
}

static void HCHECKENUMOPS( struct $7ASTNODE* L$1, $12FB_DATACLASS LDCLASS$1, struct $7ASTNODE* R$1, $12FB_DATACLASS RDCLASS$1 )
{
	label$56:;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 511ll) == (*(int64*)((uint8*)R$1 + 8ll) & 511ll) ) goto label$59;
	{
		if( ((int64)-(LDCLASS$1 != 0ll) | (int64)-(RDCLASS$1 != 0ll)) == 0ll ) goto label$61;
		{
			ERRREPORTWARN( 5ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		}
		label$61:;
		label$60:;
	}
	label$59:;
	label$58:;
	label$57:;
}

static int64 HCHECKCONSTANDPOINTEROPS( struct $7ASTNODE* L$1, $11FB_DATATYPE LDTYPE$1, struct $7ASTNODE* R$1, $11FB_DATATYPE RDTYPE$1 )
{
	int64 TMP$88$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$62:;
	fb$result$1 = 0ll;
	TMP$88$1 = 0ll;
	int64 vr$4 = SYMBCHECKCONSTASSIGNTOPLEVEL( LDTYPE$1, RDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll), 0ll, &TMP$88$1 );
	if( vr$4 != 0ll ) goto label$65;
	{
		ERRREPORT( 181ll, -1ll, (uint8*)0ull );
		goto label$63;
	}
	label$65:;
	label$64:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$67;
	{
		int64 TMP$89$2;
		if( (RDTYPE$1 & 480ll) == 0ll ) goto label$68;
		TMP$89$2 = 24ll;
		goto label$293;
		label$68:;
		TMP$89$2 = RDTYPE$1 & 31ll;
		label$293:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 56ll)) != 1ll ) goto label$70;
		{
			goto label$63;
		}
		label$70:;
		label$69:;
		int64 vr$10 = ASTPTRCHECK( LDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), 1ll, R$1 );
		if( vr$10 != 0ll ) goto label$72;
		{
			if( ((int64)-((LDTYPE$1 & 31ll) == 20ll) & (int64)-((RDTYPE$1 & 31ll) == 20ll)) == 0ll ) goto label$74;
			{
				int64 vr$18 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 16ll) );
				if( vr$18 <= 0ll ) goto label$76;
				{
					ERRREPORT( 181ll, -1ll, (uint8*)0ull );
					goto label$63;
				}
				label$76:;
				label$75:;
			}
			label$74:;
			label$73:;
			int64 vr$21 = ASTCHECKCONV( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1 );
			if( vr$21 == 0ll ) goto label$78;
			{
				ERRREPORTWARN( 4ll, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			label$78:;
			label$77:;
		}
		label$72:;
		label$71:;
	}
	goto label$66;
	label$67:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$79;
	{
		int64 TMP$90$2;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$80;
		TMP$90$2 = 24ll;
		goto label$294;
		label$80:;
		TMP$90$2 = LDTYPE$1 & 31ll;
		label$294:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$90$2 * 56ll)) != 1ll ) goto label$82;
		{
			goto label$63;
		}
		label$82:;
		label$81:;
		ERRREPORTWARN( 5ll, (uint8*)0ull, 1ll, (uint8*)0ull );
	}
	label$79:;
	label$66:;
	fb$result$1 = -1ll;
	label$63:;
	return fb$result$1;
}

static struct $7ASTNODE* HSHALLOWCOPY( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, int64 OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$147:;
	struct $7ASTNODE* T$1;
	int64 OFFSET$1;
	int64 BYTESTOCOPY$1;
	int64 HAS_VPTR$1;
	BYTESTOCOPY$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) + 80ll);
	HAS_VPTR$1 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) + 24ll) & 4194304ll) != 0ll);
	struct $7ASTNODE* vr$7 = ASTREMOVENOCONVCAST( L$1 );
	L$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTREMOVENOCONVCAST( R$1 );
	R$1 = vr$8;
	if( HAS_VPTR$1 == 0ll ) goto label$150;
	{
		BYTESTOCOPY$1 = BYTESTOCOPY$1 - *(int64*)((uint8*)&ENV$ + 592ll);
		if( BYTESTOCOPY$1 != 0ll ) goto label$152;
		{
			T$1 = (struct $7ASTNODE*)0ull;
			int64 vr$10 = ASTHASSIDEFX( L$1 );
			if( vr$10 == 0ll ) goto label$154;
			{
				struct $7ASTNODE* vr$12 = ASTREMSIDEFX( &L$1 );
				struct $7ASTNODE* vr$13 = ASTNEWLINK( T$1, vr$12, 0ll );
				T$1 = vr$13;
			}
			label$154:;
			label$153:;
			int64 vr$14 = ASTHASSIDEFX( R$1 );
			if( vr$14 == 0ll ) goto label$156;
			{
				struct $7ASTNODE* vr$16 = ASTREMSIDEFX( &R$1 );
				struct $7ASTNODE* vr$17 = ASTNEWLINK( T$1, vr$16, 0ll );
				T$1 = vr$17;
			}
			label$156:;
			label$155:;
			ASTDELTREE( L$1 );
			ASTDELTREE( R$1 );
			if( T$1 != (struct $7ASTNODE*)0ull ) goto label$158;
			{
				struct $7ASTNODE* vr$18 = ASTNEWNOP(  );
				T$1 = vr$18;
			}
			label$158:;
			label$157:;
			fb$result$1 = T$1;
			goto label$148;
		}
		label$152:;
		label$151:;
		struct $7ASTNODE* vr$19 = _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( L$1, *(int64*)((uint8*)&ENV$ + 592ll), 2ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
		L$1 = vr$19;
		struct $7ASTNODE* vr$20 = _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( R$1, *(int64*)((uint8*)&ENV$ + 592ll), 2ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
		R$1 = vr$20;
	}
	label$150:;
	label$149:;
	struct $7ASTNODE* vr$21 = ASTNEWMEM( 105ll, L$1, R$1, BYTESTOCOPY$1 );
	fb$result$1 = vr$21;
	label$148:;
	return fb$result$1;
}
