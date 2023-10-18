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
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 8 );
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
struct $6TFLIST {
	int64 TOTITEMS;
	int64 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int64 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 112 );
typedef int64 (*tmp$39)( void );
typedef void (*tmp$38)( void );
typedef int64 $19EMIT_NODECLASS_ENUM;
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
struct $12EMIT_BOPNODE {
	int64 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BOPNODE ) == 24 );
struct $12EMIT_UOPNODE {
	int64 OP;
	struct $6IRVREG* DVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_UOPNODE ) == 16 );
struct $12EMIT_RELNODE {
	int64 OP;
	struct $6IRVREG* RVREG;
	struct $8FBSYMBOL* LABEL;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_RELNODE ) == 40 );
struct $12EMIT_STKNODE {
	int64 OP;
	struct $6IRVREG* VREG;
	int64 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_STKNODE ) == 24 );
struct $12EMIT_BRCNODE {
	int64 OP;
	struct $6IRVREG* VREG;
	struct $8FBSYMBOL* SYM;
	int64 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BRCNODE ) == 32 );
struct $12EMIT_SOPNODE {
	int64 OP;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_SOPNODE ) == 16 );
struct $12EMIT_LITNODE {
	int64 ISASM;
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_LITNODE ) == 16 );
struct $12EMIT_JTBNODE {
	struct $8FBSYMBOL* TBSYM;
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int64 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_JTBNODE ) == 56 );
struct $12EMIT_MEMNODE {
	int64 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
	int64 BYTES;
	int64 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_MEMNODE ) == 40 );
struct $12EMIT_DBGNODE {
	int64 OP;
	struct $8FBSYMBOL* SYM;
	int64 LNUM;
	uint8* FILENAME;
	int64 POS;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_DBGNODE ) == 40 );
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
	int64 REGFREETB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_NODE ) == 80 );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$53)( struct $6IRVREG* );
typedef void (*tmp$93)( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$94)( struct $6IRVREG*, int64 );
typedef void (*tmp$95)( struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$96)( struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$97)( struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$98)( struct $8FBSYMBOL*, int64, int64, uint8* );
struct $8REGCLASS;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
int32 fb_FilePutStrLarge( int32, int64, void*, int64 );
void* calloc( uint64, uint64 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
int64 fb_StrLen( void*, int64 );
static void fb_ctor__emit( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void FLISTINIT( struct $6TFLIST*, int64, int64 );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
int64 EMITGASX86_CTOR( void );
static struct $9EMIT_NODE* HOPTSYMOP( struct $9EMIT_NODE*, struct $9EMIT_NODE* );
static void HPEEPHOLEOPT( void );
static struct $6IRVREG* HNEWVR( struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWNODE( $19EMIT_NODECLASS_ENUM, int64 );
static struct $9EMIT_NODE* HNEWBOP( int64, struct $6IRVREG*, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWUOP( int64, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWREL( int64, struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWSTK( int64, struct $6IRVREG*, int64 );
static struct $9EMIT_NODE* HNEWBRANCH( int64, struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
static struct $9EMIT_NODE* HNEWSYMOP( int64, struct $8FBSYMBOL* );
static void HNEWLIT( uint8*, int64 );
static struct $9EMIT_NODE* HNEWMEM( int64, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static struct $9EMIT_NODE* HNEWDBG( int64, struct $8FBSYMBOL*, int64, int64, uint8* );
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
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$99)( int64, int64, int64, int64* );
typedef void (*tmp$100)( int64, int64, int64*, int64* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$101)( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$102)( int64, int64 );
typedef uint8* (*tmp$103)( int64 );
typedef uint8* (*tmp$104)( int64, int64 );
struct $9EMIT_VTBL {
	tmp$39 INIT;
	tmp$38 END;
	tmp$40 GETOPTIONVALUE;
	tmp$39 OPEN;
	tmp$38 CLOSE;
	tmp$41 ISREGPRESERVED;
	tmp$41 GETFREEPRESERVEDREG;
	tmp$99 GETARGREG;
	tmp$100 GETRESULTREG;
	tmp$44 PROCGETFRAMEREGNAME;
	tmp$42 PROCBEGIN;
	tmp$42 PROCEND;
	tmp$43 PROCHEADER;
	tmp$101 PROCFOOTER;
	tmp$43 PROCALLOCARG;
	tmp$43 PROCALLOCLOCAL;
	tmp$42 PROCALLOCSTATICVARS;
	tmp$42 SCOPEBEGIN;
	tmp$42 SCOPEEND;
	tmp$102 SETSECTION;
	tmp$103 GETTYPESTRING;
	tmp$104 GETSECTIONSTRING;
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_VTBL ) == 176 );
struct $7EMITCTX {
	int64 INITED;
	int64 POS;
	struct $8REGCLASS* REGTB[2];
	struct $6TFLIST NODETB;
	struct $6TFLIST VREGTB;
	struct $9EMIT_NODE* CURNODE;
	int64 REGUSEDTB[2];
	int64 LASTSECTION;
	int64 LASTPRIORITY;
	struct $9EMIT_VTBL VTBL;
	void** OPFNTB;
};
__FB_STATIC_ASSERT( sizeof( struct $7EMITCTX ) == 480 );
extern struct $7EMITCTX EMIT$;
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
struct $7EMITCTX EMIT$;

int64 EMITINIT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( *(int64*)&EMIT$ == 0ll ) goto label$13;
	{
		fb$result$1 = -1ll;
		goto label$11;
	}
	label$13:;
	label$12:;
	EMITGASX86_CTOR(  );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&EMIT$ + 32ll), 2048ll, 80ll );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&EMIT$ + 144ll), 6144ll, 120ll );
	*(int64*)&EMIT$ = -1ll;
	*(int64*)((uint8*)&EMIT$ + 8ll) = 0ll;
	int64 vr$3 = (*(tmp$39*)((uint8*)&EMIT$ + 296ll))(  );
	fb$result$1 = vr$3;
	label$11:;
	return fb$result$1;
}

void EMITEND( void )
{
	label$14:;
	if( *(int64*)&EMIT$ != 0ll ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	(*(tmp$38*)((uint8*)&EMIT$ + 304ll))(  );
	*(int64*)&EMIT$ = 0ll;
	label$15:;
}

void EMITWRITESTR( uint8* S$1, int64 ADDTAB$1 )
{
	label$18:;
	static FBSTRING OSTR$1;
	if( ADDTAB$1 == 0ll ) goto label$21;
	{
		FBSTRING TMP$107$2;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"\x09", 2ll, 0 );
		__builtin_memset( &TMP$107$2, 0, 24ll );
		FBSTRING* vr$2 = fb_StrConcat( &TMP$107$2, (void*)&OSTR$1, -1ll, (void*)S$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	}
	goto label$20;
	label$21:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)S$1, 0ll, 0 );
	}
	label$20:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0D\x0A", 3ll, 0 );
	int32 vr$4 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 896ll), 0ll, (void*)&OSTR$1, -1ll );
	if( (int64)vr$4 == 0ll ) goto label$23;
	{
	}
	label$23:;
	label$22:;
	label$19:;
}

void EMITRESET( void )
{
	label$24:;
	static int64 C$1;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&EMIT$ + 32ll) );
	FLISTRESET( (struct $6TFLIST*)((uint8*)&EMIT$ + 144ll) );
	*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 256ll) = (struct $9EMIT_NODE*)0ull;
	{
		C$1 = 0ll;
		label$29:;
		{
			*(int64*)((uint8*)((uint8*)&EMIT$ + (C$1 << (3ll & 63ll))) + 264ll) = 0ll;
		}
		label$27:;
		C$1 = C$1 + 1ll;
		label$26:;
		if( C$1 <= 1ll ) goto label$29;
		label$28:;
	}
	label$25:;
}

void EMITFLUSH( void )
{
	label$57:;
	struct $9EMIT_NODE* N$1;
	HPEEPHOLEOPT(  );
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&EMIT$ + 32ll) );
	N$1 = (struct $9EMIT_NODE*)vr$1;
	label$59:;
	if( N$1 == (struct $9EMIT_NODE*)0ull ) goto label$60;
	{
		*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 256ll) = N$1;
		{
			uint64 TMP$112$3;
			TMP$112$3 = *(uint64*)N$1;
			goto label$62;
			label$63:;
			{
			}
			goto label$61;
			label$64:;
			{
				(*(tmp$45*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $6IRVREG**)((uint8*)N$1 + 16ll), *(struct $6IRVREG**)((uint8*)N$1 + 24ll) );
			}
			goto label$61;
			label$65:;
			{
				(*(tmp$53*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $6IRVREG**)((uint8*)N$1 + 16ll) );
			}
			goto label$61;
			label$66:;
			{
				(*(tmp$93*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $6IRVREG**)((uint8*)N$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll), *(struct $6IRVREG**)((uint8*)N$1 + 32ll), *(struct $6IRVREG**)((uint8*)N$1 + 40ll) );
			}
			goto label$61;
			label$67:;
			{
				(*(tmp$94*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $6IRVREG**)((uint8*)N$1 + 16ll), *(int64*)((uint8*)N$1 + 24ll) );
			}
			goto label$61;
			label$68:;
			{
				(*(tmp$95*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $6IRVREG**)((uint8*)N$1 + 16ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll), *(int64*)((uint8*)N$1 + 32ll) );
			}
			goto label$61;
			label$69:;
			{
				(*(tmp$42*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
			}
			goto label$61;
			label$70:;
			{
				(*(tmp$50*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + 1064ll))( *(uint8**)((uint8*)N$1 + 16ll) );
				if( *(uint8**)((uint8*)N$1 + 16ll) == (uint8*)0ull ) goto label$72;
				{
					free( *(void**)((uint8*)N$1 + 16ll) );
				}
				label$72:;
				label$71:;
			}
			goto label$61;
			label$73:;
			{
				(*(tmp$96*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + 1072ll))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll), *(uint64**)((uint8*)N$1 + 16ll), *(struct $8FBSYMBOL***)((uint8*)N$1 + 24ll), *(int64*)((uint8*)N$1 + 32ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll), *(uint64*)((uint8*)N$1 + 48ll), *(uint64*)((uint8*)N$1 + 56ll) );
				free( *(void**)((uint8*)N$1 + 16ll) );
				free( *(void**)((uint8*)N$1 + 24ll) );
			}
			goto label$61;
			label$74:;
			{
				(*(tmp$97*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $6IRVREG**)((uint8*)N$1 + 16ll), *(struct $6IRVREG**)((uint8*)N$1 + 24ll), *(int64*)((uint8*)N$1 + 32ll), *(int64*)((uint8*)N$1 + 40ll) );
			}
			goto label$61;
			label$75:;
			{
				(*(tmp$98*)((uint8*)*(void***)((uint8*)&EMIT$ + 472ll) + (*(int64*)((uint8*)N$1 + 8ll) << (3ll & 63ll))))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll), *(int64*)((uint8*)N$1 + 24ll), *(int64*)((uint8*)N$1 + 40ll), *(uint8**)((uint8*)N$1 + 32ll) );
			}
			goto label$61;
			label$62:;
			static const void* tmp$113[11ll] = {
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
			if( TMP$112$3 > 10ull ) goto label$61;
			goto *tmp$113[TMP$112$3 - 0ull];
			label$61:;
		}
		void* vr$62 = FLISTGETNEXT( (void*)N$1 );
		N$1 = (struct $9EMIT_NODE*)vr$62;
	}
	goto label$59;
	label$60:;
	label$58:;
}

struct $8REGCLASS* EMITGETREGCLASS( int64 DCLASS$1 )
{
	struct $8REGCLASS* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$76:;
	fb$result$1 = *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll);
	label$77:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLOAD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$111:;
	{
		int64 TMP$115$2;
		uint64 TMP$116$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$113;
		TMP$115$2 = 24ll;
		goto label$148;
		label$113:;
		TMP$115$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$148:;
		TMP$116$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$115$2 * 56ll)) + 40ll);
		goto label$115;
		label$116:;
		{
			{
				int64 TMP$117$4;
				uint64 TMP$118$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$117;
				TMP$117$4 = 24ll;
				goto label$149;
				label$117:;
				TMP$117$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$149:;
				TMP$118$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$117$4 * 56ll)) + 40ll);
				goto label$119;
				label$120:;
				{
					struct $9EMIT_NODE* vr$11 = HNEWBOP( 11ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$11;
				}
				goto label$118;
				label$121:;
				{
					struct $9EMIT_NODE* vr$12 = HNEWBOP( 10ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$12;
				}
				goto label$118;
				label$122:;
				{
					struct $9EMIT_NODE* vr$13 = HNEWBOP( 12ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$13;
				}
				goto label$118;
				label$123:;
				{
					struct $9EMIT_NODE* vr$14 = HNEWBOP( 9ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$14;
				}
				goto label$118;
				label$119:;
				static const void* tmp$125[11ll] = {
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
				if( TMP$118$4 > 10ull ) goto label$123;
				goto *tmp$125[TMP$118$4 - 0ull];
				label$118:;
			}
		}
		goto label$114;
		label$124:;
		{
			{
				int64 TMP$119$4;
				uint64 TMP$120$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$125;
				TMP$119$4 = 24ll;
				goto label$150;
				label$125:;
				TMP$119$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$150:;
				TMP$120$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$119$4 * 56ll)) + 40ll);
				goto label$127;
				label$128:;
				{
					struct $9EMIT_NODE* vr$20 = HNEWBOP( 7ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$20;
				}
				goto label$126;
				label$129:;
				{
					struct $9EMIT_NODE* vr$21 = HNEWBOP( 6ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$21;
				}
				goto label$126;
				label$130:;
				{
					struct $9EMIT_NODE* vr$22 = HNEWBOP( 8ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$22;
				}
				goto label$126;
				label$131:;
				{
					struct $9EMIT_NODE* vr$23 = HNEWBOP( 5ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$23;
				}
				goto label$126;
				label$127:;
				static const void* tmp$126[11ll] = {
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
				if( TMP$120$4 > 10ull ) goto label$131;
				goto *tmp$126[TMP$120$4 - 0ull];
				label$126:;
			}
		}
		goto label$114;
		label$132:;
		{
			{
				int64 TMP$121$4;
				uint64 TMP$122$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$133;
				TMP$121$4 = 24ll;
				goto label$151;
				label$133:;
				TMP$121$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$151:;
				TMP$122$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$121$4 * 56ll)) + 40ll);
				goto label$135;
				label$136:;
				{
					struct $9EMIT_NODE* vr$29 = HNEWBOP( 15ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$29;
				}
				goto label$134;
				label$137:;
				{
					struct $9EMIT_NODE* vr$30 = HNEWBOP( 14ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$30;
				}
				goto label$134;
				label$138:;
				{
					struct $9EMIT_NODE* vr$31 = HNEWBOP( 16ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$31;
				}
				goto label$134;
				label$139:;
				{
					struct $9EMIT_NODE* vr$32 = HNEWBOP( 13ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$32;
				}
				goto label$134;
				label$135:;
				static const void* tmp$127[11ll] = {
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
				if( TMP$122$4 > 10ull ) goto label$139;
				goto *tmp$127[TMP$122$4 - 0ull];
				label$134:;
			}
		}
		goto label$114;
		label$140:;
		{
			{
				int64 TMP$123$4;
				uint64 TMP$124$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$141;
				TMP$123$4 = 24ll;
				goto label$152;
				label$141:;
				TMP$123$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$152:;
				TMP$124$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$123$4 * 56ll)) + 40ll);
				goto label$143;
				label$144:;
				{
					struct $9EMIT_NODE* vr$38 = HNEWBOP( 3ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$38;
				}
				goto label$142;
				label$145:;
				{
					struct $9EMIT_NODE* vr$39 = HNEWBOP( 2ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$39;
				}
				goto label$142;
				label$146:;
				{
					struct $9EMIT_NODE* vr$40 = HNEWBOP( 4ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$40;
				}
				goto label$142;
				label$147:;
				{
					struct $9EMIT_NODE* vr$41 = HNEWBOP( 1ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$41;
				}
				goto label$142;
				label$143:;
				static const void* tmp$128[11ll] = {
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
				if( TMP$124$4 > 10ull ) goto label$147;
				goto *tmp$128[TMP$124$4 - 0ull];
				label$142:;
			}
		}
		goto label$114;
		label$115:;
		static const void* tmp$129[11ll] = {
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
		if( TMP$116$2 > 10ull ) goto label$140;
		goto *tmp$129[TMP$116$2 - 0ull];
		label$114:;
	}
	label$112:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTORE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$153:;
	{
		int64 TMP$130$2;
		uint64 TMP$131$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$155;
		TMP$130$2 = 24ll;
		goto label$190;
		label$155:;
		TMP$130$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$190:;
		TMP$131$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$130$2 * 56ll)) + 40ll);
		goto label$157;
		label$158:;
		{
			{
				int64 TMP$132$4;
				uint64 TMP$133$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$159;
				TMP$132$4 = 24ll;
				goto label$191;
				label$159:;
				TMP$132$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$191:;
				TMP$133$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$132$4 * 56ll)) + 40ll);
				goto label$161;
				label$162:;
				{
					struct $9EMIT_NODE* vr$11 = HNEWBOP( 27ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$11;
				}
				goto label$160;
				label$163:;
				{
					struct $9EMIT_NODE* vr$12 = HNEWBOP( 26ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$12;
				}
				goto label$160;
				label$164:;
				{
					struct $9EMIT_NODE* vr$13 = HNEWBOP( 28ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$13;
				}
				goto label$160;
				label$165:;
				{
					struct $9EMIT_NODE* vr$14 = HNEWBOP( 25ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$14;
				}
				goto label$160;
				label$161:;
				static const void* tmp$140[11ll] = {
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
				if( TMP$133$4 > 10ull ) goto label$165;
				goto *tmp$140[TMP$133$4 - 0ull];
				label$160:;
			}
		}
		goto label$156;
		label$166:;
		{
			{
				int64 TMP$134$4;
				uint64 TMP$135$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$167;
				TMP$134$4 = 24ll;
				goto label$192;
				label$167:;
				TMP$134$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$192:;
				TMP$135$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$134$4 * 56ll)) + 40ll);
				goto label$169;
				label$170:;
				{
					struct $9EMIT_NODE* vr$20 = HNEWBOP( 23ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$20;
				}
				goto label$168;
				label$171:;
				{
					struct $9EMIT_NODE* vr$21 = HNEWBOP( 22ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$21;
				}
				goto label$168;
				label$172:;
				{
					struct $9EMIT_NODE* vr$22 = HNEWBOP( 24ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$22;
				}
				goto label$168;
				label$173:;
				{
					struct $9EMIT_NODE* vr$23 = HNEWBOP( 21ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$23;
				}
				goto label$168;
				label$169:;
				static const void* tmp$141[11ll] = {
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
				if( TMP$135$4 > 10ull ) goto label$173;
				goto *tmp$141[TMP$135$4 - 0ull];
				label$168:;
			}
		}
		goto label$156;
		label$174:;
		{
			{
				int64 TMP$136$4;
				uint64 TMP$137$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$175;
				TMP$136$4 = 24ll;
				goto label$193;
				label$175:;
				TMP$136$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$193:;
				TMP$137$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$136$4 * 56ll)) + 40ll);
				goto label$177;
				label$178:;
				{
					struct $9EMIT_NODE* vr$29 = HNEWBOP( 31ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$29;
				}
				goto label$176;
				label$179:;
				{
					struct $9EMIT_NODE* vr$30 = HNEWBOP( 30ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$30;
				}
				goto label$176;
				label$180:;
				{
					struct $9EMIT_NODE* vr$31 = HNEWBOP( 32ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$31;
				}
				goto label$176;
				label$181:;
				{
					struct $9EMIT_NODE* vr$32 = HNEWBOP( 29ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$32;
				}
				goto label$176;
				label$177:;
				static const void* tmp$142[11ll] = {
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
				if( TMP$137$4 > 10ull ) goto label$181;
				goto *tmp$142[TMP$137$4 - 0ull];
				label$176:;
			}
		}
		goto label$156;
		label$182:;
		{
			{
				int64 TMP$138$4;
				uint64 TMP$139$4;
				if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$183;
				TMP$138$4 = 24ll;
				goto label$194;
				label$183:;
				TMP$138$4 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
				label$194:;
				TMP$139$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$138$4 * 56ll)) + 40ll);
				goto label$185;
				label$186:;
				{
					struct $9EMIT_NODE* vr$38 = HNEWBOP( 19ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$38;
				}
				goto label$184;
				label$187:;
				{
					struct $9EMIT_NODE* vr$39 = HNEWBOP( 18ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$39;
				}
				goto label$184;
				label$188:;
				{
					struct $9EMIT_NODE* vr$40 = HNEWBOP( 20ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$40;
				}
				goto label$184;
				label$189:;
				{
					struct $9EMIT_NODE* vr$41 = HNEWBOP( 17ll, DVREG$1, SVREG$1 );
					fb$result$1 = vr$41;
				}
				goto label$184;
				label$185:;
				static const void* tmp$143[11ll] = {
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
				if( TMP$139$4 > 10ull ) goto label$189;
				goto *tmp$143[TMP$139$4 - 0ull];
				label$184:;
			}
		}
		goto label$156;
		label$157:;
		static const void* tmp$144[11ll] = {
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
		if( TMP$131$2 > 10ull ) goto label$182;
		goto *tmp$144[TMP$131$2 - 0ull];
		label$156:;
	}
	label$154:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMOV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$195:;
	{
		int64 TMP$145$2;
		uint64 TMP$146$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$197;
		TMP$145$2 = 24ll;
		goto label$203;
		label$197:;
		TMP$145$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$203:;
		TMP$146$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$145$2 * 56ll)) + 40ll);
		goto label$199;
		label$200:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 35ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$198;
		label$201:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 34ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$198;
		label$202:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 33ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$198;
		label$199:;
		static const void* tmp$147[4ll] = {
			&&label$200,
			&&label$200,
			&&label$201,
			&&label$201,
		};
		if( (TMP$146$2 - 7ull) > 3ull ) goto label$202;
		goto *tmp$147[TMP$146$2 - 7ull];
		label$198:;
	}
	label$196:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITADD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$204:;
	{
		int64 TMP$148$2;
		uint64 TMP$149$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$206;
		TMP$148$2 = 24ll;
		goto label$212;
		label$206:;
		TMP$148$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$212:;
		TMP$149$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$148$2 * 56ll)) + 40ll);
		goto label$208;
		label$209:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 38ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$207;
		label$210:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 37ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$207;
		label$211:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 36ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$207;
		label$208:;
		static const void* tmp$150[4ll] = {
			&&label$209,
			&&label$209,
			&&label$210,
			&&label$210,
		};
		if( (TMP$149$2 - 7ull) > 3ull ) goto label$211;
		goto *tmp$150[TMP$149$2 - 7ull];
		label$207:;
	}
	label$205:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSUB( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$213:;
	{
		int64 TMP$151$2;
		uint64 TMP$152$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$215;
		TMP$151$2 = 24ll;
		goto label$221;
		label$215:;
		TMP$151$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$221:;
		TMP$152$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$151$2 * 56ll)) + 40ll);
		goto label$217;
		label$218:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 41ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$216;
		label$219:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 40ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$216;
		label$220:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 39ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$216;
		label$217:;
		static const void* tmp$153[4ll] = {
			&&label$218,
			&&label$218,
			&&label$219,
			&&label$219,
		};
		if( (TMP$152$2 - 7ull) > 3ull ) goto label$220;
		goto *tmp$153[TMP$152$2 - 7ull];
		label$216:;
	}
	label$214:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMUL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$222:;
	{
		int64 TMP$154$2;
		uint64 TMP$155$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$224;
		TMP$154$2 = 24ll;
		goto label$230;
		label$224:;
		TMP$154$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$230:;
		TMP$155$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$154$2 * 56ll)) + 40ll);
		goto label$226;
		label$227:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 44ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$225;
		label$228:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 43ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$225;
		label$229:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWBOP( 42ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$8;
		}
		goto label$225;
		label$226:;
		static const void* tmp$156[4ll] = {
			&&label$227,
			&&label$227,
			&&label$228,
			&&label$228,
		};
		if( (TMP$155$2 - 7ull) > 3ull ) goto label$229;
		goto *tmp$156[TMP$155$2 - 7ull];
		label$225:;
	}
	label$223:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDIV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$231:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 46ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$232:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITINTDIV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$233:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 45ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$234:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMOD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$235:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 48ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$236:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSHL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$237:;
	{
		int64 TMP$157$2;
		int64 TMP$158$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$239;
		TMP$157$2 = 24ll;
		goto label$245;
		label$239:;
		TMP$157$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$245:;
		TMP$158$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$157$2 * 56ll)) + 40ll);
		if( TMP$158$2 == 7ll ) goto label$242;
		label$243:;
		if( TMP$158$2 != 8ll ) goto label$241;
		label$242:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 52ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$240;
		label$241:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 51ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$246:;
	{
		int64 TMP$159$2;
		int64 TMP$160$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$248;
		TMP$159$2 = 24ll;
		goto label$254;
		label$248:;
		TMP$159$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$254:;
		TMP$160$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$159$2 * 56ll)) + 40ll);
		if( TMP$160$2 == 7ll ) goto label$251;
		label$252:;
		if( TMP$160$2 != 8ll ) goto label$250;
		label$251:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 54ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$249;
		label$250:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 53ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$255:;
	{
		int64 TMP$161$2;
		int64 TMP$162$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$257;
		TMP$161$2 = 24ll;
		goto label$263;
		label$257:;
		TMP$161$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$263:;
		TMP$162$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$161$2 * 56ll)) + 40ll);
		if( TMP$162$2 == 7ll ) goto label$260;
		label$261:;
		if( TMP$162$2 != 8ll ) goto label$259;
		label$260:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 56ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$258;
		label$259:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 55ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$264:;
	{
		int64 TMP$163$2;
		int64 TMP$164$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$266;
		TMP$163$2 = 24ll;
		goto label$272;
		label$266:;
		TMP$163$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$272:;
		TMP$164$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$163$2 * 56ll)) + 40ll);
		if( TMP$164$2 == 7ll ) goto label$269;
		label$270:;
		if( TMP$164$2 != 8ll ) goto label$268;
		label$269:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 58ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$267;
		label$268:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 57ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$273:;
	{
		int64 TMP$165$2;
		int64 TMP$166$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$275;
		TMP$165$2 = 24ll;
		goto label$281;
		label$275:;
		TMP$165$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$281:;
		TMP$166$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$165$2 * 56ll)) + 40ll);
		if( TMP$166$2 == 7ll ) goto label$278;
		label$279:;
		if( TMP$166$2 != 8ll ) goto label$277;
		label$278:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 60ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$276;
		label$277:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 59ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$282:;
	{
		int64 TMP$167$2;
		int64 TMP$168$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$284;
		TMP$167$2 = 24ll;
		goto label$290;
		label$284:;
		TMP$167$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$290:;
		TMP$168$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$167$2 * 56ll)) + 40ll);
		if( TMP$168$2 == 7ll ) goto label$287;
		label$288:;
		if( TMP$168$2 != 8ll ) goto label$286;
		label$287:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 62ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$285;
		label$286:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 61ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$291:;
	{
		int64 TMP$169$2;
		int64 TMP$170$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$293;
		TMP$169$2 = 24ll;
		goto label$299;
		label$293:;
		TMP$169$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$299:;
		TMP$170$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$169$2 * 56ll)) + 40ll);
		if( TMP$170$2 == 7ll ) goto label$296;
		label$297:;
		if( TMP$170$2 != 8ll ) goto label$295;
		label$296:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWBOP( 64ll, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$294;
		label$295:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWBOP( 63ll, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$300:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 65ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$301:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOW( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$302:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 66ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$303:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITADDROF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$304:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 67ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$305:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDEREF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$306:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 68ll, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$307:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITGT( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$308:;
	{
		int64 TMP$171$2;
		int64 TMP$172$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$310;
		TMP$171$2 = 24ll;
		goto label$319;
		label$310:;
		TMP$171$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$319:;
		TMP$172$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$171$2 * 56ll)) + 40ll);
		if( TMP$172$2 == 7ll ) goto label$313;
		label$314:;
		if( TMP$172$2 != 8ll ) goto label$312;
		label$313:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 71ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$311;
		label$312:;
		if( TMP$172$2 == 9ll ) goto label$316;
		label$317:;
		if( TMP$172$2 != 10ll ) goto label$315;
		label$316:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 70ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$311;
		label$315:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 69ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$320:;
	{
		int64 TMP$173$2;
		int64 TMP$174$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$322;
		TMP$173$2 = 24ll;
		goto label$331;
		label$322:;
		TMP$173$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$331:;
		TMP$174$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$173$2 * 56ll)) + 40ll);
		if( TMP$174$2 == 7ll ) goto label$325;
		label$326:;
		if( TMP$174$2 != 8ll ) goto label$324;
		label$325:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 74ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$323;
		label$324:;
		if( TMP$174$2 == 9ll ) goto label$328;
		label$329:;
		if( TMP$174$2 != 10ll ) goto label$327;
		label$328:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 73ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$323;
		label$327:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 72ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$332:;
	{
		int64 TMP$175$2;
		int64 TMP$176$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$334;
		TMP$175$2 = 24ll;
		goto label$343;
		label$334:;
		TMP$175$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$343:;
		TMP$176$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$175$2 * 56ll)) + 40ll);
		if( TMP$176$2 == 7ll ) goto label$337;
		label$338:;
		if( TMP$176$2 != 8ll ) goto label$336;
		label$337:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 77ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$335;
		label$336:;
		if( TMP$176$2 == 9ll ) goto label$340;
		label$341:;
		if( TMP$176$2 != 10ll ) goto label$339;
		label$340:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 76ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$335;
		label$339:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 75ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$344:;
	{
		int64 TMP$177$2;
		int64 TMP$178$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$346;
		TMP$177$2 = 24ll;
		goto label$355;
		label$346:;
		TMP$177$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$355:;
		TMP$178$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$177$2 * 56ll)) + 40ll);
		if( TMP$178$2 == 7ll ) goto label$349;
		label$350:;
		if( TMP$178$2 != 8ll ) goto label$348;
		label$349:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 80ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$347;
		label$348:;
		if( TMP$178$2 == 9ll ) goto label$352;
		label$353:;
		if( TMP$178$2 != 10ll ) goto label$351;
		label$352:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 79ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$347;
		label$351:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 78ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$356:;
	{
		int64 TMP$179$2;
		int64 TMP$180$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$358;
		TMP$179$2 = 24ll;
		goto label$367;
		label$358:;
		TMP$179$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$367:;
		TMP$180$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$179$2 * 56ll)) + 40ll);
		if( TMP$180$2 == 7ll ) goto label$361;
		label$362:;
		if( TMP$180$2 != 8ll ) goto label$360;
		label$361:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 83ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$359;
		label$360:;
		if( TMP$180$2 == 9ll ) goto label$364;
		label$365:;
		if( TMP$180$2 != 10ll ) goto label$363;
		label$364:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 82ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$359;
		label$363:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 81ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$368:;
	{
		int64 TMP$181$2;
		int64 TMP$182$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$370;
		TMP$181$2 = 24ll;
		goto label$379;
		label$370:;
		TMP$181$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$379:;
		TMP$182$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$181$2 * 56ll)) + 40ll);
		if( TMP$182$2 == 7ll ) goto label$373;
		label$374:;
		if( TMP$182$2 != 8ll ) goto label$372;
		label$373:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWREL( 86ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$371;
		label$372:;
		if( TMP$182$2 == 9ll ) goto label$376;
		label$377:;
		if( TMP$182$2 != 10ll ) goto label$375;
		label$376:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWREL( 85ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$371;
		label$375:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWREL( 84ll, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$380:;
	{
		int64 TMP$183$2;
		int64 TMP$184$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$382;
		TMP$183$2 = 24ll;
		goto label$391;
		label$382:;
		TMP$183$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$391:;
		TMP$184$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$183$2 * 56ll)) + 40ll);
		if( TMP$184$2 == 7ll ) goto label$385;
		label$386:;
		if( TMP$184$2 != 8ll ) goto label$384;
		label$385:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 89ll, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$383;
		label$384:;
		if( TMP$184$2 == 9ll ) goto label$388;
		label$389:;
		if( TMP$184$2 != 10ll ) goto label$387;
		label$388:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 88ll, DVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$383;
		label$387:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWUOP( 87ll, DVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$392:;
	{
		int64 TMP$185$2;
		int64 TMP$186$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$394;
		TMP$185$2 = 24ll;
		goto label$400;
		label$394:;
		TMP$185$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$400:;
		TMP$186$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$185$2 * 56ll)) + 40ll);
		if( TMP$186$2 == 7ll ) goto label$397;
		label$398:;
		if( TMP$186$2 != 8ll ) goto label$396;
		label$397:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 91ll, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$395;
		label$396:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 90ll, DVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$401:;
	{
		int64 TMP$187$2;
		int64 TMP$188$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$403;
		TMP$187$2 = 24ll;
		goto label$409;
		label$403:;
		TMP$187$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$409:;
		TMP$188$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$187$2 * 56ll)) + 40ll);
		if( TMP$188$2 == 9ll ) goto label$406;
		label$407:;
		if( TMP$188$2 != 10ll ) goto label$405;
		label$406:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 92ll, DVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$410:;
	{
		int64 TMP$189$2;
		int64 TMP$190$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$412;
		TMP$189$2 = 24ll;
		goto label$421;
		label$412:;
		TMP$189$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$421:;
		TMP$190$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$189$2 * 56ll)) + 40ll);
		if( TMP$190$2 == 7ll ) goto label$415;
		label$416:;
		if( TMP$190$2 != 8ll ) goto label$414;
		label$415:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 95ll, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$413;
		label$414:;
		if( TMP$190$2 == 9ll ) goto label$418;
		label$419:;
		if( TMP$190$2 != 10ll ) goto label$417;
		label$418:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 94ll, DVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$413;
		label$417:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWUOP( 93ll, DVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$422:;
	{
		int64 TMP$191$2;
		int64 TMP$192$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$424;
		TMP$191$2 = 24ll;
		goto label$433;
		label$424:;
		TMP$191$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$433:;
		TMP$192$2 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$191$2 * 56ll)) + 40ll);
		if( TMP$192$2 == 7ll ) goto label$427;
		label$428:;
		if( TMP$192$2 != 8ll ) goto label$426;
		label$427:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWUOP( 98ll, DVREG$1 );
			fb$result$1 = vr$6;
		}
		goto label$425;
		label$426:;
		if( TMP$192$2 == 9ll ) goto label$430;
		label$431:;
		if( TMP$192$2 != 10ll ) goto label$429;
		label$430:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWUOP( 97ll, DVREG$1 );
			fb$result$1 = vr$7;
		}
		goto label$425;
		label$429:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWUOP( 96ll, DVREG$1 );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$434:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 99ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$435:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFRAC( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$436:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 100ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$437:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCONVFD2FS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$438:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 101ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$439:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSIN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$440:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 103ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$441:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITASIN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$442:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 104ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$443:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCOS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$444:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 105ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$445:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITACOS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$446:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 106ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$447:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITTAN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$448:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 107ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$449:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITATAN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$450:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 108ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$451:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSQRT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$452:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 109ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$453:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRSQRT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$454:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 110ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$455:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRCP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$456:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 111ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$457:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLOG( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$458:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 112ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$459:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEXP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$460:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 113ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$461:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFLOOR( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$462:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 114ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$463:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITXCHGTOS( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$464:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 115ll, SVREG$1 );
	fb$result$1 = vr$1;
	label$465:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSWZREP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$466:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 102ll, DVREG$1 );
	fb$result$1 = vr$1;
	label$467:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTACKALIGN( int64 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$468:;
	struct $6IRVREG VR$1;
	__builtin_memset( &VR$1, 0, 120ll );
	*($15IRVREGTYPE_ENUM*)&VR$1 = 0ll;
	*(int64*)((uint8*)&VR$1 + 48ll) = BYTES$1;
	struct $9EMIT_NODE* vr$3 = HNEWSTK( 116ll, &VR$1, 0ll );
	fb$result$1 = vr$3;
	label$469:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUSH( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$470:;
	{
		int64 TMP$193$2;
		uint64 TMP$194$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$472;
		TMP$193$2 = 24ll;
		goto label$478;
		label$472:;
		TMP$193$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$478:;
		TMP$194$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$193$2 * 56ll)) + 40ll);
		goto label$474;
		label$475:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWSTK( 119ll, SVREG$1, 0ll );
			fb$result$1 = vr$6;
		}
		goto label$473;
		label$476:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWSTK( 118ll, SVREG$1, 0ll );
			fb$result$1 = vr$7;
		}
		goto label$473;
		label$477:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWSTK( 117ll, SVREG$1, 0ll );
			fb$result$1 = vr$8;
		}
		goto label$473;
		label$474:;
		static const void* tmp$195[4ll] = {
			&&label$475,
			&&label$475,
			&&label$476,
			&&label$476,
		};
		if( (TMP$194$2 - 7ull) > 3ull ) goto label$477;
		goto *tmp$195[TMP$194$2 - 7ull];
		label$473:;
	}
	label$471:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$479:;
	{
		int64 TMP$196$2;
		uint64 TMP$197$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$481;
		TMP$196$2 = 24ll;
		goto label$487;
		label$481:;
		TMP$196$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$487:;
		TMP$197$2 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$196$2 * 56ll)) + 40ll);
		goto label$483;
		label$484:;
		{
			struct $9EMIT_NODE* vr$6 = HNEWSTK( 122ll, DVREG$1, 0ll );
			fb$result$1 = vr$6;
		}
		goto label$482;
		label$485:;
		{
			struct $9EMIT_NODE* vr$7 = HNEWSTK( 121ll, DVREG$1, 0ll );
			fb$result$1 = vr$7;
		}
		goto label$482;
		label$486:;
		{
			struct $9EMIT_NODE* vr$8 = HNEWSTK( 120ll, DVREG$1, 0ll );
			fb$result$1 = vr$8;
		}
		goto label$482;
		label$483:;
		static const void* tmp$198[4ll] = {
			&&label$484,
			&&label$484,
			&&label$485,
			&&label$485,
		};
		if( (TMP$197$2 - 7ull) > 3ull ) goto label$486;
		goto *tmp$198[TMP$197$2 - 7ull];
		label$482:;
	}
	label$480:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUSHUDT( struct $6IRVREG* SVREG$1, int64 SDSIZE$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$488:;
	struct $9EMIT_NODE* vr$1 = HNEWSTK( 123ll, SVREG$1, SDSIZE$1 );
	fb$result$1 = vr$1;
	label$489:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOPST0( void )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$490:;
	struct $9EMIT_NODE* vr$1 = HNEWSTK( 124ll, (struct $6IRVREG*)0ull, 0ll );
	fb$result$1 = vr$1;
	label$491:;
	return fb$result$1;
}

void EMITCOMMENT( uint8* TEXT$1 )
{
	FBSTRING TMP$200$1;
	FBSTRING TMP$201$1;
	label$492:;
	__builtin_memset( &TMP$201$1, 0, 24ll );
	__builtin_memset( &TMP$200$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$200$1, (void*)"##", 3ll, (void*)TEXT$1, 0ll );
	fb_StrAssign( (void*)&TMP$201$1, -1ll, (void*)vr$3, -1ll, 0 );
	HNEWLIT( (uint8*)*(uint8**)&TMP$201$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$201$1 );
	label$493:;
}

void EMITASM( uint8* TEXT$1 )
{
	label$494:;
	HNEWLIT( TEXT$1, -1ll );
	{
		int64 C$2;
		C$2 = 0ll;
		label$499:;
		{
			*(int64*)((uint8*)((uint8*)&EMIT$ + (C$2 << (3ll & 63ll))) + 264ll) = -1ll;
		}
		label$497:;
		C$2 = C$2 + 1ll;
		label$496:;
		if( C$2 <= 1ll ) goto label$499;
		label$498:;
	}
	label$495:;
}

struct $9EMIT_NODE* EMITJMPTB( struct $8FBSYMBOL* TBSYM$1, uint64* VALUES1$1, struct $8FBSYMBOL** LABELS1$1, int64 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$500:;
	struct $9EMIT_NODE* N$1;
	uint64* VALUES$1;
	struct $8FBSYMBOL** LABELS$1;
	void* vr$2 = calloc( (uint64)(LABELCOUNT$1 << (3ll & 63ll)), 1ull );
	VALUES$1 = (uint64*)vr$2;
	void* vr$4 = calloc( (uint64)(LABELCOUNT$1 << (3ll & 63ll)), 1ull );
	LABELS$1 = (struct $8FBSYMBOL**)vr$4;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$202$2;
		TMP$202$2 = LABELCOUNT$1 + -1ll;
		goto label$502;
		label$505:;
		{
			*(uint64*)((uint8*)VALUES$1 + (I$2 << (3ll & 63ll))) = *(uint64*)((uint8*)VALUES1$1 + (I$2 << (3ll & 63ll)));
			*(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$2 << (3ll & 63ll))) = *(struct $8FBSYMBOL**)((uint8*)LABELS1$1 + (I$2 << (3ll & 63ll)));
		}
		label$503:;
		I$2 = I$2 + 1ll;
		label$502:;
		if( I$2 <= TMP$202$2 ) goto label$505;
		label$504:;
	}
	struct $9EMIT_NODE* vr$15 = HNEWNODE( 7ll, 0ll );
	N$1 = vr$15;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) = TBSYM$1;
	*(uint64**)((uint8*)N$1 + 16ll) = VALUES$1;
	*(struct $8FBSYMBOL***)((uint8*)N$1 + 24ll) = LABELS$1;
	*(int64*)((uint8*)N$1 + 32ll) = LABELCOUNT$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = DEFLABEL$1;
	*(uint64*)((uint8*)N$1 + 48ll) = BIAS$1;
	*(uint64*)((uint8*)N$1 + 56ll) = SPAN$1;
	fb$result$1 = N$1;
	label$501:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCALL( struct $8FBSYMBOL* LABEL$1, int64 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$506:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 125ll, (struct $6IRVREG*)0ull, LABEL$1, BYTESTOPOP$1 );
	fb$result$1 = vr$1;
	label$507:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCALLPTR( struct $6IRVREG* SVREG$1, int64 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$508:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 126ll, SVREG$1, (struct $8FBSYMBOL*)0ull, BYTESTOPOP$1 );
	fb$result$1 = vr$1;
	label$509:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITBRANCH( int64 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$510:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 127ll, (struct $6IRVREG*)0ull, LABEL$1, OP$1 );
	fb$result$1 = vr$1;
	label$511:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITJUMP( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$512:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 128ll, (struct $6IRVREG*)0ull, LABEL$1, 0ll );
	fb$result$1 = vr$1;
	label$513:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITJUMPPTR( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$514:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 129ll, SVREG$1, (struct $8FBSYMBOL*)0ull, 0ll );
	fb$result$1 = vr$1;
	label$515:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRET( int64 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$516:;
	struct $6IRVREG VR$1;
	__builtin_memset( &VR$1, 0, 120ll );
	*($15IRVREGTYPE_ENUM*)&VR$1 = 0ll;
	*(int64*)((uint8*)&VR$1 + 48ll) = BYTESTOPOP$1;
	struct $9EMIT_NODE* vr$3 = HNEWUOP( 130ll, &VR$1 );
	fb$result$1 = vr$3;
	label$517:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$518:;
	struct $9EMIT_NODE* vr$1 = HNEWSYMOP( 131ll, LABEL$1 );
	fb$result$1 = vr$1;
	label$519:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUBLIC( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$520:;
	struct $9EMIT_NODE* vr$1 = HNEWSYMOP( 132ll, LABEL$1 );
	fb$result$1 = vr$1;
	label$521:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMMOVE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$522:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 135ll, DVREG$1, SVREG$1, BYTES$1, 0ll );
	fb$result$1 = vr$1;
	label$523:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMSWAP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$524:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 136ll, DVREG$1, SVREG$1, BYTES$1, 0ll );
	fb$result$1 = vr$1;
	label$525:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* BYTES_VREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$526:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 137ll, DVREG$1, BYTES_VREG$1, 0ll, 0ll );
	fb$result$1 = vr$1;
	label$527:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTKCLEAR( int64 BYTES$1, int64 BASEOFS$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$528:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 138ll, (struct $6IRVREG*)0ull, (struct $6IRVREG*)0ull, BYTES$1, BASEOFS$1 );
	fb$result$1 = vr$1;
	label$529:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGLINEBEGIN( struct $8FBSYMBOL* PROC$1, int64 LNUM$1, uint8* FILENAME$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$530:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 139ll, PROC$1, LNUM$1, *(int64*)((uint8*)&EMIT$ + 8ll), FILENAME$1 );
	fb$result$1 = vr$1;
	label$531:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGLINEEND( struct $8FBSYMBOL* PROC$1, int64 LNUM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$532:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 140ll, PROC$1, LNUM$1, *(int64*)((uint8*)&EMIT$ + 8ll), (uint8*)0ull );
	fb$result$1 = vr$1;
	label$533:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGSCOPEBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$534:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 141ll, SYM$1, 0ll, 0ll, (uint8*)0ull );
	fb$result$1 = vr$1;
	label$535:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGSCOPEEND( struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$536:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 142ll, SYM$1, 0ll, 0ll, (uint8*)0ull );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $9EMIT_NODE* HOPTSYMOP( struct $9EMIT_NODE* P$1, struct $9EMIT_NODE* N$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$30:;
	{
		int64 TMP$109$2;
		TMP$109$2 = *(int64*)((uint8*)N$1 + 8ll);
		if( TMP$109$2 != 131ll ) goto label$33;
		label$34:;
		{
			if( P$1 == (struct $9EMIT_NODE*)0ull ) goto label$36;
			{
				if( *(int64*)P$1 != 5ll ) goto label$38;
				{
					{
						int64 TMP$110$6;
						TMP$110$6 = *(int64*)((uint8*)P$1 + 8ll);
						if( TMP$110$6 == 127ll ) goto label$41;
						label$42:;
						if( TMP$110$6 != 128ll ) goto label$40;
						label$41:;
						{
							if( *(struct $8FBSYMBOL**)((uint8*)P$1 + 24ll) != *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) ) goto label$44;
							{
								*($19EMIT_NODECLASS_ENUM*)P$1 = 0ll;
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
	P$1 = (struct $9EMIT_NODE*)0ull;
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&EMIT$ + 32ll) );
	N$1 = (struct $9EMIT_NODE*)vr$1;
	label$47:;
	if( N$1 == (struct $9EMIT_NODE*)0ull ) goto label$48;
	{
		{
			uint64 TMP$111$3;
			TMP$111$3 = *(uint64*)N$1;
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
				if( *(int64*)((uint8*)N$1 + 8ll) == 0ll ) goto label$55;
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
			static const void* tmp$203[5ll] = {
				&&label$53,
				&&label$56,
				&&label$51,
				&&label$56,
				&&label$52,
			};
			if( (TMP$111$3 - 6ull) > 4ull ) goto label$56;
			goto *tmp$203[TMP$111$3 - 6ull];
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$78:;
	struct $6IRVREG* N$1;
	int64 DCLASS$1;
	if( V$1 != (struct $6IRVREG*)0ull ) goto label$81;
	{
		fb$result$1 = (struct $6IRVREG*)0ull;
		goto label$79;
	}
	label$81:;
	label$80:;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&EMIT$ + 144ll) );
	N$1 = (struct $6IRVREG*)vr$2;
	*($15IRVREGTYPE_ENUM*)N$1 = *($15IRVREGTYPE_ENUM*)V$1;
	*($11FB_DATATYPE*)((uint8*)N$1 + 8ll) = *($11FB_DATATYPE*)((uint8*)V$1 + 8ll);
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 56ll) = *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll);
	*(int64*)((uint8*)N$1 + 64ll) = *(int64*)((uint8*)V$1 + 64ll);
	*(int64*)((uint8*)N$1 + 72ll) = *(int64*)((uint8*)V$1 + 72ll);
	__builtin_memcpy( (union $7FBVALUE*)((uint8*)N$1 + 48ll), (union $7FBVALUE*)((uint8*)V$1 + 48ll), 8 );
	*($12IR_REGFAMILY*)((uint8*)N$1 + 32ll) = *($12IR_REGFAMILY*)((uint8*)V$1 + 32ll);
	*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)V$1 + 40ll);
	if( *(int64*)V$1 != 4ll ) goto label$83;
	{
		int64 TMP$114$2;
		if( (*(int64*)((uint8*)V$1 + 8ll) & 480ll) == 0ll ) goto label$84;
		TMP$114$2 = 24ll;
		goto label$538;
		label$84:;
		TMP$114$2 = *(int64*)((uint8*)V$1 + 8ll) & 31ll;
		label$538:;
		DCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$114$2 * 56ll));
		int64 vr$30 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll) + 80ll))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll), *(int64*)((uint8*)V$1 + 24ll) );
		*(int64*)((uint8*)N$1 + 24ll) = vr$30;
		*(int64*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 264ll) = *(int64*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 264ll) | (1ll << (*(int64*)((uint8*)N$1 + 24ll) & 63ll));
	}
	label$83:;
	label$82:;
	struct $6IRVREG* vr$43 = HNEWVR( *(struct $6IRVREG**)((uint8*)V$1 + 88ll) );
	*(struct $6IRVREG**)((uint8*)N$1 + 88ll) = vr$43;
	struct $6IRVREG* vr$46 = HNEWVR( *(struct $6IRVREG**)((uint8*)V$1 + 80ll) );
	*(struct $6IRVREG**)((uint8*)N$1 + 80ll) = vr$46;
	fb$result$1 = N$1;
	label$79:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWNODE( $19EMIT_NODECLASS_ENUM CLASS_$1, int64 UPDATEPOS$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$85:;
	static struct $9EMIT_NODE* N$1;
	static int64 I$1;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&EMIT$ + 32ll) );
	N$1 = (struct $9EMIT_NODE*)vr$2;
	*($19EMIT_NODECLASS_ENUM*)N$1 = CLASS_$1;
	{
		I$1 = 0ll;
		label$90:;
		{
			*(int64*)((uint8*)((uint8*)N$1 + (I$1 << (3ll & 63ll))) + 64ll) = *(int64*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (I$1 << (3ll & 63ll))) + 16ll) + 272ll);
		}
		label$88:;
		I$1 = I$1 + 1ll;
		label$87:;
		if( I$1 <= 1ll ) goto label$90;
		label$89:;
	}
	if( UPDATEPOS$1 == 0ll ) goto label$92;
	{
		*(int64*)((uint8*)&EMIT$ + 8ll) = *(int64*)((uint8*)&EMIT$ + 8ll) + 1ll;
	}
	label$92:;
	label$91:;
	fb$result$1 = N$1;
	label$86:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWBOP( int64 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$93:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 1ll, -1ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16ll) = vr$3;
	struct $6IRVREG* vr$5 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 24ll) = vr$5;
	fb$result$1 = N$1;
	label$94:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWUOP( int64 OP$1, struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$95:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 2ll, -1ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16ll) = vr$3;
	fb$result$1 = N$1;
	label$96:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWREL( int64 OP$1, struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$97:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 3ll, -1ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( RVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16ll) = vr$3;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = LABEL$1;
	struct $6IRVREG* vr$6 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 32ll) = vr$6;
	struct $6IRVREG* vr$8 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 40ll) = vr$8;
	fb$result$1 = N$1;
	label$98:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWSTK( int64 OP$1, struct $6IRVREG* VREG$1, int64 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$99:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 4ll, -1ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( VREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16ll) = vr$3;
	*(int64*)((uint8*)N$1 + 24ll) = EXTRA$1;
	fb$result$1 = N$1;
	label$100:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWBRANCH( int64 OP$1, struct $6IRVREG* VREG$1, struct $8FBSYMBOL* SYM$1, int64 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$101:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 5ll, -1ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	struct $6IRVREG* vr$4 = HNEWVR( VREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16ll) = vr$4;
	*(int64*)((uint8*)N$1 + 32ll) = EXTRA$1;
	fb$result$1 = N$1;
	label$102:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWSYMOP( int64 OP$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$103:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 8ll, 0ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = SYM$1;
	fb$result$1 = N$1;
	label$104:;
	return fb$result$1;
}

static void HNEWLIT( uint8* TEXT$1, int64 ISASM$1 )
{
	label$105:;
	struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$0 = HNEWNODE( 6ll, ISASM$1 );
	N$1 = vr$0;
	*(int64*)((uint8*)N$1 + 8ll) = ISASM$1;
	int64 vr$2 = fb_StrLen( (void*)TEXT$1, 0ll );
	void* vr$5 = XALLOCATE( (int32)(vr$2 + 1ll) );
	*(uint8**)((uint8*)N$1 + 16ll) = (uint8*)vr$5;
	fb_StrAssign( *(void**)((uint8*)N$1 + 16ll), 0ll, (void*)TEXT$1, 0ll, 0 );
	label$106:;
}

static struct $9EMIT_NODE* HNEWMEM( int64 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1, int64 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$107:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 9ll, -1ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16ll) = vr$3;
	struct $6IRVREG* vr$5 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 24ll) = vr$5;
	*(int64*)((uint8*)N$1 + 32ll) = BYTES$1;
	*(int64*)((uint8*)N$1 + 40ll) = EXTRA$1;
	fb$result$1 = N$1;
	label$108:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWDBG( int64 OP$1, struct $8FBSYMBOL* SYM$1, int64 LNUM$1, int64 POS_$1, uint8* FILENAME$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$109:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 10ll, 0ll );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 8ll) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 24ll) = LNUM$1;
	*(uint8**)((uint8*)N$1 + 32ll) = FILENAME$1;
	*(int64*)((uint8*)N$1 + 40ll) = POS_$1;
	fb$result$1 = N$1;
	label$110:;
	return fb$result$1;
}
