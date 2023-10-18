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
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
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
typedef int32 (*tmp$38)( void );
typedef void (*tmp$37)( void );
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
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$92)( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$93)( struct $6IRVREG*, int32 );
typedef void (*tmp$94)( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$95)( struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$96)( struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$97)( struct $8FBSYMBOL*, int32, int32, uint8* );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
void* calloc( uint32, uint32 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
int32 fb_StrLen( void*, int32 );
static void fb_ctor__emit( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
int32 EMITGASX86_CTOR( void );
static struct $9EMIT_NODE* HOPTSYMOP( struct $9EMIT_NODE*, struct $9EMIT_NODE* );
static void HPEEPHOLEOPT( void );
static struct $6IRVREG* HNEWVR( struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWNODE( $19EMIT_NODECLASS_ENUM, int32 );
static struct $9EMIT_NODE* HNEWBOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWUOP( int32, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWREL( int32, struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWSTK( int32, struct $6IRVREG*, int32 );
static struct $9EMIT_NODE* HNEWBRANCH( int32, struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static struct $9EMIT_NODE* HNEWSYMOP( int32, struct $8FBSYMBOL* );
static void HNEWLIT( uint8*, int32 );
static struct $9EMIT_NODE* HNEWMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static struct $9EMIT_NODE* HNEWDBG( int32, struct $8FBSYMBOL*, int32, int32, uint8* );
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
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$98)( int32, int32, int32, int32* );
typedef void (*tmp$99)( int32, int32, int32*, int32* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$100)( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$101)( int32, int32 );
typedef uint8* (*tmp$102)( int32 );
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
struct $7EMITCTX EMIT$;

int32 EMITINIT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	if( *(int32*)&EMIT$ == 0 ) goto label$13;
	{
		fb$result$1 = -1;
		goto label$11;
	}
	label$13:;
	label$12:;
	EMITGASX86_CTOR(  );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&EMIT$ + 16), 2048, 56 );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&EMIT$ + 72), 6144, 72 );
	*(int32*)&EMIT$ = -1;
	*(int32*)((uint8*)&EMIT$ + 4) = 0;
	int32 vr$3 = (*(tmp$38*)((uint8*)&EMIT$ + 148))(  );
	fb$result$1 = vr$3;
	label$11:;
	return fb$result$1;
}

void EMITEND( void )
{
	label$14:;
	if( *(int32*)&EMIT$ != 0 ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	(*(tmp$37*)((uint8*)&EMIT$ + 152))(  );
	*(int32*)&EMIT$ = 0;
	label$15:;
}

void EMITWRITESTR( uint8* S$1, int32 ADDTAB$1 )
{
	label$18:;
	static FBSTRING OSTR$1;
	if( ADDTAB$1 == 0 ) goto label$21;
	{
		FBSTRING TMP$106$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"\x09", 2, 0 );
		__builtin_memset( &TMP$106$2, 0, 12 );
		FBSTRING* vr$2 = fb_StrConcat( &TMP$106$2, (void*)&OSTR$1, -1, (void*)S$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	}
	goto label$20;
	label$21:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)S$1, 0, 0 );
	}
	label$20:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	int32 vr$3 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)&OSTR$1, -1 );
	if( vr$3 == 0 ) goto label$23;
	{
	}
	label$23:;
	label$22:;
	label$19:;
}

void EMITRESET( void )
{
	label$24:;
	static int32 C$1;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	FLISTRESET( (struct $6TFLIST*)((uint8*)&EMIT$ + 72) );
	*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 128) = (struct $9EMIT_NODE*)0u;
	{
		C$1 = 0;
		label$29:;
		{
			*(int32*)((uint8*)((uint8*)&EMIT$ + (C$1 << (2 & 31))) + 132) = 0;
		}
		label$27:;
		C$1 = C$1 + 1;
		label$26:;
		if( C$1 <= 1 ) goto label$29;
		label$28:;
	}
	label$25:;
}

void EMITFLUSH( void )
{
	label$57:;
	struct $9EMIT_NODE* N$1;
	HPEEPHOLEOPT(  );
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	N$1 = (struct $9EMIT_NODE*)vr$1;
	label$59:;
	if( N$1 == (struct $9EMIT_NODE*)0u ) goto label$60;
	{
		*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 128) = N$1;
		{
			uint32 TMP$111$3;
			TMP$111$3 = *(uint32*)N$1;
			goto label$62;
			label$63:;
			{
			}
			goto label$61;
			label$64:;
			{
				(*(tmp$44*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $6IRVREG**)((uint8*)N$1 + 16) );
			}
			goto label$61;
			label$65:;
			{
				(*(tmp$52*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12) );
			}
			goto label$61;
			label$66:;
			{
				(*(tmp$92*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16), *(struct $6IRVREG**)((uint8*)N$1 + 20), *(struct $6IRVREG**)((uint8*)N$1 + 24) );
			}
			goto label$61;
			label$67:;
			{
				(*(tmp$93*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(int32*)((uint8*)N$1 + 16) );
			}
			goto label$61;
			label$68:;
			{
				(*(tmp$94*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 20) );
			}
			goto label$61;
			label$69:;
			{
				(*(tmp$41*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
			}
			goto label$61;
			label$70:;
			{
				(*(tmp$49*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + 532))( *(uint8**)((uint8*)N$1 + 12) );
				if( *(uint8**)((uint8*)N$1 + 12) == (uint8*)0u ) goto label$72;
				{
					free( *(void**)((uint8*)N$1 + 12) );
				}
				label$72:;
				label$71:;
			}
			goto label$61;
			label$73:;
			{
				(*(tmp$95*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + 536))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(uint64**)((uint8*)N$1 + 12), *(struct $8FBSYMBOL***)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 20), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24), *(uint64*)((uint8*)N$1 + 32), *(uint64*)((uint8*)N$1 + 40) );
				free( *(void**)((uint8*)N$1 + 12) );
				free( *(void**)((uint8*)N$1 + 16) );
			}
			goto label$61;
			label$74:;
			{
				(*(tmp$96*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $6IRVREG**)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 20), *(int32*)((uint8*)N$1 + 24) );
			}
			goto label$61;
			label$75:;
			{
				(*(tmp$97*)((uint8*)*(void***)((uint8*)&EMIT$ + 236) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12), *(int32*)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 24), *(uint8**)((uint8*)N$1 + 20) );
			}
			goto label$61;
			label$62:;
			static const void* tmp$112[11] = {
				&&label$63,
				&&label$64,
				&&label$65,
				&&label$66,
				&&label$67,
				&&label$68,
				&&label$70,
				&&label$73,
				&&label$69,
				&&label$74,
				&&label$75,
			};
			if( TMP$111$3 > 10u ) goto label$61;
			goto *tmp$112[TMP$111$3 - 0u];
			label$61:;
		}
		void* vr$62 = FLISTGETNEXT( (void*)N$1 );
		N$1 = (struct $9EMIT_NODE*)vr$62;
	}
	goto label$59;
	label$60:;
	label$58:;
}

struct $8REGCLASS* EMITGETREGCLASS( int32 DCLASS$1 )
{
	struct $8REGCLASS* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$76:;
	fb$result$1 = *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8);
	label$77:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLOAD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$111:;
	{
		int32 TMP$114$2;
		uint32 TMP$115$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$113;
		TMP$114$2 = 24;
		goto label$148;
		label$113:;
		TMP$114$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$148:;
		TMP$115$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$114$2 * 28)) + 20);
		goto label$115;
		label$116:;
		{
			{
				int32 TMP$116$4;
				uint32 TMP$117$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$117;
				TMP$116$4 = 24;
				goto label$149;
				label$117:;
				TMP$116$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$149:;
				TMP$117$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$116$4 * 28)) + 20);
				goto label$119;
				label$120:;
				{
					struct $9EMIT_NODE* vr$11 = HNEWBOP( 11, DVREG$1, SVREG$1 );
					fb$result$1 = vr$11;
				}
				goto label$118;
				label$121:;
				{
					struct $9EMIT_NODE* vr$12 = HNEWBOP( 10, DVREG$1, SVREG$1 );
					fb$result$1 = vr$12;
				}
				goto label$118;
				label$122:;
				{
					struct $9EMIT_NODE* vr$13 = HNEWBOP( 12, DVREG$1, SVREG$1 );
					fb$result$1 = vr$13;
				}
				goto label$118;
				label$123:;
				{
					struct $9EMIT_NODE* vr$14 = HNEWBOP( 9, DVREG$1, SVREG$1 );
					fb$result$1 = vr$14;
				}
				goto label$118;
				label$119:;
				static const void* tmp$124[11] = {
					&&label$122,
					&&label$123,
					&&label$123,
					&&label$123,
					&&label$123,
					&&label$123,
					&&label$123,
					&&label$120,
					&&label$120,
					&&label$121,
					&&label$121,
				};
				if( TMP$117$4 > 10u ) goto label$123;
				goto *tmp$124[TMP$117$4 - 0u];
				label$118:;
			}
		}
		goto label$114;
		label$124:;
		{
			{
				int32 TMP$118$4;
				uint32 TMP$119$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$125;
				TMP$118$4 = 24;
				goto label$150;
				label$125:;
				TMP$118$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$150:;
				TMP$119$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$118$4 * 28)) + 20);
				goto label$127;
				label$128:;
				{
					struct $9EMIT_NODE* vr$20 = HNEWBOP( 7, DVREG$1, SVREG$1 );
					fb$result$1 = vr$20;
				}
				goto label$126;
				label$129:;
				{
					struct $9EMIT_NODE* vr$21 = HNEWBOP( 6, DVREG$1, SVREG$1 );
					fb$result$1 = vr$21;
				}
				goto label$126;
				label$130:;
				{
					struct $9EMIT_NODE* vr$22 = HNEWBOP( 8, DVREG$1, SVREG$1 );
					fb$result$1 = vr$22;
				}
				goto label$126;
				label$131:;
				{
					struct $9EMIT_NODE* vr$23 = HNEWBOP( 5, DVREG$1, SVREG$1 );
					fb$result$1 = vr$23;
				}
				goto label$126;
				label$127:;
				static const void* tmp$125[11] = {
					&&label$130,
					&&label$131,
					&&label$131,
					&&label$131,
					&&label$131,
					&&label$131,
					&&label$131,
					&&label$128,
					&&label$128,
					&&label$129,
					&&label$129,
				};
				if( TMP$119$4 > 10u ) goto label$131;
				goto *tmp$125[TMP$119$4 - 0u];
				label$126:;
			}
		}
		goto label$114;
		label$132:;
		{
			{
				int32 TMP$120$4;
				uint32 TMP$121$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$133;
				TMP$120$4 = 24;
				goto label$151;
				label$133:;
				TMP$120$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$151:;
				TMP$121$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$120$4 * 28)) + 20);
				goto label$135;
				label$136:;
				{
					struct $9EMIT_NODE* vr$29 = HNEWBOP( 15, DVREG$1, SVREG$1 );
					fb$result$1 = vr$29;
				}
				goto label$134;
				label$137:;
				{
					struct $9EMIT_NODE* vr$30 = HNEWBOP( 14, DVREG$1, SVREG$1 );
					fb$result$1 = vr$30;
				}
				goto label$134;
				label$138:;
				{
					struct $9EMIT_NODE* vr$31 = HNEWBOP( 16, DVREG$1, SVREG$1 );
					fb$result$1 = vr$31;
				}
				goto label$134;
				label$139:;
				{
					struct $9EMIT_NODE* vr$32 = HNEWBOP( 13, DVREG$1, SVREG$1 );
					fb$result$1 = vr$32;
				}
				goto label$134;
				label$135:;
				static const void* tmp$126[11] = {
					&&label$138,
					&&label$139,
					&&label$139,
					&&label$139,
					&&label$139,
					&&label$139,
					&&label$139,
					&&label$136,
					&&label$136,
					&&label$137,
					&&label$137,
				};
				if( TMP$121$4 > 10u ) goto label$139;
				goto *tmp$126[TMP$121$4 - 0u];
				label$134:;
			}
		}
		goto label$114;
		label$140:;
		{
			{
				int32 TMP$122$4;
				uint32 TMP$123$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$141;
				TMP$122$4 = 24;
				goto label$152;
				label$141:;
				TMP$122$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$152:;
				TMP$123$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$122$4 * 28)) + 20);
				goto label$143;
				label$144:;
				{
					struct $9EMIT_NODE* vr$38 = HNEWBOP( 3, DVREG$1, SVREG$1 );
					fb$result$1 = vr$38;
				}
				goto label$142;
				label$145:;
				{
					struct $9EMIT_NODE* vr$39 = HNEWBOP( 2, DVREG$1, SVREG$1 );
					fb$result$1 = vr$39;
				}
				goto label$142;
				label$146:;
				{
					struct $9EMIT_NODE* vr$40 = HNEWBOP( 4, DVREG$1, SVREG$1 );
					fb$result$1 = vr$40;
				}
				goto label$142;
				label$147:;
				{
					struct $9EMIT_NODE* vr$41 = HNEWBOP( 1, DVREG$1, SVREG$1 );
					fb$result$1 = vr$41;
				}
				goto label$142;
				label$143:;
				static const void* tmp$127[11] = {
					&&label$146,
					&&label$147,
					&&label$147,
					&&label$147,
					&&label$147,
					&&label$147,
					&&label$147,
					&&label$144,
					&&label$144,
					&&label$145,
					&&label$145,
				};
				if( TMP$123$4 > 10u ) goto label$147;
				goto *tmp$127[TMP$123$4 - 0u];
				label$142:;
			}
		}
		goto label$114;
		label$115:;
		static const void* tmp$128[11] = {
			&&label$132,
			&&label$140,
			&&label$140,
			&&label$140,
			&&label$140,
			&&label$140,
			&&label$140,
			&&label$116,
			&&label$116,
			&&label$124,
			&&label$124,
		};
		if( TMP$115$2 > 10u ) goto label$140;
		goto *tmp$128[TMP$115$2 - 0u];
		label$114:;
	}
	label$112:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTORE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$153:;
	{
		int32 TMP$129$2;
		uint32 TMP$130$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$155;
		TMP$129$2 = 24;
		goto label$190;
		label$155:;
		TMP$129$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$190:;
		TMP$130$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$129$2 * 28)) + 20);
		goto label$157;
		label$158:;
		{
			{
				int32 TMP$131$4;
				uint32 TMP$132$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$159;
				TMP$131$4 = 24;
				goto label$191;
				label$159:;
				TMP$131$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$191:;
				TMP$132$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$131$4 * 28)) + 20);
				goto label$161;
				label$162:;
				{
					struct $9EMIT_NODE* vr$11 = HNEWBOP( 27, DVREG$1, SVREG$1 );
					fb$result$1 = vr$11;
				}
				goto label$160;
				label$163:;
				{
					struct $9EMIT_NODE* vr$12 = HNEWBOP( 26, DVREG$1, SVREG$1 );
					fb$result$1 = vr$12;
				}
				goto label$160;
				label$164:;
				{
					struct $9EMIT_NODE* vr$13 = HNEWBOP( 28, DVREG$1, SVREG$1 );
					fb$result$1 = vr$13;
				}
				goto label$160;
				label$165:;
				{
					struct $9EMIT_NODE* vr$14 = HNEWBOP( 25, DVREG$1, SVREG$1 );
					fb$result$1 = vr$14;
				}
				goto label$160;
				label$161:;
				static const void* tmp$139[11] = {
					&&label$164,
					&&label$165,
					&&label$165,
					&&label$165,
					&&label$165,
					&&label$165,
					&&label$165,
					&&label$162,
					&&label$162,
					&&label$163,
					&&label$163,
				};
				if( TMP$132$4 > 10u ) goto label$165;
				goto *tmp$139[TMP$132$4 - 0u];
				label$160:;
			}
		}
		goto label$156;
		label$166:;
		{
			{
				int32 TMP$133$4;
				uint32 TMP$134$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$167;
				TMP$133$4 = 24;
				goto label$192;
				label$167:;
				TMP$133$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$192:;
				TMP$134$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$133$4 * 28)) + 20);
				goto label$169;
				label$170:;
				{
					struct $9EMIT_NODE* vr$20 = HNEWBOP( 23, DVREG$1, SVREG$1 );
					fb$result$1 = vr$20;
				}
				goto label$168;
				label$171:;
				{
					struct $9EMIT_NODE* vr$21 = HNEWBOP( 22, DVREG$1, SVREG$1 );
					fb$result$1 = vr$21;
				}
				goto label$168;
				label$172:;
				{
					struct $9EMIT_NODE* vr$22 = HNEWBOP( 24, DVREG$1, SVREG$1 );
					fb$result$1 = vr$22;
				}
				goto label$168;
				label$173:;
				{
					struct $9EMIT_NODE* vr$23 = HNEWBOP( 21, DVREG$1, SVREG$1 );
					fb$result$1 = vr$23;
				}
				goto label$168;
				label$169:;
				static const void* tmp$140[11] = {
					&&label$172,
					&&label$173,
					&&label$173,
					&&label$173,
					&&label$173,
					&&label$173,
					&&label$173,
					&&label$170,
					&&label$170,
					&&label$171,
					&&label$171,
				};
				if( TMP$134$4 > 10u ) goto label$173;
				goto *tmp$140[TMP$134$4 - 0u];
				label$168:;
			}
		}
		goto label$156;
		label$174:;
		{
			{
				int32 TMP$135$4;
				uint32 TMP$136$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$175;
				TMP$135$4 = 24;
				goto label$193;
				label$175:;
				TMP$135$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$193:;
				TMP$136$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$135$4 * 28)) + 20);
				goto label$177;
				label$178:;
				{
					struct $9EMIT_NODE* vr$29 = HNEWBOP( 31, DVREG$1, SVREG$1 );
					fb$result$1 = vr$29;
				}
				goto label$176;
				label$179:;
				{
					struct $9EMIT_NODE* vr$30 = HNEWBOP( 30, DVREG$1, SVREG$1 );
					fb$result$1 = vr$30;
				}
				goto label$176;
				label$180:;
				{
					struct $9EMIT_NODE* vr$31 = HNEWBOP( 32, DVREG$1, SVREG$1 );
					fb$result$1 = vr$31;
				}
				goto label$176;
				label$181:;
				{
					struct $9EMIT_NODE* vr$32 = HNEWBOP( 29, DVREG$1, SVREG$1 );
					fb$result$1 = vr$32;
				}
				goto label$176;
				label$177:;
				static const void* tmp$141[11] = {
					&&label$180,
					&&label$181,
					&&label$181,
					&&label$181,
					&&label$181,
					&&label$181,
					&&label$181,
					&&label$178,
					&&label$178,
					&&label$179,
					&&label$179,
				};
				if( TMP$136$4 > 10u ) goto label$181;
				goto *tmp$141[TMP$136$4 - 0u];
				label$176:;
			}
		}
		goto label$156;
		label$182:;
		{
			{
				int32 TMP$137$4;
				uint32 TMP$138$4;
				if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$183;
				TMP$137$4 = 24;
				goto label$194;
				label$183:;
				TMP$137$4 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
				label$194:;
				TMP$138$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$137$4 * 28)) + 20);
				goto label$185;
				label$186:;
				{
					struct $9EMIT_NODE* vr$38 = HNEWBOP( 19, DVREG$1, SVREG$1 );
					fb$result$1 = vr$38;
				}
				goto label$184;
				label$187:;
				{
					struct $9EMIT_NODE* vr$39 = HNEWBOP( 18, DVREG$1, SVREG$1 );
					fb$result$1 = vr$39;
				}
				goto label$184;
				label$188:;
				{
					struct $9EMIT_NODE* vr$40 = HNEWBOP( 20, DVREG$1, SVREG$1 );
					fb$result$1 = vr$40;
				}
				goto label$184;
				label$189:;
				{
					struct $9EMIT_NODE* vr$41 = HNEWBOP( 17, DVREG$1, SVREG$1 );
					fb$result$1 = vr$41;
				}
				goto label$184;
				label$185:;
				static const void* tmp$142[11] = {
					&&label$188,
					&&label$189,
					&&label$189,
					&&label$189,
					&&label$189,
					&&label$189,
					&&label$189,
					&&label$186,
					&&label$186,
					&&label$187,
					&&label$187,
				};
				if( TMP$138$4 > 10u ) goto label$189;
				goto *tmp$142[TMP$138$4 - 0u];
				label$184:;
			}
		}
		goto label$156;
		label$157:;
		static const void* tmp$143[11] = {
			&&label$174,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$182,
			&&label$158,
			&&label$158,
			&&label$166,
			&&label$166,
		};
		if( TMP$130$2 > 10u ) goto label$182;
		goto *tmp$143[TMP$130$2 - 0u];
		label$156:;
	}
	label$154:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMOV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$195:;
	{
		int32 TMP$144$2;
		uint32 TMP$145$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$197;
		TMP$144$2 = 24;
		goto label$203;
		label$197:;
		TMP$144$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$203:;
		TMP$145$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$144$2 * 28)) + 20);
		goto label$199;
		label$200:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 35, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$198;
		label$201:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 34, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$198;
		label$202:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 33, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$198;
		label$199:;
		static const void* tmp$146[4] = {
			&&label$200,
			&&label$200,
			&&label$201,
			&&label$201,
		};
		if( (TMP$145$2 - 7u) > 3u ) goto label$202;
		goto *tmp$146[TMP$145$2 - 7u];
		label$198:;
	}
	label$196:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITADD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$204:;
	{
		int32 TMP$147$2;
		uint32 TMP$148$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$206;
		TMP$147$2 = 24;
		goto label$212;
		label$206:;
		TMP$147$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$212:;
		TMP$148$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$147$2 * 28)) + 20);
		goto label$208;
		label$209:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 38, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$207;
		label$210:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 37, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$207;
		label$211:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 36, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$207;
		label$208:;
		static const void* tmp$149[4] = {
			&&label$209,
			&&label$209,
			&&label$210,
			&&label$210,
		};
		if( (TMP$148$2 - 7u) > 3u ) goto label$211;
		goto *tmp$149[TMP$148$2 - 7u];
		label$207:;
	}
	label$205:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSUB( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$213:;
	{
		int32 TMP$150$2;
		uint32 TMP$151$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$215;
		TMP$150$2 = 24;
		goto label$221;
		label$215:;
		TMP$150$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$221:;
		TMP$151$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$150$2 * 28)) + 20);
		goto label$217;
		label$218:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 41, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$216;
		label$219:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 40, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$216;
		label$220:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 39, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$216;
		label$217:;
		static const void* tmp$152[4] = {
			&&label$218,
			&&label$218,
			&&label$219,
			&&label$219,
		};
		if( (TMP$151$2 - 7u) > 3u ) goto label$220;
		goto *tmp$152[TMP$151$2 - 7u];
		label$216:;
	}
	label$214:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMUL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$222:;
	{
		int32 TMP$153$2;
		uint32 TMP$154$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$224;
		TMP$153$2 = 24;
		goto label$230;
		label$224:;
		TMP$153$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$230:;
		TMP$154$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$153$2 * 28)) + 20);
		goto label$226;
		label$227:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 44, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$225;
		label$228:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 43, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$225;
		label$229:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 42, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$225;
		label$226:;
		static const void* tmp$155[4] = {
			&&label$227,
			&&label$227,
			&&label$228,
			&&label$228,
		};
		if( (TMP$154$2 - 7u) > 3u ) goto label$229;
		goto *tmp$155[TMP$154$2 - 7u];
		label$225:;
	}
	label$223:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDIV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$231:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 46, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$232:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITINTDIV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$233:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 45, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$234:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMOD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$235:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 48, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$236:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSHL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$237:;
	{
		int32 TMP$156$2;
		int32 TMP$157$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$239;
		TMP$156$2 = 24;
		goto label$245;
		label$239:;
		TMP$156$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$245:;
		TMP$157$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$156$2 * 28)) + 20);
		if( TMP$157$2 == 7 ) goto label$242;
		label$243:;
		if( TMP$157$2 != 8 ) goto label$241;
		label$242:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 52, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$240;
		label$241:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 51, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$244:;
		label$240:;
	}
	label$238:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSHR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$246:;
	{
		int32 TMP$158$2;
		int32 TMP$159$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$248;
		TMP$158$2 = 24;
		goto label$254;
		label$248:;
		TMP$158$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$254:;
		TMP$159$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$158$2 * 28)) + 20);
		if( TMP$159$2 == 7 ) goto label$251;
		label$252:;
		if( TMP$159$2 != 8 ) goto label$250;
		label$251:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 54, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$249;
		label$250:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 53, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$253:;
		label$249:;
	}
	label$247:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITAND( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$255:;
	{
		int32 TMP$160$2;
		int32 TMP$161$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$257;
		TMP$160$2 = 24;
		goto label$263;
		label$257:;
		TMP$160$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$263:;
		TMP$161$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$160$2 * 28)) + 20);
		if( TMP$161$2 == 7 ) goto label$260;
		label$261:;
		if( TMP$161$2 != 8 ) goto label$259;
		label$260:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 56, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$258;
		label$259:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 55, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$262:;
		label$258:;
	}
	label$256:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITOR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$264:;
	{
		int32 TMP$162$2;
		int32 TMP$163$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$266;
		TMP$162$2 = 24;
		goto label$272;
		label$266:;
		TMP$162$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$272:;
		TMP$163$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$162$2 * 28)) + 20);
		if( TMP$163$2 == 7 ) goto label$269;
		label$270:;
		if( TMP$163$2 != 8 ) goto label$268;
		label$269:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 58, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$267;
		label$268:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 57, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$271:;
		label$267:;
	}
	label$265:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITXOR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$273:;
	{
		int32 TMP$164$2;
		int32 TMP$165$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$275;
		TMP$164$2 = 24;
		goto label$281;
		label$275:;
		TMP$164$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$281:;
		TMP$165$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$164$2 * 28)) + 20);
		if( TMP$165$2 == 7 ) goto label$278;
		label$279:;
		if( TMP$165$2 != 8 ) goto label$277;
		label$278:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 60, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$276;
		label$277:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 59, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$280:;
		label$276:;
	}
	label$274:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEQV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$282:;
	{
		int32 TMP$166$2;
		int32 TMP$167$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$284;
		TMP$166$2 = 24;
		goto label$290;
		label$284:;
		TMP$166$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$290:;
		TMP$167$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$166$2 * 28)) + 20);
		if( TMP$167$2 == 7 ) goto label$287;
		label$288:;
		if( TMP$167$2 != 8 ) goto label$286;
		label$287:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 62, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$285;
		label$286:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 61, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$289:;
		label$285:;
	}
	label$283:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITIMP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$291:;
	{
		int32 TMP$168$2;
		int32 TMP$169$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$293;
		TMP$168$2 = 24;
		goto label$299;
		label$293:;
		TMP$168$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$299:;
		TMP$169$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$168$2 * 28)) + 20);
		if( TMP$169$2 == 7 ) goto label$296;
		label$297:;
		if( TMP$169$2 != 8 ) goto label$295;
		label$296:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 64, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$294;
		label$295:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 63, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		label$298:;
		label$294:;
	}
	label$292:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITATN2( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$300:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 65, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$301:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOW( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$302:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 66, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$303:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITADDROF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$304:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 67, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$305:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDEREF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$306:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 68, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$307:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITGT( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$308:;
	{
		int32 TMP$170$2;
		int32 TMP$171$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$310;
		TMP$170$2 = 24;
		goto label$319;
		label$310:;
		TMP$170$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$319:;
		TMP$171$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$170$2 * 28)) + 20);
		if( TMP$171$2 == 7 ) goto label$313;
		label$314:;
		if( TMP$171$2 != 8 ) goto label$312;
		label$313:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 71, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$311;
		label$312:;
		if( TMP$171$2 == 9 ) goto label$316;
		label$317:;
		if( TMP$171$2 != 10 ) goto label$315;
		label$316:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 70, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$311;
		label$315:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 69, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		label$318:;
		label$311:;
	}
	label$309:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLT( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$320:;
	{
		int32 TMP$172$2;
		int32 TMP$173$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$322;
		TMP$172$2 = 24;
		goto label$331;
		label$322:;
		TMP$172$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$331:;
		TMP$173$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$172$2 * 28)) + 20);
		if( TMP$173$2 == 7 ) goto label$325;
		label$326:;
		if( TMP$173$2 != 8 ) goto label$324;
		label$325:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 74, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$323;
		label$324:;
		if( TMP$173$2 == 9 ) goto label$328;
		label$329:;
		if( TMP$173$2 != 10 ) goto label$327;
		label$328:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 73, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$323;
		label$327:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 72, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		label$330:;
		label$323:;
	}
	label$321:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEQ( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$332:;
	{
		int32 TMP$174$2;
		int32 TMP$175$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$334;
		TMP$174$2 = 24;
		goto label$343;
		label$334:;
		TMP$174$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$343:;
		TMP$175$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$174$2 * 28)) + 20);
		if( TMP$175$2 == 7 ) goto label$337;
		label$338:;
		if( TMP$175$2 != 8 ) goto label$336;
		label$337:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 77, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$335;
		label$336:;
		if( TMP$175$2 == 9 ) goto label$340;
		label$341:;
		if( TMP$175$2 != 10 ) goto label$339;
		label$340:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 76, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$335;
		label$339:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 75, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		label$342:;
		label$335:;
	}
	label$333:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITNE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$344:;
	{
		int32 TMP$176$2;
		int32 TMP$177$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$346;
		TMP$176$2 = 24;
		goto label$355;
		label$346:;
		TMP$176$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$355:;
		TMP$177$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$176$2 * 28)) + 20);
		if( TMP$177$2 == 7 ) goto label$349;
		label$350:;
		if( TMP$177$2 != 8 ) goto label$348;
		label$349:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 80, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$347;
		label$348:;
		if( TMP$177$2 == 9 ) goto label$352;
		label$353:;
		if( TMP$177$2 != 10 ) goto label$351;
		label$352:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 79, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$347;
		label$351:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 78, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		label$354:;
		label$347:;
	}
	label$345:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITGE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$356:;
	{
		int32 TMP$178$2;
		int32 TMP$179$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$358;
		TMP$178$2 = 24;
		goto label$367;
		label$358:;
		TMP$178$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$367:;
		TMP$179$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$178$2 * 28)) + 20);
		if( TMP$179$2 == 7 ) goto label$361;
		label$362:;
		if( TMP$179$2 != 8 ) goto label$360;
		label$361:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 83, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$359;
		label$360:;
		if( TMP$179$2 == 9 ) goto label$364;
		label$365:;
		if( TMP$179$2 != 10 ) goto label$363;
		label$364:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 82, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$359;
		label$363:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 81, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		label$366:;
		label$359:;
	}
	label$357:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$368:;
	{
		int32 TMP$180$2;
		int32 TMP$181$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$370;
		TMP$180$2 = 24;
		goto label$379;
		label$370:;
		TMP$180$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$379:;
		TMP$181$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$180$2 * 28)) + 20);
		if( TMP$181$2 == 7 ) goto label$373;
		label$374:;
		if( TMP$181$2 != 8 ) goto label$372;
		label$373:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 86, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$371;
		label$372:;
		if( TMP$181$2 == 9 ) goto label$376;
		label$377:;
		if( TMP$181$2 != 10 ) goto label$375;
		label$376:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 85, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$371;
		label$375:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 84, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		label$378:;
		label$371:;
	}
	label$369:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITNEG( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$380:;
	{
		int32 TMP$182$2;
		int32 TMP$183$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$382;
		TMP$182$2 = 24;
		goto label$391;
		label$382:;
		TMP$182$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$391:;
		TMP$183$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$182$2 * 28)) + 20);
		if( TMP$183$2 == 7 ) goto label$385;
		label$386:;
		if( TMP$183$2 != 8 ) goto label$384;
		label$385:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 89, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$383;
		label$384:;
		if( TMP$183$2 == 9 ) goto label$388;
		label$389:;
		if( TMP$183$2 != 10 ) goto label$387;
		label$388:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 88, DVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$383;
		label$387:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWUOP( 87, DVREG$1 );
			fb$result$1 = vr$8;
		}
		label$390:;
		label$383:;
	}
	label$381:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITNOT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$392:;
	{
		int32 TMP$184$2;
		int32 TMP$185$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$394;
		TMP$184$2 = 24;
		goto label$400;
		label$394:;
		TMP$184$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$400:;
		TMP$185$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$184$2 * 28)) + 20);
		if( TMP$185$2 == 7 ) goto label$397;
		label$398:;
		if( TMP$185$2 != 8 ) goto label$396;
		label$397:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 91, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$395;
		label$396:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 90, DVREG$1 );
			fb$result$1 = vr$7;
		}
		label$399:;
		label$395:;
	}
	label$393:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITHADD( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$401:;
	{
		int32 TMP$186$2;
		int32 TMP$187$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$403;
		TMP$186$2 = 24;
		goto label$409;
		label$403:;
		TMP$186$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$409:;
		TMP$187$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$186$2 * 28)) + 20);
		if( TMP$187$2 == 9 ) goto label$406;
		label$407:;
		if( TMP$187$2 != 10 ) goto label$405;
		label$406:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 92, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$404;
		label$405:;
		{
		}
		label$408:;
		label$404:;
	}
	label$402:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITABS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$410:;
	{
		int32 TMP$188$2;
		int32 TMP$189$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$412;
		TMP$188$2 = 24;
		goto label$421;
		label$412:;
		TMP$188$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$421:;
		TMP$189$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$188$2 * 28)) + 20);
		if( TMP$189$2 == 7 ) goto label$415;
		label$416:;
		if( TMP$189$2 != 8 ) goto label$414;
		label$415:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 95, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$413;
		label$414:;
		if( TMP$189$2 == 9 ) goto label$418;
		label$419:;
		if( TMP$189$2 != 10 ) goto label$417;
		label$418:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 94, DVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$413;
		label$417:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWUOP( 93, DVREG$1 );
			fb$result$1 = vr$8;
		}
		label$420:;
		label$413:;
	}
	label$411:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSGN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$422:;
	{
		int32 TMP$190$2;
		int32 TMP$191$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$424;
		TMP$190$2 = 24;
		goto label$433;
		label$424:;
		TMP$190$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$433:;
		TMP$191$2 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$190$2 * 28)) + 20);
		if( TMP$191$2 == 7 ) goto label$427;
		label$428:;
		if( TMP$191$2 != 8 ) goto label$426;
		label$427:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 98, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$425;
		label$426:;
		if( TMP$191$2 == 9 ) goto label$430;
		label$431:;
		if( TMP$191$2 != 10 ) goto label$429;
		label$430:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 97, DVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$425;
		label$429:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWUOP( 96, DVREG$1 );
			fb$result$1 = vr$8;
		}
		label$432:;
		label$425:;
	}
	label$423:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFIX( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$434:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 99, DVREG$1 );
	fb$result$1 = vr$1;
	label$435:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFRAC( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$436:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 100, DVREG$1 );
	fb$result$1 = vr$1;
	label$437:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCONVFD2FS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$438:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 101, DVREG$1 );
	fb$result$1 = vr$1;
	label$439:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSIN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$440:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 103, DVREG$1 );
	fb$result$1 = vr$1;
	label$441:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITASIN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$442:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 104, DVREG$1 );
	fb$result$1 = vr$1;
	label$443:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCOS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$444:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 105, DVREG$1 );
	fb$result$1 = vr$1;
	label$445:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITACOS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$446:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 106, DVREG$1 );
	fb$result$1 = vr$1;
	label$447:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITTAN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$448:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 107, DVREG$1 );
	fb$result$1 = vr$1;
	label$449:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITATAN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$450:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 108, DVREG$1 );
	fb$result$1 = vr$1;
	label$451:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSQRT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$452:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 109, DVREG$1 );
	fb$result$1 = vr$1;
	label$453:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRSQRT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$454:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 110, DVREG$1 );
	fb$result$1 = vr$1;
	label$455:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRCP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$456:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 111, DVREG$1 );
	fb$result$1 = vr$1;
	label$457:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLOG( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$458:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 112, DVREG$1 );
	fb$result$1 = vr$1;
	label$459:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEXP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$460:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 113, DVREG$1 );
	fb$result$1 = vr$1;
	label$461:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFLOOR( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$462:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 114, DVREG$1 );
	fb$result$1 = vr$1;
	label$463:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITXCHGTOS( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$464:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 115, SVREG$1 );
	fb$result$1 = vr$1;
	label$465:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSWZREP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$466:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 102, DVREG$1 );
	fb$result$1 = vr$1;
	label$467:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTACKALIGN( int32 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$468:;
	struct $6IRVREG VR$1;
	__builtin_memset( &VR$1, 0, 72 );
	*($15IRVREGTYPE_ENUM*)&VR$1 = 0;
	*(int64*)((uint8*)&VR$1 + 24) = (int64)BYTES$1;
	struct $9EMIT_NODE* vr$4 = HNEWSTK( 116, &VR$1, 0 );
	fb$result$1 = vr$4;
	label$469:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUSH( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$470:;
	{
		int32 TMP$192$2;
		uint32 TMP$193$2;
		if( (*(int32*)((uint8*)SVREG$1 + 4) & 480) == 0 ) goto label$472;
		TMP$192$2 = 24;
		goto label$478;
		label$472:;
		TMP$192$2 = *(int32*)((uint8*)SVREG$1 + 4) & 31;
		label$478:;
		TMP$193$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$192$2 * 28)) + 20);
		goto label$474;
		label$475:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWSTK( 119, SVREG$1, 0 );
			fb$result$1 = vr$6;
		}
		goto label$473;
		label$476:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWSTK( 118, SVREG$1, 0 );
			fb$result$1 = vr$7;
		}
		goto label$473;
		label$477:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWSTK( 117, SVREG$1, 0 );
			fb$result$1 = vr$8;
		}
		goto label$473;
		label$474:;
		static const void* tmp$194[4] = {
			&&label$475,
			&&label$475,
			&&label$476,
			&&label$476,
		};
		if( (TMP$193$2 - 7u) > 3u ) goto label$477;
		goto *tmp$194[TMP$193$2 - 7u];
		label$473:;
	}
	label$471:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$479:;
	{
		int32 TMP$195$2;
		uint32 TMP$196$2;
		if( (*(int32*)((uint8*)DVREG$1 + 4) & 480) == 0 ) goto label$481;
		TMP$195$2 = 24;
		goto label$487;
		label$481:;
		TMP$195$2 = *(int32*)((uint8*)DVREG$1 + 4) & 31;
		label$487:;
		TMP$196$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$195$2 * 28)) + 20);
		goto label$483;
		label$484:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWSTK( 122, DVREG$1, 0 );
			fb$result$1 = vr$6;
		}
		goto label$482;
		label$485:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWSTK( 121, DVREG$1, 0 );
			fb$result$1 = vr$7;
		}
		goto label$482;
		label$486:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWSTK( 120, DVREG$1, 0 );
			fb$result$1 = vr$8;
		}
		goto label$482;
		label$483:;
		static const void* tmp$197[4] = {
			&&label$484,
			&&label$484,
			&&label$485,
			&&label$485,
		};
		if( (TMP$196$2 - 7u) > 3u ) goto label$486;
		goto *tmp$197[TMP$196$2 - 7u];
		label$482:;
	}
	label$480:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUSHUDT( struct $6IRVREG* SVREG$1, int32 SDSIZE$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$488:;
	struct $9EMIT_NODE* vr$1 = HNEWSTK( 123, SVREG$1, SDSIZE$1 );
	fb$result$1 = vr$1;
	label$489:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOPST0( void )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$490:;
	struct $9EMIT_NODE* vr$1 = HNEWSTK( 124, (struct $6IRVREG*)0u, 0 );
	fb$result$1 = vr$1;
	label$491:;
	return fb$result$1;
}

void EMITCOMMENT( uint8* TEXT$1 )
{
	FBSTRING TMP$199$1;
	FBSTRING TMP$200$1;
	label$492:;
	__builtin_memset( &TMP$200$1, 0, 12 );
	__builtin_memset( &TMP$199$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$199$1, (void*)"##", 3, (void*)TEXT$1, 0 );
	fb_StrAssign( (void*)&TMP$200$1, -1, (void*)vr$3, -1, 0 );
	HNEWLIT( (uint8*)*(uint8**)&TMP$200$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$200$1 );
	label$493:;
}

void EMITASM( uint8* TEXT$1 )
{
	label$494:;
	HNEWLIT( TEXT$1, -1 );
	{
		int32 C$2;
		C$2 = 0;
		label$499:;
		{
			*(int32*)((uint8*)((uint8*)&EMIT$ + (C$2 << (2 & 31))) + 132) = -1;
		}
		label$497:;
		C$2 = C$2 + 1;
		label$496:;
		if( C$2 <= 1 ) goto label$499;
		label$498:;
	}
	label$495:;
}

struct $9EMIT_NODE* EMITJMPTB( struct $8FBSYMBOL* TBSYM$1, uint64* VALUES1$1, struct $8FBSYMBOL** LABELS1$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$500:;
	struct $9EMIT_NODE* N$1;
	uint64* VALUES$1;
	struct $8FBSYMBOL** LABELS$1;
	void* vr$2 = calloc( (uint32)(LABELCOUNT$1 << (3 & 31)), 1u );
	VALUES$1 = (uint64*)vr$2;
	void* vr$4 = calloc( (uint32)(LABELCOUNT$1 << (2 & 31)), 1u );
	LABELS$1 = (struct $8FBSYMBOL**)vr$4;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$201$2;
		TMP$201$2 = LABELCOUNT$1 + -1;
		goto label$502;
		label$505:;
		{
			*(uint64*)((uint8*)VALUES$1 + (I$2 << (3 & 31))) = *(uint64*)((uint8*)VALUES1$1 + (I$2 << (3 & 31)));
			*(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$2 << (2 & 31))) = *(struct $8FBSYMBOL**)((uint8*)LABELS1$1 + (I$2 << (2 & 31)));
		}
		label$503:;
		I$2 = I$2 + 1;
		label$502:;
		if( I$2 <= TMP$201$2 ) goto label$505;
		label$504:;
	}
	struct $9EMIT_NODE* vr$15 = HNEWNODE( 7, 0 );
	N$1 = vr$15;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 8) = TBSYM$1;
	*(uint64**)((uint8*)N$1 + 12) = VALUES$1;
	*(struct $8FBSYMBOL***)((uint8*)N$1 + 16) = LABELS$1;
	*(int32*)((uint8*)N$1 + 20) = LABELCOUNT$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = DEFLABEL$1;
	*(uint64*)((uint8*)N$1 + 32) = BIAS$1;
	*(uint64*)((uint8*)N$1 + 40) = SPAN$1;
	fb$result$1 = N$1;
	label$501:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCALL( struct $8FBSYMBOL* LABEL$1, int32 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$506:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 125, (struct $6IRVREG*)0u, LABEL$1, BYTESTOPOP$1 );
	fb$result$1 = vr$1;
	label$507:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCALLPTR( struct $6IRVREG* SVREG$1, int32 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$508:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 126, SVREG$1, (struct $8FBSYMBOL*)0u, BYTESTOPOP$1 );
	fb$result$1 = vr$1;
	label$509:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$510:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 127, (struct $6IRVREG*)0u, LABEL$1, OP$1 );
	fb$result$1 = vr$1;
	label$511:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITJUMP( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$512:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 128, (struct $6IRVREG*)0u, LABEL$1, 0 );
	fb$result$1 = vr$1;
	label$513:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITJUMPPTR( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$514:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 129, SVREG$1, (struct $8FBSYMBOL*)0u, 0 );
	fb$result$1 = vr$1;
	label$515:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRET( int32 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$516:;
	struct $6IRVREG VR$1;
	__builtin_memset( &VR$1, 0, 72 );
	*($15IRVREGTYPE_ENUM*)&VR$1 = 0;
	*(int64*)((uint8*)&VR$1 + 24) = (int64)BYTESTOPOP$1;
	struct $9EMIT_NODE* vr$4 = HNEWUOP( 130, &VR$1 );
	fb$result$1 = vr$4;
	label$517:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$518:;
	struct $9EMIT_NODE* vr$1 = HNEWSYMOP( 131, LABEL$1 );
	fb$result$1 = vr$1;
	label$519:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUBLIC( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$520:;
	struct $9EMIT_NODE* vr$1 = HNEWSYMOP( 132, LABEL$1 );
	fb$result$1 = vr$1;
	label$521:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMMOVE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$522:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 135, DVREG$1, SVREG$1, BYTES$1, 0 );
	fb$result$1 = vr$1;
	label$523:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMSWAP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$524:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 136, DVREG$1, SVREG$1, BYTES$1, 0 );
	fb$result$1 = vr$1;
	label$525:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* BYTES_VREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$526:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 137, DVREG$1, BYTES_VREG$1, 0, 0 );
	fb$result$1 = vr$1;
	label$527:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTKCLEAR( int32 BYTES$1, int32 BASEOFS$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$528:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 138, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, BYTES$1, BASEOFS$1 );
	fb$result$1 = vr$1;
	label$529:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGLINEBEGIN( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, uint8* FILENAME$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$530:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 139, PROC$1, LNUM$1, *(int32*)((uint8*)&EMIT$ + 4), FILENAME$1 );
	fb$result$1 = vr$1;
	label$531:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGLINEEND( struct $8FBSYMBOL* PROC$1, int32 LNUM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$532:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 140, PROC$1, LNUM$1, *(int32*)((uint8*)&EMIT$ + 4), (uint8*)0u );
	fb$result$1 = vr$1;
	label$533:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGSCOPEBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$534:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 141, SYM$1, 0, 0, (uint8*)0u );
	fb$result$1 = vr$1;
	label$535:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGSCOPEEND( struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$536:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 142, SYM$1, 0, 0, (uint8*)0u );
	fb$result$1 = vr$1;
	label$537:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__emit( void )
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

static struct $9EMIT_NODE* HOPTSYMOP( struct $9EMIT_NODE* P$1, struct $9EMIT_NODE* N$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	{
		int32 TMP$108$2;
		TMP$108$2 = *(int32*)((uint8*)N$1 + 8);
		if( TMP$108$2 != 131 ) goto label$33;
		label$34:;
		{
			if( P$1 == (struct $9EMIT_NODE*)0u ) goto label$36;
			{
				if( *(int32*)P$1 != 5 ) goto label$38;
				{
					{
						int32 TMP$109$6;
						TMP$109$6 = *(int32*)((uint8*)P$1 + 8);
						if( TMP$109$6 == 127 ) goto label$41;
						label$42:;
						if( TMP$109$6 != 128 ) goto label$40;
						label$41:;
						{
							if( *(struct $8FBSYMBOL**)((uint8*)P$1 + 16) != *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) ) goto label$44;
							{
								*($19EMIT_NODECLASS_ENUM*)P$1 = 0;
							}
							label$44:;
							label$43:;
						}
						label$40:;
						label$39:;
					}
				}
				label$38:;
				label$37:;
			}
			label$36:;
			label$35:;
			fb$result$1 = P$1;
			goto label$31;
		}
		label$33:;
		label$32:;
	}
	fb$result$1 = N$1;
	label$31:;
	return fb$result$1;
}

static void HPEEPHOLEOPT( void )
{
	label$45:;
	struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* P$1;
	P$1 = (struct $9EMIT_NODE*)0u;
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	N$1 = (struct $9EMIT_NODE*)vr$1;
	label$47:;
	if( N$1 == (struct $9EMIT_NODE*)0u ) goto label$48;
	{
		{
			uint32 TMP$110$3;
			TMP$110$3 = *(uint32*)N$1;
			goto label$50;
			label$51:;
			{
				struct $9EMIT_NODE* vr$3 = HOPTSYMOP( P$1, N$1 );
				P$1 = vr$3;
			}
			goto label$49;
			label$52:;
			{
			}
			goto label$49;
			label$53:;
			{
				if( *(int32*)((uint8*)N$1 + 8) == 0 ) goto label$55;
				{
					P$1 = N$1;
				}
				label$55:;
				label$54:;
			}
			goto label$49;
			label$56:;
			{
				P$1 = N$1;
			}
			goto label$49;
			label$50:;
			static const void* tmp$202[5] = {
				&&label$53,
				&&label$56,
				&&label$51,
				&&label$56,
				&&label$52,
			};
			if( (TMP$110$3 - 6u) > 4u ) goto label$56;
			goto *tmp$202[TMP$110$3 - 6u];
			label$49:;
		}
		void* vr$5 = FLISTGETNEXT( (void*)N$1 );
		N$1 = (struct $9EMIT_NODE*)vr$5;
	}
	goto label$47;
	label$48:;
	label$46:;
}

static struct $6IRVREG* HNEWVR( struct $6IRVREG* V$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$78:;
	struct $6IRVREG* N$1;
	int32 DCLASS$1;
	if( V$1 != (struct $6IRVREG*)0u ) goto label$81;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$79;
	}
	label$81:;
	label$80:;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&EMIT$ + 72) );
	N$1 = (struct $6IRVREG*)vr$2;
	*($15IRVREGTYPE_ENUM*)N$1 = *($15IRVREGTYPE_ENUM*)V$1;
	*($11FB_DATATYPE*)((uint8*)N$1 + 4) = *($11FB_DATATYPE*)((uint8*)V$1 + 4);
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)V$1 + 32);
	*(int64*)((uint8*)N$1 + 40) = *(int64*)((uint8*)V$1 + 40);
	*(int32*)((uint8*)N$1 + 48) = *(int32*)((uint8*)V$1 + 48);
	__builtin_memcpy( (union $7FBVALUE*)((uint8*)N$1 + 24), (union $7FBVALUE*)((uint8*)V$1 + 24), 8 );
	*($12IR_REGFAMILY*)((uint8*)N$1 + 16) = *($12IR_REGFAMILY*)((uint8*)V$1 + 16);
	*(int32*)((uint8*)N$1 + 20) = *(int32*)((uint8*)V$1 + 20);
	if( *(int32*)V$1 != 4 ) goto label$83;
	{
		int32 TMP$113$2;
		if( (*(int32*)((uint8*)V$1 + 4) & 480) == 0 ) goto label$84;
		TMP$113$2 = 24;
		goto label$538;
		label$84:;
		TMP$113$2 = *(int32*)((uint8*)V$1 + 4) & 31;
		label$538:;
		DCLASS$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$2 * 28));
		int32 vr$30 = (*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) + 40))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8), *(int32*)((uint8*)V$1 + 12) );
		*(int32*)((uint8*)N$1 + 12) = vr$30;
		*(int32*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 132) = *(int32*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 132) | (1 << (*(int32*)((uint8*)N$1 + 12) & 31));
	}
	label$83:;
	label$82:;
	struct $6IRVREG* vr$43 = HNEWVR( *(struct $6IRVREG**)((uint8*)V$1 + 56) );
	*(struct $6IRVREG**)((uint8*)N$1 + 56) = vr$43;
	struct $6IRVREG* vr$46 = HNEWVR( *(struct $6IRVREG**)((uint8*)V$1 + 52) );
	*(struct $6IRVREG**)((uint8*)N$1 + 52) = vr$46;
	fb$result$1 = N$1;
	label$79:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWNODE( $19EMIT_NODECLASS_ENUM CLASS_$1, int32 UPDATEPOS$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$85:;
	static struct $9EMIT_NODE* N$1;
	static int32 I$1;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	N$1 = (struct $9EMIT_NODE*)vr$2;
	*($19EMIT_NODECLASS_ENUM*)N$1 = CLASS_$1;
	{
		I$1 = 0;
		label$90:;
		{
			*(int32*)((uint8*)((uint8*)N$1 + (I$1 << (2 & 31))) + 48) = *(int32*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (I$1 << (2 & 31))) + 8) + 136);
		}
		label$88:;
		I$1 = I$1 + 1;
		label$87:;
		if( I$1 <= 1 ) goto label$90;
		label$89:;
	}
	if( UPDATEPOS$1 == 0 ) goto label$92;
	{
		*(int32*)((uint8*)&EMIT$ + 4) = *(int32*)((uint8*)&EMIT$ + 4) + 1;
	}
	label$92:;
	label$91:;
	fb$result$1 = N$1;
	label$86:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWBOP( int32 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$93:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 1, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	struct $6IRVREG* vr$5 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16) = vr$5;
	fb$result$1 = N$1;
	label$94:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWUOP( int32 OP$1, struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$95:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 2, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	fb$result$1 = N$1;
	label$96:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWREL( int32 OP$1, struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$97:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 3, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( RVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16) = LABEL$1;
	struct $6IRVREG* vr$6 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 20) = vr$6;
	struct $6IRVREG* vr$8 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 24) = vr$8;
	fb$result$1 = N$1;
	label$98:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWSTK( int32 OP$1, struct $6IRVREG* VREG$1, int32 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$99:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 4, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( VREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	*(int32*)((uint8*)N$1 + 16) = EXTRA$1;
	fb$result$1 = N$1;
	label$100:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWBRANCH( int32 OP$1, struct $6IRVREG* VREG$1, struct $8FBSYMBOL* SYM$1, int32 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$101:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 5, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16) = SYM$1;
	struct $6IRVREG* vr$4 = HNEWVR( VREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$4;
	*(int32*)((uint8*)N$1 + 20) = EXTRA$1;
	fb$result$1 = N$1;
	label$102:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWSYMOP( int32 OP$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$103:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 8, 0 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	fb$result$1 = N$1;
	label$104:;
	return fb$result$1;
}

static void HNEWLIT( uint8* TEXT$1, int32 ISASM$1 )
{
	label$105:;
	struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$0 = HNEWNODE( 6, ISASM$1 );
	N$1 = vr$0;
	*(int32*)((uint8*)N$1 + 8) = ISASM$1;
	int32 vr$2 = fb_StrLen( (void*)TEXT$1, 0 );
	void* vr$4 = XALLOCATE( vr$2 + 1 );
	*(uint8**)((uint8*)N$1 + 12) = (uint8*)vr$4;
	fb_StrAssign( *(void**)((uint8*)N$1 + 12), 0, (void*)TEXT$1, 0, 0 );
	label$106:;
}

static struct $9EMIT_NODE* HNEWMEM( int32 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1, int32 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$107:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 9, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	struct $6IRVREG* vr$5 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16) = vr$5;
	*(int32*)((uint8*)N$1 + 20) = BYTES$1;
	*(int32*)((uint8*)N$1 + 24) = EXTRA$1;
	fb$result$1 = N$1;
	label$108:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWDBG( int32 OP$1, struct $8FBSYMBOL* SYM$1, int32 LNUM$1, int32 POS_$1, uint8* FILENAME$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$109:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 10, 0 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int32*)((uint8*)N$1 + 16) = LNUM$1;
	*(uint8**)((uint8*)N$1 + 20) = FILENAME$1;
	*(int32*)((uint8*)N$1 + 24) = POS_$1;
	fb$result$1 = N$1;
	label$110:;
	return fb$result$1;
}
