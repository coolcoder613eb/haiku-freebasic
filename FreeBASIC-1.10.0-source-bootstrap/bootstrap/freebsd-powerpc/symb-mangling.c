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
typedef int32 $11FB_DATATYPE;
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
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IPcE {
	uint8** DATA;
	uint8** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPcE ) == 36 );
typedef int32 $12FB_MANGLEOPT;
typedef int32 $19FB_CVA_LIST_TYPEDEF;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
struct $13FB_MANGLEABBR {
	int32 IDX;
	int32 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_MANGLEABBR ) == 12 );
struct $8FBARRAY1IP8FBSYMBOLE {
	struct $8FBSYMBOL** DATA;
	struct $8FBSYMBOL** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IP8FBSYMBOLE ) == 36 );
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_BACKEND;
typedef uint8* (*tmp$43)( void );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_CHR( int32, ... );
static void fb_ctor__symbzmangling( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBIS64BIT( void );
int32 FBGETCPUFAMILY( void );
void* POOLNEWITEM( struct $5TPOOL*, int32 );
void POOLDELITEM( struct $5TPOOL*, void* );
void SYMBGETDESCTYPEARRAYDTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int64 SYMBPROCCALCSTDCALLSUFFIXN( struct $8FBSYMBOL* );
int32 SYMBHASDTOR( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int32, struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void SYMBMANGLERESETABBREV( void );
uint8* HMANGLEBUILTINTYPE( int32, int32* );
void SYMBMANGLETYPE( FBSTRING*, int32, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
void SYMBMANGLEPARAM( FBSTRING*, struct $8FBSYMBOL* );
uint8* HHEXUINT( uint32 );
uint8* HREPLACECHAR( uint8*, int32, int32 );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
static int32 HDOCPPMANGLING( struct $8FBSYMBOL* );
static void HMANGLEPROC( struct $8FBSYMBOL* );
static void HMANGLEVARIABLE( struct $8FBSYMBOL* );
static void HGETPROCPARAMSTYPECODE( FBSTRING*, struct $8FBSYMBOL*, int32 );
static void HMANGLENAMESPACE( FBSTRING*, struct $8FBSYMBOL*, int32, int32 );
static void SYMBSETMANGLEDID( struct $8FBSYMBOL*, FBSTRING* );
static void HMANGLEUDTID( FBSTRING*, struct $8FBSYMBOL* );
static int32 HABBREVFIND( int32, struct $8FBSYMBOL* );
static struct $13FB_MANGLEABBR* HABBREVADD( int32, struct $8FBSYMBOL* );
static void HABBREVGET( FBSTRING*, int32 );
static int32 HADDUNDERSCORE( void );
static uint8* HGETOPERATORNAME( struct $8FBSYMBOL* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
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
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 8 );
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 8 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int32 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 12 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $10TSTACKNODE* TOS;
	int32 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 24 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 12 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 8 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int32 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 348 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 40 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 4 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 8 );
struct $7SYMBCTX {
	int32 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int32 CHAINPOOLHEAD;
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
	int32 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int32 FBARRAY_DATA;
	int32 FBARRAY_PTR;
	int32 FBARRAY_SIZE;
	int32 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int32 FBARRAYDIM_LBOUND;
	int32 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 99648 );
extern struct $7SYMBCTX SYMB$;
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
struct $12FB_MANGLECTX {
	struct $6TFLIST FLIST;
	int32 CNT;
	uint8 TEMPSTR[17];
	int32 UNIQUEIDCOUNT;
	int32 UNIQUELABELCOUNT;
	int32 PROFILELABELCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_MANGLECTX ) == 92 );
static struct $12FB_MANGLECTX CTX$;

void SYMBMANGLEINIT( void )
{
	label$10:;
	FLISTINIT( (struct $6TFLIST*)&CTX$, 96, 12 );
	*(int32*)((uint8*)&CTX$ + 56) = 0;
	*(int32*)((uint8*)&CTX$ + 80) = 0;
	*(int32*)((uint8*)&CTX$ + 84) = 0;
	*(int32*)((uint8*)&CTX$ + 88) = 0;
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	if( (-(*(int32*)((uint8*)&ENV$ + 104) == 1) & -(-VALIDFBNAME$1 == 0)) == 0 ) goto label$17;
	{
		FBSTRING TMP$83$2;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)"tmp$", 5, 0 );
		FBSTRING* vr$6 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 80) );
		__builtin_memset( &TMP$83$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$83$2, (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$6, -1 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$10, -1, 0 );
	}
	goto label$16;
	label$17:;
	{
		FBSTRING TMP$85$2;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)"Lt_", 4, 0 );
		uint8* vr$13 = HHEXUINT( *(uint32*)((uint8*)&CTX$ + 80) );
		__builtin_memset( &TMP$85$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$85$2, (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$13, 0 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$17, -1, 0 );
	}
	label$16:;
	*(int32*)((uint8*)&CTX$ + 80) = *(int32*)((uint8*)&CTX$ + 80) + 1;
	fb$result$1 = (uint8*)((uint8*)&CTX$ + 60);
	label$15:;
	return fb$result$1;
}

uint8* SYMBUNIQUELABEL( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$18:;
	if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$21;
	{
		FBSTRING TMP$87$2;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)"label$", 7, 0 );
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) );
		__builtin_memset( &TMP$87$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$87$2, (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$2, -1 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$6, -1, 0 );
		*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
	}
	goto label$20;
	label$21:;
	{
		FBSTRING TMP$90$2;
		if( *(int32*)((uint8*)&ENV$ + 108) != 9 ) goto label$23;
		{
			fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)"L_", 3, 0 );
		}
		goto label$22;
		label$23:;
		{
			fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)".L_", 4, 0 );
		}
		label$22:;
		uint8* vr$11 = HHEXUINT( *(uint32*)((uint8*)&CTX$ + 80) );
		__builtin_memset( &TMP$90$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$90$2, (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$11, 0 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$15, -1, 0 );
		*(int32*)((uint8*)&CTX$ + 80) = *(int32*)((uint8*)&CTX$ + 80) + 1;
	}
	label$20:;
	fb$result$1 = (uint8*)((uint8*)&CTX$ + 60);
	label$19:;
	return fb$result$1;
}

uint8* SYMBMAKEPROFILELABELNAME( void )
{
	FBSTRING TMP$92$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	uint8* vr$1 = HHEXUINT( *(uint32*)((uint8*)&CTX$ + 88) );
	__builtin_memset( &TMP$92$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$92$1, (void*)"LP_", 4, (void*)vr$1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 60), 17, (void*)vr$4, -1, 0 );
	*(int32*)((uint8*)&CTX$ + 88) = *(int32*)((uint8*)&CTX$ + 88) + 1;
	fb$result$1 = (uint8*)((uint8*)&CTX$ + 60);
	label$25:;
	return fb$result$1;
}

uint8* SYMBGETDBGNAME( struct $8FBSYMBOL* SYM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$26:;
	int32 vr$1 = HDOCPPMANGLING( SYM$1 );
	if( vr$1 == 0 ) goto label$29;
	{
		{
			uint32 TMP$93$3;
			TMP$93$3 = *(uint32*)SYM$1;
			goto label$31;
			label$32:;
			{
				uint8* RES$4;
				RES$4 = *(uint8**)((uint8*)SYM$1 + 20);
				if( RES$4 != (uint8*)0u ) goto label$34;
				{
					RES$4 = *(uint8**)((uint8*)SYM$1 + 16);
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
			static const void* tmp$94[4] = {
				&&label$32,
				&&label$32,
				&&label$32,
				&&label$32,
			};
			if( (TMP$93$3 - 8u) > 3u ) goto label$35;
			goto *tmp$94[TMP$93$3 - 8u];
			label$30:;
		}
	}
	label$29:;
	label$28:;
	if( (-(*(int32*)SYM$1 == 10) & -((*(int32*)((uint8*)SYM$1 + 4) & 8192) != 0)) == 0 ) goto label$37;
	{
		if( *(uint8**)((uint8*)SYM$1 + 20) == (uint8*)0u ) goto label$39;
		{
			fb$result$1 = *(uint8**)((uint8*)SYM$1 + 20);
			goto label$27;
		}
		label$39:;
		label$38:;
	}
	label$37:;
	label$36:;
	fb$result$1 = *(uint8**)((uint8*)SYM$1 + 16);
	label$27:;
	return fb$result$1;
}

void SYMBSETNAME( struct $8FBSYMBOL* S$1, uint8* NAME_$1 )
{
	label$40:;
	int32 SLEN$1;
	if( *(uint8**)((uint8*)S$1 + 16) == (uint8*)0u ) goto label$43;
	{
		POOLDELITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616), *(void**)((uint8*)S$1 + 16) );
	}
	label$43:;
	label$42:;
	int32 vr$3 = fb_StrLen( (void*)NAME_$1, 0 );
	SLEN$1 = vr$3;
	if( SLEN$1 != 0 ) goto label$45;
	{
		*(uint8**)((uint8*)S$1 + 16) = (uint8*)0u;
	}
	goto label$44;
	label$45:;
	{
		void* vr$7 = POOLNEWITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616), SLEN$1 + 1 );
		*(uint8**)((uint8*)S$1 + 16) = (uint8*)vr$7;
		fb_StrAssign( *(void**)((uint8*)S$1 + 16), 0, (void*)NAME_$1, 0, 0 );
	}
	label$44:;
	label$41:;
}

uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* SYM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	if( *(uint8**)((uint8*)SYM$1 + 24) == (uint8*)0u ) goto label$57;
	{
		fb$result$1 = *(uint8**)((uint8*)SYM$1 + 24);
		goto label$55;
	}
	label$57:;
	label$56:;
	{
		uint32 TMP$101$2;
		TMP$101$2 = *(uint32*)SYM$1;
		goto label$59;
		label$60:;
		{
			HMANGLEPROC( SYM$1 );
		}
		goto label$58;
		label$61:;
		{
			FBSTRING MANGLED$3;
			__builtin_memset( &MANGLED$3, 0, 12 );
			HMANGLENAMESPACE( &MANGLED$3, *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144), -1, 0 );
			HMANGLEUDTID( &MANGLED$3, SYM$1 );
			if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$63;
			{
				fb_StrConcatAssign( (void*)&MANGLED$3, -1, (void*)"E", 2, 0 );
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
			fb$result$1 = *(uint8**)((uint8*)SYM$1 + 20);
			goto label$55;
		}
		goto label$58;
		label$59:;
		static const void* tmp$103[14] = {
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
		if( (TMP$101$2 - 1u) > 13u ) goto label$65;
		goto *tmp$103[TMP$101$2 - 1u];
		label$58:;
	}
	SYMBMANGLERESETABBREV(  );
	if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$67;
	{
		if( (*(int32*)((uint8*)&ENV$ + 1040) & 524288) == 0 ) goto label$69;
		{
			HREPLACECHAR( *(uint8**)((uint8*)SYM$1 + 24), 46, 36 );
		}
		label$69:;
		label$68:;
	}
	label$67:;
	label$66:;
	fb$result$1 = *(uint8**)((uint8*)SYM$1 + 24);
	label$55:;
	return fb$result$1;
}

void SYMBMANGLERESETABBREV( void )
{
	label$70:;
	FLISTRESET( (struct $6TFLIST*)&CTX$ );
	*(int32*)((uint8*)&CTX$ + 56) = 0;
	label$71:;
}

uint8* HMANGLEBUILTINTYPE( int32 DTYPE$1, int32* ADD_ABBREV$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$94:;
	*ADD_ABBREV$1 = 0;
	if( DTYPE$1 != 17 ) goto label$97;
	{
		*ADD_ABBREV$1 = -1;
		fb$result$1 = (uint8*)"8FBSTRING";
		goto label$95;
	}
	label$97:;
	label$96:;
	int32 vr$3 = FBIS64BIT(  );
	if( (vr$3 & -((*(int32*)((uint8*)&ENV$ + 284) & 1) == 0)) == 0 ) goto label$99;
	{
		if( (DTYPE$1 & 32505856) == 0 ) goto label$101;
		{
			DTYPE$1 = (DTYPE$1 & 32505856) >> (20 & 31);
			{
				if( DTYPE$1 != 8 ) goto label$103;
				label$104:;
				{
					fb$result$1 = (uint8*)"l";
					goto label$95;
				}
				goto label$102;
				label$103:;
				if( DTYPE$1 != 9 ) goto label$105;
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
				if( DTYPE$1 != 8 ) goto label$108;
				label$109:;
				{
					*ADD_ABBREV$1 = -1;
					fb$result$1 = (uint8*)"u7INTEGER";
					goto label$95;
				}
				goto label$107;
				label$108:;
				if( DTYPE$1 != 9 ) goto label$110;
				label$111:;
				{
					*ADD_ABBREV$1 = -1;
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
			if( DTYPE$1 != 8 ) goto label$113;
			label$114:;
			{
				fb$result$1 = (uint8*)"l";
				goto label$95;
			}
			goto label$112;
			label$113:;
			if( DTYPE$1 != 9 ) goto label$115;
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
	if( (DTYPE$1 & 32505856) == 0 ) goto label$118;
	{
		DTYPE$1 = (DTYPE$1 & 32505856) >> (20 & 31);
	}
	label$118:;
	label$117:;
	static uint8* TYPECODES$1[26] = { (uint8*)"v", (uint8*)"b", (uint8*)"a", (uint8*)"h", (uint8*)"c", (uint8*)"s", (uint8*)"t", (uint8*)"w", (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)"i", (uint8*)"j", (uint8*)"x", (uint8*)"y", (uint8*)"f", (uint8*)"d", (uint8*)0u, (uint8*)0u, (uint8*)"c", (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)0u };
	static struct $8FBARRAY1IPcE tmp$112$1 = { (uint8**)TYPECODES$1, (uint8**)TYPECODES$1, 104, 4, 1, 49, { { 26, 0, 25 } } };
	fb$result$1 = *(uint8**)((int32)(uint8**)TYPECODES$1 + (DTYPE$1 << (2 & 31)));
	label$95:;
	return fb$result$1;
}

void SYMBMANGLETYPE( FBSTRING* MANGLED$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $12FB_MANGLEOPT OPTIONS$1 )
{
	int32 TMP$127$1;
	label$119:;
	struct $8FBSYMBOL* NS$1;
	int32 ADD_ABBREV$1;
	int32 IDX$1;
	int32 vr$0 = HABBREVFIND( DTYPE$1, SUBTYPE$1 );
	IDX$1 = vr$0;
	if( IDX$1 == -1 ) goto label$122;
	{
		HABBREVGET( MANGLED$1, IDX$1 );
		goto label$120;
	}
	label$122:;
	label$121:;
	if( (DTYPE$1 & 480) == 0 ) goto label$123;
	TMP$127$1 = 24;
	goto label$175;
	label$123:;
	TMP$127$1 = DTYPE$1 & 31;
	label$175:;
	if( TMP$127$1 != 23 ) goto label$125;
	{
		DTYPE$1 = ((DTYPE$1 & 2147483647) & -512) | 20;
	}
	label$125:;
	label$124:;
	if( (DTYPE$1 & 524288) == 0 ) goto label$127;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"R", 2, 0 );
		SYMBMANGLETYPE( MANGLED$1, DTYPE$1 & -524289, SUBTYPE$1, (OPTIONS$1 | 4) | 1 );
		HABBREVADD( DTYPE$1, SUBTYPE$1 );
		goto label$120;
	}
	label$127:;
	label$126:;
	if( (DTYPE$1 & 512) == 0 ) goto label$129;
	{
		if( (OPTIONS$1 & 1) == 0 ) goto label$131;
		{
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"K", 2, 0 );
		}
		label$131:;
		label$130:;
		SYMBMANGLETYPE( MANGLED$1, DTYPE$1 & -513, SUBTYPE$1, OPTIONS$1 );
		if( (OPTIONS$1 & 1) == 0 ) goto label$133;
		{
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		label$133:;
		label$132:;
		goto label$120;
	}
	label$129:;
	label$128:;
	if( (DTYPE$1 & 480) == 0 ) goto label$135;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"P", 2, 0 );
		SYMBMANGLETYPE( MANGLED$1, (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856), SUBTYPE$1, (OPTIONS$1 | 2) | 1 );
		HABBREVADD( DTYPE$1, SUBTYPE$1 );
		goto label$120;
	}
	label$135:;
	label$134:;
	if( (DTYPE$1 & 32505856) == 0 ) goto label$137;
	{
		if( (DTYPE$1 & 31) != 20 ) goto label$139;
		{
			if( ((DTYPE$1 & 32505856) >> (20 & 31)) != 19 ) goto label$141;
			{
				{
					$19FB_CVA_LIST_TYPEDEF TMP$131$5;
					$19FB_CVA_LIST_TYPEDEF vr$31 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
					TMP$131$5 = vr$31;
					if( TMP$131$5 != 3 ) goto label$143;
					label$144:;
					{
						if( (OPTIONS$1 & 6) == 0 ) goto label$146;
						{
							fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"A1_", 4, 0 );
						}
						goto label$145;
						label$146:;
						{
							fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"P", 2, 0 );
						}
						label$145:;
						DTYPE$1 = DTYPE$1 & -32505857;
					}
					goto label$142;
					label$143:;
					if( TMP$131$5 == 4 ) goto label$148;
					label$149:;
					if( TMP$131$5 != 5 ) goto label$147;
					label$148:;
					{
						fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"St", 3, 0 );
						DTYPE$1 = DTYPE$1 & -32505857;
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
		int32 TMP$134$2;
		TMP$134$2 = DTYPE$1 & 31;
		if( TMP$134$2 == 20 ) goto label$152;
		label$153:;
		if( TMP$134$2 != 10 ) goto label$151;
		label$152:;
		{
			NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SUBTYPE$1 + 144);
			if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$155;
			{
				HMANGLEUDTID( MANGLED$1, SUBTYPE$1 );
			}
			goto label$154;
			label$155:;
			{
				if( (OPTIONS$1 & 8) != 0 ) goto label$157;
				{
					fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"N", 2, 0 );
				}
				label$157:;
				label$156:;
				SYMBMANGLETYPE( MANGLED$1, *(int32*)((uint8*)NS$1 + 28), NS$1, 8 );
				HMANGLEUDTID( MANGLED$1, SUBTYPE$1 );
				if( (OPTIONS$1 & 8) != 0 ) goto label$159;
				{
					fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"E", 2, 0 );
				}
				label$159:;
				label$158:;
			}
			label$154:;
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		goto label$150;
		label$151:;
		if( TMP$134$2 != 21 ) goto label$160;
		label$161:;
		{
			if( SUBTYPE$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$163;
			{
				goto label$120;
			}
			label$163:;
			label$162:;
			NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SUBTYPE$1 + 144);
			if( NS$1 == (struct $8FBSYMBOL*)0u ) goto label$165;
			{
				SYMBMANGLETYPE( MANGLED$1, 21, NS$1, 0 );
			}
			label$165:;
			label$164:;
			HMANGLEUDTID( MANGLED$1, SUBTYPE$1 );
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		goto label$150;
		label$160:;
		if( TMP$134$2 != 22 ) goto label$166;
		label$167:;
		{
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"F", 2, 0 );
			if( (*(int32*)((uint8*)SUBTYPE$1 + 8) & 2048) == 0 ) goto label$169;
			{
				fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"R", 2, 0 );
			}
			label$169:;
			label$168:;
			if( (*(int32*)((uint8*)SUBTYPE$1 + 28) & 512) == 0 ) goto label$171;
			{
				fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"K", 2, 0 );
			}
			label$171:;
			label$170:;
			SYMBMANGLETYPE( MANGLED$1, *(int32*)((uint8*)SUBTYPE$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SUBTYPE$1 + 32), 0 );
			HGETPROCPARAMSTYPECODE( MANGLED$1, SUBTYPE$1, 0 );
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"E", 2, 0 );
			HABBREVADD( DTYPE$1, SUBTYPE$1 );
		}
		goto label$150;
		label$166:;
		{
			FBSTRING TMP$137$3;
			uint8* vr$52 = HMANGLEBUILTINTYPE( DTYPE$1, &ADD_ABBREV$1 );
			__builtin_memset( &TMP$137$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$137$3, (void*)MANGLED$1, -1, (void*)vr$52, 0 );
			fb_StrAssign( (void*)MANGLED$1, -1, (void*)vr$55, -1, 0 );
			if( ADD_ABBREV$1 == 0 ) goto label$174;
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
		uint32 TMP$138$2;
		TMP$138$2 = *(uint32*)((uint8*)PARAM$1 + 56);
		goto label$179;
		label$180:;
		{
			SYMBMANGLETYPE( MANGLED$1, *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), 0 );
		}
		goto label$178;
		label$181:;
		{
			SYMBMANGLETYPE( MANGLED$1, *(int32*)((uint8*)PARAM$1 + 28) | 524288, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), 0 );
		}
		goto label$178;
		label$182:;
		{
			SYMBMANGLETYPE( MANGLED$1, 524308, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 72), 1 );
		}
		goto label$178;
		label$183:;
		{
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"z", 2, 0 );
		}
		goto label$178;
		label$179:;
		static const void* tmp$140[4] = {
			&&label$180,
			&&label$181,
			&&label$182,
			&&label$183,
		};
		if( (TMP$138$2 - 1u) > 3u ) goto label$178;
		goto *tmp$140[TMP$138$2 - 1u];
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
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void SYMBSETMANGLEDID( struct $8FBSYMBOL* SYM$1, FBSTRING* MANGLED$1 )
{
	label$46:;
	int32 vr$0 = fb_StrLen( (void*)MANGLED$1, -1 );
	void* vr$2 = XALLOCATE( vr$0 + 1 );
	*(uint8**)((uint8*)SYM$1 + 24) = (uint8*)vr$2;
	fb_StrAssign( *(void**)((uint8*)SYM$1 + 24), 0, (void*)MANGLED$1, -1, 0 );
	label$47:;
}

static void HMANGLEUDTID( FBSTRING* MANGLED$1, struct $8FBSYMBOL* SYM$1 )
{
	label$48:;
	int32 ARRAYDTYPE$1;
	struct $8FBSYMBOL* ARRAYSUBTYPE$1;
	if( *(uint8**)((uint8*)SYM$1 + 20) == (uint8*)0u ) goto label$51;
	{
		FBSTRING TMP$95$2;
		FBSTRING TMP$96$2;
		int32 vr$2 = fb_StrLen( *(void**)((uint8*)SYM$1 + 20), 0 );
		FBSTRING* vr$3 = fb_IntToStr( vr$2 );
		__builtin_memset( &TMP$95$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$95$2, (void*)MANGLED$1, -1, (void*)vr$3, -1 );
		fb_StrAssign( (void*)MANGLED$1, -1, (void*)vr$6, -1, 0 );
		__builtin_memset( &TMP$96$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$96$2, (void*)MANGLED$1, -1, *(void**)((uint8*)SYM$1 + 20), 0 );
		fb_StrAssign( (void*)MANGLED$1, -1, (void*)vr$10, -1, 0 );
	}
	goto label$50;
	label$51:;
	{
		FBSTRING TMP$97$2;
		FBSTRING TMP$98$2;
		int32 vr$12 = fb_StrLen( *(void**)((uint8*)SYM$1 + 16), 0 );
		FBSTRING* vr$13 = fb_IntToStr( vr$12 );
		__builtin_memset( &TMP$97$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$97$2, (void*)MANGLED$1, -1, (void*)vr$13, -1 );
		fb_StrAssign( (void*)MANGLED$1, -1, (void*)vr$16, -1, 0 );
		__builtin_memset( &TMP$98$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$98$2, (void*)MANGLED$1, -1, *(void**)((uint8*)SYM$1 + 16), 0 );
		fb_StrAssign( (void*)MANGLED$1, -1, (void*)vr$20, -1, 0 );
	}
	label$50:;
	if( (-(*(int32*)SYM$1 == 10) & -((*(int32*)((uint8*)SYM$1 + 4) & 8192) != 0)) == 0 ) goto label$53;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"I", 2, 0 );
		SYMBGETDESCTYPEARRAYDTYPE( SYM$1, &ARRAYDTYPE$1, &ARRAYSUBTYPE$1 );
		SYMBMANGLETYPE( MANGLED$1, ARRAYDTYPE$1, ARRAYSUBTYPE$1, 1 );
		fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"E", 2, 0 );
	}
	label$53:;
	label$52:;
	label$49:;
}

static int32 HABBREVFIND( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$72:;
	struct $13FB_MANGLEABBR* N$1;
	if( *(int32*)((uint8*)&CTX$ + 56) != 0 ) goto label$75;
	{
		fb$result$1 = -1;
		goto label$73;
	}
	label$75:;
	label$74:;
	void* vr$2 = FLISTGETHEAD( (struct $6TFLIST*)&CTX$ );
	N$1 = (struct $13FB_MANGLEABBR*)vr$2;
	label$76:;
	if( N$1 == (struct $13FB_MANGLEABBR*)0u ) goto label$77;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) != SUBTYPE$1 ) goto label$79;
		{
			if( *(int32*)((uint8*)N$1 + 4) != DTYPE$1 ) goto label$81;
			{
				fb$result$1 = *(int32*)N$1;
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
	fb$result$1 = -1;
	label$73:;
	return fb$result$1;
}

static struct $13FB_MANGLEABBR* HABBREVADD( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $13FB_MANGLEABBR* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$82:;
	struct $13FB_MANGLEABBR* N$1;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)&CTX$ );
	N$1 = (struct $13FB_MANGLEABBR*)vr$2;
	*(int32*)N$1 = *(int32*)((uint8*)&CTX$ + 56);
	*(int32*)((uint8*)N$1 + 4) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 8) = SUBTYPE$1;
	*(int32*)((uint8*)&CTX$ + 56) = *(int32*)((uint8*)&CTX$ + 56) + 1;
	fb$result$1 = N$1;
	label$83:;
	return fb$result$1;
}

static void HABBREVGET( FBSTRING* MANGLED$1, int32 IDX$1 )
{
	label$84:;
	fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"S", 2, 0 );
	if( IDX$1 <= 0 ) goto label$87;
	{
		if( IDX$1 > 10 ) goto label$89;
		{
			FBSTRING* vr$2 = fb_CHR( 1, (int32)((uint32)(IDX$1 + -1) + 48u) );
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)vr$2, -1, 0 );
		}
		goto label$88;
		label$89:;
		if( IDX$1 > 33 ) goto label$90;
		{
			FBSTRING* vr$5 = fb_CHR( 1, (int32)((uint32)(IDX$1 + -11) + 65u) );
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)vr$5, -1, 0 );
		}
		goto label$88;
		label$90:;
		{
			FBSTRING* vr$7 = fb_CHR( 1, IDX$1 / 33 );
			fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)vr$7, -1, 0 );
			IDX$1 = IDX$1 % 33;
			if( IDX$1 > 10 ) goto label$92;
			{
				FBSTRING* vr$11 = fb_CHR( 1, (int32)((uint32)(IDX$1 + -1) + 48u) );
				fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)vr$11, -1, 0 );
			}
			goto label$91;
			label$92:;
			if( IDX$1 > 33 ) goto label$93;
			{
				FBSTRING* vr$14 = fb_CHR( 1, (int32)((uint32)(IDX$1 + -11) + 65u) );
				fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)vr$14, -1, 0 );
			}
			label$93:;
			label$91:;
		}
		label$88:;
	}
	label$87:;
	label$86:;
	fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"_", 2, 0 );
	label$85:;
}

static int32 HADDUNDERSCORE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$184:;
	if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$187;
	{
		fb$result$1 = 0;
	}
	goto label$186;
	label$187:;
	{
		fb$result$1 = *(int32*)((uint8*)&ENV$ + 292);
	}
	label$186:;
	label$185:;
	return fb$result$1;
}

static int32 HDOCPPMANGLING( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$188:;
	if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 4 ) goto label$191;
	{
		fb$result$1 = -1;
		goto label$189;
	}
	label$191:;
	label$190:;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 2080) == 0 ) goto label$193;
	{
		fb$result$1 = 0;
		goto label$189;
	}
	label$193:;
	label$192:;
	if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 6 ) goto label$195;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 8388608) != 0 ) goto label$197;
		{
			fb$result$1 = 0;
			goto label$189;
		}
		label$197:;
		label$196:;
	}
	label$195:;
	label$194:;
	if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$199;
	{
		fb$result$1 = -1;
		goto label$189;
	}
	label$199:;
	label$198:;
	if( *(int32*)SYM$1 != 3 ) goto label$201;
	{
		if( (*(int32*)((uint8*)SYM$1 + 8) & 1) == 0 ) goto label$203;
		{
			fb$result$1 = -1;
			goto label$189;
		}
		label$203:;
		label$202:;
	}
	label$201:;
	label$200:;
	fb$result$1 = 0;
	label$189:;
	return fb$result$1;
}

static void HMANGLENAMESPACE( FBSTRING* MANGLED$1, struct $8FBSYMBOL* NS$1, int32 DOHASHING$1, int32 ISCONST$1 )
{
	label$204:;
	static struct $8FBSYMBOL* NSSTK$1[64];
	static struct $8FBARRAY1IP8FBSYMBOLE tmp$141$1 = { (struct $8FBSYMBOL**)NSSTK$1, (struct $8FBSYMBOL**)NSSTK$1, 256, 4, 1, 49, { { 64, 0, 63 } } };
	int32 TOS$1;
	if( NS$1 != (struct $8FBSYMBOL*)0u ) goto label$207;
	{
		goto label$205;
	}
	label$207:;
	label$206:;
	if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$209;
	{
		goto label$205;
	}
	label$209:;
	label$208:;
	if( DOHASHING$1 == 0 ) goto label$211;
	{
		FBSTRING UNUSED$2;
		__builtin_memset( &UNUSED$2, 0, 12 );
		SYMBMANGLETYPE( &UNUSED$2, *(int32*)((uint8*)NS$1 + 28), NS$1, 0 );
		fb_StrDelete( (FBSTRING*)&UNUSED$2 );
	}
	label$211:;
	label$210:;
	TOS$1 = -1;
	label$212:;
	{
		TOS$1 = TOS$1 + 1;
		*(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)NSSTK$1 + (TOS$1 << (2 & 31))) = NS$1;
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 144);
	}
	label$214:;
	if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$212;
	label$213:;
	fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"N", 2, 0 );
	if( ISCONST$1 == 0 ) goto label$216;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"K", 2, 0 );
	}
	label$216:;
	label$215:;
	label$217:;
	{
		NS$1 = *(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)NSSTK$1 + (TOS$1 << (2 & 31)));
		HMANGLEUDTID( MANGLED$1, NS$1 );
		TOS$1 = TOS$1 + -1;
	}
	label$219:;
	if( TOS$1 >= 0 ) goto label$217;
	label$218:;
	label$205:;
}

static void HMANGLEVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$220:;
	static FBSTRING ID$1;
	static int32 VARCOUNTER$1;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 12 );
	uint8* P$1;
	int32 DOCPP$1;
	int32 ISGLOBAL$1;
	if( (int32)*(uint16*)((uint8*)SYM$1 + 36) <= 0 ) goto label$223;
	{
		DOCPP$1 = 0;
	}
	goto label$222;
	label$223:;
	{
		int32 vr$3 = HDOCPPMANGLING( SYM$1 );
		DOCPP$1 = vr$3;
	}
	label$222:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 59) == 0 ) goto label$225;
	{
		if( *(int32*)((uint8*)&ENV$ + 104) != 2 ) goto label$227;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"@", 2, 0 );
		}
		label$227:;
		label$226:;
		int32 vr$7 = HADDUNDERSCORE(  );
		if( vr$7 == 0 ) goto label$229;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"_", 2, 0 );
		}
		label$229:;
		label$228:;
		{
			$13FB_COMPTARGET TMP$143$3;
			TMP$143$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
			if( TMP$143$3 == 0 ) goto label$232;
			label$233:;
			if( TMP$143$3 != 1 ) goto label$231;
			label$232:;
			{
				if( (*(int32*)((uint8*)SYM$1 + 4) & 512) == 0 ) goto label$235;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"_imp__", 7, 0 );
				}
				label$235:;
				label$234:;
			}
			label$231:;
			label$230:;
		}
		if( DOCPP$1 == 0 ) goto label$237;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"_Z", 3, 0 );
			if( (*(int32*)((uint8*)SYM$1 + 12) & 256) == 0 ) goto label$239;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"TS", 3, 0 );
			}
			goto label$238;
			label$239:;
			if( (*(int32*)((uint8*)SYM$1 + 12) & 1024) == 0 ) goto label$240;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"TV", 3, 0 );
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
		if( *(int32*)((uint8*)&ENV$ + 104) != 2 ) goto label$242;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"%", 2, 0 );
		}
		label$242:;
		label$241:;
	}
	label$224:;
	if( DOCPP$1 == 0 ) goto label$244;
	{
		HMANGLENAMESPACE( &MANGLED$1, *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144), 0, 0 );
	}
	label$244:;
	label$243:;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 1280) == 0 ) goto label$246;
	{
		fb_StrAssign( (void*)&ID$1, -1, (void*)"", 1, 0 );
	}
	goto label$245;
	label$246:;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 512) == 0 ) goto label$247;
	{
		fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
	}
	goto label$245;
	label$247:;
	{
		ISGLOBAL$1 = -((*(int32*)((uint8*)SYM$1 + 4) & 57) != 0);
		if( (ISGLOBAL$1 | DOCPP$1) == 0 ) goto label$249;
		{
			if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 0 ) goto label$251;
			{
				fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
				if( (-(*(int32*)((uint8*)&ENV$ + 104) == 1) | -(*(int32*)((uint8*)&ENV$ + 104) == 3)) == 0 ) goto label$253;
				{
					fb_StrConcatAssign( (void*)&ID$1, -1, (void*)"$", 2, 0 );
				}
				label$253:;
				label$252:;
			}
			goto label$250;
			label$251:;
			{
				fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
			}
			label$250:;
			if( (*(int32*)((uint8*)SYM$1 + 4) & 1048576) == 0 ) goto label$255;
			{
				int32 TMP$149$4;
				FBSTRING TMP$150$4;
				TMP$149$4 = 0;
				uint8* vr$44 = HMANGLEBUILTINTYPE( *(int32*)((uint8*)SYM$1 + 28) & 511, &TMP$149$4 );
				__builtin_memset( &TMP$150$4, 0, 12 );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$150$4, (void*)&ID$1, -1, (void*)vr$44, 0 );
				fb_StrAssign( (void*)&ID$1, -1, (void*)vr$47, -1, 0 );
				if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$257;
				{
					fb_StrConcatAssign( (void*)&ID$1, -1, (void*)"$", 2, 0 );
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
				$10FB_BACKEND TMP$151$4;
				TMP$151$4 = *($10FB_BACKEND*)((uint8*)&ENV$ + 104);
				if( TMP$151$4 != 1 ) goto label$259;
				label$260:;
				{
					int32 vr$51 = SYMBHASDTOR( SYM$1 );
					if( (-((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) & vr$51) == 0 ) goto label$262;
					{
						uint8* vr$53 = SYMBUNIQUEID( (boolean)0 );
						fb_StrAssign( (void*)&ID$1, -1, (void*)vr$53, 0, 0 );
					}
					goto label$261;
					label$262:;
					{
						if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 0 ) goto label$264;
						{
							FBSTRING TMP$154$7;
							fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
							fb_StrConcatAssign( (void*)&ID$1, -1, (void*)"$", 2, 0 );
							if( (*(int32*)((uint8*)SYM$1 + 4) & 1048576) == 0 ) goto label$266;
							{
								int32 TMP$152$8;
								FBSTRING TMP$153$8;
								TMP$152$8 = 0;
								uint8* vr$62 = HMANGLEBUILTINTYPE( *(int32*)((uint8*)SYM$1 + 28) & 511, &TMP$152$8 );
								__builtin_memset( &TMP$153$8, 0, 12 );
								FBSTRING* vr$65 = fb_StrConcat( &TMP$153$8, (void*)&ID$1, -1, (void*)vr$62, 0 );
								fb_StrAssign( (void*)&ID$1, -1, (void*)vr$65, -1, 0 );
								fb_StrConcatAssign( (void*)&ID$1, -1, (void*)"$", 2, 0 );
							}
							label$266:;
							label$265:;
							FBSTRING* vr$68 = fb_UIntToStr( (uint32)*(uint16*)((uint8*)SYM$1 + 36) );
							__builtin_memset( &TMP$154$7, 0, 12 );
							FBSTRING* vr$71 = fb_StrConcat( &TMP$154$7, (void*)&ID$1, -1, (void*)vr$68, -1 );
							fb_StrAssign( (void*)&ID$1, -1, (void*)vr$71, -1, 0 );
						}
						goto label$263;
						label$264:;
						{
							fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
						}
						label$263:;
					}
					label$261:;
				}
				goto label$258;
				label$259:;
				if( TMP$151$4 != 2 ) goto label$267;
				label$268:;
				{
					if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 0 ) goto label$270;
					{
						fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
						if( (*(int32*)((uint8*)SYM$1 + 4) & 1048576) == 0 ) goto label$272;
						{
							int32 TMP$155$7;
							FBSTRING TMP$156$7;
							TMP$155$7 = 0;
							uint8* vr$81 = HMANGLEBUILTINTYPE( *(int32*)((uint8*)SYM$1 + 28) & 511, &TMP$155$7 );
							__builtin_memset( &TMP$156$7, 0, 12 );
							FBSTRING* vr$84 = fb_StrConcat( &TMP$156$7, (void*)&ID$1, -1, (void*)vr$81, 0 );
							fb_StrAssign( (void*)&ID$1, -1, (void*)vr$84, -1, 0 );
						}
						label$272:;
						label$271:;
						fb_StrConcatAssign( (void*)&ID$1, -1, (void*)".", 2, 0 );
						FBSTRING* vr$85 = fb_IntToStr( VARCOUNTER$1 );
						fb_StrConcatAssign( (void*)&ID$1, -1, (void*)vr$85, -1, 0 );
						VARCOUNTER$1 = VARCOUNTER$1 + 1;
					}
					goto label$269;
					label$270:;
					{
						fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
					}
					label$269:;
				}
				goto label$258;
				label$267:;
				if( TMP$151$4 != 3 ) goto label$273;
				label$274:;
				{
					if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 0 ) goto label$276;
					{
						fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
						if( (*(int32*)((uint8*)SYM$1 + 4) & 1048576) == 0 ) goto label$278;
						{
							int32 TMP$157$7;
							FBSTRING TMP$158$7;
							TMP$157$7 = 0;
							uint8* vr$96 = HMANGLEBUILTINTYPE( *(int32*)((uint8*)SYM$1 + 28) & 511, &TMP$157$7 );
							__builtin_memset( &TMP$158$7, 0, 12 );
							FBSTRING* vr$99 = fb_StrConcat( &TMP$158$7, (void*)&ID$1, -1, (void*)vr$96, 0 );
							fb_StrAssign( (void*)&ID$1, -1, (void*)vr$99, -1, 0 );
						}
						label$278:;
						label$277:;
						fb_StrConcatAssign( (void*)&ID$1, -1, (void*)".", 2, 0 );
						FBSTRING* vr$100 = fb_IntToStr( VARCOUNTER$1 );
						fb_StrConcatAssign( (void*)&ID$1, -1, (void*)vr$100, -1, 0 );
						VARCOUNTER$1 = VARCOUNTER$1 + 1;
					}
					goto label$275;
					label$276:;
					if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$279;
					{
						uint8* vr$104 = SYMBUNIQUEID( (boolean)0 );
						fb_StrAssign( (void*)&ID$1, -1, (void*)vr$104, 0, 0 );
					}
					goto label$275;
					label$279:;
					{
						fb_StrAssign( (void*)&ID$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
					}
					label$275:;
				}
				goto label$258;
				label$273:;
				{
					if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$282;
					{
						uint8* vr$108 = SYMBUNIQUEID( (boolean)0 );
						fb_StrAssign( (void*)&ID$1, -1, (void*)vr$108, 0, 0 );
					}
					goto label$281;
					label$282:;
					{
						uint8* vr$109 = (*(tmp$43*)((uint8*)&IR$ + 40))(  );
						fb_StrAssign( (void*)&ID$1, -1, (void*)vr$109, 0, 0 );
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
	int32 vr$110 = fb_StrLen( (void*)&ID$1, -1 );
	if( vr$110 <= 0 ) goto label$284;
	{
		if( DOCPP$1 == 0 ) goto label$286;
		{
			int32 vr$111 = fb_StrLen( (void*)&ID$1, -1 );
			FBSTRING* vr$112 = fb_IntToStr( vr$111 );
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)vr$112, -1, 0 );
		}
		label$286:;
		label$285:;
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)&ID$1, -1, 0 );
	}
	label$284:;
	label$283:;
	if( DOCPP$1 == 0 ) goto label$288;
	{
		if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$290;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"E", 2, 0 );
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

static void HGETPROCPARAMSTYPECODE( FBSTRING* MANGLED$1, struct $8FBSYMBOL* SYM$1, int32 IS_REAL_PROC$1 )
{
	label$291:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 76);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$294;
	{
		if( (IS_REAL_PROC$1 & -((*(int32*)((uint8*)PARAM$1 + 4) & 524288) != 0)) == 0 ) goto label$296;
		{
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		}
		label$296:;
		label$295:;
	}
	label$294:;
	label$293:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0u ) goto label$298;
	{
		fb_StrConcatByref( (void*)MANGLED$1, -1, (void*)"v", 2, 0 );
		goto label$292;
	}
	label$298:;
	label$297:;
	label$299:;
	{
		SYMBMANGLEPARAM( MANGLED$1, PARAM$1 );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	label$301:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0u ) goto label$299;
	label$300:;
	label$292:;
}

static uint8* HGETOPERATORNAME( struct $8FBSYMBOL* PROC$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$302:;
	{
		uint32 TMP$159$2;
		TMP$159$2 = *(uint32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40);
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
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 2 ) goto label$375;
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
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 2 ) goto label$378;
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
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 3 ) goto label$381;
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
		static const void* tmp$247[82] = {
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
		if( TMP$159$2 > 81u ) goto label$304;
		goto *tmp$247[TMP$159$2 - 0u];
		label$304:;
	}
	label$303:;
	return fb$result$1;
}

static void HMANGLEPROC( struct $8FBSYMBOL* SYM$1 )
{
	label$382:;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 12 );
	int32 LENGTH$1;
	int32 DOCPP$1;
	int32 ADD_STDCALL_SUFFIX$1;
	int32 QUOTE_MANGLED_NAME$1;
	QUOTE_MANGLED_NAME$1 = 0;
	uint8* ID$1;
	int32 vr$1 = HDOCPPMANGLING( SYM$1 );
	DOCPP$1 = vr$1;
	int32 vr$13 = FBGETCPUFAMILY(  );
	ADD_STDCALL_SUFFIX$1 = ((-(*(int32*)((uint8*)SYM$1 + 84) == 1) | (-(*(int32*)((uint8*)SYM$1 + 84) == 6) & ((-(*(int32*)((uint8*)&ENV$ + 108) == 0) | -(*(int32*)((uint8*)&ENV$ + 108) == 1)) | -(*(int32*)((uint8*)&ENV$ + 108) == 4)))) & -(vr$13 == 0)) & -(*(int32*)((uint8*)&ENV$ + 104) != 1);
	if( *(int32*)((uint8*)&ENV$ + 104) != 2 ) goto label$385;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"@", 2, 0 );
		if( ADD_STDCALL_SUFFIX$1 == 0 ) goto label$387;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"\x22", 2, 0 );
			QUOTE_MANGLED_NAME$1 = -1;
		}
		label$387:;
		label$386:;
		{
			$13FB_COMPTARGET TMP$234$3;
			TMP$234$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
			if( TMP$234$3 == 0 ) goto label$390;
			label$391:;
			if( TMP$234$3 == 1 ) goto label$390;
			label$392:;
			if( TMP$234$3 != 4 ) goto label$389;
			label$390:;
			{
				if( QUOTE_MANGLED_NAME$1 != 0 ) goto label$394;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"\x22", 2, 0 );
					QUOTE_MANGLED_NAME$1 = -1;
				}
				label$394:;
				label$393:;
				fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"\x01", 2, 0 );
			}
			label$389:;
			label$388:;
		}
	}
	label$385:;
	label$384:;
	int32 vr$22 = HADDUNDERSCORE(  );
	if( vr$22 == 0 ) goto label$396;
	{
		if( *(int32*)((uint8*)SYM$1 + 84) != 6 ) goto label$398;
		{
			{
				$13FB_COMPTARGET TMP$236$4;
				TMP$236$4 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
				if( TMP$236$4 == 0 ) goto label$401;
				label$402:;
				if( TMP$236$4 == 1 ) goto label$401;
				label$403:;
				if( TMP$236$4 != 4 ) goto label$400;
				label$401:;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"@", 2, 0 );
				}
				goto label$399;
				label$400:;
				{
					fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"_", 2, 0 );
				}
				label$404:;
				label$399:;
			}
		}
		goto label$397;
		label$398:;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"_", 2, 0 );
		}
		label$397:;
	}
	label$396:;
	label$395:;
	if( (DOCPP$1 | -((*(int32*)((uint8*)SYM$1 + 8) & 16) != 0)) == 0 ) goto label$406;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"_Z", 3, 0 );
	}
	label$406:;
	label$405:;
	if( DOCPP$1 == 0 ) goto label$408;
	{
		HMANGLENAMESPACE( &MANGLED$1, *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144), -1, -((*(int32*)((uint8*)SYM$1 + 4) & 2048) != 0) );
	}
	label$408:;
	label$407:;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 512) == 0 ) goto label$410;
	{
		FBSTRING TMP$238$2;
		if( DOCPP$1 == 0 ) goto label$412;
		{
			FBSTRING TMP$237$3;
			int32 vr$41 = fb_StrLen( *(void**)((uint8*)SYM$1 + 20), 0 );
			FBSTRING* vr$42 = fb_IntToStr( vr$41 );
			__builtin_memset( &TMP$237$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$237$3, (void*)&MANGLED$1, -1, (void*)vr$42, -1 );
			fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$46, -1, 0 );
		}
		label$412:;
		label$411:;
		__builtin_memset( &TMP$238$2, 0, 12 );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$238$2, (void*)&MANGLED$1, -1, *(void**)((uint8*)SYM$1 + 20), 0 );
		fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$52, -1, 0 );
	}
	goto label$409;
	label$410:;
	if( (*(int32*)((uint8*)SYM$1 + 8) & 16) == 0 ) goto label$413;
	{
		if( *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 112) + 40) != 27 ) goto label$415;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"cv", 3, 0 );
			SYMBMANGLETYPE( &MANGLED$1, *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), 0 );
		}
		goto label$414;
		label$415:;
		{
			FBSTRING TMP$240$3;
			uint8* vr$62 = HGETOPERATORNAME( SYM$1 );
			__builtin_memset( &TMP$240$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$240$3, (void*)&MANGLED$1, -1, (void*)vr$62, 0 );
			fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$66, -1, 0 );
		}
		label$414:;
	}
	goto label$409;
	label$413:;
	if( (*(int32*)((uint8*)SYM$1 + 8) & 4) == 0 ) goto label$416;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"C1", 3, 0 );
	}
	goto label$409;
	label$416:;
	if( (*(int32*)((uint8*)SYM$1 + 8) & 4096) == 0 ) goto label$417;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"D0", 3, 0 );
	}
	goto label$409;
	label$417:;
	if( (*(int32*)((uint8*)SYM$1 + 8) & 8) == 0 ) goto label$418;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"D1", 3, 0 );
	}
	goto label$409;
	label$418:;
	{
		FBSTRING TMP$244$2;
		if( (int32)*(int16*)((uint8*)SYM$1 + 38) != 0 ) goto label$420;
		{
			ID$1 = *(uint8**)((uint8*)SYM$1 + 16);
		}
		goto label$419;
		label$420:;
		{
			ID$1 = *(uint8**)((uint8*)SYM$1 + 20);
		}
		label$419:;
		if( DOCPP$1 == 0 ) goto label$422;
		{
			int32 vr$81 = fb_StrLen( (void*)ID$1, 0 );
			LENGTH$1 = vr$81;
			if( (*(int32*)((uint8*)SYM$1 + 8) & 32) == 0 ) goto label$424;
			{
				LENGTH$1 = LENGTH$1 + 7;
			}
			label$424:;
			label$423:;
			FBSTRING* vr$85 = fb_IntToStr( LENGTH$1 );
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)vr$85, -1, 0 );
		}
		label$422:;
		label$421:;
		__builtin_memset( &TMP$244$2, 0, 12 );
		FBSTRING* vr$90 = fb_StrConcat( &TMP$244$2, (void*)&MANGLED$1, -1, (void*)ID$1, 0 );
		fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$90, -1, 0 );
		if( (*(int32*)((uint8*)SYM$1 + 8) & 32) == 0 ) goto label$426;
		{
			if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 0 ) goto label$428;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"__set__", 8, 0 );
			}
			goto label$427;
			label$428:;
			{
				fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"__get__", 8, 0 );
			}
			label$427:;
		}
		label$426:;
		label$425:;
	}
	label$409:;
	if( DOCPP$1 == 0 ) goto label$430;
	{
		if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$432;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"E", 2, 0 );
		}
		label$432:;
		label$431:;
		HGETPROCPARAMSTYPECODE( &MANGLED$1, SYM$1, -1 );
	}
	label$430:;
	label$429:;
	if( ADD_STDCALL_SUFFIX$1 == 0 ) goto label$434;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"@", 2, 0 );
		int64 vr$104 = SYMBPROCCALCSTDCALLSUFFIXN( SYM$1 );
		FBSTRING* vr$105 = fb_LongintToStr( vr$104 );
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)vr$105, -1, 0 );
	}
	label$434:;
	label$433:;
	if( QUOTE_MANGLED_NAME$1 == 0 ) goto label$436;
	{
		fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"\x22", 2, 0 );
	}
	label$436:;
	label$435:;
	SYMBSETMANGLEDID( SYM$1, &MANGLED$1 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$383:;
}
