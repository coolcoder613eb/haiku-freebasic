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
struct $8DZSTRING {
	uint8* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 12 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int32 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 388 );
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int32* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int32* );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $9FB_ERRMSG;
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IcE {
	uint8* DATA;
	uint8* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IcE ) == 36 );
struct $8FBARRAY2IP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IP7ASTNODEE ) == 48 );
struct $7FBTOKEN;
struct $7FBTOKEN {
	int32 ID;
	int32 CLASS;
	int32 DTYPE;
	union {
		uint8 TEXT[1025];
		uint32 TEXTW[1025];
	};
	int32 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int32 PRDPOS;
		int32 HASESC;
	};
	int32 SUFFIXCHAR;
	int32 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4136 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int32 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint32 CURRCHAR;
	uint32 LAHDCHAR1;
	uint32 LAHDCHAR2;
	int32 LINENUM;
	int32 LASTTK_ID;
	int32 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int32 IS_FB_EVAL;
	int32 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint32* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int32 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int32 FILEPOS;
	int32 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int32 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49416 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 120 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzdeclzproczparams( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int32, uint8*, int32 );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
void ASTFORGETBITFIELDS( struct $7ASTNODE* );
int32 ASTTYPEINIUSESLOCALS( struct $7ASTNODE*, int32 );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int32, struct $8FBSYMBOL*, int32, int32, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
int32 SYMBGETDEFTYPE( uint8* );
int32 SYMBGETDEFAULTPARAMMODE( int32, struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
void LEXCHECKTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
void CARRAYDECL( int32*, int32*, struct $7FBARRAYIP7ASTNODEE* );
typedef int32 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int32, struct $8FBSYMBOL* );
typedef int32 $14FB_SYMBTYPEOPT;
int32 CSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32*, $14FB_SYMBTYPEOPT );
int32 CASSIGNTOKEN( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HCOMPLAINIFABSTRACTCLASS( int32, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HPARAMDECL( struct $8FBSYMBOL*, int32, int32 );
static void HPARAMERROR( struct $8FBSYMBOL*, uint8*, $9FB_ERRMSG, int32 );
static void HPARAMWARNING( struct $8FBSYMBOL*, uint8*, $9FB_ERRMSG, int32 );
static struct $7ASTNODE* HOPTIONALEXPR( struct $8FBSYMBOL*, uint8*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HMOCKPARAM( struct $8FBSYMBOL*, int32 );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;

void CPARAMETERS( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1, int32 PROCMODE$1, int32 ISPROTO$1 )
{
	label$10:;
	int64 LENGTH$1;
	LENGTH$1 = 0ll;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$13;
	{
		SYMBADDPROCINSTANCEPARAM( PARENT$1, PROC$1 );
		LENGTH$1 = LENGTH$1 + (int64)*(int32*)((uint8*)&ENV$ + 296);
	}
	label$13:;
	label$12:;
	int32 vr$4 = LEXGETTOKEN( 0 );
	if( vr$4 == 40 ) goto label$15;
	{
		goto label$11;
	}
	label$15:;
	label$14:;
	LEXSKIPTOKEN( 0 );
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 != 41 ) goto label$17;
	{
		LEXSKIPTOKEN( 0 );
		goto label$11;
	}
	label$17:;
	label$16:;
	label$18:;
	{
		struct $8FBSYMBOL* PARAM$2;
		struct $8FBSYMBOL* vr$6 = HPARAMDECL( PROC$1, PROCMODE$1, ISPROTO$1 );
		PARAM$2 = vr$6;
		if( PARAM$2 != (struct $8FBSYMBOL*)0u ) goto label$22;
		{
			goto label$19;
		}
		label$22:;
		label$21:;
		LENGTH$1 = LENGTH$1 + *(int64*)((uint8*)PARAM$2 + 40);
		if( *(int32*)((uint8*)PARAM$2 + 56) != 4 ) goto label$24;
		{
			goto label$19;
		}
		label$24:;
		label$23:;
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 44 ) goto label$26;
		{
			goto label$19;
		}
		label$26:;
		label$25:;
		LEXSKIPTOKEN( 0 );
	}
	label$20:;
	goto label$18;
	label$19:;
	int32 vr$11 = LEXGETTOKEN( 0 );
	if( vr$11 == 41 ) goto label$28;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$27;
	label$28:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$27:;
	if( LENGTH$1 <= (int64)(*(int32*)((uint8*)&ENV$ + 296) << (6 & 31)) ) goto label$30;
	{
		ERRREPORTWARN( 18, (uint8*)*(uint8**)((uint8*)PROC$1 + 16), 1, (uint8*)0u );
	}
	label$30:;
	label$29:;
	label$11:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void HPARAMERROR( struct $8FBSYMBOL* PROC$1, uint8* PID$1, $9FB_ERRMSG MSGNUM$1, int32 DELTA$1 )
{
	label$31:;
	ERRREPORTPARAM( PROC$1, (int32)*(int16*)((uint8*)PROC$1 + 68) + DELTA$1, PID$1, MSGNUM$1 );
	label$32:;
}

static void HPARAMWARNING( struct $8FBSYMBOL* PROC$1, uint8* PID$1, $9FB_ERRMSG MSGNUM$1, int32 DELTA$1 )
{
	label$33:;
	ERRREPORTPARAMWARN( PROC$1, (int32)*(int16*)((uint8*)PROC$1 + 68) + DELTA$1, PID$1, MSGNUM$1 );
	label$34:;
}

static struct $7ASTNODE* HOPTIONALEXPR( struct $8FBSYMBOL* PROC$1, uint8* PID$1, struct $8FBSYMBOL* PARAM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$35:;
	struct $7ASTNODE* EXPR$1;
	int32 INIOPTIONS$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)PARAM$1 + 56) == 1 ) goto label$38;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) == 2 ) goto label$40;
		{
			goto label$36;
		}
		label$40:;
		label$39:;
	}
	label$38:;
	label$37:;
	{
		int32 TMP$92$2;
		TMP$92$2 = *(int32*)((uint8*)PARAM$1 + 28) & 511;
		if( TMP$92$2 == 0 ) goto label$43;
		label$44:;
		if( TMP$92$2 != 23 ) goto label$42;
		label$43:;
		{
			ERRREPORT( 71, 0, (uint8*)0u );
			HSKIPUNTIL( 41, 0, 0, -1 );
			struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$5;
			goto label$36;
		}
		label$42:;
		label$41:;
	}
	struct $7ASTNODE* vr$6 = CINITIALIZER( PARAM$1, 1, -2147483648u, (struct $8FBSYMBOL*)0u );
	EXPR$1 = vr$6;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$46;
	{
		goto label$36;
	}
	label$46:;
	label$45:;
	ASTFORGETBITFIELDS( EXPR$1 );
	int32 vr$7 = ASTTYPEINIUSESLOCALS( EXPR$1, 12288 );
	if( vr$7 == 0 ) goto label$48;
	{
		HPARAMERROR( PROC$1, PID$1, 272, 0 );
		ASTDELTREE( EXPR$1 );
		EXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$48:;
	label$47:;
	fb$result$1 = EXPR$1;
	label$36:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HMOCKPARAM( struct $8FBSYMBOL* PROC$1, int32 PMODE$1 )
{
	int32 TMP$93$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$49:;
	int32 DTYPE$1;
	if( PMODE$1 != -1 ) goto label$52;
	{
		PMODE$1 = *(int32*)((uint8*)&ENV$ + 1080);
	}
	label$52:;
	label$51:;
	if( PMODE$1 != 4 ) goto label$54;
	{
		DTYPE$1 = -2147483648u;
	}
	goto label$53;
	label$54:;
	{
		DTYPE$1 = 8;
	}
	label$53:;
	if( PMODE$1 != 3 ) goto label$55;
	TMP$93$1 = -1;
	goto label$161;
	label$55:;
	TMP$93$1 = 0;
	label$161:;
	struct $8FBSYMBOL* vr$1 = SYMBADDPROCPARAM( PROC$1, (uint8*)0u, DTYPE$1, (struct $8FBSYMBOL*)0u, TMP$93$1, PMODE$1, 0, 0 );
	fb$result$1 = vr$1;
	label$50:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HPARAMDECL( struct $8FBSYMBOL* PROC$1, int32 PROC_MODE$1, int32 ISPROTO$1 )
{
	uint8* TMP$104$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$56:;
	static uint8 IDTB$1[8][129];
	static struct $8FBARRAY1IcE tmp$94$1 = { (uint8*)IDTB$1, (uint8*)IDTB$1, 1032, 129, 1, 49, { { 8, 0, 7 } } };
	static int32 RECLEVEL$1 = 0;
	uint8* ID$1;
	int32 DTYPE$1;
	int32 MODE$1;
	int32 ATTRIB$1;
	int32 DIMENSIONS$1;
	int32 READID$1;
	int32 DOTPOS$1;
	int32 DOSKIP$1;
	int32 USE_DEFAULT$1;
	int32 HAVE_BOUNDS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* PARAM$1;
	static struct $7ASTNODE* EXPRTB$1[8][2];
	static struct $8FBARRAY2IP7ASTNODEE tmp$95$1 = { (struct $7ASTNODE**)EXPRTB$1, (struct $7ASTNODE**)EXPRTB$1, 64, 4, 2, 50, { { 8, 0, 7 }, { 2, 0, 1 } } };
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	ATTRIB$1 = 0;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 46 ) goto label$59;
	{
		int32 vr$2 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$2 != 46 ) goto label$61;
		{
			LEXSKIPTOKEN( 0 );
			LEXSKIPTOKEN( 0 );
			int32 vr$3 = LEXGETTOKEN( 0 );
			if( vr$3 == 46 ) goto label$63;
			{
				HPARAMERROR( PROC$1, (uint8*)"...", 59, 1 );
				HSKIPUNTIL( 41, 0, 0, 0 );
				HMOCKPARAM( PROC$1, 4 );
			}
			goto label$62;
			label$63:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$62:;
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 0 ) goto label$65;
			{
				HPARAMERROR( PROC$1, (uint8*)"...", 313, 1 );
				struct $8FBSYMBOL* vr$6 = HMOCKPARAM( PROC$1, 4 );
				fb$result$1 = vr$6;
				goto label$57;
			}
			label$65:;
			label$64:;
			if( PROC_MODE$1 == 3 ) goto label$67;
			{
				HPARAMERROR( PROC$1, (uint8*)"...", 312, 1 );
				struct $8FBSYMBOL* vr$7 = HMOCKPARAM( PROC$1, 4 );
				fb$result$1 = vr$7;
				goto label$57;
			}
			label$67:;
			label$66:;
			struct $8FBSYMBOL* vr$8 = SYMBADDPROCPARAM( PROC$1, (uint8*)0u, -2147483648u, (struct $8FBSYMBOL*)0u, 0, 4, 0, 0 );
			fb$result$1 = vr$8;
			goto label$57;
		}
		goto label$60;
		label$61:;
		{
			HPARAMERROR( PROC$1, (uint8*)"...", 59, 1 );
			HSKIPUNTIL( 41, 0, 0, 0 );
			struct $8FBSYMBOL* vr$9 = HMOCKPARAM( PROC$1, 4 );
			fb$result$1 = vr$9;
			goto label$57;
		}
		label$60:;
	}
	label$59:;
	label$58:;
	{
		int32 TMP$97$2;
		int32 vr$10 = LEXGETTOKEN( 0 );
		TMP$97$2 = vr$10;
		if( TMP$97$2 != 319 ) goto label$69;
		label$70:;
		{
			MODE$1 = 1;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$68;
		label$69:;
		if( TMP$97$2 != 320 ) goto label$71;
		label$72:;
		{
			MODE$1 = 2;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$68;
		label$71:;
		{
			MODE$1 = -1;
		}
		label$73:;
		label$68:;
	}
	{
		int32 TMP$98$2;
		int32 vr$11 = LEXGETCLASS( 0 );
		TMP$98$2 = vr$11;
		if( TMP$98$2 != 0 ) goto label$75;
		label$76:;
		{
			READID$1 = -1;
		}
		goto label$74;
		label$75:;
		if( TMP$98$2 == 1 ) goto label$78;
		label$79:;
		if( TMP$98$2 != 2 ) goto label$77;
		label$78:;
		{
			if( ISPROTO$1 != 0 ) goto label$81;
			{
				uint8* vr$12 = LEXGETTEXT(  );
				HPARAMERROR( PROC$1, vr$12, 59, 1 );
				HSKIPUNTIL( 44, 0, 0, 0 );
				struct $8FBSYMBOL* vr$13 = HMOCKPARAM( PROC$1, MODE$1 );
				fb$result$1 = vr$13;
				goto label$57;
			}
			label$81:;
			label$80:;
			int32 vr$14 = LEXGETTOKEN( 0 );
			READID$1 = -(vr$14 != 376);
		}
		goto label$74;
		label$77:;
		{
			int32 vr$16 = LEXGETTOKEN( 0 );
			if( (-(vr$16 != 40) | -(ISPROTO$1 == 0)) == 0 ) goto label$84;
			{
				uint8* vr$20 = LEXGETTEXT(  );
				HPARAMERROR( PROC$1, vr$20, 59, 1 );
				HSKIPUNTIL( 44, 0, 0, 0 );
				struct $8FBSYMBOL* vr$21 = HMOCKPARAM( PROC$1, MODE$1 );
				fb$result$1 = vr$21;
				goto label$57;
			}
			label$84:;
			label$83:;
			READID$1 = 0;
		}
		label$82:;
		label$74:;
	}
	if( RECLEVEL$1 < 8 ) goto label$86;
	{
		ERRREPORT( 27, 0, (uint8*)0u );
		HSKIPUNTIL( 44, 0, 0, 0 );
		struct $8FBSYMBOL* vr$22 = HMOCKPARAM( PROC$1, MODE$1 );
		fb$result$1 = vr$22;
		goto label$57;
	}
	label$86:;
	label$85:;
	ID$1 = (uint8*)((int32)(uint8*)IDTB$1 + (RECLEVEL$1 * 129));
	fb_StrAssign( (void*)ID$1, 0, (void*)"", 1, 0 );
	if( READID$1 == 0 ) goto label$88;
	{
		uint8* vr$25 = LEXGETTEXT(  );
		fb_StrAssign( (void*)ID$1, 0, (void*)vr$25, 0, 0 );
		DOTPOS$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4120);
		LEXCHECKTOKEN( 4096 );
		DTYPE$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8);
		LEXSKIPTOKEN( 0 );
	}
	goto label$87;
	label$88:;
	{
		DTYPE$1 = -2147483648u;
	}
	label$87:;
	DIMENSIONS$1 = 0;
	HAVE_BOUNDS$1 = 0;
	int32 vr$30 = LEXGETTOKEN( 0 );
	if( vr$30 != 40 ) goto label$90;
	{
		LEXSKIPTOKEN( 0 );
		if( MODE$1 == -1 ) goto label$92;
		{
			HPARAMERROR( PROC$1, ID$1, 59, 1 );
		}
		label$92:;
		label$91:;
		MODE$1 = 3;
		int32 vr$31 = LEXGETTOKEN( 0 );
		if( vr$31 != 41 ) goto label$94;
		{
			DIMENSIONS$1 = -1;
		}
		goto label$93;
		label$94:;
		{
			CARRAYDECL( &DIMENSIONS$1, &HAVE_BOUNDS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$95$1 );
			if( HAVE_BOUNDS$1 == 0 ) goto label$96;
			{
				HPARAMERROR( PROC$1, ID$1, 59, 1 );
			}
			label$96:;
			label$95:;
		}
		label$93:;
		int32 vr$34 = HMATCH( 41, 0 );
		if( vr$34 != 0 ) goto label$98;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
		}
		label$98:;
		label$97:;
	}
	label$90:;
	label$89:;
	USE_DEFAULT$1 = 0;
	if( MODE$1 != -1 ) goto label$100;
	{
		MODE$1 = *(int32*)((uint8*)&ENV$ + 1080);
		USE_DEFAULT$1 = -1;
		if( (*(int32*)((uint8*)&ENV$ + 200) & 2) == 0 ) goto label$102;
		{
			HPARAMWARNING( PROC$1, ID$1, 15, 1 );
		}
		label$102:;
		label$101:;
	}
	label$100:;
	label$99:;
	DOSKIP$1 = 0;
	int32 vr$36 = LEXGETTOKEN( 0 );
	if( vr$36 != 376 ) goto label$104;
	{
		int64 TMP$99$2;
		int32 TMP$100$2;
		LEXSKIPTOKEN( 2048 );
		if( DTYPE$1 == -2147483648u ) goto label$106;
		{
			HPARAMERROR( PROC$1, ID$1, 59, 1 );
			goto label$57;
		}
		label$106:;
		label$105:;
		RECLEVEL$1 = RECLEVEL$1 + 1;
		int32 OPTIONS$2;
		OPTIONS$2 = 1;
		if( MODE$1 != 2 ) goto label$108;
		{
			if( ISPROTO$1 == 0 ) goto label$110;
			{
				OPTIONS$2 = OPTIONS$2 | 2;
			}
			label$110:;
			label$109:;
			OPTIONS$2 = OPTIONS$2 & -2;
			OPTIONS$2 = OPTIONS$2 | 4;
		}
		label$108:;
		label$107:;
		TMP$100$2 = 0;
		TMP$99$2 = 0ll;
		int32 vr$45 = CSYMBOLTYPE( &DTYPE$1, &SUBTYPE$1, &TMP$99$2, &TMP$100$2, OPTIONS$2 );
		if( vr$45 != 0 ) goto label$112;
		{
			HPARAMERROR( PROC$1, ID$1, 59, 1 );
			DTYPE$1 = 8;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
			DOSKIP$1 = -1;
		}
		label$112:;
		label$111:;
		if( MODE$1 != 1 ) goto label$114;
		{
			HCOMPLAINIFABSTRACTCLASS( DTYPE$1, SUBTYPE$1 );
		}
		label$114:;
		label$113:;
		RECLEVEL$1 = RECLEVEL$1 + -1;
	}
	goto label$103;
	label$104:;
	{
		if( (*(int32*)((uint8*)&ENV$ + 1040) & 4194304) != 0 ) goto label$116;
		{
			ERRREPORTNOTALLOWED( 4194304, 147, (uint8*)0u );
			DOSKIP$1 = -1;
		}
		goto label$115;
		label$116:;
		{
			if( READID$1 != 0 ) goto label$118;
			{
				HPARAMERROR( PROC$1, (uint8*)0u, 59, 1 );
				DOSKIP$1 = -1;
			}
			label$118:;
			label$117:;
		}
		label$115:;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		ATTRIB$1 = ATTRIB$1 | 1048576;
	}
	label$103:;
	if( *(int32*)((uint8*)&ENV$ + 136) != 0 ) goto label$120;
	{
		if( USE_DEFAULT$1 == 0 ) goto label$122;
		{
			int32 vr$49 = SYMBGETDEFAULTPARAMMODE( DTYPE$1, SUBTYPE$1 );
			MODE$1 = vr$49;
		}
		label$122:;
		label$121:;
	}
	label$120:;
	label$119:;
	if( DTYPE$1 != -2147483648u ) goto label$124;
	{
		int32 vr$50 = SYMBGETDEFTYPE( (uint8*)ID$1 );
		DTYPE$1 = vr$50;
	}
	label$124:;
	label$123:;
	if( DOSKIP$1 == 0 ) goto label$126;
	{
		HSKIPUNTIL( 44, 0, 0, 0 );
	}
	label$126:;
	label$125:;
	{
		int32 TMP$101$2;
		uint32 TMP$102$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$127;
		TMP$101$2 = 24;
		goto label$162;
		label$127:;
		TMP$101$2 = DTYPE$1 & 31;
		label$162:;
		TMP$102$2 = (uint32)TMP$101$2;
		goto label$129;
		label$130:;
		{
			int32 TMP$103$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$131;
			TMP$103$3 = 24;
			goto label$163;
			label$131:;
			TMP$103$3 = DTYPE$1 & 31;
			label$163:;
			if( (-(MODE$1 == 1) | -(TMP$103$3 == 18)) == 0 ) goto label$133;
			{
				HPARAMERROR( PROC$1, ID$1, 59, 1 );
				DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
			}
			label$133:;
			label$132:;
		}
		goto label$128;
		label$134:;
		{
			if( ISPROTO$1 != 0 ) goto label$136;
			{
				HPARAMERROR( PROC$1, ID$1, 59, 1 );
				DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
			}
			goto label$135;
			label$136:;
			{
				if( MODE$1 != 1 ) goto label$138;
				{
					HPARAMERROR( PROC$1, ID$1, 59, 1 );
					DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
				}
				label$138:;
				label$137:;
			}
			label$135:;
		}
		goto label$128;
		label$139:;
		{
			if( ISPROTO$1 != 0 ) goto label$141;
			{
				if( DOTPOS$1 <= 0 ) goto label$143;
				{
					HPARAMERROR( PROC$1, ID$1, 59, 1 );
				}
				label$143:;
				label$142:;
			}
			label$141:;
			label$140:;
		}
		goto label$128;
		label$129:;
		static const void* tmp$105[21] = {
			&&label$134,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$130,
			&&label$128,
			&&label$128,
			&&label$130,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$128,
			&&label$130,
			&&label$128,
			&&label$139,
		};
		if( TMP$102$2 > 20u ) goto label$128;
		goto *tmp$105[TMP$102$2 - 0u];
		label$128:;
	}
	if( ISPROTO$1 == 0 ) goto label$144;
	TMP$104$1 = (uint8*)0u;
	goto label$164;
	label$144:;
	TMP$104$1 = ID$1;
	label$164:;
	struct $8FBSYMBOL* vr$85 = SYMBADDPROCPARAM( PROC$1, TMP$104$1, DTYPE$1, SUBTYPE$1, DIMENSIONS$1, MODE$1, ATTRIB$1, 0 );
	PARAM$1 = vr$85;
	if( PARAM$1 != (struct $8FBSYMBOL*)0u ) goto label$146;
	{
		goto label$57;
	}
	label$146:;
	label$145:;
	if( ISPROTO$1 != 0 ) goto label$148;
	{
		if( *(int64*)((uint8*)PARAM$1 + 40) <= (int64)(*(int32*)((uint8*)&ENV$ + 296) << (2 & 31)) ) goto label$150;
		{
			if( (*(int32*)((uint8*)&ENV$ + 200) & 4) == 0 ) goto label$152;
			{
				HPARAMWARNING( PROC$1, ID$1, 17, 0 );
			}
			label$152:;
			label$151:;
		}
		label$150:;
		label$149:;
	}
	label$148:;
	label$147:;
	int32 vr$90 = CASSIGNTOKEN(  );
	if( vr$90 == 0 ) goto label$154;
	{
		if( MODE$1 != 3 ) goto label$156;
		{
			int32 vr$91 = LEXGETTOKEN( 0 );
			if( vr$91 != 372 ) goto label$158;
			{
				LEXSKIPTOKEN( 2048 );
				*($12FB_SYMBSTATS*)((uint8*)PARAM$1 + 12) = *(int32*)((uint8*)PARAM$1 + 12) | 2048;
			}
			goto label$157;
			label$158:;
			{
				HPARAMERROR( PROC$1, ID$1, 59, 0 );
				HSKIPUNTIL( 44, 0, 0, 0 );
			}
			label$157:;
		}
		goto label$155;
		label$156:;
		{
			struct $7ASTNODE* OPTEXPR$3;
			struct $7ASTNODE* vr$95 = HOPTIONALEXPR( PROC$1, ID$1, PARAM$1 );
			OPTEXPR$3 = vr$95;
			if( OPTEXPR$3 == (struct $7ASTNODE*)0u ) goto label$160;
			{
				SYMBMAKEPARAMOPTIONAL( PROC$1, PARAM$1, OPTEXPR$3 );
			}
			goto label$159;
			label$160:;
			{
				HPARAMERROR( PROC$1, ID$1, 59, 0 );
				HSKIPUNTIL( 44, 0, 0, 0 );
			}
			label$159:;
		}
		label$155:;
	}
	label$154:;
	label$153:;
	fb$result$1 = PARAM$1;
	label$57:;
	return fb$result$1;
}
