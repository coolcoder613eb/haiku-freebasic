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
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint16* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 24 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int64 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 776 );
typedef FBSTRING* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
typedef uint16* (*tmp$30)( struct $11LEXPP_ARGTB*, int64* );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $9FB_ERRMSG;
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1IcE {
	uint8* DATA;
	uint8* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IcE ) == 72 );
struct $8FBARRAY2IP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IP7ASTNODEE ) == 96 );
struct $7FBTOKEN;
struct $7FBTOKEN {
	int64 ID;
	int64 CLASS;
	int64 DTYPE;
	union {
		uint8 TEXT[1025];
		uint16 TEXTW[1025];
	};
	int64 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int64 PRDPOS;
		int64 HASESC;
	};
	int64 SUFFIXCHAR;
	int64 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 2128 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int64 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint64 CURRCHAR;
	uint64 LAHDCHAR1;
	uint64 LAHDCHAR2;
	int64 LINENUM;
	int64 LASTTK_ID;
	int64 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int64 IS_FB_EVAL;
	int64 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint16* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int64 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint16* BUFFPTRW;
			uint16 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 25104 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 240 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzdeclzproczparams( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int64, uint8*, int64 );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int64, uint8*, int64 );
typedef int64 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int64, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
void ASTFORGETBITFIELDS( struct $7ASTNODE* );
int64 ASTTYPEINIUSESLOCALS( struct $7ASTNODE*, int64 );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
int64 SYMBGETDEFTYPE( uint8* );
int64 SYMBGETDEFAULTPARAMMODE( int64, struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
void LEXCHECKTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
void CARRAYDECL( int64*, int64*, struct $7FBARRAYIP7ASTNODEE* );
typedef int64 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int64, struct $8FBSYMBOL* );
typedef int64 $14FB_SYMBTYPEOPT;
int64 CSYMBOLTYPE( int64*, struct $8FBSYMBOL**, int64*, int64*, $14FB_SYMBTYPEOPT );
int64 CASSIGNTOKEN( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
void HCOMPLAINIFABSTRACTCLASS( int64, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HPARAMDECL( struct $8FBSYMBOL*, int64, int64 );
static void HPARAMERROR( struct $8FBSYMBOL*, uint8*, $9FB_ERRMSG, int64 );
static void HPARAMWARNING( struct $8FBSYMBOL*, uint8*, $9FB_ERRMSG, int64 );
static struct $7ASTNODE* HOPTIONALEXPR( struct $8FBSYMBOL*, uint8*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HMOCKPARAM( struct $8FBSYMBOL*, int64 );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int64 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 426784 );
extern struct $7LEX_CTX LEX$;

void CPARAMETERS( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1, int64 PROCMODE$1, int64 ISPROTO$1 )
{
	label$10:;
	int64 LENGTH$1;
	LENGTH$1 = 0ll;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$13;
	{
		SYMBADDPROCINSTANCEPARAM( PARENT$1, PROC$1 );
		LENGTH$1 = LENGTH$1 + *(int64*)((uint8*)&ENV$ + 592ll);
	}
	label$13:;
	label$12:;
	int64 vr$3 = LEXGETTOKEN( 0ll );
	if( vr$3 == 40ll ) goto label$15;
	{
		goto label$11;
	}
	label$15:;
	label$14:;
	LEXSKIPTOKEN( 0ll );
	int64 vr$4 = LEXGETTOKEN( 0ll );
	if( vr$4 != 41ll ) goto label$17;
	{
		LEXSKIPTOKEN( 0ll );
		goto label$11;
	}
	label$17:;
	label$16:;
	label$18:;
	{
		struct $8FBSYMBOL* PARAM$2;
		struct $8FBSYMBOL* vr$5 = HPARAMDECL( PROC$1, PROCMODE$1, ISPROTO$1 );
		PARAM$2 = vr$5;
		if( PARAM$2 != (struct $8FBSYMBOL*)0ull ) goto label$22;
		{
			goto label$19;
		}
		label$22:;
		label$21:;
		LENGTH$1 = LENGTH$1 + *(int64*)((uint8*)PARAM$2 + 80ll);
		if( *(int64*)((uint8*)PARAM$2 + 96ll) != 4ll ) goto label$24;
		{
			goto label$19;
		}
		label$24:;
		label$23:;
		int64 vr$9 = LEXGETTOKEN( 0ll );
		if( vr$9 == 44ll ) goto label$26;
		{
			goto label$19;
		}
		label$26:;
		label$25:;
		LEXSKIPTOKEN( 0ll );
	}
	label$20:;
	goto label$18;
	label$19:;
	int64 vr$10 = LEXGETTOKEN( 0ll );
	if( vr$10 == 41ll ) goto label$28;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
	}
	goto label$27;
	label$28:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$27:;
	if( LENGTH$1 <= (*(int64*)((uint8*)&ENV$ + 592ll) << (6ll & 63ll)) ) goto label$30;
	{
		ERRREPORTWARN( 18ll, (uint8*)*(uint8**)((uint8*)PROC$1 + 32ll), 1ll, (uint8*)0ull );
	}
	label$30:;
	label$29:;
	label$11:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HPARAMERROR( struct $8FBSYMBOL* PROC$1, uint8* PID$1, $9FB_ERRMSG MSGNUM$1, int64 DELTA$1 )
{
	label$31:;
	ERRREPORTPARAM( PROC$1, (int64)*(int16*)((uint8*)PROC$1 + 120ll) + DELTA$1, PID$1, MSGNUM$1 );
	label$32:;
}

static void HPARAMWARNING( struct $8FBSYMBOL* PROC$1, uint8* PID$1, $9FB_ERRMSG MSGNUM$1, int64 DELTA$1 )
{
	label$33:;
	ERRREPORTPARAMWARN( PROC$1, (int64)*(int16*)((uint8*)PROC$1 + 120ll) + DELTA$1, PID$1, MSGNUM$1 );
	label$34:;
}

static struct $7ASTNODE* HOPTIONALEXPR( struct $8FBSYMBOL* PROC$1, uint8* PID$1, struct $8FBSYMBOL* PARAM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$35:;
	struct $7ASTNODE* EXPR$1;
	int64 INIOPTIONS$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)PARAM$1 + 96ll) == 1ll ) goto label$38;
	{
		if( *(int64*)((uint8*)PARAM$1 + 96ll) == 2ll ) goto label$40;
		{
			goto label$36;
		}
		label$40:;
		label$39:;
	}
	label$38:;
	label$37:;
	{
		int64 TMP$93$2;
		TMP$93$2 = *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll;
		if( TMP$93$2 == 0ll ) goto label$43;
		label$44:;
		if( TMP$93$2 != 23ll ) goto label$42;
		label$43:;
		{
			ERRREPORT( 71ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, 0ll, 0ll, -1ll );
			struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$5;
			goto label$36;
		}
		label$42:;
		label$41:;
	}
	struct $7ASTNODE* vr$6 = CINITIALIZER( PARAM$1, 1ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	EXPR$1 = vr$6;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$46;
	{
		goto label$36;
	}
	label$46:;
	label$45:;
	ASTFORGETBITFIELDS( EXPR$1 );
	int64 vr$7 = ASTTYPEINIUSESLOCALS( EXPR$1, 12288ll );
	if( vr$7 == 0ll ) goto label$48;
	{
		HPARAMERROR( PROC$1, PID$1, 272ll, 0ll );
		ASTDELTREE( EXPR$1 );
		EXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$48:;
	label$47:;
	fb$result$1 = EXPR$1;
	label$36:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HMOCKPARAM( struct $8FBSYMBOL* PROC$1, int64 PMODE$1 )
{
	int64 TMP$94$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$49:;
	int64 DTYPE$1;
	if( PMODE$1 != -1ll ) goto label$52;
	{
		PMODE$1 = *(int64*)((uint8*)&ENV$ + 1504ll);
	}
	label$52:;
	label$51:;
	if( PMODE$1 != 4ll ) goto label$54;
	{
		DTYPE$1 = 2147483648ll;
	}
	goto label$53;
	label$54:;
	{
		DTYPE$1 = 8ll;
	}
	label$53:;
	if( PMODE$1 != 3ll ) goto label$55;
	TMP$94$1 = -1ll;
	goto label$161;
	label$55:;
	TMP$94$1 = 0ll;
	label$161:;
	struct $8FBSYMBOL* vr$1 = SYMBADDPROCPARAM( PROC$1, (uint8*)0ull, DTYPE$1, (struct $8FBSYMBOL*)0ull, TMP$94$1, PMODE$1, 0ll, 0ll );
	fb$result$1 = vr$1;
	label$50:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HPARAMDECL( struct $8FBSYMBOL* PROC$1, int64 PROC_MODE$1, int64 ISPROTO$1 )
{
	uint8* TMP$105$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$56:;
	static uint8 IDTB$1[8][129];
	static struct $8FBARRAY1IcE tmp$95$1 = { (uint8*)IDTB$1, (uint8*)IDTB$1, 1032ll, 129ll, 1ll, 49ll, { { 8ll, 0ll, 7ll } } };
	static int64 RECLEVEL$1 = 0ll;
	uint8* ID$1;
	int64 DTYPE$1;
	int64 MODE$1;
	int64 ATTRIB$1;
	int64 DIMENSIONS$1;
	int64 READID$1;
	int64 DOTPOS$1;
	int64 DOSKIP$1;
	int64 USE_DEFAULT$1;
	int64 HAVE_BOUNDS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* PARAM$1;
	static struct $7ASTNODE* EXPRTB$1[8][2];
	static struct $8FBARRAY2IP7ASTNODEE tmp$96$1 = { (struct $7ASTNODE**)EXPRTB$1, (struct $7ASTNODE**)EXPRTB$1, 128ll, 8ll, 2ll, 50ll, { { 8ll, 0ll, 7ll }, { 2ll, 0ll, 1ll } } };
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	ATTRIB$1 = 0ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 46ll ) goto label$59;
	{
		int64 vr$2 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$2 != 46ll ) goto label$61;
		{
			LEXSKIPTOKEN( 0ll );
			LEXSKIPTOKEN( 0ll );
			int64 vr$3 = LEXGETTOKEN( 0ll );
			if( vr$3 == 46ll ) goto label$63;
			{
				HPARAMERROR( PROC$1, (uint8*)"...", 59ll, 1ll );
				HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
				HMOCKPARAM( PROC$1, 4ll );
			}
			goto label$62;
			label$63:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$62:;
			if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 0ll ) goto label$65;
			{
				HPARAMERROR( PROC$1, (uint8*)"...", 313ll, 1ll );
				struct $8FBSYMBOL* vr$6 = HMOCKPARAM( PROC$1, 4ll );
				fb$result$1 = vr$6;
				goto label$57;
			}
			label$65:;
			label$64:;
			if( PROC_MODE$1 == 3ll ) goto label$67;
			{
				HPARAMERROR( PROC$1, (uint8*)"...", 312ll, 1ll );
				struct $8FBSYMBOL* vr$7 = HMOCKPARAM( PROC$1, 4ll );
				fb$result$1 = vr$7;
				goto label$57;
			}
			label$67:;
			label$66:;
			struct $8FBSYMBOL* vr$8 = SYMBADDPROCPARAM( PROC$1, (uint8*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll, 4ll, 0ll, 0ll );
			fb$result$1 = vr$8;
			goto label$57;
		}
		goto label$60;
		label$61:;
		{
			HPARAMERROR( PROC$1, (uint8*)"...", 59ll, 1ll );
			HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
			struct $8FBSYMBOL* vr$9 = HMOCKPARAM( PROC$1, 4ll );
			fb$result$1 = vr$9;
			goto label$57;
		}
		label$60:;
	}
	label$59:;
	label$58:;
	{
		int64 TMP$98$2;
		int64 vr$10 = LEXGETTOKEN( 0ll );
		TMP$98$2 = vr$10;
		if( TMP$98$2 != 319ll ) goto label$69;
		label$70:;
		{
			MODE$1 = 1ll;
			LEXSKIPTOKEN( 2048ll );
		}
		goto label$68;
		label$69:;
		if( TMP$98$2 != 320ll ) goto label$71;
		label$72:;
		{
			MODE$1 = 2ll;
			LEXSKIPTOKEN( 2048ll );
		}
		goto label$68;
		label$71:;
		{
			MODE$1 = -1ll;
		}
		label$73:;
		label$68:;
	}
	{
		int64 TMP$99$2;
		int64 vr$11 = LEXGETCLASS( 0ll );
		TMP$99$2 = vr$11;
		if( TMP$99$2 != 0ll ) goto label$75;
		label$76:;
		{
			READID$1 = -1ll;
		}
		goto label$74;
		label$75:;
		if( TMP$99$2 == 1ll ) goto label$78;
		label$79:;
		if( TMP$99$2 != 2ll ) goto label$77;
		label$78:;
		{
			if( ISPROTO$1 != 0ll ) goto label$81;
			{
				uint8* vr$12 = LEXGETTEXT(  );
				HPARAMERROR( PROC$1, vr$12, 59ll, 1ll );
				HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
				struct $8FBSYMBOL* vr$13 = HMOCKPARAM( PROC$1, MODE$1 );
				fb$result$1 = vr$13;
				goto label$57;
			}
			label$81:;
			label$80:;
			int64 vr$14 = LEXGETTOKEN( 0ll );
			READID$1 = (int64)-(vr$14 != 376ll);
		}
		goto label$74;
		label$77:;
		{
			int64 vr$16 = LEXGETTOKEN( 0ll );
			if( ((int64)-(vr$16 != 40ll) | (int64)-(ISPROTO$1 == 0ll)) == 0ll ) goto label$84;
			{
				uint8* vr$20 = LEXGETTEXT(  );
				HPARAMERROR( PROC$1, vr$20, 59ll, 1ll );
				HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
				struct $8FBSYMBOL* vr$21 = HMOCKPARAM( PROC$1, MODE$1 );
				fb$result$1 = vr$21;
				goto label$57;
			}
			label$84:;
			label$83:;
			READID$1 = 0ll;
		}
		label$82:;
		label$74:;
	}
	if( RECLEVEL$1 < 8ll ) goto label$86;
	{
		ERRREPORT( 27ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
		struct $8FBSYMBOL* vr$22 = HMOCKPARAM( PROC$1, MODE$1 );
		fb$result$1 = vr$22;
		goto label$57;
	}
	label$86:;
	label$85:;
	ID$1 = (uint8*)((int64)(uint8*)IDTB$1 + (RECLEVEL$1 * 129ll));
	fb_StrAssign( (void*)ID$1, 0ll, (void*)"", 1ll, 0 );
	if( READID$1 == 0ll ) goto label$88;
	{
		uint8* vr$25 = LEXGETTEXT(  );
		fb_StrAssign( (void*)ID$1, 0ll, (void*)vr$25, 0ll, 0 );
		DOTPOS$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2096ll);
		LEXCHECKTOKEN( 4096ll );
		DTYPE$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll);
		LEXSKIPTOKEN( 0ll );
	}
	goto label$87;
	label$88:;
	{
		DTYPE$1 = 2147483648ll;
	}
	label$87:;
	DIMENSIONS$1 = 0ll;
	HAVE_BOUNDS$1 = 0ll;
	int64 vr$30 = LEXGETTOKEN( 0ll );
	if( vr$30 != 40ll ) goto label$90;
	{
		LEXSKIPTOKEN( 0ll );
		if( MODE$1 == -1ll ) goto label$92;
		{
			HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
		}
		label$92:;
		label$91:;
		MODE$1 = 3ll;
		int64 vr$31 = LEXGETTOKEN( 0ll );
		if( vr$31 != 41ll ) goto label$94;
		{
			DIMENSIONS$1 = -1ll;
		}
		goto label$93;
		label$94:;
		{
			CARRAYDECL( &DIMENSIONS$1, &HAVE_BOUNDS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$96$1 );
			if( HAVE_BOUNDS$1 == 0ll ) goto label$96;
			{
				HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
			}
			label$96:;
			label$95:;
		}
		label$93:;
		int64 vr$34 = HMATCH( 41ll, 0ll );
		if( vr$34 != 0ll ) goto label$98;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		}
		label$98:;
		label$97:;
	}
	label$90:;
	label$89:;
	USE_DEFAULT$1 = 0ll;
	if( MODE$1 != -1ll ) goto label$100;
	{
		MODE$1 = *(int64*)((uint8*)&ENV$ + 1504ll);
		USE_DEFAULT$1 = -1ll;
		if( (*(int64*)((uint8*)&ENV$ + 400ll) & 2ll) == 0ll ) goto label$102;
		{
			HPARAMWARNING( PROC$1, ID$1, 15ll, 1ll );
		}
		label$102:;
		label$101:;
	}
	label$100:;
	label$99:;
	DOSKIP$1 = 0ll;
	int64 vr$36 = LEXGETTOKEN( 0ll );
	if( vr$36 != 376ll ) goto label$104;
	{
		int64 TMP$100$2;
		int64 TMP$101$2;
		LEXSKIPTOKEN( 2048ll );
		if( DTYPE$1 == 2147483648ll ) goto label$106;
		{
			HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
			goto label$57;
		}
		label$106:;
		label$105:;
		RECLEVEL$1 = RECLEVEL$1 + 1ll;
		int64 OPTIONS$2;
		OPTIONS$2 = 1ll;
		if( MODE$1 != 2ll ) goto label$108;
		{
			if( ISPROTO$1 == 0ll ) goto label$110;
			{
				OPTIONS$2 = OPTIONS$2 | 2ll;
			}
			label$110:;
			label$109:;
			OPTIONS$2 = OPTIONS$2 & -2ll;
			OPTIONS$2 = OPTIONS$2 | 4ll;
		}
		label$108:;
		label$107:;
		TMP$101$2 = 0ll;
		TMP$100$2 = 0ll;
		int64 vr$45 = CSYMBOLTYPE( &DTYPE$1, &SUBTYPE$1, &TMP$100$2, &TMP$101$2, OPTIONS$2 );
		if( vr$45 != 0ll ) goto label$112;
		{
			HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
			DTYPE$1 = 8ll;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
			DOSKIP$1 = -1ll;
		}
		label$112:;
		label$111:;
		if( MODE$1 != 1ll ) goto label$114;
		{
			HCOMPLAINIFABSTRACTCLASS( DTYPE$1, SUBTYPE$1 );
		}
		label$114:;
		label$113:;
		RECLEVEL$1 = RECLEVEL$1 + -1ll;
	}
	goto label$103;
	label$104:;
	{
		if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 4194304ll) != 0ll ) goto label$116;
		{
			ERRREPORTNOTALLOWED( 4194304ll, 147ll, (uint8*)0ull );
			DOSKIP$1 = -1ll;
		}
		goto label$115;
		label$116:;
		{
			if( READID$1 != 0ll ) goto label$118;
			{
				HPARAMERROR( PROC$1, (uint8*)0ull, 59ll, 1ll );
				DOSKIP$1 = -1ll;
			}
			label$118:;
			label$117:;
		}
		label$115:;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
		ATTRIB$1 = ATTRIB$1 | 1048576ll;
	}
	label$103:;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 0ll ) goto label$120;
	{
		if( USE_DEFAULT$1 == 0ll ) goto label$122;
		{
			int64 vr$49 = SYMBGETDEFAULTPARAMMODE( DTYPE$1, SUBTYPE$1 );
			MODE$1 = vr$49;
		}
		label$122:;
		label$121:;
	}
	label$120:;
	label$119:;
	if( DTYPE$1 != 2147483648ll ) goto label$124;
	{
		int64 vr$50 = SYMBGETDEFTYPE( (uint8*)ID$1 );
		DTYPE$1 = vr$50;
	}
	label$124:;
	label$123:;
	if( DOSKIP$1 == 0ll ) goto label$126;
	{
		HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
	}
	label$126:;
	label$125:;
	{
		int64 TMP$102$2;
		uint64 TMP$103$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$127;
		TMP$102$2 = 24ll;
		goto label$162;
		label$127:;
		TMP$102$2 = DTYPE$1 & 31ll;
		label$162:;
		TMP$103$2 = (uint64)TMP$102$2;
		goto label$129;
		label$130:;
		{
			int64 TMP$104$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$131;
			TMP$104$3 = 24ll;
			goto label$163;
			label$131:;
			TMP$104$3 = DTYPE$1 & 31ll;
			label$163:;
			if( ((int64)-(MODE$1 == 1ll) | (int64)-(TMP$104$3 == 18ll)) == 0ll ) goto label$133;
			{
				HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
				DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
			}
			label$133:;
			label$132:;
		}
		goto label$128;
		label$134:;
		{
			if( ISPROTO$1 != 0ll ) goto label$136;
			{
				HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
				DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
			}
			goto label$135;
			label$136:;
			{
				if( MODE$1 != 1ll ) goto label$138;
				{
					HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
					DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
				}
				label$138:;
				label$137:;
			}
			label$135:;
		}
		goto label$128;
		label$139:;
		{
			if( ISPROTO$1 != 0ll ) goto label$141;
			{
				if( DOTPOS$1 <= 0ll ) goto label$143;
				{
					HPARAMERROR( PROC$1, ID$1, 59ll, 1ll );
				}
				label$143:;
				label$142:;
			}
			label$141:;
			label$140:;
		}
		goto label$128;
		label$129:;
		static const void* tmp$106[21ll] = {
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
		if( TMP$103$2 > 20ull ) goto label$128;
		goto *tmp$106[TMP$103$2 - 0ull];
		label$128:;
	}
	if( ISPROTO$1 == 0ll ) goto label$144;
	TMP$105$1 = (uint8*)0ull;
	goto label$164;
	label$144:;
	TMP$105$1 = ID$1;
	label$164:;
	struct $8FBSYMBOL* vr$85 = SYMBADDPROCPARAM( PROC$1, TMP$105$1, DTYPE$1, SUBTYPE$1, DIMENSIONS$1, MODE$1, ATTRIB$1, 0ll );
	PARAM$1 = vr$85;
	if( PARAM$1 != (struct $8FBSYMBOL*)0ull ) goto label$146;
	{
		goto label$57;
	}
	label$146:;
	label$145:;
	if( ISPROTO$1 != 0ll ) goto label$148;
	{
		if( *(int64*)((uint8*)PARAM$1 + 80ll) <= (*(int64*)((uint8*)&ENV$ + 592ll) << (2ll & 63ll)) ) goto label$150;
		{
			if( (*(int64*)((uint8*)&ENV$ + 400ll) & 4ll) == 0ll ) goto label$152;
			{
				HPARAMWARNING( PROC$1, ID$1, 17ll, 0ll );
			}
			label$152:;
			label$151:;
		}
		label$150:;
		label$149:;
	}
	label$148:;
	label$147:;
	int64 vr$89 = CASSIGNTOKEN(  );
	if( vr$89 == 0ll ) goto label$154;
	{
		if( MODE$1 != 3ll ) goto label$156;
		{
			int64 vr$90 = LEXGETTOKEN( 0ll );
			if( vr$90 != 372ll ) goto label$158;
			{
				LEXSKIPTOKEN( 2048ll );
				*($12FB_SYMBSTATS*)((uint8*)PARAM$1 + 24ll) = *(int64*)((uint8*)PARAM$1 + 24ll) | 2048ll;
			}
			goto label$157;
			label$158:;
			{
				HPARAMERROR( PROC$1, ID$1, 59ll, 0ll );
				HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
			}
			label$157:;
		}
		goto label$155;
		label$156:;
		{
			struct $7ASTNODE* OPTEXPR$3;
			struct $7ASTNODE* vr$94 = HOPTIONALEXPR( PROC$1, ID$1, PARAM$1 );
			OPTEXPR$3 = vr$94;
			if( OPTEXPR$3 == (struct $7ASTNODE*)0ull ) goto label$160;
			{
				SYMBMAKEPARAMOPTIONAL( PROC$1, PARAM$1, OPTEXPR$3 );
			}
			goto label$159;
			label$160:;
			{
				HPARAMERROR( PROC$1, ID$1, 59ll, 0ll );
				HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
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
