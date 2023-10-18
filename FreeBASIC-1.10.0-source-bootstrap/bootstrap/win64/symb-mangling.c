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
typedef int64 $11FB_DATATYPE;
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
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1IPcE {
	uint8** DATA;
	uint8** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPcE ) == 72 );
typedef int64 $12FB_MANGLEOPT;
typedef int64 $19FB_CVA_LIST_TYPEDEF;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
struct $13FB_MANGLEABBR {
	int64 IDX;
	int64 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_MANGLEABBR ) == 24 );
struct $8FBARRAY1IP8FBSYMBOLE {
	struct $8FBSYMBOL** DATA;
	struct $8FBSYMBOL** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IP8FBSYMBOLE ) == 72 );
typedef int64 $13FB_COMPTARGET;
typedef int64 $10FB_BACKEND;
typedef uint8* (*tmp$44)( void );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatByref( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_CHR( int32, ... );
static void fb_ctor__symbzmangling( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int64 FBIS64BIT( void );
int64 FBGETCPUFAMILY( void );
void* POOLNEWITEM( struct $5TPOOL*, int64 );
void POOLDELITEM( struct $5TPOOL*, void* );
void SYMBGETDESCTYPEARRAYDTYPE( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBPROCCALCSTDCALLSUFFIXN( struct $8FBSYMBOL* );
int64 SYMBHASDTOR( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int64, struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void SYMBMANGLERESETABBREV( void );
uint8* HMANGLEBUILTINTYPE( int64, int64* );
void SYMBMANGLETYPE( FBSTRING*, int64, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
void SYMBMANGLEPARAM( FBSTRING*, struct $8FBSYMBOL* );
uint8* HHEXUINT( uint64 );
uint8* HREPLACECHAR( uint8*, int64, int64 );
void FLISTINIT( struct $6TFLIST*, int64, int64 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
static int64 HDOCPPMANGLING( struct $8FBSYMBOL* );
static void HMANGLEPROC( struct $8FBSYMBOL* );
static void HMANGLEVARIABLE( struct $8FBSYMBOL* );
static void HGETPROCPARAMSTYPECODE( FBSTRING*, struct $8FBSYMBOL*, int64 );
static void HMANGLENAMESPACE( FBSTRING*, struct $8FBSYMBOL*, int64, int64 );
static void SYMBSETMANGLEDID( struct $8FBSYMBOL*, FBSTRING* );
static void HMANGLEUDTID( FBSTRING*, struct $8FBSYMBOL* );
static int64 HABBREVFIND( int64, struct $8FBSYMBOL* );
static struct $13FB_MANGLEABBR* HABBREVADD( int64, struct $8FBSYMBOL* );
static void HABBREVGET( FBSTRING*, int64 );
static int64 HADDUNDERSCORE( void );
static uint8* HGETOPERATORNAME( struct $8FBSYMBOL* );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
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
typedef int64 $10FB_OUTTYPE;
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
struct $12FB_MANGLECTX {
	struct $6TFLIST FLIST;
	int64 CNT;
	uint8 TEMPSTR[17];
	int64 UNIQUEIDCOUNT;
	int64 UNIQUELABELCOUNT;
	int64 PROFILELABELCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_MANGLECTX ) == 168 );
static struct $12FB_MANGLECTX CTX$;

void SYMBMANGLEINIT( void )
{
	label$10:;
	FLISTINIT( (struct $6TFLIST*)&CTX$, 96ll, 24ll );
	*(int64*)((uint8*)&CTX$ + 112ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 144ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 152ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 160ll) = 0ll;
	label$11:;
}

void SYMBMANGLEEND( void )
{
	label$12:;
	FLISTEND( (struct $6TFLIST*)&CTX$ );
	label$13:;
}

uint8* SYMBUNIQUEID( boolean VALIDFBNAME$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	if( ((int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 1ll) & (int64)-((int64)-VALIDFBNAME$1 == 0ll)) == 0ll ) goto label$17;
	{
		FBSTRING TMP$84$2;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)"tmp$", 5ll, 0 );
		FBSTRING* vr$6 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 144ll) );
		__builtin_memset( &TMP$84$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$84$2, (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$6, -1ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$10, -1ll, 0 );
	}
	goto label$16;
	label$17:;
	{
		FBSTRING TMP$86$2;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)"Lt_", 4ll, 0 );
		uint8* vr$13 = HHEXUINT( *(uint64*)((uint8*)&CTX$ + 144ll) );
		__builtin_memset( &TMP$86$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$86$2, (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$13, 0ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$17, -1ll, 0 );
	}
	label$16:;
	*(int64*)((uint8*)&CTX$ + 144ll) = *(int64*)((uint8*)&CTX$ + 144ll) + 1ll;
	fb$result$1 = (uint8*)((uint8*)&CTX$ + 120ll);
	label$15:;
	return fb$result$1;
}

uint8* SYMBUNIQUELABEL( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$18:;
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$21;
	{
		FBSTRING TMP$88$2;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)"label$", 7ll, 0 );
		FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 152ll) );
		__builtin_memset( &TMP$88$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$88$2, (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$2, -1ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$6, -1ll, 0 );
		*(int64*)((uint8*)&CTX$ + 152ll) = *(int64*)((uint8*)&CTX$ + 152ll) + 1ll;
	}
	goto label$20;
	label$21:;
	{
		FBSTRING TMP$91$2;
		if( *(int64*)((uint8*)&ENV$ + 216ll) != 9ll ) goto label$23;
		{
			fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)"L_", 3ll, 0 );
		}
		goto label$22;
		label$23:;
		{
			fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)".L_", 4ll, 0 );
		}
		label$22:;
		uint8* vr$11 = HHEXUINT( *(uint64*)((uint8*)&CTX$ + 144ll) );
		__builtin_memset( &TMP$91$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$91$2, (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$11, 0ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$15, -1ll, 0 );
		*(int64*)((uint8*)&CTX$ + 144ll) = *(int64*)((uint8*)&CTX$ + 144ll) + 1ll;
	}
	label$20:;
	fb$result$1 = (uint8*)((uint8*)&CTX$ + 120ll);
	label$19:;
	return fb$result$1;
}

uint8* SYMBMAKEPROFILELABELNAME( void )
{
	FBSTRING TMP$93$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	uint8* vr$1 = HHEXUINT( *(uint64*)((uint8*)&CTX$ + 160ll) );
	__builtin_memset( &TMP$93$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$93$1, (void*)"LP_", 4ll, (void*)vr$1, 0ll );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 120ll), 17ll, (void*)vr$4, -1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 160ll) = *(int64*)((uint8*)&CTX$ + 160ll) + 1ll;
	fb$result$1 = (uint8*)((uint8*)&CTX$ + 120ll);
	label$25:;
	return fb$result$1;
}

uint8* SYMBGETDBGNAME( struct $8FBSYMBOL* SYM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$26:;
	int64 vr$1 = HDOCPPMANGLING( SYM$1 );
	if( vr$1 == 0ll ) goto label$29;
	{
		{
			uint64 TMP$94$3;
			TMP$94$3 = *(uint64*)SYM$1;
			goto label$31;
			label$32:;
			{
				uint8* RES$4;
				RES$4 = *(uint8**)((uint8*)SYM$1 + 40ll);
				if( RES$4 != (uint8*)0ull ) goto label$34;
				{
					RES$4 = *(uint8**)((uint8*)SYM$1 + 32ll);
				}
				label$34:;
				label$33:;
				fb$result$1 = RES$4;
				goto label$27;
			}
			goto label$30;
			label$35:;
			{
				uint8* vr$5 = SYMBGETMANGLEDNAME( SYM$1 );
				fb$result$1 = vr$5;
				goto label$27;
			}
			goto label$30;
			label$31:;
			static const void* tmp$95[4ll] = {
				&&label$32,
				&&label$32,
				&&label$32,
				&&label$32,
			};
			if( (TMP$94$3 - 8ull) > 3ull ) goto label$35;
			goto *tmp$95[TMP$94$3 - 8ull];
			label$30:;
		}
	}
	label$29:;
	label$28:;
	if( ((int64)-(*(int64*)SYM$1 == 10ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 8192ll) != 0ll)) == 0ll ) goto label$37;
	{
		if( *(uint8**)((uint8*)SYM$1 + 40ll) == (uint8*)0ull ) goto label$39;
		{
			fb$result$1 = *(uint8**)((uint8*)SYM$1 + 40ll);
			goto label$27;
		}
		label$39:;
		label$38:;
	}
	label$37:;
	label$36:;
	fb$result$1 = *(uint8**)((uint8*)SYM$1 + 32ll);
	label$27:;
	return fb$result$1;
}

void SYMBSETNAME( struct $8FBSYMBOL* S$1, uint8* NAME_$1 )
{
	label$40:;
	int64 SLEN$1;
	if( *(uint8**)((uint8*)S$1 + 32ll) == (uint8*)0ull ) goto label$43;
	{
		POOLDELITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll), *(void**)((uint8*)S$1 + 32ll) );
	}
	label$43:;
	label$42:;
	int64 vr$3 = fb_StrLen( (void*)NAME_$1, 0ll );
	SLEN$1 = vr$3;
	if( SLEN$1 != 0ll ) goto label$45;
	{
		*(uint8**)((uint8*)S$1 + 32ll) = (uint8*)0ull;
	}
	goto label$44;
	label$45:;
	{
		void* vr$7 = POOLNEWITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll), SLEN$1 + 1ll );
		*(uint8**)((uint8*)S$1 + 32ll) = (uint8*)vr$7;
		fb_StrAssign( *(void**)((uint8*)S$1 + 32ll), 0ll, (void*)NAME_$1, 0ll, 0 );
	}
	label$44:;
	label$41:;
}

uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* SYM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	if( *(uint8**)((uint8*)SYM$1 + 48ll) == (uint8*)0ull ) goto label$57;
	{
		fb$result$1 = *(uint8**)((uint8*)SYM$1 + 48ll);
		goto label$55;
	}
	label$57:;
	label$56:;
	{
		uint64 TMP$102$2;
		TMP$102$2 = *(uint64*)SYM$1;
		goto label$59;
		label$60:;
		{
			HMANGLEPROC( SYM$1 );
		}
		goto label$58;
		label$61:;
		{
			FBSTRING MANGLED$3;
			__builtin_memset( &MANGLED$3, 0, 24ll );
			HMANGLENAMESPACE( &MANGLED$3, *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll), -1ll, 0ll );
			HMANGLEUDTID( &MANGLED$3, SYM$1 );
			if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$63;
			{
				fb_StrConcatAssign( (void*)&MANGLED$3, -1ll, (void*)"E", 2ll, 0 );
			}
			label$63:;
			label$62:;
			SYMBSETMANGLEDID( SYM$1, &MANGLED$3 );
			fb_StrDelete( (FBSTRING*)&MANGLED$3 );
		}
		goto label$58;
		label$64:;
		{
			HMANGLEVARIABLE( SYM$1 );
		}
		goto label$58;
		label$65:;
		{
			fb$result$1 = *(uint8**)((uint8*)SYM$1 + 40ll);
			goto label$55;
		}
		goto label$58;
		label$59:;
		static const void* tmp$104[14ll] = {
			&&label$64,
			&&label$65,
			&&label$60,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$61,
			&&label$65,
			&&label$65,
			&&label$61,
		};
		if( (TMP$102$2 - 1ull) > 13ull ) goto label$65;
		goto *tmp$104[TMP$102$2 - 1ull];
		label$58:;
	}
	SYMBMANGLERESETABBREV(  );
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$67;
	{
		if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 524288ll) == 0ll ) goto label$69;
		{
			HREPLACECHAR( *(uint8**)((uint8*)SYM$1 + 48ll), 46ll, 36ll );
		}
		label$69:;
		label$68:;
	}
	label$67:;
	label$66:;
	fb$result$1 = *(uint8**)((uint8*)SYM$1 + 48ll);
	label$55:;
	return fb$result$1;
}

void SYMBMANGLERESETABBREV( void )
{
	label$70:;
	FLISTRESET( (struct $6TFLIST*)&CTX$ );
	*(int64*)((uint8*)&CTX$ + 112ll) = 0ll;
	label$71:;
}

uint8* HMANGLEBUILTINTYPE( int64 DTYPE$1, int64* ADD_ABBREV$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$94:;
	*ADD_ABBREV$1 = 0ll;
	if( DTYPE$1 != 17ll ) goto label$97;
	{
		*ADD_ABBREV$1 = -1ll;
		fb$result$1 = (uint8*)"8FBSTRING";
		goto label$95;
	}
	label$97:;
	label$96:;
	int64 vr$3 = FBIS64BIT(  );
	if( (vr$3 & (int64)-((*(int64*)((uint8*)&ENV$ + 568ll) & 1ll) == 0ll)) == 0ll ) goto label$99;
	{
		if( (DTYPE$1 & 32505856ll) == 0ll ) goto label$101;
		{
			DTYPE$1 = (DTYPE$1 & 32505856ll) >> (20ll & 63ll);
			{
				if( DTYPE$1 != 8ll ) goto label$103;
				label$104:;
				{
					fb$result$1 = (uint8*)"l";
					goto label$95;
				}
				goto label$102;
				label$103:;
				if( DTYPE$1 != 9ll ) goto label$105;
				label$106:;
				{
					fb$result$1 = (uint8*)"m";
					goto label$95;
				}
				label$105:;
				label$102:;
			}
		}
		goto label$100;
		label$101:;
		{
			{
				if( DTYPE$1 != 8ll ) goto label$108;
				label$109:;
				{
					*ADD_ABBREV$1 = -1ll;
					fb$result$1 = (uint8*)"u7INTEGER";
					goto label$95;
				}
				goto label$107;
				label$108:;
				if( DTYPE$1 != 9ll ) goto label$110;
				label$111:;
				{
					*ADD_ABBREV$1 = -1ll;
					fb$result$1 = (uint8*)"u8UINTEGER";
					goto label$95;
				}
				label$110:;
				label$107:;
			}
		}
		label$100:;
	}
	goto label$98;
	label$99:;
	{
		{
			if( DTYPE$1 != 8ll ) goto label$113;
			label$114:;
			{
				fb$result$1 = (uint8*)"l";
				goto label$95;
			}
			goto label$112;
			label$113:;
			if( DTYPE$1 != 9ll ) goto label$115;
			label$116:;
			{
				fb$result$1 = (uint8*)"m";
				goto label$95;
			}
			label$115:;
			label$112:;
		}
	}
	label$98:;
	if( (DTYPE$1 & 32505856ll) == 0ll ) goto label$118;
	{
		DTYPE$1 = (DTYPE$1 & 32505856ll) >> (20ll & 63ll);
	}
	label$118:;
	label$117:;
	static uint8* TYPECODES$1[26] = { (uint8*)"v", (uint8*)"b", (uint8*)"a", (uint8*)"h", (uint8*)"c", (uint8*)"s", (uint8*)"t", (uint8*)"w", (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)"i", (uint8*)"j", (uint8*)"x", (uint8*)"y", (uint8*)"f", (uint8*)"d", (uint8*)0ull, (uint8*)0ull, (uint8*)"c", (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)0ull };
	static struct $8FBARRAY1IPcE tmp$113$1 = { (uint8**)TYPECODES$1, (uint8**)TYPECODES$1, 208ll, 8ll, 1ll, 49ll, { { 26ll, 0ll, 25ll } } };
	fb$result$1 = *(uint8**)((int64)(uint8**)TYPECODES$1 + (DTYPE$1 << (3ll & 63ll)));
	label$95:;
	return fb$result$1;
}

void SYMBMANGLETYPE( FBSTRING* MANGLED$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $12FB_MANGLEOPT OPTIONS$1 )
{
	int64 TMP$128$1;
	label$119:;
	struct $8FBSYMBOL* NS$1;
	int64 ADD_ABBREV$1;
	int64 IDX$1;
	int64 vr$0 = HABBREVFIND( DTYPE$1, SUBTYPE$1 );
	IDX$1 = vr$0;
	if( IDX$1 == -1ll ) goto label$122;
	{
		HABBREVGET( MANGLED$1, IDX$1 );
		goto label$120;
	}
	label$122:;
	label$121:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$123;
	TMP$128$1 = 24ll;
	goto label$175;
	label$123:;
	TMP$128$1 = DTYPE$1 & 31ll;
	label$175:;
	if( TMP$128$1 != 23ll ) goto label$125;
	{
		DTYPE$1 = ((DTYPE$1 & -2147483649ll) & -512ll) | 20ll;
	}
	label$125:;
	label$124:;
	if( (DTYPE$1 & 524288ll) == 0ll ) goto label$127;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"R", 2ll, 0 );
		SYMBMANGLETYPE( MANGLED$1, DTYPE$1 & -524289ll, SUBTYPE$1, (OPTIONS$1 | 4ll) | 1ll );
		HABBREVADD( DTYPE$1, SUBTYPE$1 );
		goto label$120;
	}
	label$127:;
	label$126:;
	if( (DTYPE$1 & 512ll) == 0ll ) goto label$129;
	{
		if( (OPTIONS$1 & 1ll) == 0ll ) goto label$131;
		{
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"K", 2ll, 0 );
		}
		label$131:;
		label$130:;
		SYMBMANGLETYPE( MANGLED$1, DTYPE$1 & -513ll, SUBTYPE$1, OPTIONS$1 );
		if( (OPTIONS$1 & 1ll) == 0ll ) goto label$133;
		{
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		label$133:;
		label$132:;
		goto label$120;
	}
	label$129:;
	label$128:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$135;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"P", 2ll, 0 );
		SYMBMANGLETYPE( MANGLED$1, (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll), SUBTYPE$1, (OPTIONS$1 | 2ll) | 1ll );
		HABBREVADD( DTYPE$1, SUBTYPE$1 );
		goto label$120;
	}
	label$135:;
	label$134:;
	if( (DTYPE$1 & 32505856ll) == 0ll ) goto label$137;
	{
		if( (DTYPE$1 & 31ll) != 20ll ) goto label$139;
		{
			if( ((DTYPE$1 & 32505856ll) >> (20ll & 63ll)) != 19ll ) goto label$141;
			{
				{
					$19FB_CVA_LIST_TYPEDEF TMP$132$5;
					$19FB_CVA_LIST_TYPEDEF vr$31 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
					TMP$132$5 = vr$31;
					if( TMP$132$5 != 3ll ) goto label$143;
					label$144:;
					{
						if( (OPTIONS$1 & 6ll) == 0ll ) goto label$146;
						{
							fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"A1_", 4ll, 0 );
						}
						goto label$145;
						label$146:;
						{
							fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"P", 2ll, 0 );
						}
						label$145:;
						DTYPE$1 = DTYPE$1 & -32505857ll;
					}
					goto label$142;
					label$143:;
					if( TMP$132$5 == 4ll ) goto label$148;
					label$149:;
					if( TMP$132$5 != 5ll ) goto label$147;
					label$148:;
					{
						fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"St", 3ll, 0 );
						DTYPE$1 = DTYPE$1 & -32505857ll;
					}
					label$147:;
					label$142:;
				}
			}
			label$141:;
			label$140:;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	{
		int64 TMP$135$2;
		TMP$135$2 = DTYPE$1 & 31ll;
		if( TMP$135$2 == 20ll ) goto label$152;
		label$153:;
		if( TMP$135$2 != 10ll ) goto label$151;
		label$152:;
		{
			NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SUBTYPE$1 + 248ll);
			if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$155;
			{
				HMANGLEUDTID( MANGLED$1, SUBTYPE$1 );
			}
			goto label$154;
			label$155:;
			{
				if( (OPTIONS$1 & 8ll) != 0ll ) goto label$157;
				{
					fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"N", 2ll, 0 );
				}
				label$157:;
				label$156:;
				SYMBMANGLETYPE( MANGLED$1, *(int64*)((uint8*)NS$1 + 56ll), NS$1, 8ll );
				HMANGLEUDTID( MANGLED$1, SUBTYPE$1 );
				if( (OPTIONS$1 & 8ll) != 0ll ) goto label$159;
				{
					fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"E", 2ll, 0 );
				}
				label$159:;
				label$158:;
			}
			label$154:;
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		goto label$150;
		label$151:;
		if( TMP$135$2 != 21ll ) goto label$160;
		label$161:;
		{
			if( SUBTYPE$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$163;
			{
				goto label$120;
			}
			label$163:;
			label$162:;
			NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SUBTYPE$1 + 248ll);
			if( NS$1 == (struct $8FBSYMBOL*)0ull ) goto label$165;
			{
				SYMBMANGLETYPE( MANGLED$1, 21ll, NS$1, 0ll );
			}
			label$165:;
			label$164:;
			HMANGLEUDTID( MANGLED$1, SUBTYPE$1 );
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		goto label$150;
		label$160:;
		if( TMP$135$2 != 22ll ) goto label$166;
		label$167:;
		{
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"F", 2ll, 0 );
			if( (*(int64*)((uint8*)SUBTYPE$1 + 16ll) & 2048ll) == 0ll ) goto label$169;
			{
				fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"R", 2ll, 0 );
			}
			label$169:;
			label$168:;
			if( (*(int64*)((uint8*)SUBTYPE$1 + 56ll) & 512ll) == 0ll ) goto label$171;
			{
				fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"K", 2ll, 0 );
			}
			label$171:;
			label$170:;
			SYMBMANGLETYPE( MANGLED$1, *(int64*)((uint8*)SUBTYPE$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SUBTYPE$1 + 64ll), 0ll );
			HGETPROCPARAMSTYPECODE( MANGLED$1, SUBTYPE$1, 0ll );
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"E", 2ll, 0 );
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		goto label$150;
		label$166:;
		{
			FBSTRING TMP$138$3;
			uint8* vr$52 = HMANGLEBUILTINTYPE( DTYPE$1, &ADD_ABBREV$1 );
			__builtin_memset( &TMP$138$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$138$3, (void*)MANGLED$1, -1ll, (void*)vr$52, 0ll );
			fb_StrAssign( (void*)MANGLED$1, -1ll, (void*)vr$55, -1ll, 0 );
			if( ADD_ABBREV$1 == 0ll ) goto label$174;
			{
				HABBREVADD( DTYPE$1, SUBTYPE$1 );
			}
			label$174:;
			label$173:;
		}
		label$172:;
		label$150:;
	}
	label$120:;
}

void SYMBMANGLEPARAM( FBSTRING* MANGLED$1, struct $8FBSYMBOL* PARAM$1 )
{
	label$176:;
	{
		uint64 TMP$139$2;
		TMP$139$2 = *(uint64*)((uint8*)PARAM$1 + 96ll);
		goto label$179;
		label$180:;
		{
			SYMBMANGLETYPE( MANGLED$1, *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), 0ll );
		}
		goto label$178;
		label$181:;
		{
			SYMBMANGLETYPE( MANGLED$1, *(int64*)((uint8*)PARAM$1 + 56ll) | 524288ll, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), 0ll );
		}
		goto label$178;
		label$182:;
		{
			SYMBMANGLETYPE( MANGLED$1, 524308ll, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 128ll), 1ll );
		}
		goto label$178;
		label$183:;
		{
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"z", 2ll, 0 );
		}
		goto label$178;
		label$179:;
		static const void* tmp$141[4ll] = {
			&&label$180,
			&&label$181,
			&&label$182,
			&&label$183,
		};
		if( (TMP$139$2 - 1ull) > 3ull ) goto label$178;
		goto *tmp$141[TMP$139$2 - 1ull];
		label$178:;
	}
	label$177:;
}

__attribute__(( constructor )) static void fb_ctor__symbzmangling( void )
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

static void SYMBSETMANGLEDID( struct $8FBSYMBOL* SYM$1, FBSTRING* MANGLED$1 )
{
	label$46:;
	int64 vr$0 = fb_StrLen( (void*)MANGLED$1, -1ll );
	void* vr$3 = XALLOCATE( (int32)(vr$0 + 1ll) );
	*(uint8**)((uint8*)SYM$1 + 48ll) = (uint8*)vr$3;
	fb_StrAssign( *(void**)((uint8*)SYM$1 + 48ll), 0ll, (void*)MANGLED$1, -1ll, 0 );
	label$47:;
}

static void HMANGLEUDTID( FBSTRING* MANGLED$1, struct $8FBSYMBOL* SYM$1 )
{
	label$48:;
	int64 ARRAYDTYPE$1;
	struct $8FBSYMBOL* ARRAYSUBTYPE$1;
	if( *(uint8**)((uint8*)SYM$1 + 40ll) == (uint8*)0ull ) goto label$51;
	{
		FBSTRING TMP$96$2;
		FBSTRING TMP$97$2;
		int64 vr$2 = fb_StrLen( *(void**)((uint8*)SYM$1 + 40ll), 0ll );
		FBSTRING* vr$3 = fb_LongintToStr( vr$2 );
		__builtin_memset( &TMP$96$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$96$2, (void*)MANGLED$1, -1ll, (void*)vr$3, -1ll );
		fb_StrAssign( (void*)MANGLED$1, -1ll, (void*)vr$6, -1ll, 0 );
		__builtin_memset( &TMP$97$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$97$2, (void*)MANGLED$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll );
		fb_StrAssign( (void*)MANGLED$1, -1ll, (void*)vr$10, -1ll, 0 );
	}
	goto label$50;
	label$51:;
	{
		FBSTRING TMP$98$2;
		FBSTRING TMP$99$2;
		int64 vr$12 = fb_StrLen( *(void**)((uint8*)SYM$1 + 32ll), 0ll );
		FBSTRING* vr$13 = fb_LongintToStr( vr$12 );
		__builtin_memset( &TMP$98$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$98$2, (void*)MANGLED$1, -1ll, (void*)vr$13, -1ll );
		fb_StrAssign( (void*)MANGLED$1, -1ll, (void*)vr$16, -1ll, 0 );
		__builtin_memset( &TMP$99$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$99$2, (void*)MANGLED$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll );
		fb_StrAssign( (void*)MANGLED$1, -1ll, (void*)vr$20, -1ll, 0 );
	}
	label$50:;
	if( ((int64)-(*(int64*)SYM$1 == 10ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 8192ll) != 0ll)) == 0ll ) goto label$53;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"I", 2ll, 0 );
		SYMBGETDESCTYPEARRAYDTYPE( SYM$1, &ARRAYDTYPE$1, &ARRAYSUBTYPE$1 );
		SYMBMANGLETYPE( MANGLED$1, ARRAYDTYPE$1, ARRAYSUBTYPE$1, 1ll );
		fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"E", 2ll, 0 );
	}
	label$53:;
	label$52:;
	label$49:;
}

static int64 HABBREVFIND( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$72:;
	struct $13FB_MANGLEABBR* N$1;
	if( *(int64*)((uint8*)&CTX$ + 112ll) != 0ll ) goto label$75;
	{
		fb$result$1 = -1ll;
		goto label$73;
	}
	label$75:;
	label$74:;
	void* vr$2 = FLISTGETHEAD( (struct $6TFLIST*)&CTX$ );
	N$1 = (struct $13FB_MANGLEABBR*)vr$2;
	label$76:;
	if( N$1 == (struct $13FB_MANGLEABBR*)0ull ) goto label$77;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) != SUBTYPE$1 ) goto label$79;
		{
			if( *(int64*)((uint8*)N$1 + 8ll) != DTYPE$1 ) goto label$81;
			{
				fb$result$1 = *(int64*)N$1;
				goto label$73;
			}
			label$81:;
			label$80:;
		}
		label$79:;
		label$78:;
		void* vr$6 = FLISTGETNEXT( (void*)N$1 );
		N$1 = (struct $13FB_MANGLEABBR*)vr$6;
	}
	goto label$76;
	label$77:;
	fb$result$1 = -1ll;
	label$73:;
	return fb$result$1;
}

static struct $13FB_MANGLEABBR* HABBREVADD( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $13FB_MANGLEABBR* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$82:;
	struct $13FB_MANGLEABBR* N$1;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)&CTX$ );
	N$1 = (struct $13FB_MANGLEABBR*)vr$2;
	*(int64*)N$1 = *(int64*)((uint8*)&CTX$ + 112ll);
	*(int64*)((uint8*)N$1 + 8ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = SUBTYPE$1;
	*(int64*)((uint8*)&CTX$ + 112ll) = *(int64*)((uint8*)&CTX$ + 112ll) + 1ll;
	fb$result$1 = N$1;
	label$83:;
	return fb$result$1;
}

static void HABBREVGET( FBSTRING* MANGLED$1, int64 IDX$1 )
{
	label$84:;
	fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"S", 2ll, 0 );
	if( IDX$1 <= 0ll ) goto label$87;
	{
		if( IDX$1 > 10ll ) goto label$89;
		{
			FBSTRING* vr$2 = fb_CHR( 1, (int64)((uint64)(IDX$1 + -1ll) + 48ull) );
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)vr$2, -1ll, 0 );
		}
		goto label$88;
		label$89:;
		if( IDX$1 > 33ll ) goto label$90;
		{
			FBSTRING* vr$5 = fb_CHR( 1, (int64)((uint64)(IDX$1 + -11ll) + 65ull) );
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)vr$5, -1ll, 0 );
		}
		goto label$88;
		label$90:;
		{
			FBSTRING* vr$7 = fb_CHR( 1, IDX$1 / 33ll );
			fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)vr$7, -1ll, 0 );
			IDX$1 = IDX$1 % 33ll;
			if( IDX$1 > 10ll ) goto label$92;
			{
				FBSTRING* vr$11 = fb_CHR( 1, (int64)((uint64)(IDX$1 + -1ll) + 48ull) );
				fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)vr$11, -1ll, 0 );
			}
			goto label$91;
			label$92:;
			if( IDX$1 > 33ll ) goto label$93;
			{
				FBSTRING* vr$14 = fb_CHR( 1, (int64)((uint64)(IDX$1 + -11ll) + 65ull) );
				fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)vr$14, -1ll, 0 );
			}
			label$93:;
			label$91:;
		}
		label$88:;
	}
	label$87:;
	label$86:;
	fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"_", 2ll, 0 );
	label$85:;
}

static int64 HADDUNDERSCORE( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$184:;
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$187;
	{
		fb$result$1 = 0ll;
	}
	goto label$186;
	label$187:;
	{
		fb$result$1 = *(int64*)((uint8*)&ENV$ + 584ll);
	}
	label$186:;
	label$185:;
	return fb$result$1;
}

static int64 HDOCPPMANGLING( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$188:;
	if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 4ll ) goto label$191;
	{
		fb$result$1 = -1ll;
		goto label$189;
	}
	label$191:;
	label$190:;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2080ll) == 0ll ) goto label$193;
	{
		fb$result$1 = 0ll;
		goto label$189;
	}
	label$193:;
	label$192:;
	if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 6ll ) goto label$195;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 8388608ll) != 0ll ) goto label$197;
		{
			fb$result$1 = 0ll;
			goto label$189;
		}
		label$197:;
		label$196:;
	}
	label$195:;
	label$194:;
	if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$199;
	{
		fb$result$1 = -1ll;
		goto label$189;
	}
	label$199:;
	label$198:;
	if( *(int64*)SYM$1 != 3ll ) goto label$201;
	{
		if( (*(int64*)((uint8*)SYM$1 + 16ll) & 1ll) == 0ll ) goto label$203;
		{
			fb$result$1 = -1ll;
			goto label$189;
		}
		label$203:;
		label$202:;
	}
	label$201:;
	label$200:;
	fb$result$1 = 0ll;
	label$189:;
	return fb$result$1;
}

static void HMANGLENAMESPACE( FBSTRING* MANGLED$1, struct $8FBSYMBOL* NS$1, int64 DOHASHING$1, int64 ISCONST$1 )
{
	label$204:;
	static struct $8FBSYMBOL* NSSTK$1[64];
	static struct $8FBARRAY1IP8FBSYMBOLE tmp$142$1 = { (struct $8FBSYMBOL**)NSSTK$1, (struct $8FBSYMBOL**)NSSTK$1, 512ll, 8ll, 1ll, 49ll, { { 64ll, 0ll, 63ll } } };
	int64 TOS$1;
	if( NS$1 != (struct $8FBSYMBOL*)0ull ) goto label$207;
	{
		goto label$205;
	}
	label$207:;
	label$206:;
	if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$209;
	{
		goto label$205;
	}
	label$209:;
	label$208:;
	if( DOHASHING$1 == 0ll ) goto label$211;
	{
		FBSTRING UNUSED$2;
		__builtin_memset( &UNUSED$2, 0, 24ll );
		SYMBMANGLETYPE( &UNUSED$2, *(int64*)((uint8*)NS$1 + 56ll), NS$1, 0ll );
		fb_StrDelete( (FBSTRING*)&UNUSED$2 );
	}
	label$211:;
	label$210:;
	TOS$1 = -1ll;
	label$212:;
	{
		TOS$1 = TOS$1 + 1ll;
		*(struct $8FBSYMBOL**)((int64)(struct $8FBSYMBOL**)NSSTK$1 + (TOS$1 << (3ll & 63ll))) = NS$1;
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
	}
	label$214:;
	if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$212;
	label$213:;
	fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"N", 2ll, 0 );
	if( ISCONST$1 == 0ll ) goto label$216;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"K", 2ll, 0 );
	}
	label$216:;
	label$215:;
	label$217:;
	{
		NS$1 = *(struct $8FBSYMBOL**)((int64)(struct $8FBSYMBOL**)NSSTK$1 + (TOS$1 << (3ll & 63ll)));
		HMANGLEUDTID( MANGLED$1, NS$1 );
		TOS$1 = TOS$1 + -1ll;
	}
	label$219:;
	if( TOS$1 >= 0ll ) goto label$217;
	label$218:;
	label$205:;
}

static void HMANGLEVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$220:;
	static FBSTRING ID$1;
	static int64 VARCOUNTER$1;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 24ll );
	uint8* P$1;
	int64 DOCPP$1;
	int64 ISGLOBAL$1;
	if( (int64)*(uint16*)((uint8*)SYM$1 + 72ll) <= 0ll ) goto label$223;
	{
		DOCPP$1 = 0ll;
	}
	goto label$222;
	label$223:;
	{
		int64 vr$3 = HDOCPPMANGLING( SYM$1 );
		DOCPP$1 = vr$3;
	}
	label$222:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 59ll) == 0ll ) goto label$225;
	{
		if( *(int64*)((uint8*)&ENV$ + 208ll) != 2ll ) goto label$227;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"@", 2ll, 0 );
		}
		label$227:;
		label$226:;
		int64 vr$7 = HADDUNDERSCORE(  );
		if( vr$7 == 0ll ) goto label$229;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"_", 2ll, 0 );
		}
		label$229:;
		label$228:;
		{
			$13FB_COMPTARGET TMP$144$3;
			TMP$144$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
			if( TMP$144$3 == 0ll ) goto label$232;
			label$233:;
			if( TMP$144$3 != 1ll ) goto label$231;
			label$232:;
			{
				if( (*(int64*)((uint8*)SYM$1 + 8ll) & 512ll) == 0ll ) goto label$235;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"_imp__", 7ll, 0 );
				}
				label$235:;
				label$234:;
			}
			label$231:;
			label$230:;
		}
		if( DOCPP$1 == 0ll ) goto label$237;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"_Z", 3ll, 0 );
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 256ll) == 0ll ) goto label$239;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"TS", 3ll, 0 );
			}
			goto label$238;
			label$239:;
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 1024ll) == 0ll ) goto label$240;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"TV", 3ll, 0 );
			}
			label$240:;
			label$238:;
		}
		label$237:;
		label$236:;
	}
	goto label$224;
	label$225:;
	{
		if( *(int64*)((uint8*)&ENV$ + 208ll) != 2ll ) goto label$242;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"%", 2ll, 0 );
		}
		label$242:;
		label$241:;
	}
	label$224:;
	if( DOCPP$1 == 0ll ) goto label$244;
	{
		HMANGLENAMESPACE( &MANGLED$1, *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll), 0ll, 0ll );
	}
	label$244:;
	label$243:;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 1280ll) == 0ll ) goto label$246;
	{
		fb_StrAssign( (void*)&ID$1, -1ll, (void*)"", 1ll, 0 );
	}
	goto label$245;
	label$246:;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 512ll) == 0ll ) goto label$247;
	{
		fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
	}
	goto label$245;
	label$247:;
	{
		ISGLOBAL$1 = (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 57ll) != 0ll);
		if( (ISGLOBAL$1 | DOCPP$1) == 0ll ) goto label$249;
		{
			if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 0ll ) goto label$251;
			{
				fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll, 0 );
				if( ((int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 1ll) | (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 3ll)) == 0ll ) goto label$253;
				{
					fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)"$", 2ll, 0 );
				}
				label$253:;
				label$252:;
			}
			goto label$250;
			label$251:;
			{
				fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
			}
			label$250:;
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1048576ll) == 0ll ) goto label$255;
			{
				int64 TMP$150$4;
				FBSTRING TMP$151$4;
				TMP$150$4 = 0ll;
				uint8* vr$44 = HMANGLEBUILTINTYPE( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, &TMP$150$4 );
				__builtin_memset( &TMP$151$4, 0, 24ll );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$151$4, (void*)&ID$1, -1ll, (void*)vr$44, 0ll );
				fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$47, -1ll, 0 );
				if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$257;
				{
					fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)"$", 2ll, 0 );
				}
				label$257:;
				label$256:;
			}
			label$255:;
			label$254:;
		}
		goto label$248;
		label$249:;
		{
			{
				$10FB_BACKEND TMP$152$4;
				TMP$152$4 = *($10FB_BACKEND*)((uint8*)&ENV$ + 208ll);
				if( TMP$152$4 != 1ll ) goto label$259;
				label$260:;
				{
					int64 vr$51 = SYMBHASDTOR( SYM$1 );
					if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll) & vr$51) == 0ll ) goto label$262;
					{
						uint8* vr$53 = SYMBUNIQUEID( (boolean)0ll );
						fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$53, 0ll, 0 );
					}
					goto label$261;
					label$262:;
					{
						if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 0ll ) goto label$264;
						{
							FBSTRING TMP$155$7;
							fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll, 0 );
							fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)"$", 2ll, 0 );
							if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1048576ll) == 0ll ) goto label$266;
							{
								int64 TMP$153$8;
								FBSTRING TMP$154$8;
								TMP$153$8 = 0ll;
								uint8* vr$62 = HMANGLEBUILTINTYPE( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, &TMP$153$8 );
								__builtin_memset( &TMP$154$8, 0, 24ll );
								FBSTRING* vr$65 = fb_StrConcat( &TMP$154$8, (void*)&ID$1, -1ll, (void*)vr$62, 0ll );
								fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$65, -1ll, 0 );
								fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)"$", 2ll, 0 );
							}
							label$266:;
							label$265:;
							FBSTRING* vr$68 = fb_UIntToStr( (uint32)*(uint16*)((uint8*)SYM$1 + 72ll) );
							__builtin_memset( &TMP$155$7, 0, 24ll );
							FBSTRING* vr$71 = fb_StrConcat( &TMP$155$7, (void*)&ID$1, -1ll, (void*)vr$68, -1ll );
							fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$71, -1ll, 0 );
						}
						goto label$263;
						label$264:;
						{
							fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
						}
						label$263:;
					}
					label$261:;
				}
				goto label$258;
				label$259:;
				if( TMP$152$4 != 2ll ) goto label$267;
				label$268:;
				{
					if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 0ll ) goto label$270;
					{
						fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll, 0 );
						if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1048576ll) == 0ll ) goto label$272;
						{
							int64 TMP$156$7;
							FBSTRING TMP$157$7;
							TMP$156$7 = 0ll;
							uint8* vr$81 = HMANGLEBUILTINTYPE( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, &TMP$156$7 );
							__builtin_memset( &TMP$157$7, 0, 24ll );
							FBSTRING* vr$84 = fb_StrConcat( &TMP$157$7, (void*)&ID$1, -1ll, (void*)vr$81, 0ll );
							fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$84, -1ll, 0 );
						}
						label$272:;
						label$271:;
						fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)".", 2ll, 0 );
						FBSTRING* vr$85 = fb_LongintToStr( VARCOUNTER$1 );
						fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)vr$85, -1ll, 0 );
						VARCOUNTER$1 = VARCOUNTER$1 + 1ll;
					}
					goto label$269;
					label$270:;
					{
						fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
					}
					label$269:;
				}
				goto label$258;
				label$267:;
				if( TMP$152$4 != 3ll ) goto label$273;
				label$274:;
				{
					if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 0ll ) goto label$276;
					{
						fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll, 0 );
						if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1048576ll) == 0ll ) goto label$278;
						{
							int64 TMP$158$7;
							FBSTRING TMP$159$7;
							TMP$158$7 = 0ll;
							uint8* vr$96 = HMANGLEBUILTINTYPE( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, &TMP$158$7 );
							__builtin_memset( &TMP$159$7, 0, 24ll );
							FBSTRING* vr$99 = fb_StrConcat( &TMP$159$7, (void*)&ID$1, -1ll, (void*)vr$96, 0ll );
							fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$99, -1ll, 0 );
						}
						label$278:;
						label$277:;
						fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)".", 2ll, 0 );
						FBSTRING* vr$100 = fb_LongintToStr( VARCOUNTER$1 );
						fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)vr$100, -1ll, 0 );
						VARCOUNTER$1 = VARCOUNTER$1 + 1ll;
					}
					goto label$275;
					label$276:;
					if( (*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) == 0ll ) goto label$279;
					{
						uint8* vr$104 = SYMBUNIQUEID( (boolean)0ll );
						fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$104, 0ll, 0 );
					}
					goto label$275;
					label$279:;
					{
						fb_StrAssign( (void*)&ID$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
					}
					label$275:;
				}
				goto label$258;
				label$273:;
				{
					if( (*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) == 0ll ) goto label$282;
					{
						uint8* vr$108 = SYMBUNIQUEID( (boolean)0ll );
						fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$108, 0ll, 0 );
					}
					goto label$281;
					label$282:;
					{
						uint8* vr$109 = (*(tmp$44*)((uint8*)&IR$ + 80ll))(  );
						fb_StrAssign( (void*)&ID$1, -1ll, (void*)vr$109, 0ll, 0 );
					}
					label$281:;
				}
				label$280:;
				label$258:;
			}
		}
		label$248:;
	}
	label$245:;
	int64 vr$110 = fb_StrLen( (void*)&ID$1, -1ll );
	if( vr$110 <= 0ll ) goto label$284;
	{
		if( DOCPP$1 == 0ll ) goto label$286;
		{
			int64 vr$111 = fb_StrLen( (void*)&ID$1, -1ll );
			FBSTRING* vr$112 = fb_LongintToStr( vr$111 );
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)vr$112, -1ll, 0 );
		}
		label$286:;
		label$285:;
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)&ID$1, -1ll, 0 );
	}
	label$284:;
	label$283:;
	if( DOCPP$1 == 0ll ) goto label$288;
	{
		if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$290;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"E", 2ll, 0 );
		}
		label$290:;
		label$289:;
	}
	label$288:;
	label$287:;
	SYMBSETMANGLEDID( SYM$1, &MANGLED$1 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$221:;
}

static void HGETPROCPARAMSTYPECODE( FBSTRING* MANGLED$1, struct $8FBSYMBOL* SYM$1, int64 IS_REAL_PROC$1 )
{
	label$291:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll);
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$294;
	{
		if( (IS_REAL_PROC$1 & (int64)-((*(int64*)((uint8*)PARAM$1 + 8ll) & 524288ll) != 0ll)) == 0ll ) goto label$296;
		{
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		}
		label$296:;
		label$295:;
	}
	label$294:;
	label$293:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0ull ) goto label$298;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1ll, (void*)"v", 2ll, 0 );
		goto label$292;
	}
	label$298:;
	label$297:;
	label$299:;
	{
		SYMBMANGLEPARAM( MANGLED$1, PARAM$1 );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	label$301:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0ull ) goto label$299;
	label$300:;
	label$292:;
}

static uint8* HGETOPERATORNAME( struct $8FBSYMBOL* PROC$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$302:;
	{
		uint64 TMP$160$2;
		TMP$160$2 = *(uint64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll);
		goto label$305;
		label$306:;
		{
			fb$result$1 = (uint8*)"aS";
		}
		goto label$304;
		label$307:;
		{
			fb$result$1 = (uint8*)"pl";
		}
		goto label$304;
		label$308:;
		{
			fb$result$1 = (uint8*)"pL";
		}
		goto label$304;
		label$309:;
		{
			fb$result$1 = (uint8*)"mi";
		}
		goto label$304;
		label$310:;
		{
			fb$result$1 = (uint8*)"mI";
		}
		goto label$304;
		label$311:;
		{
			fb$result$1 = (uint8*)"ml";
		}
		goto label$304;
		label$312:;
		{
			fb$result$1 = (uint8*)"mL";
		}
		goto label$304;
		label$313:;
		{
			fb$result$1 = (uint8*)"dv";
		}
		goto label$304;
		label$314:;
		{
			fb$result$1 = (uint8*)"dV";
		}
		goto label$304;
		label$315:;
		{
			fb$result$1 = (uint8*)"v24idiv";
		}
		goto label$304;
		label$316:;
		{
			fb$result$1 = (uint8*)"v28selfidiv";
		}
		goto label$304;
		label$317:;
		{
			fb$result$1 = (uint8*)"rm";
		}
		goto label$304;
		label$318:;
		{
			fb$result$1 = (uint8*)"rM";
		}
		goto label$304;
		label$319:;
		{
			fb$result$1 = (uint8*)"an";
		}
		goto label$304;
		label$320:;
		{
			fb$result$1 = (uint8*)"aN";
		}
		goto label$304;
		label$321:;
		{
			fb$result$1 = (uint8*)"or";
		}
		goto label$304;
		label$322:;
		{
			fb$result$1 = (uint8*)"oR";
		}
		goto label$304;
		label$323:;
		{
			fb$result$1 = (uint8*)"aa";
		}
		goto label$304;
		label$324:;
		{
			fb$result$1 = (uint8*)"aA";
		}
		goto label$304;
		label$325:;
		{
			fb$result$1 = (uint8*)"oo";
		}
		goto label$304;
		label$326:;
		{
			fb$result$1 = (uint8*)"oO";
		}
		goto label$304;
		label$327:;
		{
			fb$result$1 = (uint8*)"eo";
		}
		goto label$304;
		label$328:;
		{
			fb$result$1 = (uint8*)"eO";
		}
		goto label$304;
		label$329:;
		{
			fb$result$1 = (uint8*)"v23eqv";
		}
		goto label$304;
		label$330:;
		{
			fb$result$1 = (uint8*)"v27selfeqv";
		}
		goto label$304;
		label$331:;
		{
			fb$result$1 = (uint8*)"v23imp";
		}
		goto label$304;
		label$332:;
		{
			fb$result$1 = (uint8*)"v27selfimp";
		}
		goto label$304;
		label$333:;
		{
			fb$result$1 = (uint8*)"ls";
		}
		goto label$304;
		label$334:;
		{
			fb$result$1 = (uint8*)"lS";
		}
		goto label$304;
		label$335:;
		{
			fb$result$1 = (uint8*)"rs";
		}
		goto label$304;
		label$336:;
		{
			fb$result$1 = (uint8*)"rS";
		}
		goto label$304;
		label$337:;
		{
			fb$result$1 = (uint8*)"v23pow";
		}
		goto label$304;
		label$338:;
		{
			fb$result$1 = (uint8*)"v27selfpow";
		}
		goto label$304;
		label$339:;
		{
			fb$result$1 = (uint8*)"v23cat";
		}
		goto label$304;
		label$340:;
		{
			fb$result$1 = (uint8*)"v27selfcat";
		}
		goto label$304;
		label$341:;
		{
			fb$result$1 = (uint8*)"eq";
		}
		goto label$304;
		label$342:;
		{
			fb$result$1 = (uint8*)"gt";
		}
		goto label$304;
		label$343:;
		{
			fb$result$1 = (uint8*)"lt";
		}
		goto label$304;
		label$344:;
		{
			fb$result$1 = (uint8*)"ne";
		}
		goto label$304;
		label$345:;
		{
			fb$result$1 = (uint8*)"ge";
		}
		goto label$304;
		label$346:;
		{
			fb$result$1 = (uint8*)"le";
		}
		goto label$304;
		label$347:;
		{
			fb$result$1 = (uint8*)"co";
		}
		goto label$304;
		label$348:;
		{
			fb$result$1 = (uint8*)"ng";
		}
		goto label$304;
		label$349:;
		{
			fb$result$1 = (uint8*)"ps";
		}
		goto label$304;
		label$350:;
		{
			fb$result$1 = (uint8*)"v13abs";
		}
		goto label$304;
		label$351:;
		{
			fb$result$1 = (uint8*)"v13fix";
		}
		goto label$304;
		label$352:;
		{
			fb$result$1 = (uint8*)"v14frac";
		}
		goto label$304;
		label$353:;
		{
			fb$result$1 = (uint8*)"v13len";
		}
		goto label$304;
		label$354:;
		{
			fb$result$1 = (uint8*)"v13sgn";
		}
		goto label$304;
		label$355:;
		{
			fb$result$1 = (uint8*)"v13int";
		}
		goto label$304;
		label$356:;
		{
			fb$result$1 = (uint8*)"v13exp";
		}
		goto label$304;
		label$357:;
		{
			fb$result$1 = (uint8*)"v13log";
		}
		goto label$304;
		label$358:;
		{
			fb$result$1 = (uint8*)"v13sin";
		}
		goto label$304;
		label$359:;
		{
			fb$result$1 = (uint8*)"v14asin";
		}
		goto label$304;
		label$360:;
		{
			fb$result$1 = (uint8*)"v13cos";
		}
		goto label$304;
		label$361:;
		{
			fb$result$1 = (uint8*)"v14acos";
		}
		goto label$304;
		label$362:;
		{
			fb$result$1 = (uint8*)"v13tan";
		}
		goto label$304;
		label$363:;
		{
			fb$result$1 = (uint8*)"v13atn";
		}
		goto label$304;
		label$364:;
		{
			fb$result$1 = (uint8*)"v13sqr";
		}
		goto label$304;
		label$365:;
		{
			fb$result$1 = (uint8*)"nw";
		}
		goto label$304;
		label$366:;
		{
			fb$result$1 = (uint8*)"na";
		}
		goto label$304;
		label$367:;
		{
			fb$result$1 = (uint8*)"dl";
		}
		goto label$304;
		label$368:;
		{
			fb$result$1 = (uint8*)"da";
		}
		goto label$304;
		label$369:;
		{
			fb$result$1 = (uint8*)"de";
		}
		goto label$304;
		label$370:;
		{
			fb$result$1 = (uint8*)"pt";
		}
		goto label$304;
		label$371:;
		{
			fb$result$1 = (uint8*)"ix";
		}
		goto label$304;
		label$372:;
		{
			fb$result$1 = (uint8*)"ad";
		}
		goto label$304;
		label$373:;
		{
			if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 2ll ) goto label$375;
			{
				fb$result$1 = (uint8*)"v13for";
			}
			goto label$374;
			label$375:;
			{
				fb$result$1 = (uint8*)"v03for";
			}
			label$374:;
		}
		goto label$304;
		label$376:;
		{
			if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 2ll ) goto label$378;
			{
				fb$result$1 = (uint8*)"v14step";
			}
			goto label$377;
			label$378:;
			{
				fb$result$1 = (uint8*)"v04step";
			}
			label$377:;
		}
		goto label$304;
		label$379:;
		{
			if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 3ll ) goto label$381;
			{
				fb$result$1 = (uint8*)"v24next";
			}
			goto label$380;
			label$381:;
			{
				fb$result$1 = (uint8*)"v14next";
			}
			label$380:;
		}
		goto label$304;
		label$305:;
		static const void* tmp$248[82ll] = {
			&&label$306,
			&&label$308,
			&&label$310,
			&&label$312,
			&&label$314,
			&&label$316,
			&&label$318,
			&&label$320,
			&&label$322,
			&&label$324,
			&&label$326,
			&&label$328,
			&&label$330,
			&&label$332,
			&&label$334,
			&&label$336,
			&&label$338,
			&&label$340,
			&&label$365,
			&&label$366,
			&&label$367,
			&&label$368,
			&&label$372,
			&&label$371,
			&&label$373,
			&&label$376,
			&&label$379,
			&&label$304,
			&&label$307,
			&&label$309,
			&&label$311,
			&&label$313,
			&&label$315,
			&&label$317,
			&&label$319,
			&&label$321,
			&&label$323,
			&&label$325,
			&&label$327,
			&&label$329,
			&&label$331,
			&&label$333,
			&&label$335,
			&&label$337,
			&&label$339,
			&&label$341,
			&&label$342,
			&&label$343,
			&&label$344,
			&&label$345,
			&&label$346,
			&&label$304,
			&&label$347,
			&&label$349,
			&&label$348,
			&&label$304,
			&&label$350,
			&&label$354,
			&&label$358,
			&&label$359,
			&&label$360,
			&&label$361,
			&&label$362,
			&&label$363,
			&&label$304,
			&&label$364,
			&&label$304,
			&&label$304,
			&&label$357,
			&&label$356,
			&&label$355,
			&&label$351,
			&&label$352,
			&&label$353,
			&&label$304,
			&&label$304,
			&&label$369,
			&&label$370,
			&&label$365,
			&&label$366,
			&&label$367,
			&&label$368,
		};
		if( TMP$160$2 > 81ull ) goto label$304;
		goto *tmp$248[TMP$160$2 - 0ull];
		label$304:;
	}
	label$303:;
	return fb$result$1;
}

static void HMANGLEPROC( struct $8FBSYMBOL* SYM$1 )
{
	label$382:;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 24ll );
	int64 LENGTH$1;
	int64 DOCPP$1;
	int64 ADD_STDCALL_SUFFIX$1;
	int64 QUOTE_MANGLED_NAME$1;
	QUOTE_MANGLED_NAME$1 = 0ll;
	uint8* ID$1;
	int64 vr$1 = HDOCPPMANGLING( SYM$1 );
	DOCPP$1 = vr$1;
	int64 vr$13 = FBGETCPUFAMILY(  );
	ADD_STDCALL_SUFFIX$1 = (((int64)-(*(int64*)((uint8*)SYM$1 + 152ll) == 1ll) | ((int64)-(*(int64*)((uint8*)SYM$1 + 152ll) == 6ll) & (((int64)-(*(int64*)((uint8*)&ENV$ + 216ll) == 0ll) | (int64)-(*(int64*)((uint8*)&ENV$ + 216ll) == 1ll)) | (int64)-(*(int64*)((uint8*)&ENV$ + 216ll) == 4ll)))) & (int64)-(vr$13 == 0ll)) & (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) != 1ll);
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 2ll ) goto label$385;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"@", 2ll, 0 );
		if( ADD_STDCALL_SUFFIX$1 == 0ll ) goto label$387;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"\x22", 2ll, 0 );
			QUOTE_MANGLED_NAME$1 = -1ll;
		}
		label$387:;
		label$386:;
		{
			$13FB_COMPTARGET TMP$235$3;
			TMP$235$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
			if( TMP$235$3 == 0ll ) goto label$390;
			label$391:;
			if( TMP$235$3 == 1ll ) goto label$390;
			label$392:;
			if( TMP$235$3 != 4ll ) goto label$389;
			label$390:;
			{
				if( QUOTE_MANGLED_NAME$1 != 0ll ) goto label$394;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"\x22", 2ll, 0 );
					QUOTE_MANGLED_NAME$1 = -1ll;
				}
				label$394:;
				label$393:;
				fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"\x01", 2ll, 0 );
			}
			label$389:;
			label$388:;
		}
	}
	label$385:;
	label$384:;
	int64 vr$22 = HADDUNDERSCORE(  );
	if( vr$22 == 0ll ) goto label$396;
	{
		if( *(int64*)((uint8*)SYM$1 + 152ll) != 6ll ) goto label$398;
		{
			{
				$13FB_COMPTARGET TMP$237$4;
				TMP$237$4 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
				if( TMP$237$4 == 0ll ) goto label$401;
				label$402:;
				if( TMP$237$4 == 1ll ) goto label$401;
				label$403:;
				if( TMP$237$4 != 4ll ) goto label$400;
				label$401:;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"@", 2ll, 0 );
				}
				goto label$399;
				label$400:;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"_", 2ll, 0 );
				}
				label$404:;
				label$399:;
			}
		}
		goto label$397;
		label$398:;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"_", 2ll, 0 );
		}
		label$397:;
	}
	label$396:;
	label$395:;
	if( (DOCPP$1 | (int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 16ll) != 0ll)) == 0ll ) goto label$406;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"_Z", 3ll, 0 );
	}
	label$406:;
	label$405:;
	if( DOCPP$1 == 0ll ) goto label$408;
	{
		HMANGLENAMESPACE( &MANGLED$1, *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll), -1ll, (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2048ll) != 0ll) );
	}
	label$408:;
	label$407:;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 512ll) == 0ll ) goto label$410;
	{
		FBSTRING TMP$239$2;
		if( DOCPP$1 == 0ll ) goto label$412;
		{
			FBSTRING TMP$238$3;
			int64 vr$41 = fb_StrLen( *(void**)((uint8*)SYM$1 + 40ll), 0ll );
			FBSTRING* vr$42 = fb_LongintToStr( vr$41 );
			__builtin_memset( &TMP$238$3, 0, 24ll );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$238$3, (void*)&MANGLED$1, -1ll, (void*)vr$42, -1ll );
			fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$46, -1ll, 0 );
		}
		label$412:;
		label$411:;
		__builtin_memset( &TMP$239$2, 0, 24ll );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$239$2, (void*)&MANGLED$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll );
		fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$52, -1ll, 0 );
	}
	goto label$409;
	label$410:;
	if( (*(int64*)((uint8*)SYM$1 + 16ll) & 16ll) == 0ll ) goto label$413;
	{
		if( *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 80ll) != 27ll ) goto label$415;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"cv", 3ll, 0 );
			SYMBMANGLETYPE( &MANGLED$1, *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), 0ll );
		}
		goto label$414;
		label$415:;
		{
			FBSTRING TMP$241$3;
			uint8* vr$62 = HGETOPERATORNAME( SYM$1 );
			__builtin_memset( &TMP$241$3, 0, 24ll );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$241$3, (void*)&MANGLED$1, -1ll, (void*)vr$62, 0ll );
			fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$66, -1ll, 0 );
		}
		label$414:;
	}
	goto label$409;
	label$413:;
	if( (*(int64*)((uint8*)SYM$1 + 16ll) & 4ll) == 0ll ) goto label$416;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"C1", 3ll, 0 );
	}
	goto label$409;
	label$416:;
	if( (*(int64*)((uint8*)SYM$1 + 16ll) & 4096ll) == 0ll ) goto label$417;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"D0", 3ll, 0 );
	}
	goto label$409;
	label$417:;
	if( (*(int64*)((uint8*)SYM$1 + 16ll) & 8ll) == 0ll ) goto label$418;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"D1", 3ll, 0 );
	}
	goto label$409;
	label$418:;
	{
		FBSTRING TMP$245$2;
		if( (int64)*(int16*)((uint8*)SYM$1 + 74ll) != 0ll ) goto label$420;
		{
			ID$1 = *(uint8**)((uint8*)SYM$1 + 32ll);
		}
		goto label$419;
		label$420:;
		{
			ID$1 = *(uint8**)((uint8*)SYM$1 + 40ll);
		}
		label$419:;
		if( DOCPP$1 == 0ll ) goto label$422;
		{
			int64 vr$81 = fb_StrLen( (void*)ID$1, 0ll );
			LENGTH$1 = vr$81;
			if( (*(int64*)((uint8*)SYM$1 + 16ll) & 32ll) == 0ll ) goto label$424;
			{
				LENGTH$1 = LENGTH$1 + 7ll;
			}
			label$424:;
			label$423:;
			FBSTRING* vr$85 = fb_LongintToStr( LENGTH$1 );
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)vr$85, -1ll, 0 );
		}
		label$422:;
		label$421:;
		__builtin_memset( &TMP$245$2, 0, 24ll );
		FBSTRING* vr$90 = fb_StrConcat( &TMP$245$2, (void*)&MANGLED$1, -1ll, (void*)ID$1, 0ll );
		fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$90, -1ll, 0 );
		if( (*(int64*)((uint8*)SYM$1 + 16ll) & 32ll) == 0ll ) goto label$426;
		{
			if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 0ll ) goto label$428;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"__set__", 8ll, 0 );
			}
			goto label$427;
			label$428:;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"__get__", 8ll, 0 );
			}
			label$427:;
		}
		label$426:;
		label$425:;
	}
	label$409:;
	if( DOCPP$1 == 0ll ) goto label$430;
	{
		if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$432;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"E", 2ll, 0 );
		}
		label$432:;
		label$431:;
		HGETPROCPARAMSTYPECODE( &MANGLED$1, SYM$1, -1ll );
	}
	label$430:;
	label$429:;
	if( ADD_STDCALL_SUFFIX$1 == 0ll ) goto label$434;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"@", 2ll, 0 );
		int64 vr$104 = SYMBPROCCALCSTDCALLSUFFIXN( SYM$1 );
		FBSTRING* vr$105 = fb_LongintToStr( vr$104 );
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)vr$105, -1ll, 0 );
	}
	label$434:;
	label$433:;
	if( QUOTE_MANGLED_NAME$1 == 0ll ) goto label$436;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"\x22", 2ll, 0 );
	}
	label$436:;
	label$435:;
	SYMBSETMANGLEDID( SYM$1, &MANGLED$1 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$383:;
}
