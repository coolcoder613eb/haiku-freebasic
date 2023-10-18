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
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
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
typedef void (*tmp$57)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezmem( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDBRANCH( struct $7ASTNODE*, struct $8FBSYMBOL*, int32, int32 );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWSELFBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLOOP( struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTNEWMEM( int32, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDVARDEREF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDWHILECOUNTERBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTBUILDWHILECOUNTEREND( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z19ASTBUILDVARDTORCALLP7ASTNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTCALLCTORTOCALL( struct $7ASTNODE* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int32 TYPEHASCTOR( int32, struct $8FBSYMBOL* );
int32 TYPEHASDEFCTOR( int32, struct $8FBSYMBOL* );
int32 TYPENEEDSDTORCALL( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLMEMNEWOP( int32, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLMEMDELETEOP( int32, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLCTORLIST( struct $8FBSYMBOL*, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
static struct $7ASTNODE* HELEMENTS( struct $7ASTNODE*, int32* );
static struct $7ASTNODE* HCALLDTORLIST( struct $7ASTNODE* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
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

struct $7ASTNODE* ASTNEWMEM( int32 OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, int64 BYTES$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* N$1;
	uint32 BLKMAXLEN$1;
	int32 vr$1 = (*(tmp$39*)((uint8*)&IR$ + 16))( 1 );
	BLKMAXLEN$1 = (uint32)vr$1;
	uint64 LGT$1;
	LGT$1 = (uint64)BYTES$1;
	if( OP$1 != 107 ) goto label$13;
	{
		if( *(int32*)R$1 != 16 ) goto label$15;
		{
			LGT$1 = *(uint64*)((uint8*)R$1 + 24);
		}
		goto label$14;
		label$15:;
		{
			LGT$1 = (uint64)(BLKMAXLEN$1 + 1u);
		}
		label$14:;
	}
	label$13:;
	label$12:;
	if( (-(LGT$1 > (uint64)BLKMAXLEN$1) | -(BLKMAXLEN$1 == 0u)) == 0 ) goto label$17;
	{
		struct $7ASTNODE* vr$10 = ASTNEWADDROF( L$1 );
		L$1 = vr$10;
		if( OP$1 != 105 ) goto label$19;
		{
			struct $7ASTNODE* vr$11 = ASTNEWADDROF( R$1 );
			R$1 = vr$11;
		}
		label$19:;
		label$18:;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$12 = ASTNEWNODE( 12, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$12;
	*(int32*)((uint8*)N$1 + 32) = OP$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = L$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = R$1;
	*(int64*)((uint8*)N$1 + 24) = BYTES$1;
	fb$result$1 = N$1;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDNEWOP( $6AST_OP OP$1, struct $8FBSYMBOL* TMP$1, struct $7ASTNODE* ELEMENTSEXPR$1, struct $7ASTNODE* INITEXPR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 DO_CLEAR$1, struct $7ASTNODE* NEWEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$26:;
	struct $7ASTNODE* LENEXPR$1;
	struct $7ASTNODE* TREE$1;
	int32 SAVE_ELMTS$1;
	int32 INIT$1;
	int32 ELEMENTSTREECOUNT$1;
	struct $8FBSYMBOL* EXITLABEL$1;
	INIT$1 = 5;
	TREE$1 = (struct $7ASTNODE*)0u;
	SAVE_ELMTS$1 = 0;
	ELEMENTSTREECOUNT$1 = 0;
	if( INITEXPR$1 == (struct $7ASTNODE*)0u ) goto label$29;
	{
		int32 vr$1 = TYPEHASCTOR( DTYPE$1, SUBTYPE$1 );
		if( vr$1 != 0 ) goto label$31;
		{
			INIT$1 = 0;
		}
		goto label$30;
		label$31:;
		if( *(int32*)INITEXPR$1 != 10 ) goto label$32;
		{
			INIT$1 = 1;
		}
		label$32:;
		label$30:;
	}
	goto label$28;
	label$29:;
	{
		int32 vr$3 = TYPEHASDEFCTOR( DTYPE$1, SUBTYPE$1 );
		if( vr$3 == 0 ) goto label$34;
		{
			if( OP$1 != 79 ) goto label$36;
			{
				INIT$1 = 3;
				ELEMENTSTREECOUNT$1 = ELEMENTSTREECOUNT$1 + 1;
			}
			goto label$35;
			label$36:;
			{
				INIT$1 = 2;
			}
			label$35:;
		}
		goto label$33;
		label$34:;
		if( DO_CLEAR$1 == 0 ) goto label$37;
		{
			INIT$1 = 4;
			ELEMENTSTREECOUNT$1 = ELEMENTSTREECOUNT$1 + 1;
		}
		label$37:;
		label$33:;
	}
	label$28:;
	if( OP$1 != 79 ) goto label$39;
	{
		if( NEWEXPR$1 != (struct $7ASTNODE*)0u ) goto label$41;
		{
			int32 vr$6 = TYPENEEDSDTORCALL( DTYPE$1, SUBTYPE$1 );
			SAVE_ELMTS$1 = vr$6;
		}
		label$41:;
		label$40:;
	}
	label$39:;
	label$38:;
	if( NEWEXPR$1 != (struct $7ASTNODE*)0u ) goto label$43;
	{
		ELEMENTSTREECOUNT$1 = ELEMENTSTREECOUNT$1 + 1;
	}
	label$43:;
	label$42:;
	if( SAVE_ELMTS$1 == 0 ) goto label$45;
	{
		ELEMENTSTREECOUNT$1 = ELEMENTSTREECOUNT$1 + 1;
	}
	label$45:;
	label$44:;
	if( ELEMENTSTREECOUNT$1 <= 1 ) goto label$47;
	{
		int32 vr$9 = ASTHASSIDEFX( ELEMENTSEXPR$1 );
		if( vr$9 == 0 ) goto label$49;
		{
			struct $7ASTNODE* vr$11 = ASTREMSIDEFX( &ELEMENTSEXPR$1 );
			TREE$1 = vr$11;
		}
		label$49:;
		label$48:;
	}
	label$47:;
	label$46:;
	if( NEWEXPR$1 != (struct $7ASTNODE*)0u ) goto label$51;
	{
		int64 vr$12 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( vr$12, 9, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$15 = HELEMENTS( ELEMENTSEXPR$1, &ELEMENTSTREECOUNT$1 );
		struct $7ASTNODE* vr$16 = ASTNEWBOP( 30, vr$15, vr$13, (struct $8FBSYMBOL*)0u, 1 );
		LENEXPR$1 = vr$16;
		if( SAVE_ELMTS$1 == 0 ) goto label$53;
		{
			struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 256), 9, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$19 = ASTNEWBOP( 28, LENEXPR$1, vr$18, (struct $8FBSYMBOL*)0u, 1 );
			LENEXPR$1 = vr$19;
		}
		label$53:;
		label$52:;
		struct $7ASTNODE* vr$20 = RTLMEMNEWOP( OP$1, LENEXPR$1, DTYPE$1, SUBTYPE$1 );
		NEWEXPR$1 = vr$20;
		if( NEWEXPR$1 != (struct $7ASTNODE*)0u ) goto label$55;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$27;
		}
		label$55:;
		label$54:;
	}
	label$51:;
	label$50:;
	struct $7ASTNODE* vr$21 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( TMP$1, NEWEXPR$1, 64 );
	struct $7ASTNODE* vr$22 = ASTNEWLINK( TREE$1, vr$21, 0 );
	TREE$1 = vr$22;
	struct $8FBSYMBOL* vr$23 = SYMBADDLABEL( (uint8*)0u, 4 );
	EXITLABEL$1 = vr$23;
	struct $7ASTNODE* vr$24 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$25 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$26 = ASTNEWBOP( 48, vr$25, vr$24, (struct $8FBSYMBOL*)0u, 1 );
	struct $7ASTNODE* vr$27 = ASTBUILDBRANCH( vr$26, EXITLABEL$1, 0, -1 );
	struct $7ASTNODE* vr$28 = ASTNEWLINK( TREE$1, vr$27, 0 );
	TREE$1 = vr$28;
	if( SAVE_ELMTS$1 == 0 ) goto label$57;
	{
		struct $7ASTNODE* vr$30 = HELEMENTS( ELEMENTSEXPR$1, &ELEMENTSTREECOUNT$1 );
		struct $7ASTNODE* vr$31 = ASTNEWVAR( TMP$1, 0ll, 41, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$32 = ASTNEWDEREF( vr$31, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
		struct $7ASTNODE* vr$33 = ASTNEWASSIGN( vr$32, vr$30, 64 );
		struct $7ASTNODE* vr$34 = ASTNEWLINK( TREE$1, vr$33, 0 );
		TREE$1 = vr$34;
		struct $7ASTNODE* vr$36 = ASTNEWCONSTI( (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 256), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$37 = ASTNEWVAR( TMP$1, 0ll, 32, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$38 = ASTNEWSELFBOP( 1, vr$37, vr$36, (struct $8FBSYMBOL*)0u, 1 );
		struct $7ASTNODE* vr$39 = ASTNEWLINK( TREE$1, vr$38, 0 );
		TREE$1 = vr$39;
	}
	label$57:;
	label$56:;
	{
		uint32 TMP$84$2;
		TMP$84$2 = (uint32)INIT$1;
		goto label$59;
		label$60:;
		{
			struct $7ASTNODE* vr$40 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$41 = ASTNEWDEREF( vr$40, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			struct $7ASTNODE* vr$42 = _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( vr$41, INITEXPR$1, 0, 64 );
			INITEXPR$1 = vr$42;
		}
		goto label$58;
		label$61:;
		{
			struct $7ASTNODE* vr$43 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$44 = ASTNEWDEREF( vr$43, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			struct $7ASTNODE* vr$45 = ASTCALLCTORTOCALL( INITEXPR$1 );
			struct $7ASTNODE* vr$46 = ASTPATCHCTORCALL( vr$45, vr$44 );
			INITEXPR$1 = vr$46;
		}
		goto label$58;
		label$62:;
		{
			struct $7ASTNODE* vr$47 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$48 = ASTNEWDEREF( vr$47, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			struct $7ASTNODE* vr$49 = ASTBUILDCTORCALL( SUBTYPE$1, vr$48 );
			INITEXPR$1 = vr$49;
		}
		goto label$58;
		label$63:;
		{
			struct $7ASTNODE* vr$51 = HELEMENTS( ELEMENTSEXPR$1, &ELEMENTSTREECOUNT$1 );
			struct $7ASTNODE* vr$52 = HCALLCTORLIST( TMP$1, vr$51, DTYPE$1, SUBTYPE$1 );
			INITEXPR$1 = vr$52;
		}
		goto label$58;
		label$64:;
		{
			int64 vr$53 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
			struct $7ASTNODE* vr$54 = ASTNEWCONSTI( vr$53, 9, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$56 = HELEMENTS( ELEMENTSEXPR$1, &ELEMENTSTREECOUNT$1 );
			struct $7ASTNODE* vr$57 = ASTNEWBOP( 30, vr$56, vr$54, (struct $8FBSYMBOL*)0u, 1 );
			LENEXPR$1 = vr$57;
			struct $7ASTNODE* vr$58 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, LENEXPR$1, 0, (int32*)0u );
			struct $7ASTNODE* vr$59 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$60 = ASTNEWDEREF( vr$59, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			struct $7ASTNODE* vr$61 = ASTNEWMEM( 107, vr$60, vr$58, 0ll );
			INITEXPR$1 = vr$61;
		}
		goto label$58;
		label$65:;
		{
			INITEXPR$1 = (struct $7ASTNODE*)0u;
		}
		goto label$58;
		label$59:;
		static const void* tmp$85[5] = {
			&&label$60,
			&&label$61,
			&&label$62,
			&&label$63,
			&&label$64,
		};
		if( TMP$84$2 > 4u ) goto label$65;
		goto *tmp$85[TMP$84$2 - 0u];
		label$58:;
	}
	struct $7ASTNODE* vr$62 = ASTNEWLINK( TREE$1, INITEXPR$1, 0 );
	TREE$1 = vr$62;
	struct $7ASTNODE* vr$63 = ASTNEWLABEL( EXITLABEL$1, 0 );
	struct $7ASTNODE* vr$64 = ASTNEWLINK( TREE$1, vr$63, 0 );
	TREE$1 = vr$64;
	struct $7ASTNODE* vr$65 = ASTNEWLOOP( EXITLABEL$1, TREE$1 );
	TREE$1 = vr$65;
	fb$result$1 = TREE$1;
	label$27:;
	return fb$result$1;
}

struct $7ASTNODE* ASTBUILDDELETEOP( $6AST_OP OP$1, struct $7ASTNODE* PTREXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$68:;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 DTYPE$1;
	TREE$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)PTREXPR$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PTREXPR$1 + 8);
	DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856);
	int32 vr$13 = ASTHASSIDEFX( PTREXPR$1 );
	if( vr$13 == 0 ) goto label$71;
	{
		struct $7ASTNODE* vr$15 = ASTREMSIDEFX( &PTREXPR$1 );
		TREE$1 = vr$15;
	}
	label$71:;
	label$70:;
	struct $8FBSYMBOL* vr$16 = SYMBADDLABEL( (uint8*)0u, 4 );
	LABEL$1 = vr$16;
	struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$18 = ASTCLONETREE( PTREXPR$1 );
	struct $7ASTNODE* vr$19 = ASTNEWBOP( 45, vr$18, vr$17, LABEL$1, 0 );
	struct $7ASTNODE* vr$20 = ASTNEWLINK( TREE$1, vr$19, 0 );
	TREE$1 = vr$20;
	int32 vr$21 = TYPENEEDSDTORCALL( DTYPE$1, SUBTYPE$1 );
	if( vr$21 == 0 ) goto label$73;
	{
		if( OP$1 != 81 ) goto label$75;
		{
			struct $7ASTNODE* vr$22 = ASTCLONETREE( PTREXPR$1 );
			struct $7ASTNODE* vr$23 = HCALLDTORLIST( vr$22 );
			struct $7ASTNODE* vr$24 = ASTNEWLINK( TREE$1, vr$23, 0 );
			TREE$1 = vr$24;
			struct $7ASTNODE* vr$26 = ASTNEWCONSTI( (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 228), 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$27 = ASTNEWBOP( 29, PTREXPR$1, vr$26, (struct $8FBSYMBOL*)0u, 1 );
			PTREXPR$1 = vr$27;
		}
		goto label$74;
		label$75:;
		{
			struct $7ASTNODE* vr$28 = ASTCLONETREE( PTREXPR$1 );
			struct $7ASTNODE* vr$29 = ASTNEWDEREF( vr$28, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			struct $7ASTNODE* vr$30 = _Z19ASTBUILDVARDTORCALLP7ASTNODE( vr$29 );
			struct $7ASTNODE* vr$31 = ASTNEWLINK( TREE$1, vr$30, 0 );
			TREE$1 = vr$31;
		}
		label$74:;
	}
	label$73:;
	label$72:;
	struct $7ASTNODE* vr$32 = RTLMEMDELETEOP( OP$1, PTREXPR$1, DTYPE$1, SUBTYPE$1 );
	struct $7ASTNODE* vr$33 = ASTNEWLINK( TREE$1, vr$32, 0 );
	TREE$1 = vr$33;
	struct $7ASTNODE* vr$34 = ASTNEWLABEL( LABEL$1, -1 );
	struct $7ASTNODE* vr$35 = ASTNEWLINK( TREE$1, vr$34, 0 );
	TREE$1 = vr$35;
	fb$result$1 = TREE$1;
	label$69:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADMEM( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$76:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* V2$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 68);
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$79;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$77;
	}
	label$79:;
	label$78:;
	struct $6IRVREG* vr$3 = ASTLOAD( L$1 );
	V1$1 = vr$3;
	ASTDELNODE( L$1 );
	if( R$1 == (struct $7ASTNODE*)0u ) goto label$81;
	{
		struct $6IRVREG* vr$4 = ASTLOAD( R$1 );
		V2$1 = vr$4;
		ASTDELNODE( R$1 );
	}
	goto label$80;
	label$81:;
	{
		V2$1 = (struct $6IRVREG*)0u;
	}
	label$80:;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$83;
	{
		(*(tmp$57*)((uint8*)&IR$ + 148))( *(int32*)((uint8*)N$1 + 32), V1$1, V2$1, *(int64*)((uint8*)N$1 + 24) );
	}
	label$83:;
	label$82:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$77:;
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

static struct $7ASTNODE* HCALLCTORLIST( struct $8FBSYMBOL* TMP$1, struct $7ASTNODE* ELEMENTSEXPR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	struct $8FBSYMBOL* CNT$1;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* EXITLABEL$1;
	struct $8FBSYMBOL* ITER$1;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 9, (struct $8FBSYMBOL*)0u );
	CNT$1 = vr$1;
	struct $8FBSYMBOL* vr$2 = SYMBADDLABEL( (uint8*)0u, 4 );
	LABEL$1 = vr$2;
	struct $8FBSYMBOL* vr$3 = SYMBADDLABEL( (uint8*)0u, 4 );
	EXITLABEL$1 = vr$3;
	struct $8FBSYMBOL* vr$13 = SYMBADDTEMPVAR( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1 );
	ITER$1 = vr$13;
	struct $7ASTNODE* vr$14 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$15 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( ITER$1, vr$14, 64 );
	TREE$1 = vr$15;
	struct $7ASTNODE* vr$16 = ASTBUILDWHILECOUNTERBEGIN( TREE$1, CNT$1, LABEL$1, EXITLABEL$1, ELEMENTSEXPR$1, 0 );
	TREE$1 = vr$16;
	struct $7ASTNODE* vr$17 = ASTBUILDVARDEREF( ITER$1 );
	struct $7ASTNODE* vr$18 = ASTBUILDCTORCALL( SUBTYPE$1, vr$17 );
	struct $7ASTNODE* vr$19 = ASTNEWLINK( TREE$1, vr$18, 0 );
	TREE$1 = vr$19;
	struct $7ASTNODE* vr$20 = ASTBUILDVARINC( ITER$1, 1 );
	struct $7ASTNODE* vr$21 = ASTNEWLINK( TREE$1, vr$20, 0 );
	TREE$1 = vr$21;
	struct $7ASTNODE* vr$22 = ASTBUILDWHILECOUNTEREND( TREE$1, CNT$1, LABEL$1, EXITLABEL$1, 0 );
	TREE$1 = vr$22;
	struct $7ASTNODE* vr$23 = ASTNEWLOOP( LABEL$1, TREE$1 );
	TREE$1 = vr$23;
	struct $7ASTNODE* vr$24 = ASTNEWLOOP( EXITLABEL$1, TREE$1 );
	TREE$1 = vr$24;
	fb$result$1 = TREE$1;
	label$21:;
	return fb$result$1;
}

static struct $7ASTNODE* HELEMENTS( struct $7ASTNODE* ELEMENTSEXPR$1, int32* ELEMENTSTREECOUNT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	if( *ELEMENTSTREECOUNT$1 <= 1 ) goto label$25;
	{
		struct $7ASTNODE* vr$2 = ASTCLONETREE( ELEMENTSEXPR$1 );
		fb$result$1 = vr$2;
	}
	goto label$24;
	label$25:;
	{
		fb$result$1 = ELEMENTSEXPR$1;
	}
	label$24:;
	*ELEMENTSTREECOUNT$1 = *ELEMENTSTREECOUNT$1 + -1;
	label$23:;
	return fb$result$1;
}

static struct $7ASTNODE* HCALLDTORLIST( struct $7ASTNODE* PTREXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	struct $8FBSYMBOL* CNT$1;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* EXITLABEL$1;
	struct $8FBSYMBOL* ITER$1;
	struct $8FBSYMBOL* ELMTS$1;
	struct $7ASTNODE* TREE$1;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
	CNT$1 = vr$1;
	struct $8FBSYMBOL* vr$2 = SYMBADDLABEL( (uint8*)0u, 4 );
	LABEL$1 = vr$2;
	struct $8FBSYMBOL* vr$3 = SYMBADDLABEL( (uint8*)0u, 4 );
	EXITLABEL$1 = vr$3;
	struct $8FBSYMBOL* vr$6 = SYMBADDTEMPVAR( *(int32*)((uint8*)PTREXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)PTREXPR$1 + 8) );
	ITER$1 = vr$6;
	struct $8FBSYMBOL* vr$7 = SYMBADDTEMPVAR( 8, (struct $8FBSYMBOL*)0u );
	ELMTS$1 = vr$7;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 256)), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$11 = ASTCLONETREE( PTREXPR$1 );
	struct $7ASTNODE* vr$12 = ASTNEWBOP( 28, vr$11, vr$10, (struct $8FBSYMBOL*)0u, 1 );
	struct $7ASTNODE* vr$13 = ASTNEWCONV( 41, (struct $8FBSYMBOL*)0u, vr$12, 8, (int32*)0u );
	struct $7ASTNODE* vr$14 = ASTNEWDEREF( vr$13, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
	struct $7ASTNODE* vr$15 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( ELMTS$1, vr$14, 64 );
	TREE$1 = vr$15;
	struct $7ASTNODE* vr$16 = ASTNEWVAR( ELMTS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$17 = ASTNEWBOP( 28, PTREXPR$1, vr$16, (struct $8FBSYMBOL*)0u, 7 );
	struct $7ASTNODE* vr$18 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( ITER$1, vr$17, 64 );
	struct $7ASTNODE* vr$19 = ASTNEWLINK( TREE$1, vr$18, 0 );
	TREE$1 = vr$19;
	struct $7ASTNODE* vr$20 = ASTNEWVAR( ELMTS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$21 = ASTBUILDWHILECOUNTERBEGIN( TREE$1, CNT$1, LABEL$1, EXITLABEL$1, vr$20, -1 );
	TREE$1 = vr$21;
	struct $7ASTNODE* vr$22 = ASTBUILDVARINC( ITER$1, -1 );
	struct $7ASTNODE* vr$23 = ASTNEWLINK( TREE$1, vr$22, 0 );
	TREE$1 = vr$23;
	struct $7ASTNODE* vr$24 = ASTBUILDVARDEREF( ITER$1 );
	struct $7ASTNODE* vr$25 = _Z19ASTBUILDVARDTORCALLP7ASTNODE( vr$24 );
	struct $7ASTNODE* vr$26 = ASTNEWLINK( TREE$1, vr$25, 0 );
	TREE$1 = vr$26;
	struct $7ASTNODE* vr$27 = ASTBUILDWHILECOUNTEREND( TREE$1, CNT$1, LABEL$1, EXITLABEL$1, -1 );
	TREE$1 = vr$27;
	fb$result$1 = TREE$1;
	label$67:;
	return fb$result$1;
}
