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
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
typedef int64 $10FB_SYMBOPT;
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 72 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 240 );
typedef int64 $14FB_SYMBFINDOPT;
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 24 );
typedef int64 $9FB_ERRMSG;
typedef int64 $22FB_OVLPROC_MATCH_SCORE;
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 80 );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16FB_CALL_ARG_LIST {
	int64 ARGS;
	struct $11FB_CALL_ARG* HEAD;
	struct $11FB_CALL_ARG* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CALL_ARG_LIST ) == 24 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
void free( void* );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatByref( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_HEX_l( uint64 );
static void fb_ctor__symbzproc( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int64, uint8*, int64 );
int64 FBIS64BIT( void );
int64 ASTISEQUALPARAMINIT( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int64 );
typedef int64 $11AST_CONVOPT;
int64 ASTCHECKCONVNONPTRTOPTR( int64, int64, struct $7ASTNODE*, $11AST_CONVOPT );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL*, uint8*, int64, int64, int64 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int64, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64* );
void SYMBPROCSETVTABLEINDEX( struct $8FBSYMBOL*, int64 );
int64 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
int64 SYMBAREPROCMODESEQUAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int64, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( uint8*, struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB*, struct $8FBSYMBOL**, struct $10FBSYMBOLTB**, struct $8FBHASHTB** );
struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64 );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
void _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( int64, struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
void SYMBPROCALLOCEXT( struct $8FBSYMBOL* );
void SYMBPROCFREEEXT( struct $8FBSYMBOL* );
int64 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 SYMBCALCARGLEN( int64, struct $8FBSYMBOL*, int64 );
int64 SYMBCALCPARAMLEN( int64, struct $8FBSYMBOL*, $12FB_PARAMMODE );
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int64, struct $8FBSYMBOL* );
int64 TYPEISTRIVIAL( int64, struct $8FBSYMBOL* );
int64 TYPEHASFWDREFINSIGNATURE( int64, struct $8FBSYMBOL* );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int64, struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
void SYMBMANGLERESETABBREV( void );
typedef int64 $12FB_MANGLEOPT;
void SYMBMANGLETYPE( FBSTRING*, int64, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
FBSTRING* HDUMPDYNAMICARRAYDIMENSIONS( int64 );
FBSTRING* SYMBTYPETOSTR( int64, struct $8FBSYMBOL*, int64, int64 );
int64 SYMBGETDEFTYPE( uint8* );
void SYMBSETCOMPCTORHEAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBCHECKCOMPCTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBSETCOMPDTOR1( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBSETCOMPDTOR0( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR0( struct $8FBSYMBOL* );
void SYMBCHECKCOMPLETOP( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
void SYMBSETCOMPOPOVLHEAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
int64 SYMBCOMPADDVIRTUAL( struct $8FBSYMBOL* );
int64 SYMBISPARENTNAMESPACE( $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
int64 SYMBGETDEFAULTPARAMMODE( int64, struct $8FBSYMBOL* );
int64 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* );
static int64 HALIGNTOPOW2( int64, int64 );
static int64 HCANOVERLOAD( struct $8FBSYMBOL* );
static int64 HCANOVERLOADBYDESC( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HADDOVLPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64 );
static struct $8FBSYMBOL* HADDOPOVLPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $6AST_OP, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
static void HSETUPPROCREGISTERPARAMETERS( struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HSETUPPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
static $22FB_OVLPROC_MATCH_SCORE HCALCTYPESDIFF( int64, struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE );
static $22FB_OVLPROC_MATCH_SCORE HCHECKOVLPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, int64, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
static int64 HCHECKOVLPROC( struct $8FBSYMBOL*, int64, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT, struct $8FBSYMBOL*, int64*, int64* );
static $22FB_OVLPROC_MATCH_SCORE HCHECKCASTOVL( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, $14FB_SYMBFINDOPT );
static void HDELPARAMS( struct $8FBSYMBOL* );
static struct $20FB_GLOBCTORLIST_ITEM* HADDTOGLOBCTORLIST( struct $15FB_GLOBCTORLIST*, struct $8FBSYMBOL* );
static $22FB_OVLPROC_MATCH_SCORE SYMBCALCPARAMMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HSUBORFUNCTOSTR( FBSTRING*, struct $8FBSYMBOL* );
static void HPROCMODETOSTR( FBSTRING*, struct $8FBSYMBOL* );
static void HPARAMSTOSTR( FBSTRING*, struct $8FBSYMBOL* );
static void HRESULTTOSTR( FBSTRING*, struct $8FBSYMBOL* );
extern struct $10AST_OPINFO AST_OPTB$[121];
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
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
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
extern int64 SYMB_DTYPEMATCHTB$[16][16];
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
typedef int64 $8FB_TOKEN;
typedef int64 $15FB_CMPSTMT_MASK;
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int64 DTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_FORELM ) == 24 );
struct $13FB_CMPSTMTSTK;
struct $14FB_CMPSTMT_FOR {
	struct $7ASTNODE* OUTERSCOPENODE;
	struct $17FB_CMPSTMT_FORELM CNT;
	struct $17FB_CMPSTMT_FORELM END;
	struct $17FB_CMPSTMT_FORELM STP;
	struct $17FB_CMPSTMT_FORELM ISPOS;
	struct $8FBSYMBOL* TESTLABEL;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	int64 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 152 );
struct $13FB_CMPSTMT_DO {
	int64 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 40 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 24 );
struct $13FB_CMPSTMT_IF {
	int64 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int64 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 32 );
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int64 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 32 );
struct $19FB_CMPSTMT_SELCONST {
	int64 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int64 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 32 );
struct $17FB_CMPSTMT_SELECT {
	int64 ISCONST;
	struct $8FBSYMBOL* SYM;
	int64 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 88 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int64 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 24 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int64 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 16 );
typedef int64 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 8 );
struct $16FB_CMPSTMT_SCOPE {
	int64 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 8 );
struct $13FB_CMPSTMTSTK {
	int64 ID;
	$15FB_CMPSTMT_MASK ALLOWMASK;
	struct $7ASTNODE* SCOPENODE;
	union {
		struct $14FB_CMPSTMT_FOR FOR;
		struct $13FB_CMPSTMT_DO DO;
		struct $16FB_CMPSTMT_WHILE WHILE;
		struct $13FB_CMPSTMT_IF IF;
		struct $15FB_CMPSTMT_PROC PROC;
		struct $17FB_CMPSTMT_SELECT SELECT;
		struct $15FB_CMPSTMT_WITH WITH;
		struct $20FB_CMPSTMT_NAMESPACE NSPC;
		struct $17FB_CMPSTMT_EXTERN EXT;
		struct $16FB_CMPSTMT_SCOPE SCP;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 176 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 64 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int64 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 176 );
typedef int64 $12FB_PARSEROPT;
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int64 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint64 STAGE;
	uint64 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int64 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int64 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int64 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 336 );
extern struct $9PARSERCTX PARSER$;

void SYMBPROCINIT( void )
{
	label$10:;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 198048ll) = (struct $20FB_GLOBCTORLIST_ITEM*)0ull;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 198056ll) = (struct $20FB_GLOBCTORLIST_ITEM*)0ull;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 198064ll), 8ll, 16ll, 6ll );
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 198128ll) = (struct $20FB_GLOBCTORLIST_ITEM*)0ull;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 198136ll) = (struct $20FB_GLOBCTORLIST_ITEM*)0ull;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 198144ll), 8ll, 16ll, 6ll );
	label$11:;
}

void SYMBPROCEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 198144ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 198064ll) );
	label$13:;
}

void SYMBPROCALLOCEXT( struct $8FBSYMBOL* PROC$1 )
{
	label$14:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) != (struct $10FB_PROCEXT*)0ull ) goto label$17;
	{
		void* vr$1 = XCALLOCATE( 152 );
		*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) = (struct $10FB_PROCEXT*)vr$1;
	}
	label$17:;
	label$16:;
	label$15:;
}

void SYMBPROCFREEEXT( struct $8FBSYMBOL* PROC$1 )
{
	label$18:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) == (struct $10FB_PROCEXT*)0ull ) goto label$21;
	{
		free( *(void**)((uint8*)PROC$1 + 208ll) );
		*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) = (struct $10FB_PROCEXT*)0ull;
	}
	label$21:;
	label$20:;
	label$19:;
}

int64 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$22:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) == 0ll ) goto label$25;
	{
		goto label$23;
	}
	label$25:;
	label$24:;
	if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 20ll ) goto label$27;
	{
		int64 TMP$93$2;
		if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) == (struct $8FBSYMBOL*)0ull ) goto label$28;
		TMP$93$2 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) + 224ll) != 0ll);
		goto label$31;
		label$28:;
		TMP$93$2 = 0ll;
		label$31:;
		if( TMP$93$2 == 0ll ) goto label$30;
		{
			goto label$23;
		}
		label$30:;
		label$29:;
		fb$result$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 160ll) & 511ll) == 52ll);
	}
	label$27:;
	label$26:;
	label$23:;
	return fb$result$1;
}

int64 SYMBCALCARGLEN( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 MODE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$34:;
	{
		if( MODE$1 == 2ll ) goto label$38;
		label$39:;
		if( MODE$1 != 3ll ) goto label$37;
		label$38:;
		{
			fb$result$1 = *(int64*)((uint8*)&ENV$ + 592ll);
			goto label$35;
		}
		label$37:;
		label$36:;
	}
	int64 vr$1 = TYPEISTRIVIAL( DTYPE$1, SUBTYPE$1 );
	if( vr$1 != 0ll ) goto label$41;
	{
		fb$result$1 = *(int64*)((uint8*)&ENV$ + 592ll);
		goto label$35;
	}
	label$41:;
	label$40:;
	int64 vr$2 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
	int64 vr$3 = HALIGNTOPOW2( vr$2, *(int64*)((uint8*)&ENV$ + 592ll) );
	fb$result$1 = vr$3;
	label$35:;
	return fb$result$1;
}

int64 SYMBCALCPARAMLEN( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $12FB_PARAMMODE MODE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$42:;
	if( MODE$1 != 4ll ) goto label$45;
	{
		fb$result$1 = 0ll;
	}
	goto label$44;
	label$45:;
	{
		int64 vr$1 = SYMBCALCARGLEN( DTYPE$1, SUBTYPE$1, MODE$1 );
		fb$result$1 = vr$1;
	}
	label$44:;
	label$43:;
	return fb$result$1;
}

int64 SYMBPROCCALCSTDCALLSUFFIXN( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$46:;
	int64 LENGTH$1;
	LENGTH$1 = 0ll;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$48:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$49;
	{
		int64 vr$6 = TYPEISTRIVIAL( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
		if( ((int64)-(*(int64*)((uint8*)PARAM$1 + 96ll) == 1ll) & ~vr$6) == 0ll ) goto label$51;
		{
			int64 vr$11 = SYMBCALCLEN( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
			LENGTH$1 = LENGTH$1 + vr$11;
		}
		goto label$50;
		label$51:;
		{
			LENGTH$1 = LENGTH$1 + *(int64*)((uint8*)PARAM$1 + 80ll);
		}
		label$50:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	goto label$48;
	label$49:;
	fb$result$1 = LENGTH$1;
	label$47:;
	return fb$result$1;
}

int64 SYMBPROCCALCBYTESTOPOP( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$52:;
	int64 BYTESTOPOP$1;
	BYTESTOPOP$1 = 0ll;
	int64 CALLEE_CLEANUP$1;
	CALLEE_CLEANUP$1 = 0ll;
	{
		$11FB_FUNCMODE TMP$94$2;
		TMP$94$2 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll);
		if( TMP$94$2 == 5ll ) goto label$56;
		label$57:;
		if( TMP$94$2 != 6ll ) goto label$55;
		label$56:;
		{
			int64 vr$2 = FBIS64BIT(  );
			if( vr$2 != 0ll ) goto label$59;
			{
				if( *(int64*)((uint8*)&ENV$ + 216ll) != 0ll ) goto label$61;
				{
					CALLEE_CLEANUP$1 = -1ll;
				}
				label$61:;
				label$60:;
			}
			label$59:;
			label$58:;
		}
		goto label$54;
		label$55:;
		{
			CALLEE_CLEANUP$1 = (int64)-(*(int64*)((uint8*)PROC$1 + 152ll) != 3ll);
		}
		label$62:;
		label$54:;
	}
	if( CALLEE_CLEANUP$1 == 0ll ) goto label$64;
	{
		struct $8FBSYMBOL* PARAM$2;
		PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
		label$65:;
		if( PARAM$2 == (struct $8FBSYMBOL*)0ull ) goto label$66;
		{
			if( *(int64*)((uint8*)PARAM$2 + 136ll) != 0ll ) goto label$68;
			{
				BYTESTOPOP$1 = BYTESTOPOP$1 + *(int64*)((uint8*)PARAM$2 + 80ll);
			}
			label$68:;
			label$67:;
			PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 312ll);
		}
		goto label$65;
		label$66:;
	}
	label$64:;
	label$63:;
	int64 vr$10 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$10 == 0ll ) goto label$70;
	{
		if( (CALLEE_CLEANUP$1 | (int64)-((*(int64*)((uint8*)&ENV$ + 568ll) & 8ll) != 0ll)) == 0ll ) goto label$72;
		{
			BYTESTOPOP$1 = BYTESTOPOP$1 + *(int64*)((uint8*)&ENV$ + 592ll);
		}
		label$72:;
		label$71:;
	}
	label$70:;
	label$69:;
	fb$result$1 = BYTESTOPOP$1;
	label$53:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL* PROC$1, uint8* ID$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 DIMENSIONS$1, int64 MODE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	int64 TMP$95$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$73:;
	struct $8FBSYMBOL* PARAM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$3 = SYMBNEWSYMBOL( 1ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)((uint8*)PROC$1 + 128ll), (struct $8FBHASHTB*)0ull, 4ll, (uint8*)ID$1, (uint8*)0ull, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0ll );
	PARAM$1 = vr$3;
	if( PARAM$1 != (struct $8FBSYMBOL*)0ull ) goto label$76;
	{
		goto label$74;
	}
	label$76:;
	label$75:;
	*(int16*)((uint8*)PROC$1 + 120ll) = (int16)((int64)*(int16*)((uint8*)PROC$1 + 120ll) + 1ll);
	int64 vr$9 = SYMBCALCPARAMLEN( DTYPE$1, SUBTYPE$1, MODE$1 );
	*(int64*)((uint8*)PARAM$1 + 80ll) = vr$9;
	*(int64*)((uint8*)PARAM$1 + 136ll) = 0ll;
	*($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll) = MODE$1;
	*(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) = (struct $7ASTNODE*)0ull;
	*(int64*)((uint8*)PARAM$1 + 120ll) = DIMENSIONS$1;
	if( MODE$1 != 3ll ) goto label$78;
	{
		struct $8FBSYMBOL* vr$15 = SYMBADDARRAYDESCRIPTORTYPE( DIMENSIONS$1, DTYPE$1, SUBTYPE$1 );
		*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 128ll) = vr$15;
	}
	goto label$77;
	label$78:;
	{
		*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 128ll) = (struct $8FBSYMBOL*)0ull;
	}
	label$77:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$79;
	TMP$95$1 = 24ll;
	goto label$86;
	label$79:;
	TMP$95$1 = DTYPE$1 & 31ll;
	label$86:;
	if( TMP$95$1 != 20ll ) goto label$81;
	{
		if( MODE$1 != 1ll ) goto label$83;
		{
			int64 vr$20 = SYMBISPARENTNAMESPACE( DTYPE$1, SUBTYPE$1, (struct $8FBSYMBOL*)0ull );
			if( vr$20 == 0ll ) goto label$85;
			{
				*(int32*)((uint8*)SUBTYPE$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) | 32ll);
			}
			label$85:;
			label$84:;
		}
		label$83:;
		label$82:;
	}
	label$81:;
	label$80:;
	fb$result$1 = PARAM$1;
	label$74:;
	return fb$result$1;
}

void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* OPTEXPR$1 )
{
	label$87:;
	if( OPTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$90;
	{
		goto label$88;
	}
	label$90:;
	label$89:;
	*(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) = OPTEXPR$1;
	*(int16*)((uint8*)PROC$1 + 122ll) = (int16)((int64)*(int16*)((uint8*)PROC$1 + 122ll) + 1ll);
	label$88:;
}

int64 SYMBISPROCOVERLOADOF( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* HEAD_PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$91:;
	struct $8FBSYMBOL* F$1;
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$94;
	{
		fb$result$1 = 0ll;
		goto label$92;
	}
	label$94:;
	label$93:;
	if( PROC$1 != HEAD_PROC$1 ) goto label$96;
	{
		fb$result$1 = -1ll;
		goto label$92;
	}
	label$96:;
	label$95:;
	if( (*(int64*)((uint8*)HEAD_PROC$1 + 16ll) & 1ll) != 0ll ) goto label$98;
	{
		fb$result$1 = 0ll;
		goto label$92;
	}
	label$98:;
	label$97:;
	F$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_PROC$1 + 200ll);
	label$99:;
	if( F$1 == (struct $8FBSYMBOL*)0ull ) goto label$100;
	{
		if( PROC$1 != F$1 ) goto label$102;
		{
			fb$result$1 = -1ll;
			goto label$92;
		}
		label$102:;
		label$101:;
		F$1 = *(struct $8FBSYMBOL**)((uint8*)F$1 + 200ll);
	}
	goto label$99;
	label$100:;
	fb$result$1 = 0ll;
	goto label$92;
	label$92:;
	return fb$result$1;
}

void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* PROC$1 )
{
	label$103:;
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)PROC$1 + 56ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll);
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) == 0ll ) goto label$106;
	{
		DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
	}
	label$106:;
	label$105:;
	{
		int64 TMP$96$2;
		TMP$96$2 = DTYPE$1 & 511ll;
		if( TMP$96$2 == 17ll ) goto label$109;
		label$110:;
		if( TMP$96$2 != 7ll ) goto label$108;
		label$109:;
		{
			DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
		}
		goto label$107;
		label$108:;
		if( TMP$96$2 != 20ll ) goto label$111;
		label$112:;
		{
			int64 vr$23 = SYMBISPARENTNAMESPACE( DTYPE$1, SUBTYPE$1, (struct $8FBSYMBOL*)0ull );
			if( vr$23 == 0ll ) goto label$114;
			{
				*(int32*)((uint8*)SUBTYPE$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) | 64ll);
			}
			goto label$113;
			label$114:;
			{
				DTYPE$1 = *(int64*)((uint8*)SUBTYPE$1 + 216ll);
				if( (DTYPE$1 & 31ll) == 20ll ) goto label$116;
				{
					SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
				}
				label$116:;
				label$115:;
			}
			label$113:;
		}
		label$111:;
		label$107:;
	}
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 160ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168ll) = SUBTYPE$1;
	label$104:;
}

struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL* PROC$1, uint8* ID$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$319:;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
	SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)PARENT$1 + 96ll);
	HASHTB$1 = (struct $8FBHASHTB*)((uint8*)PARENT$1 + 120ll);
	ATTRIB$1 = ATTRIB$1 | 1ll;
	struct $8FBSYMBOL* vr$6 = HSETUPPROC( PROC$1, PARENT$1, SYMTB$1, HASHTB$1, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, OPTIONS$1 );
	fb$result$1 = vr$6;
	label$320:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDOPERATOR( struct $8FBSYMBOL* PROC$1, $6AST_OP OP$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$321:;
	struct $8FBSYMBOL* SYM$1;
	SYMBPROCALLOCEXT( PROC$1 );
	*($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll) = OP$1;
	struct $8FBSYMBOL* vr$3 = SYMBADDPROC( PROC$1, (uint8*)0ull, (uint8*)ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, OPTIONS$1 );
	SYM$1 = vr$3;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$324;
	{
		SYMBPROCFREEEXT( PROC$1 );
		goto label$322;
	}
	label$324:;
	label$323:;
	fb$result$1 = SYM$1;
	label$322:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDCTOR( struct $8FBSYMBOL* PROC$1, uint8* ID_ALIAS$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$325:;
	struct $8FBSYMBOL* vr$1 = SYMBADDPROC( PROC$1, (uint8*)0ull, (uint8*)ID_ALIAS$1, 0ll, (struct $8FBSYMBOL*)0ull, ATTRIB$1, PATTRIB$1, MODE$1, OPTIONS$1 );
	fb$result$1 = vr$1;
	label$326:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( uint8* ID$1, struct $8FBSYMBOL* PROC$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1, struct $8FBSYMBOL** PARENT$1, struct $10FBSYMBOLTB** SYMTB$1, struct $8FBHASHTB** HASHTB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$327:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	if( ((int64)-(*(uint64*)((uint8*)&PARSER$ + 200ll) == 0ull) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll))) == 0ll ) goto label$330;
	{
		*PARENT$1 = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll);
		*SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*PARENT$1 + 96ll);
		*HASHTB$1 = (struct $8FBHASHTB*)((uint8*)*PARENT$1 + 120ll);
		*ATTRIB$1 = *(int64*)ATTRIB$1 | 1ll;
	}
	goto label$329;
	label$330:;
	{
		*PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
		*SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll);
		*HASHTB$1 = (struct $8FBHASHTB*)((uint8*)*PARENT$1 + 120ll);
		*ATTRIB$1 = *(int64*)ATTRIB$1 | 128ll;
	}
	label$329:;
	struct $10FBSYMCHAIN* vr$28 = SYMBLOOKUPAT( *PARENT$1, (uint8*)ID$1, -1ll, 0ll );
	CHAIN_$1 = vr$28;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$332;
	{
		if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$334;
		{
			fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			goto label$328;
		}
		label$334:;
		label$333:;
		label$335:;
		{
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = *(struct $8FBSYMBOL**)CHAIN_$1;
			struct $8FBSYMBOL* LOOKUP_PARAM$3;
			struct $8FBSYMBOL* PROC_PARAM$3;
			label$338:;
			{
				LOOKUP_PARAM$3 = *(struct $8FBSYMBOL**)((uint8*)SYM$3 + 136ll);
				PROC_PARAM$3 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
				label$341:;
				if( ((int64)-(LOOKUP_PARAM$3 != (struct $8FBSYMBOL*)0ull) & (int64)-(PROC_PARAM$3 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$342;
				{
					int64 vr$38 = ASTISEQUALPARAMINIT( *(struct $7ASTNODE**)((uint8*)LOOKUP_PARAM$3 + 112ll), *(struct $7ASTNODE**)((uint8*)PROC_PARAM$3 + 112ll) );
					if( vr$38 != 0ll ) goto label$344;
					{
						goto label$342;
					}
					label$344:;
					label$343:;
					LOOKUP_PARAM$3 = *(struct $8FBSYMBOL**)((uint8*)LOOKUP_PARAM$3 + 312ll);
					PROC_PARAM$3 = *(struct $8FBSYMBOL**)((uint8*)PROC_PARAM$3 + 312ll);
				}
				goto label$341;
				label$342:;
				if( ((int64)-(LOOKUP_PARAM$3 == (struct $8FBSYMBOL*)0ull) & (int64)-(PROC_PARAM$3 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$346;
				{
					fb$result$1 = SYM$3;
					goto label$328;
				}
				label$346:;
				label$345:;
				SYM$3 = *(struct $8FBSYMBOL**)((uint8*)SYM$3 + 280ll);
			}
			label$340:;
			if( SYM$3 != (struct $8FBSYMBOL*)0ull ) goto label$338;
			label$339:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		}
		label$337:;
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$335;
		label$336:;
	}
	label$332:;
	label$331:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	goto label$328;
	label$328:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL* PROC$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64 MODE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$347:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	FBSTRING ID$1;
	__builtin_memset( &ID$1, 0, 24ll );
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 8ll) = *(int64*)((uint8*)PROC$1 + 8ll) | ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 16ll) = *(int64*)((uint8*)PROC$1 + 16ll) | PATTRIB$1;
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 56ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) = SUBTYPE$1;
	fb_StrAssign( (void*)&ID$1, -1ll, (void*)"{fbfp}", 7ll, 0 );
	SYMBMANGLETYPE( &ID$1, 22ll, PROC$1, 0ll );
	SYMBMANGLERESETABBREV(  );
	fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)"$", 2ll, 0 );
	FBSTRING* vr$13 = fb_HEX_l( (uint64)MODE$1 );
	fb_StrConcatAssign( (void*)&ID$1, -1ll, (void*)vr$13, -1ll, 0 );
	struct $8FBSYMBOL* vr$20 = SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( (uint8*)*(uint8**)&ID$1, PROC$1, &ATTRIB$1, &PATTRIB$1, &PARENT$1, &SYMTB$1, &HASHTB$1 );
	SYM$1 = vr$20;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$350;
	{
		fb$result$1 = SYM$1;
		fb_StrDelete( (FBSTRING*)&ID$1 );
		goto label$348;
	}
	label$350:;
	label$349:;
	uint8* vr$22 = SYMBUNIQUEID( (boolean)0ll );
	struct $8FBSYMBOL* vr$23 = HSETUPPROC( PROC$1, PARENT$1, SYMTB$1, HASHTB$1, (uint8*)*(uint8**)&ID$1, (uint8*)vr$22, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 133ll );
	SYM$1 = vr$23;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$352;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 16384ll;
	}
	label$352:;
	label$351:;
	fb$result$1 = SYM$1;
	fb_StrDelete( (FBSTRING*)&ID$1 );
	label$348:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* BASE_PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$353:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* vr$1 = SYMBPREADDPROC( (uint8*)0ull );
	PROC$1 = vr$1;
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 176ll) = *($21FB_PROC_RETURN_METHOD*)((uint8*)BASE_PROC$1 + 176ll);
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)BASE_PROC$1 + 136ll);
	label$355:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$356;
	{
		struct $8FBSYMBOL* P$2;
		struct $8FBSYMBOL* vr$11 = SYMBADDPROCPARAM( PROC$1, (uint8*)0ull, *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(int64*)((uint8*)PARAM$1 + 120ll), *(int64*)((uint8*)PARAM$1 + 96ll), *($13FB_SYMBATTRIB*)((uint8*)PARAM$1 + 8ll), *($13FB_PROCATTRIB*)((uint8*)PARAM$1 + 16ll) );
		P$2 = vr$11;
		if( (*(int64*)((uint8*)PARAM$1 + 24ll) & 2048ll) == 0ll ) goto label$358;
		{
			*($12FB_SYMBSTATS*)((uint8*)P$2 + 24ll) = *(int64*)((uint8*)P$2 + 24ll) | 2048ll;
		}
		label$358:;
		label$357:;
		SYMBMAKEPARAMOPTIONAL( PROC$1, P$2, *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	goto label$355;
	label$356:;
	$13FB_SYMBATTRIB ATTRIBMASK$1;
	ATTRIBMASK$1 = 2048ll;
	$13FB_PROCATTRIB PATTRIBMASK$1;
	PATTRIBMASK$1 = 2048ll;
	PATTRIBMASK$1 = PATTRIBMASK$1 | 1024ll;
	struct $8FBSYMBOL* vr$27 = SYMBADDPROCPTR( PROC$1, *(int64*)((uint8*)BASE_PROC$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)BASE_PROC$1 + 64ll), *(int64*)((uint8*)BASE_PROC$1 + 8ll) & ATTRIBMASK$1, *(int64*)((uint8*)BASE_PROC$1 + 16ll) & PATTRIBMASK$1, *(int64*)((uint8*)BASE_PROC$1 + 152ll) );
	fb$result$1 = vr$27;
	label$354:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBPREADDPROC( uint8* SYMBOL$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$359:;
	struct $8FBSYMBOL* PROC$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 8ll) );
	PROC$1 = (struct $8FBSYMBOL*)vr$2;
	*($12FB_SYMBCLASS*)PROC$1 = 3ll;
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 8ll) = 0ll;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 16ll) = 0ll;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = 0ll;
	*(uint8**)((uint8*)PROC$1 + 32ll) = SYMBOL$1;
	*(uint8**)((uint8*)PROC$1 + 40ll) = (uint8*)0ull;
	*(uint8**)((uint8*)PROC$1 + 48ll) = (uint8*)0ull;
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 56ll) = 2147483648ll;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) = (struct $8FBSYMBOL*)0ull;
	*(uint16*)((uint8*)PROC$1 + 72ll) = (uint16)0u;
	*(int16*)((uint8*)PROC$1 + 74ll) = (int16)0;
	*(int64*)((uint8*)PROC$1 + 80ll) = 0ll;
	*(int64*)((uint8*)PROC$1 + 88ll) = 0ll;
	*(int16*)((uint8*)PROC$1 + 120ll) = (int16)0;
	*(int16*)((uint8*)PROC$1 + 122ll) = (int16)0;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 128ll) = PROC$1;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll) = (struct $8FBSYMBOL*)0ull;
	*($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll) = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 552ll);
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 160ll) = 2147483648ll;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168ll) = (struct $8FBSYMBOL*)0ull;
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 176ll) = 0ll;
	*(tmp$34*)((uint8*)PROC$1 + 184ll) = (tmp$34)0ull;
	*(int16*)((uint8*)PROC$1 + 192ll) = (int16)0;
	*(int16*)((uint8*)PROC$1 + 194ll) = (int16)0;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) = (struct $10FB_PROCEXT*)0ull;
	*(struct $10FBSYMBOLTB**)((uint8*)PROC$1 + 288ll) = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) + 96ll);
	*(struct $8FBHASHTB**)((uint8*)PROC$1 + 248ll) = (struct $8FBHASHTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) + 120ll);
	*(struct $8HASHITEM**)((uint8*)PROC$1 + 256ll) = (struct $8HASHITEM*)0ull;
	*(uint64*)((uint8*)PROC$1 + 264ll) = 0ull;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 272ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 280ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 296ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 304ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 312ll) = (struct $8FBSYMBOL*)0ull;
	fb$result$1 = PROC$1;
	label$360:;
	return fb$result$1;
}

void _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( int64 PARAMMODE$1, struct $8FBSYMBOL* BYDESCREALSUBTYPE$1, int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	label$361:;
	{
		if( PARAMMODE$1 != 1ll ) goto label$364;
		label$365:;
		{
			int64 vr$2 = TYPEISTRIVIAL( *DTYPE$1, *SUBTYPE$1 );
			if( vr$2 != 0ll ) goto label$367;
			{
				*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
			}
			label$367:;
			label$366:;
		}
		goto label$363;
		label$364:;
		if( PARAMMODE$1 != 2ll ) goto label$368;
		label$369:;
		{
			*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
		}
		goto label$363;
		label$368:;
		if( PARAMMODE$1 != 3ll ) goto label$370;
		label$371:;
		{
			*DTYPE$1 = 52ll;
			*SUBTYPE$1 = BYDESCREALSUBTYPE$1;
		}
		label$370:;
		label$363:;
	}
	label$362:;
}

void _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( struct $8FBSYMBOL* PARAM$1, int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	label$372:;
	*DTYPE$1 = *(int64*)((uint8*)PARAM$1 + 56ll);
	*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll);
	_Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( *(int64*)((uint8*)PARAM$1 + 96ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 128ll), DTYPE$1, SUBTYPE$1 );
	label$373:;
}

struct $8FBSYMBOL* SYMBADDVARFORPARAM( struct $8FBSYMBOL* PARAM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$374:;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME tmp$102$1;
	*(struct $10FBARRAYDIM**)&tmp$102$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$102$1 + 8ll) = (struct $10FBARRAYDIM*)DTB$1;
	*(int64*)((uint8*)&tmp$102$1 + 16ll) = 16ll;
	*(int64*)((uint8*)&tmp$102$1 + 24ll) = 16ll;
	*(int64*)((uint8*)&tmp$102$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$102$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$102$1 + 48ll) = 1ll;
	*(int64*)((uint8*)&tmp$102$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$102$1 + 64ll) = 0ll;
	struct $8FBSYMBOL* S$1;
	int64 ATTRIB$1;
	int64 DTYPE$1;
	int64 DIMENSIONS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	DTYPE$1 = *(int64*)((uint8*)PARAM$1 + 56ll);
	{
		uint64 TMP$103$2;
		TMP$103$2 = *(uint64*)((uint8*)PARAM$1 + 96ll);
		goto label$377;
		label$378:;
		{
			ATTRIB$1 = 32768ll;
			int64 vr$6 = TYPEISTRIVIAL( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
			if( vr$6 != 0ll ) goto label$380;
			{
				ATTRIB$1 = 65536ll;
			}
			label$380:;
			label$379:;
		}
		goto label$376;
		label$381:;
		{
			ATTRIB$1 = 65536ll;
		}
		goto label$376;
		label$382:;
		{
			ATTRIB$1 = 16384ll;
		}
		goto label$376;
		label$383:;
		{
			goto label$375;
		}
		goto label$376;
		label$377:;
		static const void* tmp$104[3ll] = {
			&&label$378,
			&&label$381,
			&&label$382,
		};
		if( (TMP$103$2 - 1ull) > 2ull ) goto label$383;
		goto *tmp$104[TMP$103$2 - 1ull];
		label$376:;
	}
	if( (*(int64*)((uint8*)PARAM$1 + 8ll) & 1048576ll) == 0ll ) goto label$385;
	{
		ATTRIB$1 = ATTRIB$1 | 1048576ll;
	}
	label$385:;
	label$384:;
	struct $8FBSYMBOL* vr$14 = SYMBADDVAR( (uint8*)*(uint8**)((uint8*)PARAM$1 + 32ll), (uint8*)0ull, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), 0ll, *(int64*)((uint8*)PARAM$1 + 120ll), (struct $7FBARRAYI10FBARRAYDIME*)&tmp$102$1, ATTRIB$1, 0ll );
	S$1 = vr$14;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$387;
	{
		goto label$375;
	}
	label$387:;
	label$386:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 144ll) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 128ll);
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 8ll;
	if( (*(int64*)((uint8*)PARAM$1 + 24ll) & 2048ll) == 0ll ) goto label$389;
	{
		*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 2048ll;
	}
	label$389:;
	label$388:;
	if( (*(int64*)((uint8*)PARAM$1 + 24ll) & 524288ll) == 0ll ) goto label$391;
	{
		*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 524288ll;
	}
	label$391:;
	label$390:;
	fb$result$1 = S$1;
	label$375:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDVARFORPROCRESULTPARAM( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$392:;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME tmp$105$1;
	*(struct $10FBARRAYDIM**)&tmp$105$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$105$1 + 8ll) = (struct $10FBARRAYDIM*)DTB$1;
	*(int64*)((uint8*)&tmp$105$1 + 16ll) = 16ll;
	*(int64*)((uint8*)&tmp$105$1 + 24ll) = 16ll;
	*(int64*)((uint8*)&tmp$105$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$105$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$105$1 + 48ll) = 1ll;
	*(int64*)((uint8*)&tmp$105$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$105$1 + 64ll) = 0ll;
	struct $8FBSYMBOL* S$1;
	int64 vr$3 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$3 != 0ll ) goto label$395;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$393;
	}
	label$395:;
	label$394:;
	uint8* vr$6 = SYMBUNIQUEID( (boolean)0ll );
	struct $8FBSYMBOL* vr$7 = SYMBADDVAR( (uint8*)vr$6, (uint8*)0ull, 20ll, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll), 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$105$1, 65536ll, 1ll );
	S$1 = vr$7;
	SYMBPROCALLOCEXT( PROC$1 );
	*(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) = S$1;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 8ll;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 16ll;
	fb$result$1 = S$1;
	label$393:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCRESULTVAR( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$396:;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME tmp$106$1;
	*(struct $10FBARRAYDIM**)&tmp$106$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$106$1 + 8ll) = (struct $10FBARRAYDIM*)DTB$1;
	*(int64*)((uint8*)&tmp$106$1 + 16ll) = 16ll;
	*(int64*)((uint8*)&tmp$106$1 + 24ll) = 16ll;
	*(int64*)((uint8*)&tmp$106$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$106$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$106$1 + 48ll) = 1ll;
	*(int64*)((uint8*)&tmp$106$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$106$1 + 64ll) = 0ll;
	struct $8FBSYMBOL* RES$1;
	int64 DTYPE$1;
	uint8* ID$1;
	int64 vr$3 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$3 == 0ll ) goto label$399;
	{
		struct $8FBSYMBOL* vr$4 = SYMBGETPROCRESULT( PROC$1 );
		fb$result$1 = vr$4;
		goto label$397;
	}
	label$399:;
	label$398:;
	DTYPE$1 = *(int64*)((uint8*)PROC$1 + 56ll);
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) == 0ll ) goto label$401;
	{
		DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
	}
	label$401:;
	label$400:;
	struct $8FBSYMBOL* vr$19 = SYMBADDVAR( (uint8*)"fb$result", (uint8*)0ull, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll), 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$106$1, 131072ll, 1ll );
	RES$1 = vr$19;
	SYMBPROCALLOCEXT( PROC$1 );
	*(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) = RES$1;
	struct $7ASTNODE* vr$22 = ASTNEWDECL( RES$1, -1ll );
	ASTADD( vr$22 );
	*($12FB_SYMBSTATS*)((uint8*)RES$1 + 24ll) = *(int64*)((uint8*)RES$1 + 24ll) | 8ll;
	*($12FB_SYMBSTATS*)((uint8*)RES$1 + 24ll) = *(int64*)((uint8*)RES$1 + 24ll) | 16ll;
	fb$result$1 = RES$1;
	label$397:;
	return fb$result$1;
}

void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	label$402:;
	int64 DTYPE$1;
	{
		$12FB_SYMBCLASS TMP$108$2;
		TMP$108$2 = *($12FB_SYMBCLASS*)PARENT$1;
		if( TMP$108$2 != 10ll ) goto label$405;
		label$406:;
		{
			DTYPE$1 = 20ll;
		}
		goto label$404;
		label$405:;
		if( TMP$108$2 != 11ll ) goto label$407;
		label$408:;
		{
		}
		label$407:;
		label$404:;
	}
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 2048ll) == 0ll ) goto label$410;
	{
		DTYPE$1 = DTYPE$1 | 512ll;
	}
	label$410:;
	label$409:;
	SYMBADDPROCPARAM( PROC$1, (uint8*)"THIS", DTYPE$1, PARENT$1, 0ll, 2ll, 524288ll, 0ll );
	label$403:;
}

struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1, $14FB_SYMBFINDOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$411:;
	struct $8FBSYMBOL* OVL$1;
	struct $8FBSYMBOL* OVL_PARAM$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* OVL_SUBTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int64 OVL_PARAMS$1;
	int64 PARAMS$1;
	int64 I$1;
	if( ((int64)-(OVL_HEAD_PROC$1 == (struct $8FBSYMBOL*)0ull) | (int64)-(PROC$1 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$414;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$412;
	}
	label$414:;
	label$413:;
	if( ((int64)-(*(int64*)OVL_HEAD_PROC$1 != 3ll) | (int64)-(*(int64*)PROC$1 != 3ll)) == 0ll ) goto label$416;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$412;
	}
	label$416:;
	label$415:;
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$418;
	{
		PARAMS$1 = PARAMS$1 + -1ll;
	}
	label$418:;
	label$417:;
	int64 IS_PROPERTY$1;
	IS_PROPERTY$1 = (int64)-((*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 32ll) != 0ll);
	OVL$1 = OVL_HEAD_PROC$1;
	label$419:;
	{
		OVL_PARAMS$1 = (int64)*(int16*)((uint8*)OVL$1 + 120ll);
		if( (*(int64*)((uint8*)OVL$1 + 16ll) & 2ll) == 0ll ) goto label$423;
		{
			OVL_PARAMS$1 = OVL_PARAMS$1 + -1ll;
		}
		label$423:;
		label$422:;
		if( IS_PROPERTY$1 == 0ll ) goto label$425;
		{
			if( (OPTIONS$1 & 1ll) == 0ll ) goto label$427;
			{
				if( (*(int64*)((uint8*)OVL$1 + 56ll) & 511ll) != 0ll ) goto label$429;
				{
					OVL_PARAMS$1 = -1ll;
				}
				label$429:;
				label$428:;
			}
			goto label$426;
			label$427:;
			{
				if( (*(int64*)((uint8*)OVL$1 + 56ll) & 511ll) == 0ll ) goto label$431;
				{
					OVL_PARAMS$1 = -1ll;
				}
				label$431:;
				label$430:;
			}
			label$426:;
		}
		label$425:;
		label$424:;
		if( PARAMS$1 != OVL_PARAMS$1 ) goto label$433;
		{
			if( PARAMS$1 != 0ll ) goto label$435;
			{
				fb$result$1 = OVL$1;
				goto label$412;
			}
			label$435:;
			label$434:;
			OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 144ll);
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
			label$436:;
			{
				int64 vr$29 = HCANOVERLOADBYDESC( PARAM$1, OVL_PARAM$1 );
				if( vr$29 == 0ll ) goto label$440;
				{
					goto label$437;
				}
				label$440:;
				label$439:;
				if( *(int64*)((uint8*)PARAM$1 + 56ll) == *(int64*)((uint8*)OVL_PARAM$1 + 56ll) ) goto label$442;
				{
					goto label$437;
				}
				label$442:;
				label$441:;
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) == *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 64ll) ) goto label$444;
				{
					goto label$437;
				}
				label$444:;
				label$443:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
				OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 304ll);
				OVL_PARAMS$1 = OVL_PARAMS$1 + -1ll;
			}
			label$438:;
			if( OVL_PARAMS$1 > 0ll ) goto label$436;
			label$437:;
			if( OVL_PARAMS$1 != 0ll ) goto label$446;
			{
				fb$result$1 = OVL$1;
				goto label$412;
			}
			label$446:;
			label$445:;
		}
		label$433:;
		label$432:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 200ll);
	}
	label$421:;
	if( OVL$1 != (struct $8FBSYMBOL*)0ull ) goto label$419;
	label$420:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	label$412:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP OP$1, struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$447:;
	struct $8FBSYMBOL* OVL$1;
	if( OP$1 == 27ll ) goto label$450;
	{
		struct $8FBSYMBOL* vr$1 = SYMBFINDOVERLOADPROC( OVL_HEAD_PROC$1, PROC$1, 0ll );
		fb$result$1 = vr$1;
		goto label$448;
	}
	label$450:;
	label$449:;
	OVL$1 = OVL_HEAD_PROC$1;
	label$451:;
	if( OVL$1 == (struct $8FBSYMBOL*)0ull ) goto label$452;
	{
		if( *(int64*)((uint8*)PROC$1 + 56ll) != *(int64*)((uint8*)OVL$1 + 56ll) ) goto label$454;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) != *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 64ll) ) goto label$456;
			{
				fb$result$1 = OVL$1;
				goto label$448;
			}
			label$456:;
			label$455:;
		}
		label$454:;
		label$453:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 200ll);
	}
	goto label$451;
	label$452:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	label$448:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCTORPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$457:;
	if( ((int64)-((*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 8ll) != 0ll) | (int64)-((*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 4096ll) != 0ll)) == 0ll ) goto label$460;
	{
		fb$result$1 = OVL_HEAD_PROC$1;
		goto label$458;
	}
	goto label$459;
	label$460:;
	{
		struct $8FBSYMBOL* vr$8 = SYMBFINDOVERLOADPROC( OVL_HEAD_PROC$1, PROC$1, 0ll );
		fb$result$1 = vr$8;
		goto label$458;
	}
	label$459:;
	label$458:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, int64 ARGS$1, struct $11FB_CALL_ARG* ARG_HEAD$1, $9FB_ERRMSG* ERR_NUM$1, $14FB_SYMBFINDOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$667:;
	struct $8FBSYMBOL* OVL$1;
	struct $8FBSYMBOL* CLOSEST_PROC$1;
	$22FB_OVLPROC_MATCH_SCORE MATCHSCORE$1;
	$22FB_OVLPROC_MATCH_SCORE MAX_MATCHSCORE$1;
	int64 EXACT_MATCHES$1;
	int64 MATCHCOUNT$1;
	int64 IS_MATCH$1;
	*ERR_NUM$1 = 0ll;
	if( OVL_HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$670;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$668;
	}
	label$670:;
	label$669:;
	CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0ull;
	MATCHCOUNT$1 = 0ll;
	IS_MATCH$1 = 0ll;
	MAX_MATCHSCORE$1 = 0ll;
	OVL$1 = OVL_HEAD_PROC$1;
	label$671:;
	{
		int64 vr$5 = HCHECKOVLPROC( OVL_HEAD_PROC$1, ARGS$1, ARG_HEAD$1, ERR_NUM$1, OPTIONS$1 | 8ll, OVL$1, &EXACT_MATCHES$1, &IS_MATCH$1 );
		MATCHSCORE$1 = vr$5;
		if( IS_MATCH$1 == 0ll ) goto label$675;
		{
			if( ((int64)-(MATCHCOUNT$1 == 0ll) | (int64)-(MATCHSCORE$1 > MAX_MATCHSCORE$1)) == 0ll ) goto label$677;
			{
				int64 ELIGIBLE$4;
				ELIGIBLE$4 = -1ll;
				if( (OPTIONS$1 & 2ll) == 0ll ) goto label$679;
				{
					ELIGIBLE$4 = (int64)-(EXACT_MATCHES$1 >= 1ll);
				}
				label$679:;
				label$678:;
				if( ELIGIBLE$4 == 0ll ) goto label$681;
				{
					CLOSEST_PROC$1 = OVL$1;
					MAX_MATCHSCORE$1 = MATCHSCORE$1;
					MATCHCOUNT$1 = 1ll;
				}
				label$681:;
				label$680:;
			}
			goto label$676;
			label$677:;
			if( MATCHSCORE$1 != MAX_MATCHSCORE$1 ) goto label$682;
			{
				MATCHCOUNT$1 = MATCHCOUNT$1 + 1ll;
			}
			label$682:;
			label$676:;
		}
		label$675:;
		label$674:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 200ll);
	}
	label$673:;
	if( OVL$1 != (struct $8FBSYMBOL*)0ull ) goto label$671;
	label$672:;
	if( MATCHCOUNT$1 <= 1ll ) goto label$684;
	{
		*ERR_NUM$1 = 98ll;
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
	}
	goto label$683;
	label$684:;
	{
		if( CLOSEST_PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$686;
		{
			int64 vr$16 = HCHECKOVLPROC( OVL_HEAD_PROC$1, ARGS$1, ARG_HEAD$1, ERR_NUM$1, OPTIONS$1, CLOSEST_PROC$1, &EXACT_MATCHES$1, &IS_MATCH$1 );
			MATCHSCORE$1 = vr$16;
			if( IS_MATCH$1 != 0ll ) goto label$688;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
			}
			goto label$687;
			label$688:;
			{
				fb$result$1 = CLOSEST_PROC$1;
			}
			label$687:;
		}
		goto label$685;
		label$686:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
		}
		label$685:;
	}
	label$683:;
	label$668:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDBOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$689:;
	struct $11FB_CALL_ARG ARG1$1;
	struct $11FB_CALL_ARG ARG2$1;
	struct $8FBSYMBOL* PROC$1;
	*ERR_NUM$1 = 0ll;
	{
		int64 TMP$129$2;
		TMP$129$2 = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
		if( TMP$129$2 == 20ll ) goto label$693;
		label$694:;
		if( TMP$129$2 != 10ll ) goto label$692;
		label$693:;
		{
		}
		goto label$691;
		label$692:;
		{
			{
				int64 TMP$130$4;
				TMP$130$4 = *(int64*)((uint8*)R$1 + 8ll) & 511ll;
				if( TMP$130$4 == 20ll ) goto label$698;
				label$699:;
				if( TMP$130$4 != 10ll ) goto label$697;
				label$698:;
				{
				}
				goto label$696;
				label$697:;
				{
					fb$result$1 = (struct $8FBSYMBOL*)0ull;
					goto label$690;
				}
				label$700:;
				label$696:;
			}
		}
		label$695:;
		label$691:;
	}
	*(struct $7ASTNODE**)&ARG1$1 = L$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 8ll) = -1ll;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 16ll) = &ARG2$1;
	*(struct $7ASTNODE**)&ARG2$1 = R$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG2$1 + 8ll) = -1ll;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG2$1 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
	struct $8FBSYMBOL* vr$10 = SYMBFINDCLOSESTOVLPROC( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (3ll & 63ll))) + 198208ll), 2ll, &ARG1$1, ERR_NUM$1, 2ll );
	PROC$1 = vr$10;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$702;
	{
		if( *(int64*)ERR_NUM$1 == 0ll ) goto label$704;
		{
			ERRREPORT( *(int64*)ERR_NUM$1, -1ll, (uint8*)0ull );
		}
		label$704:;
		label$703:;
	}
	label$702:;
	label$701:;
	fb$result$1 = PROC$1;
	label$690:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$705:;
	struct $11FB_CALL_ARG ARG1$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	*ERR_NUM$1 = 0ll;
	{
		int64 TMP$131$2;
		TMP$131$2 = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
		if( TMP$131$2 != 20ll ) goto label$708;
		label$709:;
		{
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 240ll) != (struct $12FB_STRUCTEXT*)0ull ) goto label$711;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$706;
			}
			label$711:;
			label$710:;
			HEAD_PROC$1 = *(struct $8FBSYMBOL**)((uint8*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 240ll) + (OP$1 << (3ll & 63ll))) + 64ll);
		}
		goto label$707;
		label$708:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
			goto label$706;
		}
		label$712:;
		label$707:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$714;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$706;
	}
	label$714:;
	label$713:;
	*(struct $7ASTNODE**)&ARG1$1 = R$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 8ll) = -1ll;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
	struct $8FBSYMBOL* vr$10 = SYMBFINDCLOSESTOVLPROC( HEAD_PROC$1, 1ll, &ARG1$1, ERR_NUM$1, 0ll );
	PROC$1 = vr$10;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$716;
	{
		if( *(int64*)ERR_NUM$1 == 0ll ) goto label$718;
		{
			ERRREPORT( *(int64*)ERR_NUM$1, -1ll, (uint8*)0ull );
		}
		label$718:;
		label$717:;
	}
	goto label$715;
	label$716:;
	{
		int64 vr$13 = SYMBCHECKACCESS( PROC$1 );
		if( vr$13 != 0ll ) goto label$720;
		{
			*ERR_NUM$1 = 202ll;
			uint8* vr$15 = SYMBGETFULLPROCNAME( PROC$1 );
			ERRREPORTEX( 202ll, (uint8*)vr$15, 0ll, 1ll, (uint8*)0ull );
			PROC$1 = (struct $8FBSYMBOL*)0ull;
		}
		label$720:;
		label$719:;
	}
	label$715:;
	fb$result$1 = PROC$1;
	label$706:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$721:;
	struct $11FB_CALL_ARG ARG1$1;
	struct $8FBSYMBOL* PROC$1;
	*ERR_NUM$1 = 0ll;
	{
		int64 TMP$132$2;
		TMP$132$2 = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
		if( TMP$132$2 == 20ll ) goto label$725;
		label$726:;
		if( TMP$132$2 != 10ll ) goto label$724;
		label$725:;
		{
		}
		goto label$723;
		label$724:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
			goto label$722;
		}
		label$727:;
		label$723:;
	}
	*(struct $7ASTNODE**)&ARG1$1 = L$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 8ll) = -1ll;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
	struct $8FBSYMBOL* vr$7 = SYMBFINDCLOSESTOVLPROC( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (3ll & 63ll))) + 198208ll), 1ll, &ARG1$1, ERR_NUM$1, 0ll );
	PROC$1 = vr$7;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$729;
	{
		if( *(int64*)ERR_NUM$1 == 0ll ) goto label$731;
		{
			ERRREPORT( *(int64*)ERR_NUM$1, -1ll, (uint8*)0ull );
		}
		label$731:;
		label$730:;
	}
	label$729:;
	label$728:;
	fb$result$1 = PROC$1;
	label$722:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDSELFUOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$732:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	*ERR_NUM$1 = 0ll;
	{
		int64 TMP$133$2;
		TMP$133$2 = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
		if( TMP$133$2 != 20ll ) goto label$735;
		label$736:;
		{
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 240ll) != (struct $12FB_STRUCTEXT*)0ull ) goto label$738;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$733;
			}
			label$738:;
			label$737:;
			HEAD_PROC$1 = *(struct $8FBSYMBOL**)((uint8*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 240ll) + (OP$1 << (3ll & 63ll))) + 64ll);
		}
		goto label$734;
		label$735:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
			goto label$733;
		}
		label$739:;
		label$734:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$741;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$733;
	}
	label$741:;
	label$740:;
	struct $8FBSYMBOL* vr$9 = SYMBFINDCLOSESTOVLPROC( HEAD_PROC$1, 0ll, (struct $11FB_CALL_ARG*)0ull, ERR_NUM$1, 0ll );
	PROC$1 = vr$9;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$743;
	{
		if( *(int64*)ERR_NUM$1 == 0ll ) goto label$745;
		{
			ERRREPORT( *(int64*)ERR_NUM$1, -1ll, (uint8*)0ull );
		}
		label$745:;
		label$744:;
	}
	goto label$742;
	label$743:;
	{
		int64 vr$12 = SYMBCHECKACCESS( PROC$1 );
		if( vr$12 != 0ll ) goto label$747;
		{
			*ERR_NUM$1 = 202ll;
			uint8* vr$14 = SYMBGETFULLPROCNAME( PROC$1 );
			ERRREPORTEX( 202ll, (uint8*)vr$14, 0ll, 1ll, (uint8*)0ull );
			PROC$1 = (struct $8FBSYMBOL*)0ull;
		}
		label$747:;
		label$746:;
	}
	label$742:;
	fb$result$1 = PROC$1;
	label$733:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1, $9FB_ERRMSG* ERR_NUM$1, $14FB_SYMBFINDOPT OPTIONS$1 )
{
	int64 TMP$139$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$770:;
	struct $8FBSYMBOL* PROC_HEAD$1;
	*ERR_NUM$1 = 0ll;
	{
		int64 TMP$138$2;
		TMP$138$2 = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
		if( TMP$138$2 != 20ll ) goto label$773;
		label$774:;
		{
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
			if( SUBTYPE$3 != (struct $8FBSYMBOL*)0ull ) goto label$776;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$771;
			}
			label$776:;
			label$775:;
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 240ll) != (struct $12FB_STRUCTEXT*)0ull ) goto label$778;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$771;
			}
			label$778:;
			label$777:;
			PROC_HEAD$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 240ll) + 280ll);
		}
		goto label$772;
		label$773:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
			goto label$771;
		}
		label$779:;
		label$772:;
	}
	if( PROC_HEAD$1 != (struct $8FBSYMBOL*)0ull ) goto label$781;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$771;
	}
	label$781:;
	label$780:;
	struct $8FBSYMBOL* P$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* CLOSEST_PROC$1;
	$22FB_OVLPROC_MATCH_SCORE MATCHSCORE$1;
	$22FB_OVLPROC_MATCH_SCORE MAX_MATCHSCORE$1;
	int64 MATCHCOUNT$1;
	CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0ull;
	MAX_MATCHSCORE$1 = 0ll;
	MATCHCOUNT$1 = 0ll;
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$782;
	TMP$139$1 = 24ll;
	goto label$810;
	label$782:;
	TMP$139$1 = TO_DTYPE$1 & 31ll;
	label$810:;
	if( TMP$139$1 == 0ll ) goto label$784;
	{
		PROC$1 = PROC_HEAD$1;
		label$785:;
		if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$786;
		{
			$22FB_OVLPROC_MATCH_SCORE vr$10 = HCHECKCASTOVL( PROC$1, TO_DTYPE$1, TO_SUBTYPE$1, OPTIONS$1 );
			MATCHSCORE$1 = vr$10;
			if( MATCHSCORE$1 <= MAX_MATCHSCORE$1 ) goto label$788;
			{
				CLOSEST_PROC$1 = PROC$1;
				MAX_MATCHSCORE$1 = MATCHSCORE$1;
				MATCHCOUNT$1 = 1ll;
			}
			goto label$787;
			label$788:;
			if( MATCHSCORE$1 != MAX_MATCHSCORE$1 ) goto label$789;
			{
				if( MAX_MATCHSCORE$1 <= 0ll ) goto label$791;
				{
					MATCHCOUNT$1 = MATCHCOUNT$1 + 1ll;
				}
				label$791:;
				label$790:;
			}
			label$789:;
			label$787:;
			PROC$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll);
		}
		goto label$785;
		label$786:;
	}
	goto label$783;
	label$784:;
	{
		PROC$1 = PROC_HEAD$1;
		label$792:;
		if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$793;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) != (struct $8FBSYMBOL*)0ull ) goto label$795;
			{
				if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) > 16ll ) goto label$797;
				{
					if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) <= TO_DTYPE$1 ) goto label$799;
					{
						CLOSEST_PROC$1 = PROC$1;
						TO_DTYPE$1 = *(int64*)((uint8*)PROC$1 + 56ll) & 511ll;
					}
					label$799:;
					label$798:;
				}
				label$797:;
				label$796:;
			}
			label$795:;
			label$794:;
			PROC$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll);
		}
		goto label$792;
		label$793:;
	}
	label$783:;
	if( MATCHCOUNT$1 <= 1ll ) goto label$801;
	{
		*ERR_NUM$1 = 98ll;
		if( (OPTIONS$1 & 8ll) != 0ll ) goto label$803;
		{
			ERRREPORTPARAM( PROC_HEAD$1, 0ll, (uint8*)0ull, 98ll );
		}
		label$803:;
		label$802:;
		CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0ull;
	}
	goto label$800;
	label$801:;
	{
		if( CLOSEST_PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$805;
		{
			int64 vr$23 = SYMBCHECKACCESS( CLOSEST_PROC$1 );
			if( vr$23 != 0ll ) goto label$807;
			{
				*ERR_NUM$1 = 202ll;
				if( (OPTIONS$1 & 8ll) != 0ll ) goto label$809;
				{
					uint8* vr$26 = SYMBGETFULLPROCNAME( CLOSEST_PROC$1 );
					ERRREPORTEX( 202ll, (uint8*)vr$26, 0ll, 1ll, (uint8*)0ull );
				}
				label$809:;
				label$808:;
				CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0ull;
			}
			label$807:;
			label$806:;
		}
		label$805:;
		label$804:;
	}
	label$800:;
	fb$result$1 = CLOSEST_PROC$1;
	label$771:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* EXPR$1, $12FB_PARAMMODE ARG_MODE$1, $9FB_ERRMSG* ERR_NUM$1, $14FB_SYMBFINDOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$811:;
	struct $11FB_CALL_ARG ARG1$1;
	*(struct $7ASTNODE**)&ARG1$1 = EXPR$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 8ll) = ARG_MODE$1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBGETCOMPCTORHEAD( SYM$1 );
	struct $8FBSYMBOL* vr$3 = SYMBFINDCLOSESTOVLPROC( vr$2, 1ll, &ARG1$1, ERR_NUM$1, OPTIONS$1 );
	fb$result$1 = vr$3;
	label$812:;
	return fb$result$1;
}

void SYMBDELPROTOTYPE( struct $8FBSYMBOL* S$1 )
{
	label$817:;
	if( (int64)*(int16*)((uint8*)S$1 + 120ll) <= 0ll ) goto label$820;
	{
		HDELPARAMS( S$1 );
	}
	label$820:;
	label$819:;
	SYMBPROCFREEEXT( S$1 );
	SYMBFREESYMBOL( S$1 );
	label$818:;
}

struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALCTOR( struct $8FBSYMBOL* PROC$1 )
{
	struct $20FB_GLOBCTORLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$825:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = *(int64*)((uint8*)PROC$1 + 24ll) | 65538ll;
	struct $20FB_GLOBCTORLIST_ITEM* vr$5 = HADDTOGLOBCTORLIST( (struct $15FB_GLOBCTORLIST*)((uint8*)&SYMB$ + 198048ll), PROC$1 );
	fb$result$1 = vr$5;
	label$826:;
	return fb$result$1;
}

struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALDTOR( struct $8FBSYMBOL* PROC$1 )
{
	struct $20FB_GLOBCTORLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$827:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = *(int64*)((uint8*)PROC$1 + 24ll) | 131074ll;
	struct $20FB_GLOBCTORLIST_ITEM* vr$5 = HADDTOGLOBCTORLIST( (struct $15FB_GLOBCTORLIST*)((uint8*)&SYMB$ + 198128ll), PROC$1 );
	fb$result$1 = vr$5;
	label$828:;
	return fb$result$1;
}

$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL* L$1, struct $8FBSYMBOL* R$1, int64* ERRMSG$1 )
{
	$12FB_PARAMMODE TMP$140$1;
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$839:;
	$22FB_OVLPROC_MATCH_SCORE MATCH$1;
	if( (*(int64*)((uint8*)L$1 + 16ll) & 2048ll) == 0ll ) goto label$841;
	TMP$140$1 = 2ll;
	goto label$866;
	label$841:;
	TMP$140$1 = 1ll;
	label$866:;
	$22FB_OVLPROC_MATCH_SCORE vr$7 = TYPECALCMATCH( *(int64*)((uint8*)L$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 64ll), TMP$140$1, *(int64*)((uint8*)R$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 64ll) );
	MATCH$1 = vr$7;
	if( MATCH$1 != 0ll ) goto label$843;
	{
		*ERRMSG$1 = 225ll;
		fb$result$1 = 0ll;
		goto label$840;
	}
	label$843:;
	label$842:;
	if( (int64)-((*(int64*)((uint8*)L$1 + 16ll) & 2048ll) != 0ll) == (int64)-((*(int64*)((uint8*)R$1 + 16ll) & 2048ll) != 0ll) ) goto label$845;
	{
		*ERRMSG$1 = 225ll;
		fb$result$1 = 0ll;
		goto label$840;
	}
	label$845:;
	label$844:;
	int64 vr$16 = SYMBAREPROCMODESEQUAL( L$1, R$1 );
	if( vr$16 != 0ll ) goto label$847;
	{
		*ERRMSG$1 = 226ll;
		fb$result$1 = 0ll;
		goto label$840;
	}
	label$847:;
	label$846:;
	if( (int64)-((*(int64*)((uint8*)L$1 + 8ll) & 2048ll) != 0ll) == (int64)-((*(int64*)((uint8*)R$1 + 8ll) & 2048ll) != 0ll) ) goto label$849;
	{
		if( (*(int64*)((uint8*)L$1 + 8ll) & 2048ll) == 0ll ) goto label$851;
		{
			*ERRMSG$1 = 229ll;
		}
		goto label$850;
		label$851:;
		{
			*ERRMSG$1 = 230ll;
		}
		label$850:;
		fb$result$1 = 0ll;
		goto label$840;
	}
	label$849:;
	label$848:;
	if( (int64)*(int16*)((uint8*)L$1 + 120ll) == (int64)*(int16*)((uint8*)R$1 + 120ll) ) goto label$853;
	{
		*ERRMSG$1 = 231ll;
		fb$result$1 = 0ll;
		goto label$840;
	}
	label$853:;
	label$852:;
	struct $8FBSYMBOL* LPARAM$1;
	LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 136ll);
	struct $8FBSYMBOL* RPARAM$1;
	RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 136ll);
	if( (((int64)-((*(int64*)((uint8*)L$1 + 16ll) & 256ll) != 0ll) & (int64)-((*(int64*)((uint8*)L$1 + 16ll) & 2ll) != 0ll)) & (int64)-((*(int64*)((uint8*)R$1 + 16ll) & 2ll) != 0ll)) == 0ll ) goto label$855;
	{
		if( ((int64)-(LPARAM$1 != (struct $8FBSYMBOL*)0ull) & (int64)-(RPARAM$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$857;
		{
			if( ((int64)-((*(int64*)((uint8*)LPARAM$1 + 8ll) & 524288ll) != 0ll) & (int64)-((*(int64*)((uint8*)RPARAM$1 + 8ll) & 524288ll) != 0ll)) == 0ll ) goto label$859;
			{
				LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 312ll);
				RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 312ll);
			}
			label$859:;
			label$858:;
		}
		label$857:;
		label$856:;
	}
	label$855:;
	label$854:;
	label$860:;
	if( LPARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$861;
	{
		$22FB_OVLPROC_MATCH_SCORE PARAMMATCH$2;
		$22FB_OVLPROC_MATCH_SCORE vr$58 = SYMBCALCPARAMMATCH( RPARAM$1, LPARAM$1 );
		PARAMMATCH$2 = vr$58;
		if( PARAMMATCH$2 != 0ll ) goto label$863;
		{
			*ERRMSG$1 = 231ll;
			fb$result$1 = 0ll;
			goto label$840;
		}
		label$863:;
		label$862:;
		if( MATCH$1 <= PARAMMATCH$2 ) goto label$865;
		{
			MATCH$1 = PARAMMATCH$2;
		}
		label$865:;
		label$864:;
		LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 312ll);
		RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 312ll);
	}
	goto label$860;
	label$861:;
	fb$result$1 = MATCH$1;
	label$840:;
	return fb$result$1;
}

void SYMBPROCCHECKOVERRIDDEN( struct $8FBSYMBOL* PROC$1, int64 IS_IMPLICIT$1 )
{
	label$867:;
	struct $8FBSYMBOL* OVERRIDDEN$1;
	struct $8FBSYMBOL* vr$0 = SYMBPROCGETOVERRIDDEN( PROC$1 );
	OVERRIDDEN$1 = vr$0;
	if( OVERRIDDEN$1 == (struct $8FBSYMBOL*)0ull ) goto label$870;
	{
		int64 ERRMSG$2;
		__builtin_memset( &ERRMSG$2, 0, 8ll );
		$22FB_OVLPROC_MATCH_SCORE vr$3 = SYMBCALCPROCMATCH( OVERRIDDEN$1, PROC$1, &ERRMSG$2 );
		if( vr$3 != 0ll ) goto label$872;
		{
			if( (IS_IMPLICIT$1 & (int64)-(ERRMSG$2 == 226ll)) == 0ll ) goto label$874;
			{
				if( (*(int64*)((uint8*)PROC$1 + 16ll) & 8ll) == 0ll ) goto label$876;
				{
					ERRMSG$2 = 227ll;
				}
				goto label$875;
				label$876:;
				{
					ERRMSG$2 = 228ll;
				}
				label$875:;
			}
			label$874:;
			label$873:;
			ERRREPORT( ERRMSG$2, 0ll, (uint8*)0ull );
		}
		label$872:;
		label$871:;
	}
	label$870:;
	label$869:;
	label$868:;
}

void SYMBPROCSETVTABLEINDEX( struct $8FBSYMBOL* PROC$1, int64 I$1 )
{
	label$877:;
	SYMBPROCALLOCEXT( PROC$1 );
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 136ll) = I$1;
	label$878:;
}

int64 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$879:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) == (struct $10FB_PROCEXT*)0ull ) goto label$882;
	{
		fb$result$1 = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 136ll);
	}
	label$882:;
	label$881:;
	label$880:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$883:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) == (struct $10FB_PROCEXT*)0ull ) goto label$886;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 144ll);
	}
	label$886:;
	label$885:;
	label$884:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$887:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) == (struct $10FB_PROCEXT*)0ull ) goto label$890;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll);
	}
	label$890:;
	label$889:;
	label$888:;
	return fb$result$1;
}

int64 SYMBPROCHASFWDREFINSIGNATURE( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$891:;
	struct $8FBSYMBOL* PARAM$1;
	int64 vr$3 = TYPEHASFWDREFINSIGNATURE( *(int64*)((uint8*)PROC$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) );
	if( vr$3 == 0ll ) goto label$894;
	{
		fb$result$1 = -1ll;
		goto label$892;
	}
	label$894:;
	label$893:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$895:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$896;
	{
		int64 vr$7 = TYPEHASFWDREFINSIGNATURE( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
		if( vr$7 == 0ll ) goto label$898;
		{
			fb$result$1 = -1ll;
			goto label$892;
		}
		label$898:;
		label$897:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	goto label$895;
	label$896:;
	fb$result$1 = 0ll;
	label$892:;
	return fb$result$1;
}

FBSTRING* HDUMPDYNAMICARRAYDIMENSIONS( int64 DIMENSIONS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$938:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"(", 2ll, 0 );
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$152$2;
		TMP$152$2 = DIMENSIONS$1;
		goto label$940;
		label$943:;
		{
			if( I$2 <= 1ll ) goto label$945;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)", ", 3ll, 0 );
			}
			label$945:;
			label$944:;
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"any", 4ll, 0 );
		}
		label$941:;
		I$2 = I$2 + 1ll;
		label$940:;
		if( I$2 <= TMP$152$2 ) goto label$943;
		label$942:;
	}
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)") ", 3ll, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$939:;
	FBSTRING* vr$11 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$11;
}

FBSTRING* SYMBPROCPTRTOSTR( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$977:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	HSUBORFUNCTOSTR( &S$1, PROC$1 );
	HPROCMODETOSTR( &S$1, PROC$1 );
	HPARAMSTOSTR( &S$1, PROC$1 );
	HRESULTTOSTR( &S$1, PROC$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$978:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* PROC$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$979:;
	static FBSTRING RES$1;
	fb_StrAssign( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 248ll);
	label$981:;
	if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$982;
	{
		FBSTRING TMP$168$2;
		FBSTRING TMP$169$2;
		__builtin_memset( &TMP$168$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$168$2, *(void**)((uint8*)NS$1 + 32ll), 0ll, (void*)".", 2ll );
		__builtin_memset( &TMP$169$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$169$2, (void*)vr$7, -1ll, (void*)&RES$1, -1ll );
		fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$10, -1ll, 0 );
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
	}
	goto label$981;
	label$982:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 4ll) == 0ll ) goto label$984;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"constructor", 12ll, 0 );
	}
	goto label$983;
	label$984:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 8ll) == 0ll ) goto label$985;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"destructor", 11ll, 0 );
	}
	goto label$983;
	label$985:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 4096ll) == 0ll ) goto label$986;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"destructor", 11ll, 0 );
	}
	goto label$983;
	label$986:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 16ll) == 0ll ) goto label$987;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"operator.", 10ll, 0 );
		if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) == (struct $10FB_PROCEXT*)0ull ) goto label$989;
		{
			FBSTRING TMP$173$3;
			__builtin_memset( &TMP$173$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$173$3, (void*)&RES$1, -1ll, *(void**)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll) << (5ll & 63ll))) + 16ll), 0ll );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$27, -1ll, 0 );
		}
		label$989:;
		label$988:;
	}
	goto label$983;
	label$987:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 32ll) == 0ll ) goto label$990;
	{
		FBSTRING TMP$174$2;
		__builtin_memset( &TMP$174$2, 0, 24ll );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$174$2, (void*)&RES$1, -1ll, *(void**)((uint8*)PROC$1 + 32ll), 0ll );
		fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$33, -1ll, 0 );
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)".property.", 11ll, 0 );
		if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll ) goto label$992;
		{
			fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"get", 4ll, 0 );
		}
		goto label$991;
		label$992:;
		{
			fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"set", 4ll, 0 );
		}
		label$991:;
	}
	goto label$983;
	label$990:;
	{
		FBSTRING TMP$178$2;
		__builtin_memset( &TMP$178$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$178$2, (void*)&RES$1, -1ll, *(void**)((uint8*)PROC$1 + 32ll), 0ll );
		fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$39, -1ll, 0 );
	}
	label$983:;
	fb$result$1 = (uint8*)*(uint8**)&RES$1;
	label$980:;
	return fb$result$1;
}

FBSTRING* SYMBMETHODTOSTR( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$993:;
	FBSTRING S$1;
	uint8* vr$1 = SYMBGETFULLPROCNAME( PROC$1 );
	fb_StrInit( (void*)&S$1, -1ll, (void*)vr$1, 0ll, 0 );
	HPROCMODETOSTR( &S$1, PROC$1 );
	HPARAMSTOSTR( &S$1, PROC$1 );
	HRESULTTOSTR( &S$1, PROC$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$994:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

int64 SYMBGETDEFAULTPARAMMODE( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$995:;
	{
		uint64 TMP$179$2;
		TMP$179$2 = (uint64)(DTYPE$1 & 511ll);
		goto label$998;
		label$999:;
		{
			fb$result$1 = 2ll;
			goto label$996;
		}
		goto label$997;
		label$1000:;
		{
			fb$result$1 = 1ll;
			goto label$996;
		}
		goto label$997;
		label$998:;
		static const void* tmp$180[20ll] = {
			&&label$999,
			&&label$1000,
			&&label$1000,
			&&label$999,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$999,
			&&label$999,
			&&label$1000,
			&&label$999,
			&&label$1000,
			&&label$1000,
			&&label$999,
		};
		if( (TMP$179$2 - 4ull) > 19ull ) goto label$1000;
		goto *tmp$180[TMP$179$2 - 4ull];
		label$997:;
	}
	label$996:;
	return fb$result$1;
}

int64 SYMBAREPROCMODESEQUAL( struct $8FBSYMBOL* PROCA$1, struct $8FBSYMBOL* PROCB$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1001:;
	int64 A$1;
	int64 B$1;
	A$1 = *(int64*)((uint8*)PROCA$1 + 152ll);
	B$1 = *(int64*)((uint8*)PROCB$1 + 152ll);
	{
		if( A$1 == 1ll ) goto label$1005;
		label$1006:;
		if( A$1 != 2ll ) goto label$1004;
		label$1005:;
		{
			{
				if( B$1 == 1ll ) goto label$1009;
				label$1010:;
				if( B$1 != 2ll ) goto label$1008;
				label$1009:;
				{
					fb$result$1 = -1ll;
					goto label$1002;
				}
				label$1008:;
				label$1007:;
			}
		}
		label$1004:;
		label$1003:;
	}
	fb$result$1 = (int64)-(A$1 == B$1);
	label$1002:;
	return fb$result$1;
}

struct $11FB_CALL_ARG* SYMBALLOCOVLCALLARG( struct $5TLIST* LIST$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1, int64 TO_HEAD$1 )
{
	struct $11FB_CALL_ARG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1011:;
	struct $11FB_CALL_ARG* ARG$1;
	void* vr$1 = LISTNEWNODE( LIST$1 );
	ARG$1 = (struct $11FB_CALL_ARG*)vr$1;
	if( TO_HEAD$1 != 0ll ) goto label$1014;
	{
		if( *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll) != (struct $11FB_CALL_ARG*)0ull ) goto label$1016;
		{
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll) = ARG$1;
		}
		goto label$1015;
		label$1016:;
		{
			*(struct $11FB_CALL_ARG**)((uint8*)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 16ll) + 16ll) = ARG$1;
		}
		label$1015:;
		*(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
		*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 16ll) = ARG$1;
	}
	goto label$1013;
	label$1014:;
	{
		if( *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 16ll) != (struct $11FB_CALL_ARG*)0ull ) goto label$1018;
		{
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 16ll) = ARG$1;
		}
		label$1018:;
		label$1017:;
		*(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll) = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
		*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll) = ARG$1;
	}
	label$1013:;
	*(int64*)ARG_LIST$1 = *(int64*)ARG_LIST$1 + 1ll;
	fb$result$1 = ARG$1;
	label$1012:;
	return fb$result$1;
}

void SYMBFREEOVLCALLARGS( struct $5TLIST* LIST$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1 )
{
	label$1019:;
	struct $11FB_CALL_ARG* ARG$1;
	__builtin_memset( &ARG$1, 0, 8ll );
	struct $11FB_CALL_ARG* NXT$1;
	__builtin_memset( &NXT$1, 0, 8ll );
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8ll);
	label$1021:;
	if( ARG$1 == (struct $11FB_CALL_ARG*)0ull ) goto label$1022;
	{
		NXT$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll);
		LISTDELNODE( LIST$1, (void*)ARG$1 );
		ARG$1 = NXT$1;
	}
	goto label$1021;
	label$1022:;
	label$1020:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static int64 HALIGNTOPOW2( int64 VALUE$1, int64 ALIGN$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$32:;
	fb$result$1 = ((VALUE$1 + ALIGN$1) + -1ll) & ~(ALIGN$1 + -1ll);
	label$33:;
	return fb$result$1;
}

static int64 HCANOVERLOAD( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$117:;
	struct $8FBSYMBOL* PPARAM$1;
	if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 0ll ) goto label$120;
	{
		fb$result$1 = -1ll;
		goto label$118;
	}
	label$120:;
	label$119:;
	PPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	if( *(int64*)((uint8*)PPARAM$1 + 96ll) != 4ll ) goto label$122;
	{
		fb$result$1 = 0ll;
		goto label$118;
	}
	label$122:;
	label$121:;
	label$123:;
	if( PPARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$124;
	{
		if( *(int64*)((uint8*)PPARAM$1 + 56ll) != 0ll ) goto label$126;
		{
			fb$result$1 = 0ll;
			goto label$118;
		}
		label$126:;
		label$125:;
		PPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PPARAM$1 + 304ll);
	}
	goto label$123;
	label$124:;
	fb$result$1 = -1ll;
	label$118:;
	return fb$result$1;
}

static int64 HCANOVERLOADBYDESC( struct $8FBSYMBOL* A$1, struct $8FBSYMBOL* B$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$127:;
	fb$result$1 = 0ll;
	if( ((int64)-(*(int64*)((uint8*)A$1 + 96ll) == 3ll) | (int64)-(*(int64*)((uint8*)B$1 + 96ll) == 3ll)) == 0ll ) goto label$130;
	{
		if( ((int64)-(*(int64*)((uint8*)A$1 + 96ll) == 3ll) & (int64)-(*(int64*)((uint8*)B$1 + 96ll) == 3ll)) == 0ll ) goto label$132;
		{
			if( ((int64)-(*(int64*)((uint8*)A$1 + 120ll) > 0ll) & (int64)-(*(int64*)((uint8*)B$1 + 120ll) > 0ll)) == 0ll ) goto label$134;
			{
				fb$result$1 = (int64)-(*(int64*)((uint8*)A$1 + 120ll) != *(int64*)((uint8*)B$1 + 120ll));
			}
			label$134:;
			label$133:;
		}
		goto label$131;
		label$132:;
		{
			fb$result$1 = -1ll;
		}
		label$131:;
	}
	label$130:;
	label$129:;
	label$128:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HADDOVLPROC( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, uint8* ID$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64 PRESERVECASE$1 )
{
	$10FB_SYMBOPT TMP$97$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$135:;
	struct $8FBSYMBOL* OVL$1;
	struct $8FBSYMBOL* OVL_PARAM$1;
	struct $8FBSYMBOL* PARAM$1;
	int64 OVL_PARAMS$1;
	int64 PARAMS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( OVL_HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$138;
	{
		goto label$136;
	}
	label$138:;
	label$137:;
	if( (int64)-((PATTRIB$1 & 32ll) != 0ll) == (int64)-((*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 32ll) != 0ll) ) goto label$140;
	{
		goto label$136;
	}
	label$140:;
	label$139:;
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
	if( (PATTRIB$1 & 2ll) == 0ll ) goto label$142;
	{
		PARAMS$1 = PARAMS$1 + -1ll;
	}
	label$142:;
	label$141:;
	if( PARAMS$1 <= 0ll ) goto label$144;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$146;
		{
			goto label$136;
		}
		label$146:;
		label$145:;
		label$147:;
		if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$148;
		{
			if( *(int64*)((uint8*)PARAM$1 + 56ll) != 0ll ) goto label$150;
			{
				goto label$136;
			}
			label$150:;
			label$149:;
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
		}
		goto label$147;
		label$148:;
	}
	label$144:;
	label$143:;
	OVL$1 = OVL_HEAD_PROC$1;
	label$151:;
	{
		OVL_PARAMS$1 = (int64)*(int16*)((uint8*)OVL$1 + 120ll);
		if( (*(int64*)((uint8*)OVL$1 + 16ll) & 2ll) == 0ll ) goto label$155;
		{
			OVL_PARAMS$1 = OVL_PARAMS$1 + -1ll;
		}
		label$155:;
		label$154:;
		if( (PATTRIB$1 & 32ll) == 0ll ) goto label$157;
		{
			if( DTYPE$1 == 0ll ) goto label$159;
			{
				if( (*(int64*)((uint8*)OVL$1 + 56ll) & 511ll) != 0ll ) goto label$161;
				{
					OVL_PARAMS$1 = -1ll;
				}
				label$161:;
				label$160:;
			}
			goto label$158;
			label$159:;
			{
				if( (*(int64*)((uint8*)OVL$1 + 56ll) & 511ll) == 0ll ) goto label$163;
				{
					OVL_PARAMS$1 = -1ll;
				}
				label$163:;
				label$162:;
			}
			label$158:;
		}
		label$157:;
		label$156:;
		if( OVL_PARAMS$1 != PARAMS$1 ) goto label$165;
		{
			if( PARAMS$1 != 0ll ) goto label$167;
			{
				goto label$136;
			}
			label$167:;
			label$166:;
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
			OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 144ll);
			label$168:;
			{
				int64 vr$26 = HCANOVERLOADBYDESC( PARAM$1, OVL_PARAM$1 );
				if( vr$26 == 0ll ) goto label$172;
				{
					goto label$169;
				}
				label$172:;
				label$171:;
				int64 PDTYPE$4;
				PDTYPE$4 = *(int64*)((uint8*)PARAM$1 + 56ll);
				int64 ODTYPE$4;
				ODTYPE$4 = *(int64*)((uint8*)OVL_PARAM$1 + 56ll);
				if( ((PDTYPE$4 & 261632ll) | (ODTYPE$4 & 261632ll)) == 0ll ) goto label$174;
				{
					if( ((int64)-(*(int64*)((uint8*)PARAM$1 + 96ll) == 2ll) & (int64)-(*(int64*)((uint8*)OVL_PARAM$1 + 96ll) == 2ll)) == 0ll ) goto label$176;
					{
						if( (PDTYPE$4 & 261632ll) == (ODTYPE$4 & 261632ll) ) goto label$178;
						{
							goto label$169;
						}
						label$178:;
						label$177:;
					}
					label$176:;
					label$175:;
					if( ((PDTYPE$4 & 261632ll) & -513ll) == ((ODTYPE$4 & 261632ll) & -513ll) ) goto label$180;
					{
						goto label$169;
					}
					label$180:;
					label$179:;
					PDTYPE$4 = PDTYPE$4 & 511ll;
					ODTYPE$4 = ODTYPE$4 & 511ll;
				}
				label$174:;
				label$173:;
				if( PDTYPE$4 == ODTYPE$4 ) goto label$182;
				{
					goto label$169;
				}
				label$182:;
				label$181:;
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) == *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 64ll) ) goto label$184;
				{
					goto label$169;
				}
				label$184:;
				label$183:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
				OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 304ll);
				OVL_PARAMS$1 = OVL_PARAMS$1 + -1ll;
			}
			label$170:;
			if( OVL_PARAMS$1 > 0ll ) goto label$168;
			label$169:;
			if( OVL_PARAMS$1 != 0ll ) goto label$186;
			{
				goto label$136;
			}
			label$186:;
			label$185:;
		}
		label$165:;
		label$164:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 200ll);
	}
	label$153:;
	if( OVL$1 != (struct $8FBSYMBOL*)0ull ) goto label$151;
	label$152:;
	if( PRESERVECASE$1 == 0ll ) goto label$187;
	TMP$97$1 = 1ll;
	goto label$1023;
	label$187:;
	TMP$97$1 = 0ll;
	label$1023:;
	struct $8FBSYMBOL* vr$51 = SYMBNEWSYMBOL( TMP$97$1, PROC$1, SYMTB$1, HASHTB$1, 3ll, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
	PROC$1 = vr$51;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$189;
	{
		goto label$136;
	}
	label$189:;
	label$188:;
	if( ID$1 == (uint8*)0ull ) goto label$191;
	{
		struct $8FBSYMBOL* NXT$2;
		*(uint64*)((uint8*)PROC$1 + 264ll) = *(uint64*)((uint8*)OVL_HEAD_PROC$1 + 264ll);
		*(struct $8HASHITEM**)((uint8*)PROC$1 + 256ll) = *(struct $8HASHITEM**)((uint8*)OVL_HEAD_PROC$1 + 256ll);
		NXT$2 = *(struct $8FBSYMBOL**)((uint8*)OVL_HEAD_PROC$1 + 280ll);
		*(struct $8FBSYMBOL**)((uint8*)OVL_HEAD_PROC$1 + 280ll) = PROC$1;
		*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 272ll) = OVL_HEAD_PROC$1;
		*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 280ll) = NXT$2;
		if( NXT$2 == (struct $8FBSYMBOL*)0ull ) goto label$193;
		{
			*(struct $8FBSYMBOL**)((uint8*)NXT$2 + 272ll) = PROC$1;
		}
		label$193:;
		label$192:;
	}
	label$191:;
	label$190:;
	fb$result$1 = PROC$1;
	label$136:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HADDOPOVLPROC( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, $6AST_OP OP$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$194:;
	struct $8FBSYMBOL* OVL$1;
	if( OP$1 == 27ll ) goto label$197;
	{
		struct $8FBSYMBOL* vr$1 = HADDOVLPROC( PROC$1, OVL_HEAD_PROC$1, SYMTB$1, HASHTB$1, (uint8*)0ull, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, 0ll );
		fb$result$1 = vr$1;
		goto label$195;
	}
	label$197:;
	label$196:;
	OVL$1 = OVL_HEAD_PROC$1;
	label$198:;
	if( OVL$1 == (struct $8FBSYMBOL*)0ull ) goto label$199;
	{
		if( *(int64*)((uint8*)PROC$1 + 56ll) != *(int64*)((uint8*)OVL$1 + 56ll) ) goto label$201;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) != *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 64ll) ) goto label$203;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$195;
			}
			label$203:;
			label$202:;
		}
		label$201:;
		label$200:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 200ll);
	}
	goto label$198;
	label$199:;
	struct $8FBSYMBOL* vr$7 = SYMBNEWSYMBOL( 0ll, PROC$1, SYMTB$1, HASHTB$1, 3ll, (uint8*)0ull, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
	PROC$1 = vr$7;
	fb$result$1 = PROC$1;
	label$195:;
	return fb$result$1;
}

static void HSETUPPROCREGISTERPARAMETERS( struct $8FBSYMBOL* PROC$1 )
{
	label$204:;
	int64 REGNUM$1;
	REGNUM$1 = 1ll;
	int64 MAXREGNUM$1;
	MAXREGNUM$1 = 0ll;
	{
		$11FB_FUNCMODE TMP$98$2;
		TMP$98$2 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll);
		if( TMP$98$2 != 5ll ) goto label$207;
		label$208:;
		{
			MAXREGNUM$1 = 1ll;
		}
		goto label$206;
		label$207:;
		if( TMP$98$2 != 6ll ) goto label$209;
		label$210:;
		{
			MAXREGNUM$1 = 2ll;
		}
		label$209:;
		label$206:;
	}
	if( MAXREGNUM$1 <= 0ll ) goto label$212;
	{
		struct $8FBSYMBOL* PARAM$2;
		PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
		if( (*(int64*)((uint8*)PARAM$2 + 8ll) & 524288ll) == 0ll ) goto label$214;
		{
			*(int64*)((uint8*)PARAM$2 + 136ll) = REGNUM$1;
			REGNUM$1 = REGNUM$1 + 1ll;
			PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 312ll);
		}
		label$214:;
		label$213:;
		label$215:;
		if( ((int64)-(PARAM$2 != (struct $8FBSYMBOL*)0ull) & (int64)-(REGNUM$1 <= MAXREGNUM$1)) == 0ll ) goto label$216;
		{
			int64 TMP$99$3;
			if( *(int64*)((uint8*)PARAM$2 + 96ll) != 2ll ) goto label$218;
			{
				*(int64*)((uint8*)PARAM$2 + 136ll) = REGNUM$1;
				REGNUM$1 = REGNUM$1 + 1ll;
			}
			goto label$217;
			label$218:;
			if( ((*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$220;
			TMP$99$3 = 24ll;
			goto label$1024;
			label$220:;
			TMP$99$3 = (*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 31ll;
			label$1024:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$3 * 56ll)) != 0ll ) goto label$219;
			{
				if( *(int64*)((uint8*)PARAM$2 + 80ll) > *(int64*)((uint8*)&ENV$ + 592ll) ) goto label$222;
				{
					*(int64*)((uint8*)PARAM$2 + 136ll) = REGNUM$1;
					REGNUM$1 = REGNUM$1 + 1ll;
				}
				label$222:;
				label$221:;
			}
			label$219:;
			label$217:;
			PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 312ll);
		}
		goto label$215;
		label$216:;
	}
	label$212:;
	label$211:;
	label$205:;
}

static struct $8FBSYMBOL* HSETUPPROC( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PARENT$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, uint8* ID$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$223:;
	int64 STATS$1;
	int64 PRESERVE_CASE$1;
	int64 LOOKUPOPTIONS$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	struct $8FBSYMBOL* OVERRIDDEN$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( DTYPE$1 != 2147483648ll ) goto label$226;
	{
		int64 vr$1 = SYMBGETDEFTYPE( ID$1 );
		DTYPE$1 = vr$1;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$226:;
	label$225:;
	if( ID_ALIAS$1 != (uint8*)0ull ) goto label$228;
	{
		if( *(int64*)((uint8*)&PARSER$ + 208ll) == 0ll ) goto label$230;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$230:;
		label$229:;
		STATS$1 = 0ll;
	}
	goto label$227;
	label$228:;
	{
		STATS$1 = 512ll;
	}
	label$227:;
	HEAD_PROC$1 = (struct $8FBSYMBOL*)0ull;
	if( (PATTRIB$1 & 4108ll) == 0ll ) goto label$232;
	{
		PATTRIB$1 = PATTRIB$1 | 1024ll;
		if( (PATTRIB$1 & 4ll) == 0ll ) goto label$234;
		{
			struct $8FBSYMBOL* vr$5 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			HEAD_PROC$1 = vr$5;
		}
		goto label$233;
		label$234:;
		if( (PATTRIB$1 & 8ll) == 0ll ) goto label$235;
		{
			struct $8FBSYMBOL* vr$7 = SYMBGETCOMPDTOR1( PARENT$1 );
			HEAD_PROC$1 = vr$7;
		}
		goto label$233;
		label$235:;
		{
			struct $8FBSYMBOL* vr$8 = SYMBGETCOMPDTOR0( PARENT$1 );
			HEAD_PROC$1 = vr$8;
		}
		label$233:;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$237;
		{
			struct $8FBSYMBOL* vr$9 = SYMBNEWSYMBOL( 0ll, SYM$1, SYMTB$1, HASHTB$1, 3ll, (uint8*)0ull, ID_ALIAS$1, 0ll, (struct $8FBSYMBOL*)0ull, ATTRIB$1, PATTRIB$1 );
			PROC$1 = vr$9;
			if( (PATTRIB$1 & 4ll) == 0ll ) goto label$239;
			{
				SYMBSETCOMPCTORHEAD( PARENT$1, PROC$1 );
			}
			goto label$238;
			label$239:;
			if( (PATTRIB$1 & 8ll) == 0ll ) goto label$240;
			{
				SYMBSETCOMPDTOR1( PARENT$1, PROC$1 );
			}
			goto label$238;
			label$240:;
			{
				SYMBSETCOMPDTOR0( PARENT$1, PROC$1 );
			}
			label$238:;
		}
		goto label$236;
		label$237:;
		{
			if( (PATTRIB$1 & 4104ll) == 0ll ) goto label$242;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$224;
			}
			label$242:;
			label$241:;
			struct $8FBSYMBOL* vr$13 = HADDOVLPROC( SYM$1, HEAD_PROC$1, SYMTB$1, HASHTB$1, (uint8*)0ull, ID_ALIAS$1, 0ll, (struct $8FBSYMBOL*)0ull, ATTRIB$1, PATTRIB$1, 0ll );
			PROC$1 = vr$13;
			if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$244;
			{
				goto label$224;
			}
			label$244:;
			label$243:;
		}
		label$236:;
		if( (PATTRIB$1 & 4ll) == 0ll ) goto label$246;
		{
			SYMBCHECKCOMPCTOR( PARENT$1, PROC$1 );
		}
		label$246:;
		label$245:;
	}
	goto label$231;
	label$232:;
	if( (PATTRIB$1 & 16ll) == 0ll ) goto label$247;
	{
		if( *(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) != (struct $10FB_PROCEXT*)0ull ) goto label$249;
		{
			goto label$250;
		}
		label$249:;
		label$248:;
		$6AST_OP OP$2;
		__builtin_memset( &OP$2, 0, 8ll );
		OP$2 = *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 80ll);
		struct $8FBSYMBOL* vr$20 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$2 );
		HEAD_PROC$1 = vr$20;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$252;
		{
			struct $8FBSYMBOL* vr$21 = SYMBNEWSYMBOL( 0ll, SYM$1, SYMTB$1, HASHTB$1, 3ll, (uint8*)0ull, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
			PROC$1 = vr$21;
			SYMBSETCOMPOPOVLHEAD( PARENT$1, PROC$1 );
		}
		goto label$251;
		label$252:;
		{
			struct $8FBSYMBOL* vr$22 = HADDOPOVLPROC( SYM$1, HEAD_PROC$1, SYMTB$1, HASHTB$1, OP$2, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
			PROC$1 = vr$22;
			if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$254;
			{
				goto label$224;
			}
			label$254:;
			label$253:;
			if( OP$2 != 0ll ) goto label$256;
			{
				SYMBCHECKCOMPLETOP( PARENT$1, PROC$1 );
			}
			label$256:;
			label$255:;
		}
		label$251:;
	}
	goto label$231;
	label$247:;
	{
		label$250:;
		PRESERVE_CASE$1 = (int64)-((OPTIONS$1 & 1ll) != 0ll);
		struct $8FBSYMBOL* vr$26 = SYMBNEWSYMBOL( OPTIONS$1 | 32ll, SYM$1, SYMTB$1, HASHTB$1, 3ll, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
		PROC$1 = vr$26;
		if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$258;
		{
			struct $8FBSYMBOL* vr$27 = SYMBLOOKUPBYNAMEANDCLASS( PARENT$1, ID$1, 3ll, PRESERVE_CASE$1, 0ll );
			HEAD_PROC$1 = vr$27;
			if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$260;
			{
				goto label$224;
			}
			label$260:;
			label$259:;
			if( (*(int64*)((uint8*)HEAD_PROC$1 + 16ll) & 1ll) != 0ll ) goto label$262;
			{
				if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 1024ll) != 0ll ) goto label$264;
				{
					goto label$224;
				}
				label$264:;
				label$263:;
			}
			label$262:;
			label$261:;
			struct $8FBSYMBOL* vr$31 = HADDOVLPROC( SYM$1, HEAD_PROC$1, SYMTB$1, HASHTB$1, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, PRESERVE_CASE$1 );
			PROC$1 = vr$31;
			if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$266;
			{
				goto label$224;
			}
			label$266:;
			label$265:;
			*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 16ll) = *(int64*)((uint8*)PROC$1 + 16ll) | 1ll;
		}
		goto label$257;
		label$258:;
		{
			if( (OPTIONS$1 & 16ll) != 0ll ) goto label$268;
			{
				if( (PATTRIB$1 & 1ll) == 0ll ) goto label$270;
				{
					int64 vr$37 = HCANOVERLOAD( SYM$1 );
					if( vr$37 != 0ll ) goto label$272;
					{
						goto label$224;
					}
					label$272:;
					label$271:;
				}
				goto label$269;
				label$270:;
				if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 1024ll) == 0ll ) goto label$273;
				{
					int64 vr$39 = HCANOVERLOAD( SYM$1 );
					if( vr$39 == 0ll ) goto label$275;
					{
						*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 16ll) = *(int64*)((uint8*)PROC$1 + 16ll) | 1ll;
					}
					label$275:;
					label$274:;
				}
				label$273:;
				label$269:;
			}
			label$268:;
			label$267:;
		}
		label$257:;
	}
	label$231:;
	if( (OPTIONS$1 & 16ll) == 0ll ) goto label$277;
	{
		STATS$1 = STATS$1 | 32ll;
	}
	label$277:;
	label$276:;
	*($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll) = MODE$1;
	if( *(int64*)((uint8*)&PARSER$ + 48ll) != 306ll ) goto label$279;
	{
		if( ((int64)-(*(int64*)((uint8*)&PARSER$ + 208ll) != 4ll) & (int64)-(*(int64*)((uint8*)&PARSER$ + 208ll) != 6ll)) == 0ll ) goto label$281;
		{
			STATS$1 = STATS$1 | 2048ll;
		}
		label$281:;
		label$280:;
	}
	label$279:;
	label$278:;
	SYMBPROCRECALCREALTYPE( PROC$1 );
	if( (OPTIONS$1 & 4ll) == 0ll ) goto label$283;
	{
		STATS$1 = STATS$1 | 8ll;
	}
	label$283:;
	label$282:;
	*(tmp$34*)((uint8*)PROC$1 + 184ll) = (tmp$34)0ull;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 1ll) == 0ll ) goto label$285;
	{
		int64 PARAMS$2;
		PARAMS$2 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$287;
		{
			PARAMS$2 = PARAMS$2 + -1ll;
		}
		label$287:;
		label$286:;
		if( HEAD_PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$289;
		{
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll) = *(struct $8FBSYMBOL**)((uint8*)HEAD_PROC$1 + 200ll);
			*(struct $8FBSYMBOL**)((uint8*)HEAD_PROC$1 + 200ll) = PROC$1;
			if( PARAMS$2 >= (int64)*(int16*)((uint8*)HEAD_PROC$1 + 192ll) ) goto label$291;
			{
				*(int16*)((uint8*)HEAD_PROC$1 + 192ll) = (int16)PARAMS$2;
			}
			label$291:;
			label$290:;
			if( PARAMS$2 <= (int64)*(int16*)((uint8*)HEAD_PROC$1 + 194ll) ) goto label$293;
			{
				*(int16*)((uint8*)HEAD_PROC$1 + 194ll) = (int16)PARAMS$2;
			}
			label$293:;
			label$292:;
		}
		goto label$288;
		label$289:;
		{
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 200ll) = (struct $8FBSYMBOL*)0ull;
			*(int16*)((uint8*)PROC$1 + 192ll) = (int16)PARAMS$2;
			*(int16*)((uint8*)PROC$1 + 194ll) = (int16)PARAMS$2;
		}
		label$288:;
	}
	label$285:;
	label$284:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = *(int64*)((uint8*)PROC$1 + 24ll) | STATS$1;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$295;
	{
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 512ll) == 0ll ) goto label$297;
		{
			*(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 240ll) + 312ll) = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 240ll) + 312ll) + 1ll;
		}
		label$297:;
		label$296:;
		OVERRIDDEN$1 = (struct $8FBSYMBOL*)0ull;
		if( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll) == (struct $8FBSYMBOL*)0ull ) goto label$299;
		{
			if( (*(int64*)((uint8*)PROC$1 + 16ll) & 8ll) == 0ll ) goto label$301;
			{
				struct $8FBSYMBOL* vr$93 = SYMBGETCOMPDTOR1( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll) + 64ll) );
				OVERRIDDEN$1 = vr$93;
			}
			goto label$300;
			label$301:;
			if( (*(int64*)((uint8*)PROC$1 + 16ll) & 4096ll) == 0ll ) goto label$302;
			{
				struct $8FBSYMBOL* vr$98 = SYMBGETCOMPDTOR0( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll) + 64ll) );
				OVERRIDDEN$1 = vr$98;
			}
			goto label$300;
			label$302:;
			if( (*(int64*)((uint8*)PROC$1 + 16ll) & 16ll) == 0ll ) goto label$303;
			{
				struct $8FBSYMBOL* vr$105 = SYMBGETCOMPOPOVLHEAD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll) + 64ll), *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll) );
				OVERRIDDEN$1 = vr$105;
				struct $8FBSYMBOL* vr$108 = SYMBFINDOPOVLPROC( *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll), OVERRIDDEN$1, PROC$1 );
				OVERRIDDEN$1 = vr$108;
			}
			goto label$300;
			label$303:;
			if( ID$1 == (uint8*)0ull ) goto label$304;
			{
				struct $8FBSYMBOL* vr$113 = SYMBLOOKUPBYNAMEANDCLASS( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll) + 64ll), ID$1, 3ll, (int64)-((OPTIONS$1 & 1ll) != 0ll), -1ll );
				OVERRIDDEN$1 = vr$113;
				LOOKUPOPTIONS$1 = 0ll;
				if( (*(int64*)((uint8*)PROC$1 + 16ll) & 32ll) == 0ll ) goto label$306;
				{
					if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll ) goto label$308;
					{
						LOOKUPOPTIONS$1 = 1ll;
					}
					label$308:;
					label$307:;
				}
				label$306:;
				label$305:;
				struct $8FBSYMBOL* vr$118 = SYMBFINDOVERLOADPROC( OVERRIDDEN$1, PROC$1, LOOKUPOPTIONS$1 );
				OVERRIDDEN$1 = vr$118;
			}
			label$304:;
			label$300:;
			if( OVERRIDDEN$1 == (struct $8FBSYMBOL*)0ull ) goto label$310;
			{
				if( (*(int64*)((uint8*)OVERRIDDEN$1 + 16ll) & 256ll) != 0ll ) goto label$312;
				{
					OVERRIDDEN$1 = (struct $8FBSYMBOL*)0ull;
				}
				label$312:;
				label$311:;
			}
			label$310:;
			label$309:;
		}
		label$299:;
		label$298:;
		if( OVERRIDDEN$1 == (struct $8FBSYMBOL*)0ull ) goto label$314;
		{
			if( (*(int64*)((uint8*)OVERRIDDEN$1 + 16ll) & 512ll) == 0ll ) goto label$316;
			{
				*(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 240ll) + 312ll) = *(int64*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 240ll) + 312ll) + -1ll;
			}
			label$316:;
			label$315:;
			int64 vr$128 = SYMBPROCGETVTABLEINDEX( OVERRIDDEN$1 );
			SYMBPROCSETVTABLEINDEX( PROC$1, vr$128 );
			*(struct $8FBSYMBOL**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 144ll) = OVERRIDDEN$1;
		}
		goto label$313;
		label$314:;
		{
			if( (*(int64*)((uint8*)PROC$1 + 16ll) & 256ll) == 0ll ) goto label$318;
			{
				int64 vr$133 = SYMBCOMPADDVIRTUAL( PARENT$1 );
				SYMBPROCSETVTABLEINDEX( PROC$1, vr$133 );
			}
			label$318:;
			label$317:;
		}
		label$313:;
	}
	label$295:;
	label$294:;
	HSETUPPROCREGISTERPARAMETERS( PROC$1 );
	fb$result$1 = PROC$1;
	label$224:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE HCALCTYPESDIFF( int64 PARAM_DTYPE_IN$1, struct $8FBSYMBOL* PARAM_SUBTYPE$1, int64 PARAM_PTRCNT$1, int64 ARG_DTYPE_IN$1, struct $8FBSYMBOL* ARG_SUBTYPE$1, struct $7ASTNODE* ARG_EXPR$1, $12FB_PARAMMODE MODE$1 )
{
	int64 TMP$109$1;
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$461:;
	int64 ARG_DCLASS$1;
	int64 PARAM_DT$1;
	int64 ARG_DT$1;
	int64 PARAM_DTYPE$1;
	__builtin_memset( &PARAM_DTYPE$1, 0, 8ll );
	int64 ARG_DTYPE$1;
	__builtin_memset( &ARG_DTYPE$1, 0, 8ll );
	fb$result$1 = 0ll;
	PARAM_DTYPE$1 = PARAM_DTYPE_IN$1 & 511ll;
	ARG_DTYPE$1 = ARG_DTYPE_IN$1 & 511ll;
	if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$463;
	TMP$109$1 = 24ll;
	goto label$1025;
	label$463:;
	TMP$109$1 = ARG_DTYPE$1 & 31ll;
	label$1025:;
	ARG_DCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$109$1 * 56ll));
	{
		int64 TMP$110$2;
		uint64 TMP$111$2;
		if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$464;
		TMP$110$2 = 24ll;
		goto label$1026;
		label$464:;
		TMP$110$2 = PARAM_DTYPE$1 & 31ll;
		label$1026:;
		TMP$111$2 = *(uint64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$110$2 * 56ll));
		goto label$466;
		label$467:;
		{
			{
				uint64 TMP$112$4;
				TMP$112$4 = (uint64)ARG_DCLASS$1;
				goto label$469;
				label$470:;
				{
					int64 TMP$113$5;
					int64 TMP$114$5;
					{
						if( PARAM_DTYPE$1 != 4ll ) goto label$472;
						label$473:;
						{
							{
								if( ARG_DTYPE$1 != 4ll ) goto label$475;
								label$476:;
								{
									fb$result$1 = 1300ll;
									goto label$462;
								}
								goto label$474;
								label$475:;
								if( ARG_DTYPE$1 != 7ll ) goto label$477;
								label$478:;
								{
									fb$result$1 = 777ll;
									goto label$462;
								}
								label$477:;
								label$474:;
							}
							fb$result$1 = 0ll;
							goto label$462;
						}
						goto label$471;
						label$472:;
						if( PARAM_DTYPE$1 != 7ll ) goto label$479;
						label$480:;
						{
							{
								if( ARG_DTYPE$1 != 4ll ) goto label$482;
								label$483:;
								{
									fb$result$1 = 777ll;
									goto label$462;
								}
								goto label$481;
								label$482:;
								if( ARG_DTYPE$1 != 7ll ) goto label$484;
								label$485:;
								{
									fb$result$1 = 1300ll;
									goto label$462;
								}
								label$484:;
								label$481:;
							}
							fb$result$1 = 0ll;
							goto label$462;
						}
						goto label$471;
						label$479:;
						if( PARAM_DTYPE$1 != 36ll ) goto label$486;
						label$487:;
						{
							{
								if( ARG_DTYPE$1 != 4ll ) goto label$489;
								label$490:;
								{
									fb$result$1 = 1299ll;
									goto label$462;
								}
								goto label$488;
								label$489:;
								if( ARG_DTYPE$1 != 7ll ) goto label$491;
								label$492:;
								{
									fb$result$1 = 776ll;
									goto label$462;
								}
								label$491:;
								label$488:;
							}
						}
						goto label$471;
						label$486:;
						if( PARAM_DTYPE$1 != 39ll ) goto label$493;
						label$494:;
						{
							{
								if( ARG_DTYPE$1 != 4ll ) goto label$496;
								label$497:;
								{
									fb$result$1 = 776ll;
									goto label$462;
								}
								goto label$495;
								label$496:;
								if( ARG_DTYPE$1 != 7ll ) goto label$498;
								label$499:;
								{
									fb$result$1 = 1299ll;
									goto label$462;
								}
								label$498:;
								label$495:;
							}
						}
						goto label$471;
						label$493:;
						{
							{
								if( ARG_DTYPE$1 == 4ll ) goto label$503;
								label$504:;
								if( ARG_DTYPE$1 != 7ll ) goto label$502;
								label$503:;
								{
									if( ARG_EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$506;
									{
										fb$result$1 = 0ll;
										goto label$462;
									}
									label$506:;
									label$505:;
									if( *(int64*)ARG_EXPR$1 == 20ll ) goto label$508;
									{
										fb$result$1 = 0ll;
										goto label$462;
									}
									label$508:;
									label$507:;
								}
								label$502:;
								label$501:;
							}
						}
						label$500:;
						label$471:;
					}
					if( ARG_DTYPE$1 != 10ll ) goto label$510;
					{
						ARG_DTYPE$1 = (ARG_DTYPE$1 & -512ll) | (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (ARG_DTYPE$1 * 56ll)) + 32ll) & 511ll);
					}
					label$510:;
					label$509:;
					if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$512;
					{
						if( (ARG_DTYPE$1 & 480ll) != 0ll ) goto label$514;
						{
							if( ARG_EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$516;
							{
								fb$result$1 = 0ll;
								goto label$462;
							}
							label$516:;
							label$515:;
							int64 vr$18 = ASTCHECKCONVNONPTRTOPTR( PARAM_DTYPE$1, ARG_DTYPE$1, ARG_EXPR$1, 0ll );
							if( vr$18 == 0ll ) goto label$518;
							{
								fb$result$1 = 0ll;
								goto label$462;
							}
							label$518:;
							label$517:;
							fb$result$1 = 1ll;
							goto label$462;
						}
						label$514:;
						label$513:;
						if( ((int64)-(PARAM_DTYPE$1 == 32ll) | (int64)-(ARG_DTYPE$1 == 32ll)) == 0ll ) goto label$520;
						{
							fb$result$1 = 780ll;
							goto label$462;
						}
						label$520:;
						label$519:;
						$22FB_OVLPROC_MATCH_SCORE vr$22 = TYPECALCMATCH( PARAM_DTYPE$1, PARAM_SUBTYPE$1, MODE$1, ARG_DTYPE$1, ARG_SUBTYPE$1 );
						fb$result$1 = vr$22;
						goto label$462;
					}
					goto label$511;
					label$512:;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$521;
					{
						fb$result$1 = 0ll;
						goto label$462;
					}
					label$521:;
					label$511:;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$522;
					TMP$113$5 = 24ll;
					goto label$1027;
					label$522:;
					TMP$113$5 = ARG_DTYPE$1 & 31ll;
					label$1027:;
					if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$523;
					TMP$114$5 = 24ll;
					goto label$1028;
					label$523:;
					TMP$114$5 = PARAM_DTYPE$1 & 31ll;
					label$1028:;
					fb$result$1 = -(*(int64*)(((int64)(int64*)SYMB_DTYPEMATCHTB$ + (((TMP$113$5 << (4ll & 63ll)) + TMP$114$5) << (3ll & 63ll))) + -136ll)) + 780ll;
					goto label$462;
				}
				goto label$468;
				label$524:;
				{
					int64 TMP$115$5;
					int64 TMP$116$5;
					if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$526;
					{
						fb$result$1 = 0ll;
						goto label$462;
					}
					label$526:;
					label$525:;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$527;
					TMP$115$5 = 24ll;
					goto label$1029;
					label$527:;
					TMP$115$5 = ARG_DTYPE$1 & 31ll;
					label$1029:;
					if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$528;
					TMP$116$5 = 24ll;
					goto label$1030;
					label$528:;
					TMP$116$5 = PARAM_DTYPE$1 & 31ll;
					label$1030:;
					fb$result$1 = -(*(int64*)(((int64)(int64*)SYMB_DTYPEMATCHTB$ + (((TMP$115$5 << (4ll & 63ll)) + TMP$116$5) << (3ll & 63ll))) + -136ll)) + 780ll;
					goto label$462;
				}
				goto label$468;
				label$529:;
				{
					{
						if( PARAM_DTYPE$1 != 4ll ) goto label$531;
						label$532:;
						{
							fb$result$1 = 1299ll;
							goto label$462;
						}
						goto label$530;
						label$531:;
						if( PARAM_DTYPE$1 != 36ll ) goto label$533;
						label$534:;
						{
							fb$result$1 = 1298ll;
							goto label$462;
						}
						goto label$530;
						label$533:;
						if( PARAM_DTYPE$1 != 7ll ) goto label$535;
						label$536:;
						{
							fb$result$1 = 777ll;
							goto label$462;
						}
						goto label$530;
						label$535:;
						if( PARAM_DTYPE$1 != 39ll ) goto label$537;
						label$538:;
						{
							fb$result$1 = 776ll;
							goto label$462;
						}
						label$537:;
						label$530:;
					}
				}
				goto label$468;
				label$469:;
				static const void* tmp$181[3ll] = {
					&&label$470,
					&&label$524,
					&&label$529,
				};
				if( TMP$112$4 > 2ull ) goto label$468;
				goto *tmp$181[TMP$112$4 - 0ull];
				label$468:;
			}
		}
		goto label$465;
		label$539:;
		{
			{
				uint64 TMP$117$4;
				TMP$117$4 = (uint64)ARG_DCLASS$1;
				goto label$541;
				label$542:;
				{
					int64 TMP$118$5;
					int64 TMP$119$5;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$544;
					{
						fb$result$1 = 0ll;
						goto label$462;
					}
					label$544:;
					label$543:;
					if( ARG_DTYPE$1 != 10ll ) goto label$546;
					{
						ARG_DTYPE$1 = (ARG_DTYPE$1 & -512ll) | (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (ARG_DTYPE$1 * 56ll)) + 32ll) & 511ll);
					}
					label$546:;
					label$545:;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$547;
					TMP$118$5 = 24ll;
					goto label$1031;
					label$547:;
					TMP$118$5 = ARG_DTYPE$1 & 31ll;
					label$1031:;
					if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$548;
					TMP$119$5 = 24ll;
					goto label$1032;
					label$548:;
					TMP$119$5 = PARAM_DTYPE$1 & 31ll;
					label$1032:;
					fb$result$1 = -(*(int64*)(((int64)(int64*)SYMB_DTYPEMATCHTB$ + (((TMP$118$5 << (4ll & 63ll)) + TMP$119$5) << (3ll & 63ll))) + -136ll)) + 780ll;
					goto label$462;
				}
				goto label$540;
				label$549:;
				{
					int64 TMP$120$5;
					int64 TMP$121$5;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$550;
					TMP$120$5 = 24ll;
					goto label$1033;
					label$550:;
					TMP$120$5 = ARG_DTYPE$1 & 31ll;
					label$1033:;
					if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$551;
					TMP$121$5 = 24ll;
					goto label$1034;
					label$551:;
					TMP$121$5 = PARAM_DTYPE$1 & 31ll;
					label$1034:;
					fb$result$1 = -(*(int64*)(((int64)(int64*)SYMB_DTYPEMATCHTB$ + (((TMP$120$5 << (4ll & 63ll)) + TMP$121$5) << (3ll & 63ll))) + -136ll)) + 780ll;
					goto label$462;
				}
				goto label$540;
				label$541:;
				static const void* tmp$182[2ll] = {
					&&label$542,
					&&label$549,
				};
				if( TMP$117$4 > 1ull ) goto label$540;
				goto *tmp$182[TMP$117$4 - 0ull];
				label$540:;
			}
		}
		goto label$465;
		label$552:;
		{
			{
				if( ARG_DCLASS$1 != 2ll ) goto label$554;
				label$555:;
				{
					fb$result$1 = 1300ll;
				}
				goto label$553;
				label$554:;
				if( ARG_DCLASS$1 != 0ll ) goto label$556;
				label$557:;
				{
					{
						if( ARG_DTYPE$1 != 4ll ) goto label$559;
						label$560:;
						{
							fb$result$1 = 1298ll;
						}
						goto label$558;
						label$559:;
						if( ARG_DTYPE$1 != 7ll ) goto label$561;
						label$562:;
						{
							fb$result$1 = 778ll;
						}
						label$561:;
						label$558:;
					}
				}
				label$556:;
				label$553:;
			}
		}
		goto label$465;
		label$466:;
		static const void* tmp$183[3ll] = {
			&&label$467,
			&&label$539,
			&&label$552,
		};
		if( TMP$111$2 > 2ull ) goto label$465;
		goto *tmp$183[TMP$111$2 - 0ull];
		label$465:;
	}
	label$462:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE HCHECKOVLPARAM( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* ARG_EXPR$1, int64 ARG_MODE$1, $9FB_ERRMSG* ERR_NUM$1, $14FB_SYMBFINDOPT OPTIONS$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$563:;
	int64 PARAM_DTYPE$1;
	int64 ARG_DTYPE$1;
	int64 PARAM_PTRCNT$1;
	int64 CONST_MATCHES$1;
	struct $8FBSYMBOL* PARAM_SUBTYPE$1;
	struct $8FBSYMBOL* ARG_SUBTYPE$1;
	struct $8FBSYMBOL* ARRAY$1;
	$12FB_PARAMMODE PARAM_MODE$1;
	if( ARG_EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$566;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$568;
		{
			fb$result$1 = 1300ll;
			goto label$564;
		}
		goto label$567;
		label$568:;
		{
			fb$result$1 = 0ll;
			goto label$564;
		}
		label$567:;
	}
	label$566:;
	label$565:;
	PARAM_DTYPE$1 = *(int64*)((uint8*)PARAM$1 + 56ll);
	PARAM_SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll);
	PARAM_PTRCNT$1 = ((*(int64*)((uint8*)PARAM$1 + 56ll) & 511ll) & 480ll) >> (5ll & 63ll);
	PARAM_MODE$1 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll);
	ARG_DTYPE$1 = *(int64*)((uint8*)ARG_EXPR$1 + 8ll);
	ARG_SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARG_EXPR$1 + 16ll);
	{
		if( PARAM_MODE$1 != 3ll ) goto label$570;
		label$571:;
		{
			if( ARG_MODE$1 == 3ll ) goto label$573;
			{
				fb$result$1 = 0ll;
				goto label$564;
			}
			label$573:;
			label$572:;
			$22FB_OVLPROC_MATCH_SCORE MATCH$3;
			$22FB_OVLPROC_MATCH_SCORE vr$11 = TYPECALCMATCH( PARAM_DTYPE$1, PARAM_SUBTYPE$1, PARAM_MODE$1, ARG_DTYPE$1, ARG_SUBTYPE$1 );
			MATCH$3 = vr$11;
			if( MATCH$3 >= 1040ll ) goto label$575;
			{
				fb$result$1 = 0ll;
				goto label$564;
			}
			label$575:;
			label$574:;
			ARRAY$1 = *(struct $8FBSYMBOL**)((uint8*)ARG_EXPR$1 + 24ll);
			if( *(int64*)((uint8*)PARAM$1 + 120ll) <= 0ll ) goto label$577;
			{
				if( ((int64)-(*(int64*)((uint8*)PARAM$1 + 120ll) != *(int64*)((uint8*)ARRAY$1 + 104ll)) & (int64)-(*(int64*)((uint8*)ARRAY$1 + 104ll) > 0ll)) == 0ll ) goto label$579;
				{
					fb$result$1 = 0ll;
					goto label$564;
				}
				label$579:;
				label$578:;
			}
			label$577:;
			label$576:;
			fb$result$1 = MATCH$3;
			goto label$564;
		}
		goto label$569;
		label$570:;
		if( PARAM_MODE$1 != 2ll ) goto label$580;
		label$581:;
		{
			int64 TMP$122$3;
			if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$582;
			TMP$122$3 = 24ll;
			goto label$1035;
			label$582:;
			TMP$122$3 = ARG_DTYPE$1 & 31ll;
			label$1035:;
			if( ((int64)-(ARG_MODE$1 == 1ll) & (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$122$3 * 56ll)) != 3ll)) == 0ll ) goto label$584;
			{
				int64 TMP$123$4;
				int64 TMP$124$4;
				if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$585;
				TMP$123$4 = 24ll;
				goto label$1036;
				label$585:;
				TMP$123$4 = ARG_DTYPE$1 & 31ll;
				label$1036:;
				if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$586;
				TMP$124$4 = 24ll;
				goto label$1037;
				label$586:;
				TMP$124$4 = ARG_DTYPE$1 & 31ll;
				label$1037:;
				if( ((int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$123$4 * 56ll)) != 0ll) | (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$124$4 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 592ll))) == 0ll ) goto label$588;
				{
					fb$result$1 = 0ll;
					goto label$564;
				}
				label$588:;
				label$587:;
				PARAM_DTYPE$1 = (((PARAM_DTYPE$1 & 31ll) | ((PARAM_DTYPE$1 & 480ll) + 32ll)) | ((PARAM_DTYPE$1 & 261632ll) << (1ll & 63ll))) | (PARAM_DTYPE$1 & 32505856ll);
				PARAM_PTRCNT$1 = PARAM_PTRCNT$1 + 1ll;
			}
			label$584:;
			label$583:;
		}
		label$580:;
		label$569:;
	}
	if( ARG_MODE$1 != 3ll ) goto label$590;
	{
		fb$result$1 = 0ll;
		goto label$564;
	}
	label$590:;
	label$589:;
	if( (PARAM_DTYPE$1 & 511ll) != (ARG_DTYPE$1 & 511ll) ) goto label$592;
	{
		int64 BASELEVEL$2;
		BASELEVEL$2 = 0ll;
		$22FB_OVLPROC_MATCH_SCORE MATCH$2;
		MATCH$2 = 0ll;
		if( PARAM_SUBTYPE$1 != ARG_SUBTYPE$1 ) goto label$594;
		{
			MATCH$2 = 1300ll;
		}
		goto label$593;
		label$594:;
		{
			{
				int64 TMP$125$4;
				TMP$125$4 = PARAM_DTYPE$1 & 31ll;
				if( TMP$125$4 != 20ll ) goto label$596;
				label$597:;
				{
					int64 BASELEVEL$5;
					int64 vr$48 = SYMBGETUDTBASELEVEL( ARG_SUBTYPE$1, PARAM_SUBTYPE$1 );
					BASELEVEL$5 = vr$48;
					if( BASELEVEL$5 <= 0ll ) goto label$599;
					{
						MATCH$2 = -(BASELEVEL$5 * 10ll) + 1300ll;
					}
					label$599:;
					label$598:;
				}
				goto label$595;
				label$596:;
				if( TMP$125$4 != 22ll ) goto label$600;
				label$601:;
				{
					int64 TMP$126$5;
					TMP$126$5 = 0ll;
					$22FB_OVLPROC_MATCH_SCORE vr$53 = SYMBCALCPROCMATCH( PARAM_SUBTYPE$1, ARG_SUBTYPE$1, &TMP$126$5 );
					MATCH$2 = vr$53;
				}
				label$600:;
				label$595:;
			}
		}
		label$593:;
		if( MATCH$2 <= 0ll ) goto label$603;
		{
			if( (PARAM_DTYPE$1 & 261632ll) != (ARG_DTYPE$1 & 261632ll) ) goto label$605;
			{
				fb$result$1 = MATCH$2;
				goto label$564;
			}
			label$605:;
			label$604:;
			int64 vr$57 = SYMBCHECKCONSTASSIGNTOPLEVEL( PARAM_DTYPE$1, ARG_DTYPE$1, PARAM_SUBTYPE$1, ARG_SUBTYPE$1, PARAM_MODE$1, &CONST_MATCHES$1 );
			if( vr$57 == 0ll ) goto label$607;
			{
				if( MATCH$2 <= 1040ll ) goto label$609;
				{
					MATCH$2 = MATCH$2 + -260ll;
				}
				label$609:;
				label$608:;
				MATCH$2 = MATCH$2 + (CONST_MATCHES$1 * 10ll);
				fb$result$1 = MATCH$2;
				goto label$564;
			}
			label$607:;
			label$606:;
			fb$result$1 = 0ll;
			goto label$564;
		}
		label$603:;
		label$602:;
	}
	label$592:;
	label$591:;
	{
		if( PARAM_DTYPE$1 != 20ll ) goto label$611;
		label$612:;
		{
			if( (OPTIONS$1 & 16ll) != 0ll ) goto label$614;
			{
				int64 ERR_NUM$4;
				struct $8FBSYMBOL* PROC$4;
				struct $8FBSYMBOL* vr$63 = SYMBFINDCTOROVLPROC( PARAM_SUBTYPE$1, ARG_EXPR$1, ARG_MODE$1, ($9FB_ERRMSG*)&ERR_NUM$4, 16ll );
				PROC$4 = vr$63;
				if( PROC$4 == (struct $8FBSYMBOL*)0ull ) goto label$616;
				{
					fb$result$1 = 580ll;
					goto label$564;
				}
				label$616:;
				label$615:;
			}
			label$614:;
			label$613:;
			if( (OPTIONS$1 & 32ll) != 0ll ) goto label$618;
			{
				int64 ERR_NUM$4;
				struct $8FBSYMBOL* PROC$4;
				struct $8FBSYMBOL* vr$67 = SYMBFINDCASTOVLPROC( PARAM_DTYPE$1, PARAM_SUBTYPE$1, ARG_EXPR$1, ($9FB_ERRMSG*)&ERR_NUM$4, OPTIONS$1 | 32ll );
				PROC$4 = vr$67;
				if( PROC$4 == (struct $8FBSYMBOL*)0ull ) goto label$620;
				{
					$22FB_OVLPROC_MATCH_SCORE MATCH$5;
					$22FB_OVLPROC_MATCH_SCORE vr$74 = HCALCTYPESDIFF( PARAM_DTYPE$1, PARAM_SUBTYPE$1, ((*(int64*)((uint8*)PROC$4 + 56ll) & 511ll) & 480ll) >> (5ll & 63ll), *(int64*)((uint8*)PROC$4 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PROC$4 + 64ll), (struct $7ASTNODE*)0ull, PARAM_MODE$1 );
					MATCH$5 = vr$74;
					if( MATCH$5 < 1040ll ) goto label$622;
					{
						MATCH$5 = MATCH$5 + -520ll;
					}
					goto label$621;
					label$622:;
					if( MATCH$5 < 780ll ) goto label$623;
					{
						MATCH$5 = MATCH$5 + -780ll;
					}
					goto label$621;
					label$623:;
					{
						MATCH$5 = 60ll;
					}
					label$621:;
					fb$result$1 = MATCH$5;
					goto label$564;
				}
				label$620:;
				label$619:;
			}
			label$618:;
			label$617:;
			fb$result$1 = 0ll;
			goto label$564;
		}
		goto label$610;
		label$611:;
		if( PARAM_DTYPE$1 != 10ll ) goto label$624;
		label$625:;
		{
			fb$result$1 = 0ll;
			goto label$564;
		}
		goto label$610;
		label$624:;
		{
			{
				if( ARG_DTYPE$1 != 20ll ) goto label$628;
				label$629:;
				{
					if( (OPTIONS$1 & 32ll) != 0ll ) goto label$631;
					{
						int64 ERR_NUM$6;
						struct $8FBSYMBOL* PROC$6;
						struct $8FBSYMBOL* vr$80 = SYMBFINDCASTOVLPROC( PARAM_DTYPE$1, PARAM_SUBTYPE$1, ARG_EXPR$1, ($9FB_ERRMSG*)&ERR_NUM$6, OPTIONS$1 | 32ll );
						PROC$6 = vr$80;
						if( PROC$6 == (struct $8FBSYMBOL*)0ull ) goto label$633;
						{
							$22FB_OVLPROC_MATCH_SCORE MATCH$7;
							$22FB_OVLPROC_MATCH_SCORE vr$87 = HCALCTYPESDIFF( PARAM_DTYPE$1, PARAM_SUBTYPE$1, ((*(int64*)((uint8*)PROC$6 + 56ll) & 511ll) & 480ll) >> (5ll & 63ll), *(int64*)((uint8*)PROC$6 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PROC$6 + 64ll), (struct $7ASTNODE*)0ull, PARAM_MODE$1 );
							MATCH$7 = vr$87;
							if( MATCH$7 < 1040ll ) goto label$635;
							{
								MATCH$7 = MATCH$7 + -520ll;
							}
							goto label$634;
							label$635:;
							if( MATCH$7 < 780ll ) goto label$636;
							{
								MATCH$7 = MATCH$7 + -780ll;
							}
							goto label$634;
							label$636:;
							{
								MATCH$7 = 60ll;
							}
							label$634:;
							fb$result$1 = MATCH$7;
							goto label$564;
						}
						label$633:;
						label$632:;
					}
					label$631:;
					label$630:;
					fb$result$1 = 0ll;
					goto label$564;
				}
				label$628:;
				label$627:;
			}
		}
		label$626:;
		label$610:;
	}
	$22FB_OVLPROC_MATCH_SCORE vr$90 = HCALCTYPESDIFF( PARAM_DTYPE$1, PARAM_SUBTYPE$1, PARAM_PTRCNT$1, ARG_DTYPE$1, ARG_SUBTYPE$1, ARG_EXPR$1, PARAM_MODE$1 );
	fb$result$1 = vr$90;
	label$564:;
	return fb$result$1;
}

static int64 HCHECKOVLPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, int64 ARGS$1, struct $11FB_CALL_ARG* ARG_HEAD$1, $9FB_ERRMSG* ERR_NUM$1, $14FB_SYMBFINDOPT OPTIONS$1, struct $8FBSYMBOL* OVL$1, int64* EXACT_MATCHES$1, int64* IS_MATCH$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$637:;
	struct $8FBSYMBOL* PARAM$1;
	$22FB_OVLPROC_MATCH_SCORE ARG_MATCHSCORE$1;
	$22FB_OVLPROC_MATCH_SCORE MATCHSCORE$1;
	int64 MATCHCOUNT$1;
	struct $11FB_CALL_ARG* ARG$1;
	int64 IS_PROPERTY$1;
	IS_PROPERTY$1 = (int64)-((*(int64*)((uint8*)OVL_HEAD_PROC$1 + 16ll) & 32ll) != 0ll);
	*IS_MATCH$1 = 0ll;
	int64 PARAMS$1;
	PARAMS$1 = (int64)*(int16*)((uint8*)OVL$1 + 120ll);
	if( (*(int64*)((uint8*)OVL$1 + 16ll) & 2ll) == 0ll ) goto label$640;
	{
		PARAMS$1 = PARAMS$1 + -1ll;
	}
	label$640:;
	label$639:;
	if( IS_PROPERTY$1 == 0ll ) goto label$642;
	{
		if( (OPTIONS$1 & 1ll) == 0ll ) goto label$644;
		{
			if( (*(int64*)((uint8*)OVL$1 + 56ll) & 511ll) != 0ll ) goto label$646;
			{
				PARAMS$1 = -1ll;
			}
			label$646:;
			label$645:;
		}
		goto label$643;
		label$644:;
		{
			if( (*(int64*)((uint8*)OVL$1 + 56ll) & 511ll) == 0ll ) goto label$648;
			{
				PARAMS$1 = -1ll;
			}
			label$648:;
			label$647:;
		}
		label$643:;
	}
	label$642:;
	label$641:;
	if( ARGS$1 > PARAMS$1 ) goto label$650;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 136ll);
		if( (*(int64*)((uint8*)OVL$1 + 16ll) & 2ll) == 0ll ) goto label$652;
		{
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		}
		label$652:;
		label$651:;
		MATCHSCORE$1 = 0ll;
		*EXACT_MATCHES$1 = 0ll;
		ARG$1 = ARG_HEAD$1;
		{
			int64 I$3;
			I$3 = 0ll;
			int64 TMP$127$3;
			TMP$127$3 = ARGS$1 + -1ll;
			goto label$653;
			label$656:;
			{
				$22FB_OVLPROC_MATCH_SCORE vr$23 = HCHECKOVLPARAM( OVL$1, PARAM$1, *(struct $7ASTNODE**)ARG$1, *(int64*)((uint8*)ARG$1 + 8ll), ERR_NUM$1, OPTIONS$1 );
				ARG_MATCHSCORE$1 = vr$23;
				if( ARG_MATCHSCORE$1 != 0ll ) goto label$658;
				{
					MATCHSCORE$1 = 0ll;
					goto label$655;
				}
				label$658:;
				label$657:;
				if( ARG_MATCHSCORE$1 < 1040ll ) goto label$660;
				{
					*EXACT_MATCHES$1 = *EXACT_MATCHES$1 + 1ll;
				}
				label$660:;
				label$659:;
				MATCHSCORE$1 = MATCHSCORE$1 + ARG_MATCHSCORE$1;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
				ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 16ll);
			}
			label$654:;
			I$3 = I$3 + 1ll;
			label$653:;
			if( I$3 <= TMP$127$3 ) goto label$656;
			label$655:;
		}
		*IS_MATCH$1 = (int64)-(ARGS$1 == 0ll) | (int64)-(MATCHSCORE$1 > 0ll);
		{
			int64 I$3;
			I$3 = ARGS$1;
			int64 TMP$128$3;
			TMP$128$3 = PARAMS$1 + -1ll;
			goto label$661;
			label$664:;
			{
				if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$666;
				{
					*IS_MATCH$1 = 0ll;
					goto label$663;
				}
				label$666:;
				label$665:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
			}
			label$662:;
			I$3 = I$3 + 1ll;
			label$661:;
			if( I$3 <= TMP$128$3 ) goto label$664;
			label$663:;
		}
	}
	label$650:;
	label$649:;
	fb$result$1 = MATCHSCORE$1;
	goto label$638;
	label$638:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE HCHECKCASTOVL( struct $8FBSYMBOL* PROC$1, int64 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, $14FB_SYMBFINDOPT OPTIONS$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$748:;
	int64 PROC_DTYPE$1;
	struct $8FBSYMBOL* PROC_SUBTYPE$1;
	PROC_DTYPE$1 = *(int64*)((uint8*)PROC$1 + 56ll);
	PROC_SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll);
	if( (PROC_DTYPE$1 & 511ll) != (TO_DTYPE$1 & 511ll) ) goto label$751;
	{
		if( PROC_SUBTYPE$1 != TO_SUBTYPE$1 ) goto label$753;
		{
			if( PROC_DTYPE$1 != TO_DTYPE$1 ) goto label$755;
			{
				fb$result$1 = 1300ll;
				goto label$749;
			}
			label$755:;
			label$754:;
			fb$result$1 = 1040ll;
			goto label$749;
		}
		label$753:;
		label$752:;
		if( (PROC_DTYPE$1 & 480ll) == 0ll ) goto label$757;
		{
			fb$result$1 = 0ll;
			goto label$749;
		}
		label$757:;
		label$756:;
	}
	label$751:;
	label$750:;
	if( (OPTIONS$1 & 4ll) == 0ll ) goto label$759;
	{
		fb$result$1 = 0ll;
		goto label$749;
	}
	label$759:;
	label$758:;
	{
		int64 TMP$134$2;
		int64 TMP$135$2;
		if( (PROC_DTYPE$1 & 480ll) == 0ll ) goto label$760;
		TMP$134$2 = 24ll;
		goto label$1038;
		label$760:;
		TMP$134$2 = PROC_DTYPE$1 & 31ll;
		label$1038:;
		TMP$135$2 = TMP$134$2;
		if( TMP$135$2 == 20ll ) goto label$763;
		label$764:;
		if( TMP$135$2 != 10ll ) goto label$762;
		label$763:;
		{
			fb$result$1 = 0ll;
			goto label$749;
		}
		goto label$761;
		label$762:;
		{
			{
				int64 TMP$136$4;
				int64 TMP$137$4;
				if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$766;
				TMP$136$4 = 24ll;
				goto label$1039;
				label$766:;
				TMP$136$4 = TO_DTYPE$1 & 31ll;
				label$1039:;
				TMP$137$4 = TMP$136$4;
				if( TMP$137$4 != 20ll ) goto label$768;
				label$769:;
				{
					fb$result$1 = 0ll;
					goto label$749;
				}
				label$768:;
				label$767:;
			}
		}
		label$765:;
		label$761:;
	}
	$22FB_OVLPROC_MATCH_SCORE vr$15 = HCALCTYPESDIFF( PROC_DTYPE$1, PROC_SUBTYPE$1, ((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) & 480ll) >> (5ll & 63ll), TO_DTYPE$1, TO_SUBTYPE$1, (struct $7ASTNODE*)0ull, 0ll );
	fb$result$1 = vr$15;
	label$749:;
	return fb$result$1;
}

static void HDELPARAMS( struct $8FBSYMBOL* PROC$1 )
{
	label$813:;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* NXT$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$815:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$816;
	{
		NXT$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		SYMBFREESYMBOL( PARAM$1 );
		PARAM$1 = NXT$1;
	}
	goto label$815;
	label$816:;
	label$814:;
}

static struct $20FB_GLOBCTORLIST_ITEM* HADDTOGLOBCTORLIST( struct $15FB_GLOBCTORLIST* LIST$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $20FB_GLOBCTORLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$821:;
	struct $20FB_GLOBCTORLIST_ITEM* N$1;
	void* vr$3 = LISTNEWNODE( (struct $5TLIST*)((uint8*)LIST$1 + 16ll) );
	N$1 = (struct $20FB_GLOBCTORLIST_ITEM*)vr$3;
	if( *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)LIST$1 + 8ll) == (struct $20FB_GLOBCTORLIST_ITEM*)0ull ) goto label$824;
	{
		*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)LIST$1 + 8ll) + 8ll) = N$1;
	}
	goto label$823;
	label$824:;
	{
		*(struct $20FB_GLOBCTORLIST_ITEM**)LIST$1 = N$1;
	}
	label$823:;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)N$1 + 8ll) = (struct $20FB_GLOBCTORLIST_ITEM*)0ull;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)LIST$1 + 8ll) = N$1;
	*(struct $8FBSYMBOL**)N$1 = PROC$1;
	fb$result$1 = N$1;
	label$822:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE SYMBCALCPARAMMATCH( struct $8FBSYMBOL* L$1, struct $8FBSYMBOL* R$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$829:;
	$22FB_OVLPROC_MATCH_SCORE MATCH$1;
	$22FB_OVLPROC_MATCH_SCORE vr$6 = TYPECALCMATCH( *(int64*)((uint8*)L$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 64ll), *(int64*)((uint8*)L$1 + 96ll), *(int64*)((uint8*)R$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)R$1 + 64ll) );
	MATCH$1 = vr$6;
	if( MATCH$1 != 0ll ) goto label$832;
	{
		fb$result$1 = 0ll;
		goto label$830;
	}
	label$832:;
	label$831:;
	if( *(int64*)((uint8*)L$1 + 96ll) == *(int64*)((uint8*)R$1 + 96ll) ) goto label$834;
	{
		fb$result$1 = 0ll;
		goto label$830;
	}
	label$834:;
	label$833:;
	if( *(int64*)((uint8*)L$1 + 96ll) != 3ll ) goto label$836;
	{
		if( *(int64*)((uint8*)L$1 + 120ll) == *(int64*)((uint8*)R$1 + 120ll) ) goto label$838;
		{
			fb$result$1 = 0ll;
			goto label$830;
		}
		label$838:;
		label$837:;
	}
	label$836:;
	label$835:;
	fb$result$1 = MATCH$1;
	label$830:;
	return fb$result$1;
}

static void HSUBORFUNCTOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$899:;
	if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 0ll ) goto label$902;
	{
		fb_StrConcatByref( (void*)S$1, -1ll, (void*)"sub", 4ll, 0 );
	}
	goto label$901;
	label$902:;
	{
		fb_StrConcatByref( (void*)S$1, -1ll, (void*)"function", 9ll, 0 );
	}
	label$901:;
	label$900:;
}

static void HPROCMODETOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$903:;
	if( (((int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 4ll) != 0ll) | (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 8ll) != 0ll)) | (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 4096ll) != 0ll)) == 0ll ) goto label$906;
	{
		{
			$11FB_FUNCMODE TMP$143$3;
			TMP$143$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll);
			if( TMP$143$3 == 1ll ) goto label$909;
			label$910:;
			if( TMP$143$3 != 2ll ) goto label$908;
			label$909:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)" stdcall", 9ll, 0 );
			}
			goto label$907;
			label$908:;
			if( TMP$143$3 != 5ll ) goto label$911;
			label$912:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)" thiscall", 10ll, 0 );
			}
			goto label$907;
			label$911:;
			if( TMP$143$3 != 6ll ) goto label$913;
			label$914:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)" fastcall", 10ll, 0 );
			}
			goto label$907;
			label$913:;
			if( TMP$143$3 != 4ll ) goto label$915;
			label$916:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)" pascal", 8ll, 0 );
			}
			label$915:;
			label$907:;
		}
	}
	goto label$905;
	label$906:;
	{
		{
			$11FB_FUNCMODE TMP$148$3;
			TMP$148$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll);
			if( TMP$148$3 == 1ll ) goto label$919;
			label$920:;
			if( TMP$148$3 != 2ll ) goto label$918;
			label$919:;
			{
				{
					$11FB_FUNCMODE TMP$149$5;
					TMP$149$5 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 552ll);
					if( TMP$149$5 == 1ll ) goto label$923;
					label$924:;
					if( TMP$149$5 != 2ll ) goto label$922;
					label$923:;
					{
					}
					goto label$921;
					label$922:;
					{
						fb_StrConcatByref( (void*)S$1, -1ll, (void*)" stdcall", 9ll, 0 );
					}
					label$925:;
					label$921:;
				}
			}
			goto label$917;
			label$918:;
			if( TMP$148$3 != 5ll ) goto label$926;
			label$927:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)" thiscall", 10ll, 0 );
			}
			goto label$917;
			label$926:;
			if( TMP$148$3 != 6ll ) goto label$928;
			label$929:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)" fastcall", 10ll, 0 );
			}
			goto label$917;
			label$928:;
			if( TMP$148$3 != 4ll ) goto label$930;
			label$931:;
			{
				if( *(int64*)((uint8*)&ENV$ + 552ll) == 4ll ) goto label$933;
				{
					fb_StrConcatByref( (void*)S$1, -1ll, (void*)" pascal", 8ll, 0 );
				}
				label$933:;
				label$932:;
			}
			goto label$917;
			label$930:;
			if( TMP$148$3 != 3ll ) goto label$934;
			label$935:;
			{
				if( *(int64*)((uint8*)&ENV$ + 552ll) == 3ll ) goto label$937;
				{
					fb_StrConcatByref( (void*)S$1, -1ll, (void*)" cdecl", 7ll, 0 );
				}
				label$937:;
				label$936:;
			}
			label$934:;
			label$917:;
		}
	}
	label$905:;
	label$904:;
}

static void HPARAMSTOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$946:;
	fb_StrConcatByref( (void*)S$1, -1ll, (void*)"(", 2ll, 0 );
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	if( ((int64)-(PARAM$1 != (struct $8FBSYMBOL*)0ull) & (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) != 0ll)) == 0ll ) goto label$949;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	label$949:;
	label$948:;
	label$950:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$951;
	{
		$12FB_PARAMMODE PARAMMODE$2;
		PARAMMODE$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll);
		{
			if( PARAMMODE$2 == 1ll ) goto label$954;
			label$955:;
			if( PARAMMODE$2 == 2ll ) goto label$954;
			label$956:;
			if( PARAMMODE$2 != 3ll ) goto label$953;
			label$954:;
			{
				FBSTRING TMP$160$4;
				FBSTRING TMP$161$4;
				{
					if( PARAMMODE$2 == 1ll ) goto label$959;
					label$960:;
					if( PARAMMODE$2 != 2ll ) goto label$958;
					label$959:;
					{
						int64 vr$11 = SYMBGETDEFAULTPARAMMODE( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
						if( ((int64)-(*(int64*)((uint8*)&ENV$ + 272ll) == 0ll) & (int64)-(vr$11 != PARAMMODE$2)) == 0ll ) goto label$962;
						{
							if( PARAMMODE$2 != 1ll ) goto label$964;
							{
								fb_StrConcatByref( (void*)S$1, -1ll, (void*)"byval ", 7ll, 0 );
							}
							goto label$963;
							label$964:;
							{
								fb_StrConcatByref( (void*)S$1, -1ll, (void*)"byref ", 7ll, 0 );
							}
							label$963:;
						}
						label$962:;
						label$961:;
					}
					goto label$957;
					label$958:;
					if( PARAMMODE$2 != 3ll ) goto label$965;
					label$966:;
					{
						FBSTRING TMP$158$6;
						FBSTRING* vr$15 = HDUMPDYNAMICARRAYDIMENSIONS( *(int64*)((uint8*)PARAM$1 + 120ll) );
						__builtin_memset( &TMP$158$6, 0, 24ll );
						FBSTRING* vr$18 = fb_StrConcat( &TMP$158$6, (void*)S$1, -1ll, (void*)vr$15, -1ll );
						fb_StrAssign( (void*)S$1, -1ll, (void*)vr$18, -1ll, 0 );
					}
					label$965:;
					label$957:;
				}
				FBSTRING* vr$21 = SYMBTYPETOSTR( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), 0ll, 0ll );
				__builtin_memset( &TMP$160$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$160$4, (void*)"as ", 4ll, (void*)vr$21, -1ll );
				__builtin_memset( &TMP$161$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$161$4, (void*)S$1, -1ll, (void*)vr$24, -1ll );
				fb_StrAssign( (void*)S$1, -1ll, (void*)vr$27, -1ll, 0 );
			}
			goto label$952;
			label$953:;
			if( PARAMMODE$2 != 4ll ) goto label$967;
			label$968:;
			{
				fb_StrConcatByref( (void*)S$1, -1ll, (void*)"...", 4ll, 0 );
			}
			label$967:;
			label$952:;
		}
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$970;
		{
			fb_StrConcatByref( (void*)S$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$970:;
		label$969:;
	}
	goto label$950;
	label$951:;
	fb_StrConcatByref( (void*)S$1, -1ll, (void*)")", 2ll, 0 );
	label$947:;
}

static void HRESULTTOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$971:;
	if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll ) goto label$974;
	{
		FBSTRING TMP$166$2;
		FBSTRING TMP$167$2;
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) == 0ll ) goto label$976;
		{
			fb_StrConcatByref( (void*)S$1, -1ll, (void*)" byref", 7ll, 0 );
		}
		label$976:;
		label$975:;
		FBSTRING* vr$6 = SYMBTYPETOSTR( *(int64*)((uint8*)PROC$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll), 0ll, 0ll );
		__builtin_memset( &TMP$166$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$166$2, (void*)" as ", 5ll, (void*)vr$6, -1ll );
		__builtin_memset( &TMP$167$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$167$2, (void*)S$1, -1ll, (void*)vr$9, -1ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$12, -1ll, 0 );
	}
	label$974:;
	label$973:;
	label$972:;
}
