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
struct $14ASM64_SAVEDREG {
	int32 ID;
	int32 SDVREG;
	int32 SDOFFSET;
	int32 SPILBRANCH1;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $14ASM64_SAVEDREG ) == 16 );
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $13FB_COMPTARGET;
struct $13ASM64_CONTEXT {
	int32 INDENT;
	int32 SECTION;
	FBSTRING HEAD_TXT;
	FBSTRING BODY_TXT;
	FBSTRING FOOT_TXT;
	FBSTRING PROLOG_TXT;
	FBSTRING PROC_TXT;
	FBSTRING EPILOG_TXT;
	int32 ARGCPTMAX;
	int32 ARGINTEG;
	int32 ARGFLOAT;
	int32 OFS;
	int64 STK;
	int64 STKMAX;
	int64 STKSPIL;
	int64 STKCOPY;
	int32 USEDREG;
	int32 JMPREG;
	int32 JMPVREG;
	int32 JMPPASS;
	int32 CTORCOUNT;
	int32 DTORCOUNT;
	boolean ROUNDFLOAT;
	boolean PROCCALLING;
	struct $6TFLIST SPILLVREGS;
	int32 VREG_COUNT;
	struct $8FBSYMBOL* LABELBRANCH2;
	struct $8FBSYMBOL* LABELJUMP;
	boolean VARIADIC;
	$13FB_COMPTARGET TARGET;
	boolean SYSTEMV;
	int32 OPEREG;
	int32 OPEPASS;
	int32 MAXSTACK;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_CONTEXT ) == 248 );
struct $6DBGCTX {
	uint32 TYPECNT;
	int32 LNUM;
	FBSTRING PREVFILENAME;
	FBSTRING LINEFILENAME;
	struct $8FBSYMBOL* PROC;
	int32 STRNB;
	int32 STRMAX;
	int32 STABNB;
	int32 STABMAX;
	int64 OFFST;
};
__FB_STATIC_ASSERT( sizeof( struct $6DBGCTX ) == 64 );
struct $7TDBGSTR {
	int64 OFFST;
	FBSTRING TXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7TDBGSTR ) == 24 );
struct $8TDBGSTAB {
	int64 STAB;
	FBSTRING VALUE;
};
__FB_STATIC_ASSERT( sizeof( struct $8TDBGSTAB ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
union $5USTAB {
	int64 FULL;
	struct {
		int32 OFFST;
		int16 COD;
		int16 DESC;
	};
};
__FB_STATIC_ASSERT( sizeof( union $5USTAB ) == 8 );
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
struct $13ASM64_REGROOM {
	int32 STATUS;
	struct $14ASM64_SAVEDREG* VREG;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_REGROOM ) == 8 );
struct $7FBARRAYIKvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIKvE ) == 120 );
typedef int32 $6IR_OPT;
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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef int32 $14IR_OPTIONVALUE;
struct $7FBARRAYIiE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIiE ) == 120 );
typedef int32 $19FB_CVA_LIST_TYPEDEF;
struct $9IRCALLARG {
	struct $8FBSYMBOL* PARAM;
	struct $6IRVREG* VR;
	int32 LEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRCALLARG ) == 12 );
struct $8FBARRAY1I8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I8FBSTRINGE ) == 36 );
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayRedimObj( struct $7FBARRAYIvE*, uint32, void*, void*, uint32, ... );
int32 fb_ArrayRedimPresvObj( struct $7FBARRAYIvE*, uint32, void*, void*, uint32, ... );
void fb_ArrayDestructStr( struct $7FBARRAYIvE* );
int32 fb_ArrayEraseObj( struct $7FBARRAYIvE*, void*, void* );
int32 fb_ArrayUBound( struct $7FBARRAYIKvE*, int32 );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
int64 __moddi3( int64, int64 );
double pow( double, double );
double fb_FRACd( double );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_DoubleToStr( double );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
void fb_StrAssignMid( FBSTRING*, int32, int32, FBSTRING* );
FBSTRING* fb_StrFill1( int32, int32 );
int32 fb_StrLen( void*, int32 );
uint32 fb_ASC( FBSTRING*, int32 );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
FBSTRING* fb_RTRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_HEX_l( uint64 );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
uint32* fb_WstrLeft( uint32*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
static void fb_ctor__irzgas64( void ) __attribute__(( constructor ));
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
int32 FBGETOPTION( int32 );
FBSTRING* FBGETENTRYPOINT( void );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBISDATADESC( struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int32, struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
uint8* SYMBGETDBGNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMFIRSTELM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMNEXTELM( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int32, tmp$41 );
int32 HFILEEXISTS( uint8* );
int32 PATHISABSOLUTE( uint8* );
FBSTRING* HCURDIR( void );
uint8* HESCAPE( uint8* );
uint8* HESCAPEW( uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
void IRHLINIT( void );
void IRHLEND( void );
void IRHLEMITPROCBEGIN( void );
void IRHLEMITPROCEND( void );
void IRHLEMITPUSHARG( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVREG( int32, struct $8FBSYMBOL* );
struct $6IRVREG* IRHLALLOCVRIMM( int32, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIMMF( int32, struct $8FBSYMBOL*, double );
struct $6IRVREG* IRHLALLOCVRVAR( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIDX( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVRPTR( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVROFS( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
void IRFOREACHDATASTMT( tmp$41 );
void IRHLFLUSHSTATICINITIALIZER( struct $8FBSYMBOL* );
static void CFI_WINDOWS_ASM_CODE( FBSTRING* );
static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* );
static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT*, struct $13ASM64_CONTEXT* );
static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* );
static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* );
static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX*, struct $6DBGCTX* );
static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* );
static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* );
static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR*, struct $7TDBGSTR* );
static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* );
static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* );
static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB*, struct $8TDBGSTAB* );
static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* );
static void _EMITDBG( int32, struct $8FBSYMBOL*, int32, uint8* );
static void CHECK_OPTIM( FBSTRING* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL*, int32 );
static void HWRITEASM64( FBSTRING*, int32 );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINIWSTR( int64, uint32*, int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int32 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFEND( void );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
static void _EMITMACRO( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
void SAVE_CALL( FBSTRING*, struct $6IRVREG*, int32 );
int32 HGETMAGICSTRUCTNUMBER( struct $8FBSYMBOL* );
static void DBG_ADDSTAB( FBSTRING*, uint8, int16, FBSTRING* );
static void REG_FREEABLE( FBSTRING* );
static int32 PW2( int32 );
static void ASM_SECTION( FBSTRING* );
static void EMITOP3_OP4( FBSTRING* );
void DBG_FILENAME( FBSTRING* );
static FBSTRING* HFLOATTOHEX_ASM64( double, int32, int8 );
static int32 DBG_ADDSTR( FBSTRING*, int32 );
static void DBG_EMITSTR( void );
static void DBG_EMITSTAB( void );
static void EDBGEMITHEADER_ASM64( uint8* );
static void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL*, int32 );
static void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL*, int32 );
static void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* );
static void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* );
static FBSTRING* HDECLPOINTER_ASM64( int32* );
static void HDECLUDT_ASM64( struct $8FBSYMBOL*, int32 );
static void HDECLENUM_ASM64( struct $8FBSYMBOL* );
static void REG_MARK( struct $8FBSYMBOL* );
static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 );
static void REG_SPILLING( int32 );
static void REG_SAVE( void );
static void REG_ALLOWED( boolean );
static int32 REG_FINDFREE( int32, int32 );
static void REG_CALLPTR( FBSTRING*, FBSTRING* );
static void REG_BRANCH( struct $8FBSYMBOL* );
int32 REG_FINDREAL( int32 );
uint8* REG_TEMPO( void );
static void REG_TRANSFER( int32, int32 );
static void MEMCLEAR( int32, FBSTRING*, int32 );
static void MEMCOPY( int32, FBSTRING*, FBSTRING*, int32, int32 );
static void _INIT( void );
static void _END( void );
static void HEMITVARIABLE( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void NO_ROUNDSD( uint8* );
static int32 _EMITBEGIN( void );
static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* );
static void _EMITEND( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int32 _SUPPORTSOP( int32, int32 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static int32 PARAM_ANALYZE( $11FB_DATATYPE, struct $8FBSYMBOL*, int32*, int32*, int32* );
static void REG_FILLM( int32, struct $7FBARRAYIiE*, int32, int32, int32 );
static void REG_FILLR( int32, FBSTRING*, int32, struct $7FBARRAYIiE*, int32 );
static void REG_FILLX( int32, FBSTRING*, int32 );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void PREPARE_IDX( struct $6IRVREG*, FBSTRING*, FBSTRING* );
static uint8* HGETBOPCODE( int32 );
static void RESTORE_VRREG( struct $6IRVREG*, int32 );
static void BOP_FLOAT( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, struct $8FBSYMBOL* );
static void HLOADOPERANDSANDWRITEBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HEMITROUNDFLOAT( $11FB_DATATYPE, $11FB_DATATYPE );
static void EMITSTORESTRUCT( struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING* );
static int32 HISSTRUCTIN2REGS( struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( struct $8FBSYMBOL*, FBSTRING*, FBSTRING*, struct $6IRVREG*, int32, boolean, boolean );
static void _EMITCALL( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int32, struct $8FBSYMBOL* );
static void _EMITRETURN( int32 );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITCOMMENT( uint8* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
static void _EMITPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITPROCEND( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITVARINIOFS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _EMITFBCTINFSTRING( uint8* );
static void _EMITVARINISTR( int64, uint8*, int64 );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
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
extern struct $7IR_VTBL IRGAS64_VTBL$;
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
struct $11IRHLCONTEXT {
	int32 REGCOUNT;
	struct $6TFLIST VREGS;
	struct $5TLIST CALLARGS;
};
__FB_STATIC_ASSERT( sizeof( struct $11IRHLCONTEXT ) == 92 );
extern struct $11IRHLCONTEXT IRHL$;
static struct $6DBGCTX CTXDBG$;
static int32 REGHANDLE$[18];
static struct $13ASM64_REGROOM REGROOM$[18];
static struct $13ASM64_CONTEXT CTX$;
struct $7FBARRAYI7TDBGSTRE {
	struct $7TDBGSTR* DATA;
	struct $7TDBGSTR* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI7TDBGSTRE ) == 120 );
static struct $7FBARRAYI7TDBGSTRE DBGSTR$ = { (struct $7TDBGSTR*)0u, (struct $7TDBGSTR*)0u, 0, 24, 0, 8, {  } };
struct $7FBARRAYI8TDBGSTABE {
	struct $8TDBGSTAB* DATA;
	struct $8TDBGSTAB* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8TDBGSTABE ) == 120 );
static struct $7FBARRAYI8TDBGSTABE DBGSTAB$ = { (struct $8TDBGSTAB*)0u, (struct $8TDBGSTAB*)0u, 0, 24, 0, 8, {  } };
static int32 REMAPTB$[26] = { 7, 16, 2, 3, 4, 5, 6, 6, 9, 10, 9, 1, 8, 9, 10, 11, 12, 13, 14, 17 };
static uint8* STABSTB$[17] = { (uint8*)"integer:t1=-1", (uint8*)"void:t7=-11", (uint8*)"byte:t2=-6", (uint8*)"ubyte:t3=-5", (uint8*)"char:t4=-2", (uint8*)"short:t5=-3", (uint8*)"ushort:t6=-7", (uint8*)"uinteger:t8=-8", (uint8*)"longint:t9=-31", (uint8*)"ulongint:t10=-32", (uint8*)"single:t11=-12", (uint8*)"double:t12=-13", (uint8*)"string:t13=s12data:*2,0,64;len:1,64,64;size:1,128,64;;", (uint8*)"fixstr:t14=-2", (uint8*)"pchar:t15=*4;", (uint8*)"boolean:t16=@s8;-16", (uint8*)"va_list:t17=-11" };
static uint8* REGSTRQ$[18] = { (uint8*)"rax", (uint8*)"rbx", (uint8*)"rcx", (uint8*)"rdx", (uint8*)"rsi", (uint8*)"rdi", (uint8*)"rbp", (uint8*)"rsp", (uint8*)"r8", (uint8*)"r9", (uint8*)"r10", (uint8*)"r11", (uint8*)"r12", (uint8*)"r13", (uint8*)"r14", (uint8*)"r15", (uint8*)"rip", (uint8*)"* X_Q" };
static uint8* REGSTRD$[18] = { (uint8*)"eax", (uint8*)"ebx", (uint8*)"ecx", (uint8*)"edx", (uint8*)"esi", (uint8*)"edi", (uint8*)"ebp", (uint8*)"esp", (uint8*)"r8d", (uint8*)"r9d", (uint8*)"r10d", (uint8*)"r11d", (uint8*)"r12d", (uint8*)"r13d", (uint8*)"r14d", (uint8*)"r15d", (uint8*)"", (uint8*)"* X_D" };
static uint8* REGSTRW$[18] = { (uint8*)"ax", (uint8*)"bx", (uint8*)"cx", (uint8*)"dx", (uint8*)"si", (uint8*)"di", (uint8*)"bp", (uint8*)"sp", (uint8*)"r8w", (uint8*)"r9w", (uint8*)"r10w", (uint8*)"r11w", (uint8*)"r12w", (uint8*)"r13w", (uint8*)"r14w", (uint8*)"r15w", (uint8*)"", (uint8*)"* X_W" };
static uint8* REGSTRB$[18] = { (uint8*)"al", (uint8*)"bl", (uint8*)"cl", (uint8*)"dl", (uint8*)"sil", (uint8*)"dil", (uint8*)"bpl", (uint8*)"spl", (uint8*)"r8b", (uint8*)"r9b", (uint8*)"r10b", (uint8*)"r11b", (uint8*)"r12b", (uint8*)"r13b", (uint8*)"r14b", (uint8*)"r15b", (uint8*)"", (uint8*)"* X_B" };
static int8 REG_PRIO$[13] = { (int8)11, (int8)10, (int8)8, (int8)9, (int8)3, (int8)2, (int8)12, (int8)13, (int8)14, (int8)15, (int8)1, (int8)5, (int8)4 };
struct $8FBARRAY1IiE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IiE ) == 36 );
static struct $8FBARRAY1IiE LISTREG$ = { (int32*)0u, (int32*)0u, 0, 4, 1, 17, {  } };
struct $7IR_VTBL IRGAS64_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$43)0u, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)&_EMITRETURN, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$51)0u, (tmp$51)&_EMITADDR, (tmp$53)&_EMITCALL, (tmp$54)&_EMITCALLPTR, (tmp$45)0u, (tmp$52)&_EMITJUMPPTR, (tmp$55)&_EMITBRANCH, (tmp$56)&_EMITJMPTB, (tmp$57)&_EMITMEM, (tmp$58)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$59)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$60)&_EMITVARINII, (tmp$61)&_EMITVARINIF, (tmp$62)&_EMITVARINIOFS, (tmp$63)&_EMITVARINISTR, (tmp$64)&_EMITVARINIWSTR, (tmp$65)&_EMITVARINIPAD, (tmp$66)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$67)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$68)&IRHLALLOCVREG, (tmp$69)&IRHLALLOCVRIMM, (tmp$70)&IRHLALLOCVRIMMF, (tmp$71)&IRHLALLOCVRVAR, (tmp$72)&IRHLALLOCVRIDX, (tmp$73)&IRHLALLOCVRPTR, (tmp$71)&IRHLALLOCVROFS, (tmp$74)&_SETVREGDATATYPE, (tmp$75)0u, (tmp$51)0u, (tmp$44)0u, (tmp$45)0u };

void DBG_FILENAME( FBSTRING* FILENAME$1 )
{
	label$201:;
	int32 vr$1 = fb_StrCompare( (void*)FILENAME$1, -1, (void*)((uint8*)&CTXDBG$ + 8), -1 );
	if( vr$1 == 0 ) goto label$204;
	{
		FBSTRING TMP$385$2;
		__builtin_memset( &TMP$385$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$385$2, -1, (void*)"0", 2, 0 );
		DBG_ADDSTAB( FILENAME$1, (uint8)132u, (int16)0, &TMP$385$2 );
		fb_StrDelete( (FBSTRING*)&TMP$385$2 );
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 8), -1, (void*)FILENAME$1, -1, 0 );
	}
	label$204:;
	label$203:;
	label$202:;
}

int32 REG_FINDREAL( int32 VREG$1 )
{
	FBSTRING TMP$574$1;
	FBSTRING TMP$575$1;
	FBSTRING TMP$576$1;
	FBSTRING TMP$577$1;
	FBSTRING TMP$578$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$496:;
	int32 REALREG$1;
	__builtin_memset( &REALREG$1, 0, 4 );
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$501:;
		{
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != VREG$1 ) goto label$503;
			{
				fb$result$1 = IREG$2;
				goto label$497;
			}
			label$503:;
			label$502:;
		}
		label$499:;
		IREG$2 = IREG$2 + 1;
		label$498:;
		if( IREG$2 <= 15 ) goto label$501;
		label$500:;
	}
	struct $14ASM64_SAVEDREG* V$1;
	V$1 = (struct $14ASM64_SAVEDREG*)0u;
	if( *(int32*)((uint8*)&CTX$ + 212) <= 0 ) goto label$505;
	{
		void* vr$5 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$5;
		label$506:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0u ) goto label$507;
		{
			if( *(int32*)((uint8*)V$1 + 4) != VREG$1 ) goto label$509;
			{
				goto label$507;
			}
			label$509:;
			label$508:;
			void* vr$7 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$7;
		}
		goto label$506;
		label$507:;
	}
	label$505:;
	label$504:;
	if( V$1 != (struct $14ASM64_SAVEDREG*)0u ) goto label$511;
	{
		FBSTRING TMP$566$2;
		FBSTRING TMP$570$2;
		FBSTRING TMP$571$2;
		FBSTRING TMP$572$2;
		FBSTRING TMP$573$2;
		__builtin_memset( &TMP$566$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$566$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$566$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$566$2 );
		__builtin_memset( &TMP$572$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( VREG$1 );
		__builtin_memset( &TMP$570$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$570$2, (void*)"FOUND AN ERROR : virtual register=", 35, (void*)vr$13, -1 );
		__builtin_memset( &TMP$571$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$571$2, (void*)vr$16, -1, (void*)" no real register corresponding, using KREG_XXX", 48 );
		fb_StrAssign( (void*)&TMP$572$2, -1, (void*)vr$19, -1, 0 );
		HWRITEASM64( &TMP$572$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$572$2 );
		__builtin_memset( &TMP$573$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$573$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$573$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$573$2 );
		fb$result$1 = 17;
		goto label$497;
	}
	label$511:;
	label$510:;
	int32 vr$27 = REG_FINDFREE( VREG$1, -1 );
	REALREG$1 = vr$27;
	__builtin_memset( &TMP$578$1, 0, 12 );
	FBSTRING* vr$30 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8) );
	__builtin_memset( &TMP$574$1, 0, 12 );
	FBSTRING* vr$34 = fb_StrConcat( &TMP$574$1, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REALREG$1 << (2 & 31))), 0 );
	__builtin_memset( &TMP$575$1, 0, 12 );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$575$1, (void*)vr$34, -1, (void*)", QWORD PTR ", 13 );
	__builtin_memset( &TMP$576$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$576$1, (void*)vr$37, -1, (void*)vr$30, -1 );
	__builtin_memset( &TMP$577$1, 0, 12 );
	FBSTRING* vr$43 = fb_StrConcat( &TMP$577$1, (void*)vr$40, -1, (void*)"[rbp]", 6 );
	fb_StrAssign( (void*)&TMP$578$1, -1, (void*)vr$43, -1, 0 );
	HWRITEASM64( &TMP$578$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$578$1 );
	*(int32*)((uint8*)V$1 + 4) = -2;
	fb$result$1 = REALREG$1;
	goto label$497;
	label$497:;
	return fb$result$1;
}

uint8* REG_TEMPO( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$512:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	static int32 COUNTER$1 = 9999999;
	COUNTER$1 = COUNTER$1 + 1;
	int32 vr$3 = REG_FINDFREE( COUNTER$1, -1 );
	REG$1 = vr$3;
	fb$result$1 = *(uint8**)((int32)(uint8**)REGSTRQ$ + (REG$1 << (2 & 31)));
	goto label$513;
	label$513:;
	return fb$result$1;
}

void SAVE_CALL( FBSTRING* FUNC$1, struct $6IRVREG* VR$1, int32 VRREG$1 )
{
	int32 TMP$2957$1;
	label$2282:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2285;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = -2;
		label$2285:;
	}
	REG_SAVE(  );
	if( *(int32*)((uint8*)&CTX$ + 80) != 0 ) goto label$2287;
	{
		*(int32*)((uint8*)&CTX$ + 80) = 1;
	}
	label$2287:;
	label$2286:;
	if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2288;
	int32 vr$2 = FBGETOPTION( 0 );
	TMP$2957$1 = -(vr$2 == 2);
	goto label$2293;
	label$2288:;
	TMP$2957$1 = 0;
	label$2293:;
	if( TMP$2957$1 == 0 ) goto label$2290;
	{
		FBSTRING TMP$2960$2;
		FBSTRING TMP$2961$2;
		FBSTRING TMP$2962$2;
		__builtin_memset( &TMP$2962$2, 0, 12 );
		__builtin_memset( &TMP$2960$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$2960$2, (void*)"call ", 6, (void*)FUNC$1, -1 );
		__builtin_memset( &TMP$2961$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$2961$2, (void*)vr$7, -1, (void*)"@PLT", 5 );
		fb_StrAssign( (void*)&TMP$2962$2, -1, (void*)vr$10, -1, 0 );
		HWRITEASM64( &TMP$2962$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2962$2 );
	}
	goto label$2289;
	label$2290:;
	{
		FBSTRING TMP$2963$2;
		FBSTRING TMP$2964$2;
		__builtin_memset( &TMP$2964$2, 0, 12 );
		__builtin_memset( &TMP$2963$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$2963$2, (void*)"call ", 6, (void*)FUNC$1, -1 );
		fb_StrAssign( (void*)&TMP$2964$2, -1, (void*)vr$17, -1, 0 );
		HWRITEASM64( &TMP$2964$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2964$2 );
	}
	label$2289:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2292;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = *(int32*)((uint8*)VR$1 + 12);
		label$2292:;
	}
	label$2283:;
}

__attribute__(( constructor )) static void fb_ctor__irzgas64( void )
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

static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 20), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 32), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 44), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 56), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 68), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 80), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 84), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 88), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 92), 0, 4 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 96), 0, 8 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 104), 0, 8 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 112), 0, 8 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 120), 0, 8 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 128), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 132), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 136), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 140), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 144), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 148), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 152), 0, 1 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 153), 0, 1 );
	__builtin_memset( (struct $6TFLIST*)((uint8*)THIS$1 + 156), 0, 56 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 212), 0, 4 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 216), 0, 4 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 220), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 224), 0, 1 );
	__builtin_memset( ($13FB_COMPTARGET*)((uint8*)THIS$1 + 228), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 232), 0, 1 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 236), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 240), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 244), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT* THIS$1, struct $13ASM64_CONTEXT* __FB_RHS__$1 )
{
	label$12:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 20), -1, (void*)((uint8*)__FB_RHS__$1 + 20), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 32), -1, (void*)((uint8*)__FB_RHS__$1 + 32), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 44), -1, (void*)((uint8*)__FB_RHS__$1 + 44), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 56), -1, (void*)((uint8*)__FB_RHS__$1 + 56), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 68), -1, (void*)((uint8*)__FB_RHS__$1 + 68), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 80) = *(int32*)((uint8*)__FB_RHS__$1 + 80);
	*(int32*)((uint8*)THIS$1 + 84) = *(int32*)((uint8*)__FB_RHS__$1 + 84);
	*(int32*)((uint8*)THIS$1 + 88) = *(int32*)((uint8*)__FB_RHS__$1 + 88);
	*(int32*)((uint8*)THIS$1 + 92) = *(int32*)((uint8*)__FB_RHS__$1 + 92);
	*(int64*)((uint8*)THIS$1 + 96) = *(int64*)((uint8*)__FB_RHS__$1 + 96);
	*(int64*)((uint8*)THIS$1 + 104) = *(int64*)((uint8*)__FB_RHS__$1 + 104);
	*(int64*)((uint8*)THIS$1 + 112) = *(int64*)((uint8*)__FB_RHS__$1 + 112);
	*(int64*)((uint8*)THIS$1 + 120) = *(int64*)((uint8*)__FB_RHS__$1 + 120);
	*(int32*)((uint8*)THIS$1 + 128) = *(int32*)((uint8*)__FB_RHS__$1 + 128);
	*(int32*)((uint8*)THIS$1 + 132) = *(int32*)((uint8*)__FB_RHS__$1 + 132);
	*(int32*)((uint8*)THIS$1 + 136) = *(int32*)((uint8*)__FB_RHS__$1 + 136);
	*(int32*)((uint8*)THIS$1 + 140) = *(int32*)((uint8*)__FB_RHS__$1 + 140);
	*(int32*)((uint8*)THIS$1 + 144) = *(int32*)((uint8*)__FB_RHS__$1 + 144);
	*(int32*)((uint8*)THIS$1 + 148) = *(int32*)((uint8*)__FB_RHS__$1 + 148);
	*(boolean*)((uint8*)THIS$1 + 152) = *(boolean*)((uint8*)__FB_RHS__$1 + 152);
	*(boolean*)((uint8*)THIS$1 + 153) = *(boolean*)((uint8*)__FB_RHS__$1 + 153);
	__builtin_memcpy( (struct $6TFLIST*)((uint8*)THIS$1 + 156), (struct $6TFLIST*)((uint8*)__FB_RHS__$1 + 156), 56 );
	*(int32*)((uint8*)THIS$1 + 212) = *(int32*)((uint8*)__FB_RHS__$1 + 212);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 216) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 216);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 220) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 220);
	*(boolean*)((uint8*)THIS$1 + 224) = *(boolean*)((uint8*)__FB_RHS__$1 + 224);
	*($13FB_COMPTARGET*)((uint8*)THIS$1 + 228) = *($13FB_COMPTARGET*)((uint8*)__FB_RHS__$1 + 228);
	*(boolean*)((uint8*)THIS$1 + 232) = *(boolean*)((uint8*)__FB_RHS__$1 + 232);
	*(int32*)((uint8*)THIS$1 + 236) = *(int32*)((uint8*)__FB_RHS__$1 + 236);
	*(int32*)((uint8*)THIS$1 + 240) = *(int32*)((uint8*)__FB_RHS__$1 + 240);
	*(int32*)((uint8*)THIS$1 + 244) = *(int32*)((uint8*)__FB_RHS__$1 + 244);
	label$13:;
}

static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 68) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 56) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 44) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 32) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 20) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* THIS$1 )
{
	__builtin_memset( (uint32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 20), 0, 12 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 32), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 36), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 40), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 44), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 48), 0, 4 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 56), 0, 8 );
	label$18:;
	label$19:;
}

static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX* THIS$1, struct $6DBGCTX* __FB_RHS__$1 )
{
	label$20:;
	*(uint32*)THIS$1 = *(uint32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 20), -1, (void*)((uint8*)__FB_RHS__$1 + 20), -1, 0 );
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 32);
	*(int32*)((uint8*)THIS$1 + 36) = *(int32*)((uint8*)__FB_RHS__$1 + 36);
	*(int32*)((uint8*)THIS$1 + 40) = *(int32*)((uint8*)__FB_RHS__$1 + 40);
	*(int32*)((uint8*)THIS$1 + 44) = *(int32*)((uint8*)__FB_RHS__$1 + 44);
	*(int32*)((uint8*)THIS$1 + 48) = *(int32*)((uint8*)__FB_RHS__$1 + 48);
	*(int64*)((uint8*)THIS$1 + 56) = *(int64*)((uint8*)__FB_RHS__$1 + 56);
	label$21:;
}

static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* THIS$1 )
{
	label$24:;
	label$25:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 20) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	label$26:;
	label$27:;
}

static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR* THIS$1, struct $7TDBGSTR* __FB_RHS__$1 )
{
	label$28:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	label$29:;
}

static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* THIS$1 )
{
	label$32:;
	label$33:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	label$34:;
	label$35:;
}

static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB* THIS$1, struct $8TDBGSTAB* __FB_RHS__$1 )
{
	label$36:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	label$37:;
}

static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* THIS$1 )
{
	label$40:;
	label$41:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void CHECK_OPTIM( FBSTRING* CODE$1 )
{
	label$42:;
	FBSTRING PART1$1;
	__builtin_memset( &PART1$1, 0, 12 );
	FBSTRING PART2$1;
	__builtin_memset( &PART2$1, 0, 12 );
	FBSTRING INSTRUC$1;
	__builtin_memset( &INSTRUC$1, 0, 12 );
	FBSTRING NEWCODE$1;
	__builtin_memset( &NEWCODE$1, 0, 12 );
	static FBSTRING PREVPART1$1;
	static FBSTRING PREVPART2$1;
	static FBSTRING PREVINSTRUC$1;
	static int32 PREVWPOS$1;
	static int32 FLAG$1;
	int32 POSCHAR1$1;
	__builtin_memset( &POSCHAR1$1, 0, 4 );
	int32 POSCHAR2$1;
	__builtin_memset( &POSCHAR2$1, 0, 4 );
	int32 WRITEPOS$1;
	__builtin_memset( &WRITEPOS$1, 0, 4 );
	int32 vr$7 = fb_StrLen( (void*)CODE$1, -1 );
	if( vr$7 != 0 ) goto label$45;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$45:;
	label$44:;
	if( FLAG$1 != 2 ) goto label$47;
	{
		FBSTRING TMP$190$2;
		__builtin_memset( &TMP$190$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$190$2, (void*)&PREVPART1$1, -1, (void*)":", 2 );
		int32 vr$15 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$14 );
		if( vr$15 == 0 ) goto label$49;
		{
			FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"#O9", 3 );
			fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$16 );
		}
		label$49:;
		label$48:;
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$47:;
	label$46:;
	{
		FBSTRING TMP$192$2;
		FBSTRING* vr$22 = fb_LEFT( (FBSTRING*)CODE$1, 3 );
		fb_StrInit( (void*)&TMP$192$2, -1, (void*)vr$22, -1, 0 );
		int32 vr$25 = fb_StrCompare( (void*)&TMP$192$2, -1, (void*)"mov", 4 );
		if( vr$25 != 0 ) goto label$51;
		label$52:;
		{
			int32 vr$27 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
			WRITEPOS$1 = vr$27 + 1;
			FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
			int32 vr$30 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$29 );
			POSCHAR1$1 = vr$30;
			FBSTRING* vr$32 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
			fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$32, -1, 0 );
			FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (uint8*)",", 1 );
			int32 vr$35 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$34 );
			POSCHAR2$1 = vr$35;
			FBSTRING* vr$39 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
			FBSTRING* vr$40 = fb_TRIM( (FBSTRING*)vr$39 );
			fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$40, -1, 0 );
			FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"#", 1 );
			int32 vr$43 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$42 );
			POSCHAR1$1 = vr$43;
			if( POSCHAR1$1 != 0 ) goto label$54;
			{
				int32 vr$44 = fb_StrLen( (void*)CODE$1, -1 );
				POSCHAR1$1 = vr$44;
			}
			goto label$53;
			label$54:;
			{
				POSCHAR1$1 = POSCHAR1$1 + -2;
			}
			label$53:;
			FBSTRING* vr$48 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
			FBSTRING* vr$49 = fb_TRIM( (FBSTRING*)vr$48 );
			fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$49, -1, 0 );
			int32 vr$53 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PART2$1, -1 );
			if( vr$53 != 0 ) goto label$56;
			{
				FBSTRING TMP$198$4;
				__builtin_memset( &TMP$198$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$198$4, (void*)"#O0", 4, (void*)CODE$1, -1 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$56, -1, 0 );
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
				fb_StrDelete( (FBSTRING*)&TMP$192$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$56:;
			label$55:;
		}
		goto label$50;
		label$51:;
		int32 vr$63 = fb_StrCompare( (void*)&TMP$192$2, -1, (void*)"lea", 4 );
		if( vr$63 != 0 ) goto label$57;
		label$58:;
		{
			int32 vr$65 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
			WRITEPOS$1 = vr$65 + 1;
			FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
			int32 vr$68 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$67 );
			POSCHAR1$1 = vr$68;
			FBSTRING* vr$70 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
			fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$70, -1, 0 );
			FBSTRING* vr$72 = fb_StrAllocTempDescZEx( (uint8*)",", 1 );
			int32 vr$73 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$72 );
			POSCHAR2$1 = vr$73;
			FBSTRING* vr$77 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
			FBSTRING* vr$78 = fb_TRIM( (FBSTRING*)vr$77 );
			fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$78, -1, 0 );
			FBSTRING* vr$80 = fb_StrAllocTempDescZEx( (uint8*)"#", 1 );
			int32 vr$81 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$80 );
			POSCHAR1$1 = vr$81;
			if( POSCHAR1$1 != 0 ) goto label$60;
			{
				int32 vr$82 = fb_StrLen( (void*)CODE$1, -1 );
				POSCHAR1$1 = vr$82;
			}
			goto label$59;
			label$60:;
			{
				POSCHAR1$1 = POSCHAR1$1 + -2;
			}
			label$59:;
			FBSTRING* vr$86 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
			FBSTRING* vr$87 = fb_TRIM( (FBSTRING*)vr$86 );
			fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$87, -1, 0 );
			FBSTRING* vr$89 = fb_StrAllocTempDescZEx( (uint8*)"   add ", 7 );
			int32 vr$90 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$89 );
			if( vr$90 == 0 ) goto label$62;
			{
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$192$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$62:;
			label$61:;
			FLAG$1 = 1;
			fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
			fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
			PREVWPOS$1 = WRITEPOS$1;
			fb_StrDelete( (FBSTRING*)&TMP$192$2 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
		}
		goto label$50;
		label$57:;
		int32 vr$104 = fb_StrCompare( (void*)&TMP$192$2, -1, (void*)"jmp", 4 );
		if( vr$104 != 0 ) goto label$63;
		label$64:;
		{
			int32 vr$106 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
			WRITEPOS$1 = vr$106 + 1;
			FBSTRING* vr$108 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
			int32 vr$109 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$108 );
			POSCHAR1$1 = vr$109;
			FBSTRING* vr$111 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
			fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$111, -1, 0 );
			FBSTRING* vr$113 = fb_StrAllocTempDescZEx( (uint8*)",", 1 );
			int32 vr$114 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$113 );
			POSCHAR2$1 = vr$114;
			FBSTRING* vr$118 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
			FBSTRING* vr$119 = fb_TRIM( (FBSTRING*)vr$118 );
			fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$119, -1, 0 );
			FBSTRING* vr$121 = fb_StrAllocTempDescZEx( (uint8*)"#", 1 );
			int32 vr$122 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$121 );
			POSCHAR1$1 = vr$122;
			if( POSCHAR1$1 != 0 ) goto label$66;
			{
				int32 vr$123 = fb_StrLen( (void*)CODE$1, -1 );
				POSCHAR1$1 = vr$123;
			}
			goto label$65;
			label$66:;
			{
				POSCHAR1$1 = POSCHAR1$1 + -2;
			}
			label$65:;
			FBSTRING* vr$127 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
			FBSTRING* vr$128 = fb_TRIM( (FBSTRING*)vr$127 );
			fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$128, -1, 0 );
			int32 vr$131 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART1$1, -1 );
			if( vr$131 != 0 ) goto label$68;
			{
				FBSTRING TMP$206$4;
				FBSTRING TMP$207$4;
				FBSTRING TMP$208$4;
				FBSTRING TMP$209$4;
				FBSTRING TMP$210$4;
				FBSTRING TMP$211$4;
				FBSTRING* vr$132 = fb_StrAllocTempDescZEx( (uint8*)"#10", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$132 );
				FBSTRING* vr$135 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$206$4, 0, 12 );
				FBSTRING* vr$138 = fb_StrConcat( &TMP$206$4, (void*)"#10", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$207$4, 0, 12 );
				FBSTRING* vr$141 = fb_StrConcat( &TMP$207$4, (void*)vr$138, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$208$4, 0, 12 );
				FBSTRING* vr$144 = fb_StrConcat( &TMP$208$4, (void*)vr$141, -1, (void*)vr$135, -1 );
				__builtin_memset( &TMP$209$4, 0, 12 );
				FBSTRING* vr$147 = fb_StrConcat( &TMP$209$4, (void*)vr$144, -1, (void*)"jmp ", 5 );
				__builtin_memset( &TMP$210$4, 0, 12 );
				FBSTRING* vr$150 = fb_StrConcat( &TMP$210$4, (void*)vr$147, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$211$4, 0, 12 );
				FBSTRING* vr$153 = fb_StrConcat( &TMP$211$4, (void*)vr$150, -1, (void*)" #Optim 10", 11 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$153, -1, 0 );
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
				fb_StrDelete( (FBSTRING*)&TMP$192$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			goto label$67;
			label$68:;
			{
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
				FLAG$1 = 2;
				PREVWPOS$1 = WRITEPOS$1;
				fb_StrDelete( (FBSTRING*)&TMP$192$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$67:;
		}
		goto label$50;
		label$63:;
		int32 vr$166 = fb_StrCompare( (void*)&TMP$192$2, -1, (void*)"cmp", 4 );
		if( vr$166 != 0 ) goto label$69;
		label$70:;
		{
			int32 vr$167 = fb_StrLen( (void*)&PREVPART1$1, -1 );
			if( vr$167 == 0 ) goto label$72;
			{
				if( FLAG$1 == 1 ) goto label$74;
				{
					int32 vr$169 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					WRITEPOS$1 = vr$169 + 1;
					FBSTRING* vr$171 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
					int32 vr$172 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$171 );
					POSCHAR1$1 = vr$172;
					FBSTRING* vr$174 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
					fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$174, -1, 0 );
					FBSTRING* vr$176 = fb_StrAllocTempDescZEx( (uint8*)",", 1 );
					int32 vr$177 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$176 );
					POSCHAR2$1 = vr$177;
					FBSTRING* vr$181 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
					FBSTRING* vr$182 = fb_TRIM( (FBSTRING*)vr$181 );
					fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$182, -1, 0 );
					FBSTRING* vr$184 = fb_StrAllocTempDescZEx( (uint8*)"#", 1 );
					int32 vr$185 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$184 );
					POSCHAR1$1 = vr$185;
					if( POSCHAR1$1 != 0 ) goto label$76;
					{
						int32 vr$186 = fb_StrLen( (void*)CODE$1, -1 );
						POSCHAR1$1 = vr$186;
					}
					goto label$75;
					label$76:;
					{
						POSCHAR1$1 = POSCHAR1$1 + -2;
					}
					label$75:;
					FBSTRING* vr$190 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
					FBSTRING* vr$191 = fb_TRIM( (FBSTRING*)vr$190 );
					fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$191, -1, 0 );
					if( (uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 114u ) goto label$78;
					{
						int32 vr$196 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART1$1, -1 );
						if( (-(vr$196 == 0) & -((uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 == 114u)) == 0 ) goto label$80;
						{
							FBSTRING TMP$218$7;
							FBSTRING TMP$219$7;
							FBSTRING TMP$220$7;
							FBSTRING TMP$221$7;
							FBSTRING TMP$222$7;
							FBSTRING TMP$223$7;
							FBSTRING TMP$224$7;
							FBSTRING TMP$225$7;
							FBSTRING* vr$202 = fb_StrAllocTempDescZEx( (uint8*)"#13", 3 );
							fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$202 );
							FBSTRING* vr$206 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$218$7, 0, 12 );
							FBSTRING* vr$209 = fb_StrConcat( &TMP$218$7, (void*)"#13", 4, (void*)CODE$1, -1 );
							__builtin_memset( &TMP$219$7, 0, 12 );
							FBSTRING* vr$212 = fb_StrConcat( &TMP$219$7, (void*)vr$209, -1, (void*)"\x0A", 2 );
							__builtin_memset( &TMP$220$7, 0, 12 );
							FBSTRING* vr$215 = fb_StrConcat( &TMP$220$7, (void*)vr$212, -1, (void*)vr$206, -1 );
							__builtin_memset( &TMP$221$7, 0, 12 );
							FBSTRING* vr$218 = fb_StrConcat( &TMP$221$7, (void*)vr$215, -1, (void*)"cmp ", 5 );
							__builtin_memset( &TMP$222$7, 0, 12 );
							FBSTRING* vr$221 = fb_StrConcat( &TMP$222$7, (void*)vr$218, -1, (void*)&PREVPART2$1, -1 );
							__builtin_memset( &TMP$223$7, 0, 12 );
							FBSTRING* vr$224 = fb_StrConcat( &TMP$223$7, (void*)vr$221, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$224$7, 0, 12 );
							FBSTRING* vr$227 = fb_StrConcat( &TMP$224$7, (void*)vr$224, -1, (void*)&PART2$1, -1 );
							__builtin_memset( &TMP$225$7, 0, 12 );
							FBSTRING* vr$230 = fb_StrConcat( &TMP$225$7, (void*)vr$227, -1, (void*)" #Optim 13", 11 );
							fb_StrAssign( (void*)CODE$1, -1, (void*)vr$230, -1, 0 );
						}
						goto label$79;
						label$80:;
						int32 vr$232 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
						FBSTRING* vr$234 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
						int32 vr$235 = fb_StrInstr( 1, (FBSTRING*)&PREVPART2$1, (FBSTRING*)vr$234 );
						if( (-(vr$232 == 0) & vr$235) == 0 ) goto label$81;
						{
							FBSTRING TMP$229$7;
							FBSTRING TMP$230$7;
							FBSTRING TMP$231$7;
							FBSTRING TMP$232$7;
							FBSTRING TMP$233$7;
							FBSTRING TMP$234$7;
							FBSTRING TMP$235$7;
							FBSTRING TMP$236$7;
							FBSTRING* vr$237 = fb_StrAllocTempDescZEx( (uint8*)"#14", 3 );
							fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$237 );
							FBSTRING* vr$241 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$229$7, 0, 12 );
							FBSTRING* vr$244 = fb_StrConcat( &TMP$229$7, (void*)"#14", 4, (void*)CODE$1, -1 );
							__builtin_memset( &TMP$230$7, 0, 12 );
							FBSTRING* vr$247 = fb_StrConcat( &TMP$230$7, (void*)vr$244, -1, (void*)"\x0A", 2 );
							__builtin_memset( &TMP$231$7, 0, 12 );
							FBSTRING* vr$250 = fb_StrConcat( &TMP$231$7, (void*)vr$247, -1, (void*)vr$241, -1 );
							__builtin_memset( &TMP$232$7, 0, 12 );
							FBSTRING* vr$253 = fb_StrConcat( &TMP$232$7, (void*)vr$250, -1, (void*)"cmp ", 5 );
							__builtin_memset( &TMP$233$7, 0, 12 );
							FBSTRING* vr$256 = fb_StrConcat( &TMP$233$7, (void*)vr$253, -1, (void*)&PART1$1, -1 );
							__builtin_memset( &TMP$234$7, 0, 12 );
							FBSTRING* vr$259 = fb_StrConcat( &TMP$234$7, (void*)vr$256, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$235$7, 0, 12 );
							FBSTRING* vr$262 = fb_StrConcat( &TMP$235$7, (void*)vr$259, -1, (void*)&PREVPART2$1, -1 );
							__builtin_memset( &TMP$236$7, 0, 12 );
							FBSTRING* vr$265 = fb_StrConcat( &TMP$236$7, (void*)vr$262, -1, (void*)" #Optim 14", 11 );
							fb_StrAssign( (void*)CODE$1, -1, (void*)vr$265, -1, 0 );
						}
						label$81:;
						label$79:;
					}
					label$78:;
					label$77:;
				}
				label$74:;
				label$73:;
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
			}
			label$72:;
			label$71:;
			fb_StrDelete( (FBSTRING*)&TMP$192$2 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
		}
		goto label$50;
		label$69:;
		{
			{
				FBSTRING TMP$237$4;
				FBSTRING* vr$271 = fb_LEFT( (FBSTRING*)CODE$1, 4 );
				fb_StrInit( (void*)&TMP$237$4, -1, (void*)vr$271, -1, 0 );
				int32 vr$274 = fb_StrCompare( (void*)&TMP$237$4, -1, (void*)"adds", 5 );
				if( vr$274 == 0 ) goto label$85;
				label$86:;
				int32 vr$276 = fb_StrCompare( (void*)&TMP$237$4, -1, (void*)"subs", 5 );
				if( vr$276 == 0 ) goto label$85;
				label$87:;
				int32 vr$278 = fb_StrCompare( (void*)&TMP$237$4, -1, (void*)"muls", 5 );
				if( vr$278 == 0 ) goto label$85;
				label$88:;
				int32 vr$280 = fb_StrCompare( (void*)&TMP$237$4, -1, (void*)"divs", 5 );
				if( vr$280 != 0 ) goto label$84;
				label$85:;
				{
					int32 vr$282 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					WRITEPOS$1 = vr$282 + 1;
					FBSTRING* vr$284 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
					int32 vr$285 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$284 );
					POSCHAR1$1 = vr$285;
					FBSTRING* vr$287 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
					fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$287, -1, 0 );
					FBSTRING* vr$289 = fb_StrAllocTempDescZEx( (uint8*)",", 1 );
					int32 vr$290 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$289 );
					POSCHAR2$1 = vr$290;
					FBSTRING* vr$294 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
					FBSTRING* vr$295 = fb_TRIM( (FBSTRING*)vr$294 );
					fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$295, -1, 0 );
					FBSTRING* vr$297 = fb_StrAllocTempDescZEx( (uint8*)"#", 1 );
					int32 vr$298 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$297 );
					POSCHAR1$1 = vr$298;
					if( POSCHAR1$1 != 0 ) goto label$90;
					{
						int32 vr$299 = fb_StrLen( (void*)CODE$1, -1 );
						POSCHAR1$1 = vr$299;
					}
					goto label$89;
					label$90:;
					{
						POSCHAR1$1 = POSCHAR1$1 + -2;
					}
					label$89:;
					FBSTRING* vr$303 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
					FBSTRING* vr$304 = fb_TRIM( (FBSTRING*)vr$303 );
					fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$304, -1, 0 );
					int32 vr$307 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
					if( vr$307 != 0 ) goto label$92;
					{
						FBSTRING* vr$308 = fb_StrAllocTempDescZEx( (uint8*)"[r", 2 );
						int32 vr$309 = fb_StrInstr( 1, (FBSTRING*)&PREVPART2$1, (FBSTRING*)vr$308 );
						if( vr$309 == 0 ) goto label$94;
						{
							FBSTRING TMP$245$7;
							FBSTRING TMP$246$7;
							FBSTRING TMP$247$7;
							FBSTRING TMP$248$7;
							FBSTRING TMP$249$7;
							FBSTRING TMP$250$7;
							FBSTRING TMP$251$7;
							FBSTRING TMP$252$7;
							FBSTRING TMP$253$7;
							FBSTRING* vr$310 = fb_StrAllocTempDescZEx( (uint8*)"#15", 3 );
							fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$310 );
							FBSTRING* vr$315 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$245$7, 0, 12 );
							FBSTRING* vr$318 = fb_StrConcat( &TMP$245$7, (void*)"#15", 4, (void*)CODE$1, -1 );
							__builtin_memset( &TMP$246$7, 0, 12 );
							FBSTRING* vr$321 = fb_StrConcat( &TMP$246$7, (void*)vr$318, -1, (void*)"\x0A", 2 );
							__builtin_memset( &TMP$247$7, 0, 12 );
							FBSTRING* vr$324 = fb_StrConcat( &TMP$247$7, (void*)vr$321, -1, (void*)vr$315, -1 );
							__builtin_memset( &TMP$248$7, 0, 12 );
							FBSTRING* vr$327 = fb_StrConcat( &TMP$248$7, (void*)vr$324, -1, (void*)&INSTRUC$1, -1 );
							__builtin_memset( &TMP$249$7, 0, 12 );
							FBSTRING* vr$330 = fb_StrConcat( &TMP$249$7, (void*)vr$327, -1, (void*)" ", 2 );
							__builtin_memset( &TMP$250$7, 0, 12 );
							FBSTRING* vr$333 = fb_StrConcat( &TMP$250$7, (void*)vr$330, -1, (void*)&PART1$1, -1 );
							__builtin_memset( &TMP$251$7, 0, 12 );
							FBSTRING* vr$336 = fb_StrConcat( &TMP$251$7, (void*)vr$333, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$252$7, 0, 12 );
							FBSTRING* vr$339 = fb_StrConcat( &TMP$252$7, (void*)vr$336, -1, (void*)&PREVPART2$1, -1 );
							__builtin_memset( &TMP$253$7, 0, 12 );
							FBSTRING* vr$342 = fb_StrConcat( &TMP$253$7, (void*)vr$339, -1, (void*)" #Optim 15", 11 );
							fb_StrAssign( (void*)CODE$1, -1, (void*)vr$342, -1, 0 );
						}
						label$94:;
						label$93:;
					}
					label$92:;
					label$91:;
				}
				label$84:;
				label$83:;
				fb_StrDelete( (FBSTRING*)&TMP$237$4 );
			}
			fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
			fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
			fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
			FLAG$1 = 0;
			fb_StrDelete( (FBSTRING*)&TMP$192$2 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
		}
		label$82:;
		label$50:;
		fb_StrDelete( (FBSTRING*)&TMP$192$2 );
	}
	int32 vr$351 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movsxd", 7 );
	if( vr$351 != 0 ) goto label$96;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$96:;
	}
	int32 vr$357 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movsx", 6 );
	if( vr$357 != 0 ) goto label$98;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$98:;
	}
	int32 vr$363 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movzx", 6 );
	if( vr$363 != 0 ) goto label$100;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$100:;
	}
	if( FLAG$1 != 1 ) goto label$102;
	{
		FBSTRING TMP$258$2;
		FBSTRING TMP$259$2;
		__builtin_memset( &TMP$258$2, 0, 12 );
		FBSTRING* vr$370 = fb_StrConcat( &TMP$258$2, (void*)"[", 2, (void*)&PREVPART1$1, -1 );
		__builtin_memset( &TMP$259$2, 0, 12 );
		FBSTRING* vr$373 = fb_StrConcat( &TMP$259$2, (void*)vr$370, -1, (void*)"]", 2 );
		int32 vr$375 = fb_StrInstr( 1, (FBSTRING*)&PART1$1, (FBSTRING*)vr$373 );
		if( vr$375 == 0 ) goto label$104;
		{
			FBSTRING* vr$384 = fb_RIGHT( (FBSTRING*)&PART2$1, 1 );
			uint32 vr$385 = fb_ASC( (FBSTRING*)vr$384, 1 );
			FBSTRING* vr$388 = fb_RIGHT( (FBSTRING*)&PART2$1, 1 );
			uint32 vr$389 = fb_ASC( (FBSTRING*)vr$388, 1 );
			if( ((-((uint32)(int32)*(uint8*)*(uint8**)&PART2$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PART2$1 == 101u)) | (-(vr$385 >= 48u) & -(vr$389 <= 57u))) == 0 ) goto label$106;
			{
				FBSTRING TMP$263$4;
				FBSTRING TMP$264$4;
				FBSTRING TMP$265$4;
				FBSTRING TMP$266$4;
				FBSTRING TMP$267$4;
				FBSTRING* vr$393 = fb_StrAllocTempDescZEx( (uint8*)"#O4", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$393 );
				fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)&INSTRUC$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)" ", 2, 0 );
				FBSTRING* vr$398 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$400 = fb_StrInstr( 1, (FBSTRING*)&PART1$1, (FBSTRING*)vr$398 );
				FBSTRING* vr$403 = fb_StrMid( (FBSTRING*)&PART1$1, 1, vr$400 + -1 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)vr$403, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART2$1, -1, 0 );
				int32 vr$410 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$411 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$410 + vr$411) + 9;
				FBSTRING* vr$416 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$263$4, 0, 12 );
				FBSTRING* vr$419 = fb_StrConcat( &TMP$263$4, (void*)"#O4", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$264$4, 0, 12 );
				FBSTRING* vr$422 = fb_StrConcat( &TMP$264$4, (void*)vr$419, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$265$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$265$4, (void*)vr$422, -1, (void*)vr$416, -1 );
				__builtin_memset( &TMP$266$4, 0, 12 );
				FBSTRING* vr$428 = fb_StrConcat( &TMP$266$4, (void*)vr$425, -1, (void*)&NEWCODE$1, -1 );
				__builtin_memset( &TMP$267$4, 0, 12 );
				FBSTRING* vr$431 = fb_StrConcat( &TMP$267$4, (void*)vr$428, -1, (void*)" #Optim 4", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$431, -1, 0 );
			}
			label$106:;
			label$105:;
		}
		goto label$103;
		label$104:;
		{
			int32 vr$433 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
			if( (-(vr$433 == 0) & -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 114u)) == 0 ) goto label$108;
			{
				FBSTRING TMP$271$4;
				FBSTRING TMP$272$4;
				FBSTRING TMP$273$4;
				FBSTRING TMP$274$4;
				FBSTRING TMP$275$4;
				FBSTRING* vr$439 = fb_StrAllocTempDescZEx( (uint8*)"#O5", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$439 );
				fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)"lea ", 5, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART1$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
				int32 vr$447 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$448 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$447 + vr$448) + 9;
				FBSTRING* vr$453 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$271$4, 0, 12 );
				FBSTRING* vr$456 = fb_StrConcat( &TMP$271$4, (void*)"#O5", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$272$4, 0, 12 );
				FBSTRING* vr$459 = fb_StrConcat( &TMP$272$4, (void*)vr$456, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$273$4, 0, 12 );
				FBSTRING* vr$462 = fb_StrConcat( &TMP$273$4, (void*)vr$459, -1, (void*)vr$453, -1 );
				__builtin_memset( &TMP$274$4, 0, 12 );
				FBSTRING* vr$465 = fb_StrConcat( &TMP$274$4, (void*)vr$462, -1, (void*)&NEWCODE$1, -1 );
				__builtin_memset( &TMP$275$4, 0, 12 );
				FBSTRING* vr$468 = fb_StrConcat( &TMP$275$4, (void*)vr$465, -1, (void*)" #Optim 5", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$468, -1, 0 );
			}
			goto label$107;
			label$108:;
			{
				FBSTRING TMP$276$4;
				FBSTRING TMP$277$4;
				int32 TMP$278$4;
				if( (uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 114u ) goto label$109;
				__builtin_memset( &TMP$276$4, 0, 12 );
				FBSTRING* vr$473 = fb_StrConcat( &TMP$276$4, (void*)"[", 2, (void*)&PREVPART1$1, -1 );
				__builtin_memset( &TMP$277$4, 0, 12 );
				FBSTRING* vr$476 = fb_StrConcat( &TMP$277$4, (void*)vr$473, -1, (void*)"]", 2 );
				int32 vr$478 = fb_StrCompare( (void*)&PART2$1, -1, (void*)vr$476, -1 );
				TMP$278$4 = -(vr$478 == 0);
				goto label$3068;
				label$109:;
				TMP$278$4 = 0;
				label$3068:;
				if( TMP$278$4 == 0 ) goto label$111;
				{
					FBSTRING TMP$281$5;
					FBSTRING TMP$282$5;
					FBSTRING TMP$283$5;
					FBSTRING TMP$284$5;
					FBSTRING TMP$285$5;
					FBSTRING* vr$480 = fb_StrAllocTempDescZEx( (uint8*)"#O7", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$480 );
					fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)&INSTRUC$1, -1, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)" ", 2, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART1$1, -1, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
					int32 vr$490 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					int32 vr$491 = fb_StrLen( (void*)CODE$1, -1 );
					WRITEPOS$1 = (vr$490 + vr$491) + 9;
					FBSTRING* vr$496 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
					__builtin_memset( &TMP$281$5, 0, 12 );
					FBSTRING* vr$499 = fb_StrConcat( &TMP$281$5, (void*)"#O7", 4, (void*)CODE$1, -1 );
					__builtin_memset( &TMP$282$5, 0, 12 );
					FBSTRING* vr$502 = fb_StrConcat( &TMP$282$5, (void*)vr$499, -1, (void*)"\x0A", 2 );
					__builtin_memset( &TMP$283$5, 0, 12 );
					FBSTRING* vr$505 = fb_StrConcat( &TMP$283$5, (void*)vr$502, -1, (void*)vr$496, -1 );
					__builtin_memset( &TMP$284$5, 0, 12 );
					FBSTRING* vr$508 = fb_StrConcat( &TMP$284$5, (void*)vr$505, -1, (void*)&NEWCODE$1, -1 );
					__builtin_memset( &TMP$285$5, 0, 12 );
					FBSTRING* vr$511 = fb_StrConcat( &TMP$285$5, (void*)vr$508, -1, (void*)" #Optim 7", 10 );
					fb_StrAssign( (void*)CODE$1, -1, (void*)vr$511, -1, 0 );
				}
				goto label$110;
				label$111:;
				{
					fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
					fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
					fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
					PREVWPOS$1 = WRITEPOS$1;
					FLAG$1 = 0;
					fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
					fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
					fb_StrDelete( (FBSTRING*)&PART2$1 );
					fb_StrDelete( (FBSTRING*)&PART1$1 );
					goto label$43;
				}
				label$110:;
			}
			label$107:;
		}
		label$103:;
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$102:;
	label$101:;
	int32 vr$524 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
	if( vr$524 != 0 ) goto label$113;
	{
		int32 vr$526 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART2$1, -1 );
		if( vr$526 != 0 ) goto label$115;
		{
			FBSTRING TMP$287$3;
			__builtin_memset( &TMP$287$3, 0, 12 );
			FBSTRING* vr$529 = fb_StrConcat( &TMP$287$3, (void*)"#O1 ", 5, (void*)CODE$1, -1 );
			fb_StrAssign( (void*)CODE$1, -1, (void*)vr$529, -1, 0 );
		}
		goto label$114;
		label$115:;
		{
			int32 vr$530 = fb_StrCompare( (void*)&PREVPART2$1, -1, (void*)"", 1 );
			if( vr$530 != 0 ) goto label$117;
			{
				FBSTRING TMP$288$4;
				FBSTRING TMP$297$4;
				FBSTRING TMP$298$4;
				FBSTRING TMP$299$4;
				FBSTRING TMP$300$4;
				FBSTRING TMP$301$4;
				FBSTRING TMP$302$4;
				FBSTRING TMP$303$4;
				FBSTRING TMP$304$4;
				FBSTRING TMP$305$4;
				__builtin_memset( &TMP$288$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$288$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$288$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$288$4 );
				__builtin_memset( &TMP$304$4, 0, 12 );
				__builtin_memset( &TMP$297$4, 0, 12 );
				FBSTRING* vr$540 = fb_StrConcat( &TMP$297$4, (void*)"FOUND AN ERROR : prev/part empty part1=", 40, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$298$4, 0, 12 );
				FBSTRING* vr$543 = fb_StrConcat( &TMP$298$4, (void*)vr$540, -1, (void*)" part2=", 8 );
				__builtin_memset( &TMP$299$4, 0, 12 );
				FBSTRING* vr$546 = fb_StrConcat( &TMP$299$4, (void*)vr$543, -1, (void*)&PART2$1, -1 );
				__builtin_memset( &TMP$300$4, 0, 12 );
				FBSTRING* vr$549 = fb_StrConcat( &TMP$300$4, (void*)vr$546, -1, (void*)" prevpart1=", 12 );
				__builtin_memset( &TMP$301$4, 0, 12 );
				FBSTRING* vr$552 = fb_StrConcat( &TMP$301$4, (void*)vr$549, -1, (void*)&PREVPART1$1, -1 );
				__builtin_memset( &TMP$302$4, 0, 12 );
				FBSTRING* vr$555 = fb_StrConcat( &TMP$302$4, (void*)vr$552, -1, (void*)" prevpart2=", 12 );
				__builtin_memset( &TMP$303$4, 0, 12 );
				FBSTRING* vr$558 = fb_StrConcat( &TMP$303$4, (void*)vr$555, -1, (void*)&PREVPART2$1, -1 );
				fb_StrAssign( (void*)&TMP$304$4, -1, (void*)vr$558, -1, 0 );
				HWRITEASM64( &TMP$304$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$304$4 );
				__builtin_memset( &TMP$305$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$305$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$305$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$305$4 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$117:;
			label$116:;
			if( ((-((uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 == 114u) & -((uint32)(int32)*(uint8*)((uint8*)*(uint8**)&PART1$1 + 3) != 100u)) & -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 101u)) == 0 ) goto label$119;
			{
				FBSTRING TMP$313$4;
				FBSTRING TMP$314$4;
				FBSTRING TMP$315$4;
				FBSTRING TMP$316$4;
				FBSTRING TMP$317$4;
				FBSTRING TMP$318$4;
				FBSTRING TMP$319$4;
				FBSTRING TMP$320$4;
				FBSTRING TMP$321$4;
				FBSTRING* vr$581 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$582 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$581 );
				if( vr$582 == 0 ) goto label$121;
				{
					if( (uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 120u ) goto label$123;
					{
						int32 vr$586 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movss", 6 );
						if( vr$586 != 0 ) goto label$125;
						{
							fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"movd", 5, 0 );
						}
						goto label$124;
						label$125:;
						{
							fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"movq", 5, 0 );
						}
						label$124:;
					}
					label$123:;
					label$122:;
				}
				goto label$120;
				label$121:;
				{
					FBSTRING* vr$587 = fb_StrAllocTempDescZEx( (uint8*)"#O2", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$587 );
					int32 vr$590 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movq", 5 );
					int32 vr$593 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movd", 5 );
					if( (-(vr$590 == 0) | -(vr$593 == 0)) == 0 ) goto label$127;
					{
						fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
					}
					goto label$126;
					label$127:;
					int32 vr$598 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movsx", 6 );
					if( vr$598 != 0 ) goto label$128;
					{
						fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
					}
					label$128:;
					label$126:;
				}
				label$120:;
				int32 vr$601 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$602 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$601 + vr$602) + 9;
				FBSTRING* vr$607 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$313$4, 0, 12 );
				FBSTRING* vr$610 = fb_StrConcat( &TMP$313$4, (void*)"#O2", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$314$4, 0, 12 );
				FBSTRING* vr$613 = fb_StrConcat( &TMP$314$4, (void*)vr$610, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$315$4, 0, 12 );
				FBSTRING* vr$616 = fb_StrConcat( &TMP$315$4, (void*)vr$613, -1, (void*)vr$607, -1 );
				__builtin_memset( &TMP$316$4, 0, 12 );
				FBSTRING* vr$619 = fb_StrConcat( &TMP$316$4, (void*)vr$616, -1, (void*)&PREVINSTRUC$1, -1 );
				__builtin_memset( &TMP$317$4, 0, 12 );
				FBSTRING* vr$622 = fb_StrConcat( &TMP$317$4, (void*)vr$619, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$318$4, 0, 12 );
				FBSTRING* vr$625 = fb_StrConcat( &TMP$318$4, (void*)vr$622, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$319$4, 0, 12 );
				FBSTRING* vr$628 = fb_StrConcat( &TMP$319$4, (void*)vr$625, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$320$4, 0, 12 );
				FBSTRING* vr$631 = fb_StrConcat( &TMP$320$4, (void*)vr$628, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$321$4, 0, 12 );
				FBSTRING* vr$634 = fb_StrConcat( &TMP$321$4, (void*)vr$631, -1, (void*)" #Optim 2", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$634, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$118;
			label$119:;
			if( (uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 != 120u ) goto label$129;
			{
				FBSTRING TMP$331$4;
				FBSTRING TMP$332$4;
				FBSTRING TMP$333$4;
				FBSTRING TMP$334$4;
				FBSTRING TMP$335$4;
				FBSTRING TMP$336$4;
				FBSTRING TMP$337$4;
				FBSTRING TMP$338$4;
				FBSTRING TMP$339$4;
				FBSTRING* vr$638 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$639 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$638 );
				if( vr$639 == 0 ) goto label$131;
				{
					int32 vr$640 = fb_StrCompare( (void*)&PREVINSTRUC$1, -1, (void*)"movss", 6 );
					if( vr$640 != 0 ) goto label$133;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movd", 5, 0 );
					}
					goto label$132;
					label$133:;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movq", 5, 0 );
					}
					label$132:;
				}
				goto label$130;
				label$131:;
				{
					FBSTRING* vr$643 = fb_StrAllocTempDescZEx( (uint8*)"#O3", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$643 );
					int32 vr$645 = fb_StrCompare( (void*)&PREVINSTRUC$1, -1, (void*)"movq", 5 );
					if( vr$645 != 0 ) goto label$135;
					{
						FBSTRING* vr$646 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
						int32 vr$648 = fb_StrInstr( 1, (FBSTRING*)&PART2$1, (FBSTRING*)vr$646 );
						if( vr$648 == 0 ) goto label$137;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movsd", 6, 0 );
						}
						goto label$136;
						label$137:;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movq", 5, 0 );
						}
						label$136:;
					}
					goto label$134;
					label$135:;
					int32 vr$651 = fb_StrCompare( (void*)&PREVINSTRUC$1, -1, (void*)"movd", 5 );
					if( vr$651 != 0 ) goto label$138;
					{
						if( (-((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 101u)) == 0 ) goto label$140;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movd", 5, 0 );
						}
						goto label$139;
						label$140:;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movss", 6, 0 );
						}
						label$139:;
					}
					goto label$134;
					label$138:;
					{
						FBSTRING TMP$324$6;
						FBSTRING TMP$327$6;
						FBSTRING TMP$328$6;
						FBSTRING TMP$329$6;
						__builtin_memset( &TMP$324$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$324$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$324$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$324$6 );
						__builtin_memset( &TMP$328$6, 0, 12 );
						__builtin_memset( &TMP$327$6, 0, 12 );
						FBSTRING* vr$669 = fb_StrConcat( &TMP$327$6, (void*)"FOUND AN ERROR : in check_optim 3-2 instruc unknown=", 53, (void*)&INSTRUC$1, -1 );
						fb_StrAssign( (void*)&TMP$328$6, -1, (void*)vr$669, -1, 0 );
						HWRITEASM64( &TMP$328$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$328$6 );
						__builtin_memset( &TMP$329$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$329$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$329$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$329$6 );
					}
					label$134:;
				}
				label$130:;
				int32 vr$678 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$679 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$678 + vr$679) + 9;
				FBSTRING* vr$685 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$331$4, 0, 12 );
				FBSTRING* vr$688 = fb_StrConcat( &TMP$331$4, (void*)"#O3", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$332$4, 0, 12 );
				FBSTRING* vr$691 = fb_StrConcat( &TMP$332$4, (void*)vr$688, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$333$4, 0, 12 );
				FBSTRING* vr$694 = fb_StrConcat( &TMP$333$4, (void*)vr$691, -1, (void*)vr$685, -1 );
				__builtin_memset( &TMP$334$4, 0, 12 );
				FBSTRING* vr$697 = fb_StrConcat( &TMP$334$4, (void*)vr$694, -1, (void*)&INSTRUC$1, -1 );
				__builtin_memset( &TMP$335$4, 0, 12 );
				FBSTRING* vr$700 = fb_StrConcat( &TMP$335$4, (void*)vr$697, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$336$4, 0, 12 );
				FBSTRING* vr$703 = fb_StrConcat( &TMP$336$4, (void*)vr$700, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$337$4, 0, 12 );
				FBSTRING* vr$706 = fb_StrConcat( &TMP$337$4, (void*)vr$703, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$338$4, 0, 12 );
				FBSTRING* vr$709 = fb_StrConcat( &TMP$338$4, (void*)vr$706, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$339$4, 0, 12 );
				FBSTRING* vr$712 = fb_StrConcat( &TMP$339$4, (void*)vr$709, -1, (void*)" #Optim 3", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$712, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$118;
			label$129:;
			int32 vr$722 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
			FBSTRING* vr$725 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
			int32 vr$726 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$725 );
			if( (((-((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 101u)) & -(vr$722 == 0)) & -(vr$726 == 0)) == 0 ) goto label$141;
			{
				FBSTRING TMP$342$4;
				FBSTRING TMP$343$4;
				FBSTRING TMP$344$4;
				FBSTRING TMP$345$4;
				FBSTRING TMP$346$4;
				FBSTRING TMP$347$4;
				FBSTRING TMP$348$4;
				FBSTRING TMP$349$4;
				FBSTRING TMP$350$4;
				FBSTRING* vr$729 = fb_StrAllocTempDescZEx( (uint8*)"#O6", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$729 );
				int32 vr$732 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$733 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$732 + vr$733) + 9;
				FBSTRING* vr$738 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$342$4, 0, 12 );
				FBSTRING* vr$741 = fb_StrConcat( &TMP$342$4, (void*)"#O6", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$343$4, 0, 12 );
				FBSTRING* vr$744 = fb_StrConcat( &TMP$343$4, (void*)vr$741, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$344$4, 0, 12 );
				FBSTRING* vr$747 = fb_StrConcat( &TMP$344$4, (void*)vr$744, -1, (void*)vr$738, -1 );
				__builtin_memset( &TMP$345$4, 0, 12 );
				FBSTRING* vr$750 = fb_StrConcat( &TMP$345$4, (void*)vr$747, -1, (void*)&PREVINSTRUC$1, -1 );
				__builtin_memset( &TMP$346$4, 0, 12 );
				FBSTRING* vr$753 = fb_StrConcat( &TMP$346$4, (void*)vr$750, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$347$4, 0, 12 );
				FBSTRING* vr$756 = fb_StrConcat( &TMP$347$4, (void*)vr$753, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$348$4, 0, 12 );
				FBSTRING* vr$759 = fb_StrConcat( &TMP$348$4, (void*)vr$756, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$349$4, 0, 12 );
				FBSTRING* vr$762 = fb_StrConcat( &TMP$349$4, (void*)vr$759, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$350$4, 0, 12 );
				FBSTRING* vr$765 = fb_StrConcat( &TMP$350$4, (void*)vr$762, -1, (void*)" #Optim 6", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$765, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$118;
			label$141:;
			int32 vr$775 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
			if( ((-((uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 == 101u)) & -(vr$775 == 0)) == 0 ) goto label$142;
			{
				FBSTRING TMP$353$4;
				FBSTRING TMP$354$4;
				FBSTRING TMP$355$4;
				FBSTRING TMP$356$4;
				FBSTRING TMP$357$4;
				FBSTRING TMP$358$4;
				FBSTRING TMP$359$4;
				FBSTRING TMP$360$4;
				FBSTRING TMP$361$4;
				FBSTRING* vr$778 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$779 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$778 );
				if( vr$779 != 0 ) goto label$144;
				{
					FBSTRING* vr$780 = fb_StrAllocTempDescZEx( (uint8*)"#16", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$780 );
				}
				label$144:;
				label$143:;
				if( (uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 120u ) goto label$146;
				{
					if( (uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 != 101u ) goto label$148;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movd", 5, 0 );
					}
					goto label$147;
					label$148:;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movq", 5, 0 );
					}
					label$147:;
				}
				label$146:;
				label$145:;
				int32 vr$789 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$790 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$789 + vr$790) + 9;
				FBSTRING* vr$796 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$353$4, 0, 12 );
				FBSTRING* vr$799 = fb_StrConcat( &TMP$353$4, (void*)"#16", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$354$4, 0, 12 );
				FBSTRING* vr$802 = fb_StrConcat( &TMP$354$4, (void*)vr$799, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$355$4, 0, 12 );
				FBSTRING* vr$805 = fb_StrConcat( &TMP$355$4, (void*)vr$802, -1, (void*)vr$796, -1 );
				__builtin_memset( &TMP$356$4, 0, 12 );
				FBSTRING* vr$808 = fb_StrConcat( &TMP$356$4, (void*)vr$805, -1, (void*)&INSTRUC$1, -1 );
				__builtin_memset( &TMP$357$4, 0, 12 );
				FBSTRING* vr$811 = fb_StrConcat( &TMP$357$4, (void*)vr$808, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$358$4, 0, 12 );
				FBSTRING* vr$814 = fb_StrConcat( &TMP$358$4, (void*)vr$811, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$359$4, 0, 12 );
				FBSTRING* vr$817 = fb_StrConcat( &TMP$359$4, (void*)vr$814, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$360$4, 0, 12 );
				FBSTRING* vr$820 = fb_StrConcat( &TMP$360$4, (void*)vr$817, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$361$4, 0, 12 );
				FBSTRING* vr$823 = fb_StrConcat( &TMP$361$4, (void*)vr$820, -1, (void*)" #Optim 16", 11 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$823, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			label$142:;
			label$118:;
		}
		label$114:;
	}
	label$113:;
	label$112:;
	fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
	fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
	fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
	PREVWPOS$1 = WRITEPOS$1;
	fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	fb_StrDelete( (FBSTRING*)&PART2$1 );
	fb_StrDelete( (FBSTRING*)&PART1$1 );
	label$43:;
}

static void REG_FREEABLE( FBSTRING* LINEASM$1 )
{
	int32 TMP$364$1;
	int32 TMP$366$1;
	int32 TMP$368$1;
	label$149:;
	int32 REGFOUND1$1;
	__builtin_memset( &REGFOUND1$1, 0, 4 );
	int32 REGFOUND2$1;
	__builtin_memset( &REGFOUND2$1, 0, 4 );
	FBSTRING INSTRUC$1;
	__builtin_memset( &INSTRUC$1, 0, 12 );
	FBSTRING* vr$3 = fb_TRIM( (FBSTRING*)LINEASM$1 );
	FBSTRING* vr$4 = fb_LEFT( (FBSTRING*)vr$3, 3 );
	fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$4, -1, 0 );
	int32 vr$7 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"inc", 4 );
	if( vr$7 == 0 ) goto label$151;
	int32 vr$9 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"dec", 4 );
	TMP$364$1 = -(vr$9 == 0);
	goto label$3069;
	label$151:;
	TMP$364$1 = -1;
	label$3069:;
	if( TMP$364$1 != 0 ) goto label$152;
	int32 vr$12 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"not", 4 );
	TMP$366$1 = -(vr$12 == 0);
	goto label$3070;
	label$152:;
	TMP$366$1 = -1;
	label$3070:;
	if( TMP$366$1 != 0 ) goto label$153;
	int32 vr$15 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"neg", 4 );
	TMP$368$1 = -(vr$15 == 0);
	goto label$3071;
	label$153:;
	TMP$368$1 = -1;
	label$3071:;
	if( TMP$368$1 == 0 ) goto label$155;
	{
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
		int32 vr$18 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$17 );
		if( vr$18 != 0 ) goto label$157;
		{
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			goto label$150;
		}
		label$157:;
		label$156:;
	}
	goto label$154;
	label$155:;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"mov lea cmp add sub imu idiv div shl shr sar and xor or call jmp push test cvt ", 79 );
		int32 vr$22 = fb_StrInstr( 1, (FBSTRING*)vr$21, (FBSTRING*)&INSTRUC$1 );
		if( vr$22 != 0 ) goto label$159;
		{
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			goto label$150;
			label$159:;
		}
	}
	label$154:;
	{
		int32 IREG$2;
		IREG$2 = 1;
		label$163:;
		{
			FBSTRING TMP$370$3;
			FBSTRING TMP$371$3;
			FBSTRING TMP$372$3;
			FBSTRING TMP$373$3;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -3 ) goto label$165;
			{
				goto label$161;
				label$165:;
			}
			REGFOUND1$1 = -1;
			REGFOUND2$1 = -1;
			__builtin_memset( &TMP$370$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$370$3, *(void**)((int32)(uint8**)REGSTRQ$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$29 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$28 );
			if( vr$29 == 0 ) goto label$167;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$166;
			label$167:;
			__builtin_memset( &TMP$371$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$371$3, *(void**)((int32)(uint8**)REGSTRD$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$34 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$33 );
			if( vr$34 == 0 ) goto label$168;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$166;
			label$168:;
			__builtin_memset( &TMP$372$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$372$3, *(void**)((int32)(uint8**)REGSTRW$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$39 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$38 );
			if( vr$39 == 0 ) goto label$169;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$166;
			label$169:;
			__builtin_memset( &TMP$373$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$373$3, *(void**)((int32)(uint8**)REGSTRB$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$44 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$43 );
			if( vr$44 == 0 ) goto label$170;
			{
				REGFOUND1$1 = IREG$2;
			}
			label$170:;
			label$166:;
			if( REGFOUND1$1 == -1 ) goto label$172;
			{
				int32 TMP$376$4;
				int32 TMP$378$4;
				int32 vr$46 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"add", 4 );
				if( vr$46 == 0 ) goto label$173;
				int32 vr$48 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"sub", 4 );
				TMP$376$4 = -(vr$48 == 0);
				goto label$3072;
				label$173:;
				TMP$376$4 = -1;
				label$3072:;
				if( TMP$376$4 != 0 ) goto label$174;
				int32 vr$51 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"imu", 4 );
				TMP$378$4 = -(vr$51 == 0);
				goto label$3073;
				label$174:;
				TMP$378$4 = -1;
				label$3073:;
				if( TMP$378$4 == 0 ) goto label$176;
				{
					goto label$161;
				}
				goto label$175;
				label$176:;
				int32 vr$54 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"cmp", 4 );
				if( vr$54 != 0 ) goto label$177;
				{
					*(int32*)((uint8*)&CTX$ + 132) = REGFOUND1$1;
					*(int32*)((uint8*)&CTX$ + 136) = *(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31)));
					*(int32*)((uint8*)&CTX$ + 140) = 2;
					*(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31))) = -2;
					goto label$161;
				}
				goto label$175;
				label$177:;
				{
					FBSTRING TMP$379$5;
					FBSTRING TMP$380$5;
					__builtin_memset( &TMP$379$5, 0, 12 );
					FBSTRING* vr$61 = fb_StrConcat( &TMP$379$5, *(void**)((int32)(uint8**)REGSTRQ$ + (IREG$2 << (2 & 31))), 0, (void*)", ", 3 );
					__builtin_memset( &TMP$380$5, 0, 12 );
					FBSTRING* vr$64 = fb_StrConcat( &TMP$380$5, (void*)vr$61, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (IREG$2 << (2 & 31))), 0 );
					int32 vr$65 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$64 );
					if( vr$65 == 0 ) goto label$179;
					{
						*(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31))) = -2;
						fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
						goto label$150;
					}
					label$179:;
					label$178:;
				}
				label$175:;
			}
			label$172:;
			label$171:;
			if( REGFOUND1$1 != -1 ) goto label$181;
			{
				FBSTRING* vr$69 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRQ$ + (IREG$2 << (2 & 31))) );
				int32 vr$70 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$69 );
				if( vr$70 == 0 ) goto label$183;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$182;
				label$183:;
				FBSTRING* vr$72 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRD$ + (IREG$2 << (2 & 31))) );
				int32 vr$73 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$72 );
				if( vr$73 == 0 ) goto label$184;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$182;
				label$184:;
				FBSTRING* vr$75 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRW$ + (IREG$2 << (2 & 31))) );
				int32 vr$76 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$75 );
				if( vr$76 == 0 ) goto label$185;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$182;
				label$185:;
				FBSTRING* vr$78 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRB$ + (IREG$2 << (2 & 31))) );
				int32 vr$79 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$78 );
				if( vr$79 == 0 ) goto label$186;
				{
					REGFOUND2$1 = IREG$2;
				}
				label$186:;
				label$182:;
			}
			label$181:;
			label$180:;
			if( REGFOUND2$1 == -1 ) goto label$188;
			{
				*(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND2$1 << (2 & 31))) = -2;
			}
			label$188:;
			label$187:;
		}
		label$161:;
		IREG$2 = IREG$2 + 1;
		label$160:;
		if( IREG$2 <= 15 ) goto label$163;
		label$162:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	label$150:;
}

static int32 PW2( int32 NUM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$189:;
	double A$1;
	A$1 = __builtin_log( (double)NUM$1 ) / 0x1.62E42FEFA39EFp-1;
	double vr$4 = fb_FRACd( A$1 );
	if( vr$4 != 0x0p+0 ) goto label$192;
	{
		double vr$5 = pow( 0x1.p+1, A$1 );
		fb$result$1 = fb_D2I( vr$5 );
		goto label$190;
	}
	goto label$191;
	label$192:;
	{
		double vr$9 = pow( 0x1.p+1, __builtin_floor( A$1 ) + 0x1.p+0 );
		fb$result$1 = fb_D2I( vr$9 );
		goto label$190;
	}
	label$191:;
	label$190:;
	return fb$result$1;
}

static void ASM_SECTION( FBSTRING* SECTION$1 )
{
	label$193:;
	static FBSTRING SECTION_CURRENT$1;
	int32 vr$0 = fb_StrCompare( (void*)&SECTION_CURRENT$1, -1, (void*)SECTION$1, -1 );
	if( vr$0 == 0 ) goto label$196;
	{
		FBSTRING TMP$382$2;
		FBSTRING TMP$383$2;
		__builtin_memset( &TMP$383$2, 0, 12 );
		__builtin_memset( &TMP$382$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$382$2, (void*)".section ", 10, (void*)SECTION$1, -1 );
		fb_StrAssign( (void*)&TMP$383$2, -1, (void*)vr$4, -1, 0 );
		HWRITEASM64( &TMP$383$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$383$2 );
		fb_StrAssign( (void*)&SECTION_CURRENT$1, -1, (void*)SECTION$1, -1, 0 );
	}
	label$196:;
	label$195:;
	label$194:;
}

static void EMITOP3_OP4( FBSTRING* OP$1 )
{
	label$197:;
	FBSTRING* vr$0 = fb_RIGHT( (FBSTRING*)OP$1, 3 );
	int32 vr$1 = fb_StrCompare( (void*)vr$0, -1, (void*)"#NO", 4 );
	if( vr$1 != 0 ) goto label$200;
	{
		HWRITEASM64( OP$1, 3 );
	}
	goto label$199;
	label$200:;
	{
		HWRITEASM64( OP$1, 0 );
	}
	label$199:;
	label$198:;
}

static void HWRITEASM64( FBSTRING* LN2$1, int32 OPT$1 )
{
	FBSTRING TMP$394$1;
	label$205:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)LN2$1, -1, 0 );
	if( *(int32*)((uint8*)&CTX$ + 236) == 0 ) goto label$208;
	{
		if( *(int32*)((uint8*)&CTX$ + 240) != 1 ) goto label$210;
		{
			*(int32*)((uint8*)&CTX$ + 240) = 2;
		}
		goto label$209;
		label$210:;
		{
			*(int32*)((uint8*)&CTX$ + 236) = 0;
		}
		label$209:;
	}
	label$208:;
	label$207:;
	if( *(int32*)((uint8*)&CTX$ + 140) == 0 ) goto label$212;
	{
		*(int32*)((uint8*)&CTX$ + 140) = *(int32*)((uint8*)&CTX$ + 140) + -1;
		if( *(int32*)((uint8*)&CTX$ + 140) != 0 ) goto label$214;
		{
			*(int32*)((uint8*)&CTX$ + 136) = -2;
		}
		label$214:;
		label$213:;
	}
	label$212:;
	label$211:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$216;
	{
		if( *(int32*)((uint8*)&CTXDBG$ + 4) == -1 ) goto label$218;
		{
			FBSTRING TMP$386$3;
			FBSTRING TMP$388$3;
			FBSTRING TMP$389$3;
			FBSTRING TMP$390$3;
			FBSTRING TMP$391$3;
			FBSTRING TMP$392$3;
			DBG_FILENAME( (FBSTRING*)((uint8*)&CTXDBG$ + 20) );
			uint8* vr$5 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$5, 0, 0 );
			__builtin_memset( &TMP$390$3, 0, 12 );
			uint8* vr$8 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
			__builtin_memset( &TMP$388$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$388$3, (void*)&LNAME$1, -1, (void*)"-", 2 );
			__builtin_memset( &TMP$389$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$389$3, (void*)vr$12, -1, (void*)vr$8, 0 );
			fb_StrAssign( (void*)&TMP$390$3, -1, (void*)vr$15, -1, 0 );
			__builtin_memset( &TMP$386$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$386$3, -1, (void*)"", 1, 0 );
			DBG_ADDSTAB( &TMP$386$3, (uint8)68u, (int16)*(int32*)((uint8*)&CTXDBG$ + 4), &TMP$390$3 );
			fb_StrDelete( (FBSTRING*)&TMP$390$3 );
			fb_StrDelete( (FBSTRING*)&TMP$386$3 );
			*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
			__builtin_memset( &TMP$392$3, 0, 12 );
			__builtin_memset( &TMP$391$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$391$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$392$3, -1, (void*)vr$28, -1, 0 );
			HWRITEASM64( &TMP$392$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$392$3 );
		}
		label$218:;
		label$217:;
	}
	label$216:;
	label$215:;
	if( (-(OPT$1 != 2) & -(OPT$1 != 1)) == 0 ) goto label$220;
	{
		REG_FREEABLE( &LN$1 );
		label$220:;
	}
	if( (-(OPT$1 == 3) | -(OPT$1 == 1)) == 0 ) goto label$222;
	{
		FBSTRING TMP$393$2;
		__builtin_memset( &TMP$393$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$393$2, -1, (void*)"", 1, 0 );
		CHECK_OPTIM( &TMP$393$2 );
		fb_StrDelete( (FBSTRING*)&TMP$393$2 );
	}
	goto label$221;
	label$222:;
	{
		CHECK_OPTIM( &LN$1 );
	}
	label$221:;
	FBSTRING* vr$46 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
	__builtin_memset( &TMP$394$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$394$1, (void*)vr$46, -1, (void*)&LN$1, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$49, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x0A", 2, 0 );
	{
		uint32 TMP$395$2;
		TMP$395$2 = *(uint32*)((uint8*)&CTX$ + 4);
		goto label$224;
		label$225:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 56), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$226:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 44), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$227:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 68), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$228:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$229:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 32), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$230:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$224:;
		static const void* tmp$4039[6] = {
			&&label$228,
			&&label$230,
			&&label$229,
			&&label$226,
			&&label$225,
			&&label$227,
		};
		if( TMP$395$2 > 5u ) goto label$230;
		goto *tmp$4039[TMP$395$2 - 0u];
		label$223:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$206:;
}

static FBSTRING* HFLOATTOHEX_ASM64( double VALUE$1, int32 DTYPE$1, int8 FULL$1 )
{
	int32 TMP$396$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$231:;
	FBSTRING RAWBYTES$1;
	__builtin_memset( &RAWBYTES$1, 0, 12 );
	float SINGLEVALUE$1;
	SINGLEVALUE$1 = (float)VALUE$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$233;
	TMP$396$1 = 24;
	goto label$3074;
	label$233:;
	TMP$396$1 = DTYPE$1 & 31;
	label$3074:;
	if( TMP$396$1 != 16 ) goto label$235;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$6 = fb_HEXEx_l( *(uint64*)&VALUE$1, 16 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$6, -1, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)" # DBL=", 8, 0 );
		FBSTRING* vr$9 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$9, -1, 0 );
		if( (int32)FULL$1 == 0 ) goto label$237;
		{
			FBSTRING TMP$400$3;
			__builtin_memset( &TMP$400$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$400$3, (void*)".quad ", 7, (void*)&RAWBYTES$1, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$15, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		goto label$236;
		label$237:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)&RAWBYTES$1, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		label$236:;
	}
	goto label$234;
	label$235:;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$22 = fb_HEXEx_i( *(uint32*)&SINGLEVALUE$1, 8 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$22, -1, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)" # SNG=", 8, 0 );
		FBSTRING* vr$25 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$25, -1, 0 );
		if( (int32)FULL$1 == 0 ) goto label$239;
		{
			FBSTRING TMP$403$3;
			__builtin_memset( &TMP$403$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$403$3, (void*)".long ", 7, (void*)&RAWBYTES$1, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$31, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		goto label$238;
		label$239:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)&RAWBYTES$1, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		label$238:;
	}
	label$234:;
	fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
	label$232:;
	FBSTRING* vr$39 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$39;
}

static int32 DBG_ADDSTR( FBSTRING* STRG$1, int32 NOSEARCH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$240:;
	if( NOSEARCH$1 != 0 ) goto label$243;
	{
		{
			int32 ISTR$3;
			ISTR$3 = 0;
			int32 TMP$404$3;
			TMP$404$3 = *(int32*)((uint8*)&CTXDBG$ + 36);
			goto label$244;
			label$247:;
			{
				int32 vr$4 = fb_StrCompare( (void*)STRG$1, -1, (void*)((uint8*)((ISTR$3 * 24) + *(int32*)&DBGSTR$) + 8), -1 );
				if( vr$4 != 0 ) goto label$249;
				{
					fb$result$1 = (int32)*(int64*)((ISTR$3 * 24) + *(int32*)&DBGSTR$);
					goto label$241;
				}
				label$249:;
				label$248:;
			}
			label$245:;
			ISTR$3 = ISTR$3 + 1;
			label$244:;
			if( ISTR$3 <= TMP$404$3 ) goto label$247;
			label$246:;
		}
	}
	label$243:;
	label$242:;
	*(int32*)((uint8*)&CTXDBG$ + 36) = *(int32*)((uint8*)&CTXDBG$ + 36) + 1;
	if( *(int32*)((uint8*)&CTXDBG$ + 36) <= *(int32*)((uint8*)&CTXDBG$ + 40) ) goto label$251;
	{
		*(int32*)((uint8*)&CTXDBG$ + 40) = fb_D2I( (double)*(int32*)((uint8*)&CTXDBG$ + 40) * 0x1.4CCCCCCCCCCCDp+0 );
		int32 vr$13 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTR$, 24u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
		if( vr$13 == 0 ) goto label$252;
		void* vr$14 = fb_ErrorThrowAt( 948, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$14;
		label$252:;
	}
	label$251:;
	label$250:;
	fb_StrAssign( (void*)((uint8*)((*(int32*)((uint8*)&CTXDBG$ + 36) * 24) + *(int32*)&DBGSTR$) + 8), -1, (void*)STRG$1, -1, 0 );
	*(int64*)((*(int32*)((uint8*)&CTXDBG$ + 36) * 24) + *(int32*)&DBGSTR$) = *(int64*)((uint8*)&CTXDBG$ + 56);
	fb$result$1 = (int32)*(int64*)((uint8*)&CTXDBG$ + 56);
	int32 vr$21 = fb_StrLen( (void*)STRG$1, -1 );
	*(int64*)((uint8*)&CTXDBG$ + 56) = *(int64*)((uint8*)&CTXDBG$ + 56) + (int64)(vr$21 + 1);
	label$241:;
	return fb$result$1;
}

static void DBG_ADDSTAB( FBSTRING* TXT$1, uint8 COD$1, int16 DESC$1, FBSTRING* VALUE$1 )
{
	label$253:;
	int64 OFFST$1;
	__builtin_memset( &OFFST$1, 0, 8 );
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8 );
	int32 vr$2 = fb_StrCompare( (void*)TXT$1, -1, (void*)"", 1 );
	if( vr$2 == 0 ) goto label$256;
	{
		if( (-((int32)COD$1 == 100) | -((int32)COD$1 == 132)) == 0 ) goto label$258;
		{
			int32 vr$8 = DBG_ADDSTR( TXT$1, 0 );
			OFFST$1 = (int64)vr$8;
		}
		goto label$257;
		label$258:;
		{
			int32 vr$10 = DBG_ADDSTR( TXT$1, 1 );
			OFFST$1 = (int64)vr$10;
		}
		label$257:;
	}
	label$256:;
	label$255:;
	*(int32*)((uint8*)&CTXDBG$ + 44) = *(int32*)((uint8*)&CTXDBG$ + 44) + 1;
	if( *(int32*)((uint8*)&CTXDBG$ + 44) <= *(int32*)((uint8*)&CTXDBG$ + 48) ) goto label$260;
	{
		*(int32*)((uint8*)&CTXDBG$ + 48) = fb_D2I( (double)*(int32*)((uint8*)&CTXDBG$ + 48) * 0x1.8p+0 );
		int32 vr$16 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 24u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
		if( vr$16 == 0 ) goto label$261;
		void* vr$17 = fb_ErrorThrowAt( 968, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$17;
		label$261:;
	}
	label$260:;
	label$259:;
	*(int32*)&STAB$1 = (int32)OFFST$1;
	*(int16*)((uint8*)&STAB$1 + 4) = (int16)COD$1;
	*(int16*)((uint8*)&STAB$1 + 6) = DESC$1;
	*(int64*)((*(int32*)((uint8*)&CTXDBG$ + 44) * 24) + *(int32*)&DBGSTAB$) = *(int64*)&STAB$1;
	fb_StrAssign( (void*)((uint8*)((*(int32*)((uint8*)&CTXDBG$ + 44) * 24) + *(int32*)&DBGSTAB$) + 8), -1, (void*)VALUE$1, -1, 0 );
	label$254:;
}

static void DBG_EMITSTR( void )
{
	FBSTRING TMP$413$1;
	label$262:;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$265;
	{
		FBSTRING TMP$409$2;
		__builtin_memset( &TMP$409$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$409$2, -1, (void*)".dbgstr,\x22" "a\x22", 12, 0 );
		ASM_SECTION( &TMP$409$2 );
		fb_StrDelete( (FBSTRING*)&TMP$409$2 );
	}
	goto label$264;
	label$265:;
	{
		FBSTRING TMP$411$2;
		__builtin_memset( &TMP$411$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$411$2, -1, (void*)".dbgstr,\x22" "dr\x22", 13, 0 );
		ASM_SECTION( &TMP$411$2 );
		fb_StrDelete( (FBSTRING*)&TMP$411$2 );
	}
	label$264:;
	__builtin_memset( &TMP$413$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$413$1, -1, (void*)".byte 0", 8, 0 );
	HWRITEASM64( &TMP$413$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$413$1 );
	{
		int32 ISTR$2;
		ISTR$2 = 0;
		int32 TMP$414$2;
		TMP$414$2 = *(int32*)((uint8*)&CTXDBG$ + 36);
		goto label$266;
		label$269:;
		{
			FBSTRING TMP$419$3;
			FBSTRING TMP$420$3;
			FBSTRING TMP$421$3;
			__builtin_memset( &TMP$421$3, 0, 12 );
			FBSTRING* vr$15 = HREPLACE( (uint8*)*(uint8**)((uint8*)((ISTR$2 * 24) + *(int32*)&DBGSTR$) + 8), (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			__builtin_memset( &TMP$419$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$419$3, (void*)".ascii \x22", 9, (void*)vr$15, -1 );
			__builtin_memset( &TMP$420$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$420$3, (void*)vr$18, -1, (void*)"\x5C" "0\x22", 4 );
			fb_StrAssign( (void*)&TMP$421$3, -1, (void*)vr$21, -1, 0 );
			HWRITEASM64( &TMP$421$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$421$3 );
		}
		label$267:;
		ISTR$2 = ISTR$2 + 1;
		label$266:;
		if( ISTR$2 <= TMP$414$2 ) goto label$269;
		label$268:;
	}
	label$263:;
}

static void DBG_EMITSTAB( void )
{
	label$270:;
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8 );
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$273;
	{
		FBSTRING TMP$423$2;
		__builtin_memset( &TMP$423$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$423$2, -1, (void*)".dbgdat,\x22" "a\x22", 12, 0 );
		ASM_SECTION( &TMP$423$2 );
		fb_StrDelete( (FBSTRING*)&TMP$423$2 );
	}
	goto label$272;
	label$273:;
	{
		FBSTRING TMP$425$2;
		__builtin_memset( &TMP$425$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$425$2, -1, (void*)".dbgdat,\x22" "dr\x22", 13, 0 );
		ASM_SECTION( &TMP$425$2 );
		fb_StrDelete( (FBSTRING*)&TMP$425$2 );
	}
	label$272:;
	{
		int32 ISTAB$2;
		ISTAB$2 = 0;
		int32 TMP$426$2;
		TMP$426$2 = *(int32*)((uint8*)&CTXDBG$ + 44);
		goto label$274;
		label$277:;
		{
			FBSTRING TMP$429$3;
			FBSTRING TMP$430$3;
			FBSTRING TMP$431$3;
			FBSTRING TMP$432$3;
			FBSTRING TMP$433$3;
			FBSTRING TMP$434$3;
			FBSTRING TMP$435$3;
			FBSTRING TMP$436$3;
			FBSTRING TMP$437$3;
			FBSTRING TMP$438$3;
			*(int64*)&STAB$1 = *(int64*)((ISTAB$2 * 24) + *(int32*)&DBGSTAB$);
			__builtin_memset( &TMP$436$3, 0, 12 );
			FBSTRING* vr$12 = fb_IntToStr( *(int32*)&STAB$1 );
			FBSTRING* vr$14 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 6) );
			FBSTRING* vr$16 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 4) );
			FBSTRING* vr$19 = fb_HEX_l( *(uint64*)((ISTAB$2 * 24) + *(int32*)&DBGSTAB$) );
			__builtin_memset( &TMP$429$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$429$3, (void*)".quad 0x", 9, (void*)vr$19, -1 );
			__builtin_memset( &TMP$430$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$430$3, (void*)vr$22, -1, (void*)" # ", 4 );
			__builtin_memset( &TMP$431$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$431$3, (void*)vr$25, -1, (void*)vr$16, -1 );
			__builtin_memset( &TMP$432$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$432$3, (void*)vr$28, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$433$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$433$3, (void*)vr$31, -1, (void*)vr$14, -1 );
			__builtin_memset( &TMP$434$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$434$3, (void*)vr$34, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$435$3, 0, 12 );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$435$3, (void*)vr$37, -1, (void*)vr$12, -1 );
			fb_StrAssign( (void*)&TMP$436$3, -1, (void*)vr$40, -1, 0 );
			HWRITEASM64( &TMP$436$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$436$3 );
			__builtin_memset( &TMP$438$3, 0, 12 );
			__builtin_memset( &TMP$437$3, 0, 12 );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$437$3, (void*)".quad ", 7, (void*)((uint8*)((ISTAB$2 * 24) + *(int32*)&DBGSTAB$) + 8), -1 );
			fb_StrAssign( (void*)&TMP$438$3, -1, (void*)vr$50, -1, 0 );
			HWRITEASM64( &TMP$438$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$438$3 );
		}
		label$275:;
		ISTAB$2 = ISTAB$2 + 1;
		label$274:;
		if( ISTAB$2 <= TMP$426$2 ) goto label$277;
		label$276:;
	}
	label$271:;
}

static void EDBGEMITHEADER_ASM64( uint8* FILENAME$1 )
{
	FBSTRING TMP$442$1;
	FBSTRING TMP$443$1;
	FBSTRING TMP$444$1;
	FBSTRING TMP$446$1;
	FBSTRING TMP$447$1;
	FBSTRING TMP$448$1;
	FBSTRING TMP$449$1;
	FBSTRING TMP$452$1;
	FBSTRING TMP$453$1;
	FBSTRING TMP$454$1;
	label$278:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	*(uint32*)&CTXDBG$ = 1u;
	*(int32*)((uint8*)&CTXDBG$ + 36) = -1;
	*(int32*)((uint8*)&CTXDBG$ + 40) = 1000;
	int32 vr$1 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTR$, 24u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
	if( vr$1 == 0 ) goto label$280;
	void* vr$2 = fb_ErrorThrowAt( 1007, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
	goto *vr$2;
	label$280:;
	*(int32*)((uint8*)&CTXDBG$ + 44) = -1;
	*(int32*)((uint8*)&CTXDBG$ + 48) = 1000;
	int32 vr$3 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 24u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
	if( vr$3 == 0 ) goto label$281;
	void* vr$4 = fb_ErrorThrowAt( 1010, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
	goto *vr$4;
	label$281:;
	*(int64*)((uint8*)&CTXDBG$ + 56) = 1ll;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	__builtin_memset( &TMP$444$1, 0, 12 );
	uint8* vr$6 = HESCAPE( (uint8*)FILENAME$1 );
	__builtin_memset( &TMP$442$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$442$1, (void*)".file \x22", 8, (void*)vr$6, 0 );
	__builtin_memset( &TMP$443$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$443$1, (void*)vr$9, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&TMP$444$1, -1, (void*)vr$12, -1, 0 );
	HWRITEASM64( &TMP$444$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$444$1 );
	uint8* vr$16 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$16, 0, 0 );
	__builtin_memset( &TMP$447$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$447$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$446$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$446$1, -1, (void*)"DUMMY", 6, 0 );
	DBG_ADDSTAB( &TMP$446$1, (uint8)0u, (int16)0, &TMP$447$1 );
	fb_StrDelete( (FBSTRING*)&TMP$447$1 );
	fb_StrDelete( (FBSTRING*)&TMP$446$1 );
	__builtin_memset( &TMP$449$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$449$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$448$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$448$1, -1, (void*)"FreeBASIC 1.10.0", 17, 0 );
	DBG_ADDSTAB( &TMP$448$1, (uint8)255u, (int16)0, &TMP$449$1 );
	fb_StrDelete( (FBSTRING*)&TMP$449$1 );
	fb_StrDelete( (FBSTRING*)&TMP$448$1 );
	int32 vr$34 = PATHISABSOLUTE( FILENAME$1 );
	if( vr$34 != 0 ) goto label$283;
	{
		FBSTRING TMP$450$2;
		FBSTRING TMP$451$2;
		__builtin_memset( &TMP$451$2, 0, 12 );
		FBSTRING* vr$37 = HCURDIR(  );
		__builtin_memset( &TMP$450$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$450$2, (void*)vr$37, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)&TMP$451$2, -1, (void*)vr$40, -1, 0 );
		DBG_ADDSTAB( &TMP$451$2, (uint8)100u, (int16)0, &LNAME$1 );
		fb_StrDelete( (FBSTRING*)&TMP$451$2 );
	}
	label$283:;
	label$282:;
	__builtin_memset( &TMP$452$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$452$1, -1, (void*)FILENAME$1, 0, 0 );
	DBG_ADDSTAB( &TMP$452$1, (uint8)100u, (int16)0, &LNAME$1 );
	fb_StrDelete( (FBSTRING*)&TMP$452$1 );
	__builtin_memset( &TMP$454$1, 0, 12 );
	__builtin_memset( &TMP$453$1, 0, 12 );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$453$1, (void*)&LNAME$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$454$1, -1, (void*)vr$53, -1, 0 );
	HWRITEASM64( &TMP$454$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$454$1 );
	{
		int32 I$2;
		I$2 = 0;
		label$287:;
		{
			FBSTRING TMP$455$3;
			FBSTRING STRG$3;
			fb_StrInit( (void*)&STRG$3, -1, *(void**)((int32)(uint8**)STABSTB$ + (I$2 << (2 & 31))), 0, 0 );
			__builtin_memset( &TMP$455$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$455$3, -1, (void*)"0", 2, 0 );
			DBG_ADDSTAB( &STRG$3, (uint8)128u, (int16)0, &TMP$455$3 );
			fb_StrDelete( (FBSTRING*)&TMP$455$3 );
			*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
			fb_StrDelete( (FBSTRING*)&STRG$3 );
		}
		label$285:;
		I$2 = I$2 + 1;
		label$284:;
		if( I$2 <= 16 ) goto label$287;
		label$286:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$279:;
}

static void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int32 SECTION$1 )
{
	FBSTRING TMP$458$1;
	label$288:;
	int32 T$1;
	int32 ATTRIB$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 128) == 0 ) goto label$291;
	{
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$289;
	}
	label$291:;
	label$290:;
	{
		if( SECTION$1 != 0 ) goto label$293;
		label$294:;
		{
			T$1 = 36;
		}
		goto label$292;
		label$293:;
		if( SECTION$1 != 2 ) goto label$295;
		label$296:;
		{
			T$1 = 40;
		}
		goto label$292;
		label$295:;
		{
			T$1 = 38;
		}
		label$297:;
		label$292:;
	}
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, 0, 0 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0)) == 0 ) goto label$299;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":G", 3, 0 );
	}
	goto label$298;
	label$299:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$300;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":S", 3, 0 );
	}
	goto label$298;
	label$300:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
	}
	label$298:;
	FBSTRING* vr$18 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
	__builtin_memset( &TMP$458$1, 0, 12 );
	uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&TMP$458$1, -1, (void*)vr$21, 0, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &TMP$458$1 );
	fb_StrDelete( (FBSTRING*)&TMP$458$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$289:;
}

static void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int32 ISSTATIC$1 )
{
	label$301:;
	int32 T$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 12 );
	fb_StrAssign( (void*)&DESC$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
	if( ISSTATIC$1 == 0 ) goto label$304;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$306;
		{
			fb_StrDelete( (FBSTRING*)&VALUE$1 );
			fb_StrDelete( (FBSTRING*)&DESC$1 );
			goto label$302;
		}
		label$306:;
		label$305:;
		if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 56) == (struct $7ASTNODE*)0u ) goto label$308;
		{
			T$1 = 38;
		}
		goto label$307;
		label$308:;
		{
			T$1 = 40;
		}
		label$307:;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":V", 3, 0 );
		uint8* vr$10 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$10, 0, 0 );
	}
	goto label$303;
	label$304:;
	{
		T$1 = 128;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
		FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$14, -1, 0 );
	}
	label$303:;
	FBSTRING* vr$16 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$16, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &VALUE$1 );
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$302:;
}

static void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING TMP$464$1;
	FBSTRING TMP$465$1;
	label$309:;
	static FBSTRING DESC$1;
	static FBSTRING PROCNAME$1;
	static FBSTRING FILENAME$1;
	fb_StrAssign( (void*)&FILENAME$1, -1, (void*)((uint8*)&ENV$ + 304), 261, 0 );
	DBG_FILENAME( &FILENAME$1 );
	if( (*(int32*)((uint8*)PROC$1 + 12) & 4096) == 0 ) goto label$312;
	{
		FBSTRING TMP$460$2;
		FBSTRING TMP$461$2;
		__builtin_memset( &TMP$461$2, 0, 12 );
		uint8* vr$4 = SYMBGETMANGLEDNAME( PROC$1 );
		fb_StrAssign( (void*)&TMP$461$2, -1, (void*)vr$4, 0, 0 );
		__builtin_memset( &TMP$460$2, 0, 12 );
		FBSTRING* vr$8 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&TMP$460$2, -1, (void*)vr$8, -1, 0 );
		DBG_ADDSTAB( &TMP$460$2, (uint8)42u, (int16)1, &TMP$461$2 );
		fb_StrDelete( (FBSTRING*)&TMP$461$2 );
		fb_StrDelete( (FBSTRING*)&TMP$460$2 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = 1;
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
		FBSTRING* vr$18 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
	}
	goto label$311;
	label$312:;
	{
		uint8* vr$19 = SYMBGETDBGNAME( PROC$1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$19, 0, 0 );
	}
	label$311:;
	uint8* vr$20 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&PROCNAME$1, -1, (void*)vr$20, 0, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) = PROC$1;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 32) == 0 ) goto label$314;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":F", 3, 0 );
	}
	goto label$313;
	label$314:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":f", 3, 0 );
	}
	label$313:;
	FBSTRING* vr$23 = HGETDATATYPE_ASM64( PROC$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$23, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)36u, (int16)*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16), &PROCNAME$1 );
	__builtin_memset( &TMP$465$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$465$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$464$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$464$1, -1, (void*)"", 1, 0 );
	DBG_ADDSTAB( &TMP$464$1, (uint8)68u, (int16)1, &TMP$465$1 );
	fb_StrDelete( (FBSTRING*)&TMP$465$1 );
	fb_StrDelete( (FBSTRING*)&TMP$464$1 );
	label$310:;
}

static void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$466$1;
	FBSTRING TMP$469$1;
	label$315:;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	__builtin_memset( &TMP$466$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$466$1, *(void**)((uint8*)SYM$1 + 16), 0, (void*)":", 2 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, -1, 0 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$318;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"p", 2, 0 );
	}
	goto label$317;
	label$318:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"v", 2, 0 );
	}
	label$317:;
	FBSTRING* vr$10 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$10, -1, 0 );
	__builtin_memset( &TMP$469$1, 0, 12 );
	FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
	fb_StrAssign( (void*)&TMP$469$1, -1, (void*)vr$14, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)160u, (int16)0, &TMP$469$1 );
	fb_StrDelete( (FBSTRING*)&TMP$469$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$316:;
}

static FBSTRING* HDECLPOINTER_ASM64( int32* DTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$319:;
	static FBSTRING DESC$1;
	fb_StrAssign( (void*)&DESC$1, -1, (void*)"", 1, 0 );
	label$321:;
	if( (*DTYPE$1 & 480) == 0 ) goto label$322;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + -32)) | (((*DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (*DTYPE$1 & 32505856);
		FBSTRING* vr$18 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=*", 3, 0 );
		*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	}
	goto label$321;
	label$322:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	label$320:;
	FBSTRING* vr$22 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$22;
}

static void HDECLUDT_ASM64( struct $8FBSYMBOL* SYM$1, int32 DIMTBELEMENTS$1 )
{
	FBSTRING TMP$473$1;
	FBSTRING TMP$474$1;
	FBSTRING TMP$475$1;
	FBSTRING TMP$476$1;
	FBSTRING TMP$487$1;
	label$323:;
	struct $8FBSYMBOL* FLD$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 136) = *(int32*)&CTXDBG$;
	*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	uint8* vr$3 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$3, 0, 0 );
	FBSTRING* vr$6 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 40) );
	FBSTRING* vr$8 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
	__builtin_memset( &TMP$473$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$473$1, (void*)":Tt", 4, (void*)vr$8, -1 );
	__builtin_memset( &TMP$474$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$474$1, (void*)vr$11, -1, (void*)"=s", 3 );
	__builtin_memset( &TMP$475$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$475$1, (void*)vr$14, -1, (void*)vr$6, -1 );
	__builtin_memset( &TMP$476$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$476$1, (void*)&DESC$1, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$21, -1, 0 );
	struct $8FBSYMBOL* vr$23 = SYMBUDTGETFIRSTFIELD( SYM$1 );
	FLD$1 = vr$23;
	label$325:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$326;
	{
		if( (*(int32*)((uint8*)FLD$1 + 4) & 4) != 0 ) goto label$328;
		{
			FBSTRING TMP$477$3;
			FBSTRING TMP$478$3;
			FBSTRING TMP$479$3;
			int32 TMP$480$3;
			FBSTRING TMP$481$3;
			FBSTRING TMP$482$3;
			int64 TMP$483$3;
			FBSTRING TMP$484$3;
			FBSTRING TMP$485$3;
			FBSTRING* vr$26 = HGETDATATYPE_ASM64( FLD$1, DIMTBELEMENTS$1 );
			__builtin_memset( &TMP$477$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$477$3, *(void**)((uint8*)FLD$1 + 16), 0, (void*)":", 2 );
			__builtin_memset( &TMP$478$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$478$3, (void*)vr$30, -1, (void*)vr$26, -1 );
			__builtin_memset( &TMP$479$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$479$3, (void*)&DESC$1, -1, (void*)vr$33, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$37, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$329;
			TMP$480$3 = *(int32*)((uint8*)FLD$1 + 112);
			goto label$3075;
			label$329:;
			TMP$480$3 = 0;
			label$3075:;
			FBSTRING* vr$45 = fb_LongintToStr( (*(int64*)((uint8*)FLD$1 + 48) << (3ll & 63)) + (int64)TMP$480$3 );
			__builtin_memset( &TMP$481$3, 0, 12 );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$481$3, (void*)",", 2, (void*)vr$45, -1 );
			__builtin_memset( &TMP$482$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$482$3, (void*)&DESC$1, -1, (void*)vr$48, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$330;
			TMP$483$3 = (int64)*(int32*)((uint8*)FLD$1 + 116);
			goto label$3076;
			label$330:;
			int64 vr$57 = SYMBGETREALSIZE( FLD$1 );
			TMP$483$3 = vr$57 << (3ll & 63);
			label$3076:;
			FBSTRING* vr$59 = fb_LongintToStr( TMP$483$3 );
			__builtin_memset( &TMP$484$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$484$3, (void*)",", 2, (void*)vr$59, -1 );
			__builtin_memset( &TMP$485$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$485$3, (void*)&DESC$1, -1, (void*)vr$62, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$66, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
		}
		label$328:;
		label$327:;
		struct $8FBSYMBOL* vr$69 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$69;
	}
	goto label$325;
	label$326:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	__builtin_memset( &TMP$487$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$487$1, -1, (void*)"0", 2, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$487$1 );
	fb_StrDelete( (FBSTRING*)&TMP$487$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$324:;
}

static void HDECLENUM_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$490$1;
	FBSTRING TMP$491$1;
	FBSTRING TMP$492$1;
	FBSTRING TMP$497$1;
	label$331:;
	struct $8FBSYMBOL* E$1;
	__builtin_memset( &E$1, 0, 4 );
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 100) = *(int32*)&CTXDBG$;
	*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, 0, 0 );
	FBSTRING* vr$7 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 100) );
	__builtin_memset( &TMP$490$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$490$1, (void*)":T", 3, (void*)vr$7, -1 );
	__builtin_memset( &TMP$491$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$491$1, (void*)vr$10, -1, (void*)"=e", 3 );
	__builtin_memset( &TMP$492$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$492$1, (void*)&DESC$1, -1, (void*)vr$13, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$17, -1, 0 );
	struct $8FBSYMBOL* vr$19 = SYMBGETENUMFIRSTELM( SYM$1 );
	E$1 = vr$19;
	label$333:;
	if( E$1 == (struct $8FBSYMBOL*)0u ) goto label$334;
	{
		FBSTRING TMP$493$2;
		FBSTRING TMP$494$2;
		FBSTRING TMP$495$2;
		FBSTRING TMP$496$2;
		FBSTRING* vr$21 = fb_LongintToStr( *(int64*)((uint8*)E$1 + 56) );
		__builtin_memset( &TMP$493$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$493$2, *(void**)((uint8*)E$1 + 16), 0, (void*)":", 2 );
		__builtin_memset( &TMP$494$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$494$2, (void*)vr$25, -1, (void*)vr$21, -1 );
		__builtin_memset( &TMP$495$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$495$2, (void*)vr$28, -1, (void*)",", 2 );
		__builtin_memset( &TMP$496$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$496$2, (void*)&DESC$1, -1, (void*)vr$31, -1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$35, -1, 0 );
		struct $8FBSYMBOL* vr$37 = SYMBGETENUMNEXTELM( E$1 );
		E$1 = vr$37;
	}
	goto label$333;
	label$334:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	__builtin_memset( &TMP$497$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$497$1, -1, (void*)"0", 2, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$497$1 );
	fb_StrDelete( (FBSTRING*)&TMP$497$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$332:;
}

static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL* SYM$1, int32 REQUESTEDDIMTBELEMENTS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$335:;
	int32 DTYPE$1;
	int32 DIMTBELEMENTS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$338;
	{
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)REMAPTB$ );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$336;
	}
	label$338:;
	label$337:;
	DIMTBELEMENTS$1 = 0;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$340;
	{
		DTYPE$1 = 20;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92);
		DIMTBELEMENTS$1 = *(int32*)((uint8*)SYM$1 + 64);
	}
	goto label$339;
	label$340:;
	{
		DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
		if( (-(*(int32*)SYM$1 == 1) | -(*(int32*)SYM$1 == 12)) == 0 ) goto label$342;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$344;
			{
				DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
			}
			label$344:;
			label$343:;
			if( *(int32*)((uint8*)SYM$1 + 64) <= 0 ) goto label$346;
			{
				FBSTRING* vr$29 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$29, -1, 0 );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=", 2, 0 );
				*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
				if( REQUESTEDDIMTBELEMENTS$1 <= 0 ) goto label$348;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"0;", 3, 0 );
					FBSTRING* vr$36 = fb_IntToStr( REQUESTEDDIMTBELEMENTS$1 + -1 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$36, -1, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
				}
				goto label$347;
				label$348:;
				{
					{
						int32 I$6;
						I$6 = 0;
						int32 TMP$501$6;
						TMP$501$6 = *(int32*)((uint8*)SYM$1 + 64) + -1;
						goto label$349;
						label$352:;
						{
							FBSTRING TMP$502$7;
							FBSTRING TMP$503$7;
							FBSTRING TMP$504$7;
							FBSTRING TMP$505$7;
							fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
							FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) );
							__builtin_memset( &TMP$502$7, 0, 12 );
							FBSTRING* vr$48 = fb_StrConcat( &TMP$502$7, (void*)vr$45, -1, (void*)";", 2 );
							__builtin_memset( &TMP$503$7, 0, 12 );
							FBSTRING* vr$52 = fb_StrConcat( &TMP$503$7, (void*)&DESC$1, -1, (void*)vr$48, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
							FBSTRING* vr$57 = fb_LongintToStr( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) + 8) );
							__builtin_memset( &TMP$504$7, 0, 12 );
							FBSTRING* vr$60 = fb_StrConcat( &TMP$504$7, (void*)vr$57, -1, (void*)";", 2 );
							__builtin_memset( &TMP$505$7, 0, 12 );
							FBSTRING* vr$64 = fb_StrConcat( &TMP$505$7, (void*)&DESC$1, -1, (void*)vr$60, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$64, -1, 0 );
						}
						label$350:;
						I$6 = I$6 + 1;
						label$349:;
						if( I$6 <= TMP$501$6 ) goto label$352;
						label$351:;
					}
				}
				label$347:;
			}
			label$346:;
			label$345:;
			if( (*(int32*)((uint8*)SYM$1 + 4) & 8192) == 0 ) goto label$354;
			{
				DIMTBELEMENTS$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96) + 64);
			}
			label$354:;
			label$353:;
		}
		label$342:;
		label$341:;
	}
	label$339:;
	if( DIMTBELEMENTS$1 >= 0 ) goto label$356;
	{
		DIMTBELEMENTS$1 = 1;
	}
	label$356:;
	label$355:;
	if( (DTYPE$1 & 480) == 0 ) goto label$358;
	{
		FBSTRING* vr$73 = HDECLPOINTER_ASM64( &DTYPE$1 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$73, -1, 0 );
	}
	label$358:;
	label$357:;
	DTYPE$1 = DTYPE$1 & -513;
	{
		uint32 TMP$506$2;
		TMP$506$2 = (uint32)DTYPE$1;
		goto label$360;
		label$361:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$363;
			{
				FBSTRING TMP$507$4;
				if( *(int32*)((uint8*)SUBTYPE$1 + 136) != -1 ) goto label$365;
				{
					HDECLUDT_ASM64( SUBTYPE$1, DIMTBELEMENTS$1 );
					label$365:;
				}
				FBSTRING* vr$78 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 136) );
				__builtin_memset( &TMP$507$4, 0, 12 );
				FBSTRING* vr$82 = fb_StrConcat( &TMP$507$4, (void*)&DESC$1, -1, (void*)vr$78, -1 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$82, -1, 0 );
			}
			goto label$362;
			label$363:;
			{
				FBSTRING TMP$508$4;
				if( *(int32*)((uint8*)SYM$1 + 136) != -1 ) goto label$367;
				{
					HDECLUDT_ASM64( SYM$1, DIMTBELEMENTS$1 );
					label$367:;
				}
				FBSTRING* vr$86 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
				__builtin_memset( &TMP$508$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$508$4, (void*)&DESC$1, -1, (void*)vr$86, -1 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$90, -1, 0 );
			}
			label$362:;
		}
		goto label$359;
		label$368:;
		{
			FBSTRING TMP$509$3;
			if( *(int32*)((uint8*)SUBTYPE$1 + 100) != -1 ) goto label$370;
			{
				HDECLENUM_ASM64( SUBTYPE$1 );
			}
			label$370:;
			label$369:;
			FBSTRING* vr$94 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 100) );
			__builtin_memset( &TMP$509$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$509$3, (void*)&DESC$1, -1, (void*)vr$94, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$98, -1, 0 );
		}
		goto label$359;
		label$371:;
		{
			FBSTRING* vr$100 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$100, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=f", 3, 0 );
			*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
			FBSTRING* vr$104 = HGETDATATYPE_ASM64( SUBTYPE$1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$104, -1, 0 );
		}
		goto label$359;
		label$372:;
		{
			FBSTRING* vr$106 = fb_IntToStr( *(int32*)REMAPTB$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$106, -1, 0 );
		}
		goto label$359;
		label$373:;
		{
			FBSTRING* vr$109 = fb_IntToStr( *(int32*)((int32)(int32*)REMAPTB$ + (DTYPE$1 << (2 & 31))) );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$109, -1, 0 );
		}
		goto label$359;
		label$360:;
		static const void* tmp$4040[14] = {
			&&label$368,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$373,
			&&label$361,
			&&label$373,
			&&label$371,
			&&label$372,
		};
		if( (TMP$506$2 - 10u) > 13u ) goto label$373;
		goto *tmp$4040[TMP$506$2 - 10u];
		label$359:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$336:;
	FBSTRING* vr$115 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$115;
}

static void _EMITDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 LNUM$1, uint8* FILENAME$1 )
{
	label$374:;
	if( OP$1 != 113 ) goto label$377;
	{
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 20), -1, (void*)FILENAME$1, 0, 0 );
		*(int32*)((uint8*)&CTXDBG$ + 4) = LNUM$1;
	}
	goto label$376;
	label$377:;
	{
		if( OP$1 != 114 ) goto label$379;
		{
		}
		goto label$378;
		label$379:;
		if( OP$1 != 115 ) goto label$380;
		{
		}
		goto label$378;
		label$380:;
		if( OP$1 != 116 ) goto label$381;
		{
		}
		goto label$378;
		label$381:;
		{
			FBSTRING TMP$511$3;
			FBSTRING TMP$516$3;
			FBSTRING TMP$517$3;
			FBSTRING TMP$518$3;
			FBSTRING TMP$519$3;
			FBSTRING TMP$520$3;
			__builtin_memset( &TMP$511$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$511$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$511$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$511$3 );
			__builtin_memset( &TMP$519$3, 0, 12 );
			FBSTRING* vr$6 = fb_IntToStr( OP$1 );
			__builtin_memset( &TMP$516$3, 0, 12 );
			FBSTRING* vr$9 = fb_StrConcat( &TMP$516$3, (void*)"FOUND AN ERROR : Other emitdbg not handled=", 44, (void*)vr$6, -1 );
			__builtin_memset( &TMP$517$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$517$3, (void*)vr$9, -1, (void*)"for ref AST_OP_DBG_LINEEND=", 28 );
			__builtin_memset( &TMP$518$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$518$3, (void*)vr$12, -1, (void*)"114", 4 );
			fb_StrAssign( (void*)&TMP$519$3, -1, (void*)vr$15, -1, 0 );
			HWRITEASM64( &TMP$519$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$519$3 );
			__builtin_memset( &TMP$520$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$520$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$520$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$520$3 );
		}
		label$378:;
	}
	label$376:;
	label$375:;
}

static void REG_MARK( struct $8FBSYMBOL* LABELPTR$1 )
{
	label$382:;
	boolean FLAGMARK$1;
	FLAGMARK$1 = (boolean)0;
	{
		int32 IREG$2;
		IREG$2 = 1;
		label$387:;
		{
			if( (-(*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -2) & -(*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -3)) == 0 ) goto label$389;
			{
				*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$2 << (3 & 31))) = -2;
				FLAGMARK$1 = (boolean)1;
			}
			label$389:;
			label$388:;
		}
		label$385:;
		IREG$2 = IREG$2 + 1;
		label$384:;
		if( IREG$2 <= 15 ) goto label$387;
		label$386:;
	}
	if( FLAGMARK$1 == (boolean)0 ) goto label$391;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = LABELPTR$1;
		label$391:;
	}
	label$383:;
}

static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 REGSPILLED$1 )
{
	struct $14ASM64_SAVEDREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$392:;
	struct $14ASM64_SAVEDREG* V$1;
	if( *(int32*)((uint8*)&CTX$ + 212) <= 0 ) goto label$395;
	{
		void* vr$2 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$2;
		label$396:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0u ) goto label$397;
		{
			if( *(int32*)((uint8*)V$1 + 4) != -2 ) goto label$399;
			{
				*(int32*)((uint8*)V$1 + 4) = *(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31)));
				fb$result$1 = V$1;
				goto label$393;
			}
			label$399:;
			label$398:;
			void* vr$6 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$6;
		}
		goto label$396;
		label$397:;
	}
	label$395:;
	label$394:;
	*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + 8ll;
	if( *(int64*)((uint8*)&CTX$ + 112) == 0ll ) goto label$401;
	{
		if( *(int64*)((uint8*)&CTX$ + 96) != *(int64*)((uint8*)&CTX$ + 112) ) goto label$403;
		{
			FBSTRING TMP$521$3;
			FBSTRING TMP$524$3;
			FBSTRING TMP$525$3;
			__builtin_memset( &TMP$521$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$521$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$521$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$521$3 );
			__builtin_memset( &TMP$524$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$524$3, -1, (void*)"FOUND AN ERROR : Spilling overflow when proc calling", 53, 0 );
			HWRITEASM64( &TMP$524$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$524$3 );
			__builtin_memset( &TMP$525$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$525$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$525$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$525$3 );
		}
		label$403:;
		label$402:;
	}
	label$401:;
	label$400:;
	void* vr$21 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
	V$1 = (struct $14ASM64_SAVEDREG*)vr$21;
	*(int32*)((uint8*)&CTX$ + 212) = *(int32*)((uint8*)&CTX$ + 212) + 1;
	*(int32*)V$1 = *(int32*)((uint8*)&CTX$ + 212);
	*(int32*)((uint8*)V$1 + 8) = (int32)-(*(int64*)((uint8*)&CTX$ + 96));
	*(int32*)((uint8*)V$1 + 4) = *(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31)));
	fb$result$1 = V$1;
	goto label$393;
	label$393:;
	return fb$result$1;
}

static void REG_SPILLING( int32 REGSPILLED$1 )
{
	FBSTRING TMP$528$1;
	FBSTRING TMP$529$1;
	FBSTRING TMP$530$1;
	FBSTRING TMP$531$1;
	int32 TMP$532$1;
	label$404:;
	struct $14ASM64_SAVEDREG* V$1;
	struct $14ASM64_SAVEDREG* vr$0 = ASM64_SPILLREG( REGSPILLED$1 );
	V$1 = vr$0;
	__builtin_memset( &TMP$531$1, 0, 12 );
	FBSTRING* vr$4 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8) );
	__builtin_memset( &TMP$528$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$528$1, (void*)"mov QWORD PTR ", 15, (void*)vr$4, -1 );
	__builtin_memset( &TMP$529$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$529$1, (void*)vr$7, -1, (void*)"[rbp], ", 8 );
	__builtin_memset( &TMP$530$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$530$1, (void*)vr$10, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSPILLED$1 << (2 & 31))), 0 );
	fb_StrAssign( (void*)&TMP$531$1, -1, (void*)vr$13, -1, 0 );
	HWRITEASM64( &TMP$531$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$531$1 );
	*(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31))) = -2;
	if( *(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) != -2 ) goto label$407;
	{
		*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) + 4) = V$1;
		*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) = -3;
	}
	label$407:;
	label$406:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) == (struct $8FBSYMBOL*)0u ) goto label$408;
	TMP$532$1 = -1;
	goto label$3077;
	label$408:;
	TMP$532$1 = 0;
	label$3077:;
	*(int32*)((uint8*)V$1 + 12) = TMP$532$1;
	label$405:;
}

static void REG_SAVE( void )
{
	label$409:;
	{
		int32 IREG$2;
		IREG$2 = 1;
		int32 TMP$533$2;
		int32 vr$0 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
		TMP$533$2 = vr$0;
		goto label$411;
		label$414:;
		{
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) == -2 ) goto label$416;
			{
				REG_SPILLING( *(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) );
			}
			label$416:;
			label$415:;
		}
		label$412:;
		IREG$2 = IREG$2 + 1;
		label$411:;
		if( IREG$2 <= TMP$533$2 ) goto label$414;
		label$413:;
	}
	label$410:;
}

static void REG_ALLOWED( boolean ALLOWED$1 )
{
	label$417:;
	if( -ALLOWED$1 != 0 ) goto label$420;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$534$3;
			int32 vr$1 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$534$3 = vr$1 + -2;
			goto label$421;
			label$424:;
			{
				if( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) != -2 ) goto label$426;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
				}
				label$426:;
				label$425:;
			}
			label$422:;
			IREG$3 = IREG$3 + 1;
			label$421:;
			if( IREG$3 <= TMP$534$3 ) goto label$424;
			label$423:;
		}
	}
	goto label$419;
	label$420:;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$535$3;
			int32 vr$10 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$535$3 = vr$10 + -2;
			goto label$427;
			label$430:;
			{
				if( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) != -4 ) goto label$432;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -2;
				}
				label$432:;
				label$431:;
			}
			label$428:;
			IREG$3 = IREG$3 + 1;
			label$427:;
			if( IREG$3 <= TMP$535$3 ) goto label$430;
			label$429:;
		}
	}
	label$419:;
	label$418:;
}

static int32 REG_FINDFREE( int32 VREG$1, int32 REGPARAM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$433:;
	int32 REGFREE$1;
	REGFREE$1 = -1;
	int32 NUMROOM$1;
	__builtin_memset( &NUMROOM$1, 0, 4 );
	static int32 REGSPILL$1 = -1;
	if( *(boolean*)((uint8*)&CTX$ + 153) == (boolean)0 ) goto label$436;
	{
		REG_ALLOWED( (boolean)0 );
		label$436:;
	}
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$440:;
		{
			if( *(int32*)((int32)(int32*)REGHANDLE$ + ((int32)*(int8*)((int32)(int8*)REG_PRIO$ + IREG$2) << (2 & 31))) != -2 ) goto label$442;
			{
				REGFREE$1 = (int32)*(int8*)((int32)(int8*)REG_PRIO$ + IREG$2);
				goto label$439;
				label$442:;
			}
		}
		label$438:;
		IREG$2 = IREG$2 + 1;
		label$437:;
		if( IREG$2 <= 12 ) goto label$440;
		label$439:;
	}
	if( REGFREE$1 != -1 ) goto label$444;
	{
		if( REGPARAM$1 != -1 ) goto label$446;
		{
			REGSPILL$1 = REGSPILL$1 + 1;
			if( REGSPILL$1 != 6 ) goto label$448;
			{
				REGSPILL$1 = 0;
				label$448:;
			}
			label$449:;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILL$1 << (2 & 31))) != -4 ) goto label$450;
			{
				REGSPILL$1 = REGSPILL$1 + 1;
				if( REGSPILL$1 != 6 ) goto label$452;
				{
					REGSPILL$1 = 0;
					label$452:;
				}
			}
			goto label$449;
			label$450:;
			REGFREE$1 = (int32)*(int8*)((int32)(int8*)REG_PRIO$ + REGSPILL$1);
		}
		goto label$445;
		label$446:;
		{
			REGFREE$1 = REGPARAM$1;
		}
		label$445:;
		REG_SPILLING( REGFREE$1 );
	}
	label$444:;
	label$443:;
	if( REGPARAM$1 == REGFREE$1 ) goto label$454;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (REGFREE$1 << (2 & 31))) = VREG$1;
		*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | (1 << (REGFREE$1 & 31));
	}
	label$454:;
	label$453:;
	if( *(boolean*)((uint8*)&CTX$ + 153) == (boolean)0 ) goto label$456;
	{
		REG_ALLOWED( (boolean)1 );
		label$456:;
	}
	fb$result$1 = REGFREE$1;
	goto label$434;
	label$434:;
	return fb$result$1;
}

static void REG_CALLPTR( FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	label$457:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	int32 P$1;
	__builtin_memset( &P$1, 0, 4 );
	{
		int32 IREG$2;
		IREG$2 = 1;
		int32 TMP$536$2;
		int32 vr$2 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
		TMP$536$2 = vr$2 + -2;
		goto label$459;
		label$462:;
		{
			FBSTRING TMP$538$3;
			FBSTRING TMP$539$3;
			FBSTRING TMP$540$3;
			FBSTRING TMP$541$3;
			FBSTRING* vr$7 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) );
			int32 vr$8 = fb_StrInstr( 1, (FBSTRING*)OP1$1, (FBSTRING*)vr$7 );
			P$1 = vr$8;
			if( P$1 != 0 ) goto label$464;
			{
				goto label$460;
				label$464:;
			}
			int32 vr$12 = REG_FINDFREE( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), -1 );
			REGFREE$1 = vr$12;
			__builtin_memset( &TMP$541$3, 0, 12 );
			__builtin_memset( &TMP$538$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$538$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$539$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$539$3, (void*)vr$20, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$540$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$540$3, (void*)vr$23, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$541$3, -1, (void*)vr$26, -1, 0 );
			HWRITEASM64( &TMP$541$3, 3 );
			fb_StrDelete( (FBSTRING*)&TMP$541$3 );
			*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
			int32 vr$34 = fb_StrLen( *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
			int32 vr$38 = fb_StrLen( *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
			if( vr$34 != vr$38 ) goto label$466;
			{
				FBSTRING* vr$40 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))) );
				fb_StrAssignMid( OP1$1, P$1, -1, (FBSTRING*)vr$40 );
			}
			goto label$465;
			label$466:;
			{
				FBSTRING TMP$542$4;
				FBSTRING TMP$543$4;
				FBSTRING* vr$42 = fb_StrMid( (FBSTRING*)OP1$1, P$1 + 2, -1 );
				FBSTRING* vr$45 = fb_LEFT( (FBSTRING*)OP1$1, P$1 + -1 );
				__builtin_memset( &TMP$542$4, 0, 12 );
				FBSTRING* vr$48 = fb_StrConcat( &TMP$542$4, (void*)vr$45, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$543$4, 0, 12 );
				FBSTRING* vr$51 = fb_StrConcat( &TMP$543$4, (void*)vr$48, -1, (void*)vr$42, -1 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$51, -1, 0 );
			}
			label$465:;
		}
		label$460:;
		IREG$2 = IREG$2 + 1;
		label$459:;
		if( IREG$2 <= TMP$536$2 ) goto label$462;
		label$461:;
	}
	int32 vr$53 = fb_StrCompare( (void*)OP3$1, -1, (void*)"", 1 );
	if( vr$53 == 0 ) goto label$468;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$544$3;
			int32 vr$54 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$544$3 = vr$54 + -2;
			goto label$469;
			label$472:;
			{
				FBSTRING TMP$545$4;
				FBSTRING TMP$546$4;
				FBSTRING TMP$547$4;
				FBSTRING TMP$548$4;
				FBSTRING* vr$59 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) );
				int32 vr$60 = fb_StrInstr( 1, (FBSTRING*)OP3$1, (FBSTRING*)vr$59 );
				P$1 = vr$60;
				if( P$1 != 0 ) goto label$474;
				{
					goto label$470;
					label$474:;
				}
				int32 vr$64 = REG_FINDFREE( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), -1 );
				REGFREE$1 = vr$64;
				__builtin_memset( &TMP$548$4, 0, 12 );
				__builtin_memset( &TMP$545$4, 0, 12 );
				FBSTRING* vr$72 = fb_StrConcat( &TMP$545$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$546$4, 0, 12 );
				FBSTRING* vr$75 = fb_StrConcat( &TMP$546$4, (void*)vr$72, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$547$4, 0, 12 );
				FBSTRING* vr$78 = fb_StrConcat( &TMP$547$4, (void*)vr$75, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$548$4, -1, (void*)vr$78, -1, 0 );
				HWRITEASM64( &TMP$548$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$548$4 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
				int32 vr$86 = fb_StrLen( *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				int32 vr$90 = fb_StrLen( *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				if( vr$86 != vr$90 ) goto label$476;
				{
					FBSTRING* vr$92 = fb_StrAllocTempDescZ( *(uint8**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))) );
					fb_StrAssignMid( OP3$1, P$1, -1, (FBSTRING*)vr$92 );
				}
				goto label$475;
				label$476:;
				{
					FBSTRING TMP$549$5;
					FBSTRING TMP$550$5;
					FBSTRING* vr$94 = fb_StrMid( (FBSTRING*)OP3$1, P$1 + 2, -1 );
					FBSTRING* vr$97 = fb_LEFT( (FBSTRING*)OP3$1, P$1 + -1 );
					__builtin_memset( &TMP$549$5, 0, 12 );
					FBSTRING* vr$100 = fb_StrConcat( &TMP$549$5, (void*)vr$97, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$550$5, 0, 12 );
					FBSTRING* vr$103 = fb_StrConcat( &TMP$550$5, (void*)vr$100, -1, (void*)vr$94, -1 );
					fb_StrAssign( (void*)OP3$1, -1, (void*)vr$103, -1, 0 );
				}
				label$475:;
			}
			label$470:;
			IREG$3 = IREG$3 + 1;
			label$469:;
			if( IREG$3 <= TMP$544$3 ) goto label$472;
			label$471:;
		}
	}
	label$468:;
	label$467:;
	label$458:;
}

static void REG_BRANCH( struct $8FBSYMBOL* LABEL$1 )
{
	label$477:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) ) goto label$480;
	{
		FBSTRING TMP$551$2;
		FBSTRING TMP$552$2;
		__builtin_memset( &TMP$552$2, 0, 12 );
		uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$551$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$551$2, (void*)vr$2, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$552$2, -1, (void*)vr$5, -1, 0 );
		HWRITEASM64( &TMP$552$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$552$2 );
		{
			int32 IREG$3;
			IREG$3 = 1;
			label$484:;
			{
				if( *(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) != -3 ) goto label$486;
				{
					FBSTRING TMP$553$5;
					FBSTRING TMP$554$5;
					FBSTRING TMP$555$5;
					FBSTRING TMP$556$5;
					__builtin_memset( &TMP$556$5, 0, 12 );
					FBSTRING* vr$14 = fb_IntToStr( *(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) + 8) );
					__builtin_memset( &TMP$553$5, 0, 12 );
					FBSTRING* vr$17 = fb_StrConcat( &TMP$553$5, (void*)"mov QWORD PTR ", 15, (void*)vr$14, -1 );
					__builtin_memset( &TMP$554$5, 0, 12 );
					FBSTRING* vr$20 = fb_StrConcat( &TMP$554$5, (void*)vr$17, -1, (void*)"[rbp], ", 8 );
					__builtin_memset( &TMP$555$5, 0, 12 );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$555$5, (void*)vr$20, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (IREG$3 << (2 & 31))), 0 );
					fb_StrAssign( (void*)&TMP$556$5, -1, (void*)vr$23, -1, 0 );
					HWRITEASM64( &TMP$556$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$556$5 );
					*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$3 << (2 & 31))) = -2;
					*(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) + 12) = 0;
				}
				label$486:;
				label$485:;
				*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) = -1;
				*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) = (struct $14ASM64_SAVEDREG*)0u;
			}
			label$482:;
			IREG$3 = IREG$3 + 1;
			label$481:;
			if( IREG$3 <= 15 ) goto label$484;
			label$483:;
		}
		if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) != (struct $8FBSYMBOL*)0u ) goto label$488;
		{
			*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = (struct $8FBSYMBOL*)0u;
		}
		label$488:;
		label$487:;
	}
	goto label$479;
	label$480:;
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) ) goto label$489;
	{
		FBSTRING TMP$564$2;
		FBSTRING TMP$565$2;
		if( *(int32*)((uint8*)&CTX$ + 212) <= 0 ) goto label$491;
		{
			struct $14ASM64_SAVEDREG* V$3;
			void* vr$34 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
			V$3 = (struct $14ASM64_SAVEDREG*)vr$34;
			label$492:;
			if( V$3 == (struct $14ASM64_SAVEDREG*)0u ) goto label$493;
			{
				if( *(int32*)((uint8*)V$3 + 12) == 0 ) goto label$495;
				{
					FBSTRING TMP$559$5;
					FBSTRING TMP$560$5;
					FBSTRING TMP$561$5;
					FBSTRING TMP$562$5;
					FBSTRING TMP$563$5;
					int32 vr$37 = REG_FINDFREE( *(int32*)((uint8*)V$3 + 4), -1 );
					REGFREE$1 = vr$37;
					*(int32*)((uint8*)V$3 + 4) = -2;
					__builtin_memset( &TMP$563$5, 0, 12 );
					FBSTRING* vr$41 = fb_IntToStr( *(int32*)((uint8*)V$3 + 8) );
					__builtin_memset( &TMP$559$5, 0, 12 );
					FBSTRING* vr$45 = fb_StrConcat( &TMP$559$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$560$5, 0, 12 );
					FBSTRING* vr$48 = fb_StrConcat( &TMP$560$5, (void*)vr$45, -1, (void*)", QWORD PTR ", 13 );
					__builtin_memset( &TMP$561$5, 0, 12 );
					FBSTRING* vr$51 = fb_StrConcat( &TMP$561$5, (void*)vr$48, -1, (void*)vr$41, -1 );
					__builtin_memset( &TMP$562$5, 0, 12 );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$562$5, (void*)vr$51, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$563$5, -1, (void*)vr$54, -1, 0 );
					HWRITEASM64( &TMP$563$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$563$5 );
				}
				label$495:;
				label$494:;
				void* vr$58 = FLISTGETNEXT( (void*)V$3 );
				V$3 = (struct $14ASM64_SAVEDREG*)vr$58;
			}
			goto label$492;
			label$493:;
		}
		label$491:;
		label$490:;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) = (struct $8FBSYMBOL*)0u;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = (struct $8FBSYMBOL*)0u;
		__builtin_memset( &TMP$565$2, 0, 12 );
		uint8* vr$60 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$564$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$564$2, (void*)vr$60, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$565$2, -1, (void*)vr$63, -1, 0 );
		HWRITEASM64( &TMP$565$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$565$2 );
	}
	label$489:;
	label$479:;
	label$478:;
}

static void REG_TRANSFER( int32 REGTRANS$1, int32 REGSOURCE$1 )
{
	label$514:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	if( (-(*(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) == -2) | -(*(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) == -4)) == 0 ) goto label$517;
	{
		goto label$515;
		label$517:;
	}
	if( REGTRANS$1 != REGSOURCE$1 ) goto label$519;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) = -2;
		goto label$515;
	}
	label$519:;
	label$518:;
	int32 vr$8 = REG_FINDFREE( *(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))), REGTRANS$1 );
	REGFREE$1 = vr$8;
	if( REGFREE$1 == REGTRANS$1 ) goto label$521;
	{
		FBSTRING TMP$579$2;
		FBSTRING TMP$580$2;
		FBSTRING TMP$581$2;
		FBSTRING TMP$582$2;
		__builtin_memset( &TMP$582$2, 0, 12 );
		__builtin_memset( &TMP$579$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$579$2, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$580$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$580$2, (void*)vr$14, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$581$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$581$2, (void*)vr$17, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGTRANS$1 << (2 & 31))), 0 );
		fb_StrAssign( (void*)&TMP$582$2, -1, (void*)vr$20, -1, 0 );
		HWRITEASM64( &TMP$582$2, 3 );
		fb_StrDelete( (FBSTRING*)&TMP$582$2 );
	}
	goto label$520;
	label$521:;
	{
	}
	label$520:;
	label$515:;
}

static void MEMCLEAR( int32 BYTESTOCLEAR$1, FBSTRING* DST$1, int32 DTYP$1 )
{
	label$522:;
	uint32 NBBYTES$1;
	NBBYTES$1 = (uint32)BYTESTOCLEAR$1;
	uint32 NOOPTIM$1;
	__builtin_memset( &NOOPTIM$1, 0, 4 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 12 );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4 );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$6 = fb_StrInstr( 1, (FBSTRING*)vr$5, (FBSTRING*)DST$1 );
	if( vr$6 == 0 ) goto label$525;
	{
		fb_StrAssign( (void*)&REGDST$1, -1, (void*)DST$1, -1, 0 );
	}
	goto label$524;
	label$525:;
	{
		int32 vr$8 = REG_FINDFREE( 999997, -1 );
		RDST$1 = vr$8;
		fb_StrAssign( (void*)&REGDST$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (RDST$1 << (2 & 31))), 0, 0 );
		if( DTYP$1 != 1 ) goto label$527;
		{
			FBSTRING TMP$584$3;
			FBSTRING TMP$585$3;
			FBSTRING TMP$586$3;
			FBSTRING TMP$587$3;
			__builtin_memset( &TMP$587$3, 0, 12 );
			__builtin_memset( &TMP$584$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$584$3, (void*)"lea ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$585$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$585$3, (void*)vr$15, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$586$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$586$3, (void*)vr$18, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$587$3, -1, (void*)vr$21, -1, 0 );
			HWRITEASM64( &TMP$587$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$587$3 );
		}
		goto label$526;
		label$527:;
		{
			FBSTRING TMP$588$3;
			FBSTRING TMP$589$3;
			FBSTRING TMP$590$3;
			FBSTRING TMP$591$3;
			__builtin_memset( &TMP$591$3, 0, 12 );
			__builtin_memset( &TMP$588$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$588$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$589$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$589$3, (void*)vr$29, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$590$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$590$3, (void*)vr$32, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$591$3, -1, (void*)vr$35, -1, 0 );
			HWRITEASM64( &TMP$591$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$591$3 );
		}
		label$526:;
		*(int32*)((int32)(int32*)REGHANDLE$ + (RDST$1 << (2 & 31))) = -2;
	}
	label$524:;
	if( (((-(NBBYTES$1 != 1u) & -(NBBYTES$1 != 2u)) & -(NBBYTES$1 != 4u)) & -(NBBYTES$1 != 8u)) == 0 ) goto label$529;
	{
		NOOPTIM$1 = 3u;
	}
	goto label$528;
	label$529:;
	{
		NOOPTIM$1 = 0u;
	}
	label$528:;
	if( NBBYTES$1 <= 7u ) goto label$531;
	{
		NB8$1 = (int32)(NBBYTES$1 >> (3u & 31));
		if( NB8$1 <= 7 ) goto label$533;
		{
			FBSTRING TMP$593$3;
			FBSTRING TMP$594$3;
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			FBSTRING TMP$599$3;
			FBSTRING TMP$600$3;
			FBSTRING TMP$601$3;
			FBSTRING TMP$604$3;
			FBSTRING TMP$605$3;
			FBSTRING TMP$606$3;
			FBSTRING TMP$608$3;
			FBSTRING TMP$610$3;
			FBSTRING TMP$611$3;
			__builtin_memset( &TMP$594$3, 0, 12 );
			FBSTRING* vr$49 = fb_IntToStr( NB8$1 );
			__builtin_memset( &TMP$593$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$593$3, (void*)"mov rax, ", 10, (void*)vr$49, -1 );
			fb_StrAssign( (void*)&TMP$594$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$594$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$594$3 );
			uint8* vr$56 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$56, 0, 0 );
			__builtin_memset( &TMP$596$3, 0, 12 );
			__builtin_memset( &TMP$595$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$595$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$596$3, -1, (void*)vr$62, -1, 0 );
			HWRITEASM64( &TMP$596$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$596$3 );
			__builtin_memset( &TMP$601$3, 0, 12 );
			__builtin_memset( &TMP$599$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$599$3, (void*)"mov QWORD PTR [", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$600$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$600$3, (void*)vr$70, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$601$3, -1, (void*)vr$73, -1, 0 );
			HWRITEASM64( &TMP$601$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$601$3 );
			__builtin_memset( &TMP$606$3, 0, 12 );
			__builtin_memset( &TMP$604$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$604$3, (void*)"add ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$605$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$605$3, (void*)vr$81, -1, (void*)", 8", 4 );
			fb_StrAssign( (void*)&TMP$606$3, -1, (void*)vr$84, -1, 0 );
			HWRITEASM64( &TMP$606$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$606$3 );
			__builtin_memset( &TMP$608$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$608$3, -1, (void*)"dec rax", 8, 0 );
			HWRITEASM64( &TMP$608$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$608$3 );
			__builtin_memset( &TMP$611$3, 0, 12 );
			__builtin_memset( &TMP$610$3, 0, 12 );
			FBSTRING* vr$96 = fb_StrConcat( &TMP$610$3, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$611$3, -1, (void*)vr$96, -1, 0 );
			HWRITEASM64( &TMP$611$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$611$3 );
			NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
		}
		goto label$532;
		label$533:;
		{
			{
				int32 INB8$4;
				INB8$4 = 0;
				int32 TMP$612$4;
				TMP$612$4 = NB8$1 + -1;
				goto label$534;
				label$537:;
				{
					FBSTRING TMP$613$5;
					FBSTRING TMP$614$5;
					FBSTRING TMP$615$5;
					FBSTRING TMP$616$5;
					FBSTRING TMP$617$5;
					__builtin_memset( &TMP$617$5, 0, 12 );
					FBSTRING* vr$106 = fb_IntToStr( INB8$4 << (3 & 31) );
					__builtin_memset( &TMP$613$5, 0, 12 );
					FBSTRING* vr$109 = fb_StrConcat( &TMP$613$5, (void*)"mov QWORD PTR ", 15, (void*)vr$106, -1 );
					__builtin_memset( &TMP$614$5, 0, 12 );
					FBSTRING* vr$112 = fb_StrConcat( &TMP$614$5, (void*)vr$109, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$615$5, 0, 12 );
					FBSTRING* vr$115 = fb_StrConcat( &TMP$615$5, (void*)vr$112, -1, (void*)&REGDST$1, -1 );
					__builtin_memset( &TMP$616$5, 0, 12 );
					FBSTRING* vr$118 = fb_StrConcat( &TMP$616$5, (void*)vr$115, -1, (void*)"], 0", 5 );
					fb_StrAssign( (void*)&TMP$617$5, -1, (void*)vr$118, -1, 0 );
					HWRITEASM64( &TMP$617$5, (int32)NOOPTIM$1 );
					fb_StrDelete( (FBSTRING*)&TMP$617$5 );
				}
				label$535:;
				INB8$4 = INB8$4 + 1;
				label$534:;
				if( INB8$4 <= TMP$612$4 ) goto label$537;
				label$536:;
			}
			NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
			if( NBBYTES$1 == 0u ) goto label$539;
			{
				FBSTRING TMP$618$4;
				FBSTRING TMP$619$4;
				FBSTRING TMP$620$4;
				FBSTRING TMP$621$4;
				__builtin_memset( &TMP$621$4, 0, 12 );
				FBSTRING* vr$127 = fb_IntToStr( NB8$1 << (3 & 31) );
				__builtin_memset( &TMP$618$4, 0, 12 );
				FBSTRING* vr$131 = fb_StrConcat( &TMP$618$4, (void*)"add ", 5, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$619$4, 0, 12 );
				FBSTRING* vr$134 = fb_StrConcat( &TMP$619$4, (void*)vr$131, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$620$4, 0, 12 );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$620$4, (void*)vr$134, -1, (void*)vr$127, -1 );
				fb_StrAssign( (void*)&TMP$621$4, -1, (void*)vr$137, -1, 0 );
				HWRITEASM64( &TMP$621$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$621$4 );
			}
			label$539:;
			label$538:;
		}
		label$532:;
	}
	label$531:;
	label$530:;
	if( NBBYTES$1 <= 3u ) goto label$541;
	{
		FBSTRING TMP$623$2;
		FBSTRING TMP$624$2;
		FBSTRING TMP$625$2;
		__builtin_memset( &TMP$625$2, 0, 12 );
		__builtin_memset( &TMP$623$2, 0, 12 );
		FBSTRING* vr$145 = fb_StrConcat( &TMP$623$2, (void*)"mov dword ptr [", 16, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$624$2, 0, 12 );
		FBSTRING* vr$148 = fb_StrConcat( &TMP$624$2, (void*)vr$145, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$625$2, -1, (void*)vr$148, -1, 0 );
		HWRITEASM64( &TMP$625$2, (int32)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$625$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967292u;
		if( NBBYTES$1 <= 1u ) goto label$543;
		{
			FBSTRING TMP$627$3;
			FBSTRING TMP$628$3;
			FBSTRING TMP$629$3;
			__builtin_memset( &TMP$629$3, 0, 12 );
			__builtin_memset( &TMP$627$3, 0, 12 );
			FBSTRING* vr$157 = fb_StrConcat( &TMP$627$3, (void*)"mov word ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$628$3, 0, 12 );
			FBSTRING* vr$160 = fb_StrConcat( &TMP$628$3, (void*)vr$157, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$629$3, -1, (void*)vr$160, -1, 0 );
			HWRITEASM64( &TMP$629$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$629$3 );
			NBBYTES$1 = NBBYTES$1 + 4294967294u;
			if( NBBYTES$1 <= 0u ) goto label$545;
			{
				FBSTRING TMP$631$4;
				FBSTRING TMP$632$4;
				FBSTRING TMP$633$4;
				__builtin_memset( &TMP$633$4, 0, 12 );
				__builtin_memset( &TMP$631$4, 0, 12 );
				FBSTRING* vr$169 = fb_StrConcat( &TMP$631$4, (void*)"mov byte ptr 6[", 16, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$632$4, 0, 12 );
				FBSTRING* vr$172 = fb_StrConcat( &TMP$632$4, (void*)vr$169, -1, (void*)"], 0", 5 );
				fb_StrAssign( (void*)&TMP$633$4, -1, (void*)vr$172, -1, 0 );
				HWRITEASM64( &TMP$633$4, (int32)NOOPTIM$1 );
				fb_StrDelete( (FBSTRING*)&TMP$633$4 );
			}
			label$545:;
			label$544:;
		}
		goto label$542;
		label$543:;
		if( NBBYTES$1 <= 0u ) goto label$546;
		{
			FBSTRING TMP$635$3;
			FBSTRING TMP$636$3;
			FBSTRING TMP$637$3;
			__builtin_memset( &TMP$637$3, 0, 12 );
			__builtin_memset( &TMP$635$3, 0, 12 );
			FBSTRING* vr$180 = fb_StrConcat( &TMP$635$3, (void*)"mov byte ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$636$3, 0, 12 );
			FBSTRING* vr$183 = fb_StrConcat( &TMP$636$3, (void*)vr$180, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$637$3, -1, (void*)vr$183, -1, 0 );
			HWRITEASM64( &TMP$637$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$637$3 );
		}
		label$546:;
		label$542:;
	}
	goto label$540;
	label$541:;
	if( NBBYTES$1 <= 1u ) goto label$547;
	{
		FBSTRING TMP$639$2;
		FBSTRING TMP$640$2;
		FBSTRING TMP$641$2;
		__builtin_memset( &TMP$641$2, 0, 12 );
		__builtin_memset( &TMP$639$2, 0, 12 );
		FBSTRING* vr$191 = fb_StrConcat( &TMP$639$2, (void*)"mov word ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$640$2, 0, 12 );
		FBSTRING* vr$194 = fb_StrConcat( &TMP$640$2, (void*)vr$191, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$641$2, -1, (void*)vr$194, -1, 0 );
		HWRITEASM64( &TMP$641$2, (int32)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$641$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967294u;
		if( NBBYTES$1 <= 0u ) goto label$549;
		{
			FBSTRING TMP$643$3;
			FBSTRING TMP$644$3;
			FBSTRING TMP$645$3;
			__builtin_memset( &TMP$645$3, 0, 12 );
			__builtin_memset( &TMP$643$3, 0, 12 );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$643$3, (void*)"mov byte ptr 2[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$644$3, 0, 12 );
			FBSTRING* vr$206 = fb_StrConcat( &TMP$644$3, (void*)vr$203, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$645$3, -1, (void*)vr$206, -1, 0 );
			HWRITEASM64( &TMP$645$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$645$3 );
		}
		label$549:;
		label$548:;
	}
	goto label$540;
	label$547:;
	if( NBBYTES$1 <= 0u ) goto label$550;
	{
		FBSTRING TMP$647$2;
		FBSTRING TMP$648$2;
		FBSTRING TMP$649$2;
		__builtin_memset( &TMP$649$2, 0, 12 );
		__builtin_memset( &TMP$647$2, 0, 12 );
		FBSTRING* vr$214 = fb_StrConcat( &TMP$647$2, (void*)"mov byte ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$648$2, 0, 12 );
		FBSTRING* vr$217 = fb_StrConcat( &TMP$648$2, (void*)vr$214, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$649$2, -1, (void*)vr$217, -1, 0 );
		HWRITEASM64( &TMP$649$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$649$2 );
	}
	label$550:;
	label$540:;
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$523:;
}

static void MEMCOPY( int32 BYTESTOCLEAR$1, FBSTRING* SRC$1, FBSTRING* DST$1, int32 STYP$1, int32 DTYP$1 )
{
	label$551:;
	uint32 NBBYTES$1;
	NBBYTES$1 = (uint32)BYTESTOCLEAR$1;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 12 );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 12 );
	FBSTRING REGNBB$1;
	__builtin_memset( &REGNBB$1, 0, 12 );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4 );
	int32 RSRC$1;
	__builtin_memset( &RSRC$1, 0, 4 );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4 );
	int32 RNBB$1;
	__builtin_memset( &RNBB$1, 0, 4 );
	if( BYTESTOCLEAR$1 != 0 ) goto label$554;
	{
		fb_StrDelete( (FBSTRING*)&REGNBB$1 );
		fb_StrDelete( (FBSTRING*)&REGDST$1 );
		fb_StrDelete( (FBSTRING*)&REGSRC$1 );
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$552;
	}
	label$554:;
	label$553:;
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$13 = fb_StrInstr( 1, (FBSTRING*)vr$12, (FBSTRING*)SRC$1 );
	if( vr$13 == 0 ) goto label$556;
	{
		fb_StrAssign( (void*)&REGSRC$1, -1, (void*)SRC$1, -1, 0 );
	}
	goto label$555;
	label$556:;
	{
		int32 vr$15 = REG_FINDFREE( 999998, -1 );
		RSRC$1 = vr$15;
		fb_StrAssign( (void*)&REGSRC$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (RSRC$1 << (2 & 31))), 0, 0 );
		if( STYP$1 != 1 ) goto label$558;
		{
			FBSTRING TMP$650$3;
			FBSTRING TMP$651$3;
			FBSTRING TMP$652$3;
			FBSTRING TMP$653$3;
			__builtin_memset( &TMP$653$3, 0, 12 );
			__builtin_memset( &TMP$650$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$650$3, (void*)"lea ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$651$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$651$3, (void*)vr$22, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$652$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$652$3, (void*)vr$25, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$653$3, -1, (void*)vr$28, -1, 0 );
			HWRITEASM64( &TMP$653$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$653$3 );
		}
		goto label$557;
		label$558:;
		{
			FBSTRING TMP$654$3;
			FBSTRING TMP$655$3;
			FBSTRING TMP$656$3;
			FBSTRING TMP$657$3;
			__builtin_memset( &TMP$657$3, 0, 12 );
			__builtin_memset( &TMP$654$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$654$3, (void*)"mov ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$655$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$655$3, (void*)vr$36, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$656$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$656$3, (void*)vr$39, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$657$3, -1, (void*)vr$42, -1, 0 );
			HWRITEASM64( &TMP$657$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$657$3 );
		}
		label$557:;
	}
	label$555:;
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$47 = fb_StrInstr( 1, (FBSTRING*)vr$46, (FBSTRING*)DST$1 );
	if( vr$47 == 0 ) goto label$560;
	{
		fb_StrAssign( (void*)&REGDST$1, -1, (void*)DST$1, -1, 0 );
	}
	goto label$559;
	label$560:;
	{
		int32 vr$49 = REG_FINDFREE( 999997, -1 );
		RDST$1 = vr$49;
		fb_StrAssign( (void*)&REGDST$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (RDST$1 << (2 & 31))), 0, 0 );
		if( DTYP$1 != 1 ) goto label$562;
		{
			FBSTRING TMP$658$3;
			FBSTRING TMP$659$3;
			FBSTRING TMP$660$3;
			FBSTRING TMP$661$3;
			__builtin_memset( &TMP$661$3, 0, 12 );
			__builtin_memset( &TMP$658$3, 0, 12 );
			FBSTRING* vr$56 = fb_StrConcat( &TMP$658$3, (void*)"lea ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$659$3, 0, 12 );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$659$3, (void*)vr$56, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$660$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$660$3, (void*)vr$59, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$661$3, -1, (void*)vr$62, -1, 0 );
			HWRITEASM64( &TMP$661$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$661$3 );
		}
		goto label$561;
		label$562:;
		{
			FBSTRING TMP$662$3;
			FBSTRING TMP$663$3;
			FBSTRING TMP$664$3;
			FBSTRING TMP$665$3;
			__builtin_memset( &TMP$665$3, 0, 12 );
			__builtin_memset( &TMP$662$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$662$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$663$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$663$3, (void*)vr$70, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$664$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$664$3, (void*)vr$73, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$665$3, -1, (void*)vr$76, -1, 0 );
			HWRITEASM64( &TMP$665$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$665$3 );
		}
		label$561:;
	}
	label$559:;
	NB8$1 = (int32)(NBBYTES$1 >> (3u & 31));
	if( NB8$1 <= 7 ) goto label$564;
	{
		FBSTRING TMP$666$2;
		FBSTRING TMP$667$2;
		FBSTRING TMP$668$2;
		FBSTRING TMP$669$2;
		FBSTRING TMP$670$2;
		FBSTRING TMP$671$2;
		FBSTRING TMP$673$2;
		FBSTRING TMP$674$2;
		FBSTRING TMP$675$2;
		FBSTRING TMP$678$2;
		FBSTRING TMP$679$2;
		FBSTRING TMP$680$2;
		FBSTRING TMP$681$2;
		FBSTRING TMP$682$2;
		FBSTRING TMP$683$2;
		FBSTRING TMP$684$2;
		FBSTRING TMP$685$2;
		FBSTRING TMP$686$2;
		FBSTRING TMP$688$2;
		FBSTRING TMP$689$2;
		FBSTRING TMP$690$2;
		FBSTRING TMP$691$2;
		int32 vr$81 = REG_FINDFREE( 999996, -1 );
		RNBB$1 = vr$81;
		fb_StrAssign( (void*)&REGNBB$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (RNBB$1 << (2 & 31))), 0, 0 );
		*(int32*)((int32)(int32*)REGHANDLE$ + (RNBB$1 << (2 & 31))) = -2;
		__builtin_memset( &TMP$669$2, 0, 12 );
		FBSTRING* vr$86 = fb_IntToStr( NB8$1 );
		__builtin_memset( &TMP$666$2, 0, 12 );
		FBSTRING* vr$90 = fb_StrConcat( &TMP$666$2, (void*)"mov ", 5, (void*)&REGNBB$1, -1 );
		__builtin_memset( &TMP$667$2, 0, 12 );
		FBSTRING* vr$93 = fb_StrConcat( &TMP$667$2, (void*)vr$90, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$668$2, 0, 12 );
		FBSTRING* vr$96 = fb_StrConcat( &TMP$668$2, (void*)vr$93, -1, (void*)vr$86, -1 );
		fb_StrAssign( (void*)&TMP$669$2, -1, (void*)vr$96, -1, 0 );
		HWRITEASM64( &TMP$669$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$669$2 );
		uint8* vr$100 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$100, 0, 0 );
		__builtin_memset( &TMP$671$2, 0, 12 );
		__builtin_memset( &TMP$670$2, 0, 12 );
		FBSTRING* vr$106 = fb_StrConcat( &TMP$670$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$671$2, -1, (void*)vr$106, -1, 0 );
		HWRITEASM64( &TMP$671$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$671$2 );
		__builtin_memset( &TMP$675$2, 0, 12 );
		__builtin_memset( &TMP$673$2, 0, 12 );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$673$2, (void*)"mov rax, [", 11, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$674$2, 0, 12 );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$674$2, (void*)vr$114, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$675$2, -1, (void*)vr$117, -1, 0 );
		HWRITEASM64( &TMP$675$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$675$2 );
		__builtin_memset( &TMP$680$2, 0, 12 );
		__builtin_memset( &TMP$678$2, 0, 12 );
		FBSTRING* vr$125 = fb_StrConcat( &TMP$678$2, (void*)"mov [", 6, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$679$2, 0, 12 );
		FBSTRING* vr$128 = fb_StrConcat( &TMP$679$2, (void*)vr$125, -1, (void*)"], rax", 7 );
		fb_StrAssign( (void*)&TMP$680$2, -1, (void*)vr$128, -1, 0 );
		HWRITEASM64( &TMP$680$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$680$2 );
		__builtin_memset( &TMP$683$2, 0, 12 );
		__builtin_memset( &TMP$681$2, 0, 12 );
		FBSTRING* vr$136 = fb_StrConcat( &TMP$681$2, (void*)"add ", 5, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$682$2, 0, 12 );
		FBSTRING* vr$139 = fb_StrConcat( &TMP$682$2, (void*)vr$136, -1, (void*)", 8", 4 );
		fb_StrAssign( (void*)&TMP$683$2, -1, (void*)vr$139, -1, 0 );
		HWRITEASM64( &TMP$683$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$683$2 );
		__builtin_memset( &TMP$686$2, 0, 12 );
		__builtin_memset( &TMP$684$2, 0, 12 );
		FBSTRING* vr$147 = fb_StrConcat( &TMP$684$2, (void*)"add ", 5, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$685$2, 0, 12 );
		FBSTRING* vr$150 = fb_StrConcat( &TMP$685$2, (void*)vr$147, -1, (void*)", 8", 4 );
		fb_StrAssign( (void*)&TMP$686$2, -1, (void*)vr$150, -1, 0 );
		HWRITEASM64( &TMP$686$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$686$2 );
		__builtin_memset( &TMP$689$2, 0, 12 );
		__builtin_memset( &TMP$688$2, 0, 12 );
		FBSTRING* vr$158 = fb_StrConcat( &TMP$688$2, (void*)"dec ", 5, (void*)&REGNBB$1, -1 );
		fb_StrAssign( (void*)&TMP$689$2, -1, (void*)vr$158, -1, 0 );
		HWRITEASM64( &TMP$689$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$689$2 );
		__builtin_memset( &TMP$691$2, 0, 12 );
		__builtin_memset( &TMP$690$2, 0, 12 );
		FBSTRING* vr$166 = fb_StrConcat( &TMP$690$2, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$691$2, -1, (void*)vr$166, -1, 0 );
		HWRITEASM64( &TMP$691$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$691$2 );
		NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
	}
	goto label$563;
	label$564:;
	if( NB8$1 <= 0 ) goto label$565;
	{
		{
			int32 INB8$3;
			INB8$3 = 0;
			int32 TMP$692$3;
			TMP$692$3 = NB8$1 + -1;
			goto label$566;
			label$569:;
			{
				FBSTRING TMP$693$4;
				FBSTRING TMP$694$4;
				FBSTRING TMP$695$4;
				FBSTRING TMP$696$4;
				FBSTRING TMP$697$4;
				FBSTRING TMP$698$4;
				FBSTRING TMP$699$4;
				FBSTRING TMP$700$4;
				FBSTRING TMP$701$4;
				FBSTRING TMP$702$4;
				__builtin_memset( &TMP$697$4, 0, 12 );
				FBSTRING* vr$176 = fb_IntToStr( INB8$3 << (3 & 31) );
				__builtin_memset( &TMP$693$4, 0, 12 );
				FBSTRING* vr$179 = fb_StrConcat( &TMP$693$4, (void*)"mov rax, ", 10, (void*)vr$176, -1 );
				__builtin_memset( &TMP$694$4, 0, 12 );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$694$4, (void*)vr$179, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$695$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$695$4, (void*)vr$182, -1, (void*)&REGSRC$1, -1 );
				__builtin_memset( &TMP$696$4, 0, 12 );
				FBSTRING* vr$188 = fb_StrConcat( &TMP$696$4, (void*)vr$185, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$697$4, -1, (void*)vr$188, -1, 0 );
				HWRITEASM64( &TMP$697$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$697$4 );
				__builtin_memset( &TMP$702$4, 0, 12 );
				FBSTRING* vr$195 = fb_IntToStr( INB8$3 << (3 & 31) );
				__builtin_memset( &TMP$698$4, 0, 12 );
				FBSTRING* vr$198 = fb_StrConcat( &TMP$698$4, (void*)"mov ", 5, (void*)vr$195, -1 );
				__builtin_memset( &TMP$699$4, 0, 12 );
				FBSTRING* vr$201 = fb_StrConcat( &TMP$699$4, (void*)vr$198, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$700$4, 0, 12 );
				FBSTRING* vr$204 = fb_StrConcat( &TMP$700$4, (void*)vr$201, -1, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$701$4, 0, 12 );
				FBSTRING* vr$207 = fb_StrConcat( &TMP$701$4, (void*)vr$204, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$702$4, -1, (void*)vr$207, -1, 0 );
				HWRITEASM64( &TMP$702$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$702$4 );
			}
			label$567:;
			INB8$3 = INB8$3 + 1;
			label$566:;
			if( INB8$3 <= TMP$692$3 ) goto label$569;
			label$568:;
		}
		NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
		if( NBBYTES$1 == 0u ) goto label$571;
		{
			FBSTRING TMP$703$3;
			FBSTRING TMP$704$3;
			FBSTRING TMP$705$3;
			FBSTRING TMP$706$3;
			FBSTRING TMP$707$3;
			FBSTRING TMP$708$3;
			FBSTRING TMP$709$3;
			FBSTRING TMP$710$3;
			__builtin_memset( &TMP$706$3, 0, 12 );
			FBSTRING* vr$216 = fb_IntToStr( NB8$1 << (3 & 31) );
			__builtin_memset( &TMP$703$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$703$3, (void*)"add ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$704$3, 0, 12 );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$704$3, (void*)vr$220, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$705$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$705$3, (void*)vr$223, -1, (void*)vr$216, -1 );
			fb_StrAssign( (void*)&TMP$706$3, -1, (void*)vr$226, -1, 0 );
			HWRITEASM64( &TMP$706$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$706$3 );
			__builtin_memset( &TMP$710$3, 0, 12 );
			FBSTRING* vr$232 = fb_IntToStr( NB8$1 << (3 & 31) );
			__builtin_memset( &TMP$707$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$707$3, (void*)"add ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$708$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$708$3, (void*)vr$236, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$709$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$709$3, (void*)vr$239, -1, (void*)vr$232, -1 );
			fb_StrAssign( (void*)&TMP$710$3, -1, (void*)vr$242, -1, 0 );
			HWRITEASM64( &TMP$710$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$710$3 );
		}
		label$571:;
		label$570:;
	}
	label$565:;
	label$563:;
	if( NBBYTES$1 <= 3u ) goto label$573;
	{
		FBSTRING TMP$712$2;
		FBSTRING TMP$713$2;
		FBSTRING TMP$714$2;
		FBSTRING TMP$716$2;
		FBSTRING TMP$717$2;
		FBSTRING TMP$718$2;
		__builtin_memset( &TMP$714$2, 0, 12 );
		__builtin_memset( &TMP$712$2, 0, 12 );
		FBSTRING* vr$250 = fb_StrConcat( &TMP$712$2, (void*)"mov eax, dword ptr [", 21, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$713$2, 0, 12 );
		FBSTRING* vr$253 = fb_StrConcat( &TMP$713$2, (void*)vr$250, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$714$2, -1, (void*)vr$253, -1, 0 );
		HWRITEASM64( &TMP$714$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$714$2 );
		__builtin_memset( &TMP$718$2, 0, 12 );
		__builtin_memset( &TMP$716$2, 0, 12 );
		FBSTRING* vr$261 = fb_StrConcat( &TMP$716$2, (void*)"mov dword ptr [", 16, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$717$2, 0, 12 );
		FBSTRING* vr$264 = fb_StrConcat( &TMP$717$2, (void*)vr$261, -1, (void*)"], eax", 7 );
		fb_StrAssign( (void*)&TMP$718$2, -1, (void*)vr$264, -1, 0 );
		HWRITEASM64( &TMP$718$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$718$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967292u;
		if( NBBYTES$1 <= 1u ) goto label$575;
		{
			FBSTRING TMP$720$3;
			FBSTRING TMP$721$3;
			FBSTRING TMP$722$3;
			FBSTRING TMP$724$3;
			FBSTRING TMP$725$3;
			FBSTRING TMP$726$3;
			__builtin_memset( &TMP$722$3, 0, 12 );
			__builtin_memset( &TMP$720$3, 0, 12 );
			FBSTRING* vr$273 = fb_StrConcat( &TMP$720$3, (void*)"mov ax, word ptr 4[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$721$3, 0, 12 );
			FBSTRING* vr$276 = fb_StrConcat( &TMP$721$3, (void*)vr$273, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$722$3, -1, (void*)vr$276, -1, 0 );
			HWRITEASM64( &TMP$722$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$722$3 );
			__builtin_memset( &TMP$726$3, 0, 12 );
			__builtin_memset( &TMP$724$3, 0, 12 );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$724$3, (void*)"mov word ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$725$3, 0, 12 );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$725$3, (void*)vr$284, -1, (void*)"], ax", 6 );
			fb_StrAssign( (void*)&TMP$726$3, -1, (void*)vr$287, -1, 0 );
			HWRITEASM64( &TMP$726$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$726$3 );
			NBBYTES$1 = NBBYTES$1 + 4294967294u;
			if( NBBYTES$1 <= 0u ) goto label$577;
			{
				FBSTRING TMP$728$4;
				FBSTRING TMP$729$4;
				FBSTRING TMP$730$4;
				FBSTRING TMP$732$4;
				FBSTRING TMP$733$4;
				FBSTRING TMP$734$4;
				__builtin_memset( &TMP$730$4, 0, 12 );
				__builtin_memset( &TMP$728$4, 0, 12 );
				FBSTRING* vr$296 = fb_StrConcat( &TMP$728$4, (void*)"mov al, byte ptr 6[", 20, (void*)&REGSRC$1, -1 );
				__builtin_memset( &TMP$729$4, 0, 12 );
				FBSTRING* vr$299 = fb_StrConcat( &TMP$729$4, (void*)vr$296, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$730$4, -1, (void*)vr$299, -1, 0 );
				HWRITEASM64( &TMP$730$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$730$4 );
				__builtin_memset( &TMP$734$4, 0, 12 );
				__builtin_memset( &TMP$732$4, 0, 12 );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$732$4, (void*)"mov byte ptr 6[", 16, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$733$4, 0, 12 );
				FBSTRING* vr$310 = fb_StrConcat( &TMP$733$4, (void*)vr$307, -1, (void*)"], al", 6 );
				fb_StrAssign( (void*)&TMP$734$4, -1, (void*)vr$310, -1, 0 );
				HWRITEASM64( &TMP$734$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$734$4 );
			}
			label$577:;
			label$576:;
		}
		goto label$574;
		label$575:;
		if( NBBYTES$1 <= 0u ) goto label$578;
		{
			FBSTRING TMP$736$3;
			FBSTRING TMP$737$3;
			FBSTRING TMP$738$3;
			FBSTRING TMP$739$3;
			FBSTRING TMP$740$3;
			FBSTRING TMP$741$3;
			__builtin_memset( &TMP$738$3, 0, 12 );
			__builtin_memset( &TMP$736$3, 0, 12 );
			FBSTRING* vr$318 = fb_StrConcat( &TMP$736$3, (void*)"mov al, byte ptr 4[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$737$3, 0, 12 );
			FBSTRING* vr$321 = fb_StrConcat( &TMP$737$3, (void*)vr$318, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$738$3, -1, (void*)vr$321, -1, 0 );
			HWRITEASM64( &TMP$738$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$738$3 );
			__builtin_memset( &TMP$741$3, 0, 12 );
			__builtin_memset( &TMP$739$3, 0, 12 );
			FBSTRING* vr$329 = fb_StrConcat( &TMP$739$3, (void*)"mov byte ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$740$3, 0, 12 );
			FBSTRING* vr$332 = fb_StrConcat( &TMP$740$3, (void*)vr$329, -1, (void*)"], al", 6 );
			fb_StrAssign( (void*)&TMP$741$3, -1, (void*)vr$332, -1, 0 );
			HWRITEASM64( &TMP$741$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$741$3 );
		}
		label$578:;
		label$574:;
	}
	goto label$572;
	label$573:;
	if( NBBYTES$1 <= 1u ) goto label$579;
	{
		FBSTRING TMP$743$2;
		FBSTRING TMP$744$2;
		FBSTRING TMP$745$2;
		FBSTRING TMP$746$2;
		FBSTRING TMP$747$2;
		FBSTRING TMP$748$2;
		__builtin_memset( &TMP$745$2, 0, 12 );
		__builtin_memset( &TMP$743$2, 0, 12 );
		FBSTRING* vr$340 = fb_StrConcat( &TMP$743$2, (void*)"mov ax, word ptr [", 19, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$744$2, 0, 12 );
		FBSTRING* vr$343 = fb_StrConcat( &TMP$744$2, (void*)vr$340, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$745$2, -1, (void*)vr$343, -1, 0 );
		HWRITEASM64( &TMP$745$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$745$2 );
		__builtin_memset( &TMP$748$2, 0, 12 );
		__builtin_memset( &TMP$746$2, 0, 12 );
		FBSTRING* vr$351 = fb_StrConcat( &TMP$746$2, (void*)"mov word ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$747$2, 0, 12 );
		FBSTRING* vr$354 = fb_StrConcat( &TMP$747$2, (void*)vr$351, -1, (void*)"], ax", 6 );
		fb_StrAssign( (void*)&TMP$748$2, -1, (void*)vr$354, -1, 0 );
		HWRITEASM64( &TMP$748$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$748$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967294u;
		if( NBBYTES$1 <= 0u ) goto label$581;
		{
			FBSTRING TMP$750$3;
			FBSTRING TMP$751$3;
			FBSTRING TMP$752$3;
			FBSTRING TMP$753$3;
			FBSTRING TMP$754$3;
			FBSTRING TMP$755$3;
			__builtin_memset( &TMP$752$3, 0, 12 );
			__builtin_memset( &TMP$750$3, 0, 12 );
			FBSTRING* vr$363 = fb_StrConcat( &TMP$750$3, (void*)"mov al, byte ptr 2[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$751$3, 0, 12 );
			FBSTRING* vr$366 = fb_StrConcat( &TMP$751$3, (void*)vr$363, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$752$3, -1, (void*)vr$366, -1, 0 );
			HWRITEASM64( &TMP$752$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$752$3 );
			__builtin_memset( &TMP$755$3, 0, 12 );
			__builtin_memset( &TMP$753$3, 0, 12 );
			FBSTRING* vr$374 = fb_StrConcat( &TMP$753$3, (void*)"mov byte ptr 2[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$754$3, 0, 12 );
			FBSTRING* vr$377 = fb_StrConcat( &TMP$754$3, (void*)vr$374, -1, (void*)"], al", 6 );
			fb_StrAssign( (void*)&TMP$755$3, -1, (void*)vr$377, -1, 0 );
			HWRITEASM64( &TMP$755$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$755$3 );
		}
		label$581:;
		label$580:;
	}
	goto label$572;
	label$579:;
	if( NBBYTES$1 <= 0u ) goto label$582;
	{
		FBSTRING TMP$757$2;
		FBSTRING TMP$758$2;
		FBSTRING TMP$759$2;
		FBSTRING TMP$760$2;
		FBSTRING TMP$761$2;
		FBSTRING TMP$762$2;
		__builtin_memset( &TMP$759$2, 0, 12 );
		__builtin_memset( &TMP$757$2, 0, 12 );
		FBSTRING* vr$385 = fb_StrConcat( &TMP$757$2, (void*)"mov al, byte ptr [", 19, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$758$2, 0, 12 );
		FBSTRING* vr$388 = fb_StrConcat( &TMP$758$2, (void*)vr$385, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$759$2, -1, (void*)vr$388, -1, 0 );
		HWRITEASM64( &TMP$759$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$759$2 );
		__builtin_memset( &TMP$762$2, 0, 12 );
		__builtin_memset( &TMP$760$2, 0, 12 );
		FBSTRING* vr$396 = fb_StrConcat( &TMP$760$2, (void*)"mov byte ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$761$2, 0, 12 );
		FBSTRING* vr$399 = fb_StrConcat( &TMP$761$2, (void*)vr$396, -1, (void*)"], al", 6 );
		fb_StrAssign( (void*)&TMP$762$2, -1, (void*)vr$399, -1, 0 );
		HWRITEASM64( &TMP$762$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$762$2 );
	}
	label$582:;
	label$572:;
	int32 vr$404 = fb_StrCompare( (void*)&REGSRC$1, -1, (void*)SRC$1, -1 );
	if( vr$404 == 0 ) goto label$584;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (RSRC$1 << (2 & 31))) = -2;
		label$584:;
	}
	int32 vr$407 = fb_StrCompare( (void*)&REGDST$1, -1, (void*)DST$1, -1 );
	if( vr$407 == 0 ) goto label$586;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (RDST$1 << (2 & 31))) = -2;
		label$586:;
	}
	fb_StrDelete( (FBSTRING*)&REGNBB$1 );
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&REGSRC$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$552:;
}

static void _INIT( void )
{
	label$587:;
	FLISTINIT( (struct $6TFLIST*)((uint8*)&CTX$ + 156), 256, 16 );
	IRHLINIT(  );
	*($6IR_OPT*)((uint8*)&IR$ + 272) = *(int32*)((uint8*)&IR$ + 272) | 131840;
	label$588:;
}

static void _END( void )
{
	label$589:;
	IRHLEND(  );
	FLISTEND( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
	label$590:;
}

static void HEMITVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$591:;
	int32 IS_GLOBAL$1;
	int32 LENGTH$1;
	int32 LGT$1;
	int32 ALIGN$1;
	FBSTRING STRG$1;
	__builtin_memset( &STRG$1, 0, 12 );
	FBSTRING NEWSTRG$1;
	__builtin_memset( &NEWSTRG$1, 0, 12 );
	int32 PNEW$1;
	__builtin_memset( &PNEW$1, 0, 4 );
	int32 POLD$1;
	__builtin_memset( &POLD$1, 0, 4 );
	int32 LENSTRG$1;
	__builtin_memset( &LENSTRG$1, 0, 4 );
	int32 vr$5 = SYMBISARRAY( SYM$1 );
	if( vr$5 == 0 ) goto label$594;
	{
	}
	label$594:;
	label$593:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 1024) == 0 ) goto label$596;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$598;
		{
			fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
			fb_StrDelete( (FBSTRING*)&STRG$1 );
			goto label$592;
		}
		label$598:;
		label$597:;
		{
			int32 TMP$763$3;
			TMP$763$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$763$3 == 4 ) goto label$601;
			label$602:;
			if( TMP$763$3 != 7 ) goto label$600;
			label$601:;
			{
				FBSTRING TMP$765$4;
				FBSTRING TMP$767$4;
				FBSTRING TMP$771$4;
				FBSTRING TMP$772$4;
				__builtin_memset( &TMP$765$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$765$4, -1, (void*)".data", 6, 0 );
				ASM_SECTION( &TMP$765$4 );
				fb_StrDelete( (FBSTRING*)&TMP$765$4 );
				__builtin_memset( &TMP$767$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$767$4, -1, (void*)".align 8", 9, 0 );
				HWRITEASM64( &TMP$767$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$767$4 );
				if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$604;
				{
					FBSTRING TMP$769$5;
					FBSTRING TMP$770$5;
					__builtin_memset( &TMP$770$5, 0, 12 );
					uint8* vr$25 = SYMBGETMANGLEDNAME( SYM$1 );
					__builtin_memset( &TMP$769$5, 0, 12 );
					FBSTRING* vr$28 = fb_StrConcat( &TMP$769$5, (void*)".globl ", 8, (void*)vr$25, 0 );
					fb_StrAssign( (void*)&TMP$770$5, -1, (void*)vr$28, -1, 0 );
					HWRITEASM64( &TMP$770$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$770$5 );
				}
				label$604:;
				label$603:;
				__builtin_memset( &TMP$772$4, 0, 12 );
				uint8* vr$33 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$771$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$771$4, (void*)vr$33, 0, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$772$4, -1, (void*)vr$36, -1, 0 );
				HWRITEASM64( &TMP$772$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$772$4 );
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 7 ) goto label$606;
				{
					FBSTRING TMP$775$5;
					FBSTRING TMP$776$5;
					FBSTRING TMP$777$5;
					FBSTRING TMP$778$5;
					uint8* vr$43 = HESCAPEW( (uint32*)*(uint32**)((uint8*)SYM$1 + 56) );
					fb_StrAssign( (void*)&STRG$1, -1, (void*)vr$43, 0, 0 );
					__builtin_memset( &TMP$778$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8 );
					FBSTRING* vr$48 = fb_LEFT( (FBSTRING*)vr$47, *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) << (1 & 31) );
					__builtin_memset( &TMP$775$5, 0, 12 );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$775$5, (void*)".ascii \x22", 9, (void*)&STRG$1, -1 );
					__builtin_memset( &TMP$776$5, 0, 12 );
					FBSTRING* vr$55 = fb_StrConcat( &TMP$776$5, (void*)vr$52, -1, (void*)vr$48, -1 );
					__builtin_memset( &TMP$777$5, 0, 12 );
					FBSTRING* vr$58 = fb_StrConcat( &TMP$777$5, (void*)vr$55, -1, (void*)"\x22", 2 );
					fb_StrAssign( (void*)&TMP$778$5, -1, (void*)vr$58, -1, 0 );
					HWRITEASM64( &TMP$778$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$778$5 );
				}
				goto label$605;
				label$606:;
				{
					FBSTRING TMP$779$5;
					FBSTRING TMP$780$5;
					FBSTRING TMP$781$5;
					uint8* vr$63 = HESCAPE( (uint8*)*(uint8**)((uint8*)SYM$1 + 56) );
					fb_StrAssign( (void*)&STRG$1, -1, (void*)vr$63, 0, 0 );
					__builtin_memset( &TMP$781$5, 0, 12 );
					__builtin_memset( &TMP$779$5, 0, 12 );
					FBSTRING* vr$69 = fb_StrConcat( &TMP$779$5, (void*)".ascii \x22", 9, (void*)&STRG$1, -1 );
					__builtin_memset( &TMP$780$5, 0, 12 );
					FBSTRING* vr$72 = fb_StrConcat( &TMP$780$5, (void*)vr$69, -1, (void*)"\x5C" "0\x22", 4 );
					fb_StrAssign( (void*)&TMP$781$5, -1, (void*)vr$72, -1, 0 );
					HWRITEASM64( &TMP$781$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$781$5 );
				}
				label$605:;
			}
			label$600:;
			label$599:;
		}
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$592;
	}
	label$596:;
	label$595:;
	if( (-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) != (struct $7ASTNODE*)0u) & (-((*(int32*)((uint8*)SYM$1 + 4) & 128) == 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0))) == 0 ) goto label$608;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$610;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 32) != 0 ) goto label$612;
			{
				fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
				fb_StrDelete( (FBSTRING*)&STRG$1 );
				goto label$592;
			}
			label$612:;
			label$611:;
		}
		label$610:;
		label$609:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$592;
	}
	label$608:;
	label$607:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$614;
	{
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$592;
	}
	label$614:;
	label$613:;
	IS_GLOBAL$1 = *(int32*)((uint8*)SYM$1 + 4) & 59;
	if( IS_GLOBAL$1 == 0 ) goto label$616;
	{
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$618;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 16) == 0 ) goto label$620;
			{
				fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
				fb_StrDelete( (FBSTRING*)&STRG$1 );
				goto label$592;
			}
			label$620:;
			label$619:;
		}
		goto label$617;
		label$618:;
		{
			if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$622;
			{
				EDBGEMITGLOBALVAR_ASM64( SYM$1, 2 );
				label$622:;
			}
		}
		label$617:;
	}
	goto label$615;
	label$616:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$624;
		{
			LGT$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368);
		}
		goto label$623;
		label$624:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
		}
		label$623:;
		{
			$12FB_SYMBCLASS TMP$782$3;
			TMP$782$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$782$3 == 1 ) goto label$627;
			label$628:;
			if( TMP$782$3 != 12 ) goto label$626;
			label$627:;
			{
				int32 NBELEMENTS$4;
				NBELEMENTS$4 = 1;
				{
					int32 I$5;
					I$5 = *(int32*)((uint8*)SYM$1 + 64) + -1;
					goto label$629;
					label$632:;
					{
						NBELEMENTS$4 = (int32)((int64)NBELEMENTS$4 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31)))) + 1ll));
					}
					label$630:;
					I$5 = I$5 + -1;
					label$629:;
					if( I$5 >= 0 ) goto label$632;
					label$631:;
				}
				LENGTH$1 = LGT$1 * NBELEMENTS$4;
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$634;
				{
					ALIGN$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
					if( ALIGN$1 >= 4 ) goto label$636;
					{
						ALIGN$1 = 4;
					}
					label$636:;
					label$635:;
					*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LENGTH$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)ALIGN$1) + -1ll) & (int64)~(ALIGN$1 + -1);
				}
				goto label$633;
				label$634:;
				{
					*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LENGTH$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
				}
				label$633:;
				*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
			}
			label$626:;
			label$625:;
		}
		if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$638;
		{
			EDBGEMITLOCALVAR_ASM64( SYM$1, -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) );
			label$638:;
		}
	}
	label$615:;
	if( IS_GLOBAL$1 == 0 ) goto label$640;
	{
		FBSTRING TMP$784$2;
		*(int32*)((uint8*)&CTX$ + 4) = 2;
		__builtin_memset( &TMP$784$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$784$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$784$2 );
		fb_StrDelete( (FBSTRING*)&TMP$784$2 );
		int32 SIZE$2;
		__builtin_memset( &SIZE$2, 0, 4 );
		int32 ALIGN$2;
		__builtin_memset( &ALIGN$2, 0, 4 );
		int32 NBELEMENTS$2;
		__builtin_memset( &NBELEMENTS$2, 0, 4 );
		NBELEMENTS$2 = 1;
		{
			int32 I$3;
			I$3 = *(int32*)((uint8*)SYM$1 + 64) + -1;
			goto label$641;
			label$644:;
			{
				NBELEMENTS$2 = (int32)((int64)NBELEMENTS$2 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$3 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$3 << (4 & 31)))) + 1ll));
			}
			label$642:;
			I$3 = I$3 + -1;
			label$641:;
			if( I$3 >= 0 ) goto label$644;
			label$643:;
		}
		LENGTH$1 = (int32)(*(int64*)((uint8*)SYM$1 + 40) * (int64)NBELEMENTS$2);
		if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$646;
		{
			ALIGN$2 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
		}
		goto label$645;
		label$646:;
		{
			ALIGN$2 = (int32)*(int64*)((uint8*)SYM$1 + 40);
		}
		label$645:;
		int32 vr$191 = PW2( ALIGN$2 );
		ALIGN$2 = vr$191;
		if( ALIGN$2 <= 8 ) goto label$648;
		{
			ALIGN$2 = 8;
			label$648:;
		}
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0)) == 0 ) goto label$650;
		{
			FBSTRING TMP$786$3;
			FBSTRING TMP$787$3;
			FBSTRING TMP$788$3;
			FBSTRING TMP$789$3;
			FBSTRING TMP$790$3;
			FBSTRING TMP$791$3;
			__builtin_memset( &TMP$791$3, 0, 12 );
			FBSTRING* vr$200 = fb_IntToStr( ALIGN$2 );
			FBSTRING* vr$201 = fb_IntToStr( LENGTH$1 );
			uint8* vr$202 = SYMBGETMANGLEDNAME( SYM$1 );
			__builtin_memset( &TMP$786$3, 0, 12 );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$786$3, (void*)".comm ", 7, (void*)vr$202, 0 );
			__builtin_memset( &TMP$787$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$787$3, (void*)vr$205, -1, (void*)",", 2 );
			__builtin_memset( &TMP$788$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$788$3, (void*)vr$208, -1, (void*)vr$201, -1 );
			__builtin_memset( &TMP$789$3, 0, 12 );
			FBSTRING* vr$214 = fb_StrConcat( &TMP$789$3, (void*)vr$211, -1, (void*)",", 2 );
			__builtin_memset( &TMP$790$3, 0, 12 );
			FBSTRING* vr$217 = fb_StrConcat( &TMP$790$3, (void*)vr$214, -1, (void*)vr$200, -1 );
			fb_StrAssign( (void*)&TMP$791$3, -1, (void*)vr$217, -1, 0 );
			HWRITEASM64( &TMP$791$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$791$3 );
		}
		goto label$649;
		label$650:;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$652;
			{
				FBSTRING TMP$793$4;
				FBSTRING TMP$794$4;
				FBSTRING TMP$795$4;
				FBSTRING TMP$796$4;
				FBSTRING TMP$797$4;
				FBSTRING TMP$798$4;
				FBSTRING TMP$799$4;
				FBSTRING TMP$800$4;
				__builtin_memset( &TMP$794$4, 0, 12 );
				uint8* vr$222 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$793$4, 0, 12 );
				FBSTRING* vr$225 = fb_StrConcat( &TMP$793$4, (void*)".local ", 8, (void*)vr$222, 0 );
				fb_StrAssign( (void*)&TMP$794$4, -1, (void*)vr$225, -1, 0 );
				HWRITEASM64( &TMP$794$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$794$4 );
				__builtin_memset( &TMP$800$4, 0, 12 );
				FBSTRING* vr$230 = fb_IntToStr( ALIGN$2 );
				FBSTRING* vr$231 = fb_IntToStr( LENGTH$1 );
				uint8* vr$232 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$795$4, 0, 12 );
				FBSTRING* vr$235 = fb_StrConcat( &TMP$795$4, (void*)".comm ", 7, (void*)vr$232, 0 );
				__builtin_memset( &TMP$796$4, 0, 12 );
				FBSTRING* vr$238 = fb_StrConcat( &TMP$796$4, (void*)vr$235, -1, (void*)",", 2 );
				__builtin_memset( &TMP$797$4, 0, 12 );
				FBSTRING* vr$241 = fb_StrConcat( &TMP$797$4, (void*)vr$238, -1, (void*)vr$231, -1 );
				__builtin_memset( &TMP$798$4, 0, 12 );
				FBSTRING* vr$244 = fb_StrConcat( &TMP$798$4, (void*)vr$241, -1, (void*)",", 2 );
				__builtin_memset( &TMP$799$4, 0, 12 );
				FBSTRING* vr$247 = fb_StrConcat( &TMP$799$4, (void*)vr$244, -1, (void*)vr$230, -1 );
				fb_StrAssign( (void*)&TMP$800$4, -1, (void*)vr$247, -1, 0 );
				HWRITEASM64( &TMP$800$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$800$4 );
			}
			goto label$651;
			label$652:;
			{
				FBSTRING TMP$802$4;
				FBSTRING TMP$803$4;
				FBSTRING TMP$804$4;
				FBSTRING TMP$805$4;
				FBSTRING TMP$806$4;
				FBSTRING TMP$807$4;
				__builtin_memset( &TMP$807$4, 0, 12 );
				FBSTRING* vr$252 = fb_IntToStr( ALIGN$2 );
				FBSTRING* vr$253 = fb_IntToStr( LENGTH$1 );
				uint8* vr$254 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$802$4, 0, 12 );
				FBSTRING* vr$257 = fb_StrConcat( &TMP$802$4, (void*)".lcomm ", 8, (void*)vr$254, 0 );
				__builtin_memset( &TMP$803$4, 0, 12 );
				FBSTRING* vr$260 = fb_StrConcat( &TMP$803$4, (void*)vr$257, -1, (void*)",", 2 );
				__builtin_memset( &TMP$804$4, 0, 12 );
				FBSTRING* vr$263 = fb_StrConcat( &TMP$804$4, (void*)vr$260, -1, (void*)vr$253, -1 );
				__builtin_memset( &TMP$805$4, 0, 12 );
				FBSTRING* vr$266 = fb_StrConcat( &TMP$805$4, (void*)vr$263, -1, (void*)",", 2 );
				__builtin_memset( &TMP$806$4, 0, 12 );
				FBSTRING* vr$269 = fb_StrConcat( &TMP$806$4, (void*)vr$266, -1, (void*)vr$252, -1 );
				fb_StrAssign( (void*)&TMP$807$4, -1, (void*)vr$269, -1, 0 );
				HWRITEASM64( &TMP$807$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$807$4 );
			}
			label$651:;
		}
		label$649:;
	}
	label$640:;
	label$639:;
	fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
	fb_StrDelete( (FBSTRING*)&STRG$1 );
	label$592:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$653:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	int32 vr$1 = SYMBISDATADESC( SYM$1 );
	if( vr$1 != 0 ) goto label$656;
	{
		HEMITVARIABLE( SYM$1 );
	}
	label$656:;
	label$655:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	label$654:;
}

static void NO_ROUNDSD( uint8* SIZE$1 )
{
	FBSTRING TMP$809$1;
	FBSTRING TMP$811$1;
	FBSTRING TMP$813$1;
	FBSTRING TMP$815$1;
	FBSTRING TMP$818$1;
	FBSTRING TMP$819$1;
	FBSTRING TMP$820$1;
	FBSTRING TMP$822$1;
	FBSTRING TMP$823$1;
	label$657:;
	__builtin_memset( &TMP$809$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$809$1, -1, (void*)"stmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$809$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$809$1 );
	__builtin_memset( &TMP$811$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$811$1, -1, (void*)"push $mxcsr[rip]", 17, 0 );
	HWRITEASM64( &TMP$811$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$811$1 );
	__builtin_memset( &TMP$813$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$813$1, -1, (void*)"and dword ptr $mxcsr[rip], 0xFFFF9FFF", 38, 0 );
	HWRITEASM64( &TMP$813$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$813$1 );
	__builtin_memset( &TMP$815$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$815$1, -1, (void*)"ldmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$815$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$815$1 );
	__builtin_memset( &TMP$820$1, 0, 12 );
	__builtin_memset( &TMP$818$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$818$1, (void*)"cvts", 5, (void*)SIZE$1, 0 );
	__builtin_memset( &TMP$819$1, 0, 12 );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$819$1, (void*)vr$19, -1, (void*)"2si rax, xmm0", 14 );
	fb_StrAssign( (void*)&TMP$820$1, -1, (void*)vr$22, -1, 0 );
	HWRITEASM64( &TMP$820$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$820$1 );
	__builtin_memset( &TMP$822$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$822$1, -1, (void*)"pop $mxcsr[rip]", 16, 0 );
	HWRITEASM64( &TMP$822$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$822$1 );
	__builtin_memset( &TMP$823$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$823$1, -1, (void*)"ldmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$823$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$823$1 );
	label$658:;
}

static int32 _EMITBEGIN( void )
{
	FBSTRING TMP$826$1;
	FBSTRING TMP$828$1;
	FBSTRING TMP$830$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$659:;
	int32 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 584) );
	if( vr$2 == 0 ) goto label$662;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$662:;
	label$661:;
	int32 vr$5 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 580) = vr$5;
	FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
	int32 vr$8 = fb_FileOpen( (FBSTRING*)vr$7, 0u, 3u, 0u, *(int32*)((uint8*)&ENV$ + 580), 0 );
	if( vr$8 == 0 ) goto label$664;
	{
		fb$result$1 = 0;
		goto label$660;
	}
	label$664:;
	label$663:;
	*(int32*)&CTX$ = 0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 32), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	*(int32*)((uint8*)&CTX$ + 144) = 0;
	*(int32*)((uint8*)&CTX$ + 148) = 0;
	*(boolean*)((uint8*)&CTX$ + 152) = (boolean)0;
	int32 vr$12 = FBGETOPTION( 3 );
	*($13FB_COMPTARGET*)((uint8*)&CTX$ + 228) = vr$12;
	{
		$13FB_COMPTARGET TMP$824$2;
		TMP$824$2 = *($13FB_COMPTARGET*)((uint8*)&CTX$ + 228);
		if( TMP$824$2 == 2 ) goto label$667;
		label$668:;
		if( TMP$824$2 != 5 ) goto label$666;
		label$667:;
		{
			*(boolean*)((uint8*)&CTX$ + 232) = (boolean)1;
		}
		goto label$665;
		label$666:;
		{
			*(boolean*)((uint8*)&CTX$ + 232) = (boolean)0;
		}
		label$669:;
		label$665:;
	}
	*(int32*)((uint8*)&CTX$ + 236) = 0;
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$673:;
		{
			*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) = -2;
			*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$2 << (3 & 31))) = -1;
			*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$2 << (3 & 31))) + 4) = (struct $14ASM64_SAVEDREG*)0u;
		}
		label$671:;
		IREG$2 = IREG$2 + 1;
		label$670:;
		if( IREG$2 <= 15 ) goto label$673;
		label$672:;
	}
	*(int32*)((int32)(int32*)REGHANDLE$ + 24) = -3;
	*(int32*)((int32)(int32*)REGHANDLE$ + 28) = -3;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$675;
	{
		*(int32*)((uint8*)&CTX$ + 244) = 8388608;
		int32 vr$17 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4u, -1, 0, 1u, 1, 8 );
		if( vr$17 == 0 ) goto label$676;
		void* vr$18 = fb_ErrorThrowAt( 2263, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$18;
		label$676:;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 4) = 5;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 8) = 4;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 12) = 3;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 16) = 2;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 20) = 8;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 24) = 9;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 28) = 10;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 32) = 11;
	}
	goto label$674;
	label$675:;
	{
		*(int32*)((uint8*)&CTX$ + 244) = *(int32*)((uint8*)&ENV$ + 244);
		int32 vr$19 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4u, -1, 0, 1u, 1, 6 );
		if( vr$19 == 0 ) goto label$677;
		void* vr$20 = fb_ErrorThrowAt( 2267, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$20;
		label$677:;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 4) = 2;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 8) = 3;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 12) = 8;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 16) = 9;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 20) = 10;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 24) = 11;
	}
	label$674:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$679;
	{
		EDBGEMITHEADER_ASM64( (uint8*)((uint8*)&ENV$ + 304) );
	}
	goto label$678;
	label$679:;
	{
		*(uint32*)&CTXDBG$ = 1u;
		*(int32*)((uint8*)&CTXDBG$ + 36) = -1;
		*(int32*)((uint8*)&CTXDBG$ + 40) = 4;
		int32 vr$23 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTR$, 24u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
		if( vr$23 == 0 ) goto label$680;
		void* vr$24 = fb_ErrorThrowAt( 2280, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$24;
		label$680:;
		*(int32*)((uint8*)&CTXDBG$ + 44) = -1;
		*(int32*)((uint8*)&CTXDBG$ + 48) = 4;
		int32 vr$25 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 24u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
		if( vr$25 == 0 ) goto label$681;
		void* vr$26 = fb_ErrorThrowAt( 2283, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$26;
		label$681:;
		*(int64*)((uint8*)&CTXDBG$ + 56) = 1ll;
		*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	}
	label$678:;
	__builtin_memset( &TMP$826$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$826$1, -1, (void*)".intel_syntax noprefix", 23, 0 );
	HWRITEASM64( &TMP$826$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$826$1 );
	__builtin_memset( &TMP$828$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$828$1, -1, (void*)".cfi_sections .debug_frame", 27, 0 );
	CFI_WINDOWS_ASM_CODE( &TMP$828$1 );
	fb_StrDelete( (FBSTRING*)&TMP$828$1 );
	__builtin_memset( &TMP$830$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$830$1, -1, (void*)".text", 6, 0 );
	ASM_SECTION( &TMP$830$1 );
	fb_StrDelete( (FBSTRING*)&TMP$830$1 );
	if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$683;
	{
		FBSTRING TMP$832$2;
		__builtin_memset( &TMP$832$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$832$2, -1, (void*)"mov qword ptr $totalstacksize[rip], 0", 38, 0 );
		HWRITEASM64( &TMP$832$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$832$2 );
	}
	label$683:;
	label$682:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	fb$result$1 = -1;
	label$660:;
	return fb$result$1;
}

static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$684:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 16384) == 0 ) goto label$687;
	{
		goto label$685;
	}
	label$687:;
	label$686:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 65536) == 0 ) goto label$689;
	{
		if( (*(int32*)((uint8*)PROC$1 + 12) & 16777216) == 0 ) goto label$691;
		{
			int32 TMP$833$3;
			FBSTRING TMP$838$3;
			FBSTRING TMP$839$3;
			FBSTRING TMP$840$3;
			FBSTRING TMP$841$3;
			*(int32*)((uint8*)&CTX$ + 144) = *(int32*)((uint8*)&CTX$ + 144) + 1;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$692;
			int32 vr$8 = FBGETOPTION( 0 );
			TMP$833$3 = -(vr$8 == 2);
			goto label$3078;
			label$692:;
			TMP$833$3 = 0;
			label$3078:;
			if( TMP$833$3 == 0 ) goto label$694;
			{
				FBSTRING TMP$835$4;
				__builtin_memset( &TMP$835$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$835$4, -1, (void*)".init_array", 12, 0 );
				ASM_SECTION( &TMP$835$4 );
				fb_StrDelete( (FBSTRING*)&TMP$835$4 );
			}
			goto label$693;
			label$694:;
			{
				FBSTRING TMP$837$4;
				__builtin_memset( &TMP$837$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$837$4, -1, (void*)".ctors", 7, 0 );
				ASM_SECTION( &TMP$837$4 );
				fb_StrDelete( (FBSTRING*)&TMP$837$4 );
			}
			label$693:;
			__builtin_memset( &TMP$838$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$838$3, -1, (void*)".align 8", 9, 0 );
			HWRITEASM64( &TMP$838$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$838$3 );
			__builtin_memset( &TMP$840$3, 0, 12 );
			uint8* vr$23 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$839$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$839$3, (void*)".quad ", 7, (void*)vr$23, 0 );
			fb_StrAssign( (void*)&TMP$840$3, -1, (void*)vr$26, -1, 0 );
			HWRITEASM64( &TMP$840$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$840$3 );
			__builtin_memset( &TMP$841$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$841$3, -1, (void*)".text", 6, 0 );
			ASM_SECTION( &TMP$841$3 );
			fb_StrDelete( (FBSTRING*)&TMP$841$3 );
		}
		label$691:;
		label$690:;
	}
	goto label$688;
	label$689:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 131072) == 0 ) goto label$695;
	{
		int32 TMP$842$2;
		FBSTRING TMP$847$2;
		FBSTRING TMP$848$2;
		FBSTRING TMP$849$2;
		FBSTRING TMP$850$2;
		*(int32*)((uint8*)&CTX$ + 148) = *(int32*)((uint8*)&CTX$ + 148) + 1;
		if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$696;
		int32 vr$38 = FBGETOPTION( 0 );
		TMP$842$2 = -(vr$38 == 2);
		goto label$3079;
		label$696:;
		TMP$842$2 = 0;
		label$3079:;
		if( TMP$842$2 == 0 ) goto label$698;
		{
			FBSTRING TMP$844$3;
			__builtin_memset( &TMP$844$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$844$3, -1, (void*)".fini_array", 12, 0 );
			ASM_SECTION( &TMP$844$3 );
			fb_StrDelete( (FBSTRING*)&TMP$844$3 );
		}
		goto label$697;
		label$698:;
		{
			FBSTRING TMP$846$3;
			__builtin_memset( &TMP$846$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$846$3, -1, (void*)".dtors", 7, 0 );
			ASM_SECTION( &TMP$846$3 );
			fb_StrDelete( (FBSTRING*)&TMP$846$3 );
		}
		label$697:;
		__builtin_memset( &TMP$847$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$847$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$847$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$847$2 );
		__builtin_memset( &TMP$849$2, 0, 12 );
		uint8* vr$53 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$848$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$848$2, (void*)".quad ", 7, (void*)vr$53, 0 );
		fb_StrAssign( (void*)&TMP$849$2, -1, (void*)vr$56, -1, 0 );
		HWRITEASM64( &TMP$849$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$849$2 );
		__builtin_memset( &TMP$850$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$850$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$850$2 );
		fb_StrDelete( (FBSTRING*)&TMP$850$2 );
	}
	label$695:;
	label$688:;
	label$685:;
}

static void _EMITEND( void )
{
	label$699:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	*(int32*)((uint8*)&CTX$ + 4) = 2;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HMAYBEEMITGLOBALVAR );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	IRFOREACHDATASTMT( (tmp$41)&HEMITVARIABLE );
	SYMBFOREACHGLOBAL( 3, (tmp$41)&HADDGLOBALCTORDTOR );
	if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$702;
	{
		FBSTRING TMP$851$2;
		__builtin_memset( &TMP$851$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$851$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$851$2 );
		fb_StrDelete( (FBSTRING*)&TMP$851$2 );
		if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$704;
		{
			FBSTRING TMP$853$3;
			FBSTRING TMP$855$3;
			__builtin_memset( &TMP$853$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$853$3, -1, (void*)".local $totalstacksize", 23, 0 );
			HWRITEASM64( &TMP$853$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$853$3 );
			__builtin_memset( &TMP$855$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$855$3, -1, (void*)".comm $totalstacksize,8,8", 26, 0 );
			HWRITEASM64( &TMP$855$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$855$3 );
		}
		goto label$703;
		label$704:;
		{
			FBSTRING TMP$857$3;
			__builtin_memset( &TMP$857$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$857$3, -1, (void*)".lcomm $totalstacksize,8,8", 27, 0 );
			HWRITEASM64( &TMP$857$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$857$3 );
		}
		label$703:;
	}
	label$702:;
	label$701:;
	if( -(*(boolean*)((uint8*)&CTX$ + 152)) != -1 ) goto label$706;
	{
		FBSTRING TMP$858$2;
		int32 TMP$871$2;
		FBSTRING TMP$874$2;
		FBSTRING TMP$876$2;
		FBSTRING TMP$877$2;
		FBSTRING TMP$879$2;
		FBSTRING TMP$881$2;
		FBSTRING TMP$883$2;
		FBSTRING TMP$885$2;
		FBSTRING TMP$887$2;
		FBSTRING TMP$889$2;
		FBSTRING TMP$891$2;
		FBSTRING TMP$893$2;
		FBSTRING TMP$895$2;
		FBSTRING TMP$897$2;
		FBSTRING TMP$899$2;
		FBSTRING TMP$901$2;
		__builtin_memset( &TMP$858$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$858$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$858$2 );
		fb_StrDelete( (FBSTRING*)&TMP$858$2 );
		if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$708;
		{
			FBSTRING TMP$860$3;
			FBSTRING TMP$862$3;
			FBSTRING TMP$864$3;
			FBSTRING TMP$866$3;
			__builtin_memset( &TMP$860$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$860$3, -1, (void*)".local $mxcsr", 14, 0 );
			HWRITEASM64( &TMP$860$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$860$3 );
			__builtin_memset( &TMP$862$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$862$3, -1, (void*)".comm $mxcsr,8,8", 17, 0 );
			HWRITEASM64( &TMP$862$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$862$3 );
			__builtin_memset( &TMP$864$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$864$3, -1, (void*)".local $sse41", 14, 0 );
			HWRITEASM64( &TMP$864$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$864$3 );
			__builtin_memset( &TMP$866$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$866$3, -1, (void*)".comm $sse41,4,8", 17, 0 );
			HWRITEASM64( &TMP$866$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$866$3 );
		}
		goto label$707;
		label$708:;
		{
			FBSTRING TMP$868$3;
			FBSTRING TMP$870$3;
			__builtin_memset( &TMP$868$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$868$3, -1, (void*)".lcomm $mxcsr,8,8", 18, 0 );
			HWRITEASM64( &TMP$868$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$868$3 );
			__builtin_memset( &TMP$870$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$870$3, -1, (void*)".lcomm $sse41,4,8", 18, 0 );
			HWRITEASM64( &TMP$870$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$870$3 );
		}
		label$707:;
		if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$709;
		int32 vr$49 = FBGETOPTION( 0 );
		TMP$871$2 = -(vr$49 == 2);
		goto label$3080;
		label$709:;
		TMP$871$2 = 0;
		label$3080:;
		if( TMP$871$2 == 0 ) goto label$711;
		{
			FBSTRING TMP$872$3;
			__builtin_memset( &TMP$872$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$872$3, -1, (void*)".init_array", 12, 0 );
			ASM_SECTION( &TMP$872$3 );
			fb_StrDelete( (FBSTRING*)&TMP$872$3 );
		}
		goto label$710;
		label$711:;
		{
			FBSTRING TMP$873$3;
			__builtin_memset( &TMP$873$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$873$3, -1, (void*)".ctors", 7, 0 );
			ASM_SECTION( &TMP$873$3 );
			fb_StrDelete( (FBSTRING*)&TMP$873$3 );
		}
		label$710:;
		__builtin_memset( &TMP$874$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$874$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$874$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$874$2 );
		__builtin_memset( &TMP$876$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$876$2, -1, (void*)".quad $sse41_test", 18, 0 );
		HWRITEASM64( &TMP$876$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$876$2 );
		__builtin_memset( &TMP$877$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$877$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$877$2 );
		fb_StrDelete( (FBSTRING*)&TMP$877$2 );
		__builtin_memset( &TMP$879$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$879$2, -1, (void*)"$sse41_test:", 13, 0 );
		HWRITEASM64( &TMP$879$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$879$2 );
		__builtin_memset( &TMP$881$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$881$2, -1, (void*)"push rbx", 9, 0 );
		HWRITEASM64( &TMP$881$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$881$2 );
		__builtin_memset( &TMP$883$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$883$2, -1, (void*)"push rcx", 9, 0 );
		HWRITEASM64( &TMP$883$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$883$2 );
		__builtin_memset( &TMP$885$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$885$2, -1, (void*)"push rdx", 9, 0 );
		HWRITEASM64( &TMP$885$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$885$2 );
		__builtin_memset( &TMP$887$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$887$2, -1, (void*)"mov  eax, 1", 12, 0 );
		HWRITEASM64( &TMP$887$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$887$2 );
		__builtin_memset( &TMP$889$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$889$2, -1, (void*)"cpuid", 6, 0 );
		HWRITEASM64( &TMP$889$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$889$2 );
		__builtin_memset( &TMP$891$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$891$2, -1, (void*)"and ecx, 0b10000000000000000000", 32, 0 );
		HWRITEASM64( &TMP$891$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$891$2 );
		__builtin_memset( &TMP$893$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$893$2, -1, (void*)"mov $sse41[rip], ecx", 21, 0 );
		HWRITEASM64( &TMP$893$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$893$2 );
		__builtin_memset( &TMP$895$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$895$2, -1, (void*)"pop rdx", 8, 0 );
		HWRITEASM64( &TMP$895$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$895$2 );
		__builtin_memset( &TMP$897$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$897$2, -1, (void*)"pop rcx", 8, 0 );
		HWRITEASM64( &TMP$897$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$897$2 );
		__builtin_memset( &TMP$899$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$899$2, -1, (void*)"pop rbx", 8, 0 );
		HWRITEASM64( &TMP$899$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$899$2 );
		__builtin_memset( &TMP$901$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$901$2, -1, (void*)"ret", 4, 0 );
		HWRITEASM64( &TMP$901$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$901$2 );
	}
	label$706:;
	label$705:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$713;
	{
		FBSTRING TMP$902$2;
		FBSTRING TMP$903$2;
		FBSTRING TMP$904$2;
		FBSTRING TMP$905$2;
		FBSTRING LNAME$2;
		uint8* vr$119 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$119, 0, 0 );
		__builtin_memset( &TMP$902$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$902$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$902$2, (uint8)100u, (int16)0, &LNAME$2 );
		fb_StrDelete( (FBSTRING*)&TMP$902$2 );
		__builtin_memset( &TMP$903$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$903$2, -1, (void*)".text", 6, 0 );
		HWRITEASM64( &TMP$903$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$903$2 );
		__builtin_memset( &TMP$905$2, 0, 12 );
		__builtin_memset( &TMP$904$2, 0, 12 );
		FBSTRING* vr$134 = fb_StrConcat( &TMP$904$2, (void*)&LNAME$2, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$905$2, -1, (void*)vr$134, -1, 0 );
		HWRITEASM64( &TMP$905$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$905$2 );
		DBG_EMITSTAB(  );
		DBG_EMITSTR(  );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$713:;
	label$712:;
	int32 vr$140 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 8), -1 );
	if( vr$140 == 0 ) goto label$715;
	{
	}
	label$715:;
	label$714:;
	int32 vr$142 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 20), -1 );
	if( vr$142 == 0 ) goto label$717;
	{
	}
	label$717:;
	label$716:;
	int32 vr$144 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 32), -1 );
	if( vr$144 == 0 ) goto label$719;
	{
	}
	label$719:;
	label$718:;
	int32 vr$145 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 580) );
	if( vr$145 == 0 ) goto label$721;
	{
	}
	label$721:;
	label$720:;
	*(int32*)((uint8*)&ENV$ + 580) = 0;
	label$700:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$722:;
	{
		if( OPT$1 != 1 ) goto label$725;
		label$726:;
		{
			fb$result$1 = 0;
			goto label$723;
		}
		goto label$724;
		label$725:;
		{
			ERRREPORTEX( 21, (uint8*)"_GETOPTIONVALUE", 0, 1, (uint8*)0u );
		}
		label$727:;
		label$724:;
	}
	label$723:;
	return fb$result$1;
}

static int32 _SUPPORTSOP( int32 OP$1, int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$728:;
	{
		uint32 TMP$907$2;
		TMP$907$2 = (uint32)OP$1;
		goto label$731;
		label$732:;
		{
			int32 TMP$908$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$733;
			TMP$908$3 = 24;
			goto label$3081;
			label$733:;
			TMP$908$3 = DTYPE$1 & 31;
			label$3081:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$908$3 * 28)) != 1 ) goto label$735;
			{
				fb$result$1 = 0;
				goto label$729;
			}
			goto label$734;
			label$735:;
			{
				fb$result$1 = -1;
				goto label$729;
			}
			label$734:;
		}
		goto label$730;
		label$736:;
		{
			fb$result$1 = 0;
			goto label$729;
		}
		goto label$730;
		label$737:;
		{
			fb$result$1 = -1;
			goto label$729;
		}
		goto label$730;
		label$738:;
		{
			fb$result$1 = -1;
		}
		goto label$730;
		label$731:;
		static const void* tmp$4041[16] = {
			&&label$737,
			&&label$738,
			&&label$737,
			&&label$738,
			&&label$737,
			&&label$732,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$737,
			&&label$736,
			&&label$736,
		};
		if( (TMP$907$2 - 52u) > 15u ) goto label$738;
		goto *tmp$4041[TMP$907$2 - 52u];
		label$730:;
	}
	label$729:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$739:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$740:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$741:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$742:;
}

static int32 PARAM_ANALYZE( $11FB_DATATYPE DTYPE$1, struct $8FBSYMBOL* STRUC$1, int32* CPTARG$1, int32* CPTINT$1, int32* CPTFLOAT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$743:;
	struct $8FBSYMBOL* FLD$1;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 INTCPT$1;
	__builtin_memset( &INTCPT$1, 0, 4 );
	int32 FLOATCPT$1;
	__builtin_memset( &FLOATCPT$1, 0, 4 );
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$746;
	{
		if( DTYPE$1 == 20 ) goto label$748;
		{
			int32 TMP$909$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$749;
			TMP$909$3 = 24;
			goto label$3082;
			label$749:;
			TMP$909$3 = DTYPE$1 & 31;
			label$3082:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$909$3 * 28)) != 1 ) goto label$751;
			{
				if( *CPTFLOAT$1 >= 8 ) goto label$753;
				{
					*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
					fb$result$1 = 1;
					goto label$744;
				}
				goto label$752;
				label$753:;
				{
					*CPTARG$1 = *CPTARG$1 + 1;
					fb$result$1 = 10;
					goto label$744;
				}
				label$752:;
			}
			goto label$750;
			label$751:;
			{
				if( *CPTINT$1 >= 6 ) goto label$755;
				{
					*CPTINT$1 = *CPTINT$1 + 1;
					fb$result$1 = 0;
					goto label$744;
				}
				goto label$754;
				label$755:;
				{
					*CPTARG$1 = *CPTARG$1 + 1;
					fb$result$1 = 10;
					goto label$744;
				}
				label$754:;
			}
			label$750:;
		}
		goto label$747;
		label$748:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)STRUC$1 + 40);
			if( LGT$1 > (*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368) << (1 & 31)) ) goto label$757;
			{
				{
					uint32 TMP$910$5;
					int32 vr$24 = HGETMAGICSTRUCTNUMBER( STRUC$1 );
					TMP$910$5 = (uint32)vr$24;
					goto label$759;
					label$760:;
					{
						if( *CPTINT$1 >= 6 ) goto label$762;
						{
							*CPTINT$1 = *CPTINT$1 + 1;
							fb$result$1 = 0;
							goto label$744;
						}
						label$762:;
						label$761:;
					}
					goto label$758;
					label$763:;
					{
						if( *CPTFLOAT$1 >= 8 ) goto label$765;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							fb$result$1 = 1;
							goto label$744;
						}
						label$765:;
						label$764:;
					}
					goto label$758;
					label$766:;
					{
						if( *CPTINT$1 >= 5 ) goto label$768;
						{
							*CPTINT$1 = *CPTINT$1 + 2;
							fb$result$1 = 2;
							goto label$744;
						}
						label$768:;
						label$767:;
					}
					goto label$758;
					label$769:;
					{
						if( (-(*CPTINT$1 < 6) & -(*CPTFLOAT$1 < 8)) == 0 ) goto label$771;
						{
							*CPTINT$1 = *CPTINT$1 + 1;
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							fb$result$1 = 3;
							goto label$744;
						}
						label$771:;
						label$770:;
					}
					goto label$758;
					label$772:;
					{
						if( (-(*CPTINT$1 < 6) & -(*CPTFLOAT$1 < 8)) == 0 ) goto label$774;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							*CPTINT$1 = *CPTINT$1 + 1;
							fb$result$1 = 4;
							goto label$744;
						}
						label$774:;
						label$773:;
					}
					goto label$758;
					label$775:;
					{
						if( *CPTFLOAT$1 >= 7 ) goto label$777;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 2;
							fb$result$1 = 5;
							goto label$744;
						}
						label$777:;
						label$776:;
					}
					goto label$758;
					label$759:;
					static const void* tmp$4042[10] = {
						&&label$760,
						&&label$763,
						&&label$758,
						&&label$758,
						&&label$766,
						&&label$772,
						&&label$758,
						&&label$758,
						&&label$769,
						&&label$775,
					};
					if( (TMP$910$5 - 1u) > 9u ) goto label$758;
					goto *tmp$4042[TMP$910$5 - 1u];
					label$758:;
				}
			}
			label$757:;
			label$756:;
			fb$result$1 = 10;
			goto label$744;
		}
		label$747:;
	}
	goto label$745;
	label$746:;
	{
		*CPTARG$1 = *CPTARG$1 + 1;
		*CPTINT$1 = *CPTARG$1;
		*CPTFLOAT$1 = *CPTARG$1;
		if( DTYPE$1 == 20 ) goto label$779;
		{
			int32 TMP$911$3;
			if( *CPTARG$1 <= 4 ) goto label$781;
			{
				fb$result$1 = 10;
				goto label$744;
				label$781:;
			}
			if( (DTYPE$1 & 480) == 0 ) goto label$782;
			TMP$911$3 = 24;
			goto label$3083;
			label$782:;
			TMP$911$3 = DTYPE$1 & 31;
			label$3083:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$911$3 * 28)) != 1 ) goto label$784;
			{
				fb$result$1 = 1;
				goto label$744;
			}
			goto label$783;
			label$784:;
			{
				fb$result$1 = 0;
				goto label$744;
			}
			label$783:;
		}
		goto label$778;
		label$779:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)STRUC$1 + 40);
			if( ((((-(LGT$1 > *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368)) | -(LGT$1 == 3)) | -(LGT$1 == 5)) | -(LGT$1 == 6)) | -(LGT$1 == 7)) == 0 ) goto label$786;
			{
				if( *CPTARG$1 <= 4 ) goto label$788;
				{
					fb$result$1 = 13;
					goto label$744;
				}
				goto label$787;
				label$788:;
				{
					fb$result$1 = 12;
					goto label$744;
				}
				label$787:;
			}
			label$786:;
			label$785:;
			struct $8FBSYMBOL* vr$86 = SYMBUDTGETFIRSTFIELD( STRUC$1 );
			FLD$1 = vr$86;
			label$789:;
			if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$790;
			{
				int32 TMP$912$4;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 480) == 0 ) goto label$791;
				TMP$912$4 = 24;
				goto label$3084;
				label$791:;
				TMP$912$4 = *(int32*)((uint8*)FLD$1 + 28) & 31;
				label$3084:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$912$4 * 28)) != 1 ) goto label$793;
				{
					FLOATCPT$1 = FLOATCPT$1 + 1;
				}
				goto label$792;
				label$793:;
				{
					INTCPT$1 = INTCPT$1 + 1;
				}
				label$792:;
				struct $8FBSYMBOL* vr$94 = SYMBUDTGETNEXTFIELD( FLD$1 );
				FLD$1 = vr$94;
			}
			goto label$789;
			label$790:;
			if( (-(FLOATCPT$1 == 1) & -(INTCPT$1 == 0)) == 0 ) goto label$795;
			{
				if( *CPTARG$1 <= 4 ) goto label$797;
				{
					fb$result$1 = 11;
					goto label$744;
				}
				goto label$796;
				label$797:;
				{
					fb$result$1 = 1;
					goto label$744;
				}
				label$796:;
			}
			goto label$794;
			label$795:;
			{
				if( *CPTARG$1 <= 4 ) goto label$799;
				{
					fb$result$1 = 11;
					goto label$744;
				}
				goto label$798;
				label$799:;
				{
					fb$result$1 = 0;
					goto label$744;
				}
				label$798:;
			}
			label$794:;
		}
		label$778:;
	}
	label$745:;
	label$744:;
	return fb$result$1;
}

static void REG_FILLM( int32 OFS$1, struct $7FBARRAYIiE* LISTREG$1, int32 LGT$1, int32 PREV$1, int32 OFFST$1 )
{
	label$800:;
	{
		uint32 TMP$913$2;
		TMP$913$2 = (uint32)(LGT$1 - OFFST$1);
		goto label$803;
		label$804:;
		{
			FBSTRING TMP$914$3;
			FBSTRING TMP$915$3;
			FBSTRING TMP$916$3;
			FBSTRING TMP$917$3;
			__builtin_memset( &TMP$917$3, 0, 12 );
			FBSTRING* vr$8 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$914$3, 0, 12 );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$914$3, (void*)"mov ", 5, (void*)vr$8, -1 );
			__builtin_memset( &TMP$915$3, 0, 12 );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$915$3, (void*)vr$11, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$916$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$916$3, (void*)vr$14, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$917$3, -1, (void*)vr$17, -1, 0 );
			HWRITEASM64( &TMP$917$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$917$3 );
		}
		goto label$802;
		label$805:;
		{
			FBSTRING TMP$918$3;
			FBSTRING TMP$919$3;
			FBSTRING TMP$920$3;
			FBSTRING TMP$921$3;
			__builtin_memset( &TMP$921$3, 0, 12 );
			FBSTRING* vr$28 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$918$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$918$3, (void*)"mov ", 5, (void*)vr$28, -1 );
			__builtin_memset( &TMP$919$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$919$3, (void*)vr$31, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$920$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$920$3, (void*)vr$34, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$921$3, -1, (void*)vr$37, -1, 0 );
			HWRITEASM64( &TMP$921$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$921$3 );
		}
		goto label$802;
		label$806:;
		{
			FBSTRING TMP$922$3;
			FBSTRING TMP$923$3;
			FBSTRING TMP$924$3;
			FBSTRING TMP$925$3;
			FBSTRING TMP$928$3;
			FBSTRING TMP$929$3;
			FBSTRING TMP$930$3;
			FBSTRING TMP$931$3;
			FBSTRING TMP$932$3;
			FBSTRING TMP$933$3;
			FBSTRING TMP$934$3;
			__builtin_memset( &TMP$925$3, 0, 12 );
			FBSTRING* vr$48 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$922$3, 0, 12 );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$922$3, (void*)"mov ", 5, (void*)vr$48, -1 );
			__builtin_memset( &TMP$923$3, 0, 12 );
			FBSTRING* vr$54 = fb_StrConcat( &TMP$923$3, (void*)vr$51, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$924$3, 0, 12 );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$924$3, (void*)vr$54, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$925$3, -1, (void*)vr$57, -1, 0 );
			HWRITEASM64( &TMP$925$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$925$3 );
			__builtin_memset( &TMP$930$3, 0, 12 );
			__builtin_memset( &TMP$928$3, 0, 12 );
			FBSTRING* vr$69 = fb_StrConcat( &TMP$928$3, (void*)"shr ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$929$3, 0, 12 );
			FBSTRING* vr$72 = fb_StrConcat( &TMP$929$3, (void*)vr$69, -1, (void*)", 16", 5 );
			fb_StrAssign( (void*)&TMP$930$3, -1, (void*)vr$72, -1, 0 );
			HWRITEASM64( &TMP$930$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$930$3 );
			__builtin_memset( &TMP$934$3, 0, 12 );
			FBSTRING* vr$84 = fb_IntToStr( (OFS$1 + OFFST$1) + 2 );
			__builtin_memset( &TMP$931$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$931$3, (void*)"mov ", 5, (void*)vr$84, -1 );
			__builtin_memset( &TMP$932$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$932$3, (void*)vr$87, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$933$3, 0, 12 );
			FBSTRING* vr$93 = fb_StrConcat( &TMP$933$3, (void*)vr$90, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$934$3, -1, (void*)vr$93, -1, 0 );
			HWRITEASM64( &TMP$934$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$934$3 );
		}
		goto label$802;
		label$807:;
		{
			FBSTRING TMP$935$3;
			FBSTRING TMP$936$3;
			FBSTRING TMP$937$3;
			FBSTRING TMP$938$3;
			__builtin_memset( &TMP$938$3, 0, 12 );
			FBSTRING* vr$104 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$935$3, 0, 12 );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$935$3, (void*)"mov ", 5, (void*)vr$104, -1 );
			__builtin_memset( &TMP$936$3, 0, 12 );
			FBSTRING* vr$110 = fb_StrConcat( &TMP$936$3, (void*)vr$107, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$937$3, 0, 12 );
			FBSTRING* vr$113 = fb_StrConcat( &TMP$937$3, (void*)vr$110, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$938$3, -1, (void*)vr$113, -1, 0 );
			HWRITEASM64( &TMP$938$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$938$3 );
		}
		goto label$802;
		label$808:;
		{
			FBSTRING TMP$939$3;
			FBSTRING TMP$940$3;
			FBSTRING TMP$941$3;
			FBSTRING TMP$942$3;
			FBSTRING TMP$944$3;
			FBSTRING TMP$945$3;
			FBSTRING TMP$946$3;
			FBSTRING TMP$947$3;
			FBSTRING TMP$948$3;
			FBSTRING TMP$949$3;
			FBSTRING TMP$950$3;
			__builtin_memset( &TMP$942$3, 0, 12 );
			FBSTRING* vr$124 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$939$3, 0, 12 );
			FBSTRING* vr$127 = fb_StrConcat( &TMP$939$3, (void*)"mov ", 5, (void*)vr$124, -1 );
			__builtin_memset( &TMP$940$3, 0, 12 );
			FBSTRING* vr$130 = fb_StrConcat( &TMP$940$3, (void*)vr$127, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$941$3, 0, 12 );
			FBSTRING* vr$133 = fb_StrConcat( &TMP$941$3, (void*)vr$130, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$942$3, -1, (void*)vr$133, -1, 0 );
			HWRITEASM64( &TMP$942$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$942$3 );
			__builtin_memset( &TMP$946$3, 0, 12 );
			__builtin_memset( &TMP$944$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$944$3, (void*)"shr ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$945$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$945$3, (void*)vr$145, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$946$3, -1, (void*)vr$148, -1, 0 );
			HWRITEASM64( &TMP$946$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$946$3 );
			__builtin_memset( &TMP$950$3, 0, 12 );
			FBSTRING* vr$160 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$947$3, 0, 12 );
			FBSTRING* vr$163 = fb_StrConcat( &TMP$947$3, (void*)"mov ", 5, (void*)vr$160, -1 );
			__builtin_memset( &TMP$948$3, 0, 12 );
			FBSTRING* vr$166 = fb_StrConcat( &TMP$948$3, (void*)vr$163, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$949$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$949$3, (void*)vr$166, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$950$3, -1, (void*)vr$169, -1, 0 );
			HWRITEASM64( &TMP$950$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$950$3 );
		}
		goto label$802;
		label$809:;
		{
			FBSTRING TMP$951$3;
			FBSTRING TMP$952$3;
			FBSTRING TMP$953$3;
			FBSTRING TMP$954$3;
			FBSTRING TMP$955$3;
			FBSTRING TMP$956$3;
			FBSTRING TMP$957$3;
			FBSTRING TMP$958$3;
			FBSTRING TMP$959$3;
			FBSTRING TMP$960$3;
			FBSTRING TMP$961$3;
			__builtin_memset( &TMP$954$3, 0, 12 );
			FBSTRING* vr$180 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$951$3, 0, 12 );
			FBSTRING* vr$183 = fb_StrConcat( &TMP$951$3, (void*)"mov ", 5, (void*)vr$180, -1 );
			__builtin_memset( &TMP$952$3, 0, 12 );
			FBSTRING* vr$186 = fb_StrConcat( &TMP$952$3, (void*)vr$183, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$953$3, 0, 12 );
			FBSTRING* vr$189 = fb_StrConcat( &TMP$953$3, (void*)vr$186, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$954$3, -1, (void*)vr$189, -1, 0 );
			HWRITEASM64( &TMP$954$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$954$3 );
			__builtin_memset( &TMP$957$3, 0, 12 );
			__builtin_memset( &TMP$955$3, 0, 12 );
			FBSTRING* vr$201 = fb_StrConcat( &TMP$955$3, (void*)"shr ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$956$3, 0, 12 );
			FBSTRING* vr$204 = fb_StrConcat( &TMP$956$3, (void*)vr$201, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$957$3, -1, (void*)vr$204, -1, 0 );
			HWRITEASM64( &TMP$957$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$957$3 );
			__builtin_memset( &TMP$961$3, 0, 12 );
			FBSTRING* vr$216 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$958$3, 0, 12 );
			FBSTRING* vr$219 = fb_StrConcat( &TMP$958$3, (void*)"mov ", 5, (void*)vr$216, -1 );
			__builtin_memset( &TMP$959$3, 0, 12 );
			FBSTRING* vr$222 = fb_StrConcat( &TMP$959$3, (void*)vr$219, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$960$3, 0, 12 );
			FBSTRING* vr$225 = fb_StrConcat( &TMP$960$3, (void*)vr$222, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$961$3, -1, (void*)vr$225, -1, 0 );
			HWRITEASM64( &TMP$961$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$961$3 );
		}
		goto label$802;
		label$810:;
		{
			FBSTRING TMP$962$3;
			FBSTRING TMP$963$3;
			FBSTRING TMP$964$3;
			FBSTRING TMP$965$3;
			FBSTRING TMP$966$3;
			FBSTRING TMP$967$3;
			FBSTRING TMP$968$3;
			FBSTRING TMP$969$3;
			FBSTRING TMP$970$3;
			FBSTRING TMP$971$3;
			FBSTRING TMP$972$3;
			FBSTRING TMP$973$3;
			FBSTRING TMP$974$3;
			FBSTRING TMP$975$3;
			FBSTRING TMP$976$3;
			FBSTRING TMP$977$3;
			FBSTRING TMP$978$3;
			FBSTRING TMP$979$3;
			__builtin_memset( &TMP$965$3, 0, 12 );
			FBSTRING* vr$236 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$962$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$962$3, (void*)"mov ", 5, (void*)vr$236, -1 );
			__builtin_memset( &TMP$963$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$963$3, (void*)vr$239, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$964$3, 0, 12 );
			FBSTRING* vr$245 = fb_StrConcat( &TMP$964$3, (void*)vr$242, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$965$3, -1, (void*)vr$245, -1, 0 );
			HWRITEASM64( &TMP$965$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$965$3 );
			__builtin_memset( &TMP$968$3, 0, 12 );
			__builtin_memset( &TMP$966$3, 0, 12 );
			FBSTRING* vr$257 = fb_StrConcat( &TMP$966$3, (void*)"shr ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$967$3, 0, 12 );
			FBSTRING* vr$260 = fb_StrConcat( &TMP$967$3, (void*)vr$257, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$968$3, -1, (void*)vr$260, -1, 0 );
			HWRITEASM64( &TMP$968$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$968$3 );
			__builtin_memset( &TMP$972$3, 0, 12 );
			FBSTRING* vr$272 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$969$3, 0, 12 );
			FBSTRING* vr$275 = fb_StrConcat( &TMP$969$3, (void*)"mov ", 5, (void*)vr$272, -1 );
			__builtin_memset( &TMP$970$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$970$3, (void*)vr$275, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$971$3, 0, 12 );
			FBSTRING* vr$281 = fb_StrConcat( &TMP$971$3, (void*)vr$278, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$972$3, -1, (void*)vr$281, -1, 0 );
			HWRITEASM64( &TMP$972$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$972$3 );
			__builtin_memset( &TMP$975$3, 0, 12 );
			__builtin_memset( &TMP$973$3, 0, 12 );
			FBSTRING* vr$293 = fb_StrConcat( &TMP$973$3, (void*)"shr ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$974$3, 0, 12 );
			FBSTRING* vr$296 = fb_StrConcat( &TMP$974$3, (void*)vr$293, -1, (void*)", 16", 5 );
			fb_StrAssign( (void*)&TMP$975$3, -1, (void*)vr$296, -1, 0 );
			HWRITEASM64( &TMP$975$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$975$3 );
			__builtin_memset( &TMP$979$3, 0, 12 );
			FBSTRING* vr$308 = fb_IntToStr( (OFS$1 + OFFST$1) + 6 );
			__builtin_memset( &TMP$976$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$976$3, (void*)"mov ", 5, (void*)vr$308, -1 );
			__builtin_memset( &TMP$977$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$977$3, (void*)vr$311, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$978$3, 0, 12 );
			FBSTRING* vr$317 = fb_StrConcat( &TMP$978$3, (void*)vr$314, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$979$3, -1, (void*)vr$317, -1, 0 );
			HWRITEASM64( &TMP$979$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$979$3 );
		}
		goto label$802;
		label$811:;
		{
			FBSTRING TMP$980$3;
			FBSTRING TMP$981$3;
			FBSTRING TMP$982$3;
			FBSTRING TMP$983$3;
			__builtin_memset( &TMP$983$3, 0, 12 );
			FBSTRING* vr$328 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$980$3, 0, 12 );
			FBSTRING* vr$331 = fb_StrConcat( &TMP$980$3, (void*)"mov ", 5, (void*)vr$328, -1 );
			__builtin_memset( &TMP$981$3, 0, 12 );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$981$3, (void*)vr$331, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$982$3, 0, 12 );
			FBSTRING* vr$337 = fb_StrConcat( &TMP$982$3, (void*)vr$334, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$983$3, -1, (void*)vr$337, -1, 0 );
			HWRITEASM64( &TMP$983$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$983$3 );
		}
		goto label$802;
		label$803:;
		static const void* tmp$4043[8] = {
			&&label$804,
			&&label$805,
			&&label$806,
			&&label$807,
			&&label$808,
			&&label$809,
			&&label$810,
			&&label$811,
		};
		if( (TMP$913$2 - 1u) > 7u ) goto label$802;
		goto *tmp$4043[TMP$913$2 - 1u];
		label$802:;
	}
	label$801:;
}

static void REG_FILLR( int32 LGT$1, FBSTRING* SRC$1, int32 CPTINT$1, struct $7FBARRAYIiE* LISTREG$1, int32 REG2$1 )
{
	label$812:;
	uint8* REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4 );
	FBSTRING REGDST$1;
	fb_StrInit( (void*)&REGDST$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0, 0 );
	if( LGT$1 <= 8 ) goto label$815;
	{
		LGT$1 = LGT$1 + -8;
		if( (uint32)(int32)*(uint8*)*(uint8**)SRC$1 != 45u ) goto label$817;
		{
			FBSTRING TMP$984$3;
			FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5 );
			int32 vr$11 = fb_StrInstr( 1, (FBSTRING*)SRC$1, (FBSTRING*)vr$10 );
			FBSTRING* vr$13 = fb_LEFT( (FBSTRING*)SRC$1, vr$11 + -1 );
			int32 vr$14 = fb_VALINT( (FBSTRING*)vr$13 );
			FBSTRING* vr$16 = fb_IntToStr( vr$14 + 8 );
			__builtin_memset( &TMP$984$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$984$3, (void*)vr$16, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)vr$19, -1, 0 );
		}
		goto label$816;
		label$817:;
		{
			FBSTRING TMP$986$3;
			FBSTRING TMP$987$3;
			FBSTRING TMP$989$3;
			__builtin_memset( &TMP$987$3, 0, 12 );
			__builtin_memset( &TMP$986$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$986$3, (void*)"lea rax, ", 10, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$987$3, -1, (void*)vr$23, -1, 0 );
			HWRITEASM64( &TMP$987$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$987$3 );
			__builtin_memset( &TMP$989$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$989$3, -1, (void*)"add rax, 8", 11, 0 );
			HWRITEASM64( &TMP$989$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$989$3 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)"[rax]", 6, 0 );
		}
		label$816:;
	}
	label$815:;
	label$814:;
	if( (((-(LGT$1 != 1) & -(LGT$1 != 2)) & -(LGT$1 != 4)) & -(LGT$1 != 8)) == 0 ) goto label$819;
	{
		uint8* vr$38 = REG_TEMPO(  );
		REGSRC$1 = vr$38;
	}
	label$819:;
	label$818:;
	REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1), REG2$1 );
	{
		uint32 TMP$991$2;
		TMP$991$2 = (uint32)LGT$1;
		goto label$821;
		label$822:;
		{
			FBSTRING TMP$994$3;
			FBSTRING TMP$995$3;
			FBSTRING TMP$996$3;
			FBSTRING TMP$997$3;
			__builtin_memset( &TMP$997$3, 0, 12 );
			__builtin_memset( &TMP$994$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$994$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$995$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$995$3, (void*)vr$46, -1, (void*)", BYTE PTR ", 12 );
			__builtin_memset( &TMP$996$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$996$3, (void*)vr$49, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$997$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$997$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$997$3 );
		}
		goto label$820;
		label$823:;
		{
			FBSTRING TMP$999$3;
			FBSTRING TMP$1000$3;
			FBSTRING TMP$1001$3;
			FBSTRING TMP$1002$3;
			__builtin_memset( &TMP$1002$3, 0, 12 );
			__builtin_memset( &TMP$999$3, 0, 12 );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$999$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1000$3, 0, 12 );
			FBSTRING* vr$63 = fb_StrConcat( &TMP$1000$3, (void*)vr$60, -1, (void*)", WORD PTR ", 12 );
			__builtin_memset( &TMP$1001$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$1001$3, (void*)vr$63, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1002$3, -1, (void*)vr$66, -1, 0 );
			HWRITEASM64( &TMP$1002$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1002$3 );
		}
		goto label$820;
		label$824:;
		{
			FBSTRING TMP$1003$3;
			FBSTRING TMP$1004$3;
			FBSTRING TMP$1005$3;
			FBSTRING TMP$1006$3;
			FBSTRING TMP$1008$3;
			FBSTRING TMP$1009$3;
			FBSTRING TMP$1010$3;
			FBSTRING TMP$1011$3;
			FBSTRING TMP$1012$3;
			FBSTRING TMP$1014$3;
			FBSTRING TMP$1015$3;
			FBSTRING TMP$1016$3;
			FBSTRING TMP$1018$3;
			FBSTRING TMP$1021$3;
			FBSTRING TMP$1022$3;
			FBSTRING TMP$1023$3;
			__builtin_memset( &TMP$1006$3, 0, 12 );
			__builtin_memset( &TMP$1003$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$1003$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1004$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$1004$3, (void*)vr$73, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1005$3, 0, 12 );
			FBSTRING* vr$79 = fb_StrConcat( &TMP$1005$3, (void*)vr$76, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1006$3, -1, (void*)vr$79, -1, 0 );
			HWRITEASM64( &TMP$1006$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1006$3 );
			__builtin_memset( &TMP$1012$3, 0, 12 );
			__builtin_memset( &TMP$1008$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1008$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1009$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$1009$3, (void*)vr$87, -1, (void*)", WORD PTR [", 13 );
			__builtin_memset( &TMP$1010$3, 0, 12 );
			FBSTRING* vr$93 = fb_StrConcat( &TMP$1010$3, (void*)vr$90, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1011$3, 0, 12 );
			FBSTRING* vr$96 = fb_StrConcat( &TMP$1011$3, (void*)vr$93, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1012$3, -1, (void*)vr$96, -1, 0 );
			HWRITEASM64( &TMP$1012$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1012$3 );
			__builtin_memset( &TMP$1016$3, 0, 12 );
			__builtin_memset( &TMP$1014$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$1014$3, (void*)"movzx eax, BYTE PTR 2[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1015$3, 0, 12 );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$1015$3, (void*)vr$103, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1016$3, -1, (void*)vr$106, -1, 0 );
			HWRITEASM64( &TMP$1016$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1016$3 );
			__builtin_memset( &TMP$1018$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1018$3, -1, (void*)"shl rax, 16", 12, 0 );
			HWRITEASM64( &TMP$1018$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1018$3 );
			__builtin_memset( &TMP$1023$3, 0, 12 );
			__builtin_memset( &TMP$1021$3, 0, 12 );
			FBSTRING* vr$118 = fb_StrConcat( &TMP$1021$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1022$3, 0, 12 );
			FBSTRING* vr$121 = fb_StrConcat( &TMP$1022$3, (void*)vr$118, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1023$3, -1, (void*)vr$121, -1, 0 );
			HWRITEASM64( &TMP$1023$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1023$3 );
		}
		goto label$820;
		label$825:;
		{
			FBSTRING TMP$1025$3;
			FBSTRING TMP$1026$3;
			FBSTRING TMP$1027$3;
			FBSTRING TMP$1028$3;
			__builtin_memset( &TMP$1028$3, 0, 12 );
			__builtin_memset( &TMP$1025$3, 0, 12 );
			FBSTRING* vr$132 = fb_StrConcat( &TMP$1025$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1026$3, 0, 12 );
			FBSTRING* vr$135 = fb_StrConcat( &TMP$1026$3, (void*)vr$132, -1, (void*)", DWORD PTR ", 13 );
			__builtin_memset( &TMP$1027$3, 0, 12 );
			FBSTRING* vr$138 = fb_StrConcat( &TMP$1027$3, (void*)vr$135, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1028$3, -1, (void*)vr$138, -1, 0 );
			HWRITEASM64( &TMP$1028$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1028$3 );
		}
		goto label$820;
		label$826:;
		{
			FBSTRING TMP$1029$3;
			FBSTRING TMP$1030$3;
			FBSTRING TMP$1031$3;
			FBSTRING TMP$1032$3;
			FBSTRING TMP$1034$3;
			FBSTRING TMP$1035$3;
			FBSTRING TMP$1036$3;
			FBSTRING TMP$1037$3;
			FBSTRING TMP$1038$3;
			FBSTRING TMP$1040$3;
			FBSTRING TMP$1041$3;
			FBSTRING TMP$1042$3;
			FBSTRING TMP$1044$3;
			FBSTRING TMP$1045$3;
			FBSTRING TMP$1046$3;
			FBSTRING TMP$1047$3;
			__builtin_memset( &TMP$1032$3, 0, 12 );
			__builtin_memset( &TMP$1029$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$1029$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1030$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$1030$3, (void*)vr$145, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1031$3, 0, 12 );
			FBSTRING* vr$151 = fb_StrConcat( &TMP$1031$3, (void*)vr$148, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1032$3, -1, (void*)vr$151, -1, 0 );
			HWRITEASM64( &TMP$1032$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1032$3 );
			__builtin_memset( &TMP$1038$3, 0, 12 );
			__builtin_memset( &TMP$1034$3, 0, 12 );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$1034$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1035$3, 0, 12 );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$1035$3, (void*)vr$162, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$1036$3, 0, 12 );
			FBSTRING* vr$168 = fb_StrConcat( &TMP$1036$3, (void*)vr$165, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1037$3, 0, 12 );
			FBSTRING* vr$171 = fb_StrConcat( &TMP$1037$3, (void*)vr$168, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1038$3, -1, (void*)vr$171, -1, 0 );
			HWRITEASM64( &TMP$1038$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1038$3 );
			__builtin_memset( &TMP$1042$3, 0, 12 );
			__builtin_memset( &TMP$1040$3, 0, 12 );
			FBSTRING* vr$178 = fb_StrConcat( &TMP$1040$3, (void*)"movzx eax, BYTE PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1041$3, 0, 12 );
			FBSTRING* vr$181 = fb_StrConcat( &TMP$1041$3, (void*)vr$178, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1042$3, -1, (void*)vr$181, -1, 0 );
			HWRITEASM64( &TMP$1042$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1042$3 );
			__builtin_memset( &TMP$1044$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1044$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$1044$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1044$3 );
			__builtin_memset( &TMP$1047$3, 0, 12 );
			__builtin_memset( &TMP$1045$3, 0, 12 );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$1045$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1046$3, 0, 12 );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$1046$3, (void*)vr$193, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1047$3, -1, (void*)vr$196, -1, 0 );
			HWRITEASM64( &TMP$1047$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1047$3 );
		}
		goto label$820;
		label$827:;
		{
			FBSTRING TMP$1048$3;
			FBSTRING TMP$1049$3;
			FBSTRING TMP$1050$3;
			FBSTRING TMP$1051$3;
			FBSTRING TMP$1052$3;
			FBSTRING TMP$1053$3;
			FBSTRING TMP$1054$3;
			FBSTRING TMP$1055$3;
			FBSTRING TMP$1056$3;
			FBSTRING TMP$1058$3;
			FBSTRING TMP$1059$3;
			FBSTRING TMP$1060$3;
			FBSTRING TMP$1061$3;
			FBSTRING TMP$1062$3;
			FBSTRING TMP$1063$3;
			FBSTRING TMP$1064$3;
			__builtin_memset( &TMP$1051$3, 0, 12 );
			__builtin_memset( &TMP$1048$3, 0, 12 );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$1048$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1049$3, 0, 12 );
			FBSTRING* vr$206 = fb_StrConcat( &TMP$1049$3, (void*)vr$203, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1050$3, 0, 12 );
			FBSTRING* vr$209 = fb_StrConcat( &TMP$1050$3, (void*)vr$206, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1051$3, -1, (void*)vr$209, -1, 0 );
			HWRITEASM64( &TMP$1051$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1051$3 );
			__builtin_memset( &TMP$1056$3, 0, 12 );
			__builtin_memset( &TMP$1052$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$1052$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1053$3, 0, 12 );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$1053$3, (void*)vr$220, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$1054$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$1054$3, (void*)vr$223, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1055$3, 0, 12 );
			FBSTRING* vr$229 = fb_StrConcat( &TMP$1055$3, (void*)vr$226, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1056$3, -1, (void*)vr$229, -1, 0 );
			HWRITEASM64( &TMP$1056$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1056$3 );
			__builtin_memset( &TMP$1060$3, 0, 12 );
			__builtin_memset( &TMP$1058$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$1058$3, (void*)"movzx eax, WORD PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1059$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$1059$3, (void*)vr$236, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1060$3, -1, (void*)vr$239, -1, 0 );
			HWRITEASM64( &TMP$1060$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1060$3 );
			__builtin_memset( &TMP$1061$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1061$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$1061$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1061$3 );
			__builtin_memset( &TMP$1064$3, 0, 12 );
			__builtin_memset( &TMP$1062$3, 0, 12 );
			FBSTRING* vr$251 = fb_StrConcat( &TMP$1062$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1063$3, 0, 12 );
			FBSTRING* vr$254 = fb_StrConcat( &TMP$1063$3, (void*)vr$251, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1064$3, -1, (void*)vr$254, -1, 0 );
			HWRITEASM64( &TMP$1064$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1064$3 );
		}
		goto label$820;
		label$828:;
		{
			FBSTRING TMP$1065$3;
			FBSTRING TMP$1066$3;
			FBSTRING TMP$1067$3;
			FBSTRING TMP$1068$3;
			FBSTRING TMP$1069$3;
			FBSTRING TMP$1070$3;
			FBSTRING TMP$1071$3;
			FBSTRING TMP$1072$3;
			FBSTRING TMP$1073$3;
			FBSTRING TMP$1074$3;
			FBSTRING TMP$1075$3;
			FBSTRING TMP$1076$3;
			FBSTRING TMP$1077$3;
			FBSTRING TMP$1078$3;
			FBSTRING TMP$1079$3;
			FBSTRING TMP$1080$3;
			FBSTRING TMP$1082$3;
			FBSTRING TMP$1083$3;
			FBSTRING TMP$1084$3;
			FBSTRING TMP$1086$3;
			FBSTRING TMP$1087$3;
			FBSTRING TMP$1088$3;
			FBSTRING TMP$1089$3;
			__builtin_memset( &TMP$1068$3, 0, 12 );
			__builtin_memset( &TMP$1065$3, 0, 12 );
			FBSTRING* vr$261 = fb_StrConcat( &TMP$1065$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1066$3, 0, 12 );
			FBSTRING* vr$264 = fb_StrConcat( &TMP$1066$3, (void*)vr$261, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1067$3, 0, 12 );
			FBSTRING* vr$267 = fb_StrConcat( &TMP$1067$3, (void*)vr$264, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1068$3, -1, (void*)vr$267, -1, 0 );
			HWRITEASM64( &TMP$1068$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1068$3 );
			__builtin_memset( &TMP$1073$3, 0, 12 );
			__builtin_memset( &TMP$1069$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$1069$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1070$3, 0, 12 );
			FBSTRING* vr$281 = fb_StrConcat( &TMP$1070$3, (void*)vr$278, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$1071$3, 0, 12 );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$1071$3, (void*)vr$281, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1072$3, 0, 12 );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$1072$3, (void*)vr$284, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1073$3, -1, (void*)vr$287, -1, 0 );
			HWRITEASM64( &TMP$1073$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1073$3 );
			__builtin_memset( &TMP$1076$3, 0, 12 );
			__builtin_memset( &TMP$1074$3, 0, 12 );
			FBSTRING* vr$294 = fb_StrConcat( &TMP$1074$3, (void*)"movzx eax, WORD PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1075$3, 0, 12 );
			FBSTRING* vr$297 = fb_StrConcat( &TMP$1075$3, (void*)vr$294, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1076$3, -1, (void*)vr$297, -1, 0 );
			HWRITEASM64( &TMP$1076$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1076$3 );
			__builtin_memset( &TMP$1077$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1077$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$1077$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1077$3 );
			__builtin_memset( &TMP$1080$3, 0, 12 );
			__builtin_memset( &TMP$1078$3, 0, 12 );
			FBSTRING* vr$309 = fb_StrConcat( &TMP$1078$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1079$3, 0, 12 );
			FBSTRING* vr$312 = fb_StrConcat( &TMP$1079$3, (void*)vr$309, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1080$3, -1, (void*)vr$312, -1, 0 );
			HWRITEASM64( &TMP$1080$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1080$3 );
			__builtin_memset( &TMP$1084$3, 0, 12 );
			__builtin_memset( &TMP$1082$3, 0, 12 );
			FBSTRING* vr$319 = fb_StrConcat( &TMP$1082$3, (void*)"movzx eax, BYTE PTR 6[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1083$3, 0, 12 );
			FBSTRING* vr$322 = fb_StrConcat( &TMP$1083$3, (void*)vr$319, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1084$3, -1, (void*)vr$322, -1, 0 );
			HWRITEASM64( &TMP$1084$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1084$3 );
			__builtin_memset( &TMP$1086$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1086$3, -1, (void*)"shl rax, 48", 12, 0 );
			HWRITEASM64( &TMP$1086$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1086$3 );
			__builtin_memset( &TMP$1089$3, 0, 12 );
			__builtin_memset( &TMP$1087$3, 0, 12 );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$1087$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1088$3, 0, 12 );
			FBSTRING* vr$337 = fb_StrConcat( &TMP$1088$3, (void*)vr$334, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1089$3, -1, (void*)vr$337, -1, 0 );
			HWRITEASM64( &TMP$1089$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1089$3 );
		}
		goto label$820;
		label$829:;
		{
			FBSTRING TMP$1090$3;
			FBSTRING TMP$1091$3;
			FBSTRING TMP$1092$3;
			FBSTRING TMP$1093$3;
			__builtin_memset( &TMP$1093$3, 0, 12 );
			__builtin_memset( &TMP$1090$3, 0, 12 );
			FBSTRING* vr$345 = fb_StrConcat( &TMP$1090$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1091$3, 0, 12 );
			FBSTRING* vr$348 = fb_StrConcat( &TMP$1091$3, (void*)vr$345, -1, (void*)", QWORD PTR ", 13 );
			__builtin_memset( &TMP$1092$3, 0, 12 );
			FBSTRING* vr$351 = fb_StrConcat( &TMP$1092$3, (void*)vr$348, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1093$3, -1, (void*)vr$351, -1, 0 );
			HWRITEASM64( &TMP$1093$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1093$3 );
		}
		goto label$820;
		label$821:;
		static const void* tmp$4044[8] = {
			&&label$822,
			&&label$823,
			&&label$824,
			&&label$825,
			&&label$826,
			&&label$827,
			&&label$828,
			&&label$829,
		};
		if( (TMP$991$2 - 1u) > 7u ) goto label$820;
		goto *tmp$4044[TMP$991$2 - 1u];
		label$820:;
	}
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	label$813:;
}

static void REG_FILLX( int32 LGT$1, FBSTRING* SRC$1, int32 CPTFLOAT$1 )
{
	label$830:;
	if( LGT$1 <= 8 ) goto label$833;
	{
		LGT$1 = LGT$1 + -8;
		if( (uint32)(int32)*(uint8*)*(uint8**)SRC$1 != 45u ) goto label$835;
		{
			FBSTRING TMP$1094$3;
			FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5 );
			int32 vr$5 = fb_StrInstr( 1, (FBSTRING*)SRC$1, (FBSTRING*)vr$4 );
			FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)SRC$1, vr$5 + -1 );
			int32 vr$8 = fb_VALINT( (FBSTRING*)vr$7 );
			FBSTRING* vr$10 = fb_IntToStr( vr$8 + 8 );
			__builtin_memset( &TMP$1094$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$1094$3, (void*)vr$10, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)vr$13, -1, 0 );
		}
		goto label$834;
		label$835:;
		{
			FBSTRING TMP$1095$3;
			FBSTRING TMP$1096$3;
			FBSTRING TMP$1097$3;
			__builtin_memset( &TMP$1096$3, 0, 12 );
			__builtin_memset( &TMP$1095$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$1095$3, (void*)"lea rax, ", 10, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1096$3, -1, (void*)vr$17, -1, 0 );
			HWRITEASM64( &TMP$1096$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1096$3 );
			__builtin_memset( &TMP$1097$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1097$3, -1, (void*)"add rax, 8", 11, 0 );
			HWRITEASM64( &TMP$1097$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1097$3 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)"[rax]", 6, 0 );
		}
		label$834:;
	}
	label$833:;
	label$832:;
	if( LGT$1 != 4 ) goto label$837;
	{
		FBSTRING TMP$1099$2;
		FBSTRING TMP$1100$2;
		FBSTRING TMP$1101$2;
		FBSTRING TMP$1102$2;
		__builtin_memset( &TMP$1102$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( CPTFLOAT$1 + -1 );
		__builtin_memset( &TMP$1099$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1099$2, (void*)"movd xmm", 9, (void*)vr$27, -1 );
		__builtin_memset( &TMP$1100$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1100$2, (void*)vr$30, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1101$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1101$2, (void*)vr$33, -1, (void*)SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1102$2, -1, (void*)vr$36, -1, 0 );
		HWRITEASM64( &TMP$1102$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1102$2 );
	}
	goto label$836;
	label$837:;
	{
		FBSTRING TMP$1104$2;
		FBSTRING TMP$1105$2;
		FBSTRING TMP$1106$2;
		FBSTRING TMP$1107$2;
		__builtin_memset( &TMP$1107$2, 0, 12 );
		FBSTRING* vr$42 = fb_IntToStr( CPTFLOAT$1 + -1 );
		__builtin_memset( &TMP$1104$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1104$2, (void*)"movq xmm", 9, (void*)vr$42, -1 );
		__builtin_memset( &TMP$1105$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1105$2, (void*)vr$45, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1106$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1106$2, (void*)vr$48, -1, (void*)SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1107$2, -1, (void*)vr$51, -1, 0 );
		HWRITEASM64( &TMP$1107$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1107$2 );
	}
	label$836:;
	label$831:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$838:;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	int32 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 4 );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 4 );
	FBSTRING REGSTR$1;
	__builtin_memset( &REGSTR$1, 0, 12 );
	FBSTRING REGX$1;
	__builtin_memset( &REGX$1, 0, 12 );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$841;
	{
		$19FB_CVA_LIST_TYPEDEF vr$11 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
		if( (-((DTYPE$1 & 480) == 0) & -(vr$11 == 3)) == 0 ) goto label$843;
		{
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) = *(int32*)((uint8*)SYM$1 + 4) ^ 32768;
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) = *(int32*)((uint8*)SYM$1 + 4) | 65536;
		}
		label$843:;
		label$842:;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$845;
		{
			if( (DTYPE$1 & 511) != 20 ) goto label$847;
			{
				int32 TMP$1108$4;
				TMP$1108$4 = 0;
				int32 vr$27 = PARAM_ANALYZE( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), &TMP$1108$4, (int32*)((uint8*)&CTX$ + 84), (int32*)((uint8*)&CTX$ + 88) );
				PARAMTYPE$1 = vr$27;
				if( PARAMTYPE$1 != 10 ) goto label$849;
				{
					*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
					*(int32*)((uint8*)&CTX$ + 92) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 92) + *(int64*)((uint8*)SYM$1 + 40));
				}
				goto label$848;
				label$849:;
				{
					LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
					*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
					*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
					{
						uint32 TMP$1109$6;
						TMP$1109$6 = (uint32)PARAMTYPE$1;
						goto label$851;
						label$852:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 0 );
						}
						goto label$850;
						label$853:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, 8, 1, 0 );
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 8 );
						}
						goto label$850;
						label$854:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, 8, 0, 0 );
							if( LGT$1 >= 13 ) goto label$856;
							{
								FBSTRING TMP$1112$8;
								FBSTRING TMP$1113$8;
								FBSTRING TMP$1114$8;
								FBSTRING TMP$1115$8;
								__builtin_memset( &TMP$1115$8, 0, 12 );
								FBSTRING* vr$57 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$60 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1112$8, 0, 12 );
								FBSTRING* vr$63 = fb_StrConcat( &TMP$1112$8, (void*)"movd ", 6, (void*)vr$60, -1 );
								__builtin_memset( &TMP$1113$8, 0, 12 );
								FBSTRING* vr$66 = fb_StrConcat( &TMP$1113$8, (void*)vr$63, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1114$8, 0, 12 );
								FBSTRING* vr$69 = fb_StrConcat( &TMP$1114$8, (void*)vr$66, -1, (void*)vr$57, -1 );
								fb_StrAssign( (void*)&TMP$1115$8, -1, (void*)vr$69, -1, 0 );
								HWRITEASM64( &TMP$1115$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1115$8 );
							}
							goto label$855;
							label$856:;
							{
								FBSTRING TMP$1117$8;
								FBSTRING TMP$1118$8;
								FBSTRING TMP$1119$8;
								FBSTRING TMP$1120$8;
								__builtin_memset( &TMP$1120$8, 0, 12 );
								FBSTRING* vr$75 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1117$8, 0, 12 );
								FBSTRING* vr$81 = fb_StrConcat( &TMP$1117$8, (void*)"movq ", 6, (void*)vr$78, -1 );
								__builtin_memset( &TMP$1118$8, 0, 12 );
								FBSTRING* vr$84 = fb_StrConcat( &TMP$1118$8, (void*)vr$81, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1119$8, 0, 12 );
								FBSTRING* vr$87 = fb_StrConcat( &TMP$1119$8, (void*)vr$84, -1, (void*)vr$75, -1 );
								fb_StrAssign( (void*)&TMP$1120$8, -1, (void*)vr$87, -1, 0 );
								HWRITEASM64( &TMP$1120$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1120$8 );
							}
							label$855:;
						}
						goto label$850;
						label$857:;
						{
							if( LGT$1 != 4 ) goto label$859;
							{
								FBSTRING TMP$1121$8;
								FBSTRING TMP$1122$8;
								FBSTRING TMP$1123$8;
								FBSTRING TMP$1124$8;
								__builtin_memset( &TMP$1124$8, 0, 12 );
								FBSTRING* vr$93 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$95 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1121$8, 0, 12 );
								FBSTRING* vr$98 = fb_StrConcat( &TMP$1121$8, (void*)"movd ", 6, (void*)vr$95, -1 );
								__builtin_memset( &TMP$1122$8, 0, 12 );
								FBSTRING* vr$101 = fb_StrConcat( &TMP$1122$8, (void*)vr$98, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1123$8, 0, 12 );
								FBSTRING* vr$104 = fb_StrConcat( &TMP$1123$8, (void*)vr$101, -1, (void*)vr$93, -1 );
								fb_StrAssign( (void*)&TMP$1124$8, -1, (void*)vr$104, -1, 0 );
								HWRITEASM64( &TMP$1124$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1124$8 );
							}
							goto label$858;
							label$859:;
							{
								FBSTRING TMP$1125$8;
								FBSTRING TMP$1126$8;
								FBSTRING TMP$1127$8;
								FBSTRING TMP$1128$8;
								__builtin_memset( &TMP$1128$8, 0, 12 );
								FBSTRING* vr$110 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$112 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1125$8, 0, 12 );
								FBSTRING* vr$115 = fb_StrConcat( &TMP$1125$8, (void*)"movq ", 6, (void*)vr$112, -1 );
								__builtin_memset( &TMP$1126$8, 0, 12 );
								FBSTRING* vr$118 = fb_StrConcat( &TMP$1126$8, (void*)vr$115, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1127$8, 0, 12 );
								FBSTRING* vr$121 = fb_StrConcat( &TMP$1127$8, (void*)vr$118, -1, (void*)vr$110, -1 );
								fb_StrAssign( (void*)&TMP$1128$8, -1, (void*)vr$121, -1, 0 );
								HWRITEASM64( &TMP$1128$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1128$8 );
							}
							label$858:;
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 8 );
						}
						goto label$850;
						label$860:;
						{
							if( LGT$1 != 4 ) goto label$862;
							{
								FBSTRING TMP$1129$8;
								FBSTRING TMP$1130$8;
								FBSTRING TMP$1131$8;
								FBSTRING TMP$1132$8;
								__builtin_memset( &TMP$1132$8, 0, 12 );
								FBSTRING* vr$129 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$131 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1129$8, 0, 12 );
								FBSTRING* vr$134 = fb_StrConcat( &TMP$1129$8, (void*)"movd ", 6, (void*)vr$131, -1 );
								__builtin_memset( &TMP$1130$8, 0, 12 );
								FBSTRING* vr$137 = fb_StrConcat( &TMP$1130$8, (void*)vr$134, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1131$8, 0, 12 );
								FBSTRING* vr$140 = fb_StrConcat( &TMP$1131$8, (void*)vr$137, -1, (void*)vr$129, -1 );
								fb_StrAssign( (void*)&TMP$1132$8, -1, (void*)vr$140, -1, 0 );
								HWRITEASM64( &TMP$1132$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1132$8 );
							}
							goto label$861;
							label$862:;
							{
								FBSTRING TMP$1133$8;
								FBSTRING TMP$1134$8;
								FBSTRING TMP$1135$8;
								FBSTRING TMP$1136$8;
								__builtin_memset( &TMP$1136$8, 0, 12 );
								FBSTRING* vr$146 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$148 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1133$8, 0, 12 );
								FBSTRING* vr$151 = fb_StrConcat( &TMP$1133$8, (void*)"movq ", 6, (void*)vr$148, -1 );
								__builtin_memset( &TMP$1134$8, 0, 12 );
								FBSTRING* vr$154 = fb_StrConcat( &TMP$1134$8, (void*)vr$151, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1135$8, 0, 12 );
								FBSTRING* vr$157 = fb_StrConcat( &TMP$1135$8, (void*)vr$154, -1, (void*)vr$146, -1 );
								fb_StrAssign( (void*)&TMP$1136$8, -1, (void*)vr$157, -1, 0 );
								HWRITEASM64( &TMP$1136$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1136$8 );
							}
							label$861:;
						}
						goto label$850;
						label$863:;
						{
							FBSTRING TMP$1137$7;
							FBSTRING TMP$1138$7;
							FBSTRING TMP$1139$7;
							FBSTRING TMP$1140$7;
							__builtin_memset( &TMP$1140$7, 0, 12 );
							FBSTRING* vr$163 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -2 );
							FBSTRING* vr$165 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1137$7, 0, 12 );
							FBSTRING* vr$168 = fb_StrConcat( &TMP$1137$7, (void*)"movq ", 6, (void*)vr$165, -1 );
							__builtin_memset( &TMP$1138$7, 0, 12 );
							FBSTRING* vr$171 = fb_StrConcat( &TMP$1138$7, (void*)vr$168, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1139$7, 0, 12 );
							FBSTRING* vr$174 = fb_StrConcat( &TMP$1139$7, (void*)vr$171, -1, (void*)vr$163, -1 );
							fb_StrAssign( (void*)&TMP$1140$7, -1, (void*)vr$174, -1, 0 );
							HWRITEASM64( &TMP$1140$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1140$7 );
							if( LGT$1 >= 13 ) goto label$865;
							{
								FBSTRING TMP$1141$8;
								FBSTRING TMP$1142$8;
								FBSTRING TMP$1143$8;
								FBSTRING TMP$1144$8;
								__builtin_memset( &TMP$1144$8, 0, 12 );
								FBSTRING* vr$180 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$183 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1141$8, 0, 12 );
								FBSTRING* vr$186 = fb_StrConcat( &TMP$1141$8, (void*)"movd ", 6, (void*)vr$183, -1 );
								__builtin_memset( &TMP$1142$8, 0, 12 );
								FBSTRING* vr$189 = fb_StrConcat( &TMP$1142$8, (void*)vr$186, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1143$8, 0, 12 );
								FBSTRING* vr$192 = fb_StrConcat( &TMP$1143$8, (void*)vr$189, -1, (void*)vr$180, -1 );
								fb_StrAssign( (void*)&TMP$1144$8, -1, (void*)vr$192, -1, 0 );
								HWRITEASM64( &TMP$1144$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1144$8 );
							}
							goto label$864;
							label$865:;
							{
								FBSTRING TMP$1145$8;
								FBSTRING TMP$1146$8;
								FBSTRING TMP$1147$8;
								FBSTRING TMP$1148$8;
								__builtin_memset( &TMP$1148$8, 0, 12 );
								FBSTRING* vr$198 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$201 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1145$8, 0, 12 );
								FBSTRING* vr$204 = fb_StrConcat( &TMP$1145$8, (void*)"movq ", 6, (void*)vr$201, -1 );
								__builtin_memset( &TMP$1146$8, 0, 12 );
								FBSTRING* vr$207 = fb_StrConcat( &TMP$1146$8, (void*)vr$204, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1147$8, 0, 12 );
								FBSTRING* vr$210 = fb_StrConcat( &TMP$1147$8, (void*)vr$207, -1, (void*)vr$198, -1 );
								fb_StrAssign( (void*)&TMP$1148$8, -1, (void*)vr$210, -1, 0 );
								HWRITEASM64( &TMP$1148$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1148$8 );
							}
							label$864:;
						}
						goto label$850;
						label$851:;
						static const void* tmp$4045[6] = {
							&&label$852,
							&&label$860,
							&&label$853,
							&&label$854,
							&&label$857,
							&&label$863,
						};
						if( TMP$1109$6 > 5u ) goto label$850;
						goto *tmp$4045[TMP$1109$6 - 0u];
						label$850:;
					}
				}
				label$848:;
			}
			goto label$846;
			label$847:;
			{
				int32 TMP$1149$4;
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
				if( (DTYPE$1 & 480) == 0 ) goto label$866;
				TMP$1149$4 = 24;
				goto label$3085;
				label$866:;
				TMP$1149$4 = DTYPE$1 & 31;
				label$3085:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1149$4 * 28)) != 1 ) goto label$868;
				{
					*(int32*)((uint8*)&CTX$ + 88) = *(int32*)((uint8*)&CTX$ + 88) + 1;
					if( *(int32*)((uint8*)&CTX$ + 88) > 8 ) goto label$870;
					{
						*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
						*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
						if( LGT$1 != 4 ) goto label$872;
						{
							FBSTRING TMP$1150$7;
							FBSTRING TMP$1151$7;
							FBSTRING TMP$1152$7;
							FBSTRING TMP$1153$7;
							__builtin_memset( &TMP$1153$7, 0, 12 );
							FBSTRING* vr$233 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
							FBSTRING* vr$235 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1150$7, 0, 12 );
							FBSTRING* vr$238 = fb_StrConcat( &TMP$1150$7, (void*)"movd ", 6, (void*)vr$235, -1 );
							__builtin_memset( &TMP$1151$7, 0, 12 );
							FBSTRING* vr$241 = fb_StrConcat( &TMP$1151$7, (void*)vr$238, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1152$7, 0, 12 );
							FBSTRING* vr$244 = fb_StrConcat( &TMP$1152$7, (void*)vr$241, -1, (void*)vr$233, -1 );
							fb_StrAssign( (void*)&TMP$1153$7, -1, (void*)vr$244, -1, 0 );
							HWRITEASM64( &TMP$1153$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1153$7 );
						}
						goto label$871;
						label$872:;
						{
							FBSTRING TMP$1154$7;
							FBSTRING TMP$1155$7;
							FBSTRING TMP$1156$7;
							FBSTRING TMP$1157$7;
							__builtin_memset( &TMP$1157$7, 0, 12 );
							FBSTRING* vr$250 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
							FBSTRING* vr$252 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1154$7, 0, 12 );
							FBSTRING* vr$255 = fb_StrConcat( &TMP$1154$7, (void*)"movq ", 6, (void*)vr$252, -1 );
							__builtin_memset( &TMP$1155$7, 0, 12 );
							FBSTRING* vr$258 = fb_StrConcat( &TMP$1155$7, (void*)vr$255, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1156$7, 0, 12 );
							FBSTRING* vr$261 = fb_StrConcat( &TMP$1156$7, (void*)vr$258, -1, (void*)vr$250, -1 );
							fb_StrAssign( (void*)&TMP$1157$7, -1, (void*)vr$261, -1, 0 );
							HWRITEASM64( &TMP$1157$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1157$7 );
						}
						label$871:;
					}
					goto label$869;
					label$870:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
					}
					label$869:;
				}
				goto label$867;
				label$868:;
				{
					*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
					if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$874;
					{
						*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
						*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
						{
							uint32 TMP$1158$7;
							TMP$1158$7 = (uint32)LGT$1;
							goto label$876;
							label$877:;
							{
								FBSTRING TMP$1160$8;
								FBSTRING TMP$1161$8;
								FBSTRING TMP$1162$8;
								FBSTRING TMP$1163$8;
								__builtin_memset( &TMP$1163$8, 0, 12 );
								FBSTRING* vr$285 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1160$8, 0, 12 );
								FBSTRING* vr$288 = fb_StrConcat( &TMP$1160$8, (void*)"mov BYTE PTR ", 14, (void*)vr$285, -1 );
								__builtin_memset( &TMP$1161$8, 0, 12 );
								FBSTRING* vr$291 = fb_StrConcat( &TMP$1161$8, (void*)vr$288, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1162$8, 0, 12 );
								FBSTRING* vr$294 = fb_StrConcat( &TMP$1162$8, (void*)vr$291, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1163$8, -1, (void*)vr$294, -1, 0 );
								HWRITEASM64( &TMP$1163$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1163$8 );
							}
							goto label$875;
							label$878:;
							{
								FBSTRING TMP$1165$8;
								FBSTRING TMP$1166$8;
								FBSTRING TMP$1167$8;
								FBSTRING TMP$1168$8;
								__builtin_memset( &TMP$1168$8, 0, 12 );
								FBSTRING* vr$303 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1165$8, 0, 12 );
								FBSTRING* vr$306 = fb_StrConcat( &TMP$1165$8, (void*)"mov WORD PTR ", 14, (void*)vr$303, -1 );
								__builtin_memset( &TMP$1166$8, 0, 12 );
								FBSTRING* vr$309 = fb_StrConcat( &TMP$1166$8, (void*)vr$306, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1167$8, 0, 12 );
								FBSTRING* vr$312 = fb_StrConcat( &TMP$1167$8, (void*)vr$309, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1168$8, -1, (void*)vr$312, -1, 0 );
								HWRITEASM64( &TMP$1168$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1168$8 );
							}
							goto label$875;
							label$879:;
							{
								FBSTRING TMP$1170$8;
								FBSTRING TMP$1171$8;
								FBSTRING TMP$1172$8;
								FBSTRING TMP$1173$8;
								__builtin_memset( &TMP$1173$8, 0, 12 );
								FBSTRING* vr$321 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1170$8, 0, 12 );
								FBSTRING* vr$324 = fb_StrConcat( &TMP$1170$8, (void*)"mov DWORD PTR ", 15, (void*)vr$321, -1 );
								__builtin_memset( &TMP$1171$8, 0, 12 );
								FBSTRING* vr$327 = fb_StrConcat( &TMP$1171$8, (void*)vr$324, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1172$8, 0, 12 );
								FBSTRING* vr$330 = fb_StrConcat( &TMP$1172$8, (void*)vr$327, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1173$8, -1, (void*)vr$330, -1, 0 );
								HWRITEASM64( &TMP$1173$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1173$8 );
							}
							goto label$875;
							label$880:;
							{
								FBSTRING TMP$1174$8;
								FBSTRING TMP$1175$8;
								FBSTRING TMP$1176$8;
								FBSTRING TMP$1177$8;
								__builtin_memset( &TMP$1177$8, 0, 12 );
								FBSTRING* vr$339 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1174$8, 0, 12 );
								FBSTRING* vr$342 = fb_StrConcat( &TMP$1174$8, (void*)"mov QWORD PTR ", 15, (void*)vr$339, -1 );
								__builtin_memset( &TMP$1175$8, 0, 12 );
								FBSTRING* vr$345 = fb_StrConcat( &TMP$1175$8, (void*)vr$342, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1176$8, 0, 12 );
								FBSTRING* vr$348 = fb_StrConcat( &TMP$1176$8, (void*)vr$345, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1177$8, -1, (void*)vr$348, -1, 0 );
								HWRITEASM64( &TMP$1177$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1177$8 );
							}
							goto label$875;
							label$876:;
							static const void* tmp$4046[8] = {
								&&label$877,
								&&label$878,
								&&label$875,
								&&label$879,
								&&label$875,
								&&label$875,
								&&label$875,
								&&label$880,
							};
							if( (TMP$1158$7 - 1u) > 7u ) goto label$875;
							goto *tmp$4046[TMP$1158$7 - 1u];
							label$875:;
						}
					}
					goto label$873;
					label$874:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
					}
					label$873:;
				}
				label$867:;
			}
			label$846:;
		}
		goto label$844;
		label$845:;
		{
			*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
			LGT$1 = 8;
			if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$882;
			{
				FBSTRING TMP$1178$4;
				FBSTRING TMP$1179$4;
				FBSTRING TMP$1180$4;
				FBSTRING TMP$1181$4;
				*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
				*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
				__builtin_memset( &TMP$1181$4, 0, 12 );
				FBSTRING* vr$372 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
				__builtin_memset( &TMP$1178$4, 0, 12 );
				FBSTRING* vr$375 = fb_StrConcat( &TMP$1178$4, (void*)"mov QWORD PTR ", 15, (void*)vr$372, -1 );
				__builtin_memset( &TMP$1179$4, 0, 12 );
				FBSTRING* vr$378 = fb_StrConcat( &TMP$1179$4, (void*)vr$375, -1, (void*)"[rbp], ", 8 );
				__builtin_memset( &TMP$1180$4, 0, 12 );
				FBSTRING* vr$381 = fb_StrConcat( &TMP$1180$4, (void*)vr$378, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1181$4, -1, (void*)vr$381, -1, 0 );
				HWRITEASM64( &TMP$1181$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1181$4 );
			}
			goto label$881;
			label$882:;
			{
				*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
				*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
			}
			label$881:;
		}
		label$844:;
	}
	goto label$840;
	label$841:;
	{
		*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$884;
		{
			if( (DTYPE$1 & 511) != 20 ) goto label$886;
			{
				int32 TMP$1182$4;
				int32 TMP$1183$4;
				TMP$1183$4 = 0;
				TMP$1182$4 = 0;
				int32 vr$396 = PARAM_ANALYZE( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), (int32*)((uint8*)&CTX$ + 84), &TMP$1182$4, &TMP$1183$4 );
				PARAMTYPE$1 = vr$396;
				{
					uint32 TMP$1184$5;
					TMP$1184$5 = (uint32)PARAMTYPE$1;
					goto label$888;
					label$889:;
					{
						*(int64*)((uint8*)&CTX$ + 96) = (((*(int64*)((uint8*)SYM$1 + 40) + *(int64*)((uint8*)&CTX$ + 96)) + *(int64*)((uint8*)SYM$1 + 40)) + -1ll) & ~(*(int64*)((uint8*)SYM$1 + 40) + -1ll);
						*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
						if( PARAMTYPE$1 != 12 ) goto label$891;
						{
							FBSTRING TMP$1185$7;
							FBSTRING TMP$1186$7;
							fb_StrAssign( (void*)&REGSTR$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0, 0 );
							__builtin_memset( &TMP$1186$7, 0, 12 );
							FBSTRING* vr$414 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1185$7, 0, 12 );
							FBSTRING* vr$417 = fb_StrConcat( &TMP$1185$7, (void*)vr$414, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1186$7, -1, (void*)vr$417, -1, 0 );
							int64 vr$421 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( (int32)vr$421, &REGSTR$1, &TMP$1186$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1186$7 );
						}
						goto label$890;
						label$891:;
						{
							FBSTRING TMP$1187$7;
							FBSTRING TMP$1188$7;
							FBSTRING TMP$1189$7;
							FBSTRING TMP$1190$7;
							__builtin_memset( &TMP$1190$7, 0, 12 );
							FBSTRING* vr$426 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1189$7, 0, 12 );
							FBSTRING* vr$429 = fb_StrConcat( &TMP$1189$7, (void*)vr$426, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1190$7, -1, (void*)vr$429, -1, 0 );
							__builtin_memset( &TMP$1188$7, 0, 12 );
							FBSTRING* vr$433 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1187$7, 0, 12 );
							FBSTRING* vr$436 = fb_StrConcat( &TMP$1187$7, (void*)vr$433, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1188$7, -1, (void*)vr$436, -1, 0 );
							int64 vr$439 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( (int32)vr$439, &TMP$1188$7, &TMP$1190$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1190$7 );
							fb_StrDelete( (FBSTRING*)&TMP$1188$7 );
						}
						label$890:;
					}
					goto label$887;
					label$892:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						if( -(*(boolean*)((uint8*)&CTX$ + 224)) != 0 ) goto label$894;
						{
							LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
							if( PARAMTYPE$1 != 1 ) goto label$896;
							{
								if( LGT$1 != 4 ) goto label$898;
								{
									FBSTRING TMP$1191$9;
									FBSTRING TMP$1192$9;
									FBSTRING TMP$1193$9;
									FBSTRING TMP$1194$9;
									__builtin_memset( &TMP$1194$9, 0, 12 );
									FBSTRING* vr$450 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
									FBSTRING* vr$451 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
									__builtin_memset( &TMP$1191$9, 0, 12 );
									FBSTRING* vr$454 = fb_StrConcat( &TMP$1191$9, (void*)"movd ", 6, (void*)vr$451, -1 );
									__builtin_memset( &TMP$1192$9, 0, 12 );
									FBSTRING* vr$457 = fb_StrConcat( &TMP$1192$9, (void*)vr$454, -1, (void*)"[rbp], xmm", 11 );
									__builtin_memset( &TMP$1193$9, 0, 12 );
									FBSTRING* vr$460 = fb_StrConcat( &TMP$1193$9, (void*)vr$457, -1, (void*)vr$450, -1 );
									fb_StrAssign( (void*)&TMP$1194$9, -1, (void*)vr$460, -1, 0 );
									HWRITEASM64( &TMP$1194$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$1194$9 );
								}
								goto label$897;
								label$898:;
								{
									FBSTRING TMP$1195$9;
									FBSTRING TMP$1196$9;
									FBSTRING TMP$1197$9;
									FBSTRING TMP$1198$9;
									__builtin_memset( &TMP$1198$9, 0, 12 );
									FBSTRING* vr$466 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
									FBSTRING* vr$467 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
									__builtin_memset( &TMP$1195$9, 0, 12 );
									FBSTRING* vr$470 = fb_StrConcat( &TMP$1195$9, (void*)"movq ", 6, (void*)vr$467, -1 );
									__builtin_memset( &TMP$1196$9, 0, 12 );
									FBSTRING* vr$473 = fb_StrConcat( &TMP$1196$9, (void*)vr$470, -1, (void*)"[rbp], xmm", 11 );
									__builtin_memset( &TMP$1197$9, 0, 12 );
									FBSTRING* vr$476 = fb_StrConcat( &TMP$1197$9, (void*)vr$473, -1, (void*)vr$466, -1 );
									fb_StrAssign( (void*)&TMP$1198$9, -1, (void*)vr$476, -1, 0 );
									HWRITEASM64( &TMP$1198$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$1198$9 );
								}
								label$897:;
							}
							goto label$895;
							label$896:;
							{
								{
									uint32 TMP$1199$9;
									TMP$1199$9 = (uint32)LGT$1;
									goto label$900;
									label$901:;
									{
										FBSTRING TMP$1200$10;
										FBSTRING TMP$1201$10;
										FBSTRING TMP$1202$10;
										FBSTRING TMP$1203$10;
										__builtin_memset( &TMP$1203$10, 0, 12 );
										FBSTRING* vr$484 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1200$10, 0, 12 );
										FBSTRING* vr$487 = fb_StrConcat( &TMP$1200$10, (void*)"mov BYTE PTR ", 14, (void*)vr$484, -1 );
										__builtin_memset( &TMP$1201$10, 0, 12 );
										FBSTRING* vr$490 = fb_StrConcat( &TMP$1201$10, (void*)vr$487, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1202$10, 0, 12 );
										FBSTRING* vr$493 = fb_StrConcat( &TMP$1202$10, (void*)vr$490, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1203$10, -1, (void*)vr$493, -1, 0 );
										HWRITEASM64( &TMP$1203$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1203$10 );
									}
									goto label$899;
									label$902:;
									{
										FBSTRING TMP$1204$10;
										FBSTRING TMP$1205$10;
										FBSTRING TMP$1206$10;
										FBSTRING TMP$1207$10;
										__builtin_memset( &TMP$1207$10, 0, 12 );
										FBSTRING* vr$501 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1204$10, 0, 12 );
										FBSTRING* vr$504 = fb_StrConcat( &TMP$1204$10, (void*)"mov WORD PTR ", 14, (void*)vr$501, -1 );
										__builtin_memset( &TMP$1205$10, 0, 12 );
										FBSTRING* vr$507 = fb_StrConcat( &TMP$1205$10, (void*)vr$504, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1206$10, 0, 12 );
										FBSTRING* vr$510 = fb_StrConcat( &TMP$1206$10, (void*)vr$507, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1207$10, -1, (void*)vr$510, -1, 0 );
										HWRITEASM64( &TMP$1207$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1207$10 );
									}
									goto label$899;
									label$903:;
									{
										FBSTRING TMP$1208$10;
										FBSTRING TMP$1209$10;
										FBSTRING TMP$1210$10;
										FBSTRING TMP$1211$10;
										__builtin_memset( &TMP$1211$10, 0, 12 );
										FBSTRING* vr$518 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1208$10, 0, 12 );
										FBSTRING* vr$521 = fb_StrConcat( &TMP$1208$10, (void*)"mov DWORD PTR ", 15, (void*)vr$518, -1 );
										__builtin_memset( &TMP$1209$10, 0, 12 );
										FBSTRING* vr$524 = fb_StrConcat( &TMP$1209$10, (void*)vr$521, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1210$10, 0, 12 );
										FBSTRING* vr$527 = fb_StrConcat( &TMP$1210$10, (void*)vr$524, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1211$10, -1, (void*)vr$527, -1, 0 );
										HWRITEASM64( &TMP$1211$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1211$10 );
									}
									goto label$899;
									label$904:;
									{
										FBSTRING TMP$1212$10;
										FBSTRING TMP$1213$10;
										FBSTRING TMP$1214$10;
										FBSTRING TMP$1215$10;
										__builtin_memset( &TMP$1215$10, 0, 12 );
										FBSTRING* vr$535 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1212$10, 0, 12 );
										FBSTRING* vr$538 = fb_StrConcat( &TMP$1212$10, (void*)"mov QWORD PTR ", 15, (void*)vr$535, -1 );
										__builtin_memset( &TMP$1213$10, 0, 12 );
										FBSTRING* vr$541 = fb_StrConcat( &TMP$1213$10, (void*)vr$538, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1214$10, 0, 12 );
										FBSTRING* vr$544 = fb_StrConcat( &TMP$1214$10, (void*)vr$541, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1215$10, -1, (void*)vr$544, -1, 0 );
										HWRITEASM64( &TMP$1215$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1215$10 );
									}
									goto label$899;
									label$900:;
									static const void* tmp$4047[8] = {
										&&label$901,
										&&label$902,
										&&label$899,
										&&label$903,
										&&label$899,
										&&label$899,
										&&label$899,
										&&label$904,
									};
									if( (TMP$1199$9 - 1u) > 7u ) goto label$899;
									goto *tmp$4047[TMP$1199$9 - 1u];
									label$899:;
								}
							}
							label$895:;
						}
						label$894:;
						label$893:;
					}
					goto label$887;
					label$905:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
					}
					goto label$887;
					label$888:;
					static const void* tmp$4048[14] = {
						&&label$892,
						&&label$892,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$889,
						&&label$889,
					};
					if( TMP$1184$5 > 13u ) goto label$905;
					goto *tmp$4048[TMP$1184$5 - 0u];
					label$887:;
				}
			}
			goto label$885;
			label$886:;
			{
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
				*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
				*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
				if( (-(*(int32*)((uint8*)&CTX$ + 84) <= 4) & -(-(*(boolean*)((uint8*)&CTX$ + 224)) == 0)) == 0 ) goto label$907;
				{
					int32 TMP$1216$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$908;
					TMP$1216$5 = 24;
					goto label$3086;
					label$908:;
					TMP$1216$5 = DTYPE$1 & 31;
					label$3086:;
					if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1216$5 * 28)) != 1 ) goto label$910;
					{
						if( LGT$1 != 4 ) goto label$912;
						{
							FBSTRING TMP$1217$7;
							FBSTRING TMP$1218$7;
							FBSTRING TMP$1219$7;
							FBSTRING TMP$1220$7;
							__builtin_memset( &TMP$1220$7, 0, 12 );
							FBSTRING* vr$564 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
							FBSTRING* vr$565 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1217$7, 0, 12 );
							FBSTRING* vr$568 = fb_StrConcat( &TMP$1217$7, (void*)"movd ", 6, (void*)vr$565, -1 );
							__builtin_memset( &TMP$1218$7, 0, 12 );
							FBSTRING* vr$571 = fb_StrConcat( &TMP$1218$7, (void*)vr$568, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1219$7, 0, 12 );
							FBSTRING* vr$574 = fb_StrConcat( &TMP$1219$7, (void*)vr$571, -1, (void*)vr$564, -1 );
							fb_StrAssign( (void*)&TMP$1220$7, -1, (void*)vr$574, -1, 0 );
							HWRITEASM64( &TMP$1220$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1220$7 );
						}
						goto label$911;
						label$912:;
						{
							FBSTRING TMP$1221$7;
							FBSTRING TMP$1222$7;
							FBSTRING TMP$1223$7;
							FBSTRING TMP$1224$7;
							__builtin_memset( &TMP$1224$7, 0, 12 );
							FBSTRING* vr$580 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
							FBSTRING* vr$581 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1221$7, 0, 12 );
							FBSTRING* vr$584 = fb_StrConcat( &TMP$1221$7, (void*)"movq ", 6, (void*)vr$581, -1 );
							__builtin_memset( &TMP$1222$7, 0, 12 );
							FBSTRING* vr$587 = fb_StrConcat( &TMP$1222$7, (void*)vr$584, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1223$7, 0, 12 );
							FBSTRING* vr$590 = fb_StrConcat( &TMP$1223$7, (void*)vr$587, -1, (void*)vr$580, -1 );
							fb_StrAssign( (void*)&TMP$1224$7, -1, (void*)vr$590, -1, 0 );
							HWRITEASM64( &TMP$1224$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1224$7 );
						}
						label$911:;
					}
					goto label$909;
					label$910:;
					{
						{
							uint32 TMP$1225$7;
							TMP$1225$7 = (uint32)LGT$1;
							goto label$914;
							label$915:;
							{
								FBSTRING TMP$1226$8;
								FBSTRING TMP$1227$8;
								FBSTRING TMP$1228$8;
								FBSTRING TMP$1229$8;
								__builtin_memset( &TMP$1229$8, 0, 12 );
								FBSTRING* vr$598 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1226$8, 0, 12 );
								FBSTRING* vr$601 = fb_StrConcat( &TMP$1226$8, (void*)"mov BYTE PTR ", 14, (void*)vr$598, -1 );
								__builtin_memset( &TMP$1227$8, 0, 12 );
								FBSTRING* vr$604 = fb_StrConcat( &TMP$1227$8, (void*)vr$601, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1228$8, 0, 12 );
								FBSTRING* vr$607 = fb_StrConcat( &TMP$1228$8, (void*)vr$604, -1, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1229$8, -1, (void*)vr$607, -1, 0 );
								HWRITEASM64( &TMP$1229$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1229$8 );
							}
							goto label$913;
							label$916:;
							{
								FBSTRING TMP$1230$8;
								FBSTRING TMP$1231$8;
								FBSTRING TMP$1232$8;
								FBSTRING TMP$1233$8;
								__builtin_memset( &TMP$1233$8, 0, 12 );
								FBSTRING* vr$615 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1230$8, 0, 12 );
								FBSTRING* vr$618 = fb_StrConcat( &TMP$1230$8, (void*)"mov WORD PTR ", 14, (void*)vr$615, -1 );
								__builtin_memset( &TMP$1231$8, 0, 12 );
								FBSTRING* vr$621 = fb_StrConcat( &TMP$1231$8, (void*)vr$618, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1232$8, 0, 12 );
								FBSTRING* vr$624 = fb_StrConcat( &TMP$1232$8, (void*)vr$621, -1, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1233$8, -1, (void*)vr$624, -1, 0 );
								HWRITEASM64( &TMP$1233$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1233$8 );
							}
							goto label$913;
							label$917:;
							{
								FBSTRING TMP$1234$8;
								FBSTRING TMP$1235$8;
								FBSTRING TMP$1236$8;
								FBSTRING TMP$1237$8;
								__builtin_memset( &TMP$1237$8, 0, 12 );
								FBSTRING* vr$632 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1234$8, 0, 12 );
								FBSTRING* vr$635 = fb_StrConcat( &TMP$1234$8, (void*)"mov DWORD PTR ", 15, (void*)vr$632, -1 );
								__builtin_memset( &TMP$1235$8, 0, 12 );
								FBSTRING* vr$638 = fb_StrConcat( &TMP$1235$8, (void*)vr$635, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1236$8, 0, 12 );
								FBSTRING* vr$641 = fb_StrConcat( &TMP$1236$8, (void*)vr$638, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1237$8, -1, (void*)vr$641, -1, 0 );
								HWRITEASM64( &TMP$1237$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1237$8 );
							}
							goto label$913;
							label$918:;
							{
								FBSTRING TMP$1238$8;
								FBSTRING TMP$1239$8;
								FBSTRING TMP$1240$8;
								FBSTRING TMP$1241$8;
								__builtin_memset( &TMP$1241$8, 0, 12 );
								FBSTRING* vr$649 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1238$8, 0, 12 );
								FBSTRING* vr$652 = fb_StrConcat( &TMP$1238$8, (void*)"mov QWORD PTR ", 15, (void*)vr$649, -1 );
								__builtin_memset( &TMP$1239$8, 0, 12 );
								FBSTRING* vr$655 = fb_StrConcat( &TMP$1239$8, (void*)vr$652, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1240$8, 0, 12 );
								FBSTRING* vr$658 = fb_StrConcat( &TMP$1240$8, (void*)vr$655, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1241$8, -1, (void*)vr$658, -1, 0 );
								HWRITEASM64( &TMP$1241$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1241$8 );
							}
							goto label$913;
							label$914:;
							static const void* tmp$4049[8] = {
								&&label$915,
								&&label$916,
								&&label$913,
								&&label$917,
								&&label$913,
								&&label$913,
								&&label$913,
								&&label$918,
							};
							if( (TMP$1225$7 - 1u) > 7u ) goto label$913;
							goto *tmp$4049[TMP$1225$7 - 1u];
							label$913:;
						}
					}
					label$909:;
				}
				label$907:;
				label$906:;
			}
			label$885:;
		}
		goto label$883;
		label$884:;
		{
			*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
			*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
			if( (-(*(int32*)((uint8*)&CTX$ + 84) <= 4) & -(-(*(boolean*)((uint8*)&CTX$ + 224)) == 0)) == 0 ) goto label$920;
			{
				FBSTRING TMP$1242$4;
				FBSTRING TMP$1243$4;
				FBSTRING TMP$1244$4;
				FBSTRING TMP$1245$4;
				__builtin_memset( &TMP$1245$4, 0, 12 );
				FBSTRING* vr$673 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
				__builtin_memset( &TMP$1242$4, 0, 12 );
				FBSTRING* vr$676 = fb_StrConcat( &TMP$1242$4, (void*)"mov QWORD PTR ", 15, (void*)vr$673, -1 );
				__builtin_memset( &TMP$1243$4, 0, 12 );
				FBSTRING* vr$679 = fb_StrConcat( &TMP$1243$4, (void*)vr$676, -1, (void*)"[rbp], ", 8 );
				__builtin_memset( &TMP$1244$4, 0, 12 );
				FBSTRING* vr$682 = fb_StrConcat( &TMP$1244$4, (void*)vr$679, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1245$4, -1, (void*)vr$682, -1, 0 );
				HWRITEASM64( &TMP$1245$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1245$4 );
			}
			label$920:;
			label$919:;
		}
		label$883:;
	}
	label$840:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$922;
	{
		EDBGEMITPROCARG_ASM64( SYM$1 );
		label$922:;
	}
	fb_StrDelete( (FBSTRING*)&REGX$1 );
	fb_StrDelete( (FBSTRING*)&REGSTR$1 );
	label$839:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$923:;
	HEMITVARIABLE( SYM$1 );
	label$924:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* SYM$1 )
{
	label$925:;
	*(int32*)((uint8*)&CTX$ + 4) = 2;
	label$927:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$928;
	{
		{
			$12FB_SYMBCLASS TMP$1246$3;
			TMP$1246$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$1246$3 != 15 ) goto label$930;
			label$931:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64) );
			}
			goto label$929;
			label$930:;
			if( TMP$1246$3 != 1 ) goto label$932;
			label$933:;
			{
				if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$935;
				{
					HMAYBEEMITGLOBALVAR( SYM$1 );
				}
				label$935:;
				label$934:;
			}
			label$932:;
			label$929:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$927;
	label$928:;
	label$926:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* V$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$936:;
	struct $6IRVREG* TEMP0$1;
	if( (-(*(int32*)((uint8*)V$1 + 4) != DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)V$1 + 8) != SUBTYPE$1)) == 0 ) goto label$939;
	{
		struct $6IRVREG* vr$5 = IRHLALLOCVREG( DTYPE$1, SUBTYPE$1 );
		TEMP0$1 = vr$5;
		_EMITCONVERT( TEMP0$1, V$1 );
		__builtin_memcpy( V$1, TEMP0$1, 72 );
	}
	label$939:;
	label$938:;
	label$937:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$940:;
	if( (-(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) == LABEL$1) | -(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) == LABEL$1)) == 0 ) goto label$943;
	{
		REG_BRANCH( LABEL$1 );
	}
	goto label$942;
	label$943:;
	{
		FBSTRING TMP$1247$2;
		FBSTRING TMP$1248$2;
		__builtin_memset( &TMP$1248$2, 0, 12 );
		uint8* vr$4 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$1247$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$1247$2, (void*)vr$4, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$1248$2, -1, (void*)vr$7, -1, 0 );
		HWRITEASM64( &TMP$1248$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1248$2 );
	}
	label$942:;
	if( *(boolean*)((uint8*)LABEL$1 + 68) == (boolean)0 ) goto label$945;
	{
		FBSTRING TMP$1250$2;
		__builtin_memset( &TMP$1250$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1250$2, -1, (void*)"sub rsp, 88 #stack for gosub", 29, 0 );
		HWRITEASM64( &TMP$1250$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1250$2 );
	}
	label$945:;
	label$944:;
	label$941:;
}

static void PREPARE_IDX( struct $6IRVREG* V1$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$1320$1;
	FBSTRING TMP$1323$1;
	FBSTRING TMP$1324$1;
	label$946:;
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$949;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) != (struct $8FBSYMBOL*)0u ) goto label$951;
		{
			if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) == -1 ) goto label$953;
			{
				FBSTRING TMP$1251$4;
				FBSTRING TMP$1252$4;
				FBSTRING TMP$1253$4;
				int32 vr$8 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
				FBSTRING* vr$11 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1251$4, 0, 12 );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$1251$4, (void*)vr$11, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1252$4, 0, 12 );
				FBSTRING* vr$17 = fb_StrConcat( &TMP$1252$4, (void*)vr$14, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$8 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1253$4, 0, 12 );
				FBSTRING* vr$20 = fb_StrConcat( &TMP$1253$4, (void*)vr$17, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$20, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			goto label$952;
			label$953:;
			{
				FBSTRING TMP$1254$4;
				FBSTRING TMP$1255$4;
				FBSTRING TMP$1256$4;
				FBSTRING TMP$1257$4;
				FBSTRING TMP$1258$4;
				FBSTRING TMP$1259$4;
				FBSTRING TMP$1260$4;
				FBSTRING TMP$1261$4;
				int32 vr$25 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 52) + 12) );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$25 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$1254$4, 0, 12 );
				FBSTRING* vr$32 = fb_StrConcat( &TMP$1254$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1255$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$1255$4, (void*)vr$32, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1256$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$1256$4, (void*)vr$35, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1257$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$1257$4, (void*)vr$38, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1258$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$1258$4, (void*)vr$41, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$44, -1, 0 );
				FBSTRING* vr$47 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1259$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$1259$4, (void*)vr$47, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1260$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$1260$4, (void*)vr$50, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1261$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$1261$4, (void*)vr$53, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$56, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			label$952:;
		}
		goto label$950;
		label$951:;
		{
			uint8* vr$58 = REG_TEMPO(  );
			fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$58, 0, 0 );
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$955;
			{
				FBSTRING TMP$1263$4;
				FBSTRING TMP$1264$4;
				FBSTRING TMP$1265$4;
				FBSTRING TMP$1266$4;
				FBSTRING TMP$1267$4;
				FBSTRING TMP$1268$4;
				FBSTRING TMP$1270$4;
				FBSTRING TMP$1271$4;
				FBSTRING TMP$1272$4;
				FBSTRING TMP$1273$4;
				FBSTRING TMP$1274$4;
				FBSTRING TMP$1275$4;
				FBSTRING TMP$1276$4;
				FBSTRING TMP$1277$4;
				FBSTRING TMP$1278$4;
				FBSTRING TMP$1279$4;
				FBSTRING* vr$73 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				uint8* vr$76 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) );
				__builtin_memset( &TMP$1263$4, 0, 12 );
				FBSTRING* vr$80 = fb_StrConcat( &TMP$1263$4, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1264$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$1264$4, (void*)vr$80, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1265$4, 0, 12 );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$1265$4, (void*)vr$83, -1, (void*)vr$76, 0 );
				__builtin_memset( &TMP$1266$4, 0, 12 );
				FBSTRING* vr$89 = fb_StrConcat( &TMP$1266$4, (void*)vr$86, -1, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1267$4, 0, 12 );
				FBSTRING* vr$92 = fb_StrConcat( &TMP$1267$4, (void*)vr$89, -1, (void*)vr$73, -1 );
				__builtin_memset( &TMP$1268$4, 0, 12 );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$1268$4, (void*)vr$92, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$95, -1, 0 );
				FBSTRING* vr$99 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1270$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$1270$4, (void*)"\x0A", 2, (void*)vr$99, -1 );
				__builtin_memset( &TMP$1271$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$1271$4, (void*)vr$102, -1, (void*)"mov ", 5 );
				__builtin_memset( &TMP$1272$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$1272$4, (void*)vr$105, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1273$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$1273$4, (void*)vr$108, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1274$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$1274$4, (void*)vr$111, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1275$4, 0, 12 );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$1275$4, (void*)vr$114, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1276$4, 0, 12 );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$1276$4, (void*)vr$117, -1, (void*)"] #NO", 6 );
				fb_StrConcatByref( (void*)OP3$1, -1, (void*)vr$120, -1, 0 );
				FBSTRING* vr$123 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1277$4, 0, 12 );
				FBSTRING* vr$126 = fb_StrConcat( &TMP$1277$4, (void*)vr$123, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1278$4, 0, 12 );
				FBSTRING* vr$129 = fb_StrConcat( &TMP$1278$4, (void*)vr$126, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1279$4, 0, 12 );
				FBSTRING* vr$132 = fb_StrConcat( &TMP$1279$4, (void*)vr$129, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$132, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			goto label$954;
			label$955:;
			{
				FBSTRING TMP$1280$4;
				FBSTRING TMP$1281$4;
				FBSTRING TMP$1282$4;
				FBSTRING TMP$1283$4;
				FBSTRING TMP$1284$4;
				FBSTRING TMP$1285$4;
				FBSTRING TMP$1286$4;
				FBSTRING* vr$136 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				__builtin_memset( &TMP$1280$4, 0, 12 );
				FBSTRING* vr$140 = fb_StrConcat( &TMP$1280$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1281$4, 0, 12 );
				FBSTRING* vr$143 = fb_StrConcat( &TMP$1281$4, (void*)vr$140, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1282$4, 0, 12 );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$1282$4, (void*)vr$143, -1, (void*)vr$136, -1 );
				__builtin_memset( &TMP$1283$4, 0, 12 );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$1283$4, (void*)vr$146, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$149, -1, 0 );
				FBSTRING* vr$152 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1284$4, 0, 12 );
				FBSTRING* vr$155 = fb_StrConcat( &TMP$1284$4, (void*)vr$152, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1285$4, 0, 12 );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$1285$4, (void*)vr$155, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1286$4, 0, 12 );
				FBSTRING* vr$161 = fb_StrConcat( &TMP$1286$4, (void*)vr$158, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$161, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			label$954:;
		}
		label$950:;
	}
	goto label$948;
	label$949:;
	{
		uint8* vr$163 = REG_TEMPO(  );
		fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$163, 0, 0 );
		if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$957;
		{
			FBSTRING TMP$1287$3;
			FBSTRING TMP$1288$3;
			FBSTRING TMP$1289$3;
			FBSTRING TMP$1290$3;
			FBSTRING TMP$1291$3;
			FBSTRING TMP$1292$3;
			FBSTRING* vr$175 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$177 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1287$3, 0, 12 );
			FBSTRING* vr$181 = fb_StrConcat( &TMP$1287$3, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1288$3, 0, 12 );
			FBSTRING* vr$184 = fb_StrConcat( &TMP$1288$3, (void*)vr$181, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1289$3, 0, 12 );
			FBSTRING* vr$187 = fb_StrConcat( &TMP$1289$3, (void*)vr$184, -1, (void*)vr$177, 0 );
			__builtin_memset( &TMP$1290$3, 0, 12 );
			FBSTRING* vr$190 = fb_StrConcat( &TMP$1290$3, (void*)vr$187, -1, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1291$3, 0, 12 );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$1291$3, (void*)vr$190, -1, (void*)vr$175, -1 );
			__builtin_memset( &TMP$1292$3, 0, 12 );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$1292$3, (void*)vr$193, -1, (void*)"] #NO", 6 );
			fb_StrAssign( (void*)OP3$1, -1, (void*)vr$196, -1, 0 );
		}
		goto label$956;
		label$957:;
		{
			FBSTRING TMP$1293$3;
			FBSTRING TMP$1294$3;
			FBSTRING TMP$1295$3;
			FBSTRING TMP$1296$3;
			FBSTRING* vr$198 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1293$3, 0, 12 );
			FBSTRING* vr$202 = fb_StrConcat( &TMP$1293$3, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1294$3, 0, 12 );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$1294$3, (void*)vr$202, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1295$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$1295$3, (void*)vr$205, -1, (void*)vr$198, -1 );
			__builtin_memset( &TMP$1296$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$1296$3, (void*)vr$208, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)OP3$1, -1, (void*)vr$211, -1, 0 );
		}
		label$956:;
		if( *(int32*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) != 4 ) goto label$959;
		{
			FBSTRING TMP$1298$3;
			FBSTRING TMP$1299$3;
			FBSTRING TMP$1300$3;
			FBSTRING TMP$1301$3;
			int32 vr$216 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			__builtin_memset( &TMP$1298$3, 0, 12 );
			FBSTRING* vr$221 = fb_StrConcat( &TMP$1298$3, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1299$3, 0, 12 );
			FBSTRING* vr$224 = fb_StrConcat( &TMP$1299$3, (void*)vr$221, -1, (void*)"+", 2 );
			__builtin_memset( &TMP$1300$3, 0, 12 );
			FBSTRING* vr$227 = fb_StrConcat( &TMP$1300$3, (void*)vr$224, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$216 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1301$3, 0, 12 );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$1301$3, (void*)vr$227, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)OP1$1, -1, (void*)vr$230, -1, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$947;
		}
		goto label$958;
		label$959:;
		if( *(int32*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) != 1 ) goto label$960;
		{
			FBSTRING TMP$1318$3;
			FBSTRING TMP$1319$3;
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$962;
			{
				FBSTRING TMP$1302$4;
				FBSTRING TMP$1303$4;
				FBSTRING TMP$1304$4;
				FBSTRING TMP$1305$4;
				FBSTRING TMP$1306$4;
				FBSTRING TMP$1307$4;
				FBSTRING TMP$1308$4;
				FBSTRING TMP$1309$4;
				FBSTRING TMP$1310$4;
				FBSTRING* vr$247 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				uint8* vr$250 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) );
				FBSTRING* vr$253 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1302$4, 0, 12 );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$1302$4, (void*)"\x0A", 2, (void*)vr$253, -1 );
				__builtin_memset( &TMP$1303$4, 0, 12 );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$1303$4, (void*)vr$256, -1, (void*)"add ", 5 );
				__builtin_memset( &TMP$1304$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$1304$4, (void*)vr$259, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1305$4, 0, 12 );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$1305$4, (void*)vr$262, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1306$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$1306$4, (void*)vr$265, -1, (void*)vr$250, 0 );
				__builtin_memset( &TMP$1307$4, 0, 12 );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$1307$4, (void*)vr$268, -1, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1308$4, 0, 12 );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$1308$4, (void*)vr$271, -1, (void*)vr$247, -1 );
				__builtin_memset( &TMP$1309$4, 0, 12 );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$1309$4, (void*)vr$274, -1, (void*)"]", 2 );
				__builtin_memset( &TMP$1310$4, 0, 12 );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$1310$4, (void*)OP3$1, -1, (void*)vr$277, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$280, -1, 0 );
			}
			goto label$961;
			label$962:;
			{
				FBSTRING TMP$1311$4;
				FBSTRING TMP$1312$4;
				FBSTRING TMP$1313$4;
				FBSTRING TMP$1314$4;
				FBSTRING TMP$1315$4;
				FBSTRING TMP$1316$4;
				FBSTRING TMP$1317$4;
				FBSTRING* vr$283 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				FBSTRING* vr$286 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1311$4, 0, 12 );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$1311$4, (void*)"\x0A", 2, (void*)vr$286, -1 );
				__builtin_memset( &TMP$1312$4, 0, 12 );
				FBSTRING* vr$292 = fb_StrConcat( &TMP$1312$4, (void*)vr$289, -1, (void*)"add ", 5 );
				__builtin_memset( &TMP$1313$4, 0, 12 );
				FBSTRING* vr$295 = fb_StrConcat( &TMP$1313$4, (void*)vr$292, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1314$4, 0, 12 );
				FBSTRING* vr$298 = fb_StrConcat( &TMP$1314$4, (void*)vr$295, -1, (void*)",", 2 );
				__builtin_memset( &TMP$1315$4, 0, 12 );
				FBSTRING* vr$301 = fb_StrConcat( &TMP$1315$4, (void*)vr$298, -1, (void*)vr$283, -1 );
				__builtin_memset( &TMP$1316$4, 0, 12 );
				FBSTRING* vr$304 = fb_StrConcat( &TMP$1316$4, (void*)vr$301, -1, (void*)"[rbp]", 6 );
				__builtin_memset( &TMP$1317$4, 0, 12 );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$1317$4, (void*)OP3$1, -1, (void*)vr$304, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$307, -1, 0 );
			}
			label$961:;
			__builtin_memset( &TMP$1318$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$1318$3, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1319$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$1319$3, (void*)vr$311, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)OP1$1, -1, (void*)vr$314, -1, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$947;
		}
		label$960:;
		label$958:;
	}
	label$948:;
	__builtin_memset( &TMP$1320$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1320$1, -1, (void*)"", 1, 0 );
	HWRITEASM64( &TMP$1320$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1320$1 );
	__builtin_memset( &TMP$1323$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1323$1, -1, (void*)"FOUND AN ERROR : prepare_IDX case not handled 01", 49, 0 );
	HWRITEASM64( &TMP$1323$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1323$1 );
	__builtin_memset( &TMP$1324$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1324$1, -1, (void*)"", 1, 0 );
	HWRITEASM64( &TMP$1324$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1324$1 );
	int32 vr$328 = fb_StrCompare( (void*)OP1$1, -1, (void*)"", 1 );
	if( vr$328 != 0 ) goto label$964;
	{
		fb_StrAssign( (void*)OP1$1, -1, (void*)"X X", 4, 0 );
		label$964:;
	}
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	label$947:;
}

static uint8* HGETBOPCODE( int32 OP$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$965:;
	{
		uint32 TMP$1326$2;
		TMP$1326$2 = (uint32)OP$1;
		goto label$968;
		label$969:;
		{
			fb$result$1 = (uint8*)"add";
		}
		goto label$967;
		label$970:;
		{
			fb$result$1 = (uint8*)"sub";
		}
		goto label$967;
		label$971:;
		{
			fb$result$1 = (uint8*)"mul";
		}
		goto label$967;
		label$972:;
		{
			fb$result$1 = (uint8*)"div";
		}
		goto label$967;
		label$973:;
		{
			fb$result$1 = (uint8*)"intdiv";
		}
		goto label$967;
		label$974:;
		{
			fb$result$1 = (uint8*)"mod";
		}
		goto label$967;
		label$975:;
		{
			fb$result$1 = (uint8*)"shl";
		}
		goto label$967;
		label$976:;
		{
			fb$result$1 = (uint8*)"ashr";
		}
		goto label$967;
		label$977:;
		{
			fb$result$1 = (uint8*)"and";
		}
		goto label$967;
		label$978:;
		{
			fb$result$1 = (uint8*)"or";
		}
		goto label$967;
		label$979:;
		{
			fb$result$1 = (uint8*)"xor";
		}
		goto label$967;
		label$980:;
		{
			fb$result$1 = (uint8*)"icmp eq";
		}
		goto label$967;
		label$981:;
		{
			fb$result$1 = (uint8*)"icmp ne";
		}
		goto label$967;
		label$982:;
		{
			fb$result$1 = (uint8*)"icmp sgt";
		}
		goto label$967;
		label$983:;
		{
			fb$result$1 = (uint8*)"icmp slt";
		}
		goto label$967;
		label$984:;
		{
			fb$result$1 = (uint8*)"icmp sge";
		}
		goto label$967;
		label$985:;
		{
			fb$result$1 = (uint8*)"icmp sle";
		}
		goto label$967;
		label$986:;
		{
			fb$result$1 = (uint8*)"eqv";
		}
		goto label$967;
		label$987:;
		{
			fb$result$1 = (uint8*)"imp";
		}
		goto label$967;
		label$988:;
		{
			fb$result$1 = (uint8*)"jmp";
		}
		goto label$967;
		label$989:;
		{
			fb$result$1 = (uint8*)"je";
		}
		goto label$967;
		label$990:;
		{
			fb$result$1 = (uint8*)"jgt";
		}
		goto label$967;
		label$991:;
		{
			fb$result$1 = (uint8*)"jlt";
		}
		goto label$967;
		label$992:;
		{
			fb$result$1 = (uint8*)"jne";
		}
		goto label$967;
		label$993:;
		{
			fb$result$1 = (uint8*)"jge";
		}
		goto label$967;
		label$994:;
		{
			fb$result$1 = (uint8*)"jle";
		}
		goto label$967;
		label$995:;
		{
			fb$result$1 = (uint8*)"call";
		}
		goto label$967;
		label$996:;
		{
			fb$result$1 = (uint8*)"bop unknown";
		}
		goto label$967;
		label$968:;
		static const void* tmp$4050[72] = {
			&&label$969,
			&&label$970,
			&&label$971,
			&&label$972,
			&&label$973,
			&&label$974,
			&&label$977,
			&&label$978,
			&&label$996,
			&&label$996,
			&&label$979,
			&&label$986,
			&&label$987,
			&&label$975,
			&&label$976,
			&&label$996,
			&&label$996,
			&&label$980,
			&&label$982,
			&&label$983,
			&&label$981,
			&&label$984,
			&&label$985,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$989,
			&&label$990,
			&&label$991,
			&&label$992,
			&&label$993,
			&&label$994,
			&&label$988,
			&&label$995,
		};
		if( (TMP$1326$2 - 28u) > 71u ) goto label$996;
		goto *tmp$4050[TMP$1326$2 - 28u];
		label$967:;
	}
	label$966:;
	return fb$result$1;
}

static void RESTORE_VRREG( struct $6IRVREG* VR$1, int32 VRREG$1 )
{
	label$997:;
	*(int32*)((uint8*)&CTX$ + 236) = VRREG$1;
	*(int32*)((uint8*)&CTX$ + 240) = 1;
	if( *(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) != -2 ) goto label$1000;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = *(int32*)((uint8*)VR$1 + 12);
	}
	label$1000:;
	label$999:;
	label$998:;
}

static void BOP_FLOAT( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, FBSTRING* OP1$1, FBSTRING* OP2$1, FBSTRING* OP3$1, FBSTRING* OP4$1, FBSTRING* PREFIX$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$1001:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING MOVREG$1;
	__builtin_memset( &MOVREG$1, 0, 12 );
	FBSTRING MOVMEM$1;
	__builtin_memset( &MOVMEM$1, 0, 12 );
	FBSTRING COMPREG$1;
	__builtin_memset( &COMPREG$1, 0, 12 );
	FBSTRING IMMREG$1;
	__builtin_memset( &IMMREG$1, 0, 12 );
	FBSTRING ADDREG$1;
	__builtin_memset( &ADDREG$1, 0, 12 );
	FBSTRING SUBREG$1;
	__builtin_memset( &SUBREG$1, 0, 12 );
	FBSTRING MULREG$1;
	__builtin_memset( &MULREG$1, 0, 12 );
	FBSTRING DIVREG$1;
	__builtin_memset( &DIVREG$1, 0, 12 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 4 );
	uint8* JMPCODE$1;
	__builtin_memset( &JMPCODE$1, 0, 4 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1004;
	{
		int32 vr$14 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
		VRREG$1 = vr$14;
	}
	label$1004:;
	label$1003:;
	V1DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( V1DTYPE$1 != 16 ) goto label$1006;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1, (void*)"movq ", 6, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1, (void*)"movsd ", 7, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1, (void*)"ucomisd ", 9, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1, (void*)"rax", 4, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1, (void*)"addsd ", 7, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1, (void*)"subsd ", 7, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1, (void*)"mulsd ", 7, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1, (void*)"divsd ", 7, 0 );
	}
	goto label$1005;
	label$1006:;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1, (void*)"movd ", 6, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1, (void*)"movss ", 7, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1, (void*)"ucomiss ", 9, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1, (void*)"eax", 4, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1, (void*)"addss ", 7, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1, (void*)"subss ", 7, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1, (void*)"mulss ", 7, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1, (void*)"divss ", 7, 0 );
	}
	label$1005:;
	if( *(int32*)V1$1 != 4 ) goto label$1008;
	{
		FBSTRING TMP$1365$2;
		FBSTRING TMP$1366$2;
		FBSTRING TMP$1367$2;
		__builtin_memset( &TMP$1367$2, 0, 12 );
		__builtin_memset( &TMP$1365$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$1365$2, (void*)&MOVREG$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1366$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$1366$2, (void*)vr$38, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1367$2, -1, (void*)vr$41, -1, 0 );
		HWRITEASM64( &TMP$1367$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1367$2 );
	}
	goto label$1007;
	label$1008:;
	if( *(int32*)V1$1 != 0 ) goto label$1009;
	{
		FBSTRING TMP$1368$2;
		FBSTRING TMP$1369$2;
		FBSTRING TMP$1370$2;
		FBSTRING TMP$1371$2;
		FBSTRING TMP$1372$2;
		FBSTRING TMP$1373$2;
		FBSTRING TMP$1374$2;
		__builtin_memset( &TMP$1371$2, 0, 12 );
		__builtin_memset( &TMP$1368$2, 0, 12 );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$1368$2, (void*)"mov ", 5, (void*)&IMMREG$1, -1 );
		__builtin_memset( &TMP$1369$2, 0, 12 );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$1369$2, (void*)vr$50, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1370$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$1370$2, (void*)vr$53, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1371$2, -1, (void*)vr$56, -1, 0 );
		HWRITEASM64( &TMP$1371$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1371$2 );
		__builtin_memset( &TMP$1374$2, 0, 12 );
		__builtin_memset( &TMP$1372$2, 0, 12 );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$1372$2, (void*)&MOVREG$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1373$2, 0, 12 );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$1373$2, (void*)vr$65, -1, (void*)&IMMREG$1, -1 );
		fb_StrAssign( (void*)&TMP$1374$2, -1, (void*)vr$68, -1, 0 );
		HWRITEASM64( &TMP$1374$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1374$2 );
	}
	goto label$1007;
	label$1009:;
	{
		FBSTRING TMP$1375$2;
		FBSTRING TMP$1376$2;
		FBSTRING TMP$1377$2;
		__builtin_memset( &TMP$1377$2, 0, 12 );
		__builtin_memset( &TMP$1375$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$1375$2, (void*)&MOVMEM$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1376$2, 0, 12 );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1376$2, (void*)vr$76, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1377$2, -1, (void*)vr$79, -1, 0 );
		HWRITEASM64( &TMP$1377$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1377$2 );
	}
	label$1007:;
	if( *(int32*)V2$1 != 4 ) goto label$1011;
	{
		FBSTRING TMP$1379$2;
		FBSTRING TMP$1380$2;
		FBSTRING TMP$1381$2;
		__builtin_memset( &TMP$1381$2, 0, 12 );
		__builtin_memset( &TMP$1379$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$1379$2, (void*)&MOVREG$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1380$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$1380$2, (void*)vr$88, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1381$2, -1, (void*)vr$91, -1, 0 );
		HWRITEASM64( &TMP$1381$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1381$2 );
	}
	goto label$1010;
	label$1011:;
	if( *(int32*)V2$1 != 0 ) goto label$1012;
	{
		FBSTRING TMP$1382$2;
		FBSTRING TMP$1383$2;
		FBSTRING TMP$1384$2;
		FBSTRING TMP$1385$2;
		FBSTRING TMP$1386$2;
		FBSTRING TMP$1387$2;
		FBSTRING TMP$1388$2;
		__builtin_memset( &TMP$1385$2, 0, 12 );
		__builtin_memset( &TMP$1382$2, 0, 12 );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$1382$2, (void*)"mov ", 5, (void*)&IMMREG$1, -1 );
		__builtin_memset( &TMP$1383$2, 0, 12 );
		FBSTRING* vr$103 = fb_StrConcat( &TMP$1383$2, (void*)vr$100, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1384$2, 0, 12 );
		FBSTRING* vr$106 = fb_StrConcat( &TMP$1384$2, (void*)vr$103, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1385$2, -1, (void*)vr$106, -1, 0 );
		HWRITEASM64( &TMP$1385$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1385$2 );
		__builtin_memset( &TMP$1388$2, 0, 12 );
		__builtin_memset( &TMP$1386$2, 0, 12 );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$1386$2, (void*)&MOVREG$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1387$2, 0, 12 );
		FBSTRING* vr$118 = fb_StrConcat( &TMP$1387$2, (void*)vr$115, -1, (void*)&IMMREG$1, -1 );
		fb_StrAssign( (void*)&TMP$1388$2, -1, (void*)vr$118, -1, 0 );
		HWRITEASM64( &TMP$1388$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1388$2 );
	}
	goto label$1010;
	label$1012:;
	{
		FBSTRING TMP$1389$2;
		FBSTRING TMP$1390$2;
		FBSTRING TMP$1391$2;
		__builtin_memset( &TMP$1391$2, 0, 12 );
		__builtin_memset( &TMP$1389$2, 0, 12 );
		FBSTRING* vr$126 = fb_StrConcat( &TMP$1389$2, (void*)&MOVMEM$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1390$2, 0, 12 );
		FBSTRING* vr$129 = fb_StrConcat( &TMP$1390$2, (void*)vr$126, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1391$2, -1, (void*)vr$129, -1, 0 );
		HWRITEASM64( &TMP$1391$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1391$2 );
	}
	label$1010:;
	{
		if( OP$1 == 45 ) goto label$1015;
		label$1016:;
		if( OP$1 == 48 ) goto label$1015;
		label$1017:;
		if( OP$1 == 47 ) goto label$1015;
		label$1018:;
		if( OP$1 == 50 ) goto label$1015;
		label$1019:;
		if( OP$1 == 46 ) goto label$1015;
		label$1020:;
		if( OP$1 != 49 ) goto label$1014;
		label$1015:;
		{
			FBSTRING TMP$1397$3;
			FBSTRING TMP$1398$3;
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1022;
			{
				FBSTRING TMP$1393$4;
				FBSTRING TMP$1394$4;
				FBSTRING TMP$1395$4;
				uint8* vr$133 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$133, 0, 0 );
				__builtin_memset( &TMP$1395$4, 0, 12 );
				__builtin_memset( &TMP$1393$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1393$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1394$4, 0, 12 );
				FBSTRING* vr$142 = fb_StrConcat( &TMP$1394$4, (void*)vr$139, -1, (void*)", -1", 5 );
				fb_StrAssign( (void*)&TMP$1395$4, -1, (void*)vr$142, -1, 0 );
				HWRITEASM64( &TMP$1395$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1395$4 );
			}
			label$1022:;
			label$1021:;
			__builtin_memset( &TMP$1398$3, 0, 12 );
			__builtin_memset( &TMP$1397$3, 0, 12 );
			FBSTRING* vr$150 = fb_StrConcat( &TMP$1397$3, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
			fb_StrAssign( (void*)&TMP$1398$3, -1, (void*)vr$150, -1, 0 );
			HWRITEASM64( &TMP$1398$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1398$3 );
			if( OP$1 != 45 ) goto label$1024;
			{
				FBSTRING TMP$1400$4;
				FBSTRING TMP$1401$4;
				uint8* vr$154 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$154, 0, 0 );
				__builtin_memset( &TMP$1401$4, 0, 12 );
				__builtin_memset( &TMP$1400$4, 0, 12 );
				FBSTRING* vr$160 = fb_StrConcat( &TMP$1400$4, (void*)"jp ", 4, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$1401$4, -1, (void*)vr$160, -1, 0 );
				HWRITEASM64( &TMP$1401$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1401$4 );
			}
			goto label$1023;
			label$1024:;
			if( OP$1 != 48 ) goto label$1025;
			{
				if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1027;
				{
					FBSTRING TMP$1402$5;
					FBSTRING TMP$1403$5;
					__builtin_memset( &TMP$1403$5, 0, 12 );
					__builtin_memset( &TMP$1402$5, 0, 12 );
					FBSTRING* vr$168 = fb_StrConcat( &TMP$1402$5, (void*)"jp ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$1403$5, -1, (void*)vr$168, -1, 0 );
					HWRITEASM64( &TMP$1403$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1403$5 );
				}
				goto label$1026;
				label$1027:;
				{
					FBSTRING TMP$1404$5;
					FBSTRING TMP$1405$5;
					__builtin_memset( &TMP$1405$5, 0, 12 );
					uint8* vr$173 = SYMBGETMANGLEDNAME( LABEL$1 );
					__builtin_memset( &TMP$1404$5, 0, 12 );
					FBSTRING* vr$176 = fb_StrConcat( &TMP$1404$5, (void*)"jp ", 4, (void*)vr$173, 0 );
					fb_StrAssign( (void*)&TMP$1405$5, -1, (void*)vr$176, -1, 0 );
					HWRITEASM64( &TMP$1405$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1405$5 );
				}
				label$1026:;
			}
			label$1025:;
			label$1023:;
			{
				if( OP$1 != 45 ) goto label$1029;
				label$1030:;
				{
					JMPCODE$1 = (uint8*)"je ";
				}
				goto label$1028;
				label$1029:;
				if( OP$1 != 48 ) goto label$1031;
				label$1032:;
				{
					JMPCODE$1 = (uint8*)"jne ";
				}
				goto label$1028;
				label$1031:;
				if( OP$1 != 47 ) goto label$1033;
				label$1034:;
				{
					JMPCODE$1 = (uint8*)"jb ";
				}
				goto label$1028;
				label$1033:;
				if( OP$1 != 50 ) goto label$1035;
				label$1036:;
				{
					JMPCODE$1 = (uint8*)"jbe ";
				}
				goto label$1028;
				label$1035:;
				if( OP$1 != 46 ) goto label$1037;
				label$1038:;
				{
					JMPCODE$1 = (uint8*)"ja ";
				}
				goto label$1028;
				label$1037:;
				if( OP$1 != 49 ) goto label$1039;
				label$1040:;
				{
					JMPCODE$1 = (uint8*)"jae ";
				}
				label$1039:;
				label$1028:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1042;
			{
				FBSTRING TMP$1412$4;
				FBSTRING TMP$1413$4;
				__builtin_memset( &TMP$1413$4, 0, 12 );
				__builtin_memset( &TMP$1412$4, 0, 12 );
				FBSTRING* vr$184 = fb_StrConcat( &TMP$1412$4, (void*)JMPCODE$1, 0, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$1413$4, -1, (void*)vr$184, -1, 0 );
				HWRITEASM64( &TMP$1413$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1413$4 );
			}
			goto label$1041;
			label$1042:;
			{
				FBSTRING TMP$1414$4;
				FBSTRING TMP$1415$4;
				__builtin_memset( &TMP$1415$4, 0, 12 );
				uint8* vr$189 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1414$4, 0, 12 );
				FBSTRING* vr$192 = fb_StrConcat( &TMP$1414$4, (void*)JMPCODE$1, 0, (void*)vr$189, 0 );
				fb_StrAssign( (void*)&TMP$1415$4, -1, (void*)vr$192, -1, 0 );
				HWRITEASM64( &TMP$1415$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1415$4 );
				REG_MARK( LABEL$1 );
			}
			label$1041:;
			if( OP$1 != 45 ) goto label$1044;
			{
				FBSTRING TMP$1416$4;
				FBSTRING TMP$1417$4;
				__builtin_memset( &TMP$1417$4, 0, 12 );
				__builtin_memset( &TMP$1416$4, 0, 12 );
				FBSTRING* vr$200 = fb_StrConcat( &TMP$1416$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$1417$4, -1, (void*)vr$200, -1, 0 );
				HWRITEASM64( &TMP$1417$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1417$4 );
				label$1044:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1046;
			{
				FBSTRING TMP$1419$4;
				FBSTRING TMP$1420$4;
				FBSTRING TMP$1421$4;
				FBSTRING TMP$1422$4;
				FBSTRING TMP$1423$4;
				FBSTRING TMP$1424$4;
				__builtin_memset( &TMP$1422$4, 0, 12 );
				__builtin_memset( &TMP$1419$4, 0, 12 );
				FBSTRING* vr$209 = fb_StrConcat( &TMP$1419$4, (void*)"xor ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1420$4, 0, 12 );
				FBSTRING* vr$212 = fb_StrConcat( &TMP$1420$4, (void*)vr$209, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1421$4, 0, 12 );
				FBSTRING* vr$215 = fb_StrConcat( &TMP$1421$4, (void*)vr$212, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1422$4, -1, (void*)vr$215, -1, 0 );
				HWRITEASM64( &TMP$1422$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1422$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
				__builtin_memset( &TMP$1424$4, 0, 12 );
				__builtin_memset( &TMP$1423$4, 0, 12 );
				FBSTRING* vr$223 = fb_StrConcat( &TMP$1423$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$1424$4, -1, (void*)vr$223, -1, 0 );
				HWRITEASM64( &TMP$1424$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1424$4 );
			}
			label$1046:;
			label$1045:;
		}
		goto label$1013;
		label$1014:;
		if( OP$1 == 28 ) goto label$1048;
		label$1049:;
		if( OP$1 == 29 ) goto label$1048;
		label$1050:;
		if( OP$1 == 30 ) goto label$1048;
		label$1051:;
		if( OP$1 != 31 ) goto label$1047;
		label$1048:;
		{
			{
				if( OP$1 != 28 ) goto label$1053;
				label$1054:;
				{
					FBSTRING TMP$1425$5;
					FBSTRING TMP$1426$5;
					__builtin_memset( &TMP$1426$5, 0, 12 );
					__builtin_memset( &TMP$1425$5, 0, 12 );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$1425$5, (void*)&ADDREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1426$5, -1, (void*)vr$231, -1, 0 );
					HWRITEASM64( &TMP$1426$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1426$5 );
				}
				goto label$1052;
				label$1053:;
				if( OP$1 != 29 ) goto label$1055;
				label$1056:;
				{
					FBSTRING TMP$1427$5;
					FBSTRING TMP$1428$5;
					__builtin_memset( &TMP$1428$5, 0, 12 );
					__builtin_memset( &TMP$1427$5, 0, 12 );
					FBSTRING* vr$239 = fb_StrConcat( &TMP$1427$5, (void*)&SUBREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1428$5, -1, (void*)vr$239, -1, 0 );
					HWRITEASM64( &TMP$1428$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1428$5 );
				}
				goto label$1052;
				label$1055:;
				if( OP$1 != 30 ) goto label$1057;
				label$1058:;
				{
					FBSTRING TMP$1429$5;
					FBSTRING TMP$1430$5;
					__builtin_memset( &TMP$1430$5, 0, 12 );
					__builtin_memset( &TMP$1429$5, 0, 12 );
					FBSTRING* vr$247 = fb_StrConcat( &TMP$1429$5, (void*)&MULREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1430$5, -1, (void*)vr$247, -1, 0 );
					HWRITEASM64( &TMP$1430$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1430$5 );
				}
				goto label$1052;
				label$1057:;
				if( OP$1 != 31 ) goto label$1059;
				label$1060:;
				{
					FBSTRING TMP$1431$5;
					FBSTRING TMP$1432$5;
					__builtin_memset( &TMP$1432$5, 0, 12 );
					__builtin_memset( &TMP$1431$5, 0, 12 );
					FBSTRING* vr$255 = fb_StrConcat( &TMP$1431$5, (void*)&DIVREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1432$5, -1, (void*)vr$255, -1, 0 );
					HWRITEASM64( &TMP$1432$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1432$5 );
				}
				label$1059:;
				label$1052:;
			}
			if( *(int32*)((uint8*)VR$1 + 4) != 16 ) goto label$1062;
			{
				FBSTRING TMP$1436$4;
				FBSTRING TMP$1437$4;
				FBSTRING TMP$1438$4;
				if( V1DTYPE$1 != 15 ) goto label$1064;
				{
					FBSTRING TMP$1434$5;
					__builtin_memset( &TMP$1434$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1434$5, -1, (void*)"cvtss2sd xmm0, xmm0", 20, 0 );
					HWRITEASM64( &TMP$1434$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1434$5 );
				}
				label$1064:;
				label$1063:;
				__builtin_memset( &TMP$1438$4, 0, 12 );
				__builtin_memset( &TMP$1436$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$1436$4, (void*)"movq ", 6, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1437$4, 0, 12 );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$1437$4, (void*)vr$268, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1438$4, -1, (void*)vr$271, -1, 0 );
				HWRITEASM64( &TMP$1438$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1438$4 );
			}
			goto label$1061;
			label$1062:;
			{
				FBSTRING TMP$1439$4;
				FBSTRING TMP$1440$4;
				FBSTRING TMP$1441$4;
				__builtin_memset( &TMP$1441$4, 0, 12 );
				__builtin_memset( &TMP$1439$4, 0, 12 );
				FBSTRING* vr$279 = fb_StrConcat( &TMP$1439$4, (void*)"movd ", 6, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1440$4, 0, 12 );
				FBSTRING* vr$282 = fb_StrConcat( &TMP$1440$4, (void*)vr$279, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1441$4, -1, (void*)vr$282, -1, 0 );
				HWRITEASM64( &TMP$1441$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1441$4 );
			}
			label$1061:;
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1013;
		label$1047:;
		if( OP$1 != 64 ) goto label$1065;
		label$1066:;
		{
			if( V1DTYPE$1 != 16 ) goto label$1068;
			{
				FBSTRING TMP$1443$4;
				FBSTRING TMP$1444$4;
				FBSTRING TMP$1445$4;
				FBSTRING TMP$1446$4;
				__builtin_memset( &TMP$1443$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1443$4, -1, (void*)"atan2", 6, 0 );
				SAVE_CALL( &TMP$1443$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1443$4 );
				__builtin_memset( &TMP$1446$4, 0, 12 );
				__builtin_memset( &TMP$1444$4, 0, 12 );
				FBSTRING* vr$294 = fb_StrConcat( &TMP$1444$4, (void*)"movq ", 6, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1445$4, 0, 12 );
				FBSTRING* vr$297 = fb_StrConcat( &TMP$1445$4, (void*)vr$294, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1446$4, -1, (void*)vr$297, -1, 0 );
				HWRITEASM64( &TMP$1446$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1446$4 );
			}
			goto label$1067;
			label$1068:;
			{
				FBSTRING TMP$1448$4;
				FBSTRING TMP$1449$4;
				FBSTRING TMP$1450$4;
				FBSTRING TMP$1451$4;
				__builtin_memset( &TMP$1448$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1448$4, -1, (void*)"atan2f", 7, 0 );
				SAVE_CALL( &TMP$1448$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1448$4 );
				__builtin_memset( &TMP$1451$4, 0, 12 );
				__builtin_memset( &TMP$1449$4, 0, 12 );
				FBSTRING* vr$309 = fb_StrConcat( &TMP$1449$4, (void*)"movd ", 6, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1450$4, 0, 12 );
				FBSTRING* vr$312 = fb_StrConcat( &TMP$1450$4, (void*)vr$309, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1451$4, -1, (void*)vr$312, -1, 0 );
				HWRITEASM64( &TMP$1451$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1451$4 );
			}
			label$1067:;
		}
		goto label$1013;
		label$1065:;
		{
			FBSTRING TMP$1452$3;
			FBSTRING TMP$1455$3;
			FBSTRING TMP$1456$3;
			FBSTRING TMP$1457$3;
			__builtin_memset( &TMP$1452$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1452$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1452$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1452$3 );
			__builtin_memset( &TMP$1456$3, 0, 12 );
			uint8* vr$321 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1455$3, 0, 12 );
			FBSTRING* vr$324 = fb_StrConcat( &TMP$1455$3, (void*)"FOUND AN ERROR : in bop float needs to be coded : ", 51, (void*)vr$321, 0 );
			fb_StrAssign( (void*)&TMP$1456$3, -1, (void*)vr$324, -1, 0 );
			HWRITEASM64( &TMP$1456$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1456$3 );
			__builtin_memset( &TMP$1457$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1457$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1457$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1457$3 );
		}
		label$1069:;
		label$1013:;
	}
	fb_StrDelete( (FBSTRING*)&DIVREG$1 );
	fb_StrDelete( (FBSTRING*)&MULREG$1 );
	fb_StrDelete( (FBSTRING*)&SUBREG$1 );
	fb_StrDelete( (FBSTRING*)&ADDREG$1 );
	fb_StrDelete( (FBSTRING*)&IMMREG$1 );
	fb_StrDelete( (FBSTRING*)&COMPREG$1 );
	fb_StrDelete( (FBSTRING*)&MOVMEM$1 );
	fb_StrDelete( (FBSTRING*)&MOVREG$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1002:;
}

static void HLOADOPERANDSANDWRITEBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 TMP$1530$1;
	int32 TMP$1531$1;
	FBSTRING TMP$1532$1;
	FBSTRING TMP$1533$1;
	label$1070:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 12 );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 12 );
	FBSTRING SUFFIX$1;
	__builtin_memset( &SUFFIX$1, 0, 12 );
	FBSTRING OP1PREV$1;
	__builtin_memset( &OP1PREV$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	FBSTRING OP1BIS$1;
	__builtin_memset( &OP1BIS$1, 0, 12 );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 4 );
	$11FB_DATATYPE TEMPO2DTYPE$1;
	__builtin_memset( &TEMPO2DTYPE$1, 0, 4 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	int32 VRREG2$1;
	__builtin_memset( &VRREG2$1, 0, 4 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	struct $6IRVREG* VRTEMPO$1;
	__builtin_memset( &VRTEMPO$1, 0, 4 );
	TEMPODTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (TEMPODTYPE$1 & 480) == 0 ) goto label$1073;
	{
		TEMPODTYPE$1 = 8;
		label$1073:;
	}
	{
		if( TEMPODTYPE$1 == 8 ) goto label$1076;
		label$1077:;
		if( TEMPODTYPE$1 == 9 ) goto label$1076;
		label$1078:;
		if( TEMPODTYPE$1 == 13 ) goto label$1076;
		label$1079:;
		if( TEMPODTYPE$1 == 14 ) goto label$1076;
		label$1080:;
		if( TEMPODTYPE$1 == 10 ) goto label$1076;
		label$1081:;
		if( TEMPODTYPE$1 != 16 ) goto label$1075;
		label$1076:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1074;
		label$1075:;
		if( TEMPODTYPE$1 == 11 ) goto label$1083;
		label$1084:;
		if( TEMPODTYPE$1 == 12 ) goto label$1083;
		label$1085:;
		if( TEMPODTYPE$1 != 15 ) goto label$1082;
		label$1083:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1074;
		label$1082:;
		if( TEMPODTYPE$1 == 5 ) goto label$1087;
		label$1088:;
		if( TEMPODTYPE$1 != 6 ) goto label$1086;
		label$1087:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1074;
		label$1086:;
		if( TEMPODTYPE$1 == 2 ) goto label$1090;
		label$1091:;
		if( TEMPODTYPE$1 == 3 ) goto label$1090;
		label$1092:;
		if( TEMPODTYPE$1 == 1 ) goto label$1090;
		label$1093:;
		if( TEMPODTYPE$1 != 4 ) goto label$1089;
		label$1090:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1074;
		label$1089:;
		{
			FBSTRING TMP$1462$3;
			FBSTRING TMP$1466$3;
			FBSTRING TMP$1467$3;
			FBSTRING TMP$1468$3;
			__builtin_memset( &TMP$1462$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1462$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1462$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1462$3 );
			__builtin_memset( &TMP$1467$3, 0, 12 );
			FBSTRING* vr$29 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$1466$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$1466$3, (void*)"FOUND AN ERROR : BOP datatype not handled 01 = ", 48, (void*)vr$29, -1 );
			fb_StrAssign( (void*)&TMP$1467$3, -1, (void*)vr$32, -1, 0 );
			HWRITEASM64( &TMP$1467$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1467$3 );
			__builtin_memset( &TMP$1468$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1468$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1468$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1468$3 );
		}
		label$1094:;
		label$1074:;
	}
	fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)&PREFIX1$1, -1, 0 );
	{
		$15IRVREGTYPE_ENUM TMP$1469$2;
		TMP$1469$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1469$2 != 4 ) goto label$1096;
		label$1097:;
		{
			int32 vr$44 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			VRREG$1 = vr$44;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1100;
				label$1101:;
				if( TEMPODTYPE$1 == 9 ) goto label$1100;
				label$1102:;
				if( TEMPODTYPE$1 == 13 ) goto label$1100;
				label$1103:;
				if( TEMPODTYPE$1 == 14 ) goto label$1100;
				label$1104:;
				if( TEMPODTYPE$1 == 10 ) goto label$1100;
				label$1105:;
				if( TEMPODTYPE$1 != 16 ) goto label$1099;
				label$1100:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1098;
				label$1099:;
				if( TEMPODTYPE$1 == 11 ) goto label$1107;
				label$1108:;
				if( TEMPODTYPE$1 == 12 ) goto label$1107;
				label$1109:;
				if( TEMPODTYPE$1 != 15 ) goto label$1106;
				label$1107:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1098;
				label$1106:;
				if( TEMPODTYPE$1 == 5 ) goto label$1111;
				label$1112:;
				if( TEMPODTYPE$1 != 6 ) goto label$1110;
				label$1111:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1098;
				label$1110:;
				if( TEMPODTYPE$1 == 2 ) goto label$1114;
				label$1115:;
				if( TEMPODTYPE$1 == 3 ) goto label$1114;
				label$1116:;
				if( TEMPODTYPE$1 == 1 ) goto label$1114;
				label$1117:;
				if( TEMPODTYPE$1 != 4 ) goto label$1113;
				label$1114:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1098;
				label$1113:;
				{
					FBSTRING TMP$1470$5;
					FBSTRING TMP$1474$5;
					FBSTRING TMP$1475$5;
					FBSTRING TMP$1476$5;
					__builtin_memset( &TMP$1470$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1470$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1470$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1470$5 );
					__builtin_memset( &TMP$1475$5, 0, 12 );
					FBSTRING* vr$59 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1474$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$1474$5, (void*)"FOUND AN ERROR : BOP datatype not handled 010 ", 47, (void*)vr$59, -1 );
					fb_StrAssign( (void*)&TMP$1475$5, -1, (void*)vr$62, -1, 0 );
					HWRITEASM64( &TMP$1475$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1475$5 );
					__builtin_memset( &TMP$1476$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1476$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1476$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1476$5 );
				}
				label$1118:;
				label$1098:;
			}
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		goto label$1095;
		label$1096:;
		if( TMP$1469$2 != 2 ) goto label$1119;
		label$1120:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1095;
		label$1119:;
		if( TMP$1469$2 != 3 ) goto label$1121;
		label$1122:;
		{
			FBSTRING TMP$1477$3;
			FBSTRING TMP$1478$3;
			FBSTRING TMP$1479$3;
			int32 vr$75 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1477$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$1477$3, (void*)vr$78, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1478$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$1478$3, (void*)vr$81, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$75 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1479$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1479$3, (void*)vr$84, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$87, -1, 0 );
		}
		goto label$1095;
		label$1121:;
		if( TMP$1469$2 != 5 ) goto label$1123;
		label$1124:;
		{
			FBSTRING TMP$1480$3;
			FBSTRING TMP$1481$3;
			FBSTRING TMP$1482$3;
			FBSTRING* vr$90 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$92 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1480$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$1480$3, (void*)vr$92, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1481$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$1481$3, (void*)vr$95, -1, (void*)vr$90, -1 );
			__builtin_memset( &TMP$1482$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$1482$3, (void*)vr$98, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$101, -1, 0 );
		}
		goto label$1095;
		label$1123:;
		if( TMP$1469$2 != 0 ) goto label$1125;
		label$1126:;
		{
			int32 TMP$1483$3;
			if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1127;
			TMP$1483$3 = 24;
			goto label$3087;
			label$1127:;
			TMP$1483$3 = *(int32*)((uint8*)V1$1 + 4) & 31;
			label$3087:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1483$3 * 28)) != 1 ) goto label$1129;
			{
				FBSTRING* vr$110 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V1$1 + 24), *(int32*)((uint8*)V1$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$110, -1, 0 );
			}
			goto label$1128;
			label$1129:;
			{
				if( TEMPODTYPE$1 != 1 ) goto label$1131;
				{
					if( *(int64*)((uint8*)V1$1 + 24) == 0ll ) goto label$1133;
					{
						*(int64*)((uint8*)V1$1 + 24) = 1ll;
					}
					label$1133:;
					label$1132:;
				}
				label$1131:;
				label$1130:;
				FBSTRING* vr$115 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 24) );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$115, -1, 0 );
			}
			label$1128:;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		goto label$1095;
		label$1125:;
		if( TMP$1469$2 != 1 ) goto label$1134;
		label$1135:;
		{
			int32 TMP$1484$3;
			int32 TMP$1485$3;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$1136;
			int32 vr$119 = FBGETOPTION( 0 );
			TMP$1484$3 = -(vr$119 == 2);
			goto label$3088;
			label$1136:;
			TMP$1484$3 = 0;
			label$3088:;
			if( TMP$1484$3 == 0 ) goto label$1137;
			TMP$1485$3 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
			goto label$3089;
			label$1137:;
			TMP$1485$3 = 0;
			label$3089:;
			if( TMP$1485$3 == 0 ) goto label$1139;
			{
				FBSTRING TMP$1487$4;
				FBSTRING TMP$1488$4;
				FBSTRING TMP$1489$4;
				FBSTRING TMP$1490$4;
				int32 vr$125 = REG_FINDFREE( 999994, -1 );
				TEMPO$1 = vr$125;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				uint8* vr$129 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1487$4, 0, 12 );
				FBSTRING* vr$133 = fb_StrConcat( &TMP$1487$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1488$4, 0, 12 );
				FBSTRING* vr$136 = fb_StrConcat( &TMP$1488$4, (void*)vr$133, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1489$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1489$4, (void*)vr$136, -1, (void*)vr$129, 0 );
				__builtin_memset( &TMP$1490$4, 0, 12 );
				FBSTRING* vr$142 = fb_StrConcat( &TMP$1490$4, (void*)vr$139, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$142, -1, 0 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
			}
			goto label$1138;
			label$1139:;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1141;
				{
					FBSTRING TMP$1491$5;
					FBSTRING TMP$1492$5;
					FBSTRING TMP$1493$5;
					FBSTRING* vr$158 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$160 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$1491$5, 0, 12 );
					FBSTRING* vr$163 = fb_StrConcat( &TMP$1491$5, (void*)vr$160, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$1492$5, 0, 12 );
					FBSTRING* vr$166 = fb_StrConcat( &TMP$1492$5, (void*)vr$163, -1, (void*)vr$158, -1 );
					__builtin_memset( &TMP$1493$5, 0, 12 );
					FBSTRING* vr$169 = fb_StrConcat( &TMP$1493$5, (void*)vr$166, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$169, -1, 0 );
				}
				goto label$1140;
				label$1141:;
				{
					FBSTRING TMP$1494$5;
					FBSTRING* vr$172 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$1494$5, 0, 12 );
					FBSTRING* vr$175 = fb_StrConcat( &TMP$1494$5, (void*)vr$172, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$175, -1, 0 );
				}
				label$1140:;
			}
			label$1138:;
		}
		goto label$1095;
		label$1134:;
		{
			FBSTRING TMP$1495$3;
			FBSTRING TMP$1498$3;
			FBSTRING TMP$1499$3;
			__builtin_memset( &TMP$1495$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1495$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1495$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1495$3 );
			__builtin_memset( &TMP$1498$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1498$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51, 0 );
			HWRITEASM64( &TMP$1498$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1498$3 );
			__builtin_memset( &TMP$1499$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1499$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1499$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1499$3 );
		}
		label$1142:;
		label$1095:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1500$2;
		TMP$1500$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$1500$2 != 4 ) goto label$1144;
		label$1145:;
		{
			int32 vr$191 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
			TEMPO$1 = vr$191;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1148;
				label$1149:;
				if( TEMPODTYPE$1 == 9 ) goto label$1148;
				label$1150:;
				if( TEMPODTYPE$1 == 13 ) goto label$1148;
				label$1151:;
				if( TEMPODTYPE$1 == 14 ) goto label$1148;
				label$1152:;
				if( TEMPODTYPE$1 == 10 ) goto label$1148;
				label$1153:;
				if( TEMPODTYPE$1 != 16 ) goto label$1147;
				label$1148:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1146;
				label$1147:;
				if( TEMPODTYPE$1 == 11 ) goto label$1155;
				label$1156:;
				if( TEMPODTYPE$1 == 12 ) goto label$1155;
				label$1157:;
				if( TEMPODTYPE$1 != 15 ) goto label$1154;
				label$1155:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1146;
				label$1154:;
				if( TEMPODTYPE$1 == 5 ) goto label$1159;
				label$1160:;
				if( TEMPODTYPE$1 != 6 ) goto label$1158;
				label$1159:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1146;
				label$1158:;
				if( TEMPODTYPE$1 == 2 ) goto label$1162;
				label$1163:;
				if( TEMPODTYPE$1 == 3 ) goto label$1162;
				label$1164:;
				if( TEMPODTYPE$1 == 1 ) goto label$1162;
				label$1165:;
				if( TEMPODTYPE$1 != 4 ) goto label$1161;
				label$1162:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1146;
				label$1161:;
				{
					FBSTRING TMP$1501$5;
					FBSTRING TMP$1505$5;
					FBSTRING TMP$1506$5;
					FBSTRING TMP$1507$5;
					__builtin_memset( &TMP$1501$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1501$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1501$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1501$5 );
					__builtin_memset( &TMP$1506$5, 0, 12 );
					FBSTRING* vr$206 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1505$5, 0, 12 );
					FBSTRING* vr$209 = fb_StrConcat( &TMP$1505$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 ", 47, (void*)vr$206, -1 );
					fb_StrAssign( (void*)&TMP$1506$5, -1, (void*)vr$209, -1, 0 );
					HWRITEASM64( &TMP$1506$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1506$5 );
					__builtin_memset( &TMP$1507$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1507$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1507$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1507$5 );
				}
				label$1166:;
				label$1146:;
			}
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
		}
		goto label$1143;
		label$1144:;
		if( TMP$1500$2 != 0 ) goto label$1167;
		label$1168:;
		{
			int32 TMP$1508$3;
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1169;
			TMP$1508$3 = 24;
			goto label$3090;
			label$1169:;
			TMP$1508$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3090:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1508$3 * 28)) != 1 ) goto label$1171;
			{
				FBSTRING* vr$226 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$226, -1, 0 );
			}
			goto label$1170;
			label$1171:;
			{
				if( *(int32*)((uint8*)V2$1 + 4) != 1 ) goto label$1173;
				{
					if( *(int64*)((uint8*)V2$1 + 24) == 0ll ) goto label$1175;
					{
						*(int64*)((uint8*)V2$1 + 24) = 1ll;
					}
					label$1175:;
					label$1174:;
				}
				label$1173:;
				label$1172:;
				FBSTRING* vr$232 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$232, -1, 0 );
			}
			label$1170:;
		}
		goto label$1143;
		label$1167:;
		if( TMP$1500$2 != 3 ) goto label$1176;
		label$1177:;
		{
			FBSTRING TMP$1509$3;
			FBSTRING TMP$1510$3;
			FBSTRING TMP$1511$3;
			int32 vr$236 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
			FBSTRING* vr$239 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			__builtin_memset( &TMP$1509$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$1509$3, (void*)vr$239, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1510$3, 0, 12 );
			FBSTRING* vr$245 = fb_StrConcat( &TMP$1510$3, (void*)vr$242, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$236 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1511$3, 0, 12 );
			FBSTRING* vr$248 = fb_StrConcat( &TMP$1511$3, (void*)vr$245, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$248, -1, 0 );
		}
		goto label$1143;
		label$1176:;
		if( TMP$1500$2 != 5 ) goto label$1178;
		label$1179:;
		{
			FBSTRING TMP$1512$3;
			FBSTRING TMP$1513$3;
			FBSTRING TMP$1514$3;
			FBSTRING* vr$251 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			uint8* vr$253 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$1512$3, 0, 12 );
			FBSTRING* vr$256 = fb_StrConcat( &TMP$1512$3, (void*)vr$253, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1513$3, 0, 12 );
			FBSTRING* vr$259 = fb_StrConcat( &TMP$1513$3, (void*)vr$256, -1, (void*)vr$251, -1 );
			__builtin_memset( &TMP$1514$3, 0, 12 );
			FBSTRING* vr$262 = fb_StrConcat( &TMP$1514$3, (void*)vr$259, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$262, -1, 0 );
		}
		goto label$1143;
		label$1178:;
		if( TMP$1500$2 != 2 ) goto label$1180;
		label$1181:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1143;
		label$1180:;
		if( TMP$1500$2 != 1 ) goto label$1182;
		label$1183:;
		{
			int32 TMP$1515$3;
			int32 TMP$1516$3;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$1184;
			int32 vr$267 = FBGETOPTION( 0 );
			TMP$1515$3 = -(vr$267 == 2);
			goto label$3091;
			label$1184:;
			TMP$1515$3 = 0;
			label$3091:;
			if( TMP$1515$3 == 0 ) goto label$1185;
			TMP$1516$3 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
			goto label$3092;
			label$1185:;
			TMP$1516$3 = 0;
			label$3092:;
			if( TMP$1516$3 == 0 ) goto label$1187;
			{
				FBSTRING TMP$1517$4;
				FBSTRING TMP$1518$4;
				FBSTRING TMP$1519$4;
				FBSTRING TMP$1520$4;
				int32 vr$273 = REG_FINDFREE( 999993, -1 );
				TEMPO$1 = vr$273;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				uint8* vr$277 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1517$4, 0, 12 );
				FBSTRING* vr$281 = fb_StrConcat( &TMP$1517$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1518$4, 0, 12 );
				FBSTRING* vr$284 = fb_StrConcat( &TMP$1518$4, (void*)vr$281, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1519$4, 0, 12 );
				FBSTRING* vr$287 = fb_StrConcat( &TMP$1519$4, (void*)vr$284, -1, (void*)vr$277, 0 );
				__builtin_memset( &TMP$1520$4, 0, 12 );
				FBSTRING* vr$290 = fb_StrConcat( &TMP$1520$4, (void*)vr$287, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&OP4$1, -1, (void*)vr$290, -1, 0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP2$1, -1, (void*)"]", 2, 0 );
			}
			goto label$1186;
			label$1187:;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1189;
				{
					FBSTRING TMP$1521$5;
					FBSTRING TMP$1522$5;
					FBSTRING TMP$1523$5;
					FBSTRING* vr$306 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					uint8* vr$308 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$1521$5, 0, 12 );
					FBSTRING* vr$311 = fb_StrConcat( &TMP$1521$5, (void*)vr$308, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$1522$5, 0, 12 );
					FBSTRING* vr$314 = fb_StrConcat( &TMP$1522$5, (void*)vr$311, -1, (void*)vr$306, -1 );
					__builtin_memset( &TMP$1523$5, 0, 12 );
					FBSTRING* vr$317 = fb_StrConcat( &TMP$1523$5, (void*)vr$314, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$317, -1, 0 );
				}
				goto label$1188;
				label$1189:;
				{
					FBSTRING TMP$1524$5;
					FBSTRING* vr$320 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$1524$5, 0, 12 );
					FBSTRING* vr$323 = fb_StrConcat( &TMP$1524$5, (void*)vr$320, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$323, -1, 0 );
				}
				label$1188:;
			}
			label$1186:;
		}
		goto label$1143;
		label$1182:;
		{
			FBSTRING TMP$1525$3;
			FBSTRING TMP$1528$3;
			FBSTRING TMP$1529$3;
			__builtin_memset( &TMP$1525$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1525$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1525$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1525$3 );
			__builtin_memset( &TMP$1528$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1528$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v2", 51, 0 );
			HWRITEASM64( &TMP$1528$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1528$3 );
			__builtin_memset( &TMP$1529$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1529$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1529$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1529$3 );
		}
		label$1190:;
		label$1143:;
	}
	int32 vr$338 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
	if( vr$338 == 0 ) goto label$1192;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1192:;
	}
	int32 vr$341 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
	if( vr$341 == 0 ) goto label$1194;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1194:;
	}
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1195;
	TMP$1530$1 = 24;
	goto label$3093;
	label$1195:;
	TMP$1530$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3093:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1196;
	TMP$1531$1 = 24;
	goto label$3094;
	label$1196:;
	TMP$1531$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$3094:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1530$1 * 28)) == 1) | -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1531$1 * 28)) == 1)) == 0 ) goto label$1198;
	{
		BOP_FLOAT( OP$1, V1$1, V2$1, VR$1, &OP1$1, &OP2$1, &OP3$1, &OP4$1, &PREFIX1$1, LABEL$1 );
		fb_StrDelete( (FBSTRING*)&OP1BIS$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&OP1PREV$1 );
		fb_StrDelete( (FBSTRING*)&SUFFIX$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1071;
	}
	label$1198:;
	label$1197:;
	__builtin_memset( &TMP$1532$1, 0, 12 );
	FBSTRING* vr$375 = fb_StrConcat( &TMP$1532$1, (void*)&PREFIX1$1, -1, (void*)&OP1$1, -1 );
	fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$375, -1, 0 );
	__builtin_memset( &TMP$1533$1, 0, 12 );
	FBSTRING* vr$381 = fb_StrConcat( &TMP$1533$1, (void*)&PREFIX2$1, -1, (void*)&OP2$1, -1 );
	fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$381, -1, 0 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1200;
	{
		if( *(int32*)V1$1 != 4 ) goto label$1202;
		{
			*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
		}
		goto label$1201;
		label$1202:;
		{
			int32 vr$387 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
			VRREG$1 = vr$387;
			if( *(int32*)V1$1 != 5 ) goto label$1204;
			{
				FBSTRING TMP$1534$4;
				FBSTRING TMP$1535$4;
				FBSTRING TMP$1536$4;
				FBSTRING TMP$1537$4;
				__builtin_memset( &TMP$1537$4, 0, 12 );
				__builtin_memset( &TMP$1534$4, 0, 12 );
				FBSTRING* vr$394 = fb_StrConcat( &TMP$1534$4, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1535$4, 0, 12 );
				FBSTRING* vr$397 = fb_StrConcat( &TMP$1535$4, (void*)vr$394, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1536$4, 0, 12 );
				FBSTRING* vr$400 = fb_StrConcat( &TMP$1536$4, (void*)vr$397, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1537$4, -1, (void*)vr$400, -1, 0 );
				HWRITEASM64( &TMP$1537$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1537$4 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
			}
			goto label$1203;
			label$1204:;
			{
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1207;
					label$1208:;
					if( TEMPODTYPE$1 == 9 ) goto label$1207;
					label$1209:;
					if( TEMPODTYPE$1 == 13 ) goto label$1207;
					label$1210:;
					if( TEMPODTYPE$1 == 14 ) goto label$1207;
					label$1211:;
					if( TEMPODTYPE$1 != 10 ) goto label$1206;
					label$1207:;
					{
						FBSTRING TMP$1538$6;
						FBSTRING TMP$1539$6;
						FBSTRING TMP$1540$6;
						FBSTRING TMP$1541$6;
						__builtin_memset( &TMP$1541$6, 0, 12 );
						__builtin_memset( &TMP$1538$6, 0, 12 );
						FBSTRING* vr$411 = fb_StrConcat( &TMP$1538$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1539$6, 0, 12 );
						FBSTRING* vr$414 = fb_StrConcat( &TMP$1539$6, (void*)vr$411, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1540$6, 0, 12 );
						FBSTRING* vr$417 = fb_StrConcat( &TMP$1540$6, (void*)vr$414, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1541$6, -1, (void*)vr$417, -1, 0 );
						HWRITEASM64( &TMP$1541$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1541$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1205;
					label$1206:;
					if( TEMPODTYPE$1 == 11 ) goto label$1213;
					label$1214:;
					if( TEMPODTYPE$1 != 12 ) goto label$1212;
					label$1213:;
					{
						FBSTRING TMP$1542$6;
						FBSTRING TMP$1543$6;
						FBSTRING TMP$1544$6;
						FBSTRING TMP$1545$6;
						__builtin_memset( &TMP$1545$6, 0, 12 );
						__builtin_memset( &TMP$1542$6, 0, 12 );
						FBSTRING* vr$428 = fb_StrConcat( &TMP$1542$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1543$6, 0, 12 );
						FBSTRING* vr$431 = fb_StrConcat( &TMP$1543$6, (void*)vr$428, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1544$6, 0, 12 );
						FBSTRING* vr$434 = fb_StrConcat( &TMP$1544$6, (void*)vr$431, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1545$6, -1, (void*)vr$434, -1, 0 );
						HWRITEASM64( &TMP$1545$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1545$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1205;
					label$1212:;
					if( TEMPODTYPE$1 == 5 ) goto label$1216;
					label$1217:;
					if( TEMPODTYPE$1 != 6 ) goto label$1215;
					label$1216:;
					{
						FBSTRING TMP$1546$6;
						FBSTRING TMP$1547$6;
						FBSTRING TMP$1548$6;
						FBSTRING TMP$1549$6;
						__builtin_memset( &TMP$1549$6, 0, 12 );
						__builtin_memset( &TMP$1546$6, 0, 12 );
						FBSTRING* vr$445 = fb_StrConcat( &TMP$1546$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1547$6, 0, 12 );
						FBSTRING* vr$448 = fb_StrConcat( &TMP$1547$6, (void*)vr$445, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1548$6, 0, 12 );
						FBSTRING* vr$451 = fb_StrConcat( &TMP$1548$6, (void*)vr$448, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1549$6, -1, (void*)vr$451, -1, 0 );
						HWRITEASM64( &TMP$1549$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1549$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1205;
					label$1215:;
					if( TEMPODTYPE$1 == 2 ) goto label$1219;
					label$1220:;
					if( TEMPODTYPE$1 == 3 ) goto label$1219;
					label$1221:;
					if( TEMPODTYPE$1 == 1 ) goto label$1219;
					label$1222:;
					if( TEMPODTYPE$1 != 4 ) goto label$1218;
					label$1219:;
					{
						FBSTRING TMP$1550$6;
						FBSTRING TMP$1551$6;
						FBSTRING TMP$1552$6;
						FBSTRING TMP$1553$6;
						__builtin_memset( &TMP$1553$6, 0, 12 );
						__builtin_memset( &TMP$1550$6, 0, 12 );
						FBSTRING* vr$462 = fb_StrConcat( &TMP$1550$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1551$6, 0, 12 );
						FBSTRING* vr$465 = fb_StrConcat( &TMP$1551$6, (void*)vr$462, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1552$6, 0, 12 );
						FBSTRING* vr$468 = fb_StrConcat( &TMP$1552$6, (void*)vr$465, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1553$6, -1, (void*)vr$468, -1, 0 );
						HWRITEASM64( &TMP$1553$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1553$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1205;
					label$1218:;
					{
						FBSTRING TMP$1554$6;
						FBSTRING TMP$1558$6;
						FBSTRING TMP$1559$6;
						FBSTRING TMP$1560$6;
						__builtin_memset( &TMP$1554$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1554$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1554$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1554$6 );
						__builtin_memset( &TMP$1559$6, 0, 12 );
						FBSTRING* vr$480 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1558$6, 0, 12 );
						FBSTRING* vr$483 = fb_StrConcat( &TMP$1558$6, (void*)"FOUND AN ERROR : BOP datatype not handled 011 = ", 49, (void*)vr$480, -1 );
						fb_StrAssign( (void*)&TMP$1559$6, -1, (void*)vr$483, -1, 0 );
						HWRITEASM64( &TMP$1559$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1559$6 );
						__builtin_memset( &TMP$1560$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1560$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1560$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1560$6 );
					}
					label$1223:;
					label$1205:;
				}
			}
			label$1203:;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		label$1201:;
		if( *(int32*)V2$1 != 5 ) goto label$1225;
		{
			FBSTRING TMP$1561$3;
			FBSTRING TMP$1562$3;
			FBSTRING TMP$1563$3;
			FBSTRING TMP$1564$3;
			int32 vr$493 = REG_FINDFREE( 99999, -1 );
			VRREG2$1 = vr$493;
			__builtin_memset( &TMP$1564$3, 0, 12 );
			__builtin_memset( &TMP$1561$3, 0, 12 );
			FBSTRING* vr$499 = fb_StrConcat( &TMP$1561$3, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1562$3, 0, 12 );
			FBSTRING* vr$502 = fb_StrConcat( &TMP$1562$3, (void*)vr$499, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1563$3, 0, 12 );
			FBSTRING* vr$505 = fb_StrConcat( &TMP$1563$3, (void*)vr$502, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1564$3, -1, (void*)vr$505, -1, 0 );
			HWRITEASM64( &TMP$1564$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1564$3 );
			fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0, 0 );
		}
		label$1225:;
		label$1224:;
	}
	goto label$1199;
	label$1200:;
	{
		if( *(int32*)V1$1 != 5 ) goto label$1227;
		{
			FBSTRING TMP$1565$3;
			FBSTRING TMP$1566$3;
			FBSTRING TMP$1567$3;
			FBSTRING TMP$1568$3;
			int32 vr$512 = REG_FINDFREE( 99999, -1 );
			VRREG2$1 = vr$512;
			__builtin_memset( &TMP$1568$3, 0, 12 );
			__builtin_memset( &TMP$1565$3, 0, 12 );
			FBSTRING* vr$518 = fb_StrConcat( &TMP$1565$3, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1566$3, 0, 12 );
			FBSTRING* vr$521 = fb_StrConcat( &TMP$1566$3, (void*)vr$518, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1567$3, 0, 12 );
			FBSTRING* vr$524 = fb_StrConcat( &TMP$1567$3, (void*)vr$521, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1568$3, -1, (void*)vr$524, -1, 0 );
			HWRITEASM64( &TMP$1568$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1568$3 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0, 0 );
		}
		label$1227:;
		label$1226:;
		if( OP$1 != 30 ) goto label$1229;
		{
			if( *(int32*)V1$1 == 4 ) goto label$1231;
			{
				FBSTRING TMP$1569$4;
				FBSTRING TMP$1570$4;
				FBSTRING TMP$1571$4;
				FBSTRING TMP$1572$4;
				struct $6IRVREG* vr$531 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				VR$1 = vr$531;
				int32 vr$533 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
				VRREG$1 = vr$533;
				fb_StrAssign( (void*)&OP1PREV$1, -1, (void*)&OP1$1, -1, 0 );
				__builtin_memset( &TMP$1572$4, 0, 12 );
				__builtin_memset( &TMP$1569$4, 0, 12 );
				FBSTRING* vr$541 = fb_StrConcat( &TMP$1569$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1570$4, 0, 12 );
				FBSTRING* vr$544 = fb_StrConcat( &TMP$1570$4, (void*)vr$541, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1571$4, 0, 12 );
				FBSTRING* vr$547 = fb_StrConcat( &TMP$1571$4, (void*)vr$544, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1572$4, -1, (void*)vr$547, -1, 0 );
				HWRITEASM64( &TMP$1572$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1572$4 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
			}
			label$1231:;
			label$1230:;
		}
		goto label$1228;
		label$1229:;
		{
			if( (-(*(int32*)V2$1 != 4) & -(*(int32*)V2$1 != 0)) == 0 ) goto label$1233;
			{
				struct $6IRVREG* vr$558 = IRHLALLOCVREG( TEMPODTYPE$1, (struct $8FBSYMBOL*)0u );
				VRTEMPO$1 = vr$558;
				int32 vr$560 = REG_FINDFREE( *(int32*)((uint8*)VRTEMPO$1 + 12), -1 );
				VRREG$1 = vr$560;
				if( *(int32*)V2$1 != 5 ) goto label$1235;
				{
					FBSTRING TMP$1573$5;
					FBSTRING TMP$1574$5;
					FBSTRING TMP$1575$5;
					FBSTRING TMP$1576$5;
					__builtin_memset( &TMP$1576$5, 0, 12 );
					__builtin_memset( &TMP$1573$5, 0, 12 );
					FBSTRING* vr$567 = fb_StrConcat( &TMP$1573$5, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1574$5, 0, 12 );
					FBSTRING* vr$570 = fb_StrConcat( &TMP$1574$5, (void*)vr$567, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1575$5, 0, 12 );
					FBSTRING* vr$573 = fb_StrConcat( &TMP$1575$5, (void*)vr$570, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1576$5, -1, (void*)vr$573, -1, 0 );
					HWRITEASM64( &TMP$1576$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1576$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1234;
				label$1235:;
				{
					{
						if( TEMPODTYPE$1 == 8 ) goto label$1238;
						label$1239:;
						if( TEMPODTYPE$1 == 9 ) goto label$1238;
						label$1240:;
						if( TEMPODTYPE$1 == 13 ) goto label$1238;
						label$1241:;
						if( TEMPODTYPE$1 == 14 ) goto label$1238;
						label$1242:;
						if( TEMPODTYPE$1 != 10 ) goto label$1237;
						label$1238:;
						{
							FBSTRING TMP$1577$7;
							FBSTRING TMP$1578$7;
							FBSTRING TMP$1579$7;
							FBSTRING TMP$1580$7;
							__builtin_memset( &TMP$1580$7, 0, 12 );
							__builtin_memset( &TMP$1577$7, 0, 12 );
							FBSTRING* vr$584 = fb_StrConcat( &TMP$1577$7, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1578$7, 0, 12 );
							FBSTRING* vr$587 = fb_StrConcat( &TMP$1578$7, (void*)vr$584, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1579$7, 0, 12 );
							FBSTRING* vr$590 = fb_StrConcat( &TMP$1579$7, (void*)vr$587, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1580$7, -1, (void*)vr$590, -1, 0 );
							HWRITEASM64( &TMP$1580$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1580$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1236;
						label$1237:;
						if( TEMPODTYPE$1 == 11 ) goto label$1244;
						label$1245:;
						if( TEMPODTYPE$1 != 12 ) goto label$1243;
						label$1244:;
						{
							FBSTRING TMP$1581$7;
							FBSTRING TMP$1582$7;
							FBSTRING TMP$1583$7;
							FBSTRING TMP$1584$7;
							__builtin_memset( &TMP$1584$7, 0, 12 );
							__builtin_memset( &TMP$1581$7, 0, 12 );
							FBSTRING* vr$601 = fb_StrConcat( &TMP$1581$7, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1582$7, 0, 12 );
							FBSTRING* vr$604 = fb_StrConcat( &TMP$1582$7, (void*)vr$601, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1583$7, 0, 12 );
							FBSTRING* vr$607 = fb_StrConcat( &TMP$1583$7, (void*)vr$604, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1584$7, -1, (void*)vr$607, -1, 0 );
							HWRITEASM64( &TMP$1584$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1584$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1236;
						label$1243:;
						if( TEMPODTYPE$1 == 5 ) goto label$1247;
						label$1248:;
						if( TEMPODTYPE$1 != 6 ) goto label$1246;
						label$1247:;
						{
							FBSTRING TMP$1585$7;
							FBSTRING TMP$1586$7;
							FBSTRING TMP$1587$7;
							FBSTRING TMP$1588$7;
							__builtin_memset( &TMP$1588$7, 0, 12 );
							__builtin_memset( &TMP$1585$7, 0, 12 );
							FBSTRING* vr$618 = fb_StrConcat( &TMP$1585$7, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1586$7, 0, 12 );
							FBSTRING* vr$621 = fb_StrConcat( &TMP$1586$7, (void*)vr$618, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1587$7, 0, 12 );
							FBSTRING* vr$624 = fb_StrConcat( &TMP$1587$7, (void*)vr$621, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1588$7, -1, (void*)vr$624, -1, 0 );
							HWRITEASM64( &TMP$1588$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1588$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1236;
						label$1246:;
						if( TEMPODTYPE$1 == 2 ) goto label$1250;
						label$1251:;
						if( TEMPODTYPE$1 == 3 ) goto label$1250;
						label$1252:;
						if( TEMPODTYPE$1 == 1 ) goto label$1250;
						label$1253:;
						if( TEMPODTYPE$1 != 4 ) goto label$1249;
						label$1250:;
						{
							FBSTRING TMP$1589$7;
							FBSTRING TMP$1590$7;
							FBSTRING TMP$1591$7;
							FBSTRING TMP$1592$7;
							__builtin_memset( &TMP$1592$7, 0, 12 );
							__builtin_memset( &TMP$1589$7, 0, 12 );
							FBSTRING* vr$635 = fb_StrConcat( &TMP$1589$7, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1590$7, 0, 12 );
							FBSTRING* vr$638 = fb_StrConcat( &TMP$1590$7, (void*)vr$635, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1591$7, 0, 12 );
							FBSTRING* vr$641 = fb_StrConcat( &TMP$1591$7, (void*)vr$638, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1592$7, -1, (void*)vr$641, -1, 0 );
							HWRITEASM64( &TMP$1592$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1592$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1236;
						label$1249:;
						{
							FBSTRING TMP$1593$7;
							FBSTRING TMP$1597$7;
							FBSTRING TMP$1598$7;
							FBSTRING TMP$1599$7;
							__builtin_memset( &TMP$1593$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$1593$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$1593$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1593$7 );
							__builtin_memset( &TMP$1598$7, 0, 12 );
							FBSTRING* vr$653 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
							__builtin_memset( &TMP$1597$7, 0, 12 );
							FBSTRING* vr$656 = fb_StrConcat( &TMP$1597$7, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$653, -1 );
							fb_StrAssign( (void*)&TMP$1598$7, -1, (void*)vr$656, -1, 0 );
							HWRITEASM64( &TMP$1598$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1598$7 );
							__builtin_memset( &TMP$1599$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$1599$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$1599$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1599$7 );
						}
						label$1254:;
						label$1236:;
					}
				}
				label$1234:;
			}
			label$1233:;
			label$1232:;
		}
		label$1228:;
	}
	label$1199:;
	if( *(int32*)V2$1 != 0 ) goto label$1256;
	{
		if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) >= 2147483648ll)) == 0 ) goto label$1258;
		{
			if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$1260;
			{
				FBSTRING TMP$1600$4;
				FBSTRING TMP$1601$4;
				__builtin_memset( &TMP$1601$4, 0, 12 );
				FBSTRING* vr$677 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				__builtin_memset( &TMP$1600$4, 0, 12 );
				FBSTRING* vr$680 = fb_StrConcat( &TMP$1600$4, (void*)"mov rax, ", 10, (void*)vr$677, -1 );
				fb_StrAssign( (void*)&TMP$1601$4, -1, (void*)vr$680, -1, 0 );
				HWRITEASM64( &TMP$1601$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1601$4 );
			}
			goto label$1259;
			label$1260:;
			{
				FBSTRING TMP$1603$4;
				FBSTRING TMP$1604$4;
				__builtin_memset( &TMP$1604$4, 0, 12 );
				FBSTRING* vr$686 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				__builtin_memset( &TMP$1603$4, 0, 12 );
				FBSTRING* vr$689 = fb_StrConcat( &TMP$1603$4, (void*)"mov eax, ", 10, (void*)vr$686, -1 );
				fb_StrAssign( (void*)&TMP$1604$4, -1, (void*)vr$689, -1, 0 );
				HWRITEASM64( &TMP$1604$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1604$4 );
			}
			label$1259:;
			fb_StrAssign( (void*)&OP2$1, -1, (void*)"rax", 4, 0 );
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1263;
				label$1264:;
				if( TEMPODTYPE$1 == 9 ) goto label$1263;
				label$1265:;
				if( TEMPODTYPE$1 == 13 ) goto label$1263;
				label$1266:;
				if( TEMPODTYPE$1 == 14 ) goto label$1263;
				label$1267:;
				if( TEMPODTYPE$1 == 10 ) goto label$1263;
				label$1268:;
				if( TEMPODTYPE$1 != 16 ) goto label$1262;
				label$1263:;
				{
				}
				goto label$1261;
				label$1262:;
				if( TEMPODTYPE$1 == 11 ) goto label$1270;
				label$1271:;
				if( TEMPODTYPE$1 == 12 ) goto label$1270;
				label$1272:;
				if( TEMPODTYPE$1 != 15 ) goto label$1269;
				label$1270:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"eax", 4, 0 );
				}
				goto label$1261;
				label$1269:;
				if( TEMPODTYPE$1 == 5 ) goto label$1274;
				label$1275:;
				if( TEMPODTYPE$1 != 6 ) goto label$1273;
				label$1274:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"ax", 3, 0 );
				}
				goto label$1261;
				label$1273:;
				if( TEMPODTYPE$1 == 2 ) goto label$1277;
				label$1278:;
				if( TEMPODTYPE$1 == 3 ) goto label$1277;
				label$1279:;
				if( TEMPODTYPE$1 == 1 ) goto label$1277;
				label$1280:;
				if( TEMPODTYPE$1 != 4 ) goto label$1276;
				label$1277:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"al", 3, 0 );
				}
				goto label$1261;
				label$1276:;
				{
					FBSTRING TMP$1605$5;
					FBSTRING TMP$1609$5;
					FBSTRING TMP$1610$5;
					FBSTRING TMP$1611$5;
					__builtin_memset( &TMP$1605$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1605$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1605$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1605$5 );
					__builtin_memset( &TMP$1610$5, 0, 12 );
					FBSTRING* vr$703 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1609$5, 0, 12 );
					FBSTRING* vr$706 = fb_StrConcat( &TMP$1609$5, (void*)"FOUND AN ERROR : BOP datatype not handled 0100 = ", 50, (void*)vr$703, -1 );
					fb_StrAssign( (void*)&TMP$1610$5, -1, (void*)vr$706, -1, 0 );
					HWRITEASM64( &TMP$1610$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1610$5 );
					__builtin_memset( &TMP$1611$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1611$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1611$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1611$5 );
				}
				label$1281:;
				label$1261:;
			}
		}
		label$1258:;
		label$1257:;
	}
	label$1256:;
	label$1255:;
	{
		uint32 TMP$1612$2;
		TMP$1612$2 = (uint32)OP$1;
		goto label$1283;
		label$1284:;
		{
			int32 vr$715 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"1", 2 );
			if( vr$715 != 0 ) goto label$1286;
			{
				FBSTRING TMP$1614$4;
				FBSTRING TMP$1615$4;
				__builtin_memset( &TMP$1615$4, 0, 12 );
				__builtin_memset( &TMP$1614$4, 0, 12 );
				FBSTRING* vr$720 = fb_StrConcat( &TMP$1614$4, (void*)"inc ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1615$4, -1, (void*)vr$720, -1, 0 );
				HWRITEASM64( &TMP$1615$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1615$4 );
			}
			goto label$1285;
			label$1286:;
			int32 vr$725 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"-1", 3 );
			if( vr$725 != 0 ) goto label$1287;
			{
				FBSTRING TMP$1617$4;
				FBSTRING TMP$1618$4;
				__builtin_memset( &TMP$1618$4, 0, 12 );
				__builtin_memset( &TMP$1617$4, 0, 12 );
				FBSTRING* vr$730 = fb_StrConcat( &TMP$1617$4, (void*)"dec ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1618$4, -1, (void*)vr$730, -1, 0 );
				HWRITEASM64( &TMP$1618$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1618$4 );
			}
			goto label$1285;
			label$1287:;
			{
				FBSTRING TMP$1619$4;
				FBSTRING TMP$1620$4;
				FBSTRING TMP$1621$4;
				FBSTRING TMP$1622$4;
				__builtin_memset( &TMP$1622$4, 0, 12 );
				__builtin_memset( &TMP$1619$4, 0, 12 );
				FBSTRING* vr$739 = fb_StrConcat( &TMP$1619$4, (void*)"add ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1620$4, 0, 12 );
				FBSTRING* vr$742 = fb_StrConcat( &TMP$1620$4, (void*)vr$739, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1621$4, 0, 12 );
				FBSTRING* vr$745 = fb_StrConcat( &TMP$1621$4, (void*)vr$742, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1622$4, -1, (void*)vr$745, -1, 0 );
				HWRITEASM64( &TMP$1622$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1622$4 );
			}
			label$1285:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1289;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1289:;
			}
		}
		goto label$1282;
		label$1290:;
		{
			FBSTRING TMP$1624$3;
			FBSTRING TMP$1625$3;
			FBSTRING TMP$1626$3;
			FBSTRING TMP$1627$3;
			__builtin_memset( &TMP$1627$3, 0, 12 );
			__builtin_memset( &TMP$1624$3, 0, 12 );
			FBSTRING* vr$754 = fb_StrConcat( &TMP$1624$3, (void*)"and ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1625$3, 0, 12 );
			FBSTRING* vr$757 = fb_StrConcat( &TMP$1625$3, (void*)vr$754, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1626$3, 0, 12 );
			FBSTRING* vr$760 = fb_StrConcat( &TMP$1626$3, (void*)vr$757, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1627$3, -1, (void*)vr$760, -1, 0 );
			HWRITEASM64( &TMP$1627$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1627$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1292;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1292:;
			}
		}
		goto label$1282;
		label$1293:;
		{
			FBSTRING TMP$1628$3;
			FBSTRING TMP$1629$3;
			FBSTRING TMP$1630$3;
			FBSTRING TMP$1631$3;
			__builtin_memset( &TMP$1631$3, 0, 12 );
			__builtin_memset( &TMP$1628$3, 0, 12 );
			FBSTRING* vr$769 = fb_StrConcat( &TMP$1628$3, (void*)"or ", 4, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1629$3, 0, 12 );
			FBSTRING* vr$772 = fb_StrConcat( &TMP$1629$3, (void*)vr$769, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1630$3, 0, 12 );
			FBSTRING* vr$775 = fb_StrConcat( &TMP$1630$3, (void*)vr$772, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1631$3, -1, (void*)vr$775, -1, 0 );
			HWRITEASM64( &TMP$1631$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1631$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1295;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1295:;
			}
		}
		goto label$1282;
		label$1296:;
		{
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1298;
			{
				FBSTRING TMP$1659$4;
				FBSTRING TMP$1660$4;
				FBSTRING TMP$1661$4;
				FBSTRING TMP$1662$4;
				if( TEMPODTYPE$1 != 1 ) goto label$1300;
				{
					FBSTRING TMP$1633$5;
					FBSTRING TMP$1634$5;
					FBSTRING TMP$1635$5;
					__builtin_memset( &TMP$1635$5, 0, 12 );
					__builtin_memset( &TMP$1633$5, 0, 12 );
					FBSTRING* vr$783 = fb_StrConcat( &TMP$1633$5, (void*)"xor ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1634$5, 0, 12 );
					FBSTRING* vr$786 = fb_StrConcat( &TMP$1634$5, (void*)vr$783, -1, (void*)", 1", 4 );
					fb_StrAssign( (void*)&TMP$1635$5, -1, (void*)vr$786, -1, 0 );
					HWRITEASM64( &TMP$1635$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1635$5 );
				}
				goto label$1299;
				label$1300:;
				{
					FBSTRING TMP$1637$5;
					FBSTRING TMP$1638$5;
					__builtin_memset( &TMP$1638$5, 0, 12 );
					__builtin_memset( &TMP$1637$5, 0, 12 );
					FBSTRING* vr$794 = fb_StrConcat( &TMP$1637$5, (void*)"not ", 5, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1638$5, -1, (void*)vr$794, -1, 0 );
					HWRITEASM64( &TMP$1638$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1638$5 );
				}
				label$1299:;
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1303;
					label$1304:;
					if( TEMPODTYPE$1 == 9 ) goto label$1303;
					label$1305:;
					if( TEMPODTYPE$1 == 13 ) goto label$1303;
					label$1306:;
					if( TEMPODTYPE$1 == 14 ) goto label$1303;
					label$1307:;
					if( TEMPODTYPE$1 != 10 ) goto label$1302;
					label$1303:;
					{
						FBSTRING TMP$1639$6;
						FBSTRING TMP$1640$6;
						FBSTRING TMP$1641$6;
						FBSTRING TMP$1642$6;
						__builtin_memset( &TMP$1642$6, 0, 12 );
						__builtin_memset( &TMP$1639$6, 0, 12 );
						FBSTRING* vr$802 = fb_StrConcat( &TMP$1639$6, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
						__builtin_memset( &TMP$1640$6, 0, 12 );
						FBSTRING* vr$805 = fb_StrConcat( &TMP$1640$6, (void*)vr$802, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1641$6, 0, 12 );
						FBSTRING* vr$808 = fb_StrConcat( &TMP$1641$6, (void*)vr$805, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1642$6, -1, (void*)vr$808, -1, 0 );
						HWRITEASM64( &TMP$1642$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1642$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRQ$, 0, 0 );
					}
					goto label$1301;
					label$1302:;
					if( TEMPODTYPE$1 == 11 ) goto label$1309;
					label$1310:;
					if( TEMPODTYPE$1 != 12 ) goto label$1308;
					label$1309:;
					{
						FBSTRING TMP$1643$6;
						FBSTRING TMP$1644$6;
						FBSTRING TMP$1645$6;
						FBSTRING TMP$1646$6;
						__builtin_memset( &TMP$1646$6, 0, 12 );
						__builtin_memset( &TMP$1643$6, 0, 12 );
						FBSTRING* vr$817 = fb_StrConcat( &TMP$1643$6, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
						__builtin_memset( &TMP$1644$6, 0, 12 );
						FBSTRING* vr$820 = fb_StrConcat( &TMP$1644$6, (void*)vr$817, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1645$6, 0, 12 );
						FBSTRING* vr$823 = fb_StrConcat( &TMP$1645$6, (void*)vr$820, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1646$6, -1, (void*)vr$823, -1, 0 );
						HWRITEASM64( &TMP$1646$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1646$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRD$, 0, 0 );
					}
					goto label$1301;
					label$1308:;
					if( TEMPODTYPE$1 == 5 ) goto label$1312;
					label$1313:;
					if( TEMPODTYPE$1 != 6 ) goto label$1311;
					label$1312:;
					{
						FBSTRING TMP$1647$6;
						FBSTRING TMP$1648$6;
						FBSTRING TMP$1649$6;
						FBSTRING TMP$1650$6;
						__builtin_memset( &TMP$1650$6, 0, 12 );
						__builtin_memset( &TMP$1647$6, 0, 12 );
						FBSTRING* vr$832 = fb_StrConcat( &TMP$1647$6, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
						__builtin_memset( &TMP$1648$6, 0, 12 );
						FBSTRING* vr$835 = fb_StrConcat( &TMP$1648$6, (void*)vr$832, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1649$6, 0, 12 );
						FBSTRING* vr$838 = fb_StrConcat( &TMP$1649$6, (void*)vr$835, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1650$6, -1, (void*)vr$838, -1, 0 );
						HWRITEASM64( &TMP$1650$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1650$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRW$, 0, 0 );
					}
					goto label$1301;
					label$1311:;
					if( TEMPODTYPE$1 == 2 ) goto label$1315;
					label$1316:;
					if( TEMPODTYPE$1 == 3 ) goto label$1315;
					label$1317:;
					if( TEMPODTYPE$1 == 1 ) goto label$1315;
					label$1318:;
					if( TEMPODTYPE$1 != 4 ) goto label$1314;
					label$1315:;
					{
						FBSTRING TMP$1651$6;
						FBSTRING TMP$1652$6;
						FBSTRING TMP$1653$6;
						FBSTRING TMP$1654$6;
						__builtin_memset( &TMP$1654$6, 0, 12 );
						__builtin_memset( &TMP$1651$6, 0, 12 );
						FBSTRING* vr$847 = fb_StrConcat( &TMP$1651$6, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
						__builtin_memset( &TMP$1652$6, 0, 12 );
						FBSTRING* vr$850 = fb_StrConcat( &TMP$1652$6, (void*)vr$847, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1653$6, 0, 12 );
						FBSTRING* vr$853 = fb_StrConcat( &TMP$1653$6, (void*)vr$850, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1654$6, -1, (void*)vr$853, -1, 0 );
						HWRITEASM64( &TMP$1654$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1654$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRB$, 0, 0 );
					}
					goto label$1301;
					label$1314:;
					{
						FBSTRING TMP$1655$6;
						FBSTRING TMP$1656$6;
						FBSTRING TMP$1657$6;
						FBSTRING TMP$1658$6;
						__builtin_memset( &TMP$1655$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1655$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1655$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1655$6 );
						__builtin_memset( &TMP$1657$6, 0, 12 );
						FBSTRING* vr$864 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1656$6, 0, 12 );
						FBSTRING* vr$867 = fb_StrConcat( &TMP$1656$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$864, -1 );
						fb_StrAssign( (void*)&TMP$1657$6, -1, (void*)vr$867, -1, 0 );
						HWRITEASM64( &TMP$1657$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1657$6 );
						__builtin_memset( &TMP$1658$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1658$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1658$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1658$6 );
					}
					label$1319:;
					label$1301:;
				}
				__builtin_memset( &TMP$1662$4, 0, 12 );
				__builtin_memset( &TMP$1659$4, 0, 12 );
				FBSTRING* vr$880 = fb_StrConcat( &TMP$1659$4, (void*)"or ", 4, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1660$4, 0, 12 );
				FBSTRING* vr$883 = fb_StrConcat( &TMP$1660$4, (void*)vr$880, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1661$4, 0, 12 );
				FBSTRING* vr$886 = fb_StrConcat( &TMP$1661$4, (void*)vr$883, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1662$4, -1, (void*)vr$886, -1, 0 );
				HWRITEASM64( &TMP$1662$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1662$4 );
			}
			goto label$1297;
			label$1298:;
			{
				FBSTRING TMP$1688$4;
				FBSTRING TMP$1689$4;
				FBSTRING TMP$1690$4;
				FBSTRING TMP$1691$4;
				FBSTRING TMP$1692$4;
				FBSTRING TMP$1693$4;
				FBSTRING TMP$1694$4;
				FBSTRING TMP$1695$4;
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1322;
					label$1323:;
					if( TEMPODTYPE$1 == 9 ) goto label$1322;
					label$1324:;
					if( TEMPODTYPE$1 == 13 ) goto label$1322;
					label$1325:;
					if( TEMPODTYPE$1 == 14 ) goto label$1322;
					label$1326:;
					if( TEMPODTYPE$1 != 10 ) goto label$1321;
					label$1322:;
					{
						FBSTRING TMP$1663$6;
						FBSTRING TMP$1664$6;
						FBSTRING TMP$1665$6;
						FBSTRING TMP$1666$6;
						__builtin_memset( &TMP$1666$6, 0, 12 );
						__builtin_memset( &TMP$1663$6, 0, 12 );
						FBSTRING* vr$894 = fb_StrConcat( &TMP$1663$6, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
						__builtin_memset( &TMP$1664$6, 0, 12 );
						FBSTRING* vr$897 = fb_StrConcat( &TMP$1664$6, (void*)vr$894, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1665$6, 0, 12 );
						FBSTRING* vr$900 = fb_StrConcat( &TMP$1665$6, (void*)vr$897, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1666$6, -1, (void*)vr$900, -1, 0 );
						HWRITEASM64( &TMP$1666$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1666$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRQ$, 0, 0 );
					}
					goto label$1320;
					label$1321:;
					if( TEMPODTYPE$1 == 11 ) goto label$1328;
					label$1329:;
					if( TEMPODTYPE$1 != 12 ) goto label$1327;
					label$1328:;
					{
						FBSTRING TMP$1667$6;
						FBSTRING TMP$1668$6;
						FBSTRING TMP$1669$6;
						FBSTRING TMP$1670$6;
						__builtin_memset( &TMP$1670$6, 0, 12 );
						__builtin_memset( &TMP$1667$6, 0, 12 );
						FBSTRING* vr$909 = fb_StrConcat( &TMP$1667$6, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
						__builtin_memset( &TMP$1668$6, 0, 12 );
						FBSTRING* vr$912 = fb_StrConcat( &TMP$1668$6, (void*)vr$909, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1669$6, 0, 12 );
						FBSTRING* vr$915 = fb_StrConcat( &TMP$1669$6, (void*)vr$912, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1670$6, -1, (void*)vr$915, -1, 0 );
						HWRITEASM64( &TMP$1670$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1670$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRD$, 0, 0 );
					}
					goto label$1320;
					label$1327:;
					if( TEMPODTYPE$1 == 5 ) goto label$1331;
					label$1332:;
					if( TEMPODTYPE$1 != 6 ) goto label$1330;
					label$1331:;
					{
						FBSTRING TMP$1671$6;
						FBSTRING TMP$1672$6;
						FBSTRING TMP$1673$6;
						FBSTRING TMP$1674$6;
						__builtin_memset( &TMP$1674$6, 0, 12 );
						__builtin_memset( &TMP$1671$6, 0, 12 );
						FBSTRING* vr$924 = fb_StrConcat( &TMP$1671$6, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
						__builtin_memset( &TMP$1672$6, 0, 12 );
						FBSTRING* vr$927 = fb_StrConcat( &TMP$1672$6, (void*)vr$924, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1673$6, 0, 12 );
						FBSTRING* vr$930 = fb_StrConcat( &TMP$1673$6, (void*)vr$927, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1674$6, -1, (void*)vr$930, -1, 0 );
						HWRITEASM64( &TMP$1674$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1674$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRW$, 0, 0 );
					}
					goto label$1320;
					label$1330:;
					if( TEMPODTYPE$1 == 2 ) goto label$1334;
					label$1335:;
					if( TEMPODTYPE$1 == 3 ) goto label$1334;
					label$1336:;
					if( TEMPODTYPE$1 == 1 ) goto label$1334;
					label$1337:;
					if( TEMPODTYPE$1 != 4 ) goto label$1333;
					label$1334:;
					{
						FBSTRING TMP$1675$6;
						FBSTRING TMP$1676$6;
						FBSTRING TMP$1677$6;
						FBSTRING TMP$1678$6;
						__builtin_memset( &TMP$1678$6, 0, 12 );
						__builtin_memset( &TMP$1675$6, 0, 12 );
						FBSTRING* vr$939 = fb_StrConcat( &TMP$1675$6, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
						__builtin_memset( &TMP$1676$6, 0, 12 );
						FBSTRING* vr$942 = fb_StrConcat( &TMP$1676$6, (void*)vr$939, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1677$6, 0, 12 );
						FBSTRING* vr$945 = fb_StrConcat( &TMP$1677$6, (void*)vr$942, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1678$6, -1, (void*)vr$945, -1, 0 );
						HWRITEASM64( &TMP$1678$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1678$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRB$, 0, 0 );
					}
					goto label$1320;
					label$1333:;
					{
						FBSTRING TMP$1679$6;
						FBSTRING TMP$1680$6;
						FBSTRING TMP$1681$6;
						FBSTRING TMP$1682$6;
						__builtin_memset( &TMP$1679$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1679$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1679$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1679$6 );
						__builtin_memset( &TMP$1681$6, 0, 12 );
						FBSTRING* vr$956 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1680$6, 0, 12 );
						FBSTRING* vr$959 = fb_StrConcat( &TMP$1680$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$956, -1 );
						fb_StrAssign( (void*)&TMP$1681$6, -1, (void*)vr$959, -1, 0 );
						HWRITEASM64( &TMP$1681$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1681$6 );
						__builtin_memset( &TMP$1682$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1682$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1682$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1682$6 );
					}
					label$1338:;
					label$1320:;
				}
				if( TEMPODTYPE$1 != 1 ) goto label$1340;
				{
					FBSTRING TMP$1683$5;
					FBSTRING TMP$1684$5;
					FBSTRING TMP$1685$5;
					__builtin_memset( &TMP$1685$5, 0, 12 );
					__builtin_memset( &TMP$1683$5, 0, 12 );
					FBSTRING* vr$971 = fb_StrConcat( &TMP$1683$5, (void*)"xor ", 5, (void*)&OP1BIS$1, -1 );
					__builtin_memset( &TMP$1684$5, 0, 12 );
					FBSTRING* vr$974 = fb_StrConcat( &TMP$1684$5, (void*)vr$971, -1, (void*)", 1", 4 );
					fb_StrAssign( (void*)&TMP$1685$5, -1, (void*)vr$974, -1, 0 );
					HWRITEASM64( &TMP$1685$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1685$5 );
				}
				goto label$1339;
				label$1340:;
				{
					FBSTRING TMP$1686$5;
					FBSTRING TMP$1687$5;
					__builtin_memset( &TMP$1687$5, 0, 12 );
					__builtin_memset( &TMP$1686$5, 0, 12 );
					FBSTRING* vr$982 = fb_StrConcat( &TMP$1686$5, (void*)"not ", 5, (void*)&OP1BIS$1, -1 );
					fb_StrAssign( (void*)&TMP$1687$5, -1, (void*)vr$982, -1, 0 );
					HWRITEASM64( &TMP$1687$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1687$5 );
				}
				label$1339:;
				__builtin_memset( &TMP$1691$4, 0, 12 );
				__builtin_memset( &TMP$1688$4, 0, 12 );
				FBSTRING* vr$991 = fb_StrConcat( &TMP$1688$4, (void*)"or ", 4, (void*)&OP1BIS$1, -1 );
				__builtin_memset( &TMP$1689$4, 0, 12 );
				FBSTRING* vr$994 = fb_StrConcat( &TMP$1689$4, (void*)vr$991, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1690$4, 0, 12 );
				FBSTRING* vr$997 = fb_StrConcat( &TMP$1690$4, (void*)vr$994, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1691$4, -1, (void*)vr$997, -1, 0 );
				HWRITEASM64( &TMP$1691$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1691$4 );
				__builtin_memset( &TMP$1695$4, 0, 12 );
				__builtin_memset( &TMP$1692$4, 0, 12 );
				FBSTRING* vr$1006 = fb_StrConcat( &TMP$1692$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1693$4, 0, 12 );
				FBSTRING* vr$1009 = fb_StrConcat( &TMP$1693$4, (void*)vr$1006, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1694$4, 0, 12 );
				FBSTRING* vr$1012 = fb_StrConcat( &TMP$1694$4, (void*)vr$1009, -1, (void*)&OP1BIS$1, -1 );
				fb_StrAssign( (void*)&TMP$1695$4, -1, (void*)vr$1012, -1, 0 );
				HWRITEASM64( &TMP$1695$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1695$4 );
			}
			label$1297:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1342;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1342:;
			}
		}
		goto label$1282;
		label$1343:;
		{
			FBSTRING TMP$1696$3;
			FBSTRING TMP$1697$3;
			FBSTRING TMP$1698$3;
			FBSTRING TMP$1699$3;
			__builtin_memset( &TMP$1699$3, 0, 12 );
			__builtin_memset( &TMP$1696$3, 0, 12 );
			FBSTRING* vr$1021 = fb_StrConcat( &TMP$1696$3, (void*)"xor ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1697$3, 0, 12 );
			FBSTRING* vr$1024 = fb_StrConcat( &TMP$1697$3, (void*)vr$1021, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1698$3, 0, 12 );
			FBSTRING* vr$1027 = fb_StrConcat( &TMP$1698$3, (void*)vr$1024, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1699$3, -1, (void*)vr$1027, -1, 0 );
			HWRITEASM64( &TMP$1699$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1699$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1345;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1345:;
			}
		}
		goto label$1282;
		label$1346:;
		{
			FBSTRING TMP$1720$3;
			FBSTRING TMP$1721$3;
			FBSTRING TMP$1722$3;
			FBSTRING TMP$1723$3;
			FBSTRING TMP$1729$3;
			FBSTRING TMP$1730$3;
			FBSTRING TMP$1731$3;
			FBSTRING TMP$1732$3;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1349;
				label$1350:;
				if( TEMPODTYPE$1 == 9 ) goto label$1349;
				label$1351:;
				if( TEMPODTYPE$1 == 13 ) goto label$1349;
				label$1352:;
				if( TEMPODTYPE$1 == 14 ) goto label$1349;
				label$1353:;
				if( TEMPODTYPE$1 != 10 ) goto label$1348;
				label$1349:;
				{
					FBSTRING TMP$1700$5;
					FBSTRING TMP$1701$5;
					FBSTRING TMP$1702$5;
					FBSTRING TMP$1703$5;
					__builtin_memset( &TMP$1703$5, 0, 12 );
					__builtin_memset( &TMP$1700$5, 0, 12 );
					FBSTRING* vr$1035 = fb_StrConcat( &TMP$1700$5, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
					__builtin_memset( &TMP$1701$5, 0, 12 );
					FBSTRING* vr$1038 = fb_StrConcat( &TMP$1701$5, (void*)vr$1035, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1702$5, 0, 12 );
					FBSTRING* vr$1041 = fb_StrConcat( &TMP$1702$5, (void*)vr$1038, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1703$5, -1, (void*)vr$1041, -1, 0 );
					HWRITEASM64( &TMP$1703$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1703$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRQ$, 0, 0 );
				}
				goto label$1347;
				label$1348:;
				if( TEMPODTYPE$1 == 11 ) goto label$1355;
				label$1356:;
				if( TEMPODTYPE$1 != 12 ) goto label$1354;
				label$1355:;
				{
					FBSTRING TMP$1704$5;
					FBSTRING TMP$1705$5;
					FBSTRING TMP$1706$5;
					FBSTRING TMP$1707$5;
					__builtin_memset( &TMP$1707$5, 0, 12 );
					__builtin_memset( &TMP$1704$5, 0, 12 );
					FBSTRING* vr$1050 = fb_StrConcat( &TMP$1704$5, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
					__builtin_memset( &TMP$1705$5, 0, 12 );
					FBSTRING* vr$1053 = fb_StrConcat( &TMP$1705$5, (void*)vr$1050, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1706$5, 0, 12 );
					FBSTRING* vr$1056 = fb_StrConcat( &TMP$1706$5, (void*)vr$1053, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1707$5, -1, (void*)vr$1056, -1, 0 );
					HWRITEASM64( &TMP$1707$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1707$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRD$, 0, 0 );
				}
				goto label$1347;
				label$1354:;
				if( TEMPODTYPE$1 == 5 ) goto label$1358;
				label$1359:;
				if( TEMPODTYPE$1 != 6 ) goto label$1357;
				label$1358:;
				{
					FBSTRING TMP$1708$5;
					FBSTRING TMP$1709$5;
					FBSTRING TMP$1710$5;
					FBSTRING TMP$1711$5;
					__builtin_memset( &TMP$1711$5, 0, 12 );
					__builtin_memset( &TMP$1708$5, 0, 12 );
					FBSTRING* vr$1065 = fb_StrConcat( &TMP$1708$5, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
					__builtin_memset( &TMP$1709$5, 0, 12 );
					FBSTRING* vr$1068 = fb_StrConcat( &TMP$1709$5, (void*)vr$1065, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1710$5, 0, 12 );
					FBSTRING* vr$1071 = fb_StrConcat( &TMP$1710$5, (void*)vr$1068, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1711$5, -1, (void*)vr$1071, -1, 0 );
					HWRITEASM64( &TMP$1711$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1711$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRW$, 0, 0 );
				}
				goto label$1347;
				label$1357:;
				if( TEMPODTYPE$1 == 2 ) goto label$1361;
				label$1362:;
				if( TEMPODTYPE$1 == 3 ) goto label$1361;
				label$1363:;
				if( TEMPODTYPE$1 == 1 ) goto label$1361;
				label$1364:;
				if( TEMPODTYPE$1 != 4 ) goto label$1360;
				label$1361:;
				{
					FBSTRING TMP$1712$5;
					FBSTRING TMP$1713$5;
					FBSTRING TMP$1714$5;
					FBSTRING TMP$1715$5;
					__builtin_memset( &TMP$1715$5, 0, 12 );
					__builtin_memset( &TMP$1712$5, 0, 12 );
					FBSTRING* vr$1080 = fb_StrConcat( &TMP$1712$5, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
					__builtin_memset( &TMP$1713$5, 0, 12 );
					FBSTRING* vr$1083 = fb_StrConcat( &TMP$1713$5, (void*)vr$1080, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1714$5, 0, 12 );
					FBSTRING* vr$1086 = fb_StrConcat( &TMP$1714$5, (void*)vr$1083, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1715$5, -1, (void*)vr$1086, -1, 0 );
					HWRITEASM64( &TMP$1715$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1715$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRB$, 0, 0 );
				}
				goto label$1347;
				label$1360:;
				{
					FBSTRING TMP$1716$5;
					FBSTRING TMP$1717$5;
					FBSTRING TMP$1718$5;
					FBSTRING TMP$1719$5;
					__builtin_memset( &TMP$1716$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1716$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1716$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1716$5 );
					__builtin_memset( &TMP$1718$5, 0, 12 );
					FBSTRING* vr$1097 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1717$5, 0, 12 );
					FBSTRING* vr$1100 = fb_StrConcat( &TMP$1717$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$1097, -1 );
					fb_StrAssign( (void*)&TMP$1718$5, -1, (void*)vr$1100, -1, 0 );
					HWRITEASM64( &TMP$1718$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1718$5 );
					__builtin_memset( &TMP$1719$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1719$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1719$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1719$5 );
				}
				label$1365:;
				label$1347:;
			}
			__builtin_memset( &TMP$1723$3, 0, 12 );
			__builtin_memset( &TMP$1720$3, 0, 12 );
			FBSTRING* vr$1113 = fb_StrConcat( &TMP$1720$3, (void*)"xor ", 5, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$1721$3, 0, 12 );
			FBSTRING* vr$1116 = fb_StrConcat( &TMP$1721$3, (void*)vr$1113, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1722$3, 0, 12 );
			FBSTRING* vr$1119 = fb_StrConcat( &TMP$1722$3, (void*)vr$1116, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1723$3, -1, (void*)vr$1119, -1, 0 );
			HWRITEASM64( &TMP$1723$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1723$3 );
			if( TEMPODTYPE$1 != 1 ) goto label$1367;
			{
				FBSTRING TMP$1724$4;
				FBSTRING TMP$1725$4;
				FBSTRING TMP$1726$4;
				__builtin_memset( &TMP$1726$4, 0, 12 );
				__builtin_memset( &TMP$1724$4, 0, 12 );
				FBSTRING* vr$1127 = fb_StrConcat( &TMP$1724$4, (void*)"xor ", 5, (void*)&OP2$1, -1 );
				__builtin_memset( &TMP$1725$4, 0, 12 );
				FBSTRING* vr$1130 = fb_StrConcat( &TMP$1725$4, (void*)vr$1127, -1, (void*)", 1", 4 );
				fb_StrAssign( (void*)&TMP$1726$4, -1, (void*)vr$1130, -1, 0 );
				HWRITEASM64( &TMP$1726$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1726$4 );
			}
			goto label$1366;
			label$1367:;
			{
				FBSTRING TMP$1727$4;
				FBSTRING TMP$1728$4;
				__builtin_memset( &TMP$1728$4, 0, 12 );
				__builtin_memset( &TMP$1727$4, 0, 12 );
				FBSTRING* vr$1138 = fb_StrConcat( &TMP$1727$4, (void*)"not ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1728$4, -1, (void*)vr$1138, -1, 0 );
				HWRITEASM64( &TMP$1728$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1728$4 );
			}
			label$1366:;
			__builtin_memset( &TMP$1732$3, 0, 12 );
			__builtin_memset( &TMP$1729$3, 0, 12 );
			FBSTRING* vr$1147 = fb_StrConcat( &TMP$1729$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1730$3, 0, 12 );
			FBSTRING* vr$1150 = fb_StrConcat( &TMP$1730$3, (void*)vr$1147, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1731$3, 0, 12 );
			FBSTRING* vr$1153 = fb_StrConcat( &TMP$1731$3, (void*)vr$1150, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1732$3, -1, (void*)vr$1153, -1, 0 );
			HWRITEASM64( &TMP$1732$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1732$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1369;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1369:;
			}
		}
		goto label$1282;
		label$1370:;
		{
			int32 vr$1158 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"1", 2 );
			if( vr$1158 != 0 ) goto label$1372;
			{
				FBSTRING TMP$1733$4;
				FBSTRING TMP$1734$4;
				__builtin_memset( &TMP$1734$4, 0, 12 );
				__builtin_memset( &TMP$1733$4, 0, 12 );
				FBSTRING* vr$1163 = fb_StrConcat( &TMP$1733$4, (void*)"dec ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1734$4, -1, (void*)vr$1163, -1, 0 );
				HWRITEASM64( &TMP$1734$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1734$4 );
			}
			goto label$1371;
			label$1372:;
			int32 vr$1168 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"-1", 3 );
			if( vr$1168 != 0 ) goto label$1373;
			{
				FBSTRING TMP$1735$4;
				FBSTRING TMP$1736$4;
				__builtin_memset( &TMP$1736$4, 0, 12 );
				__builtin_memset( &TMP$1735$4, 0, 12 );
				FBSTRING* vr$1173 = fb_StrConcat( &TMP$1735$4, (void*)"inc ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1736$4, -1, (void*)vr$1173, -1, 0 );
				HWRITEASM64( &TMP$1736$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1736$4 );
			}
			goto label$1371;
			label$1373:;
			{
				FBSTRING TMP$1738$4;
				FBSTRING TMP$1739$4;
				FBSTRING TMP$1740$4;
				FBSTRING TMP$1741$4;
				__builtin_memset( &TMP$1741$4, 0, 12 );
				__builtin_memset( &TMP$1738$4, 0, 12 );
				FBSTRING* vr$1182 = fb_StrConcat( &TMP$1738$4, (void*)"sub ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1739$4, 0, 12 );
				FBSTRING* vr$1185 = fb_StrConcat( &TMP$1739$4, (void*)vr$1182, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1740$4, 0, 12 );
				FBSTRING* vr$1188 = fb_StrConcat( &TMP$1740$4, (void*)vr$1185, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1741$4, -1, (void*)vr$1188, -1, 0 );
				HWRITEASM64( &TMP$1741$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1741$4 );
			}
			label$1371:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1375;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1375:;
			}
		}
		goto label$1282;
		label$1376:;
		{
			FBSTRING TMP$1743$3;
			FBSTRING TMP$1744$3;
			FBSTRING TMP$1745$3;
			FBSTRING TMP$1746$3;
			__builtin_memset( &TMP$1746$3, 0, 12 );
			__builtin_memset( &TMP$1743$3, 0, 12 );
			FBSTRING* vr$1197 = fb_StrConcat( &TMP$1743$3, (void*)"imul ", 6, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1744$3, 0, 12 );
			FBSTRING* vr$1200 = fb_StrConcat( &TMP$1744$3, (void*)vr$1197, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1745$3, 0, 12 );
			FBSTRING* vr$1203 = fb_StrConcat( &TMP$1745$3, (void*)vr$1200, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1746$3, -1, (void*)vr$1203, -1, 0 );
			HWRITEASM64( &TMP$1746$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1746$3 );
			int32 vr$1208 = fb_StrCompare( (void*)&OP1PREV$1, -1, (void*)"", 1 );
			if( vr$1208 == 0 ) goto label$1378;
			{
				FBSTRING TMP$1747$4;
				FBSTRING TMP$1748$4;
				FBSTRING TMP$1749$4;
				FBSTRING TMP$1750$4;
				__builtin_memset( &TMP$1750$4, 0, 12 );
				__builtin_memset( &TMP$1747$4, 0, 12 );
				FBSTRING* vr$1214 = fb_StrConcat( &TMP$1747$4, (void*)"mov ", 5, (void*)&OP1PREV$1, -1 );
				__builtin_memset( &TMP$1748$4, 0, 12 );
				FBSTRING* vr$1217 = fb_StrConcat( &TMP$1748$4, (void*)vr$1214, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1749$4, 0, 12 );
				FBSTRING* vr$1220 = fb_StrConcat( &TMP$1749$4, (void*)vr$1217, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1750$4, -1, (void*)vr$1220, -1, 0 );
				HWRITEASM64( &TMP$1750$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1750$4 );
				label$1378:;
			}
		}
		goto label$1282;
		label$1379:;
		{
			FBSTRING TMP$1762$3;
			FBSTRING TMP$1763$3;
			FBSTRING TMP$1764$3;
			FBSTRING TMP$1765$3;
			if( (((-(*(int32*)((uint8*)V1$1 + 4) == 9) | -(*(int32*)((uint8*)V1$1 + 4) == 14)) | -(*(int32*)((uint8*)V2$1 + 4) == 9)) | -(*(int32*)((uint8*)V2$1 + 4) == 14)) == 0 ) goto label$1381;
			{
				{
					uint32 TMP$1751$5;
					TMP$1751$5 = (uint32)OP$1;
					goto label$1383;
					label$1384:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"be", 3, 0 );
					}
					goto label$1382;
					label$1385:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"b", 2, 0 );
					}
					goto label$1382;
					label$1386:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ne", 3, 0 );
					}
					goto label$1382;
					label$1387:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"nb", 3, 0 );
					}
					goto label$1382;
					label$1388:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"a", 2, 0 );
					}
					goto label$1382;
					label$1389:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"e", 2, 0 );
					}
					goto label$1382;
					label$1383:;
					static const void* tmp$4051[6] = {
						&&label$1389,
						&&label$1388,
						&&label$1385,
						&&label$1386,
						&&label$1387,
						&&label$1384,
					};
					if( (TMP$1751$5 - 45u) > 5u ) goto label$1382;
					goto *tmp$4051[TMP$1751$5 - 45u];
					label$1382:;
				}
			}
			goto label$1380;
			label$1381:;
			{
				{
					uint32 TMP$1757$5;
					TMP$1757$5 = (uint32)OP$1;
					goto label$1391;
					label$1392:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"le", 3, 0 );
					}
					goto label$1390;
					label$1393:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"l", 2, 0 );
					}
					goto label$1390;
					label$1394:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ne", 3, 0 );
					}
					goto label$1390;
					label$1395:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ge", 3, 0 );
					}
					goto label$1390;
					label$1396:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"g", 2, 0 );
					}
					goto label$1390;
					label$1397:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"e", 2, 0 );
					}
					goto label$1390;
					label$1391:;
					static const void* tmp$4052[6] = {
						&&label$1397,
						&&label$1396,
						&&label$1393,
						&&label$1394,
						&&label$1395,
						&&label$1392,
					};
					if( (TMP$1757$5 - 45u) > 5u ) goto label$1390;
					goto *tmp$4052[TMP$1757$5 - 45u];
					label$1390:;
				}
			}
			label$1380:;
			__builtin_memset( &TMP$1765$3, 0, 12 );
			__builtin_memset( &TMP$1762$3, 0, 12 );
			FBSTRING* vr$1252 = fb_StrConcat( &TMP$1762$3, (void*)"cmp ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1763$3, 0, 12 );
			FBSTRING* vr$1255 = fb_StrConcat( &TMP$1763$3, (void*)vr$1252, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1764$3, 0, 12 );
			FBSTRING* vr$1258 = fb_StrConcat( &TMP$1764$3, (void*)vr$1255, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1765$3, -1, (void*)vr$1258, -1, 0 );
			HWRITEASM64( &TMP$1765$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1765$3 );
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1399;
			{
				FBSTRING TMP$1768$4;
				FBSTRING TMP$1769$4;
				FBSTRING TMP$1770$4;
				FBSTRING TMP$1772$4;
				FBSTRING TMP$1773$4;
				FBSTRING TMP$1774$4;
				__builtin_memset( &TMP$1770$4, 0, 12 );
				__builtin_memset( &TMP$1768$4, 0, 12 );
				FBSTRING* vr$1266 = fb_StrConcat( &TMP$1768$4, (void*)"set", 4, (void*)&SUFFIX$1, -1 );
				__builtin_memset( &TMP$1769$4, 0, 12 );
				FBSTRING* vr$1269 = fb_StrConcat( &TMP$1769$4, (void*)vr$1266, -1, (void*)" al", 4 );
				fb_StrAssign( (void*)&TMP$1770$4, -1, (void*)vr$1269, -1, 0 );
				HWRITEASM64( &TMP$1770$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1770$4 );
				__builtin_memset( &TMP$1774$4, 0, 12 );
				__builtin_memset( &TMP$1772$4, 0, 12 );
				FBSTRING* vr$1277 = fb_StrConcat( &TMP$1772$4, (void*)"movzx ", 7, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1773$4, 0, 12 );
				FBSTRING* vr$1280 = fb_StrConcat( &TMP$1773$4, (void*)vr$1277, -1, (void*)", al", 5 );
				fb_StrAssign( (void*)&TMP$1774$4, -1, (void*)vr$1280, -1, 0 );
				HWRITEASM64( &TMP$1774$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1774$4 );
				if( TEMPODTYPE$1 == 1 ) goto label$1401;
				{
					FBSTRING TMP$1776$5;
					FBSTRING TMP$1777$5;
					__builtin_memset( &TMP$1777$5, 0, 12 );
					__builtin_memset( &TMP$1776$5, 0, 12 );
					FBSTRING* vr$1288 = fb_StrConcat( &TMP$1776$5, (void*)"neg ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					fb_StrAssign( (void*)&TMP$1777$5, -1, (void*)vr$1288, -1, 0 );
					HWRITEASM64( &TMP$1777$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1777$5 );
				}
				label$1401:;
				label$1400:;
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1398;
			label$1399:;
			{
				FBSTRING TMP$1779$4;
				FBSTRING TMP$1780$4;
				FBSTRING TMP$1781$4;
				FBSTRING TMP$1782$4;
				__builtin_memset( &TMP$1782$4, 0, 12 );
				uint8* vr$1293 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1779$4, 0, 12 );
				FBSTRING* vr$1297 = fb_StrConcat( &TMP$1779$4, (void*)"j", 2, (void*)&SUFFIX$1, -1 );
				__builtin_memset( &TMP$1780$4, 0, 12 );
				FBSTRING* vr$1300 = fb_StrConcat( &TMP$1780$4, (void*)vr$1297, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$1781$4, 0, 12 );
				FBSTRING* vr$1303 = fb_StrConcat( &TMP$1781$4, (void*)vr$1300, -1, (void*)vr$1293, 0 );
				fb_StrAssign( (void*)&TMP$1782$4, -1, (void*)vr$1303, -1, 0 );
				HWRITEASM64( &TMP$1782$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1782$4 );
				REG_MARK( LABEL$1 );
			}
			label$1398:;
		}
		goto label$1282;
		label$1402:;
		{
			if( *(int32*)V2$1 == 0 ) goto label$1404;
			{
				int32 vr$1309 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 8), 0 );
				if( vr$1309 == 0 ) goto label$1406;
				{
					FBSTRING TMP$1788$5;
					FBSTRING TMP$1789$5;
					if( *(int32*)((int32)(int32*)REGHANDLE$ + 8) == -2 ) goto label$1408;
					{
						FBSTRING TMP$1783$6;
						FBSTRING TMP$1784$6;
						FBSTRING TMP$1785$6;
						FBSTRING TMP$1786$6;
						TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 8);
						REG_FINDFREE( TEMPO$1, -1 );
						*(int32*)((int32)(int32*)REGHANDLE$ + 8) = -2;
						__builtin_memset( &TMP$1786$6, 0, 12 );
						int32 vr$1311 = REG_FINDREAL( TEMPO$1 );
						__builtin_memset( &TMP$1783$6, 0, 12 );
						FBSTRING* vr$1315 = fb_StrConcat( &TMP$1783$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$1311 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1784$6, 0, 12 );
						FBSTRING* vr$1318 = fb_StrConcat( &TMP$1784$6, (void*)vr$1315, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1785$6, 0, 12 );
						FBSTRING* vr$1321 = fb_StrConcat( &TMP$1785$6, (void*)vr$1318, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 8), 0 );
						fb_StrAssign( (void*)&TMP$1786$6, -1, (void*)vr$1321, -1, 0 );
						HWRITEASM64( &TMP$1786$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1786$6 );
						if( VRREG$1 != 2 ) goto label$1410;
						{
							int32 vr$1325 = REG_FINDREAL( TEMPO$1 );
							VRREG$1 = vr$1325;
							label$1410:;
						}
					}
					goto label$1407;
					label$1408:;
					{
						*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 4;
					}
					label$1407:;
					__builtin_memset( &TMP$1789$5, 0, 12 );
					__builtin_memset( &TMP$1788$5, 0, 12 );
					FBSTRING* vr$1331 = fb_StrConcat( &TMP$1788$5, (void*)"mov rcx, ", 10, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1789$5, -1, (void*)vr$1331, -1, 0 );
					HWRITEASM64( &TMP$1789$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1789$5 );
				}
				label$1406:;
				label$1405:;
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"cl", 3, 0 );
			}
			label$1404:;
			label$1403:;
			if( OP$1 != 41 ) goto label$1412;
			{
				FBSTRING TMP$1791$4;
				FBSTRING TMP$1792$4;
				FBSTRING TMP$1793$4;
				FBSTRING TMP$1794$4;
				__builtin_memset( &TMP$1794$4, 0, 12 );
				__builtin_memset( &TMP$1791$4, 0, 12 );
				FBSTRING* vr$1341 = fb_StrConcat( &TMP$1791$4, (void*)"shl ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1792$4, 0, 12 );
				FBSTRING* vr$1344 = fb_StrConcat( &TMP$1792$4, (void*)vr$1341, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1793$4, 0, 12 );
				FBSTRING* vr$1347 = fb_StrConcat( &TMP$1793$4, (void*)vr$1344, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1794$4, -1, (void*)vr$1347, -1, 0 );
				HWRITEASM64( &TMP$1794$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1794$4 );
			}
			goto label$1411;
			label$1412:;
			{
				if( (-(TEMPODTYPE$1 == 8) | -(TEMPODTYPE$1 == 13)) == 0 ) goto label$1414;
				{
					FBSTRING TMP$1796$5;
					FBSTRING TMP$1797$5;
					FBSTRING TMP$1798$5;
					FBSTRING TMP$1799$5;
					__builtin_memset( &TMP$1799$5, 0, 12 );
					__builtin_memset( &TMP$1796$5, 0, 12 );
					FBSTRING* vr$1359 = fb_StrConcat( &TMP$1796$5, (void*)"sar ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1797$5, 0, 12 );
					FBSTRING* vr$1362 = fb_StrConcat( &TMP$1797$5, (void*)vr$1359, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1798$5, 0, 12 );
					FBSTRING* vr$1365 = fb_StrConcat( &TMP$1798$5, (void*)vr$1362, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1799$5, -1, (void*)vr$1365, -1, 0 );
					HWRITEASM64( &TMP$1799$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1799$5 );
				}
				goto label$1413;
				label$1414:;
				{
					FBSTRING TMP$1800$5;
					FBSTRING TMP$1801$5;
					FBSTRING TMP$1802$5;
					FBSTRING TMP$1803$5;
					__builtin_memset( &TMP$1803$5, 0, 12 );
					__builtin_memset( &TMP$1800$5, 0, 12 );
					FBSTRING* vr$1374 = fb_StrConcat( &TMP$1800$5, (void*)"shr ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1801$5, 0, 12 );
					FBSTRING* vr$1377 = fb_StrConcat( &TMP$1801$5, (void*)vr$1374, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1802$5, 0, 12 );
					FBSTRING* vr$1380 = fb_StrConcat( &TMP$1802$5, (void*)vr$1377, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1803$5, -1, (void*)vr$1380, -1, 0 );
					HWRITEASM64( &TMP$1803$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1803$5 );
				}
				label$1413:;
			}
			label$1411:;
		}
		goto label$1282;
		label$1415:;
		{
			FBSTRING TMP$1812$3;
			FBSTRING TMP$1813$3;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) == -2 ) goto label$1417;
			{
				int32 vr$1385 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
				if( vr$1385 == 0 ) goto label$1419;
				{
					FBSTRING TMP$1804$5;
					FBSTRING TMP$1805$5;
					FBSTRING TMP$1806$5;
					FBSTRING TMP$1807$5;
					TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 12);
					REG_FINDFREE( TEMPO$1, -1 );
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					__builtin_memset( &TMP$1807$5, 0, 12 );
					int32 vr$1387 = REG_FINDREAL( TEMPO$1 );
					__builtin_memset( &TMP$1804$5, 0, 12 );
					FBSTRING* vr$1391 = fb_StrConcat( &TMP$1804$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$1387 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1805$5, 0, 12 );
					FBSTRING* vr$1394 = fb_StrConcat( &TMP$1805$5, (void*)vr$1391, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1806$5, 0, 12 );
					FBSTRING* vr$1397 = fb_StrConcat( &TMP$1806$5, (void*)vr$1394, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
					fb_StrAssign( (void*)&TMP$1807$5, -1, (void*)vr$1397, -1, 0 );
					HWRITEASM64( &TMP$1807$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1807$5 );
					int32 vr$1402 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
					if( vr$1402 != 0 ) goto label$1421;
					{
						int32 vr$1403 = REG_FINDREAL( TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$1403 << (2 & 31))), 0, 0 );
					}
					label$1421:;
					label$1420:;
					if( VRREG$1 != 3 ) goto label$1423;
					{
						int32 vr$1406 = REG_FINDREAL( TEMPO$1 );
						VRREG$1 = vr$1406;
						label$1423:;
					}
				}
				label$1419:;
				label$1418:;
			}
			goto label$1416;
			label$1417:;
			{
				*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 8;
			}
			label$1416:;
			if( *(int32*)V2$1 != 0 ) goto label$1425;
			{
				FBSTRING TMP$1808$4;
				FBSTRING TMP$1809$4;
				FBSTRING TMP$1810$4;
				FBSTRING TMP$1811$4;
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -2 ) goto label$1427;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -3;
					label$1427:;
				}
				uint8* vr$1409 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$1409, 0, 0 );
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -3 ) goto label$1429;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					label$1429:;
				}
				__builtin_memset( &TMP$1811$4, 0, 12 );
				__builtin_memset( &TMP$1808$4, 0, 12 );
				FBSTRING* vr$1416 = fb_StrConcat( &TMP$1808$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1809$4, 0, 12 );
				FBSTRING* vr$1419 = fb_StrConcat( &TMP$1809$4, (void*)vr$1416, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1810$4, 0, 12 );
				FBSTRING* vr$1422 = fb_StrConcat( &TMP$1810$4, (void*)vr$1419, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1811$4, -1, (void*)vr$1422, -1, 0 );
				HWRITEASM64( &TMP$1811$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1811$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
			}
			label$1425:;
			label$1424:;
			__builtin_memset( &TMP$1813$3, 0, 12 );
			__builtin_memset( &TMP$1812$3, 0, 12 );
			FBSTRING* vr$1432 = fb_StrConcat( &TMP$1812$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1813$3, -1, (void*)vr$1432, -1, 0 );
			HWRITEASM64( &TMP$1813$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1813$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (TEMPO2DTYPE$1 & 480) == 0 ) goto label$1431;
			{
				TEMPO2DTYPE$1 = 8;
				label$1431:;
			}
			if( (((-(TEMPODTYPE$1 == 9) | -(TEMPODTYPE$1 == 14)) | -(TEMPO2DTYPE$1 == 9)) | -(TEMPO2DTYPE$1 == 14)) == 0 ) goto label$1433;
			{
				FBSTRING TMP$1815$4;
				FBSTRING TMP$1817$4;
				FBSTRING TMP$1818$4;
				__builtin_memset( &TMP$1815$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1815$4, -1, (void*)"mov edx, 0", 11, 0 );
				HWRITEASM64( &TMP$1815$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1815$4 );
				__builtin_memset( &TMP$1818$4, 0, 12 );
				__builtin_memset( &TMP$1817$4, 0, 12 );
				FBSTRING* vr$1453 = fb_StrConcat( &TMP$1817$4, (void*)"div ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1818$4, -1, (void*)vr$1453, -1, 0 );
				HWRITEASM64( &TMP$1818$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1818$4 );
			}
			goto label$1432;
			label$1433:;
			{
				FBSTRING TMP$1820$4;
				FBSTRING TMP$1822$4;
				FBSTRING TMP$1823$4;
				__builtin_memset( &TMP$1820$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1820$4, -1, (void*)"cqo", 4, 0 );
				HWRITEASM64( &TMP$1820$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1820$4 );
				__builtin_memset( &TMP$1823$4, 0, 12 );
				__builtin_memset( &TMP$1822$4, 0, 12 );
				FBSTRING* vr$1465 = fb_StrConcat( &TMP$1822$4, (void*)"idiv ", 6, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1823$4, -1, (void*)vr$1465, -1, 0 );
				HWRITEASM64( &TMP$1823$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1823$4 );
			}
			label$1432:;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1435;
			{
				FBSTRING TMP$1824$4;
				FBSTRING TMP$1825$4;
				FBSTRING TMP$1826$4;
				__builtin_memset( &TMP$1826$4, 0, 12 );
				__builtin_memset( &TMP$1824$4, 0, 12 );
				FBSTRING* vr$1473 = fb_StrConcat( &TMP$1824$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1825$4, 0, 12 );
				FBSTRING* vr$1476 = fb_StrConcat( &TMP$1825$4, (void*)vr$1473, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$1826$4, -1, (void*)vr$1476, -1, 0 );
				HWRITEASM64( &TMP$1826$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1826$4 );
			}
			goto label$1434;
			label$1435:;
			{
				FBSTRING TMP$1827$4;
				FBSTRING TMP$1828$4;
				FBSTRING TMP$1829$4;
				__builtin_memset( &TMP$1829$4, 0, 12 );
				__builtin_memset( &TMP$1827$4, 0, 12 );
				FBSTRING* vr$1484 = fb_StrConcat( &TMP$1827$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1828$4, 0, 12 );
				FBSTRING* vr$1487 = fb_StrConcat( &TMP$1828$4, (void*)vr$1484, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$1829$4, -1, (void*)vr$1487, -1, 0 );
				HWRITEASM64( &TMP$1829$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1829$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1434:;
		}
		goto label$1282;
		label$1436:;
		{
			FBSTRING TMP$1838$3;
			FBSTRING TMP$1839$3;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) == -2 ) goto label$1438;
			{
				int32 vr$1492 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
				if( vr$1492 == 0 ) goto label$1440;
				{
					FBSTRING TMP$1830$5;
					FBSTRING TMP$1831$5;
					FBSTRING TMP$1832$5;
					FBSTRING TMP$1833$5;
					TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 12);
					REG_FINDFREE( TEMPO$1, -1 );
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					__builtin_memset( &TMP$1833$5, 0, 12 );
					int32 vr$1494 = REG_FINDREAL( TEMPO$1 );
					__builtin_memset( &TMP$1830$5, 0, 12 );
					FBSTRING* vr$1498 = fb_StrConcat( &TMP$1830$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$1494 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1831$5, 0, 12 );
					FBSTRING* vr$1501 = fb_StrConcat( &TMP$1831$5, (void*)vr$1498, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1832$5, 0, 12 );
					FBSTRING* vr$1504 = fb_StrConcat( &TMP$1832$5, (void*)vr$1501, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
					fb_StrAssign( (void*)&TMP$1833$5, -1, (void*)vr$1504, -1, 0 );
					HWRITEASM64( &TMP$1833$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1833$5 );
					int32 vr$1509 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
					if( vr$1509 != 0 ) goto label$1442;
					{
						int32 vr$1510 = REG_FINDREAL( TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$1510 << (2 & 31))), 0, 0 );
					}
					label$1442:;
					label$1441:;
					if( VRREG$1 != 3 ) goto label$1444;
					{
						int32 vr$1513 = REG_FINDREAL( TEMPO$1 );
						VRREG$1 = vr$1513;
						label$1444:;
					}
				}
				label$1440:;
				label$1439:;
			}
			goto label$1437;
			label$1438:;
			{
				*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 8;
			}
			label$1437:;
			if( *(int32*)V2$1 != 0 ) goto label$1446;
			{
				FBSTRING TMP$1834$4;
				FBSTRING TMP$1835$4;
				FBSTRING TMP$1836$4;
				FBSTRING TMP$1837$4;
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -2 ) goto label$1448;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -3;
					label$1448:;
				}
				uint8* vr$1516 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$1516, 0, 0 );
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -3 ) goto label$1450;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					label$1450:;
				}
				__builtin_memset( &TMP$1837$4, 0, 12 );
				__builtin_memset( &TMP$1834$4, 0, 12 );
				FBSTRING* vr$1523 = fb_StrConcat( &TMP$1834$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1835$4, 0, 12 );
				FBSTRING* vr$1526 = fb_StrConcat( &TMP$1835$4, (void*)vr$1523, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1836$4, 0, 12 );
				FBSTRING* vr$1529 = fb_StrConcat( &TMP$1836$4, (void*)vr$1526, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1837$4, -1, (void*)vr$1529, -1, 0 );
				HWRITEASM64( &TMP$1837$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1837$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
			}
			label$1446:;
			label$1445:;
			__builtin_memset( &TMP$1839$3, 0, 12 );
			__builtin_memset( &TMP$1838$3, 0, 12 );
			FBSTRING* vr$1539 = fb_StrConcat( &TMP$1838$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1839$3, -1, (void*)vr$1539, -1, 0 );
			HWRITEASM64( &TMP$1839$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1839$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (TEMPO2DTYPE$1 & 480) == 0 ) goto label$1452;
			{
				TEMPO2DTYPE$1 = 8;
				label$1452:;
			}
			if( (((-(TEMPODTYPE$1 == 9) | -(TEMPODTYPE$1 == 14)) | -(TEMPO2DTYPE$1 == 9)) | -(TEMPO2DTYPE$1 == 14)) == 0 ) goto label$1454;
			{
				FBSTRING TMP$1840$4;
				FBSTRING TMP$1841$4;
				FBSTRING TMP$1842$4;
				__builtin_memset( &TMP$1840$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1840$4, -1, (void*)"mov edx, 0", 11, 0 );
				HWRITEASM64( &TMP$1840$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1840$4 );
				__builtin_memset( &TMP$1842$4, 0, 12 );
				__builtin_memset( &TMP$1841$4, 0, 12 );
				FBSTRING* vr$1560 = fb_StrConcat( &TMP$1841$4, (void*)"div ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1842$4, -1, (void*)vr$1560, -1, 0 );
				HWRITEASM64( &TMP$1842$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1842$4 );
			}
			goto label$1453;
			label$1454:;
			{
				FBSTRING TMP$1843$4;
				FBSTRING TMP$1844$4;
				FBSTRING TMP$1845$4;
				__builtin_memset( &TMP$1843$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1843$4, -1, (void*)"cqo", 4, 0 );
				HWRITEASM64( &TMP$1843$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1843$4 );
				__builtin_memset( &TMP$1845$4, 0, 12 );
				__builtin_memset( &TMP$1844$4, 0, 12 );
				FBSTRING* vr$1572 = fb_StrConcat( &TMP$1844$4, (void*)"idiv ", 6, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1845$4, -1, (void*)vr$1572, -1, 0 );
				HWRITEASM64( &TMP$1845$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1845$4 );
			}
			label$1453:;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1456;
			{
				FBSTRING TMP$1847$4;
				FBSTRING TMP$1848$4;
				FBSTRING TMP$1849$4;
				__builtin_memset( &TMP$1849$4, 0, 12 );
				__builtin_memset( &TMP$1847$4, 0, 12 );
				FBSTRING* vr$1580 = fb_StrConcat( &TMP$1847$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1848$4, 0, 12 );
				FBSTRING* vr$1583 = fb_StrConcat( &TMP$1848$4, (void*)vr$1580, -1, (void*)", rdx", 6 );
				fb_StrAssign( (void*)&TMP$1849$4, -1, (void*)vr$1583, -1, 0 );
				HWRITEASM64( &TMP$1849$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1849$4 );
			}
			goto label$1455;
			label$1456:;
			{
				FBSTRING TMP$1850$4;
				FBSTRING TMP$1851$4;
				FBSTRING TMP$1852$4;
				__builtin_memset( &TMP$1852$4, 0, 12 );
				__builtin_memset( &TMP$1850$4, 0, 12 );
				FBSTRING* vr$1591 = fb_StrConcat( &TMP$1850$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1851$4, 0, 12 );
				FBSTRING* vr$1594 = fb_StrConcat( &TMP$1851$4, (void*)vr$1591, -1, (void*)", rdx", 6 );
				fb_StrAssign( (void*)&TMP$1852$4, -1, (void*)vr$1594, -1, 0 );
				HWRITEASM64( &TMP$1852$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1852$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1455:;
		}
		goto label$1282;
		label$1457:;
		{
			FBSTRING TMP$1853$3;
			FBSTRING TMP$1856$3;
			FBSTRING TMP$1857$3;
			FBSTRING TMP$1858$3;
			__builtin_memset( &TMP$1853$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1853$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1853$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1853$3 );
			__builtin_memset( &TMP$1857$3, 0, 12 );
			uint8* vr$1603 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1856$3, 0, 12 );
			FBSTRING* vr$1606 = fb_StrConcat( &TMP$1856$3, (void*)"FOUND AN ERROR : op int needs to be coded : ", 45, (void*)vr$1603, 0 );
			fb_StrAssign( (void*)&TMP$1857$3, -1, (void*)vr$1606, -1, 0 );
			HWRITEASM64( &TMP$1857$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1857$3 );
			__builtin_memset( &TMP$1858$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1858$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1858$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1858$3 );
		}
		goto label$1282;
		label$1283:;
		static const void* tmp$4053[23] = {
			&&label$1284,
			&&label$1370,
			&&label$1376,
			&&label$1457,
			&&label$1415,
			&&label$1436,
			&&label$1290,
			&&label$1293,
			&&label$1457,
			&&label$1457,
			&&label$1343,
			&&label$1346,
			&&label$1296,
			&&label$1402,
			&&label$1402,
			&&label$1457,
			&&label$1457,
			&&label$1379,
			&&label$1379,
			&&label$1379,
			&&label$1379,
			&&label$1379,
			&&label$1379,
		};
		if( (TMP$1612$2 - 28u) > 22u ) goto label$1457;
		goto *tmp$4053[TMP$1612$2 - 28u];
		label$1282:;
	}
	fb_StrDelete( (FBSTRING*)&OP1BIS$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP1PREV$1 );
	fb_StrDelete( (FBSTRING*)&SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1071:;
}

static void _EMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 TMP$1859$1;
	int32 TMP$1860$1;
	int32 TMP$1861$1;
	int32 TMP$1862$1;
	label$1458:;
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1461;
	{
	}
	goto label$1460;
	label$1461:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1462;
	{
	}
	goto label$1460;
	label$1462:;
	{
	}
	label$1460:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1464;
	{
	}
	goto label$1463;
	label$1464:;
	{
	}
	label$1463:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1468;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 480) == 0 ) goto label$1465;
	TMP$1859$1 = 24;
	goto label$3096;
	label$1465:;
	TMP$1859$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 31;
	label$3096:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1466;
	TMP$1860$1 = 24;
	goto label$3097;
	label$1466:;
	TMP$1860$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3097:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 480) == 0 ) goto label$1467;
	TMP$1861$1 = 24;
	goto label$3098;
	label$1467:;
	TMP$1861$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 31;
	label$3098:;
	TMP$1862$1 = -(((-(*(int32*)((uint8*)V1$1 + 4) != *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28)) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1859$1 * 28)) == 0)) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1860$1 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1861$1 * 28)) + 4))) != 0);
	goto label$3095;
	label$1468:;
	TMP$1862$1 = 0;
	label$3095:;
	if( TMP$1862$1 == 0 ) goto label$1470;
	{
		DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1472;
		{
		}
		goto label$1471;
		label$1472:;
		{
			*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = *($11FB_DATATYPE*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28);
			_SETVREGDATATYPE( V1$1, DTYPE$1, (struct $8FBSYMBOL*)0u );
		}
		label$1471:;
	}
	label$1470:;
	label$1469:;
	HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, LABEL$1 );
	label$1459:;
}

static void _EMITUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$1892$1;
	label$1473:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 12 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 4 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1476;
	{
	}
	goto label$1475;
	label$1476:;
	{
	}
	label$1475:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1478;
	{
		if( *(int32*)V1$1 == 4 ) goto label$1480;
		{
			{
				$15IRVREGTYPE_ENUM TMP$1863$4;
				TMP$1863$4 = *($15IRVREGTYPE_ENUM*)VR$1;
				if( TMP$1863$4 != 4 ) goto label$1482;
				label$1483:;
				{
					int32 vr$9 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
					VRREG$1 = vr$9;
				}
				goto label$1481;
				label$1482:;
				{
					FBSTRING TMP$1864$5;
					FBSTRING TMP$1867$5;
					FBSTRING TMP$1868$5;
					__builtin_memset( &TMP$1864$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1864$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1864$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1864$5 );
					__builtin_memset( &TMP$1867$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1867$5, -1, (void*)"FOUND AN ERROR : in emituop typ not handled vr", 47, 0 );
					HWRITEASM64( &TMP$1867$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1867$5 );
					__builtin_memset( &TMP$1868$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1868$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1868$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1868$5 );
				}
				label$1484:;
				label$1481:;
			}
		}
		goto label$1479;
		label$1480:;
		{
			*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
			int32 vr$25 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			VRREG$1 = vr$25;
		}
		label$1479:;
	}
	label$1478:;
	label$1477:;
	TEMPODTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (TEMPODTYPE$1 & 480) == 0 ) goto label$1486;
	{
		TEMPODTYPE$1 = 8;
		label$1486:;
	}
	{
		if( TEMPODTYPE$1 == 8 ) goto label$1489;
		label$1490:;
		if( TEMPODTYPE$1 == 9 ) goto label$1489;
		label$1491:;
		if( TEMPODTYPE$1 == 13 ) goto label$1489;
		label$1492:;
		if( TEMPODTYPE$1 == 14 ) goto label$1489;
		label$1493:;
		if( TEMPODTYPE$1 == 16 ) goto label$1489;
		label$1494:;
		if( TEMPODTYPE$1 != 10 ) goto label$1488;
		label$1489:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1487;
		label$1488:;
		if( TEMPODTYPE$1 == 11 ) goto label$1496;
		label$1497:;
		if( TEMPODTYPE$1 == 12 ) goto label$1496;
		label$1498:;
		if( TEMPODTYPE$1 != 15 ) goto label$1495;
		label$1496:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1487;
		label$1495:;
		if( TEMPODTYPE$1 == 5 ) goto label$1500;
		label$1501:;
		if( TEMPODTYPE$1 != 6 ) goto label$1499;
		label$1500:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1487;
		label$1499:;
		if( TEMPODTYPE$1 == 2 ) goto label$1503;
		label$1504:;
		if( TEMPODTYPE$1 == 3 ) goto label$1503;
		label$1505:;
		if( TEMPODTYPE$1 == 1 ) goto label$1503;
		label$1506:;
		if( TEMPODTYPE$1 != 4 ) goto label$1502;
		label$1503:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1487;
		label$1502:;
		{
			FBSTRING TMP$1869$3;
			FBSTRING TMP$1873$3;
			FBSTRING TMP$1874$3;
			FBSTRING TMP$1875$3;
			__builtin_memset( &TMP$1869$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1869$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1869$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1869$3 );
			__builtin_memset( &TMP$1874$3, 0, 12 );
			FBSTRING* vr$39 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$1873$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$1873$3, (void*)"FOUND AN ERROR : UOP datatype not handled 01 = ", 48, (void*)vr$39, -1 );
			fb_StrAssign( (void*)&TMP$1874$3, -1, (void*)vr$42, -1, 0 );
			HWRITEASM64( &TMP$1874$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1874$3 );
			__builtin_memset( &TMP$1875$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1875$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1875$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1875$3 );
		}
		label$1507:;
		label$1487:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1876$2;
		TMP$1876$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1876$2 != 4 ) goto label$1509;
		label$1510:;
		{
			if( TEMPODTYPE$1 != 1 ) goto label$1512;
			{
				int32 vr$52 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (vr$52 << (2 & 31))), 0, 0 );
			}
			goto label$1511;
			label$1512:;
			{
				int32 vr$56 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$56 << (2 & 31))), 0, 0 );
			}
			label$1511:;
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"", 1, 0 );
		}
		goto label$1508;
		label$1509:;
		if( TMP$1876$2 != 2 ) goto label$1513;
		label$1514:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1508;
		label$1513:;
		if( TMP$1876$2 != 3 ) goto label$1515;
		label$1516:;
		{
			FBSTRING TMP$1877$3;
			FBSTRING TMP$1878$3;
			FBSTRING TMP$1879$3;
			int32 vr$64 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$67 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1877$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$1877$3, (void*)vr$67, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1878$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$1878$3, (void*)vr$70, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$64 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1879$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$1879$3, (void*)vr$73, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$76, -1, 0 );
		}
		goto label$1508;
		label$1515:;
		if( TMP$1876$2 != 5 ) goto label$1517;
		label$1518:;
		{
			FBSTRING TMP$1880$3;
			FBSTRING TMP$1881$3;
			FBSTRING TMP$1882$3;
			FBSTRING* vr$79 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$81 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1880$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$1880$3, (void*)vr$81, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1881$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1881$3, (void*)vr$84, -1, (void*)vr$79, -1 );
			__builtin_memset( &TMP$1882$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$1882$3, (void*)vr$87, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$90, -1, 0 );
		}
		goto label$1508;
		label$1517:;
		if( TMP$1876$2 != 0 ) goto label$1519;
		label$1520:;
		{
		}
		goto label$1508;
		label$1519:;
		if( TMP$1876$2 != 1 ) goto label$1521;
		label$1522:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1524;
			{
				FBSTRING TMP$1883$4;
				FBSTRING TMP$1884$4;
				FBSTRING TMP$1885$4;
				FBSTRING* vr$102 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$104 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1883$4, 0, 12 );
				FBSTRING* vr$107 = fb_StrConcat( &TMP$1883$4, (void*)vr$104, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1884$4, 0, 12 );
				FBSTRING* vr$110 = fb_StrConcat( &TMP$1884$4, (void*)vr$107, -1, (void*)vr$102, -1 );
				__builtin_memset( &TMP$1885$4, 0, 12 );
				FBSTRING* vr$113 = fb_StrConcat( &TMP$1885$4, (void*)vr$110, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$113, -1, 0 );
			}
			goto label$1523;
			label$1524:;
			{
				FBSTRING TMP$1886$4;
				FBSTRING* vr$116 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1886$4, 0, 12 );
				FBSTRING* vr$119 = fb_StrConcat( &TMP$1886$4, (void*)vr$116, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$119, -1, 0 );
			}
			label$1523:;
		}
		goto label$1508;
		label$1521:;
		{
			FBSTRING TMP$1887$3;
			FBSTRING TMP$1890$3;
			FBSTRING TMP$1891$3;
			__builtin_memset( &TMP$1887$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1887$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1887$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1887$3 );
			__builtin_memset( &TMP$1890$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1890$3, -1, (void*)"FOUND AN ERROR : in uop typ not handled v1", 43, 0 );
			HWRITEASM64( &TMP$1890$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1890$3 );
			__builtin_memset( &TMP$1891$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1891$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1891$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1891$3 );
		}
		label$1525:;
		label$1508:;
	}
	int32 vr$134 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
	if( vr$134 == 0 ) goto label$1527;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1527:;
	}
	__builtin_memset( &TMP$1892$1, 0, 12 );
	FBSTRING* vr$140 = fb_StrConcat( &TMP$1892$1, (void*)&PREFIX$1, -1, (void*)&OP1$1, -1 );
	fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$140, -1, 0 );
	if( OP$1 != 52 ) goto label$1529;
	{
		if( (-(VR$1 != (struct $6IRVREG*)0u) & -(*(int32*)V1$1 != 4)) == 0 ) goto label$1531;
		{
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1534;
				label$1535:;
				if( TEMPODTYPE$1 == 9 ) goto label$1534;
				label$1536:;
				if( TEMPODTYPE$1 == 13 ) goto label$1534;
				label$1537:;
				if( TEMPODTYPE$1 == 14 ) goto label$1534;
				label$1538:;
				if( TEMPODTYPE$1 != 10 ) goto label$1533;
				label$1534:;
				{
					FBSTRING TMP$1893$5;
					FBSTRING TMP$1894$5;
					FBSTRING TMP$1895$5;
					FBSTRING TMP$1896$5;
					__builtin_memset( &TMP$1896$5, 0, 12 );
					__builtin_memset( &TMP$1893$5, 0, 12 );
					FBSTRING* vr$151 = fb_StrConcat( &TMP$1893$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1894$5, 0, 12 );
					FBSTRING* vr$154 = fb_StrConcat( &TMP$1894$5, (void*)vr$151, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1895$5, 0, 12 );
					FBSTRING* vr$157 = fb_StrConcat( &TMP$1895$5, (void*)vr$154, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1896$5, -1, (void*)vr$157, -1, 0 );
					HWRITEASM64( &TMP$1896$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1896$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1532;
				label$1533:;
				if( TEMPODTYPE$1 == 11 ) goto label$1540;
				label$1541:;
				if( TEMPODTYPE$1 != 12 ) goto label$1539;
				label$1540:;
				{
					FBSTRING TMP$1897$5;
					FBSTRING TMP$1898$5;
					FBSTRING TMP$1899$5;
					FBSTRING TMP$1900$5;
					__builtin_memset( &TMP$1900$5, 0, 12 );
					__builtin_memset( &TMP$1897$5, 0, 12 );
					FBSTRING* vr$168 = fb_StrConcat( &TMP$1897$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1898$5, 0, 12 );
					FBSTRING* vr$171 = fb_StrConcat( &TMP$1898$5, (void*)vr$168, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1899$5, 0, 12 );
					FBSTRING* vr$174 = fb_StrConcat( &TMP$1899$5, (void*)vr$171, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1900$5, -1, (void*)vr$174, -1, 0 );
					HWRITEASM64( &TMP$1900$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1900$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1532;
				label$1539:;
				if( TEMPODTYPE$1 == 5 ) goto label$1543;
				label$1544:;
				if( TEMPODTYPE$1 != 6 ) goto label$1542;
				label$1543:;
				{
					FBSTRING TMP$1901$5;
					FBSTRING TMP$1902$5;
					FBSTRING TMP$1903$5;
					FBSTRING TMP$1904$5;
					__builtin_memset( &TMP$1904$5, 0, 12 );
					__builtin_memset( &TMP$1901$5, 0, 12 );
					FBSTRING* vr$185 = fb_StrConcat( &TMP$1901$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1902$5, 0, 12 );
					FBSTRING* vr$188 = fb_StrConcat( &TMP$1902$5, (void*)vr$185, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1903$5, 0, 12 );
					FBSTRING* vr$191 = fb_StrConcat( &TMP$1903$5, (void*)vr$188, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1904$5, -1, (void*)vr$191, -1, 0 );
					HWRITEASM64( &TMP$1904$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1904$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1532;
				label$1542:;
				if( TEMPODTYPE$1 == 2 ) goto label$1546;
				label$1547:;
				if( TEMPODTYPE$1 == 3 ) goto label$1546;
				label$1548:;
				if( TEMPODTYPE$1 == 1 ) goto label$1546;
				label$1549:;
				if( TEMPODTYPE$1 != 4 ) goto label$1545;
				label$1546:;
				{
					FBSTRING TMP$1905$5;
					FBSTRING TMP$1906$5;
					FBSTRING TMP$1907$5;
					FBSTRING TMP$1908$5;
					__builtin_memset( &TMP$1908$5, 0, 12 );
					__builtin_memset( &TMP$1905$5, 0, 12 );
					FBSTRING* vr$202 = fb_StrConcat( &TMP$1905$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1906$5, 0, 12 );
					FBSTRING* vr$205 = fb_StrConcat( &TMP$1906$5, (void*)vr$202, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1907$5, 0, 12 );
					FBSTRING* vr$208 = fb_StrConcat( &TMP$1907$5, (void*)vr$205, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1908$5, -1, (void*)vr$208, -1, 0 );
					HWRITEASM64( &TMP$1908$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1908$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1532;
				label$1545:;
				{
					FBSTRING TMP$1909$5;
					FBSTRING TMP$1913$5;
					FBSTRING TMP$1914$5;
					FBSTRING TMP$1915$5;
					__builtin_memset( &TMP$1909$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1909$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1909$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1909$5 );
					__builtin_memset( &TMP$1914$5, 0, 12 );
					FBSTRING* vr$220 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1913$5, 0, 12 );
					FBSTRING* vr$223 = fb_StrConcat( &TMP$1913$5, (void*)"FOUND AN ERROR : UOP datatype not handled 011 = ", 49, (void*)vr$220, -1 );
					fb_StrAssign( (void*)&TMP$1914$5, -1, (void*)vr$223, -1, 0 );
					HWRITEASM64( &TMP$1914$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1914$5 );
					__builtin_memset( &TMP$1915$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1915$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1915$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1915$5 );
				}
				label$1550:;
				label$1532:;
			}
		}
		label$1531:;
		label$1530:;
		if( TEMPODTYPE$1 != 1 ) goto label$1552;
		{
			FBSTRING TMP$1917$3;
			FBSTRING TMP$1918$3;
			FBSTRING TMP$1919$3;
			FBSTRING TMP$1920$3;
			FBSTRING TMP$1922$3;
			FBSTRING TMP$1923$3;
			__builtin_memset( &TMP$1920$3, 0, 12 );
			__builtin_memset( &TMP$1917$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$1917$3, (void*)"test ", 6, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1918$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$1918$3, (void*)vr$236, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1919$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$1919$3, (void*)vr$239, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1920$3, -1, (void*)vr$242, -1, 0 );
			HWRITEASM64( &TMP$1920$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1920$3 );
			__builtin_memset( &TMP$1923$3, 0, 12 );
			__builtin_memset( &TMP$1922$3, 0, 12 );
			FBSTRING* vr$250 = fb_StrConcat( &TMP$1922$3, (void*)"sete ", 6, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1923$3, -1, (void*)vr$250, -1, 0 );
			HWRITEASM64( &TMP$1923$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1923$3 );
		}
		goto label$1551;
		label$1552:;
		{
			FBSTRING TMP$1924$3;
			FBSTRING TMP$1925$3;
			__builtin_memset( &TMP$1925$3, 0, 12 );
			__builtin_memset( &TMP$1924$3, 0, 12 );
			FBSTRING* vr$258 = fb_StrConcat( &TMP$1924$3, (void*)"not ", 5, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1925$3, -1, (void*)vr$258, -1, 0 );
			HWRITEASM64( &TMP$1925$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1925$3 );
		}
		label$1551:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1474;
	}
	label$1529:;
	label$1528:;
	if( TEMPODTYPE$1 != 15 ) goto label$1554;
	{
		if( *(int32*)V1$1 != 4 ) goto label$1556;
		{
			FBSTRING TMP$1927$3;
			FBSTRING TMP$1928$3;
			__builtin_memset( &TMP$1928$3, 0, 12 );
			__builtin_memset( &TMP$1927$3, 0, 12 );
			FBSTRING* vr$270 = fb_StrConcat( &TMP$1927$3, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1928$3, -1, (void*)vr$270, -1, 0 );
			HWRITEASM64( &TMP$1928$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1928$3 );
		}
		goto label$1555;
		label$1556:;
		{
			FBSTRING TMP$1930$3;
			FBSTRING TMP$1931$3;
			__builtin_memset( &TMP$1931$3, 0, 12 );
			__builtin_memset( &TMP$1930$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$1930$3, (void*)"movss xmm0, ", 13, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1931$3, -1, (void*)vr$278, -1, 0 );
			HWRITEASM64( &TMP$1931$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1931$3 );
		}
		label$1555:;
		{
			if( OP$1 != 60 ) goto label$1558;
			label$1559:;
			{
				FBSTRING TMP$1933$4;
				__builtin_memset( &TMP$1933$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1933$4, -1, (void*)"cosf", 5, 0 );
				SAVE_CALL( &TMP$1933$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1933$4 );
			}
			goto label$1557;
			label$1558:;
			if( OP$1 != 58 ) goto label$1560;
			label$1561:;
			{
				FBSTRING TMP$1935$4;
				__builtin_memset( &TMP$1935$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1935$4, -1, (void*)"sinf", 5, 0 );
				SAVE_CALL( &TMP$1935$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1935$4 );
			}
			goto label$1557;
			label$1560:;
			if( OP$1 != 69 ) goto label$1562;
			label$1563:;
			{
				FBSTRING TMP$1937$4;
				__builtin_memset( &TMP$1937$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1937$4, -1, (void*)"expf", 5, 0 );
				SAVE_CALL( &TMP$1937$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1937$4 );
			}
			goto label$1557;
			label$1562:;
			if( OP$1 != 68 ) goto label$1564;
			label$1565:;
			{
				FBSTRING TMP$1939$4;
				__builtin_memset( &TMP$1939$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1939$4, -1, (void*)"logf", 5, 0 );
				SAVE_CALL( &TMP$1939$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1939$4 );
			}
			goto label$1557;
			label$1564:;
			if( OP$1 != 61 ) goto label$1566;
			label$1567:;
			{
				FBSTRING TMP$1941$4;
				__builtin_memset( &TMP$1941$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1941$4, -1, (void*)"acosf", 6, 0 );
				SAVE_CALL( &TMP$1941$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1941$4 );
			}
			goto label$1557;
			label$1566:;
			if( OP$1 != 59 ) goto label$1568;
			label$1569:;
			{
				FBSTRING TMP$1943$4;
				__builtin_memset( &TMP$1943$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1943$4, -1, (void*)"asinf", 6, 0 );
				SAVE_CALL( &TMP$1943$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1943$4 );
			}
			goto label$1557;
			label$1568:;
			if( OP$1 != 62 ) goto label$1570;
			label$1571:;
			{
				FBSTRING TMP$1945$4;
				__builtin_memset( &TMP$1945$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1945$4, -1, (void*)"tanf", 5, 0 );
				SAVE_CALL( &TMP$1945$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1945$4 );
			}
			goto label$1557;
			label$1570:;
			if( OP$1 != 63 ) goto label$1572;
			label$1573:;
			{
				FBSTRING TMP$1947$4;
				__builtin_memset( &TMP$1947$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1947$4, -1, (void*)"atanf", 6, 0 );
				SAVE_CALL( &TMP$1947$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1947$4 );
			}
			goto label$1557;
			label$1572:;
			if( OP$1 != 65 ) goto label$1574;
			label$1575:;
			{
				FBSTRING TMP$1949$4;
				__builtin_memset( &TMP$1949$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1949$4, -1, (void*)"sqrtss    xmm0, xmm0", 21, 0 );
				HWRITEASM64( &TMP$1949$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1949$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1557;
			label$1574:;
			if( OP$1 != 56 ) goto label$1576;
			label$1577:;
			{
				FBSTRING TMP$1951$4;
				FBSTRING TMP$1953$4;
				FBSTRING TMP$1955$4;
				FBSTRING TMP$1957$4;
				__builtin_memset( &TMP$1951$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1951$4, -1, (void*)"mov eax, 0x7FFFFFFF", 20, 0 );
				HWRITEASM64( &TMP$1951$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1951$4 );
				__builtin_memset( &TMP$1953$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1953$4, -1, (void*)"movd xmm1, eax", 15, 0 );
				HWRITEASM64( &TMP$1953$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1953$4 );
				__builtin_memset( &TMP$1955$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1955$4, -1, (void*)"andps xmm1, xmm0", 17, 0 );
				HWRITEASM64( &TMP$1955$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1955$4 );
				__builtin_memset( &TMP$1957$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1957$4, -1, (void*)"movd xmm0, xmm1", 16, 0 );
				HWRITEASM64( &TMP$1957$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1957$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1557;
			label$1576:;
			if( OP$1 != 57 ) goto label$1578;
			label$1579:;
			{
				FBSTRING TMP$1959$4;
				__builtin_memset( &TMP$1959$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1959$4, -1, (void*)"fb_SGNSingle", 13, 0 );
				SAVE_CALL( &TMP$1959$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1959$4 );
			}
			goto label$1557;
			label$1578:;
			if( OP$1 != 72 ) goto label$1580;
			label$1581:;
			{
				FBSTRING TMP$1961$4;
				__builtin_memset( &TMP$1961$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1961$4, -1, (void*)"fb_FRACf", 9, 0 );
				SAVE_CALL( &TMP$1961$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1961$4 );
			}
			goto label$1557;
			label$1580:;
			if( OP$1 != 71 ) goto label$1582;
			label$1583:;
			{
				FBSTRING TMP$1963$4;
				__builtin_memset( &TMP$1963$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1963$4, -1, (void*)"fb_FIXSingle", 13, 0 );
				SAVE_CALL( &TMP$1963$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1963$4 );
			}
			goto label$1557;
			label$1582:;
			if( OP$1 != 70 ) goto label$1584;
			label$1585:;
			{
				FBSTRING TMP$1965$4;
				__builtin_memset( &TMP$1965$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1965$4, -1, (void*)"floorf", 7, 0 );
				SAVE_CALL( &TMP$1965$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1965$4 );
			}
			goto label$1557;
			label$1584:;
			if( OP$1 != 54 ) goto label$1586;
			label$1587:;
			{
				FBSTRING TMP$1968$4;
				FBSTRING TMP$1969$4;
				FBSTRING TMP$1971$4;
				__builtin_memset( &TMP$1968$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1968$4, -1, (void*)"mov eax, 0x80000000", 20, 0 );
				HWRITEASM64( &TMP$1968$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1968$4 );
				__builtin_memset( &TMP$1969$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1969$4, -1, (void*)"movd xmm1, eax", 15, 0 );
				HWRITEASM64( &TMP$1969$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1969$4 );
				__builtin_memset( &TMP$1971$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1971$4, -1, (void*)"xorps xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$1971$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1971$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1557;
			label$1586:;
			{
				FBSTRING TMP$1972$4;
				FBSTRING TMP$1975$4;
				FBSTRING TMP$1976$4;
				__builtin_memset( &TMP$1972$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1972$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$1972$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1972$4 );
				__builtin_memset( &TMP$1975$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1975$4, -1, (void*)"FOUND AN ERROR : in uop not handled for single", 47, 0 );
				HWRITEASM64( &TMP$1975$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1975$4 );
				__builtin_memset( &TMP$1976$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1976$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$1976$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1976$4 );
			}
			label$1588:;
			label$1557:;
		}
		if( OP$1 != 57 ) goto label$1590;
		{
			FBSTRING TMP$1978$3;
			FBSTRING TMP$1979$3;
			FBSTRING TMP$1980$3;
			__builtin_memset( &TMP$1980$3, 0, 12 );
			__builtin_memset( &TMP$1978$3, 0, 12 );
			FBSTRING* vr$378 = fb_StrConcat( &TMP$1978$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1979$3, 0, 12 );
			FBSTRING* vr$381 = fb_StrConcat( &TMP$1979$3, (void*)vr$378, -1, (void*)", eax", 6 );
			fb_StrAssign( (void*)&TMP$1980$3, -1, (void*)vr$381, -1, 0 );
			HWRITEASM64( &TMP$1980$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1980$3 );
		}
		goto label$1589;
		label$1590:;
		{
			FBSTRING TMP$1981$3;
			FBSTRING TMP$1982$3;
			FBSTRING TMP$1983$3;
			__builtin_memset( &TMP$1983$3, 0, 12 );
			__builtin_memset( &TMP$1981$3, 0, 12 );
			FBSTRING* vr$389 = fb_StrConcat( &TMP$1981$3, (void*)"movd ", 6, *(void**)((int32)(uint8**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1982$3, 0, 12 );
			FBSTRING* vr$392 = fb_StrConcat( &TMP$1982$3, (void*)vr$389, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$1983$3, -1, (void*)vr$392, -1, 0 );
			HWRITEASM64( &TMP$1983$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1983$3 );
		}
		label$1589:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1474;
	}
	label$1554:;
	label$1553:;
	if( (-(OP$1 == 56) & -(TEMPODTYPE$1 != 16)) == 0 ) goto label$1592;
	{
		FBSTRING TMP$1984$2;
		FBSTRING TMP$1985$2;
		FBSTRING TMP$1990$2;
		FBSTRING TMP$1992$2;
		FBSTRING TMP$1994$2;
		__builtin_memset( &TMP$1985$2, 0, 12 );
		__builtin_memset( &TMP$1984$2, 0, 12 );
		FBSTRING* vr$406 = fb_StrConcat( &TMP$1984$2, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1985$2, -1, (void*)vr$406, -1, 0 );
		HWRITEASM64( &TMP$1985$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1985$2 );
		if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) == -2 ) goto label$1594;
		{
			FBSTRING TMP$1986$3;
			FBSTRING TMP$1987$3;
			FBSTRING TMP$1988$3;
			FBSTRING TMP$1989$3;
			TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 12);
			REG_FINDFREE( TEMPO$1, -1 );
			*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
			__builtin_memset( &TMP$1989$3, 0, 12 );
			int32 vr$411 = REG_FINDREAL( TEMPO$1 );
			__builtin_memset( &TMP$1986$3, 0, 12 );
			FBSTRING* vr$415 = fb_StrConcat( &TMP$1986$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$411 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1987$3, 0, 12 );
			FBSTRING* vr$418 = fb_StrConcat( &TMP$1987$3, (void*)vr$415, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1988$3, 0, 12 );
			FBSTRING* vr$421 = fb_StrConcat( &TMP$1988$3, (void*)vr$418, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 12), 0 );
			fb_StrAssign( (void*)&TMP$1989$3, -1, (void*)vr$421, -1, 0 );
			HWRITEASM64( &TMP$1989$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1989$3 );
			if( VRREG$1 != 3 ) goto label$1596;
			{
				int32 vr$425 = REG_FINDREAL( TEMPO$1 );
				VRREG$1 = vr$425;
				label$1596:;
			}
		}
		goto label$1593;
		label$1594:;
		{
			*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 8;
		}
		label$1593:;
		__builtin_memset( &TMP$1990$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1990$2, -1, (void*)"cqo", 4, 0 );
		HWRITEASM64( &TMP$1990$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1990$2 );
		__builtin_memset( &TMP$1992$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1992$2, -1, (void*)"xor rax, rdx", 13, 0 );
		HWRITEASM64( &TMP$1992$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1992$2 );
		__builtin_memset( &TMP$1994$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1994$2, -1, (void*)"sub rax, rdx", 13, 0 );
		HWRITEASM64( &TMP$1994$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1994$2 );
		if( VR$1 != (struct $6IRVREG*)0u ) goto label$1598;
		{
			FBSTRING TMP$1995$3;
			FBSTRING TMP$1996$3;
			FBSTRING TMP$1997$3;
			__builtin_memset( &TMP$1997$3, 0, 12 );
			__builtin_memset( &TMP$1995$3, 0, 12 );
			FBSTRING* vr$443 = fb_StrConcat( &TMP$1995$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1996$3, 0, 12 );
			FBSTRING* vr$446 = fb_StrConcat( &TMP$1996$3, (void*)vr$443, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1997$3, -1, (void*)vr$446, -1, 0 );
			HWRITEASM64( &TMP$1997$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1997$3 );
		}
		goto label$1597;
		label$1598:;
		{
			FBSTRING TMP$1998$3;
			FBSTRING TMP$1999$3;
			FBSTRING TMP$2000$3;
			__builtin_memset( &TMP$2000$3, 0, 12 );
			__builtin_memset( &TMP$1998$3, 0, 12 );
			FBSTRING* vr$454 = fb_StrConcat( &TMP$1998$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1999$3, 0, 12 );
			FBSTRING* vr$457 = fb_StrConcat( &TMP$1999$3, (void*)vr$454, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2000$3, -1, (void*)vr$457, -1, 0 );
			HWRITEASM64( &TMP$2000$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2000$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		label$1597:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1474;
	}
	label$1592:;
	label$1591:;
	if( (-(OP$1 == 54) & -(TEMPODTYPE$1 != 16)) == 0 ) goto label$1600;
	{
		FBSTRING TMP$2005$2;
		FBSTRING TMP$2006$2;
		if( (-(VR$1 != (struct $6IRVREG*)0u) & -(*(int32*)V1$1 != 4)) == 0 ) goto label$1602;
		{
			FBSTRING TMP$2001$3;
			FBSTRING TMP$2002$3;
			FBSTRING TMP$2003$3;
			FBSTRING TMP$2004$3;
			__builtin_memset( &TMP$2004$3, 0, 12 );
			__builtin_memset( &TMP$2001$3, 0, 12 );
			FBSTRING* vr$476 = fb_StrConcat( &TMP$2001$3, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2002$3, 0, 12 );
			FBSTRING* vr$479 = fb_StrConcat( &TMP$2002$3, (void*)vr$476, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2003$3, 0, 12 );
			FBSTRING* vr$482 = fb_StrConcat( &TMP$2003$3, (void*)vr$479, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2004$3, -1, (void*)vr$482, -1, 0 );
			HWRITEASM64( &TMP$2004$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2004$3 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
		}
		label$1602:;
		label$1601:;
		__builtin_memset( &TMP$2006$2, 0, 12 );
		__builtin_memset( &TMP$2005$2, 0, 12 );
		FBSTRING* vr$492 = fb_StrConcat( &TMP$2005$2, (void*)"neg ", 5, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2006$2, -1, (void*)vr$492, -1, 0 );
		HWRITEASM64( &TMP$2006$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2006$2 );
		if( VR$1 == (struct $6IRVREG*)0u ) goto label$1604;
		{
			RESTORE_VRREG( VR$1, VRREG$1 );
			label$1604:;
		}
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1474;
	}
	label$1600:;
	label$1599:;
	if( (-(OP$1 == 57) & -(TEMPODTYPE$1 != 16)) == 0 ) goto label$1606;
	{
		FBSTRING LNAME$2;
		uint8* vr$502 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$502, 0, 0 );
		if( *(int32*)V1$1 != 4 ) goto label$1608;
		{
			FBSTRING TMP$2008$3;
			FBSTRING TMP$2009$3;
			FBSTRING TMP$2010$3;
			FBSTRING TMP$2011$3;
			FBSTRING TMP$2012$3;
			FBSTRING TMP$2013$3;
			FBSTRING TMP$2014$3;
			FBSTRING TMP$2015$3;
			FBSTRING TMP$2017$3;
			FBSTRING TMP$2018$3;
			FBSTRING TMP$2019$3;
			FBSTRING TMP$2020$3;
			FBSTRING TMP$2021$3;
			FBSTRING TMP$2022$3;
			FBSTRING TMP$2023$3;
			__builtin_memset( &TMP$2010$3, 0, 12 );
			__builtin_memset( &TMP$2008$3, 0, 12 );
			FBSTRING* vr$509 = fb_StrConcat( &TMP$2008$3, (void*)"cmp ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2009$3, 0, 12 );
			FBSTRING* vr$512 = fb_StrConcat( &TMP$2009$3, (void*)vr$509, -1, (void*)", 0", 4 );
			fb_StrAssign( (void*)&TMP$2010$3, -1, (void*)vr$512, -1, 0 );
			HWRITEASM64( &TMP$2010$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2010$3 );
			__builtin_memset( &TMP$2012$3, 0, 12 );
			__builtin_memset( &TMP$2011$3, 0, 12 );
			FBSTRING* vr$520 = fb_StrConcat( &TMP$2011$3, (void*)"je ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2012$3, -1, (void*)vr$520, -1, 0 );
			HWRITEASM64( &TMP$2012$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2012$3 );
			__builtin_memset( &TMP$2015$3, 0, 12 );
			__builtin_memset( &TMP$2013$3, 0, 12 );
			FBSTRING* vr$528 = fb_StrConcat( &TMP$2013$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2014$3, 0, 12 );
			FBSTRING* vr$531 = fb_StrConcat( &TMP$2014$3, (void*)vr$528, -1, (void*)", 1", 4 );
			fb_StrAssign( (void*)&TMP$2015$3, -1, (void*)vr$531, -1, 0 );
			HWRITEASM64( &TMP$2015$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2015$3 );
			__builtin_memset( &TMP$2018$3, 0, 12 );
			__builtin_memset( &TMP$2017$3, 0, 12 );
			FBSTRING* vr$539 = fb_StrConcat( &TMP$2017$3, (void*)"jg ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2018$3, -1, (void*)vr$539, -1, 0 );
			HWRITEASM64( &TMP$2018$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2018$3 );
			__builtin_memset( &TMP$2021$3, 0, 12 );
			__builtin_memset( &TMP$2019$3, 0, 12 );
			FBSTRING* vr$547 = fb_StrConcat( &TMP$2019$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2020$3, 0, 12 );
			FBSTRING* vr$550 = fb_StrConcat( &TMP$2020$3, (void*)vr$547, -1, (void*)", -1", 5 );
			fb_StrAssign( (void*)&TMP$2021$3, -1, (void*)vr$550, -1, 0 );
			HWRITEASM64( &TMP$2021$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2021$3 );
			__builtin_memset( &TMP$2023$3, 0, 12 );
			__builtin_memset( &TMP$2022$3, 0, 12 );
			FBSTRING* vr$558 = fb_StrConcat( &TMP$2022$3, (void*)&LNAME$2, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$2023$3, -1, (void*)vr$558, -1, 0 );
			HWRITEASM64( &TMP$2023$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2023$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1607;
		label$1608:;
		{
			FBSTRING TMP$2024$3;
			FBSTRING TMP$2025$3;
			FBSTRING TMP$2027$3;
			FBSTRING TMP$2028$3;
			FBSTRING TMP$2029$3;
			FBSTRING TMP$2031$3;
			FBSTRING TMP$2032$3;
			FBSTRING TMP$2033$3;
			FBSTRING TMP$2035$3;
			FBSTRING TMP$2036$3;
			FBSTRING TMP$2037$3;
			__builtin_memset( &TMP$2025$3, 0, 12 );
			__builtin_memset( &TMP$2024$3, 0, 12 );
			FBSTRING* vr$566 = fb_StrConcat( &TMP$2024$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2025$3, -1, (void*)vr$566, -1, 0 );
			HWRITEASM64( &TMP$2025$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2025$3 );
			__builtin_memset( &TMP$2027$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2027$3, -1, (void*)"cmp rax, 0", 11, 0 );
			HWRITEASM64( &TMP$2027$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2027$3 );
			__builtin_memset( &TMP$2029$3, 0, 12 );
			__builtin_memset( &TMP$2028$3, 0, 12 );
			FBSTRING* vr$578 = fb_StrConcat( &TMP$2028$3, (void*)"je ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2029$3, -1, (void*)vr$578, -1, 0 );
			HWRITEASM64( &TMP$2029$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2029$3 );
			__builtin_memset( &TMP$2031$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2031$3, -1, (void*)"mov eax, 1", 11, 0 );
			HWRITEASM64( &TMP$2031$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2031$3 );
			__builtin_memset( &TMP$2033$3, 0, 12 );
			__builtin_memset( &TMP$2032$3, 0, 12 );
			FBSTRING* vr$590 = fb_StrConcat( &TMP$2032$3, (void*)"jg ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2033$3, -1, (void*)vr$590, -1, 0 );
			HWRITEASM64( &TMP$2033$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2033$3 );
			__builtin_memset( &TMP$2035$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2035$3, -1, (void*)"mov rax, -1", 12, 0 );
			HWRITEASM64( &TMP$2035$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2035$3 );
			__builtin_memset( &TMP$2037$3, 0, 12 );
			__builtin_memset( &TMP$2036$3, 0, 12 );
			FBSTRING* vr$602 = fb_StrConcat( &TMP$2036$3, (void*)&LNAME$2, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$2037$3, -1, (void*)vr$602, -1, 0 );
			HWRITEASM64( &TMP$2037$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2037$3 );
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1610;
			{
				FBSTRING TMP$2038$4;
				FBSTRING TMP$2039$4;
				FBSTRING TMP$2040$4;
				__builtin_memset( &TMP$2040$4, 0, 12 );
				__builtin_memset( &TMP$2038$4, 0, 12 );
				FBSTRING* vr$610 = fb_StrConcat( &TMP$2038$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2039$4, 0, 12 );
				FBSTRING* vr$613 = fb_StrConcat( &TMP$2039$4, (void*)vr$610, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2040$4, -1, (void*)vr$613, -1, 0 );
				HWRITEASM64( &TMP$2040$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2040$4 );
			}
			goto label$1609;
			label$1610:;
			{
				FBSTRING TMP$2041$4;
				FBSTRING TMP$2042$4;
				FBSTRING TMP$2043$4;
				__builtin_memset( &TMP$2043$4, 0, 12 );
				__builtin_memset( &TMP$2041$4, 0, 12 );
				FBSTRING* vr$621 = fb_StrConcat( &TMP$2041$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2042$4, 0, 12 );
				FBSTRING* vr$624 = fb_StrConcat( &TMP$2042$4, (void*)vr$621, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2043$4, -1, (void*)vr$624, -1, 0 );
				HWRITEASM64( &TMP$2043$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2043$4 );
			}
			label$1609:;
		}
		label$1607:;
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1474;
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$1606:;
	label$1605:;
	if( *(int32*)V1$1 != 4 ) goto label$1612;
	{
		FBSTRING TMP$2045$2;
		FBSTRING TMP$2046$2;
		__builtin_memset( &TMP$2046$2, 0, 12 );
		__builtin_memset( &TMP$2045$2, 0, 12 );
		FBSTRING* vr$638 = fb_StrConcat( &TMP$2045$2, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2046$2, -1, (void*)vr$638, -1, 0 );
		HWRITEASM64( &TMP$2046$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2046$2 );
	}
	goto label$1611;
	label$1612:;
	{
		FBSTRING TMP$2048$2;
		FBSTRING TMP$2049$2;
		__builtin_memset( &TMP$2049$2, 0, 12 );
		__builtin_memset( &TMP$2048$2, 0, 12 );
		FBSTRING* vr$646 = fb_StrConcat( &TMP$2048$2, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2049$2, -1, (void*)vr$646, -1, 0 );
		HWRITEASM64( &TMP$2049$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2049$2 );
	}
	label$1611:;
	{
		if( OP$1 != 60 ) goto label$1614;
		label$1615:;
		{
			FBSTRING TMP$2051$3;
			__builtin_memset( &TMP$2051$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2051$3, -1, (void*)"cos", 4, 0 );
			SAVE_CALL( &TMP$2051$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2051$3 );
		}
		goto label$1613;
		label$1614:;
		if( OP$1 != 58 ) goto label$1616;
		label$1617:;
		{
			FBSTRING TMP$2053$3;
			__builtin_memset( &TMP$2053$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2053$3, -1, (void*)"sin", 4, 0 );
			SAVE_CALL( &TMP$2053$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2053$3 );
		}
		goto label$1613;
		label$1616:;
		if( OP$1 != 69 ) goto label$1618;
		label$1619:;
		{
			FBSTRING TMP$2055$3;
			__builtin_memset( &TMP$2055$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2055$3, -1, (void*)"exp", 4, 0 );
			SAVE_CALL( &TMP$2055$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2055$3 );
		}
		goto label$1613;
		label$1618:;
		if( OP$1 != 68 ) goto label$1620;
		label$1621:;
		{
			FBSTRING TMP$2057$3;
			__builtin_memset( &TMP$2057$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2057$3, -1, (void*)"log", 4, 0 );
			SAVE_CALL( &TMP$2057$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2057$3 );
		}
		goto label$1613;
		label$1620:;
		if( OP$1 != 61 ) goto label$1622;
		label$1623:;
		{
			FBSTRING TMP$2059$3;
			__builtin_memset( &TMP$2059$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2059$3, -1, (void*)"acos", 5, 0 );
			SAVE_CALL( &TMP$2059$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2059$3 );
		}
		goto label$1613;
		label$1622:;
		if( OP$1 != 59 ) goto label$1624;
		label$1625:;
		{
			FBSTRING TMP$2061$3;
			__builtin_memset( &TMP$2061$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2061$3, -1, (void*)"asin", 5, 0 );
			SAVE_CALL( &TMP$2061$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2061$3 );
		}
		goto label$1613;
		label$1624:;
		if( OP$1 != 62 ) goto label$1626;
		label$1627:;
		{
			FBSTRING TMP$2063$3;
			__builtin_memset( &TMP$2063$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2063$3, -1, (void*)"tan", 4, 0 );
			SAVE_CALL( &TMP$2063$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2063$3 );
		}
		goto label$1613;
		label$1626:;
		if( OP$1 != 63 ) goto label$1628;
		label$1629:;
		{
			FBSTRING TMP$2065$3;
			__builtin_memset( &TMP$2065$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2065$3, -1, (void*)"atan", 5, 0 );
			SAVE_CALL( &TMP$2065$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2065$3 );
		}
		goto label$1613;
		label$1628:;
		if( OP$1 != 56 ) goto label$1630;
		label$1631:;
		{
			FBSTRING TMP$2067$3;
			FBSTRING TMP$2069$3;
			FBSTRING TMP$2071$3;
			FBSTRING TMP$2073$3;
			__builtin_memset( &TMP$2067$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2067$3, -1, (void*)"mov rax, 0x7FFFFFFFFFFFFFFF", 28, 0 );
			HWRITEASM64( &TMP$2067$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2067$3 );
			__builtin_memset( &TMP$2069$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2069$3, -1, (void*)"movq xmm1, rax", 15, 0 );
			HWRITEASM64( &TMP$2069$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2069$3 );
			__builtin_memset( &TMP$2071$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2071$3, -1, (void*)"andpd xmm1, xmm0", 17, 0 );
			HWRITEASM64( &TMP$2071$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2071$3 );
			__builtin_memset( &TMP$2073$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2073$3, -1, (void*)"movq xmm0, xmm1", 16, 0 );
			HWRITEASM64( &TMP$2073$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2073$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1613;
		label$1630:;
		if( OP$1 != 65 ) goto label$1632;
		label$1633:;
		{
			FBSTRING TMP$2075$3;
			__builtin_memset( &TMP$2075$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2075$3, -1, (void*)"sqrtsd    xmm0, xmm0", 21, 0 );
			HWRITEASM64( &TMP$2075$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2075$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1613;
		label$1632:;
		if( OP$1 != 57 ) goto label$1634;
		label$1635:;
		{
			FBSTRING TMP$2077$3;
			__builtin_memset( &TMP$2077$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2077$3, -1, (void*)"fb_SGNDouble", 13, 0 );
			SAVE_CALL( &TMP$2077$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2077$3 );
		}
		goto label$1613;
		label$1634:;
		if( OP$1 != 72 ) goto label$1636;
		label$1637:;
		{
			FBSTRING TMP$2079$3;
			__builtin_memset( &TMP$2079$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2079$3, -1, (void*)"fb_FRACd", 9, 0 );
			SAVE_CALL( &TMP$2079$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2079$3 );
		}
		goto label$1613;
		label$1636:;
		if( OP$1 != 71 ) goto label$1638;
		label$1639:;
		{
			FBSTRING TMP$2081$3;
			__builtin_memset( &TMP$2081$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2081$3, -1, (void*)"fb_FIXDouble", 13, 0 );
			SAVE_CALL( &TMP$2081$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2081$3 );
		}
		goto label$1613;
		label$1638:;
		if( OP$1 != 70 ) goto label$1640;
		label$1641:;
		{
			FBSTRING TMP$2083$3;
			__builtin_memset( &TMP$2083$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2083$3, -1, (void*)"floor", 6, 0 );
			SAVE_CALL( &TMP$2083$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2083$3 );
		}
		goto label$1613;
		label$1640:;
		if( OP$1 != 54 ) goto label$1642;
		label$1643:;
		{
			FBSTRING TMP$2086$3;
			FBSTRING TMP$2087$3;
			FBSTRING TMP$2089$3;
			__builtin_memset( &TMP$2086$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2086$3, -1, (void*)"mov rax, 0x8000000000000000", 28, 0 );
			HWRITEASM64( &TMP$2086$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2086$3 );
			__builtin_memset( &TMP$2087$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2087$3, -1, (void*)"movq xmm1, rax", 15, 0 );
			HWRITEASM64( &TMP$2087$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2087$3 );
			__builtin_memset( &TMP$2089$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2089$3, -1, (void*)"xorpd xmm0, xmm1", 17, 0 );
			HWRITEASM64( &TMP$2089$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2089$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1613;
		label$1642:;
		{
			FBSTRING TMP$2090$3;
			FBSTRING TMP$2093$3;
			FBSTRING TMP$2094$3;
			__builtin_memset( &TMP$2090$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2090$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2090$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2090$3 );
			__builtin_memset( &TMP$2093$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2093$3, -1, (void*)"FOUND AN ERROR : in uop not handled for double", 47, 0 );
			HWRITEASM64( &TMP$2093$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2093$3 );
			__builtin_memset( &TMP$2094$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2094$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2094$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2094$3 );
		}
		label$1644:;
		label$1613:;
	}
	if( OP$1 != 57 ) goto label$1646;
	{
		FBSTRING TMP$2096$2;
		FBSTRING TMP$2097$2;
		FBSTRING TMP$2098$2;
		__builtin_memset( &TMP$2098$2, 0, 12 );
		__builtin_memset( &TMP$2096$2, 0, 12 );
		FBSTRING* vr$746 = fb_StrConcat( &TMP$2096$2, (void*)"movsxd ", 8, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$2097$2, 0, 12 );
		FBSTRING* vr$749 = fb_StrConcat( &TMP$2097$2, (void*)vr$746, -1, (void*)", eax", 6 );
		fb_StrAssign( (void*)&TMP$2098$2, -1, (void*)vr$749, -1, 0 );
		HWRITEASM64( &TMP$2098$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2098$2 );
	}
	goto label$1645;
	label$1646:;
	{
		FBSTRING TMP$2099$2;
		FBSTRING TMP$2100$2;
		FBSTRING TMP$2101$2;
		__builtin_memset( &TMP$2101$2, 0, 12 );
		__builtin_memset( &TMP$2099$2, 0, 12 );
		FBSTRING* vr$757 = fb_StrConcat( &TMP$2099$2, (void*)"movq ", 6, *(void**)((int32)(uint8**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$2100$2, 0, 12 );
		FBSTRING* vr$760 = fb_StrConcat( &TMP$2100$2, (void*)vr$757, -1, (void*)", xmm0", 7 );
		fb_StrAssign( (void*)&TMP$2101$2, -1, (void*)vr$760, -1, 0 );
		HWRITEASM64( &TMP$2101$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2101$2 );
	}
	label$1645:;
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1474:;
}

static void HEMITROUNDFLOAT( $11FB_DATATYPE DTYPE1$1, $11FB_DATATYPE DTYPE2$1 )
{
	FBSTRING TMP$2103$1;
	FBSTRING TMP$2104$1;
	FBSTRING TMP$2105$1;
	FBSTRING TMP$2114$1;
	FBSTRING TMP$2115$1;
	FBSTRING TMP$2116$1;
	FBSTRING TMP$2117$1;
	FBSTRING TMP$2123$1;
	FBSTRING TMP$2124$1;
	label$1647:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	*(boolean*)((uint8*)&CTX$ + 152) = (boolean)1;
	__builtin_memset( &TMP$2103$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$2103$1, -1, (void*)"test DWORD PTR $sse41[rip], 0b10000000000000000000", 51, 0 );
	HWRITEASM64( &TMP$2103$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2103$1 );
	uint8* vr$6 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$6, 0, 0 );
	__builtin_memset( &TMP$2105$1, 0, 12 );
	__builtin_memset( &TMP$2104$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$2104$1, (void*)"je ", 4, (void*)&LNAME1$1, -1 );
	fb_StrAssign( (void*)&TMP$2105$1, -1, (void*)vr$12, -1, 0 );
	HWRITEASM64( &TMP$2105$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2105$1 );
	if( DTYPE1$1 != 16 ) goto label$1650;
	{
		FBSTRING TMP$2107$2;
		__builtin_memset( &TMP$2107$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2107$2, -1, (void*)"roundsd xmm0,xmm0,4", 20, 0 );
		HWRITEASM64( &TMP$2107$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2107$2 );
		if( DTYPE2$1 == 14 ) goto label$1652;
		{
			FBSTRING TMP$2109$3;
			__builtin_memset( &TMP$2109$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2109$3, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
			HWRITEASM64( &TMP$2109$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2109$3 );
		}
		label$1652:;
		label$1651:;
	}
	goto label$1649;
	label$1650:;
	{
		FBSTRING TMP$2111$2;
		__builtin_memset( &TMP$2111$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2111$2, -1, (void*)"roundss xmm0,xmm0,4", 20, 0 );
		HWRITEASM64( &TMP$2111$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2111$2 );
		if( DTYPE2$1 == 14 ) goto label$1654;
		{
			FBSTRING TMP$2113$3;
			__builtin_memset( &TMP$2113$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2113$3, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
			HWRITEASM64( &TMP$2113$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2113$3 );
		}
		label$1654:;
		label$1653:;
	}
	label$1649:;
	uint8* vr$32 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$32, 0, 0 );
	__builtin_memset( &TMP$2115$1, 0, 12 );
	__builtin_memset( &TMP$2114$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$2114$1, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
	fb_StrAssign( (void*)&TMP$2115$1, -1, (void*)vr$38, -1, 0 );
	HWRITEASM64( &TMP$2115$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2115$1 );
	__builtin_memset( &TMP$2117$1, 0, 12 );
	__builtin_memset( &TMP$2116$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$2116$1, (void*)&LNAME1$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$2117$1, -1, (void*)vr$46, -1, 0 );
	HWRITEASM64( &TMP$2117$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2117$1 );
	if( DTYPE1$1 != 16 ) goto label$1656;
	{
		if( DTYPE2$1 == 14 ) goto label$1658;
		{
			NO_ROUNDSD( (uint8*)"d" );
		}
		goto label$1657;
		label$1658:;
		{
			FBSTRING TMP$2119$3;
			__builtin_memset( &TMP$2119$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2119$3, -1, (void*)"call nearbyint", 15, 0 );
			HWRITEASM64( &TMP$2119$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2119$3 );
		}
		label$1657:;
	}
	goto label$1655;
	label$1656:;
	{
		if( DTYPE2$1 == 14 ) goto label$1660;
		{
			NO_ROUNDSD( (uint8*)"s" );
		}
		goto label$1659;
		label$1660:;
		{
			FBSTRING TMP$2122$3;
			__builtin_memset( &TMP$2122$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2122$3, -1, (void*)"call nearbyintf", 16, 0 );
			HWRITEASM64( &TMP$2122$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2122$3 );
		}
		label$1659:;
	}
	label$1655:;
	__builtin_memset( &TMP$2124$1, 0, 12 );
	__builtin_memset( &TMP$2123$1, 0, 12 );
	FBSTRING* vr$62 = fb_StrConcat( &TMP$2123$1, (void*)&LNAME2$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$2124$1, -1, (void*)vr$62, -1, 0 );
	HWRITEASM64( &TMP$2124$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2124$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1648:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$2130$1;
	int32 TMP$2131$1;
	int32 TMP$2132$1;
	int32 TMP$2133$1;
	int32 TMP$2192$1;
	int32 TMP$2336$1;
	int32 TMP$2337$1;
	int32 TMP$2502$1;
	int32 TMP$2503$1;
	int32 TMP$2513$1;
	label$1661:;
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 4 );
	$11FB_DATATYPE V2DTYPE$1;
	__builtin_memset( &V2DTYPE$1, 0, 4 );
	$11FB_DATATYPE V1OLD$1;
	__builtin_memset( &V1OLD$1, 0, 4 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 12 );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 12 );
	int32 REGRESULT$1;
	__builtin_memset( &REGRESULT$1, 0, 4 );
	int32 SRCREG$1;
	__builtin_memset( &SRCREG$1, 0, 4 );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	if( *(int32*)V1$1 == 4 ) goto label$1664;
	{
		FBSTRING TMP$2125$2;
		FBSTRING TMP$2128$2;
		FBSTRING TMP$2129$2;
		__builtin_memset( &TMP$2125$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2125$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2125$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2125$2 );
		__builtin_memset( &TMP$2128$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2128$2, -1, (void*)"FOUND AN ERROR : v1 in converting not a reg", 44, 0 );
		HWRITEASM64( &TMP$2128$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2128$2 );
		__builtin_memset( &TMP$2129$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2129$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2129$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2129$2 );
	}
	label$1664:;
	label$1663:;
	V1DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	V2DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
	if( (-((V1DTYPE$1 & 480) != 0) & -((V2DTYPE$1 & 480) != 0)) == 0 ) goto label$1666;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1666:;
	label$1665:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1668;
	{
		V1DTYPE$1 = 13;
		label$1668:;
	}
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1670;
	{
		V2DTYPE$1 = 13;
		label$1670:;
	}
	if( V1DTYPE$1 != 8 ) goto label$1672;
	{
		V1DTYPE$1 = 13;
	}
	goto label$1671;
	label$1672:;
	if( V1DTYPE$1 != 10 ) goto label$1673;
	{
		V1DTYPE$1 = 13;
	}
	goto label$1671;
	label$1673:;
	if( V1DTYPE$1 != 9 ) goto label$1674;
	{
		V1DTYPE$1 = 14;
	}
	label$1674:;
	label$1671:;
	if( V2DTYPE$1 != 8 ) goto label$1676;
	{
		V2DTYPE$1 = 13;
	}
	goto label$1675;
	label$1676:;
	if( V2DTYPE$1 != 10 ) goto label$1677;
	{
		V2DTYPE$1 = 13;
	}
	goto label$1675;
	label$1677:;
	if( V2DTYPE$1 != 9 ) goto label$1678;
	{
		V2DTYPE$1 = 14;
	}
	label$1678:;
	label$1675:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1679;
	TMP$2130$1 = 24;
	goto label$3099;
	label$1679:;
	TMP$2130$1 = V1DTYPE$1 & 31;
	label$3099:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1680;
	TMP$2131$1 = 24;
	goto label$3100;
	label$1680:;
	TMP$2131$1 = V2DTYPE$1 & 31;
	label$3100:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1681;
	TMP$2132$1 = 24;
	goto label$3101;
	label$1681:;
	TMP$2132$1 = V1DTYPE$1 & 31;
	label$3101:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1682;
	TMP$2133$1 = 24;
	goto label$3102;
	label$1682:;
	TMP$2133$1 = V2DTYPE$1 & 31;
	label$3102:;
	if( (((-(*(int32*)V1$1 == 4) & -(*(int32*)V2$1 == 4)) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2130$1 * 28)) + 4) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2131$1 * 28)) + 4))) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2132$1 * 28)) == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2133$1 * 28)))) == 0 ) goto label$1684;
	{
		*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1684:;
	label$1683:;
	if( ((-(V1DTYPE$1 == 13) & -(V2DTYPE$1 == 13)) | (-(V1DTYPE$1 == 14) & -(V2DTYPE$1 == 14))) == 0 ) goto label$1686;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1686:;
	label$1685:;
	if( ((-(V1DTYPE$1 == 13) & -(V2DTYPE$1 == 14)) | (-(V2DTYPE$1 == 13) & -(V1DTYPE$1 == 14))) == 0 ) goto label$1688;
	{
		V1OLD$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
		__builtin_memcpy( V1$1, V2$1, 72 );
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = V1OLD$1;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1688:;
	label$1687:;
	if( (-(V1DTYPE$1 == 17) & -(V2DTYPE$1 == 20)) == 0 ) goto label$1690;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1690:;
	label$1689:;
	if( (-(V1DTYPE$1 == 20) & -(V2DTYPE$1 == 20)) == 0 ) goto label$1692;
	{
		struct $8FBSYMBOL* V1SUBTYPE$2;
		V1SUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8);
		__builtin_memcpy( V1$1, V2$1, 72 );
		*(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) = V1SUBTYPE$2;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1692:;
	label$1691:;
	REG_FINDFREE( *(int32*)((uint8*)V1$1 + 12), -1 );
	int32 vr$142 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
	REGRESULT$1 = vr$142;
	if( V1DTYPE$1 != 17 ) goto label$1694;
	{
		V1DTYPE$1 = 13;
		label$1694:;
	}
	{
		if( V1DTYPE$1 == 13 ) goto label$1697;
		label$1698:;
		if( V1DTYPE$1 == 14 ) goto label$1697;
		label$1699:;
		if( V1DTYPE$1 == 16 ) goto label$1697;
		label$1700:;
		if( V1DTYPE$1 != 20 ) goto label$1696;
		label$1697:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"QWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1695;
		label$1696:;
		if( V1DTYPE$1 == 11 ) goto label$1702;
		label$1703:;
		if( V1DTYPE$1 == 12 ) goto label$1702;
		label$1704:;
		if( V1DTYPE$1 != 15 ) goto label$1701;
		label$1702:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"DWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1695;
		label$1701:;
		if( V1DTYPE$1 == 5 ) goto label$1706;
		label$1707:;
		if( V1DTYPE$1 != 6 ) goto label$1705;
		label$1706:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"WORD PTR ", 10, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1695;
		label$1705:;
		if( V1DTYPE$1 == 2 ) goto label$1709;
		label$1710:;
		if( V1DTYPE$1 == 3 ) goto label$1709;
		label$1711:;
		if( V1DTYPE$1 == 1 ) goto label$1709;
		label$1712:;
		if( V1DTYPE$1 != 4 ) goto label$1708;
		label$1709:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"BYTE PTR ", 10, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1695;
		label$1708:;
		{
			FBSTRING TMP$2134$3;
			FBSTRING TMP$2138$3;
			FBSTRING TMP$2139$3;
			FBSTRING TMP$2140$3;
			__builtin_memset( &TMP$2134$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2134$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2134$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2134$3 );
			__builtin_memset( &TMP$2139$3, 0, 12 );
			FBSTRING* vr$161 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$2138$3, 0, 12 );
			FBSTRING* vr$164 = fb_StrConcat( &TMP$2138$3, (void*)"FOUND AN ERROR : converting datatype not handled 01 = ", 55, (void*)vr$161, -1 );
			fb_StrAssign( (void*)&TMP$2139$3, -1, (void*)vr$164, -1, 0 );
			HWRITEASM64( &TMP$2139$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2139$3 );
			__builtin_memset( &TMP$2140$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2140$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2140$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2140$3 );
		}
		label$1713:;
		label$1695:;
	}
	{
		if( V2DTYPE$1 == 13 ) goto label$1716;
		label$1717:;
		if( V2DTYPE$1 == 14 ) goto label$1716;
		label$1718:;
		if( V2DTYPE$1 == 16 ) goto label$1716;
		label$1719:;
		if( V2DTYPE$1 != 20 ) goto label$1715;
		label$1716:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1714;
		label$1715:;
		if( V2DTYPE$1 == 11 ) goto label$1721;
		label$1722:;
		if( V2DTYPE$1 == 12 ) goto label$1721;
		label$1723:;
		if( V2DTYPE$1 != 15 ) goto label$1720;
		label$1721:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1714;
		label$1720:;
		if( V2DTYPE$1 == 5 ) goto label$1725;
		label$1726:;
		if( V2DTYPE$1 != 6 ) goto label$1724;
		label$1725:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1714;
		label$1724:;
		if( V2DTYPE$1 == 2 ) goto label$1728;
		label$1729:;
		if( V2DTYPE$1 == 3 ) goto label$1728;
		label$1730:;
		if( V2DTYPE$1 == 1 ) goto label$1728;
		label$1731:;
		if( V2DTYPE$1 != 4 ) goto label$1727;
		label$1728:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1714;
		label$1727:;
		if( V2DTYPE$1 != 7 ) goto label$1732;
		label$1733:;
		{
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 2 ) goto label$1735;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"WORD PTR ", 10, 0 );
				V2DTYPE$1 = 6;
			}
			goto label$1734;
			label$1735:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 4 ) goto label$1736;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"DWORD PTR ", 11, 0 );
				V2DTYPE$1 = 12;
			}
			goto label$1734;
			label$1736:;
			{
				FBSTRING TMP$2141$4;
				FBSTRING TMP$2144$4;
				FBSTRING TMP$2145$4;
				__builtin_memset( &TMP$2141$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2141$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2141$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2141$4 );
				__builtin_memset( &TMP$2144$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2144$4, -1, (void*)"FOUND AN ERROR : converting datatype WCHAR not handled", 55, 0 );
				HWRITEASM64( &TMP$2144$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2144$4 );
				__builtin_memset( &TMP$2145$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2145$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2145$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2145$4 );
			}
			label$1734:;
		}
		goto label$1714;
		label$1732:;
		{
			FBSTRING TMP$2146$3;
			FBSTRING TMP$2150$3;
			FBSTRING TMP$2151$3;
			FBSTRING TMP$2152$3;
			__builtin_memset( &TMP$2146$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2146$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2146$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2146$3 );
			__builtin_memset( &TMP$2151$3, 0, 12 );
			FBSTRING* vr$196 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
			__builtin_memset( &TMP$2150$3, 0, 12 );
			FBSTRING* vr$199 = fb_StrConcat( &TMP$2150$3, (void*)"FOUND AN ERROR : converting datatype not handled 02 = ", 55, (void*)vr$196, -1 );
			fb_StrAssign( (void*)&TMP$2151$3, -1, (void*)vr$199, -1, 0 );
			HWRITEASM64( &TMP$2151$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2151$3 );
			__builtin_memset( &TMP$2152$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2152$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2152$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2152$3 );
		}
		label$1737:;
		label$1714:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$2153$2;
		TMP$2153$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2153$2 != 2 ) goto label$1739;
		label$1740:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1738;
		label$1739:;
		if( TMP$2153$2 != 4 ) goto label$1741;
		label$1742:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
			int32 vr$212 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
			SRCREG$1 = vr$212;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1744;
			{
				V2DTYPE$1 = 13;
				label$1744:;
			}
			{
				if( V2DTYPE$1 == 13 ) goto label$1747;
				label$1748:;
				if( V2DTYPE$1 == 14 ) goto label$1747;
				label$1749:;
				if( V2DTYPE$1 != 16 ) goto label$1746;
				label$1747:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1745;
				label$1746:;
				if( V2DTYPE$1 == 11 ) goto label$1751;
				label$1752:;
				if( V2DTYPE$1 == 12 ) goto label$1751;
				label$1753:;
				if( V2DTYPE$1 != 15 ) goto label$1750;
				label$1751:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1745;
				label$1750:;
				if( V2DTYPE$1 == 5 ) goto label$1755;
				label$1756:;
				if( V2DTYPE$1 != 6 ) goto label$1754;
				label$1755:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1745;
				label$1754:;
				if( V2DTYPE$1 == 2 ) goto label$1758;
				label$1759:;
				if( V2DTYPE$1 == 3 ) goto label$1758;
				label$1760:;
				if( V2DTYPE$1 == 1 ) goto label$1758;
				label$1761:;
				if( V2DTYPE$1 != 4 ) goto label$1757;
				label$1758:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1745;
				label$1757:;
				{
					FBSTRING TMP$2154$5;
					FBSTRING TMP$2158$5;
					FBSTRING TMP$2159$5;
					FBSTRING TMP$2160$5;
					__builtin_memset( &TMP$2154$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2154$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2154$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2154$5 );
					__builtin_memset( &TMP$2159$5, 0, 12 );
					FBSTRING* vr$228 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2158$5, 0, 12 );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$2158$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55, (void*)vr$228, -1 );
					fb_StrAssign( (void*)&TMP$2159$5, -1, (void*)vr$231, -1, 0 );
					HWRITEASM64( &TMP$2159$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2159$5 );
					__builtin_memset( &TMP$2160$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2160$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2160$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2160$5 );
				}
				label$1762:;
				label$1745:;
			}
		}
		goto label$1738;
		label$1741:;
		if( TMP$2153$2 != 1 ) goto label$1763;
		label$1764:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1766;
			{
				int32 TMP$2161$4;
				if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$1767;
				int32 vr$249 = FBGETOPTION( 0 );
				TMP$2161$4 = -(vr$249 == 2);
				goto label$3103;
				label$1767:;
				TMP$2161$4 = 0;
				label$3103:;
				if( TMP$2161$4 == 0 ) goto label$1769;
				{
					FBSTRING TMP$2162$5;
					uint8* vr$252 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$2162$5, 0, 12 );
					FBSTRING* vr$255 = fb_StrConcat( &TMP$2162$5, (void*)vr$252, 0, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$255, -1, 0 );
				}
				goto label$1768;
				label$1769:;
				{
					FBSTRING TMP$2163$5;
					FBSTRING TMP$2164$5;
					FBSTRING TMP$2165$5;
					FBSTRING* vr$258 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					uint8* vr$260 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$2163$5, 0, 12 );
					FBSTRING* vr$263 = fb_StrConcat( &TMP$2163$5, (void*)vr$260, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2164$5, 0, 12 );
					FBSTRING* vr$266 = fb_StrConcat( &TMP$2164$5, (void*)vr$263, -1, (void*)vr$258, -1 );
					__builtin_memset( &TMP$2165$5, 0, 12 );
					FBSTRING* vr$269 = fb_StrConcat( &TMP$2165$5, (void*)vr$266, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$269, -1, 0 );
				}
				label$1768:;
			}
			goto label$1765;
			label$1766:;
			{
				FBSTRING TMP$2166$4;
				FBSTRING* vr$272 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2166$4, 0, 12 );
				FBSTRING* vr$275 = fb_StrConcat( &TMP$2166$4, (void*)vr$272, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$275, -1, 0 );
			}
			label$1765:;
		}
		goto label$1738;
		label$1763:;
		if( TMP$2153$2 != 3 ) goto label$1770;
		label$1771:;
		{
			FBSTRING TMP$2167$3;
			FBSTRING TMP$2168$3;
			FBSTRING TMP$2169$3;
			int32 vr$279 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
			FBSTRING* vr$282 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			__builtin_memset( &TMP$2167$3, 0, 12 );
			FBSTRING* vr$285 = fb_StrConcat( &TMP$2167$3, (void*)vr$282, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$2168$3, 0, 12 );
			FBSTRING* vr$288 = fb_StrConcat( &TMP$2168$3, (void*)vr$285, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$279 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2169$3, 0, 12 );
			FBSTRING* vr$291 = fb_StrConcat( &TMP$2169$3, (void*)vr$288, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$291, -1, 0 );
		}
		goto label$1738;
		label$1770:;
		if( TMP$2153$2 != 5 ) goto label$1772;
		label$1773:;
		{
			FBSTRING TMP$2170$3;
			FBSTRING TMP$2171$3;
			FBSTRING TMP$2172$3;
			int32 TMP$2173$3;
			int32 TMP$2174$3;
			FBSTRING* vr$294 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			uint8* vr$296 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$2170$3, 0, 12 );
			FBSTRING* vr$299 = fb_StrConcat( &TMP$2170$3, (void*)vr$296, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2171$3, 0, 12 );
			FBSTRING* vr$302 = fb_StrConcat( &TMP$2171$3, (void*)vr$299, -1, (void*)vr$294, -1 );
			__builtin_memset( &TMP$2172$3, 0, 12 );
			FBSTRING* vr$305 = fb_StrConcat( &TMP$2172$3, (void*)vr$302, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$305, -1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$1774;
			TMP$2173$3 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
			goto label$3104;
			label$1774:;
			TMP$2173$3 = 0;
			label$3104:;
			if( TMP$2173$3 == 0 ) goto label$1775;
			int32 vr$311 = FBGETOPTION( 0 );
			TMP$2174$3 = -(vr$311 == 2);
			goto label$3105;
			label$1775:;
			TMP$2174$3 = 0;
			label$3105:;
			if( TMP$2174$3 == 0 ) goto label$1777;
			{
				FBSTRING TMP$2176$4;
				FBSTRING TMP$2177$4;
				FBSTRING TMP$2178$4;
				FBSTRING TMP$2179$4;
				FBSTRING TMP$2180$4;
				FBSTRING TMP$2181$4;
				__builtin_memset( &TMP$2178$4, 0, 12 );
				FBSTRING* vr$314 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$316 = fb_StrInstr( 1, (FBSTRING*)&OP2$1, (FBSTRING*)vr$314 );
				FBSTRING* vr$319 = fb_LEFT( (FBSTRING*)&OP2$1, vr$316 + -1 );
				__builtin_memset( &TMP$2176$4, 0, 12 );
				FBSTRING* vr$322 = fb_StrConcat( &TMP$2176$4, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$319, -1 );
				__builtin_memset( &TMP$2177$4, 0, 12 );
				FBSTRING* vr$325 = fb_StrConcat( &TMP$2177$4, (void*)vr$322, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2178$4, -1, (void*)vr$325, -1, 0 );
				HWRITEASM64( &TMP$2178$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2178$4 );
				__builtin_memset( &TMP$2181$4, 0, 12 );
				__builtin_memset( &TMP$2179$4, 0, 12 );
				FBSTRING* vr$333 = fb_StrConcat( &TMP$2179$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2180$4, 0, 12 );
				FBSTRING* vr$336 = fb_StrConcat( &TMP$2180$4, (void*)vr$333, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2181$4, -1, (void*)vr$336, -1, 0 );
				HWRITEASM64( &TMP$2181$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2181$4 );
			}
			goto label$1776;
			label$1777:;
			{
				FBSTRING TMP$2182$4;
				FBSTRING TMP$2183$4;
				FBSTRING TMP$2184$4;
				FBSTRING TMP$2185$4;
				__builtin_memset( &TMP$2185$4, 0, 12 );
				__builtin_memset( &TMP$2182$4, 0, 12 );
				FBSTRING* vr$345 = fb_StrConcat( &TMP$2182$4, (void*)"lea ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2183$4, 0, 12 );
				FBSTRING* vr$348 = fb_StrConcat( &TMP$2183$4, (void*)vr$345, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2184$4, 0, 12 );
				FBSTRING* vr$351 = fb_StrConcat( &TMP$2184$4, (void*)vr$348, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2185$4, -1, (void*)vr$351, -1, 0 );
				HWRITEASM64( &TMP$2185$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2185$4 );
			}
			label$1776:;
			fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
			fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
			fb_StrDelete( (FBSTRING*)&OP4$1 );
			fb_StrDelete( (FBSTRING*)&OP3$1 );
			fb_StrDelete( (FBSTRING*)&OP2$1 );
			fb_StrDelete( (FBSTRING*)&OP1$1 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			fb_StrDelete( (FBSTRING*)&LNAME2$1 );
			fb_StrDelete( (FBSTRING*)&LNAME1$1 );
			goto label$1662;
		}
		goto label$1738;
		label$1772:;
		if( TMP$2153$2 != 0 ) goto label$1778;
		label$1779:;
		{
			int32 TMP$2186$3;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1780;
			TMP$2186$3 = 24;
			goto label$3106;
			label$1780:;
			TMP$2186$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3106:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2186$3 * 28)) != 1 ) goto label$1782;
			{
				FBSTRING* vr$372 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$372, -1, 0 );
			}
			goto label$1781;
			label$1782:;
			{
				FBSTRING* vr$375 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$375, -1, 0 );
			}
			label$1781:;
		}
		goto label$1738;
		label$1778:;
		{
			FBSTRING TMP$2187$3;
			FBSTRING TMP$2190$3;
			FBSTRING TMP$2191$3;
			__builtin_memset( &TMP$2187$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2187$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2187$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2187$3 );
			__builtin_memset( &TMP$2190$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2190$3, -1, (void*)"FOUND AN ERROR : store 02 ??", 29, 0 );
			HWRITEASM64( &TMP$2190$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2190$3 );
			__builtin_memset( &TMP$2191$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2191$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2191$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2191$3 );
		}
		label$1783:;
		label$1738:;
	}
	int32 vr$390 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
	if( vr$390 == 0 ) goto label$1785;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1785:;
	}
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1786;
	TMP$2192$1 = 24;
	goto label$3107;
	label$1786:;
	TMP$2192$1 = V1DTYPE$1 & 31;
	label$3107:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2192$1 * 28)) != 1 ) goto label$1788;
	{
		int32 TMP$2193$2;
		if( (V2DTYPE$1 & 480) == 0 ) goto label$1789;
		TMP$2193$2 = 24;
		goto label$3108;
		label$1789:;
		TMP$2193$2 = V2DTYPE$1 & 31;
		label$3108:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2193$2 * 28)) != 1 ) goto label$1791;
		{
			if( V1DTYPE$1 != 16 ) goto label$1793;
			{
				FBSTRING TMP$2198$4;
				FBSTRING TMP$2199$4;
				FBSTRING TMP$2200$4;
				FBSTRING TMP$2201$4;
				FBSTRING TMP$2202$4;
				if( *(int32*)V2$1 != 4 ) goto label$1795;
				{
					FBSTRING TMP$2194$5;
					FBSTRING TMP$2195$5;
					__builtin_memset( &TMP$2195$5, 0, 12 );
					__builtin_memset( &TMP$2194$5, 0, 12 );
					FBSTRING* vr$403 = fb_StrConcat( &TMP$2194$5, (void*)"movd xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2195$5, -1, (void*)vr$403, -1, 0 );
					HWRITEASM64( &TMP$2195$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2195$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"xmm0", 5, 0 );
				}
				label$1795:;
				label$1794:;
				__builtin_memset( &TMP$2199$4, 0, 12 );
				__builtin_memset( &TMP$2198$4, 0, 12 );
				FBSTRING* vr$412 = fb_StrConcat( &TMP$2198$4, (void*)"cvtss2sd xmm0, ", 16, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2199$4, -1, (void*)vr$412, -1, 0 );
				HWRITEASM64( &TMP$2199$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2199$4 );
				__builtin_memset( &TMP$2202$4, 0, 12 );
				__builtin_memset( &TMP$2200$4, 0, 12 );
				FBSTRING* vr$420 = fb_StrConcat( &TMP$2200$4, (void*)"movq ", 6, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2201$4, 0, 12 );
				FBSTRING* vr$423 = fb_StrConcat( &TMP$2201$4, (void*)vr$420, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$2202$4, -1, (void*)vr$423, -1, 0 );
				HWRITEASM64( &TMP$2202$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2202$4 );
			}
			goto label$1792;
			label$1793:;
			{
				FBSTRING TMP$2208$4;
				FBSTRING TMP$2209$4;
				FBSTRING TMP$2210$4;
				FBSTRING TMP$2211$4;
				FBSTRING TMP$2212$4;
				if( *(int32*)V2$1 != 4 ) goto label$1797;
				{
					FBSTRING TMP$2204$5;
					FBSTRING TMP$2205$5;
					__builtin_memset( &TMP$2205$5, 0, 12 );
					__builtin_memset( &TMP$2204$5, 0, 12 );
					FBSTRING* vr$432 = fb_StrConcat( &TMP$2204$5, (void*)"movq xmm1, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2205$5, -1, (void*)vr$432, -1, 0 );
					HWRITEASM64( &TMP$2205$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2205$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"xmm1", 5, 0 );
				}
				label$1797:;
				label$1796:;
				__builtin_memset( &TMP$2209$4, 0, 12 );
				__builtin_memset( &TMP$2208$4, 0, 12 );
				FBSTRING* vr$441 = fb_StrConcat( &TMP$2208$4, (void*)"cvtsd2ss xmm0, ", 16, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2209$4, -1, (void*)vr$441, -1, 0 );
				HWRITEASM64( &TMP$2209$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2209$4 );
				__builtin_memset( &TMP$2212$4, 0, 12 );
				__builtin_memset( &TMP$2210$4, 0, 12 );
				FBSTRING* vr$449 = fb_StrConcat( &TMP$2210$4, (void*)"movd ", 6, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2211$4, 0, 12 );
				FBSTRING* vr$452 = fb_StrConcat( &TMP$2211$4, (void*)vr$449, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$2212$4, -1, (void*)vr$452, -1, 0 );
				HWRITEASM64( &TMP$2212$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2212$4 );
			}
			label$1792:;
		}
		goto label$1790;
		label$1791:;
		{
			FBSTRING TMP$2214$3;
			__builtin_memset( &TMP$2214$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2214$3, -1, (void*)"pxor xmm0,xmm0", 15, 0 );
			HWRITEASM64( &TMP$2214$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2214$3 );
			{
				if( V2DTYPE$1 != 14 ) goto label$1799;
				label$1800:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1802;
					{
						FBSTRING TMP$2215$6;
						FBSTRING TMP$2216$6;
						FBSTRING TMP$2218$6;
						FBSTRING TMP$2220$6;
						FBSTRING TMP$2221$6;
						FBSTRING TMP$2223$6;
						FBSTRING TMP$2224$6;
						FBSTRING TMP$2225$6;
						FBSTRING TMP$2226$6;
						FBSTRING TMP$2227$6;
						FBSTRING TMP$2228$6;
						FBSTRING TMP$2229$6;
						FBSTRING TMP$2230$6;
						FBSTRING TMP$2231$6;
						FBSTRING TMP$2232$6;
						FBSTRING TMP$2234$6;
						FBSTRING TMP$2235$6;
						FBSTRING TMP$2236$6;
						FBSTRING TMP$2237$6;
						FBSTRING TMP$2239$6;
						FBSTRING TMP$2240$6;
						FBSTRING TMP$2242$6;
						FBSTRING TMP$2243$6;
						FBSTRING TMP$2244$6;
						FBSTRING TMP$2245$6;
						FBSTRING TMP$2246$6;
						FBSTRING TMP$2247$6;
						__builtin_memset( &TMP$2216$6, 0, 12 );
						__builtin_memset( &TMP$2215$6, 0, 12 );
						FBSTRING* vr$464 = fb_StrConcat( &TMP$2215$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2216$6, -1, (void*)vr$464, -1, 0 );
						HWRITEASM64( &TMP$2216$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2216$6 );
						__builtin_memset( &TMP$2218$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2218$6, -1, (void*)"test  rax, rax", 15, 0 );
						HWRITEASM64( &TMP$2218$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2218$6 );
						uint8* vr$472 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$472, 0, 0 );
						__builtin_memset( &TMP$2221$6, 0, 12 );
						__builtin_memset( &TMP$2220$6, 0, 12 );
						FBSTRING* vr$478 = fb_StrConcat( &TMP$2220$6, (void*)"js ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$2221$6, -1, (void*)vr$478, -1, 0 );
						HWRITEASM64( &TMP$2221$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2221$6 );
						__builtin_memset( &TMP$2223$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2223$6, -1, (void*)"cvtsi2sd xmm0, rax", 19, 0 );
						HWRITEASM64( &TMP$2223$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2223$6 );
						uint8* vr$486 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$486, 0, 0 );
						__builtin_memset( &TMP$2225$6, 0, 12 );
						__builtin_memset( &TMP$2224$6, 0, 12 );
						FBSTRING* vr$492 = fb_StrConcat( &TMP$2224$6, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
						fb_StrAssign( (void*)&TMP$2225$6, -1, (void*)vr$492, -1, 0 );
						HWRITEASM64( &TMP$2225$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2225$6 );
						__builtin_memset( &TMP$2227$6, 0, 12 );
						__builtin_memset( &TMP$2226$6, 0, 12 );
						FBSTRING* vr$500 = fb_StrConcat( &TMP$2226$6, (void*)&LNAME1$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2227$6, -1, (void*)vr$500, -1, 0 );
						HWRITEASM64( &TMP$2227$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2227$6 );
						int32 vr$504 = REG_FINDFREE( 999999, -1 );
						REG$1 = vr$504;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
						*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$2230$6, 0, 12 );
						__builtin_memset( &TMP$2228$6, 0, 12 );
						FBSTRING* vr$512 = fb_StrConcat( &TMP$2228$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2229$6, 0, 12 );
						FBSTRING* vr$515 = fb_StrConcat( &TMP$2229$6, (void*)vr$512, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2230$6, -1, (void*)vr$515, -1, 0 );
						HWRITEASM64( &TMP$2230$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2230$6 );
						__builtin_memset( &TMP$2232$6, 0, 12 );
						__builtin_memset( &TMP$2231$6, 0, 12 );
						FBSTRING* vr$523 = fb_StrConcat( &TMP$2231$6, (void*)"shr ", 5, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2232$6, -1, (void*)vr$523, -1, 0 );
						HWRITEASM64( &TMP$2232$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2232$6 );
						__builtin_memset( &TMP$2234$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2234$6, -1, (void*)"and eax, 1", 11, 0 );
						HWRITEASM64( &TMP$2234$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2234$6 );
						__builtin_memset( &TMP$2237$6, 0, 12 );
						__builtin_memset( &TMP$2235$6, 0, 12 );
						FBSTRING* vr$535 = fb_StrConcat( &TMP$2235$6, (void*)"or ", 4, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2236$6, 0, 12 );
						FBSTRING* vr$538 = fb_StrConcat( &TMP$2236$6, (void*)vr$535, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2237$6, -1, (void*)vr$538, -1, 0 );
						HWRITEASM64( &TMP$2237$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2237$6 );
						__builtin_memset( &TMP$2240$6, 0, 12 );
						__builtin_memset( &TMP$2239$6, 0, 12 );
						FBSTRING* vr$546 = fb_StrConcat( &TMP$2239$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2240$6, -1, (void*)vr$546, -1, 0 );
						HWRITEASM64( &TMP$2240$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2240$6 );
						__builtin_memset( &TMP$2242$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2242$6, -1, (void*)"addsd xmm0, xmm0", 17, 0 );
						HWRITEASM64( &TMP$2242$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2242$6 );
						__builtin_memset( &TMP$2244$6, 0, 12 );
						__builtin_memset( &TMP$2243$6, 0, 12 );
						FBSTRING* vr$558 = fb_StrConcat( &TMP$2243$6, (void*)&LNAME2$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2244$6, -1, (void*)vr$558, -1, 0 );
						HWRITEASM64( &TMP$2244$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2244$6 );
						__builtin_memset( &TMP$2247$6, 0, 12 );
						__builtin_memset( &TMP$2245$6, 0, 12 );
						FBSTRING* vr$566 = fb_StrConcat( &TMP$2245$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2246$6, 0, 12 );
						FBSTRING* vr$569 = fb_StrConcat( &TMP$2246$6, (void*)vr$566, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2247$6, -1, (void*)vr$569, -1, 0 );
						HWRITEASM64( &TMP$2247$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2247$6 );
					}
					goto label$1801;
					label$1802:;
					{
						FBSTRING TMP$2248$6;
						FBSTRING TMP$2249$6;
						FBSTRING TMP$2251$6;
						FBSTRING TMP$2252$6;
						FBSTRING TMP$2253$6;
						FBSTRING TMP$2255$6;
						FBSTRING TMP$2256$6;
						FBSTRING TMP$2257$6;
						FBSTRING TMP$2258$6;
						FBSTRING TMP$2259$6;
						FBSTRING TMP$2260$6;
						FBSTRING TMP$2261$6;
						FBSTRING TMP$2262$6;
						FBSTRING TMP$2263$6;
						FBSTRING TMP$2264$6;
						FBSTRING TMP$2265$6;
						FBSTRING TMP$2266$6;
						FBSTRING TMP$2267$6;
						FBSTRING TMP$2268$6;
						FBSTRING TMP$2270$6;
						FBSTRING TMP$2271$6;
						FBSTRING TMP$2273$6;
						FBSTRING TMP$2274$6;
						FBSTRING TMP$2275$6;
						FBSTRING TMP$2276$6;
						FBSTRING TMP$2277$6;
						FBSTRING TMP$2278$6;
						__builtin_memset( &TMP$2249$6, 0, 12 );
						__builtin_memset( &TMP$2248$6, 0, 12 );
						FBSTRING* vr$577 = fb_StrConcat( &TMP$2248$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2249$6, -1, (void*)vr$577, -1, 0 );
						HWRITEASM64( &TMP$2249$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2249$6 );
						__builtin_memset( &TMP$2251$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2251$6, -1, (void*)"test rax, rax", 14, 0 );
						HWRITEASM64( &TMP$2251$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2251$6 );
						uint8* vr$585 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$585, 0, 0 );
						__builtin_memset( &TMP$2253$6, 0, 12 );
						__builtin_memset( &TMP$2252$6, 0, 12 );
						FBSTRING* vr$591 = fb_StrConcat( &TMP$2252$6, (void*)"js ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$2253$6, -1, (void*)vr$591, -1, 0 );
						HWRITEASM64( &TMP$2253$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2253$6 );
						__builtin_memset( &TMP$2255$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2255$6, -1, (void*)"cvtsi2ss  xmm0, rax", 20, 0 );
						HWRITEASM64( &TMP$2255$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2255$6 );
						uint8* vr$599 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$599, 0, 0 );
						__builtin_memset( &TMP$2257$6, 0, 12 );
						__builtin_memset( &TMP$2256$6, 0, 12 );
						FBSTRING* vr$605 = fb_StrConcat( &TMP$2256$6, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
						fb_StrAssign( (void*)&TMP$2257$6, -1, (void*)vr$605, -1, 0 );
						HWRITEASM64( &TMP$2257$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2257$6 );
						__builtin_memset( &TMP$2259$6, 0, 12 );
						__builtin_memset( &TMP$2258$6, 0, 12 );
						FBSTRING* vr$613 = fb_StrConcat( &TMP$2258$6, (void*)&LNAME1$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2259$6, -1, (void*)vr$613, -1, 0 );
						HWRITEASM64( &TMP$2259$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2259$6 );
						int32 vr$617 = REG_FINDFREE( 999999, -1 );
						REG$1 = vr$617;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
						*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$2262$6, 0, 12 );
						__builtin_memset( &TMP$2260$6, 0, 12 );
						FBSTRING* vr$625 = fb_StrConcat( &TMP$2260$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2261$6, 0, 12 );
						FBSTRING* vr$628 = fb_StrConcat( &TMP$2261$6, (void*)vr$625, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2262$6, -1, (void*)vr$628, -1, 0 );
						HWRITEASM64( &TMP$2262$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2262$6 );
						__builtin_memset( &TMP$2264$6, 0, 12 );
						__builtin_memset( &TMP$2263$6, 0, 12 );
						FBSTRING* vr$636 = fb_StrConcat( &TMP$2263$6, (void*)"shr ", 5, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2264$6, -1, (void*)vr$636, -1, 0 );
						HWRITEASM64( &TMP$2264$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2264$6 );
						__builtin_memset( &TMP$2265$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2265$6, -1, (void*)"and eax, 1", 11, 0 );
						HWRITEASM64( &TMP$2265$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2265$6 );
						__builtin_memset( &TMP$2268$6, 0, 12 );
						__builtin_memset( &TMP$2266$6, 0, 12 );
						FBSTRING* vr$648 = fb_StrConcat( &TMP$2266$6, (void*)"or ", 4, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2267$6, 0, 12 );
						FBSTRING* vr$651 = fb_StrConcat( &TMP$2267$6, (void*)vr$648, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2268$6, -1, (void*)vr$651, -1, 0 );
						HWRITEASM64( &TMP$2268$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2268$6 );
						__builtin_memset( &TMP$2271$6, 0, 12 );
						__builtin_memset( &TMP$2270$6, 0, 12 );
						FBSTRING* vr$659 = fb_StrConcat( &TMP$2270$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2271$6, -1, (void*)vr$659, -1, 0 );
						HWRITEASM64( &TMP$2271$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2271$6 );
						__builtin_memset( &TMP$2273$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2273$6, -1, (void*)"addss xmm0, xmm0", 17, 0 );
						HWRITEASM64( &TMP$2273$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2273$6 );
						__builtin_memset( &TMP$2275$6, 0, 12 );
						__builtin_memset( &TMP$2274$6, 0, 12 );
						FBSTRING* vr$671 = fb_StrConcat( &TMP$2274$6, (void*)&LNAME2$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2275$6, -1, (void*)vr$671, -1, 0 );
						HWRITEASM64( &TMP$2275$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2275$6 );
						__builtin_memset( &TMP$2278$6, 0, 12 );
						__builtin_memset( &TMP$2276$6, 0, 12 );
						FBSTRING* vr$679 = fb_StrConcat( &TMP$2276$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2277$6, 0, 12 );
						FBSTRING* vr$682 = fb_StrConcat( &TMP$2277$6, (void*)vr$679, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2278$6, -1, (void*)vr$682, -1, 0 );
						HWRITEASM64( &TMP$2278$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2278$6 );
					}
					label$1801:;
				}
				goto label$1798;
				label$1799:;
				if( V2DTYPE$1 != 13 ) goto label$1803;
				label$1804:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1806;
					{
						FBSTRING TMP$2279$6;
						FBSTRING TMP$2280$6;
						FBSTRING TMP$2281$6;
						FBSTRING TMP$2282$6;
						FBSTRING TMP$2283$6;
						FBSTRING TMP$2284$6;
						__builtin_memset( &TMP$2281$6, 0, 12 );
						__builtin_memset( &TMP$2279$6, 0, 12 );
						FBSTRING* vr$691 = fb_StrConcat( &TMP$2279$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2280$6, 0, 12 );
						FBSTRING* vr$694 = fb_StrConcat( &TMP$2280$6, (void*)vr$691, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2281$6, -1, (void*)vr$694, -1, 0 );
						HWRITEASM64( &TMP$2281$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2281$6 );
						__builtin_memset( &TMP$2284$6, 0, 12 );
						__builtin_memset( &TMP$2282$6, 0, 12 );
						FBSTRING* vr$702 = fb_StrConcat( &TMP$2282$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2283$6, 0, 12 );
						FBSTRING* vr$705 = fb_StrConcat( &TMP$2283$6, (void*)vr$702, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2284$6, -1, (void*)vr$705, -1, 0 );
						HWRITEASM64( &TMP$2284$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2284$6 );
					}
					goto label$1805;
					label$1806:;
					{
						FBSTRING TMP$2285$6;
						FBSTRING TMP$2286$6;
						FBSTRING TMP$2287$6;
						FBSTRING TMP$2288$6;
						FBSTRING TMP$2289$6;
						FBSTRING TMP$2290$6;
						__builtin_memset( &TMP$2287$6, 0, 12 );
						__builtin_memset( &TMP$2285$6, 0, 12 );
						FBSTRING* vr$714 = fb_StrConcat( &TMP$2285$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2286$6, 0, 12 );
						FBSTRING* vr$717 = fb_StrConcat( &TMP$2286$6, (void*)vr$714, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2287$6, -1, (void*)vr$717, -1, 0 );
						HWRITEASM64( &TMP$2287$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2287$6 );
						__builtin_memset( &TMP$2290$6, 0, 12 );
						__builtin_memset( &TMP$2288$6, 0, 12 );
						FBSTRING* vr$725 = fb_StrConcat( &TMP$2288$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2289$6, 0, 12 );
						FBSTRING* vr$728 = fb_StrConcat( &TMP$2289$6, (void*)vr$725, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2290$6, -1, (void*)vr$728, -1, 0 );
						HWRITEASM64( &TMP$2290$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2290$6 );
					}
					label$1805:;
				}
				goto label$1798;
				label$1803:;
				if( V2DTYPE$1 == 11 ) goto label$1808;
				label$1809:;
				if( V2DTYPE$1 != 12 ) goto label$1807;
				label$1808:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1811;
					{
						FBSTRING TMP$2291$6;
						FBSTRING TMP$2292$6;
						FBSTRING TMP$2293$6;
						FBSTRING TMP$2294$6;
						FBSTRING TMP$2295$6;
						FBSTRING TMP$2296$6;
						__builtin_memset( &TMP$2293$6, 0, 12 );
						__builtin_memset( &TMP$2291$6, 0, 12 );
						FBSTRING* vr$737 = fb_StrConcat( &TMP$2291$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2292$6, 0, 12 );
						FBSTRING* vr$740 = fb_StrConcat( &TMP$2292$6, (void*)vr$737, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2293$6, -1, (void*)vr$740, -1, 0 );
						HWRITEASM64( &TMP$2293$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2293$6 );
						__builtin_memset( &TMP$2296$6, 0, 12 );
						__builtin_memset( &TMP$2294$6, 0, 12 );
						FBSTRING* vr$748 = fb_StrConcat( &TMP$2294$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2295$6, 0, 12 );
						FBSTRING* vr$751 = fb_StrConcat( &TMP$2295$6, (void*)vr$748, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2296$6, -1, (void*)vr$751, -1, 0 );
						HWRITEASM64( &TMP$2296$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2296$6 );
					}
					goto label$1810;
					label$1811:;
					{
						FBSTRING TMP$2297$6;
						FBSTRING TMP$2298$6;
						FBSTRING TMP$2299$6;
						FBSTRING TMP$2300$6;
						FBSTRING TMP$2301$6;
						FBSTRING TMP$2302$6;
						__builtin_memset( &TMP$2299$6, 0, 12 );
						__builtin_memset( &TMP$2297$6, 0, 12 );
						FBSTRING* vr$760 = fb_StrConcat( &TMP$2297$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2298$6, 0, 12 );
						FBSTRING* vr$763 = fb_StrConcat( &TMP$2298$6, (void*)vr$760, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2299$6, -1, (void*)vr$763, -1, 0 );
						HWRITEASM64( &TMP$2299$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2299$6 );
						__builtin_memset( &TMP$2302$6, 0, 12 );
						__builtin_memset( &TMP$2300$6, 0, 12 );
						FBSTRING* vr$771 = fb_StrConcat( &TMP$2300$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2301$6, 0, 12 );
						FBSTRING* vr$774 = fb_StrConcat( &TMP$2301$6, (void*)vr$771, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2302$6, -1, (void*)vr$774, -1, 0 );
						HWRITEASM64( &TMP$2302$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2302$6 );
					}
					label$1810:;
				}
				goto label$1798;
				label$1807:;
				if( V2DTYPE$1 == 2 ) goto label$1813;
				label$1814:;
				if( V2DTYPE$1 == 5 ) goto label$1813;
				label$1815:;
				if( V2DTYPE$1 == 3 ) goto label$1813;
				label$1816:;
				if( V2DTYPE$1 == 6 ) goto label$1813;
				label$1817:;
				if( V2DTYPE$1 == 1 ) goto label$1813;
				label$1818:;
				if( V2DTYPE$1 != 4 ) goto label$1812;
				label$1813:;
				{
					if( (-(V2DTYPE$1 == 2) | -(V2DTYPE$1 == 5)) == 0 ) goto label$1820;
					{
						FBSTRING TMP$2304$6;
						FBSTRING TMP$2305$6;
						FBSTRING TMP$2306$6;
						__builtin_memset( &TMP$2306$6, 0, 12 );
						__builtin_memset( &TMP$2304$6, 0, 12 );
						FBSTRING* vr$786 = fb_StrConcat( &TMP$2304$6, (void*)"movsx eax, ", 12, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2305$6, 0, 12 );
						FBSTRING* vr$789 = fb_StrConcat( &TMP$2305$6, (void*)vr$786, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2306$6, -1, (void*)vr$789, -1, 0 );
						HWRITEASM64( &TMP$2306$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2306$6 );
					}
					goto label$1819;
					label$1820:;
					if( V2DTYPE$1 != 1 ) goto label$1821;
					{
						FBSTRING TMP$2307$6;
						FBSTRING TMP$2308$6;
						FBSTRING TMP$2309$6;
						FBSTRING TMP$2310$6;
						FBSTRING TMP$2312$6;
						FBSTRING TMP$2314$6;
						FBSTRING TMP$2316$6;
						__builtin_memset( &TMP$2310$6, 0, 12 );
						__builtin_memset( &TMP$2307$6, 0, 12 );
						FBSTRING* vr$798 = fb_StrConcat( &TMP$2307$6, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2308$6, 0, 12 );
						FBSTRING* vr$801 = fb_StrConcat( &TMP$2308$6, (void*)vr$798, -1, (void*)&OP2$1, -1 );
						__builtin_memset( &TMP$2309$6, 0, 12 );
						FBSTRING* vr$804 = fb_StrConcat( &TMP$2309$6, (void*)vr$801, -1, (void*)", 0", 4 );
						fb_StrAssign( (void*)&TMP$2310$6, -1, (void*)vr$804, -1, 0 );
						HWRITEASM64( &TMP$2310$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2310$6 );
						__builtin_memset( &TMP$2312$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2312$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2312$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2312$6 );
						__builtin_memset( &TMP$2314$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2314$6, -1, (void*)"neg al", 7, 0 );
						HWRITEASM64( &TMP$2314$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2314$6 );
						__builtin_memset( &TMP$2316$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2316$6, -1, (void*)"movsx eax, al", 14, 0 );
						HWRITEASM64( &TMP$2316$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2316$6 );
					}
					goto label$1819;
					label$1821:;
					{
						FBSTRING TMP$2318$6;
						FBSTRING TMP$2319$6;
						FBSTRING TMP$2320$6;
						__builtin_memset( &TMP$2320$6, 0, 12 );
						__builtin_memset( &TMP$2318$6, 0, 12 );
						FBSTRING* vr$825 = fb_StrConcat( &TMP$2318$6, (void*)"movzx eax, ", 12, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2319$6, 0, 12 );
						FBSTRING* vr$828 = fb_StrConcat( &TMP$2319$6, (void*)vr$825, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2320$6, -1, (void*)vr$828, -1, 0 );
						HWRITEASM64( &TMP$2320$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2320$6 );
					}
					label$1819:;
					if( V1DTYPE$1 != 16 ) goto label$1823;
					{
						FBSTRING TMP$2322$6;
						FBSTRING TMP$2323$6;
						FBSTRING TMP$2324$6;
						FBSTRING TMP$2325$6;
						__builtin_memset( &TMP$2322$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2322$6, -1, (void*)"cvtsi2sd xmm0, eax", 19, 0 );
						HWRITEASM64( &TMP$2322$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2322$6 );
						__builtin_memset( &TMP$2325$6, 0, 12 );
						__builtin_memset( &TMP$2323$6, 0, 12 );
						FBSTRING* vr$840 = fb_StrConcat( &TMP$2323$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2324$6, 0, 12 );
						FBSTRING* vr$843 = fb_StrConcat( &TMP$2324$6, (void*)vr$840, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2325$6, -1, (void*)vr$843, -1, 0 );
						HWRITEASM64( &TMP$2325$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2325$6 );
					}
					goto label$1822;
					label$1823:;
					{
						FBSTRING TMP$2327$6;
						FBSTRING TMP$2328$6;
						FBSTRING TMP$2329$6;
						FBSTRING TMP$2330$6;
						__builtin_memset( &TMP$2327$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2327$6, -1, (void*)"cvtsi2ss xmm0, eax", 19, 0 );
						HWRITEASM64( &TMP$2327$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2327$6 );
						__builtin_memset( &TMP$2330$6, 0, 12 );
						__builtin_memset( &TMP$2328$6, 0, 12 );
						FBSTRING* vr$855 = fb_StrConcat( &TMP$2328$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2329$6, 0, 12 );
						FBSTRING* vr$858 = fb_StrConcat( &TMP$2329$6, (void*)vr$855, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2330$6, -1, (void*)vr$858, -1, 0 );
						HWRITEASM64( &TMP$2330$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2330$6 );
					}
					label$1822:;
				}
				goto label$1798;
				label$1812:;
				{
					FBSTRING TMP$2331$5;
					FBSTRING TMP$2334$5;
					FBSTRING TMP$2335$5;
					__builtin_memset( &TMP$2331$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2331$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2331$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2331$5 );
					__builtin_memset( &TMP$2334$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2334$5, -1, (void*)"FOUND AN ERROR : Converting datatype not handled 04", 52, 0 );
					HWRITEASM64( &TMP$2334$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2334$5 );
					__builtin_memset( &TMP$2335$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2335$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2335$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2335$5 );
				}
				label$1824:;
				label$1798:;
			}
		}
		label$1790:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1788:;
	label$1787:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1825;
	TMP$2336$1 = 24;
	goto label$3109;
	label$1825:;
	TMP$2336$1 = V2DTYPE$1 & 31;
	label$3109:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1826;
	TMP$2337$1 = 24;
	goto label$3110;
	label$1826:;
	TMP$2337$1 = V1DTYPE$1 & 31;
	label$3110:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2336$1 * 28)) == 1) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2337$1 * 28)) == 0)) == 0 ) goto label$1828;
	{
		if( V2DTYPE$1 != 16 ) goto label$1830;
		{
			if( V1DTYPE$1 != 14 ) goto label$1832;
			{
				FBSTRING TMP$2339$4;
				FBSTRING TMP$2341$4;
				FBSTRING TMP$2342$4;
				FBSTRING TMP$2343$4;
				FBSTRING TMP$2345$4;
				FBSTRING TMP$2347$4;
				FBSTRING TMP$2349$4;
				FBSTRING TMP$2350$4;
				FBSTRING TMP$2351$4;
				FBSTRING TMP$2352$4;
				FBSTRING TMP$2353$4;
				FBSTRING TMP$2354$4;
				FBSTRING TMP$2355$4;
				FBSTRING TMP$2357$4;
				FBSTRING TMP$2359$4;
				FBSTRING TMP$2360$4;
				FBSTRING TMP$2363$4;
				FBSTRING TMP$2364$4;
				FBSTRING TMP$2365$4;
				FBSTRING TMP$2367$4;
				FBSTRING TMP$2368$4;
				FBSTRING TMP$2369$4;
				FBSTRING TMP$2370$4;
				FBSTRING TMP$2371$4;
				FBSTRING TMP$2372$4;
				FBSTRING TMP$2373$4;
				__builtin_memset( &TMP$2339$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2339$4, -1, (void*)"mov rax, 4890909195324358656", 29, 0 );
				HWRITEASM64( &TMP$2339$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2339$4 );
				__builtin_memset( &TMP$2341$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2341$4, -1, (void*)"movq xmm2, rax", 15, 0 );
				HWRITEASM64( &TMP$2341$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2341$4 );
				__builtin_memset( &TMP$2343$4, 0, 12 );
				__builtin_memset( &TMP$2342$4, 0, 12 );
				FBSTRING* vr$904 = fb_StrConcat( &TMP$2342$4, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2343$4, -1, (void*)vr$904, -1, 0 );
				HWRITEASM64( &TMP$2343$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2343$4 );
				__builtin_memset( &TMP$2345$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2345$4, -1, (void*)"movq xmm0, rax", 15, 0 );
				HWRITEASM64( &TMP$2345$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2345$4 );
				HEMITROUNDFLOAT( 16, 14 );
				__builtin_memset( &TMP$2347$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2347$4, -1, (void*)"ucomisd xmm0, xmm2", 19, 0 );
				HWRITEASM64( &TMP$2347$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2347$4 );
				uint8* vr$916 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$916, 0, 0 );
				__builtin_memset( &TMP$2350$4, 0, 12 );
				__builtin_memset( &TMP$2349$4, 0, 12 );
				FBSTRING* vr$922 = fb_StrConcat( &TMP$2349$4, (void*)"jnb ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$2350$4, -1, (void*)vr$922, -1, 0 );
				HWRITEASM64( &TMP$2350$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2350$4 );
				__builtin_memset( &TMP$2351$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2351$4, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2351$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2351$4 );
				uint8* vr$930 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$930, 0, 0 );
				__builtin_memset( &TMP$2353$4, 0, 12 );
				__builtin_memset( &TMP$2352$4, 0, 12 );
				FBSTRING* vr$936 = fb_StrConcat( &TMP$2352$4, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$2353$4, -1, (void*)vr$936, -1, 0 );
				HWRITEASM64( &TMP$2353$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2353$4 );
				__builtin_memset( &TMP$2355$4, 0, 12 );
				__builtin_memset( &TMP$2354$4, 0, 12 );
				FBSTRING* vr$944 = fb_StrConcat( &TMP$2354$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2355$4, -1, (void*)vr$944, -1, 0 );
				HWRITEASM64( &TMP$2355$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2355$4 );
				__builtin_memset( &TMP$2357$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2357$4, -1, (void*)"movsd xmm1, xmm2", 17, 0 );
				HWRITEASM64( &TMP$2357$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2357$4 );
				__builtin_memset( &TMP$2359$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2359$4, -1, (void*)"subsd xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$2359$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2359$4 );
				__builtin_memset( &TMP$2360$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2360$4, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2360$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2360$4 );
				int32 vr$960 = REG_FINDFREE( 999999, -1 );
				REG$1 = vr$960;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2365$4, 0, 12 );
				__builtin_memset( &TMP$2363$4, 0, 12 );
				FBSTRING* vr$968 = fb_StrConcat( &TMP$2363$4, (void*)"movabs ", 8, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2364$4, 0, 12 );
				FBSTRING* vr$971 = fb_StrConcat( &TMP$2364$4, (void*)vr$968, -1, (void*)", -9223372036854775808", 23 );
				fb_StrAssign( (void*)&TMP$2365$4, -1, (void*)vr$971, -1, 0 );
				HWRITEASM64( &TMP$2365$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2365$4 );
				__builtin_memset( &TMP$2368$4, 0, 12 );
				__builtin_memset( &TMP$2367$4, 0, 12 );
				FBSTRING* vr$979 = fb_StrConcat( &TMP$2367$4, (void*)"xor rax,", 9, (void*)&REGTEMPO$1, -1 );
				fb_StrAssign( (void*)&TMP$2368$4, -1, (void*)vr$979, -1, 0 );
				HWRITEASM64( &TMP$2368$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2368$4 );
				__builtin_memset( &TMP$2370$4, 0, 12 );
				__builtin_memset( &TMP$2369$4, 0, 12 );
				FBSTRING* vr$987 = fb_StrConcat( &TMP$2369$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2370$4, -1, (void*)vr$987, -1, 0 );
				HWRITEASM64( &TMP$2370$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2370$4 );
				__builtin_memset( &TMP$2373$4, 0, 12 );
				__builtin_memset( &TMP$2371$4, 0, 12 );
				FBSTRING* vr$995 = fb_StrConcat( &TMP$2371$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2372$4, 0, 12 );
				FBSTRING* vr$998 = fb_StrConcat( &TMP$2372$4, (void*)vr$995, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2373$4, -1, (void*)vr$998, -1, 0 );
				HWRITEASM64( &TMP$2373$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2373$4 );
			}
			goto label$1831;
			label$1832:;
			if( ((((((((-(V1DTYPE$1 == 13) | -(V1DTYPE$1 == 11)) | -(V1DTYPE$1 == 12)) | -(V1DTYPE$1 == 5)) | -(V1DTYPE$1 == 6)) | -(V1DTYPE$1 == 2)) | -(V1DTYPE$1 == 3)) | -(V1DTYPE$1 == 1)) | -(V1DTYPE$1 == 4)) == 0 ) goto label$1833;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1835;
				{
					FBSTRING TMP$2374$5;
					FBSTRING TMP$2375$5;
					__builtin_memset( &TMP$2375$5, 0, 12 );
					__builtin_memset( &TMP$2374$5, 0, 12 );
					FBSTRING* vr$1024 = fb_StrConcat( &TMP$2374$5, (void*)"movq xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2375$5, -1, (void*)vr$1024, -1, 0 );
					HWRITEASM64( &TMP$2375$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2375$5 );
				}
				goto label$1834;
				label$1835:;
				{
					FBSTRING TMP$2376$5;
					FBSTRING TMP$2377$5;
					__builtin_memset( &TMP$2377$5, 0, 12 );
					__builtin_memset( &TMP$2376$5, 0, 12 );
					FBSTRING* vr$1032 = fb_StrConcat( &TMP$2376$5, (void*)"movsd xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2377$5, -1, (void*)vr$1032, -1, 0 );
					HWRITEASM64( &TMP$2377$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2377$5 );
				}
				label$1834:;
				HEMITROUNDFLOAT( 16, -2147483648u );
				if( V1DTYPE$1 != 13 ) goto label$1837;
				{
					FBSTRING TMP$2378$5;
					FBSTRING TMP$2379$5;
					FBSTRING TMP$2380$5;
					__builtin_memset( &TMP$2380$5, 0, 12 );
					__builtin_memset( &TMP$2378$5, 0, 12 );
					FBSTRING* vr$1040 = fb_StrConcat( &TMP$2378$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2379$5, 0, 12 );
					FBSTRING* vr$1043 = fb_StrConcat( &TMP$2379$5, (void*)vr$1040, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$2380$5, -1, (void*)vr$1043, -1, 0 );
					HWRITEASM64( &TMP$2380$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2380$5 );
				}
				goto label$1836;
				label$1837:;
				if( (-(V1DTYPE$1 == 11) | -(V1DTYPE$1 == 12)) == 0 ) goto label$1838;
				{
					FBSTRING TMP$2381$5;
					FBSTRING TMP$2382$5;
					FBSTRING TMP$2383$5;
					__builtin_memset( &TMP$2383$5, 0, 12 );
					__builtin_memset( &TMP$2381$5, 0, 12 );
					FBSTRING* vr$1054 = fb_StrConcat( &TMP$2381$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2382$5, 0, 12 );
					FBSTRING* vr$1057 = fb_StrConcat( &TMP$2382$5, (void*)vr$1054, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$2383$5, -1, (void*)vr$1057, -1, 0 );
					HWRITEASM64( &TMP$2383$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2383$5 );
				}
				goto label$1836;
				label$1838:;
				if( (-(V1DTYPE$1 == 5) | -(V1DTYPE$1 == 6)) == 0 ) goto label$1839;
				{
					FBSTRING TMP$2385$5;
					FBSTRING TMP$2386$5;
					FBSTRING TMP$2387$5;
					__builtin_memset( &TMP$2387$5, 0, 12 );
					__builtin_memset( &TMP$2385$5, 0, 12 );
					FBSTRING* vr$1068 = fb_StrConcat( &TMP$2385$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2386$5, 0, 12 );
					FBSTRING* vr$1071 = fb_StrConcat( &TMP$2386$5, (void*)vr$1068, -1, (void*)", ax", 5 );
					fb_StrAssign( (void*)&TMP$2387$5, -1, (void*)vr$1071, -1, 0 );
					HWRITEASM64( &TMP$2387$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2387$5 );
				}
				goto label$1836;
				label$1839:;
				{
					FBSTRING TMP$2390$5;
					FBSTRING TMP$2391$5;
					FBSTRING TMP$2392$5;
					if( V1DTYPE$1 != 1 ) goto label$1841;
					{
						FBSTRING TMP$2388$6;
						FBSTRING TMP$2389$6;
						__builtin_memset( &TMP$2388$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2388$6, -1, (void*)"cmp rax, 0", 11, 0 );
						HWRITEASM64( &TMP$2388$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2388$6 );
						__builtin_memset( &TMP$2389$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2389$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2389$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2389$6 );
					}
					label$1841:;
					label$1840:;
					__builtin_memset( &TMP$2392$5, 0, 12 );
					__builtin_memset( &TMP$2390$5, 0, 12 );
					FBSTRING* vr$1087 = fb_StrConcat( &TMP$2390$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2391$5, 0, 12 );
					FBSTRING* vr$1090 = fb_StrConcat( &TMP$2391$5, (void*)vr$1087, -1, (void*)", al", 5 );
					fb_StrAssign( (void*)&TMP$2392$5, -1, (void*)vr$1090, -1, 0 );
					HWRITEASM64( &TMP$2392$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2392$5 );
				}
				label$1836:;
			}
			goto label$1831;
			label$1833:;
			{
				FBSTRING TMP$2393$4;
				FBSTRING TMP$2396$4;
				FBSTRING TMP$2397$4;
				__builtin_memset( &TMP$2393$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2393$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2393$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2393$4 );
				__builtin_memset( &TMP$2396$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2396$4, -1, (void*)"FOUND AN ERROR : Converting float to int 01", 44, 0 );
				HWRITEASM64( &TMP$2396$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2396$4 );
				__builtin_memset( &TMP$2397$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2397$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2397$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2397$4 );
			}
			label$1831:;
		}
		goto label$1829;
		label$1830:;
		{
			if( V1DTYPE$1 != 14 ) goto label$1843;
			{
				FBSTRING TMP$2399$4;
				FBSTRING TMP$2400$4;
				FBSTRING TMP$2401$4;
				FBSTRING TMP$2402$4;
				FBSTRING TMP$2404$4;
				FBSTRING TMP$2406$4;
				FBSTRING TMP$2407$4;
				FBSTRING TMP$2408$4;
				FBSTRING TMP$2409$4;
				FBSTRING TMP$2410$4;
				FBSTRING TMP$2411$4;
				FBSTRING TMP$2412$4;
				FBSTRING TMP$2413$4;
				FBSTRING TMP$2415$4;
				FBSTRING TMP$2417$4;
				FBSTRING TMP$2418$4;
				FBSTRING TMP$2419$4;
				FBSTRING TMP$2420$4;
				FBSTRING TMP$2421$4;
				FBSTRING TMP$2422$4;
				FBSTRING TMP$2423$4;
				FBSTRING TMP$2424$4;
				FBSTRING TMP$2425$4;
				FBSTRING TMP$2426$4;
				FBSTRING TMP$2427$4;
				FBSTRING TMP$2428$4;
				__builtin_memset( &TMP$2399$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2399$4, -1, (void*)"mov rax, 1593835520", 20, 0 );
				HWRITEASM64( &TMP$2399$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2399$4 );
				__builtin_memset( &TMP$2400$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2400$4, -1, (void*)"movq xmm2, rax", 15, 0 );
				HWRITEASM64( &TMP$2400$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2400$4 );
				__builtin_memset( &TMP$2402$4, 0, 12 );
				__builtin_memset( &TMP$2401$4, 0, 12 );
				FBSTRING* vr$1118 = fb_StrConcat( &TMP$2401$4, (void*)"mov eax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2402$4, -1, (void*)vr$1118, -1, 0 );
				HWRITEASM64( &TMP$2402$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2402$4 );
				__builtin_memset( &TMP$2404$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2404$4, -1, (void*)"movd xmm0, eax", 15, 0 );
				HWRITEASM64( &TMP$2404$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2404$4 );
				HEMITROUNDFLOAT( 15, 14 );
				__builtin_memset( &TMP$2406$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2406$4, -1, (void*)"ucomiss xmm0, xmm2", 19, 0 );
				HWRITEASM64( &TMP$2406$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2406$4 );
				uint8* vr$1130 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$1130, 0, 0 );
				__builtin_memset( &TMP$2408$4, 0, 12 );
				__builtin_memset( &TMP$2407$4, 0, 12 );
				FBSTRING* vr$1136 = fb_StrConcat( &TMP$2407$4, (void*)"jnb ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$2408$4, -1, (void*)vr$1136, -1, 0 );
				HWRITEASM64( &TMP$2408$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2408$4 );
				__builtin_memset( &TMP$2409$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2409$4, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2409$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2409$4 );
				uint8* vr$1144 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$1144, 0, 0 );
				__builtin_memset( &TMP$2411$4, 0, 12 );
				__builtin_memset( &TMP$2410$4, 0, 12 );
				FBSTRING* vr$1150 = fb_StrConcat( &TMP$2410$4, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$2411$4, -1, (void*)vr$1150, -1, 0 );
				HWRITEASM64( &TMP$2411$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2411$4 );
				__builtin_memset( &TMP$2413$4, 0, 12 );
				__builtin_memset( &TMP$2412$4, 0, 12 );
				FBSTRING* vr$1158 = fb_StrConcat( &TMP$2412$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2413$4, -1, (void*)vr$1158, -1, 0 );
				HWRITEASM64( &TMP$2413$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2413$4 );
				__builtin_memset( &TMP$2415$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2415$4, -1, (void*)"movss xmm1, xmm2", 17, 0 );
				HWRITEASM64( &TMP$2415$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2415$4 );
				__builtin_memset( &TMP$2417$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2417$4, -1, (void*)"subss xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$2417$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2417$4 );
				__builtin_memset( &TMP$2418$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2418$4, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2418$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2418$4 );
				int32 vr$1174 = REG_FINDFREE( 999999, -1 );
				REG$1 = vr$1174;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2421$4, 0, 12 );
				__builtin_memset( &TMP$2419$4, 0, 12 );
				FBSTRING* vr$1182 = fb_StrConcat( &TMP$2419$4, (void*)"movabs ", 8, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2420$4, 0, 12 );
				FBSTRING* vr$1185 = fb_StrConcat( &TMP$2420$4, (void*)vr$1182, -1, (void*)", -9223372036854775808", 23 );
				fb_StrAssign( (void*)&TMP$2421$4, -1, (void*)vr$1185, -1, 0 );
				HWRITEASM64( &TMP$2421$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2421$4 );
				__builtin_memset( &TMP$2423$4, 0, 12 );
				__builtin_memset( &TMP$2422$4, 0, 12 );
				FBSTRING* vr$1193 = fb_StrConcat( &TMP$2422$4, (void*)"xor rax,", 9, (void*)&REGTEMPO$1, -1 );
				fb_StrAssign( (void*)&TMP$2423$4, -1, (void*)vr$1193, -1, 0 );
				HWRITEASM64( &TMP$2423$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2423$4 );
				__builtin_memset( &TMP$2425$4, 0, 12 );
				__builtin_memset( &TMP$2424$4, 0, 12 );
				FBSTRING* vr$1201 = fb_StrConcat( &TMP$2424$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2425$4, -1, (void*)vr$1201, -1, 0 );
				HWRITEASM64( &TMP$2425$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2425$4 );
				__builtin_memset( &TMP$2428$4, 0, 12 );
				__builtin_memset( &TMP$2426$4, 0, 12 );
				FBSTRING* vr$1209 = fb_StrConcat( &TMP$2426$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2427$4, 0, 12 );
				FBSTRING* vr$1212 = fb_StrConcat( &TMP$2427$4, (void*)vr$1209, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2428$4, -1, (void*)vr$1212, -1, 0 );
				HWRITEASM64( &TMP$2428$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2428$4 );
			}
			goto label$1842;
			label$1843:;
			if( ((((((((-(V1DTYPE$1 == 13) | -(V1DTYPE$1 == 11)) | -(V1DTYPE$1 == 12)) | -(V1DTYPE$1 == 5)) | -(V1DTYPE$1 == 6)) | -(V1DTYPE$1 == 2)) | -(V1DTYPE$1 == 3)) | -(V1DTYPE$1 == 1)) | -(V1DTYPE$1 == 4)) == 0 ) goto label$1844;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1846;
				{
					FBSTRING TMP$2429$5;
					FBSTRING TMP$2430$5;
					__builtin_memset( &TMP$2430$5, 0, 12 );
					__builtin_memset( &TMP$2429$5, 0, 12 );
					FBSTRING* vr$1238 = fb_StrConcat( &TMP$2429$5, (void*)"movd xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2430$5, -1, (void*)vr$1238, -1, 0 );
					HWRITEASM64( &TMP$2430$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2430$5 );
				}
				goto label$1845;
				label$1846:;
				{
					FBSTRING TMP$2431$5;
					FBSTRING TMP$2432$5;
					__builtin_memset( &TMP$2432$5, 0, 12 );
					__builtin_memset( &TMP$2431$5, 0, 12 );
					FBSTRING* vr$1246 = fb_StrConcat( &TMP$2431$5, (void*)"movss xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2432$5, -1, (void*)vr$1246, -1, 0 );
					HWRITEASM64( &TMP$2432$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2432$5 );
				}
				label$1845:;
				HEMITROUNDFLOAT( 15, -2147483648u );
				if( V1DTYPE$1 != 13 ) goto label$1848;
				{
					FBSTRING TMP$2433$5;
					FBSTRING TMP$2434$5;
					FBSTRING TMP$2435$5;
					__builtin_memset( &TMP$2435$5, 0, 12 );
					__builtin_memset( &TMP$2433$5, 0, 12 );
					FBSTRING* vr$1254 = fb_StrConcat( &TMP$2433$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2434$5, 0, 12 );
					FBSTRING* vr$1257 = fb_StrConcat( &TMP$2434$5, (void*)vr$1254, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$2435$5, -1, (void*)vr$1257, -1, 0 );
					HWRITEASM64( &TMP$2435$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2435$5 );
				}
				goto label$1847;
				label$1848:;
				if( (-(V1DTYPE$1 == 11) | -(V1DTYPE$1 == 12)) == 0 ) goto label$1849;
				{
					FBSTRING TMP$2436$5;
					FBSTRING TMP$2437$5;
					FBSTRING TMP$2438$5;
					__builtin_memset( &TMP$2438$5, 0, 12 );
					__builtin_memset( &TMP$2436$5, 0, 12 );
					FBSTRING* vr$1268 = fb_StrConcat( &TMP$2436$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2437$5, 0, 12 );
					FBSTRING* vr$1271 = fb_StrConcat( &TMP$2437$5, (void*)vr$1268, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$2438$5, -1, (void*)vr$1271, -1, 0 );
					HWRITEASM64( &TMP$2438$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2438$5 );
				}
				goto label$1847;
				label$1849:;
				if( (-(V1DTYPE$1 == 5) | -(V1DTYPE$1 == 6)) == 0 ) goto label$1850;
				{
					FBSTRING TMP$2439$5;
					FBSTRING TMP$2440$5;
					FBSTRING TMP$2441$5;
					__builtin_memset( &TMP$2441$5, 0, 12 );
					__builtin_memset( &TMP$2439$5, 0, 12 );
					FBSTRING* vr$1282 = fb_StrConcat( &TMP$2439$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2440$5, 0, 12 );
					FBSTRING* vr$1285 = fb_StrConcat( &TMP$2440$5, (void*)vr$1282, -1, (void*)", ax", 5 );
					fb_StrAssign( (void*)&TMP$2441$5, -1, (void*)vr$1285, -1, 0 );
					HWRITEASM64( &TMP$2441$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2441$5 );
				}
				goto label$1847;
				label$1850:;
				{
					FBSTRING TMP$2444$5;
					FBSTRING TMP$2445$5;
					FBSTRING TMP$2446$5;
					if( V1DTYPE$1 != 1 ) goto label$1852;
					{
						FBSTRING TMP$2442$6;
						FBSTRING TMP$2443$6;
						__builtin_memset( &TMP$2442$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2442$6, -1, (void*)"cmp rax, 0", 11, 0 );
						HWRITEASM64( &TMP$2442$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2442$6 );
						__builtin_memset( &TMP$2443$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2443$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2443$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2443$6 );
					}
					label$1852:;
					label$1851:;
					__builtin_memset( &TMP$2446$5, 0, 12 );
					__builtin_memset( &TMP$2444$5, 0, 12 );
					FBSTRING* vr$1301 = fb_StrConcat( &TMP$2444$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2445$5, 0, 12 );
					FBSTRING* vr$1304 = fb_StrConcat( &TMP$2445$5, (void*)vr$1301, -1, (void*)", al", 5 );
					fb_StrAssign( (void*)&TMP$2446$5, -1, (void*)vr$1304, -1, 0 );
					HWRITEASM64( &TMP$2446$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2446$5 );
				}
				label$1847:;
			}
			goto label$1842;
			label$1844:;
			{
				FBSTRING TMP$2447$4;
				FBSTRING TMP$2450$4;
				FBSTRING TMP$2451$4;
				__builtin_memset( &TMP$2447$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2447$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2447$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2447$4 );
				__builtin_memset( &TMP$2450$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2450$4, -1, (void*)"FOUND AN ERROR : Converting float to int 02", 44, 0 );
				HWRITEASM64( &TMP$2450$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2450$4 );
				__builtin_memset( &TMP$2451$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2451$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2451$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2451$4 );
			}
			label$1842:;
		}
		label$1829:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1828:;
	label$1827:;
	if( (-(V1DTYPE$1 == 20) | -(V2DTYPE$1 == 20)) == 0 ) goto label$1854;
	{
		if( V2DTYPE$1 != 20 ) goto label$1856;
		{
			FBSTRING TMP$2452$3;
			FBSTRING TMP$2453$3;
			FBSTRING TMP$2454$3;
			FBSTRING TMP$2455$3;
			__builtin_memset( &TMP$2455$3, 0, 12 );
			__builtin_memset( &TMP$2452$3, 0, 12 );
			FBSTRING* vr$1337 = fb_StrConcat( &TMP$2452$3, (void*)"lea ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2453$3, 0, 12 );
			FBSTRING* vr$1340 = fb_StrConcat( &TMP$2453$3, (void*)vr$1337, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2454$3, 0, 12 );
			FBSTRING* vr$1343 = fb_StrConcat( &TMP$2454$3, (void*)vr$1340, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$2455$3, -1, (void*)vr$1343, -1, 0 );
			HWRITEASM64( &TMP$2455$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2455$3 );
			if( V1DTYPE$1 != 13 ) goto label$1858;
			{
				FBSTRING TMP$2457$4;
				FBSTRING TMP$2458$4;
				FBSTRING TMP$2459$4;
				FBSTRING TMP$2460$4;
				FBSTRING TMP$2461$4;
				__builtin_memset( &TMP$2461$4, 0, 12 );
				__builtin_memset( &TMP$2457$4, 0, 12 );
				FBSTRING* vr$1352 = fb_StrConcat( &TMP$2457$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2458$4, 0, 12 );
				FBSTRING* vr$1355 = fb_StrConcat( &TMP$2458$4, (void*)vr$1352, -1, (void*)", QWORD PTR [", 14 );
				__builtin_memset( &TMP$2459$4, 0, 12 );
				FBSTRING* vr$1358 = fb_StrConcat( &TMP$2459$4, (void*)vr$1355, -1, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2460$4, 0, 12 );
				FBSTRING* vr$1361 = fb_StrConcat( &TMP$2460$4, (void*)vr$1358, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$2461$4, -1, (void*)vr$1361, -1, 0 );
				HWRITEASM64( &TMP$2461$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2461$4 );
			}
			goto label$1857;
			label$1858:;
			if( V1DTYPE$1 == 20 ) goto label$1859;
			{
				FBSTRING TMP$2462$4;
				FBSTRING TMP$2465$4;
				FBSTRING TMP$2466$4;
				__builtin_memset( &TMP$2462$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2462$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2462$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2462$4 );
				__builtin_memset( &TMP$2465$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2465$4, -1, (void*)"FOUND AN ERROR : Converting struct to datatype not handled 01", 62, 0 );
				HWRITEASM64( &TMP$2465$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2465$4 );
				__builtin_memset( &TMP$2466$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2466$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2466$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2466$4 );
			}
			label$1859:;
			label$1857:;
		}
		goto label$1855;
		label$1856:;
		{
			FBSTRING TMP$2467$3;
			FBSTRING TMP$2470$3;
			FBSTRING TMP$2471$3;
			__builtin_memset( &TMP$2467$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2467$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2467$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2467$3 );
			__builtin_memset( &TMP$2470$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2470$3, -1, (void*)"FOUND AN ERROR : Converting to struct not handled 02", 53, 0 );
			HWRITEASM64( &TMP$2470$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2470$3 );
			__builtin_memset( &TMP$2471$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2471$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2471$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2471$3 );
		}
		label$1855:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1854:;
	label$1853:;
	if( V1DTYPE$1 != 1 ) goto label$1861;
	{
		if( *(int32*)V2$1 != 0 ) goto label$1863;
		{
			int32 vr$1400 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0", 2 );
			int32 vr$1403 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0x0000000000000000", 19 );
			int32 vr$1407 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0x00000000", 11 );
			if( ((-(vr$1400 == 0) | -(vr$1403 == 0)) | -(vr$1407 == 0)) == 0 ) goto label$1865;
			{
				FBSTRING TMP$2474$4;
				FBSTRING TMP$2475$4;
				FBSTRING TMP$2476$4;
				__builtin_memset( &TMP$2476$4, 0, 12 );
				__builtin_memset( &TMP$2474$4, 0, 12 );
				FBSTRING* vr$1414 = fb_StrConcat( &TMP$2474$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2475$4, 0, 12 );
				FBSTRING* vr$1417 = fb_StrConcat( &TMP$2475$4, (void*)vr$1414, -1, (void*)", 0", 4 );
				fb_StrAssign( (void*)&TMP$2476$4, -1, (void*)vr$1417, -1, 0 );
				HWRITEASM64( &TMP$2476$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2476$4 );
			}
			goto label$1864;
			label$1865:;
			{
				FBSTRING TMP$2477$4;
				FBSTRING TMP$2478$4;
				FBSTRING TMP$2479$4;
				__builtin_memset( &TMP$2479$4, 0, 12 );
				__builtin_memset( &TMP$2477$4, 0, 12 );
				FBSTRING* vr$1425 = fb_StrConcat( &TMP$2477$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2478$4, 0, 12 );
				FBSTRING* vr$1428 = fb_StrConcat( &TMP$2478$4, (void*)vr$1425, -1, (void*)", 1", 4 );
				fb_StrAssign( (void*)&TMP$2479$4, -1, (void*)vr$1428, -1, 0 );
				HWRITEASM64( &TMP$2479$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2479$4 );
			}
			label$1864:;
		}
		goto label$1862;
		label$1863:;
		{
			FBSTRING TMP$2480$3;
			FBSTRING TMP$2481$3;
			FBSTRING TMP$2482$3;
			FBSTRING TMP$2483$3;
			FBSTRING TMP$2484$3;
			FBSTRING TMP$2485$3;
			FBSTRING TMP$2486$3;
			FBSTRING TMP$2487$3;
			__builtin_memset( &TMP$2483$3, 0, 12 );
			__builtin_memset( &TMP$2480$3, 0, 12 );
			FBSTRING* vr$1437 = fb_StrConcat( &TMP$2480$3, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
			__builtin_memset( &TMP$2481$3, 0, 12 );
			FBSTRING* vr$1440 = fb_StrConcat( &TMP$2481$3, (void*)vr$1437, -1, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$2482$3, 0, 12 );
			FBSTRING* vr$1443 = fb_StrConcat( &TMP$2482$3, (void*)vr$1440, -1, (void*)", 0", 4 );
			fb_StrAssign( (void*)&TMP$2483$3, -1, (void*)vr$1443, -1, 0 );
			HWRITEASM64( &TMP$2483$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2483$3 );
			__builtin_memset( &TMP$2484$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2484$3, -1, (void*)"setne al", 9, 0 );
			HWRITEASM64( &TMP$2484$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2484$3 );
			__builtin_memset( &TMP$2487$3, 0, 12 );
			__builtin_memset( &TMP$2485$3, 0, 12 );
			FBSTRING* vr$1455 = fb_StrConcat( &TMP$2485$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2486$3, 0, 12 );
			FBSTRING* vr$1458 = fb_StrConcat( &TMP$2486$3, (void*)vr$1455, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2487$3, -1, (void*)vr$1458, -1, 0 );
			HWRITEASM64( &TMP$2487$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2487$3 );
		}
		label$1862:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1861:;
	label$1860:;
	if( V2DTYPE$1 != 1 ) goto label$1867;
	{
		FBSTRING TMP$2488$2;
		FBSTRING TMP$2489$2;
		FBSTRING TMP$2490$2;
		FBSTRING TMP$2491$2;
		FBSTRING TMP$2492$2;
		FBSTRING TMP$2493$2;
		int32 TMP$2494$2;
		__builtin_memset( &TMP$2491$2, 0, 12 );
		__builtin_memset( &TMP$2488$2, 0, 12 );
		FBSTRING* vr$1476 = fb_StrConcat( &TMP$2488$2, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
		__builtin_memset( &TMP$2489$2, 0, 12 );
		FBSTRING* vr$1479 = fb_StrConcat( &TMP$2489$2, (void*)vr$1476, -1, (void*)&OP2$1, -1 );
		__builtin_memset( &TMP$2490$2, 0, 12 );
		FBSTRING* vr$1482 = fb_StrConcat( &TMP$2490$2, (void*)vr$1479, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$2491$2, -1, (void*)vr$1482, -1, 0 );
		HWRITEASM64( &TMP$2491$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2491$2 );
		__builtin_memset( &TMP$2492$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2492$2, -1, (void*)"setne al", 9, 0 );
		HWRITEASM64( &TMP$2492$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2492$2 );
		__builtin_memset( &TMP$2493$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2493$2, -1, (void*)"neg al", 7, 0 );
		HWRITEASM64( &TMP$2493$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2493$2 );
		if( (V1DTYPE$1 & 480) == 0 ) goto label$1868;
		TMP$2494$2 = 24;
		goto label$3111;
		label$1868:;
		TMP$2494$2 = V1DTYPE$1 & 31;
		label$3111:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2494$2 * 28)) + 4) != 1 ) goto label$1870;
		{
			FBSTRING TMP$2495$3;
			FBSTRING TMP$2496$3;
			FBSTRING TMP$2497$3;
			__builtin_memset( &TMP$2497$3, 0, 12 );
			__builtin_memset( &TMP$2495$3, 0, 12 );
			FBSTRING* vr$1501 = fb_StrConcat( &TMP$2495$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2496$3, 0, 12 );
			FBSTRING* vr$1504 = fb_StrConcat( &TMP$2496$3, (void*)vr$1501, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2497$3, -1, (void*)vr$1504, -1, 0 );
			HWRITEASM64( &TMP$2497$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2497$3 );
		}
		goto label$1869;
		label$1870:;
		{
			FBSTRING TMP$2499$3;
			FBSTRING TMP$2500$3;
			FBSTRING TMP$2501$3;
			__builtin_memset( &TMP$2501$3, 0, 12 );
			__builtin_memset( &TMP$2499$3, 0, 12 );
			FBSTRING* vr$1512 = fb_StrConcat( &TMP$2499$3, (void*)"movsx ", 7, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2500$3, 0, 12 );
			FBSTRING* vr$1515 = fb_StrConcat( &TMP$2500$3, (void*)vr$1512, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2501$3, -1, (void*)vr$1515, -1, 0 );
			HWRITEASM64( &TMP$2501$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2501$3 );
		}
		label$1869:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1867:;
	label$1866:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1871;
	TMP$2502$1 = 24;
	goto label$3112;
	label$1871:;
	TMP$2502$1 = V1DTYPE$1 & 31;
	label$3112:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1872;
	TMP$2503$1 = 24;
	goto label$3113;
	label$1872:;
	TMP$2503$1 = V2DTYPE$1 & 31;
	label$3113:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2502$1 * 28)) + 4) > *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2503$1 * 28)) + 4) ) goto label$1874;
	{
		FBSTRING TMP$2508$2;
		FBSTRING TMP$2509$2;
		FBSTRING TMP$2510$2;
		FBSTRING TMP$2511$2;
		FBSTRING TMP$2512$2;
		if( *(int32*)V2$1 != 4 ) goto label$1876;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
			{
				if( V1DTYPE$1 == 11 ) goto label$1879;
				label$1880:;
				if( V1DTYPE$1 == 12 ) goto label$1879;
				label$1881:;
				if( V1DTYPE$1 != 15 ) goto label$1878;
				label$1879:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1877;
				label$1878:;
				if( V1DTYPE$1 == 5 ) goto label$1883;
				label$1884:;
				if( V1DTYPE$1 != 6 ) goto label$1882;
				label$1883:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1877;
				label$1882:;
				if( V1DTYPE$1 == 2 ) goto label$1886;
				label$1887:;
				if( V1DTYPE$1 == 3 ) goto label$1886;
				label$1888:;
				if( V1DTYPE$1 != 4 ) goto label$1885;
				label$1886:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1877;
				label$1885:;
				if( V1DTYPE$1 != 1 ) goto label$1889;
				label$1890:;
				{
				}
				goto label$1877;
				label$1889:;
				if( V1DTYPE$1 == 13 ) goto label$1892;
				label$1893:;
				if( V1DTYPE$1 == 14 ) goto label$1892;
				label$1894:;
				if( V1DTYPE$1 != 16 ) goto label$1891;
				label$1892:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1877;
				label$1891:;
				{
					FBSTRING TMP$2504$5;
					FBSTRING TMP$2505$5;
					FBSTRING TMP$2506$5;
					FBSTRING TMP$2507$5;
					__builtin_memset( &TMP$2504$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2504$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2504$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2504$5 );
					__builtin_memset( &TMP$2506$5, 0, 12 );
					FBSTRING* vr$1550 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2505$5, 0, 12 );
					FBSTRING* vr$1553 = fb_StrConcat( &TMP$2505$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55, (void*)vr$1550, -1 );
					fb_StrAssign( (void*)&TMP$2506$5, -1, (void*)vr$1553, -1, 0 );
					HWRITEASM64( &TMP$2506$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2506$5 );
					__builtin_memset( &TMP$2507$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2507$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2507$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2507$5 );
				}
				label$1895:;
				label$1877:;
			}
		}
		label$1876:;
		label$1875:;
		__builtin_memset( &TMP$2512$2, 0, 12 );
		__builtin_memset( &TMP$2508$2, 0, 12 );
		FBSTRING* vr$1567 = fb_StrConcat( &TMP$2508$2, (void*)"mov ", 5, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2509$2, 0, 12 );
		FBSTRING* vr$1570 = fb_StrConcat( &TMP$2509$2, (void*)vr$1567, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$2510$2, 0, 12 );
		FBSTRING* vr$1573 = fb_StrConcat( &TMP$2510$2, (void*)vr$1570, -1, (void*)&PREFIX1$1, -1 );
		__builtin_memset( &TMP$2511$2, 0, 12 );
		FBSTRING* vr$1576 = fb_StrConcat( &TMP$2511$2, (void*)vr$1573, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2512$2, -1, (void*)vr$1576, -1, 0 );
		HWRITEASM64( &TMP$2512$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2512$2 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1662;
	}
	label$1874:;
	label$1873:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1896;
	TMP$2513$1 = 24;
	goto label$3114;
	label$1896:;
	TMP$2513$1 = V2DTYPE$1 & 31;
	label$3114:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2513$1 * 28)) + 8) == 0 ) goto label$1898;
	{
		{
			int32 TMP$2514$3;
			int32 TMP$2515$3;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1899;
			TMP$2514$3 = 24;
			goto label$3115;
			label$1899:;
			TMP$2514$3 = V2DTYPE$1 & 31;
			label$3115:;
			TMP$2515$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2514$3 * 28)) + 4);
			if( TMP$2515$3 == 1 ) goto label$1902;
			label$1903:;
			if( TMP$2515$3 != 2 ) goto label$1901;
			label$1902:;
			{
				FBSTRING TMP$2516$4;
				FBSTRING TMP$2517$4;
				FBSTRING TMP$2518$4;
				FBSTRING TMP$2519$4;
				FBSTRING TMP$2520$4;
				__builtin_memset( &TMP$2520$4, 0, 12 );
				__builtin_memset( &TMP$2516$4, 0, 12 );
				FBSTRING* vr$1601 = fb_StrConcat( &TMP$2516$4, (void*)"movsx ", 7, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2517$4, 0, 12 );
				FBSTRING* vr$1604 = fb_StrConcat( &TMP$2517$4, (void*)vr$1601, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2518$4, 0, 12 );
				FBSTRING* vr$1607 = fb_StrConcat( &TMP$2518$4, (void*)vr$1604, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2519$4, 0, 12 );
				FBSTRING* vr$1610 = fb_StrConcat( &TMP$2519$4, (void*)vr$1607, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2520$4, -1, (void*)vr$1610, -1, 0 );
				HWRITEASM64( &TMP$2520$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2520$4 );
			}
			goto label$1900;
			label$1901:;
			if( TMP$2515$3 != 4 ) goto label$1904;
			label$1905:;
			{
				FBSTRING TMP$2521$4;
				FBSTRING TMP$2522$4;
				FBSTRING TMP$2523$4;
				FBSTRING TMP$2524$4;
				FBSTRING TMP$2525$4;
				__builtin_memset( &TMP$2525$4, 0, 12 );
				__builtin_memset( &TMP$2521$4, 0, 12 );
				FBSTRING* vr$1620 = fb_StrConcat( &TMP$2521$4, (void*)"movsxd ", 8, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2522$4, 0, 12 );
				FBSTRING* vr$1623 = fb_StrConcat( &TMP$2522$4, (void*)vr$1620, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2523$4, 0, 12 );
				FBSTRING* vr$1626 = fb_StrConcat( &TMP$2523$4, (void*)vr$1623, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2524$4, 0, 12 );
				FBSTRING* vr$1629 = fb_StrConcat( &TMP$2524$4, (void*)vr$1626, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2525$4, -1, (void*)vr$1629, -1, 0 );
				HWRITEASM64( &TMP$2525$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2525$4 );
			}
			goto label$1900;
			label$1904:;
			{
				FBSTRING TMP$2526$4;
				FBSTRING TMP$2529$4;
				FBSTRING TMP$2530$4;
				__builtin_memset( &TMP$2526$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2526$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2526$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2526$4 );
				__builtin_memset( &TMP$2529$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2529$4, -1, (void*)"FOUND AN ERROR : in conv something missing 01", 46, 0 );
				HWRITEASM64( &TMP$2529$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2529$4 );
				__builtin_memset( &TMP$2530$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2530$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2530$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2530$4 );
			}
			label$1906:;
			label$1900:;
		}
	}
	goto label$1897;
	label$1898:;
	{
		{
			int32 TMP$2531$3;
			int32 TMP$2532$3;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1907;
			TMP$2531$3 = 24;
			goto label$3116;
			label$1907:;
			TMP$2531$3 = V2DTYPE$1 & 31;
			label$3116:;
			TMP$2532$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2531$3 * 28)) + 4);
			if( TMP$2532$3 == 1 ) goto label$1910;
			label$1911:;
			if( TMP$2532$3 != 2 ) goto label$1909;
			label$1910:;
			{
				FBSTRING TMP$2533$4;
				FBSTRING TMP$2534$4;
				FBSTRING TMP$2535$4;
				FBSTRING TMP$2536$4;
				FBSTRING TMP$2537$4;
				__builtin_memset( &TMP$2537$4, 0, 12 );
				__builtin_memset( &TMP$2533$4, 0, 12 );
				FBSTRING* vr$1654 = fb_StrConcat( &TMP$2533$4, (void*)"movzx ", 7, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2534$4, 0, 12 );
				FBSTRING* vr$1657 = fb_StrConcat( &TMP$2534$4, (void*)vr$1654, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2535$4, 0, 12 );
				FBSTRING* vr$1660 = fb_StrConcat( &TMP$2535$4, (void*)vr$1657, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2536$4, 0, 12 );
				FBSTRING* vr$1663 = fb_StrConcat( &TMP$2536$4, (void*)vr$1660, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2537$4, -1, (void*)vr$1663, -1, 0 );
				HWRITEASM64( &TMP$2537$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2537$4 );
			}
			goto label$1908;
			label$1909:;
			if( TMP$2532$3 != 4 ) goto label$1912;
			label$1913:;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1915;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + (REGRESULT$1 << (2 & 31))) = -2;
					REGRESULT$1 = SRCREG$1;
					*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
				}
				goto label$1914;
				label$1915:;
				{
					FBSTRING TMP$2538$5;
					FBSTRING TMP$2539$5;
					FBSTRING TMP$2540$5;
					FBSTRING TMP$2541$5;
					__builtin_memset( &TMP$2541$5, 0, 12 );
					__builtin_memset( &TMP$2538$5, 0, 12 );
					FBSTRING* vr$1676 = fb_StrConcat( &TMP$2538$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2539$5, 0, 12 );
					FBSTRING* vr$1679 = fb_StrConcat( &TMP$2539$5, (void*)vr$1676, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2540$5, 0, 12 );
					FBSTRING* vr$1682 = fb_StrConcat( &TMP$2540$5, (void*)vr$1679, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2541$5, -1, (void*)vr$1682, -1, 0 );
					HWRITEASM64( &TMP$2541$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2541$5 );
				}
				label$1914:;
			}
			goto label$1908;
			label$1912:;
			{
				FBSTRING TMP$2542$4;
				FBSTRING TMP$2545$4;
				FBSTRING TMP$2546$4;
				__builtin_memset( &TMP$2542$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2542$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2542$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2542$4 );
				__builtin_memset( &TMP$2545$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2545$4, -1, (void*)"FOUND AN ERROR : in conv something missing 02", 46, 0 );
				HWRITEASM64( &TMP$2545$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2545$4 );
				__builtin_memset( &TMP$2546$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2546$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2546$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2546$4 );
			}
			label$1916:;
			label$1908:;
		}
	}
	label$1897:;
	fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1662:;
}

static void EMITSTORESTRUCT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$2571$1;
	FBSTRING TMP$2572$1;
	FBSTRING TMP$2573$1;
	label$1917:;
	FBSTRING DEST$1;
	__builtin_memset( &DEST$1, 0, 12 );
	int32 LGTV1$1;
	LGTV1$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40);
	int32 OFSV2$1;
	OFSV2$1 = (int32)*(int64*)((uint8*)V2$1 + 40);
	$15FB_STRUCT_INREG RETIN2REGS$1;
	RETIN2REGS$1 = *($15FB_STRUCT_INREG*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 132);
	int32 vr$8 = fb_StrCompare( (void*)OP3$1, -1, (void*)"", 1 );
	if( vr$8 == 0 ) goto label$1920;
	{
		EMITOP3_OP4( OP3$1 );
		label$1920:;
	}
	{
		if( RETIN2REGS$1 != 2 ) goto label$1922;
		label$1923:;
		{
			FBSTRING TMP$2547$3;
			FBSTRING TMP$2548$3;
			FBSTRING TMP$2549$3;
			__builtin_memset( &TMP$2549$3, 0, 12 );
			__builtin_memset( &TMP$2547$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$2547$3, (void*)"mov ", 5, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2548$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$2548$3, (void*)vr$12, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2549$3, -1, (void*)vr$15, -1, 0 );
			HWRITEASM64( &TMP$2549$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2549$3 );
		}
		goto label$1921;
		label$1922:;
		if( RETIN2REGS$1 != 3 ) goto label$1924;
		label$1925:;
		{
			FBSTRING TMP$2550$3;
			FBSTRING TMP$2551$3;
			FBSTRING TMP$2552$3;
			FBSTRING TMP$2554$3;
			__builtin_memset( &TMP$2552$3, 0, 12 );
			__builtin_memset( &TMP$2550$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$2550$3, (void*)"mov ", 5, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2551$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$2551$3, (void*)vr$22, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2552$3, -1, (void*)vr$25, -1, 0 );
			HWRITEASM64( &TMP$2552$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2552$3 );
			__builtin_memset( &TMP$2554$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2554$3, -1, (void*)"movq rdx, xmm0", 15, 0 );
			HWRITEASM64( &TMP$2554$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2554$3 );
		}
		goto label$1921;
		label$1924:;
		if( RETIN2REGS$1 != 6 ) goto label$1926;
		label$1927:;
		{
			FBSTRING TMP$2555$3;
			FBSTRING TMP$2556$3;
			FBSTRING TMP$2557$3;
			FBSTRING TMP$2559$3;
			__builtin_memset( &TMP$2557$3, 0, 12 );
			__builtin_memset( &TMP$2555$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$2555$3, (void*)"movq ", 6, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2556$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$2556$3, (void*)vr$36, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$2557$3, -1, (void*)vr$39, -1, 0 );
			HWRITEASM64( &TMP$2557$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2557$3 );
			__builtin_memset( &TMP$2559$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2559$3, -1, (void*)"movq rdx, xmm1", 15, 0 );
			HWRITEASM64( &TMP$2559$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2559$3 );
		}
		goto label$1921;
		label$1926:;
		if( RETIN2REGS$1 != 5 ) goto label$1928;
		label$1929:;
		{
			FBSTRING TMP$2560$3;
			FBSTRING TMP$2561$3;
			FBSTRING TMP$2562$3;
			FBSTRING TMP$2564$3;
			__builtin_memset( &TMP$2562$3, 0, 12 );
			__builtin_memset( &TMP$2560$3, 0, 12 );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$2560$3, (void*)"movq ", 6, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2561$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$2561$3, (void*)vr$50, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$2562$3, -1, (void*)vr$53, -1, 0 );
			HWRITEASM64( &TMP$2562$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2562$3 );
			__builtin_memset( &TMP$2564$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2564$3, -1, (void*)"movq rdx, rax", 14, 0 );
			HWRITEASM64( &TMP$2564$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2564$3 );
		}
		goto label$1921;
		label$1928:;
		{
		}
		label$1930:;
		label$1921:;
	}
	if( (-((uint32)(int32)*(uint8*)*(uint8**)OP1$1 == 45u) & (((-(LGTV1$1 == 9) | -(LGTV1$1 == 10)) | -(LGTV1$1 == 12)) | -(LGTV1$1 == 16))) == 0 ) goto label$1932;
	{
		FBSTRING TMP$2565$2;
		FBSTRING TMP$2567$2;
		FBSTRING TMP$2568$2;
		FBSTRING TMP$2569$2;
		FBSTRING TMP$2570$2;
		FBSTRING* vr$73 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5 );
		int32 vr$74 = fb_StrInstr( 1, (FBSTRING*)OP1$1, (FBSTRING*)vr$73 );
		FBSTRING* vr$76 = fb_LEFT( (FBSTRING*)OP1$1, vr$74 + -1 );
		int32 vr$77 = fb_VALINT( (FBSTRING*)vr$76 );
		FBSTRING* vr$79 = fb_IntToStr( vr$77 + 8 );
		__builtin_memset( &TMP$2565$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$2565$2, (void*)vr$79, -1, (void*)"[rbp]", 6 );
		fb_StrAssign( (void*)OP1$1, -1, (void*)vr$82, -1, 0 );
		{
			uint32 TMP$2566$3;
			TMP$2566$3 = (uint32)LGTV1$1;
			goto label$1934;
			label$1935:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"dl", 3, 0 );
			}
			goto label$1933;
			label$1936:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"dx", 3, 0 );
			}
			goto label$1933;
			label$1937:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"edx", 4, 0 );
			}
			goto label$1933;
			label$1938:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"rdx", 4, 0 );
			}
			goto label$1933;
			label$1934:;
			static const void* tmp$4054[8] = {
				&&label$1935,
				&&label$1936,
				&&label$1933,
				&&label$1937,
				&&label$1933,
				&&label$1933,
				&&label$1933,
				&&label$1938,
			};
			if( (TMP$2566$3 - 9u) > 7u ) goto label$1933;
			goto *tmp$4054[TMP$2566$3 - 9u];
			label$1933:;
		}
		__builtin_memset( &TMP$2570$2, 0, 12 );
		__builtin_memset( &TMP$2567$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$2567$2, (void*)"mov ", 5, (void*)OP1$1, -1 );
		__builtin_memset( &TMP$2568$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$2568$2, (void*)vr$91, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$2569$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$2569$2, (void*)vr$94, -1, (void*)&DEST$1, -1 );
		fb_StrAssign( (void*)&TMP$2570$2, -1, (void*)vr$97, -1, 0 );
		HWRITEASM64( &TMP$2570$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2570$2 );
		fb_StrDelete( (FBSTRING*)&DEST$1 );
		goto label$1918;
	}
	label$1932:;
	label$1931:;
	__builtin_memset( &TMP$2572$1, 0, 12 );
	__builtin_memset( &TMP$2571$1, 0, 12 );
	FBSTRING* vr$105 = fb_StrConcat( &TMP$2571$1, (void*)"lea rax, ", 10, (void*)OP1$1, -1 );
	fb_StrAssign( (void*)&TMP$2572$1, -1, (void*)vr$105, -1, 0 );
	HWRITEASM64( &TMP$2572$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2572$1 );
	__builtin_memset( &TMP$2573$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$2573$1, -1, (void*)"add rax, 8", 11, 0 );
	HWRITEASM64( &TMP$2573$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2573$1 );
	{
		uint32 TMP$2574$2;
		TMP$2574$2 = (uint32)LGTV1$1;
		goto label$1940;
		label$1941:;
		{
			FBSTRING TMP$2576$3;
			__builtin_memset( &TMP$2576$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2576$3, -1, (void*)"mov [rax], dl", 14, 0 );
			HWRITEASM64( &TMP$2576$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2576$3 );
		}
		goto label$1939;
		label$1942:;
		{
			FBSTRING TMP$2578$3;
			__builtin_memset( &TMP$2578$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2578$3, -1, (void*)"mov [rax], dx", 14, 0 );
			HWRITEASM64( &TMP$2578$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2578$3 );
		}
		goto label$1939;
		label$1943:;
		{
			FBSTRING TMP$2579$3;
			FBSTRING TMP$2581$3;
			FBSTRING TMP$2583$3;
			__builtin_memset( &TMP$2579$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2579$3, -1, (void*)"mov [rax], dx", 14, 0 );
			HWRITEASM64( &TMP$2579$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2579$3 );
			__builtin_memset( &TMP$2581$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2581$3, -1, (void*)"shr rdx, 2", 11, 0 );
			HWRITEASM64( &TMP$2581$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2581$3 );
			__builtin_memset( &TMP$2583$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2583$3, -1, (void*)"mov [rax+2], dl", 16, 0 );
			HWRITEASM64( &TMP$2583$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2583$3 );
		}
		goto label$1939;
		label$1944:;
		{
			FBSTRING TMP$2585$3;
			__builtin_memset( &TMP$2585$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2585$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2585$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2585$3 );
		}
		goto label$1939;
		label$1945:;
		{
			FBSTRING TMP$2586$3;
			FBSTRING TMP$2588$3;
			FBSTRING TMP$2590$3;
			__builtin_memset( &TMP$2586$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2586$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2586$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2586$3 );
			__builtin_memset( &TMP$2588$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2588$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2588$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2588$3 );
			__builtin_memset( &TMP$2590$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2590$3, -1, (void*)"mov [rax+4], dl", 16, 0 );
			HWRITEASM64( &TMP$2590$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2590$3 );
		}
		goto label$1939;
		label$1946:;
		{
			FBSTRING TMP$2591$3;
			FBSTRING TMP$2592$3;
			FBSTRING TMP$2594$3;
			__builtin_memset( &TMP$2591$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2591$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2591$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2591$3 );
			__builtin_memset( &TMP$2592$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2592$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2592$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2592$3 );
			__builtin_memset( &TMP$2594$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2594$3, -1, (void*)"mov [rax+4], dx", 16, 0 );
			HWRITEASM64( &TMP$2594$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2594$3 );
		}
		goto label$1939;
		label$1947:;
		{
			FBSTRING TMP$2595$3;
			FBSTRING TMP$2596$3;
			FBSTRING TMP$2597$3;
			FBSTRING TMP$2598$3;
			FBSTRING TMP$2600$3;
			__builtin_memset( &TMP$2595$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2595$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2595$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2595$3 );
			__builtin_memset( &TMP$2596$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2596$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2596$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2596$3 );
			__builtin_memset( &TMP$2597$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2597$3, -1, (void*)"mov [rax+4], dx", 16, 0 );
			HWRITEASM64( &TMP$2597$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2597$3 );
			__builtin_memset( &TMP$2598$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2598$3, -1, (void*)"shr rdx, 2", 11, 0 );
			HWRITEASM64( &TMP$2598$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2598$3 );
			__builtin_memset( &TMP$2600$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2600$3, -1, (void*)"mov [rax+6], dl", 16, 0 );
			HWRITEASM64( &TMP$2600$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2600$3 );
		}
		goto label$1939;
		label$1948:;
		{
			FBSTRING TMP$2602$3;
			__builtin_memset( &TMP$2602$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2602$3, -1, (void*)"mov [rax], rdx", 15, 0 );
			HWRITEASM64( &TMP$2602$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2602$3 );
		}
		goto label$1939;
		label$1940:;
		static const void* tmp$4055[8] = {
			&&label$1941,
			&&label$1942,
			&&label$1943,
			&&label$1944,
			&&label$1945,
			&&label$1946,
			&&label$1947,
			&&label$1948,
		};
		if( (TMP$2574$2 - 9u) > 7u ) goto label$1939;
		goto *tmp$4055[TMP$2574$2 - 9u];
		label$1939:;
	}
	fb_StrDelete( (FBSTRING*)&DEST$1 );
	label$1918:;
}

static int32 HISSTRUCTIN2REGS( struct $6IRVREG* V1$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1949:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 511) != 20 ) goto label$1952;
	{
		fb$result$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) + 132) != 0);
		goto label$1950;
	}
	label$1952:;
	label$1951:;
	fb$result$1 = 0;
	goto label$1950;
	label$1950:;
	return fb$result$1;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$2603$1;
	int32 TMP$2604$1;
	label$1953:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 12 );
	FBSTRING CODE1$1;
	__builtin_memset( &CODE1$1, 0, 12 );
	FBSTRING CODE2$1;
	__builtin_memset( &CODE2$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1955;
	TMP$2603$1 = 24;
	goto label$3117;
	label$1955:;
	TMP$2603$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3117:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1956;
	TMP$2604$1 = 24;
	goto label$3118;
	label$1956:;
	TMP$2604$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$3118:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2603$1 * 28)) + 4) >= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2604$1 * 28)) + 4) ) goto label$1958;
	{
		struct $6IRVREG* TEMP0$2;
		struct $6IRVREG* vr$21 = IRHLALLOCVREG( *(int32*)((uint8*)V1$1 + 4), (struct $8FBSYMBOL*)0u );
		TEMP0$2 = vr$21;
		_EMITCONVERT( TEMP0$2, V2$1 );
		__builtin_memcpy( V2$1, TEMP0$2, 72 );
	}
	label$1958:;
	label$1957:;
	{
		$15IRVREGTYPE_ENUM TMP$2605$2;
		TMP$2605$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2605$2 != 2 ) goto label$1960;
		label$1961:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1959;
		label$1960:;
		if( TMP$2605$2 != 4 ) goto label$1962;
		label$1963:;
		{
			if( *(int32*)V2$1 != 0 ) goto label$1965;
			{
				FBSTRING TMP$2606$4;
				FBSTRING TMP$2609$4;
				FBSTRING TMP$2610$4;
				__builtin_memset( &TMP$2606$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2606$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2606$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2606$4 );
				__builtin_memset( &TMP$2609$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2609$4, -1, (void*)"FOUND AN ERROR : In emitstore used to be sure that case IMM to REG may happen.... report to dev", 96, 0 );
				HWRITEASM64( &TMP$2609$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2609$4 );
				__builtin_memset( &TMP$2610$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2610$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2610$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2610$4 );
				if( (-(*(int64*)((uint8*)V2$1 + 24) >= 0ll) & -(*(int64*)((uint8*)V2$1 + 24) <= 2147483647ll)) == 0 ) goto label$1967;
				{
					int32 vr$44 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (vr$44 << (2 & 31))), 0, 0 );
				}
				goto label$1966;
				label$1967:;
				{
					int32 vr$48 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$48 << (2 & 31))), 0, 0 );
				}
				label$1966:;
			}
			goto label$1964;
			label$1965:;
			{
				DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
				if( (DTYPE$1 & 480) == 0 ) goto label$1969;
				{
					DTYPE$1 = 8;
					label$1969:;
				}
				{
					if( DTYPE$1 == 8 ) goto label$1972;
					label$1973:;
					if( DTYPE$1 == 9 ) goto label$1972;
					label$1974:;
					if( DTYPE$1 == 13 ) goto label$1972;
					label$1975:;
					if( DTYPE$1 == 14 ) goto label$1972;
					label$1976:;
					if( DTYPE$1 == 16 ) goto label$1972;
					label$1977:;
					if( DTYPE$1 != 10 ) goto label$1971;
					label$1972:;
					{
						int32 vr$55 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$55 << (2 & 31))), 0, 0 );
					}
					goto label$1970;
					label$1971:;
					if( DTYPE$1 == 11 ) goto label$1979;
					label$1980:;
					if( DTYPE$1 == 12 ) goto label$1979;
					label$1981:;
					if( DTYPE$1 != 15 ) goto label$1978;
					label$1979:;
					{
						int32 vr$59 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (vr$59 << (2 & 31))), 0, 0 );
					}
					goto label$1970;
					label$1978:;
					if( DTYPE$1 == 5 ) goto label$1983;
					label$1984:;
					if( DTYPE$1 != 6 ) goto label$1982;
					label$1983:;
					{
						int32 vr$63 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (vr$63 << (2 & 31))), 0, 0 );
					}
					goto label$1970;
					label$1982:;
					if( DTYPE$1 == 2 ) goto label$1986;
					label$1987:;
					if( DTYPE$1 == 3 ) goto label$1986;
					label$1988:;
					if( DTYPE$1 == 1 ) goto label$1986;
					label$1989:;
					if( DTYPE$1 != 4 ) goto label$1985;
					label$1986:;
					{
						int32 vr$67 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (vr$67 << (2 & 31))), 0, 0 );
					}
					goto label$1970;
					label$1985:;
					{
						FBSTRING TMP$2611$6;
						FBSTRING TMP$2615$6;
						FBSTRING TMP$2616$6;
						FBSTRING TMP$2617$6;
						__builtin_memset( &TMP$2611$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2611$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2611$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2611$6 );
						__builtin_memset( &TMP$2616$6, 0, 12 );
						FBSTRING* vr$76 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
						__builtin_memset( &TMP$2615$6, 0, 12 );
						FBSTRING* vr$79 = fb_StrConcat( &TMP$2615$6, (void*)"FOUND AN ERROR : Storing datatype not handled 01 = ", 52, (void*)vr$76, -1 );
						fb_StrAssign( (void*)&TMP$2616$6, -1, (void*)vr$79, -1, 0 );
						HWRITEASM64( &TMP$2616$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2616$6 );
						__builtin_memset( &TMP$2617$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2617$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2617$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2617$6 );
					}
					label$1990:;
					label$1970:;
				}
			}
			label$1964:;
		}
		goto label$1959;
		label$1962:;
		if( TMP$2605$2 != 1 ) goto label$1991;
		label$1992:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1994;
			{
				FBSTRING TMP$2618$4;
				FBSTRING TMP$2619$4;
				FBSTRING TMP$2620$4;
				FBSTRING* vr$97 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$99 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2618$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$2618$4, (void*)vr$99, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2619$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$2619$4, (void*)vr$102, -1, (void*)vr$97, -1 );
				__builtin_memset( &TMP$2620$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$2620$4, (void*)vr$105, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$108, -1, 0 );
			}
			goto label$1993;
			label$1994:;
			{
				FBSTRING TMP$2621$4;
				FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$2621$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$2621$4, (void*)vr$111, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$114, -1, 0 );
			}
			label$1993:;
		}
		goto label$1959;
		label$1991:;
		if( TMP$2605$2 != 3 ) goto label$1995;
		label$1996:;
		{
			if( *(int64*)((uint8*)V1$1 + 40) == 0ll ) goto label$1998;
			{
				if( *(struct $6IRVREG**)((uint8*)V1$1 + 52) != (struct $6IRVREG*)0u ) goto label$2000;
				{
					if( (-(*(int64*)((uint8*)V1$1 + 40) < -2147483648ll) | -(*(int64*)((uint8*)V1$1 + 40) > 4294967295ll)) == 0 ) goto label$2002;
					{
						FBSTRING TMP$2622$6;
						FBSTRING* vr$124 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2622$6, 0, 12 );
						FBSTRING* vr$127 = fb_StrConcat( &TMP$2622$6, (void*)"mov rax, ", 10, (void*)vr$124, -1 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$127, -1, 0 );
					}
					goto label$2001;
					label$2002:;
					{
						FBSTRING TMP$2623$6;
						FBSTRING* vr$130 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2623$6, 0, 12 );
						FBSTRING* vr$133 = fb_StrConcat( &TMP$2623$6, (void*)"mov eax, ", 10, (void*)vr$130, -1 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$133, -1, 0 );
					}
					label$2001:;
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
				}
				goto label$1999;
				label$2000:;
				{
					FBSTRING TMP$2624$5;
					FBSTRING TMP$2625$5;
					FBSTRING TMP$2626$5;
					int32 vr$138 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$141 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2624$5, 0, 12 );
					FBSTRING* vr$144 = fb_StrConcat( &TMP$2624$5, (void*)vr$141, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2625$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$2625$5, (void*)vr$144, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$138 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2626$5, 0, 12 );
					FBSTRING* vr$150 = fb_StrConcat( &TMP$2626$5, (void*)vr$147, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$150, -1, 0 );
				}
				label$1999:;
			}
			goto label$1997;
			label$1998:;
			{
				FBSTRING TMP$2627$4;
				FBSTRING TMP$2628$4;
				int32 vr$154 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
				__builtin_memset( &TMP$2627$4, 0, 12 );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$2627$4, (void*)"[", 2, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$154 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2628$4, 0, 12 );
				FBSTRING* vr$161 = fb_StrConcat( &TMP$2628$4, (void*)vr$158, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$161, -1, 0 );
			}
			label$1997:;
		}
		goto label$1959;
		label$1995:;
		if( TMP$2605$2 != 5 ) goto label$2003;
		label$2004:;
		{
			FBSTRING TMP$2629$3;
			FBSTRING TMP$2630$3;
			FBSTRING TMP$2631$3;
			FBSTRING* vr$164 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$166 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$2629$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$2629$3, (void*)vr$166, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2630$3, 0, 12 );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$2630$3, (void*)vr$169, -1, (void*)vr$164, -1 );
			__builtin_memset( &TMP$2631$3, 0, 12 );
			FBSTRING* vr$175 = fb_StrConcat( &TMP$2631$3, (void*)vr$172, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$175, -1, 0 );
		}
		goto label$1959;
		label$2003:;
		{
			FBSTRING TMP$2632$3;
			FBSTRING TMP$2635$3;
			FBSTRING TMP$2636$3;
			__builtin_memset( &TMP$2632$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2632$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2632$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2632$3 );
			__builtin_memset( &TMP$2635$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2635$3, -1, (void*)"FOUND AN ERROR : store 01", 26, 0 );
			HWRITEASM64( &TMP$2635$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2635$3 );
			__builtin_memset( &TMP$2636$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2636$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2636$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2636$3 );
		}
		label$2005:;
		label$1959:;
	}
	int32 vr$189 = HISSTRUCTIN2REGS( V2$1 );
	if( vr$189 == 0 ) goto label$2007;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 12) & 16) == 0 ) goto label$2009;
		{
			*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 48) = *(int64*)((uint8*)V2$1 + 40);
		}
		goto label$2008;
		label$2009:;
		{
			EMITSTORESTRUCT( V1$1, V2$1, &OP1$1, &OP3$1 );
		}
		label$2008:;
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&CODE2$1 );
		fb_StrDelete( (FBSTRING*)&CODE1$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1954;
	}
	label$2007:;
	label$2006:;
	{
		$15IRVREGTYPE_ENUM TMP$2637$2;
		TMP$2637$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2637$2 != 2 ) goto label$2011;
		label$2012:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$2010;
		label$2011:;
		if( TMP$2637$2 != 4 ) goto label$2013;
		label$2014:;
		{
			DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
			if( (DTYPE$1 & 480) == 0 ) goto label$2016;
			{
				DTYPE$1 = 8;
				label$2016:;
			}
			{
				if( DTYPE$1 == 8 ) goto label$2019;
				label$2020:;
				if( DTYPE$1 == 9 ) goto label$2019;
				label$2021:;
				if( DTYPE$1 == 13 ) goto label$2019;
				label$2022:;
				if( DTYPE$1 == 14 ) goto label$2019;
				label$2023:;
				if( DTYPE$1 == 16 ) goto label$2019;
				label$2024:;
				if( DTYPE$1 != 10 ) goto label$2018;
				label$2019:;
				{
					int32 vr$213 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$213 << (2 & 31))), 0, 0 );
				}
				goto label$2017;
				label$2018:;
				if( DTYPE$1 == 11 ) goto label$2026;
				label$2027:;
				if( DTYPE$1 == 12 ) goto label$2026;
				label$2028:;
				if( DTYPE$1 != 15 ) goto label$2025;
				label$2026:;
				{
					int32 vr$217 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (vr$217 << (2 & 31))), 0, 0 );
				}
				goto label$2017;
				label$2025:;
				if( DTYPE$1 == 5 ) goto label$2030;
				label$2031:;
				if( DTYPE$1 != 6 ) goto label$2029;
				label$2030:;
				{
					int32 vr$221 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (vr$221 << (2 & 31))), 0, 0 );
				}
				goto label$2017;
				label$2029:;
				if( DTYPE$1 == 2 ) goto label$2033;
				label$2034:;
				if( DTYPE$1 == 3 ) goto label$2033;
				label$2035:;
				if( DTYPE$1 == 1 ) goto label$2033;
				label$2036:;
				if( DTYPE$1 != 4 ) goto label$2032;
				label$2033:;
				{
					int32 vr$225 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (vr$225 << (2 & 31))), 0, 0 );
				}
				goto label$2017;
				label$2032:;
				{
					FBSTRING TMP$2638$5;
					FBSTRING TMP$2642$5;
					FBSTRING TMP$2643$5;
					FBSTRING TMP$2644$5;
					__builtin_memset( &TMP$2638$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2638$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2638$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2638$5 );
					__builtin_memset( &TMP$2643$5, 0, 12 );
					FBSTRING* vr$234 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2642$5, 0, 12 );
					FBSTRING* vr$237 = fb_StrConcat( &TMP$2642$5, (void*)"FOUND AN ERROR : Storing datatype not handled 02 = ", 52, (void*)vr$234, -1 );
					fb_StrAssign( (void*)&TMP$2643$5, -1, (void*)vr$237, -1, 0 );
					HWRITEASM64( &TMP$2643$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2643$5 );
					__builtin_memset( &TMP$2644$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2644$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2644$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2644$5 );
				}
				label$2037:;
				label$2017:;
			}
		}
		goto label$2010;
		label$2013:;
		if( TMP$2637$2 != 1 ) goto label$2038;
		label$2039:;
		{
			int32 TMP$2645$3;
			if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2040;
			TMP$2645$3 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) != 0);
			goto label$3119;
			label$2040:;
			TMP$2645$3 = 0;
			label$3119:;
			if( TMP$2645$3 == 0 ) goto label$2042;
			{
				FBSTRING TMP$2646$4;
				FBSTRING TMP$2647$4;
				FBSTRING TMP$2648$4;
				FBSTRING* vr$257 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				uint8* vr$259 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2646$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$2646$4, (void*)vr$259, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2647$4, 0, 12 );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$2647$4, (void*)vr$262, -1, (void*)vr$257, -1 );
				__builtin_memset( &TMP$2648$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$2648$4, (void*)vr$265, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$268, -1, 0 );
			}
			goto label$2041;
			label$2042:;
			{
				FBSTRING TMP$2649$4;
				FBSTRING* vr$271 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2649$4, 0, 12 );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$2649$4, (void*)vr$271, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$274, -1, 0 );
			}
			label$2041:;
		}
		goto label$2010;
		label$2038:;
		if( TMP$2637$2 != 3 ) goto label$2043;
		label$2044:;
		{
			if( *(struct $6IRVREG**)((uint8*)V2$1 + 52) == (struct $6IRVREG*)0u ) goto label$2046;
			{
				FBSTRING TMP$2650$4;
				FBSTRING TMP$2651$4;
				FBSTRING TMP$2652$4;
				int32 vr$279 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
				FBSTRING* vr$282 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2650$4, 0, 12 );
				FBSTRING* vr$285 = fb_StrConcat( &TMP$2650$4, (void*)vr$282, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$2651$4, 0, 12 );
				FBSTRING* vr$288 = fb_StrConcat( &TMP$2651$4, (void*)vr$285, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$279 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2652$4, 0, 12 );
				FBSTRING* vr$291 = fb_StrConcat( &TMP$2652$4, (void*)vr$288, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$291, -1, 0 );
			}
			goto label$2045;
			label$2046:;
			{
				FBSTRING TMP$2653$4;
				FBSTRING TMP$2654$4;
				FBSTRING* vr$294 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2653$4, 0, 12 );
				FBSTRING* vr$297 = fb_StrConcat( &TMP$2653$4, (void*)"[", 2, (void*)vr$294, -1 );
				__builtin_memset( &TMP$2654$4, 0, 12 );
				FBSTRING* vr$300 = fb_StrConcat( &TMP$2654$4, (void*)vr$297, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$300, -1, 0 );
			}
			label$2045:;
		}
		goto label$2010;
		label$2043:;
		if( TMP$2637$2 != 5 ) goto label$2047;
		label$2048:;
		{
			FBSTRING TMP$2655$3;
			FBSTRING TMP$2656$3;
			FBSTRING TMP$2657$3;
			FBSTRING* vr$303 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			uint8* vr$305 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$2655$3, 0, 12 );
			FBSTRING* vr$308 = fb_StrConcat( &TMP$2655$3, (void*)vr$305, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2656$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$2656$3, (void*)vr$308, -1, (void*)vr$303, -1 );
			__builtin_memset( &TMP$2657$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$2657$3, (void*)vr$311, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$314, -1, 0 );
		}
		goto label$2010;
		label$2047:;
		if( TMP$2637$2 != 0 ) goto label$2049;
		label$2050:;
		{
			int32 TMP$2658$3;
			if( (-(*(int32*)((uint8*)V1$1 + 4) == 1) & -(*(int64*)((uint8*)V2$1 + 24) != 0ll)) == 0 ) goto label$2052;
			{
				*(int64*)((uint8*)V2$1 + 24) = 1ll;
			}
			label$2052:;
			label$2051:;
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$2053;
			TMP$2658$3 = 24;
			goto label$3120;
			label$2053:;
			TMP$2658$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3120:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2658$3 * 28)) != 1 ) goto label$2055;
			{
				FBSTRING* vr$329 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$329, -1, 0 );
			}
			goto label$2054;
			label$2055:;
			{
				FBSTRING* vr$332 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$332, -1, 0 );
			}
			label$2054:;
		}
		goto label$2010;
		label$2049:;
		{
			FBSTRING TMP$2659$3;
			FBSTRING TMP$2660$3;
			FBSTRING TMP$2661$3;
			__builtin_memset( &TMP$2659$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2659$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2659$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2659$3 );
			__builtin_memset( &TMP$2660$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2660$3, -1, (void*)"FOUND AN ERROR : store 02 ??", 29, 0 );
			HWRITEASM64( &TMP$2660$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2660$3 );
			__builtin_memset( &TMP$2661$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2661$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2661$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2661$3 );
		}
		label$2056:;
		label$2010:;
	}
	DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (DTYPE$1 & 480) == 0 ) goto label$2058;
	{
		DTYPE$1 = 8;
		label$2058:;
	}
	{
		if( DTYPE$1 == 8 ) goto label$2061;
		label$2062:;
		if( DTYPE$1 == 9 ) goto label$2061;
		label$2063:;
		if( DTYPE$1 == 13 ) goto label$2061;
		label$2064:;
		if( DTYPE$1 == 14 ) goto label$2061;
		label$2065:;
		if( DTYPE$1 == 16 ) goto label$2061;
		label$2066:;
		if( DTYPE$1 != 10 ) goto label$2060;
		label$2061:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"QWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov rax, ", 10, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", rax", 6, 0 );
		}
		goto label$2059;
		label$2060:;
		if( DTYPE$1 == 11 ) goto label$2068;
		label$2069:;
		if( DTYPE$1 == 12 ) goto label$2068;
		label$2070:;
		if( DTYPE$1 != 15 ) goto label$2067;
		label$2068:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov eax, ", 10, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", eax", 6, 0 );
		}
		goto label$2059;
		label$2067:;
		if( DTYPE$1 == 5 ) goto label$2072;
		label$2073:;
		if( DTYPE$1 != 6 ) goto label$2071;
		label$2072:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"movzx eax, ", 12, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", ax", 5, 0 );
		}
		goto label$2059;
		label$2071:;
		if( DTYPE$1 == 2 ) goto label$2075;
		label$2076:;
		if( DTYPE$1 == 3 ) goto label$2075;
		label$2077:;
		if( DTYPE$1 == 1 ) goto label$2075;
		label$2078:;
		if( DTYPE$1 != 4 ) goto label$2074;
		label$2075:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"BYTE PTR ", 10, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov al, ", 9, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", al", 5, 0 );
		}
		goto label$2059;
		label$2074:;
		if( DTYPE$1 != 7 ) goto label$2079;
		label$2080:;
		{
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 2 ) goto label$2082;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1, (void*)"movzx eax, ", 12, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1, (void*)", ax", 5, 0 );
			}
			goto label$2081;
			label$2082:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 4 ) goto label$2083;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov eax, ", 10, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1, (void*)", eax", 6, 0 );
			}
			goto label$2081;
			label$2083:;
			{
				FBSTRING TMP$2663$4;
				FBSTRING TMP$2666$4;
				FBSTRING TMP$2667$4;
				__builtin_memset( &TMP$2663$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2663$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2663$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2663$4 );
				__builtin_memset( &TMP$2666$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2666$4, -1, (void*)"FOUND AN ERROR : emitstore datatype WCHAR not handled", 54, 0 );
				HWRITEASM64( &TMP$2666$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2666$4 );
				__builtin_memset( &TMP$2667$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2667$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2667$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2667$4 );
			}
			label$2081:;
		}
		goto label$2059;
		label$2079:;
		{
			FBSTRING TMP$2668$3;
			FBSTRING TMP$2672$3;
			FBSTRING TMP$2673$3;
			FBSTRING TMP$2674$3;
			__builtin_memset( &TMP$2668$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2668$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2668$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2668$3 );
			__builtin_memset( &TMP$2673$3, 0, 12 );
			FBSTRING* vr$384 = fb_IntToStr( DTYPE$1 );
			__builtin_memset( &TMP$2672$3, 0, 12 );
			FBSTRING* vr$387 = fb_StrConcat( &TMP$2672$3, (void*)"FOUND AN ERROR : emitstore datatype not handled 03= ", 53, (void*)vr$384, -1 );
			fb_StrAssign( (void*)&TMP$2673$3, -1, (void*)vr$387, -1, 0 );
			HWRITEASM64( &TMP$2673$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2673$3 );
			__builtin_memset( &TMP$2674$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2674$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2674$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2674$3 );
		}
		label$2084:;
		label$2059:;
	}
	if( (-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 1)) == 0 ) goto label$2086;
	{
		int32 TMP$2675$2;
		FBSTRING TMP$2684$2;
		FBSTRING TMP$2685$2;
		FBSTRING TMP$2686$2;
		FBSTRING TMP$2687$2;
		FBSTRING TMP$2688$2;
		FBSTRING TMP$2689$2;
		FBSTRING TMP$2690$2;
		if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2087;
		int32 vr$401 = FBGETOPTION( 0 );
		TMP$2675$2 = -(vr$401 == 2);
		goto label$3121;
		label$2087:;
		TMP$2675$2 = 0;
		label$3121:;
		if( TMP$2675$2 == 0 ) goto label$2089;
		{
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) == 0 ) goto label$2091;
			{
				FBSTRING TMP$2676$4;
				FBSTRING TMP$2677$4;
				FBSTRING TMP$2678$4;
				FBSTRING TMP$2679$4;
				FBSTRING TMP$2680$4;
				int32 vr$406 = REG_FINDFREE( 999998, -1 );
				TEMPO$1 = vr$406;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2680$4, 0, 12 );
				uint8* vr$412 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2676$4, 0, 12 );
				FBSTRING* vr$416 = fb_StrConcat( &TMP$2676$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2677$4, 0, 12 );
				FBSTRING* vr$419 = fb_StrConcat( &TMP$2677$4, (void*)vr$416, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2678$4, 0, 12 );
				FBSTRING* vr$422 = fb_StrConcat( &TMP$2678$4, (void*)vr$419, -1, (void*)vr$412, 0 );
				__builtin_memset( &TMP$2679$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$2679$4, (void*)vr$422, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2680$4, -1, (void*)vr$425, -1, 0 );
				HWRITEASM64( &TMP$2680$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2680$4 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
			}
			label$2091:;
			label$2090:;
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) == 0 ) goto label$2093;
			{
				FBSTRING TMP$2681$4;
				FBSTRING TMP$2682$4;
				FBSTRING TMP$2683$4;
				__builtin_memset( &TMP$2683$4, 0, 12 );
				uint8* vr$438 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2681$4, 0, 12 );
				FBSTRING* vr$441 = fb_StrConcat( &TMP$2681$4, (void*)"mov rax, ", 10, (void*)vr$438, 0 );
				__builtin_memset( &TMP$2682$4, 0, 12 );
				FBSTRING* vr$444 = fb_StrConcat( &TMP$2682$4, (void*)vr$441, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2683$4, -1, (void*)vr$444, -1, 0 );
				HWRITEASM64( &TMP$2683$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2683$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"[rax]", 6, 0 );
			}
			label$2093:;
			label$2092:;
		}
		label$2089:;
		label$2088:;
		__builtin_memset( &TMP$2686$2, 0, 12 );
		__builtin_memset( &TMP$2684$2, 0, 12 );
		FBSTRING* vr$455 = fb_StrConcat( &TMP$2684$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2685$2, 0, 12 );
		FBSTRING* vr$458 = fb_StrConcat( &TMP$2685$2, (void*)vr$455, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2686$2, -1, (void*)vr$458, -1, 0 );
		HWRITEASM64( &TMP$2686$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2686$2 );
		__builtin_memset( &TMP$2690$2, 0, 12 );
		__builtin_memset( &TMP$2687$2, 0, 12 );
		FBSTRING* vr$468 = fb_StrConcat( &TMP$2687$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2688$2, 0, 12 );
		FBSTRING* vr$471 = fb_StrConcat( &TMP$2688$2, (void*)vr$468, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2689$2, 0, 12 );
		FBSTRING* vr$474 = fb_StrConcat( &TMP$2689$2, (void*)vr$471, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2690$2, -1, (void*)vr$474, -1, 0 );
		HWRITEASM64( &TMP$2690$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2690$2 );
	}
	goto label$2085;
	label$2086:;
	if( (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 2)) == 0 ) goto label$2094;
	{
		FBSTRING TMP$2691$2;
		FBSTRING TMP$2692$2;
		FBSTRING TMP$2693$2;
		FBSTRING TMP$2694$2;
		FBSTRING TMP$2695$2;
		FBSTRING TMP$2696$2;
		FBSTRING TMP$2697$2;
		int32 vr$484 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$484 == 0 ) goto label$2096;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2096:;
		}
		__builtin_memset( &TMP$2693$2, 0, 12 );
		__builtin_memset( &TMP$2691$2, 0, 12 );
		FBSTRING* vr$492 = fb_StrConcat( &TMP$2691$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2692$2, 0, 12 );
		FBSTRING* vr$495 = fb_StrConcat( &TMP$2692$2, (void*)vr$492, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2693$2, -1, (void*)vr$495, -1, 0 );
		HWRITEASM64( &TMP$2693$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2693$2 );
		int32 vr$500 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$500 == 0 ) goto label$2098;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2098:;
		}
		__builtin_memset( &TMP$2697$2, 0, 12 );
		__builtin_memset( &TMP$2694$2, 0, 12 );
		FBSTRING* vr$508 = fb_StrConcat( &TMP$2694$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2695$2, 0, 12 );
		FBSTRING* vr$511 = fb_StrConcat( &TMP$2695$2, (void*)vr$508, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2696$2, 0, 12 );
		FBSTRING* vr$514 = fb_StrConcat( &TMP$2696$2, (void*)vr$511, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2697$2, -1, (void*)vr$514, -1, 0 );
		HWRITEASM64( &TMP$2697$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2697$2 );
	}
	goto label$2085;
	label$2094:;
	if( ((-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 3)) | (-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 1))) == 0 ) goto label$2099;
	{
		FBSTRING TMP$2698$2;
		FBSTRING TMP$2699$2;
		FBSTRING TMP$2700$2;
		FBSTRING TMP$2701$2;
		FBSTRING TMP$2702$2;
		FBSTRING TMP$2703$2;
		FBSTRING TMP$2704$2;
		__builtin_memset( &TMP$2700$2, 0, 12 );
		__builtin_memset( &TMP$2698$2, 0, 12 );
		FBSTRING* vr$535 = fb_StrConcat( &TMP$2698$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2699$2, 0, 12 );
		FBSTRING* vr$538 = fb_StrConcat( &TMP$2699$2, (void*)vr$535, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2700$2, -1, (void*)vr$538, -1, 0 );
		HWRITEASM64( &TMP$2700$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2700$2 );
		__builtin_memset( &TMP$2704$2, 0, 12 );
		__builtin_memset( &TMP$2701$2, 0, 12 );
		FBSTRING* vr$548 = fb_StrConcat( &TMP$2701$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2702$2, 0, 12 );
		FBSTRING* vr$551 = fb_StrConcat( &TMP$2702$2, (void*)vr$548, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2703$2, 0, 12 );
		FBSTRING* vr$554 = fb_StrConcat( &TMP$2703$2, (void*)vr$551, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2704$2, -1, (void*)vr$554, -1, 0 );
		HWRITEASM64( &TMP$2704$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2704$2 );
	}
	goto label$2085;
	label$2099:;
	if( ((-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 2)) | (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 1))) == 0 ) goto label$2100;
	{
		FBSTRING TMP$2705$2;
		FBSTRING TMP$2706$2;
		FBSTRING TMP$2707$2;
		FBSTRING TMP$2708$2;
		FBSTRING TMP$2709$2;
		FBSTRING TMP$2710$2;
		FBSTRING TMP$2711$2;
		int32 vr$570 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$570 == 0 ) goto label$2102;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2102:;
		}
		__builtin_memset( &TMP$2707$2, 0, 12 );
		__builtin_memset( &TMP$2705$2, 0, 12 );
		FBSTRING* vr$578 = fb_StrConcat( &TMP$2705$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2706$2, 0, 12 );
		FBSTRING* vr$581 = fb_StrConcat( &TMP$2706$2, (void*)vr$578, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2707$2, -1, (void*)vr$581, -1, 0 );
		HWRITEASM64( &TMP$2707$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2707$2 );
		int32 vr$586 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$586 == 0 ) goto label$2104;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2104:;
		}
		__builtin_memset( &TMP$2711$2, 0, 12 );
		__builtin_memset( &TMP$2708$2, 0, 12 );
		FBSTRING* vr$594 = fb_StrConcat( &TMP$2708$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2709$2, 0, 12 );
		FBSTRING* vr$597 = fb_StrConcat( &TMP$2709$2, (void*)vr$594, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2710$2, 0, 12 );
		FBSTRING* vr$600 = fb_StrConcat( &TMP$2710$2, (void*)vr$597, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2711$2, -1, (void*)vr$600, -1, 0 );
		HWRITEASM64( &TMP$2711$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2711$2 );
	}
	goto label$2085;
	label$2100:;
	if( ((-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 2)) | (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 3))) == 0 ) goto label$2105;
	{
		FBSTRING TMP$2712$2;
		FBSTRING TMP$2713$2;
		FBSTRING TMP$2714$2;
		FBSTRING TMP$2715$2;
		FBSTRING TMP$2716$2;
		FBSTRING TMP$2717$2;
		FBSTRING TMP$2718$2;
		int32 vr$616 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$616 == 0 ) goto label$2107;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2107:;
		}
		__builtin_memset( &TMP$2714$2, 0, 12 );
		__builtin_memset( &TMP$2712$2, 0, 12 );
		FBSTRING* vr$624 = fb_StrConcat( &TMP$2712$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2713$2, 0, 12 );
		FBSTRING* vr$627 = fb_StrConcat( &TMP$2713$2, (void*)vr$624, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2714$2, -1, (void*)vr$627, -1, 0 );
		HWRITEASM64( &TMP$2714$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2714$2 );
		int32 vr$632 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$632 == 0 ) goto label$2109;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2109:;
		}
		__builtin_memset( &TMP$2718$2, 0, 12 );
		__builtin_memset( &TMP$2715$2, 0, 12 );
		FBSTRING* vr$640 = fb_StrConcat( &TMP$2715$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2716$2, 0, 12 );
		FBSTRING* vr$643 = fb_StrConcat( &TMP$2716$2, (void*)vr$640, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2717$2, 0, 12 );
		FBSTRING* vr$646 = fb_StrConcat( &TMP$2717$2, (void*)vr$643, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2718$2, -1, (void*)vr$646, -1, 0 );
		HWRITEASM64( &TMP$2718$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2718$2 );
	}
	goto label$2085;
	label$2105:;
	if( (-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 3)) == 0 ) goto label$2110;
	{
		FBSTRING TMP$2719$2;
		FBSTRING TMP$2720$2;
		FBSTRING TMP$2721$2;
		FBSTRING TMP$2722$2;
		FBSTRING TMP$2723$2;
		FBSTRING TMP$2724$2;
		FBSTRING TMP$2725$2;
		__builtin_memset( &TMP$2721$2, 0, 12 );
		__builtin_memset( &TMP$2719$2, 0, 12 );
		FBSTRING* vr$661 = fb_StrConcat( &TMP$2719$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2720$2, 0, 12 );
		FBSTRING* vr$664 = fb_StrConcat( &TMP$2720$2, (void*)vr$661, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2721$2, -1, (void*)vr$664, -1, 0 );
		HWRITEASM64( &TMP$2721$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2721$2 );
		__builtin_memset( &TMP$2725$2, 0, 12 );
		__builtin_memset( &TMP$2722$2, 0, 12 );
		FBSTRING* vr$674 = fb_StrConcat( &TMP$2722$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2723$2, 0, 12 );
		FBSTRING* vr$677 = fb_StrConcat( &TMP$2723$2, (void*)vr$674, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2724$2, 0, 12 );
		FBSTRING* vr$680 = fb_StrConcat( &TMP$2724$2, (void*)vr$677, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2725$2, -1, (void*)vr$680, -1, 0 );
		HWRITEASM64( &TMP$2725$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2725$2 );
	}
	goto label$2085;
	label$2110:;
	{
		int32 vr$685 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$685 == 0 ) goto label$2112;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2112:;
		}
		int32 vr$688 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$688 == 0 ) goto label$2114;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2114:;
		}
		if( *(int32*)V2$1 != 0 ) goto label$2116;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2726$4;
				TMP$2726$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2726$4 != 4 ) goto label$2118;
				label$2119:;
				{
					FBSTRING TMP$2728$5;
					FBSTRING TMP$2729$5;
					FBSTRING TMP$2730$5;
					FBSTRING TMP$2731$5;
					FBSTRING TMP$2732$5;
					__builtin_memset( &TMP$2732$5, 0, 12 );
					__builtin_memset( &TMP$2728$5, 0, 12 );
					FBSTRING* vr$698 = fb_StrConcat( &TMP$2728$5, (void*)"movNOTUSED? ", 13, (void*)&PREFIX$1, -1 );
					__builtin_memset( &TMP$2729$5, 0, 12 );
					FBSTRING* vr$701 = fb_StrConcat( &TMP$2729$5, (void*)vr$698, -1, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2730$5, 0, 12 );
					FBSTRING* vr$704 = fb_StrConcat( &TMP$2730$5, (void*)vr$701, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2731$5, 0, 12 );
					FBSTRING* vr$707 = fb_StrConcat( &TMP$2731$5, (void*)vr$704, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2732$5, -1, (void*)vr$707, -1, 0 );
					HWRITEASM64( &TMP$2732$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2732$5 );
				}
				goto label$2117;
				label$2118:;
				if( TMP$2726$4 == 1 ) goto label$2121;
				label$2122:;
				if( TMP$2726$4 == 2 ) goto label$2121;
				label$2123:;
				if( TMP$2726$4 != 3 ) goto label$2120;
				label$2121:;
				{
					int32 TMP$2733$5;
					if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2124;
					int32 vr$712 = FBGETOPTION( 0 );
					TMP$2733$5 = -(vr$712 == 2);
					goto label$3122;
					label$2124:;
					TMP$2733$5 = 0;
					label$3122:;
					if( TMP$2733$5 == 0 ) goto label$2126;
					{
						int32 TMP$2734$6;
						if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2127;
						TMP$2734$6 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
						goto label$3123;
						label$2127:;
						TMP$2734$6 = 0;
						label$3123:;
						if( TMP$2734$6 == 0 ) goto label$2129;
						{
							FBSTRING TMP$2735$7;
							FBSTRING TMP$2736$7;
							FBSTRING TMP$2737$7;
							FBSTRING TMP$2738$7;
							FBSTRING TMP$2739$7;
							int32 vr$719 = REG_FINDFREE( 999998, -1 );
							TEMPO$1 = vr$719;
							fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
							*(int32*)((int32)(int32*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
							__builtin_memset( &TMP$2739$7, 0, 12 );
							uint8* vr$725 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2735$7, 0, 12 );
							FBSTRING* vr$729 = fb_StrConcat( &TMP$2735$7, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2736$7, 0, 12 );
							FBSTRING* vr$732 = fb_StrConcat( &TMP$2736$7, (void*)vr$729, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2737$7, 0, 12 );
							FBSTRING* vr$735 = fb_StrConcat( &TMP$2737$7, (void*)vr$732, -1, (void*)vr$725, 0 );
							__builtin_memset( &TMP$2738$7, 0, 12 );
							FBSTRING* vr$738 = fb_StrConcat( &TMP$2738$7, (void*)vr$735, -1, (void*)"@GOTPCREL[rip]", 15 );
							fb_StrAssign( (void*)&TMP$2739$7, -1, (void*)vr$738, -1, 0 );
							HWRITEASM64( &TMP$2739$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2739$7 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
						}
						label$2129:;
						label$2128:;
					}
					label$2126:;
					label$2125:;
					{
						if( DTYPE$1 != 15 ) goto label$2131;
						label$2132:;
						{
							FBSTRING TMP$2740$7;
							FBSTRING TMP$2741$7;
							FBSTRING TMP$2742$7;
							FBSTRING TMP$2743$7;
							FBSTRING TMP$2744$7;
							__builtin_memset( &TMP$2744$7, 0, 12 );
							__builtin_memset( &TMP$2740$7, 0, 12 );
							FBSTRING* vr$752 = fb_StrConcat( &TMP$2740$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2741$7, 0, 12 );
							FBSTRING* vr$755 = fb_StrConcat( &TMP$2741$7, (void*)vr$752, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2742$7, 0, 12 );
							FBSTRING* vr$758 = fb_StrConcat( &TMP$2742$7, (void*)vr$755, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2743$7, 0, 12 );
							FBSTRING* vr$761 = fb_StrConcat( &TMP$2743$7, (void*)vr$758, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2744$7, -1, (void*)vr$761, -1, 0 );
							HWRITEASM64( &TMP$2744$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2744$7 );
						}
						goto label$2130;
						label$2131:;
						if( DTYPE$1 != 16 ) goto label$2133;
						label$2134:;
						{
							FBSTRING TMP$2745$7;
							FBSTRING TMP$2746$7;
							FBSTRING TMP$2747$7;
							FBSTRING TMP$2748$7;
							FBSTRING TMP$2749$7;
							FBSTRING TMP$2750$7;
							__builtin_memset( &TMP$2746$7, 0, 12 );
							__builtin_memset( &TMP$2745$7, 0, 12 );
							FBSTRING* vr$769 = fb_StrConcat( &TMP$2745$7, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2746$7, -1, (void*)vr$769, -1, 0 );
							HWRITEASM64( &TMP$2746$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2746$7 );
							__builtin_memset( &TMP$2750$7, 0, 12 );
							__builtin_memset( &TMP$2747$7, 0, 12 );
							FBSTRING* vr$778 = fb_StrConcat( &TMP$2747$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2748$7, 0, 12 );
							FBSTRING* vr$781 = fb_StrConcat( &TMP$2748$7, (void*)vr$778, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2749$7, 0, 12 );
							FBSTRING* vr$784 = fb_StrConcat( &TMP$2749$7, (void*)vr$781, -1, (void*)", rax", 6 );
							fb_StrAssign( (void*)&TMP$2750$7, -1, (void*)vr$784, -1, 0 );
							HWRITEASM64( &TMP$2750$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2750$7 );
						}
						goto label$2130;
						label$2133:;
						if( DTYPE$1 == 8 ) goto label$2136;
						label$2137:;
						if( DTYPE$1 == 9 ) goto label$2136;
						label$2138:;
						if( DTYPE$1 == 13 ) goto label$2136;
						label$2139:;
						if( DTYPE$1 == 14 ) goto label$2136;
						label$2140:;
						if( DTYPE$1 != 10 ) goto label$2135;
						label$2136:;
						{
							if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$2142;
							{
								FBSTRING TMP$2751$8;
								FBSTRING TMP$2752$8;
								FBSTRING TMP$2753$8;
								FBSTRING TMP$2754$8;
								FBSTRING TMP$2755$8;
								FBSTRING TMP$2756$8;
								__builtin_memset( &TMP$2752$8, 0, 12 );
								__builtin_memset( &TMP$2751$8, 0, 12 );
								FBSTRING* vr$797 = fb_StrConcat( &TMP$2751$8, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2752$8, -1, (void*)vr$797, -1, 0 );
								HWRITEASM64( &TMP$2752$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2752$8 );
								__builtin_memset( &TMP$2756$8, 0, 12 );
								__builtin_memset( &TMP$2753$8, 0, 12 );
								FBSTRING* vr$806 = fb_StrConcat( &TMP$2753$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2754$8, 0, 12 );
								FBSTRING* vr$809 = fb_StrConcat( &TMP$2754$8, (void*)vr$806, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2755$8, 0, 12 );
								FBSTRING* vr$812 = fb_StrConcat( &TMP$2755$8, (void*)vr$809, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$2756$8, -1, (void*)vr$812, -1, 0 );
								HWRITEASM64( &TMP$2756$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2756$8 );
							}
							goto label$2141;
							label$2142:;
							if( *(int64*)((uint8*)V2$1 + 24) < 2147483648ll ) goto label$2143;
							{
								FBSTRING TMP$2757$8;
								FBSTRING TMP$2758$8;
								FBSTRING TMP$2759$8;
								FBSTRING TMP$2760$8;
								FBSTRING TMP$2761$8;
								FBSTRING TMP$2762$8;
								__builtin_memset( &TMP$2758$8, 0, 12 );
								__builtin_memset( &TMP$2757$8, 0, 12 );
								FBSTRING* vr$821 = fb_StrConcat( &TMP$2757$8, (void*)"mov eax, ", 10, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2758$8, -1, (void*)vr$821, -1, 0 );
								HWRITEASM64( &TMP$2758$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2758$8 );
								__builtin_memset( &TMP$2762$8, 0, 12 );
								__builtin_memset( &TMP$2759$8, 0, 12 );
								FBSTRING* vr$830 = fb_StrConcat( &TMP$2759$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2760$8, 0, 12 );
								FBSTRING* vr$833 = fb_StrConcat( &TMP$2760$8, (void*)vr$830, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2761$8, 0, 12 );
								FBSTRING* vr$836 = fb_StrConcat( &TMP$2761$8, (void*)vr$833, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$2762$8, -1, (void*)vr$836, -1, 0 );
								HWRITEASM64( &TMP$2762$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2762$8 );
							}
							goto label$2141;
							label$2143:;
							{
								FBSTRING TMP$2763$8;
								FBSTRING TMP$2764$8;
								FBSTRING TMP$2765$8;
								FBSTRING TMP$2766$8;
								FBSTRING TMP$2767$8;
								__builtin_memset( &TMP$2767$8, 0, 12 );
								__builtin_memset( &TMP$2763$8, 0, 12 );
								FBSTRING* vr$846 = fb_StrConcat( &TMP$2763$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2764$8, 0, 12 );
								FBSTRING* vr$849 = fb_StrConcat( &TMP$2764$8, (void*)vr$846, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2765$8, 0, 12 );
								FBSTRING* vr$852 = fb_StrConcat( &TMP$2765$8, (void*)vr$849, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$2766$8, 0, 12 );
								FBSTRING* vr$855 = fb_StrConcat( &TMP$2766$8, (void*)vr$852, -1, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2767$8, -1, (void*)vr$855, -1, 0 );
								HWRITEASM64( &TMP$2767$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2767$8 );
							}
							label$2141:;
						}
						goto label$2130;
						label$2135:;
						{
							FBSTRING TMP$2768$7;
							FBSTRING TMP$2769$7;
							FBSTRING TMP$2770$7;
							FBSTRING TMP$2771$7;
							FBSTRING TMP$2772$7;
							__builtin_memset( &TMP$2772$7, 0, 12 );
							__builtin_memset( &TMP$2768$7, 0, 12 );
							FBSTRING* vr$865 = fb_StrConcat( &TMP$2768$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2769$7, 0, 12 );
							FBSTRING* vr$868 = fb_StrConcat( &TMP$2769$7, (void*)vr$865, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2770$7, 0, 12 );
							FBSTRING* vr$871 = fb_StrConcat( &TMP$2770$7, (void*)vr$868, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2771$7, 0, 12 );
							FBSTRING* vr$874 = fb_StrConcat( &TMP$2771$7, (void*)vr$871, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2772$7, -1, (void*)vr$874, -1, 0 );
							HWRITEASM64( &TMP$2772$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2772$7 );
						}
						label$2144:;
						label$2130:;
					}
				}
				goto label$2117;
				label$2120:;
				{
					FBSTRING TMP$2773$5;
					FBSTRING TMP$2776$5;
					FBSTRING TMP$2777$5;
					__builtin_memset( &TMP$2773$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2773$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2773$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2773$5 );
					__builtin_memset( &TMP$2776$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2776$5, -1, (void*)"FOUND AN ERROR : in store perhaps OFS not handled", 50, 0 );
					HWRITEASM64( &TMP$2776$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2776$5 );
					__builtin_memset( &TMP$2777$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2777$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2777$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2777$5 );
				}
				label$2145:;
				label$2117:;
			}
		}
		goto label$2115;
		label$2116:;
		if( *(int32*)V2$1 != 5 ) goto label$2146;
		{
			int32 TMP$2778$3;
			int32 TMP$2779$3;
			int32 TMP$2785$3;
			FBSTRING TMP$2792$3;
			FBSTRING TMP$2793$3;
			FBSTRING TMP$2794$3;
			if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2147;
			TMP$2778$3 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
			goto label$3124;
			label$2147:;
			TMP$2778$3 = 0;
			label$3124:;
			if( TMP$2778$3 == 0 ) goto label$2148;
			int32 vr$895 = FBGETOPTION( 0 );
			TMP$2779$3 = -(vr$895 == 2);
			goto label$3125;
			label$2148:;
			TMP$2779$3 = 0;
			label$3125:;
			if( TMP$2779$3 == 0 ) goto label$2150;
			{
				FBSTRING TMP$2780$4;
				FBSTRING TMP$2781$4;
				FBSTRING TMP$2782$4;
				__builtin_memset( &TMP$2782$4, 0, 12 );
				FBSTRING* vr$898 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$900 = fb_StrInstr( 1, (FBSTRING*)&OP2$1, (FBSTRING*)vr$898 );
				FBSTRING* vr$903 = fb_LEFT( (FBSTRING*)&OP2$1, vr$900 + -1 );
				__builtin_memset( &TMP$2780$4, 0, 12 );
				FBSTRING* vr$906 = fb_StrConcat( &TMP$2780$4, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$903, -1 );
				__builtin_memset( &TMP$2781$4, 0, 12 );
				FBSTRING* vr$909 = fb_StrConcat( &TMP$2781$4, (void*)vr$906, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2782$4, -1, (void*)vr$909, -1, 0 );
				HWRITEASM64( &TMP$2782$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2782$4 );
			}
			goto label$2149;
			label$2150:;
			{
				FBSTRING TMP$2783$4;
				FBSTRING TMP$2784$4;
				__builtin_memset( &TMP$2784$4, 0, 12 );
				__builtin_memset( &TMP$2783$4, 0, 12 );
				FBSTRING* vr$917 = fb_StrConcat( &TMP$2783$4, (void*)"lea rax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2784$4, -1, (void*)vr$917, -1, 0 );
				HWRITEASM64( &TMP$2784$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2784$4 );
			}
			label$2149:;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2151;
			int32 vr$922 = FBGETOPTION( 0 );
			TMP$2785$3 = -(vr$922 == 2);
			goto label$3126;
			label$2151:;
			TMP$2785$3 = 0;
			label$3126:;
			if( TMP$2785$3 == 0 ) goto label$2153;
			{
				int32 TMP$2786$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2154;
				TMP$2786$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3127;
				label$2154:;
				TMP$2786$4 = 0;
				label$3127:;
				if( TMP$2786$4 == 0 ) goto label$2156;
				{
					FBSTRING TMP$2787$5;
					FBSTRING TMP$2788$5;
					FBSTRING TMP$2789$5;
					FBSTRING TMP$2790$5;
					FBSTRING TMP$2791$5;
					int32 vr$929 = REG_FINDFREE( 999998, -1 );
					TEMPO$1 = vr$929;
					fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
					*(int32*)((int32)(int32*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
					__builtin_memset( &TMP$2791$5, 0, 12 );
					uint8* vr$935 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2787$5, 0, 12 );
					FBSTRING* vr$939 = fb_StrConcat( &TMP$2787$5, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
					__builtin_memset( &TMP$2788$5, 0, 12 );
					FBSTRING* vr$942 = fb_StrConcat( &TMP$2788$5, (void*)vr$939, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2789$5, 0, 12 );
					FBSTRING* vr$945 = fb_StrConcat( &TMP$2789$5, (void*)vr$942, -1, (void*)vr$935, 0 );
					__builtin_memset( &TMP$2790$5, 0, 12 );
					FBSTRING* vr$948 = fb_StrConcat( &TMP$2790$5, (void*)vr$945, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$2791$5, -1, (void*)vr$948, -1, 0 );
					HWRITEASM64( &TMP$2791$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2791$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
				}
				label$2156:;
				label$2155:;
			}
			label$2153:;
			label$2152:;
			__builtin_memset( &TMP$2794$3, 0, 12 );
			__builtin_memset( &TMP$2792$3, 0, 12 );
			FBSTRING* vr$960 = fb_StrConcat( &TMP$2792$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2793$3, 0, 12 );
			FBSTRING* vr$963 = fb_StrConcat( &TMP$2793$3, (void*)vr$960, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2794$3, -1, (void*)vr$963, -1, 0 );
			HWRITEASM64( &TMP$2794$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2794$3 );
		}
		goto label$2115;
		label$2146:;
		{
			int32 TMP$2795$3;
			FBSTRING TMP$2800$3;
			FBSTRING TMP$2801$3;
			FBSTRING TMP$2802$3;
			FBSTRING TMP$2803$3;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2157;
			int32 vr$968 = FBGETOPTION( 0 );
			TMP$2795$3 = -(vr$968 == 2);
			goto label$3128;
			label$2157:;
			TMP$2795$3 = 0;
			label$3128:;
			if( TMP$2795$3 == 0 ) goto label$2159;
			{
				int32 TMP$2796$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2160;
				TMP$2796$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3129;
				label$2160:;
				TMP$2796$4 = 0;
				label$3129:;
				if( TMP$2796$4 == 0 ) goto label$2162;
				{
					FBSTRING TMP$2797$5;
					FBSTRING TMP$2798$5;
					FBSTRING TMP$2799$5;
					__builtin_memset( &TMP$2799$5, 0, 12 );
					uint8* vr$977 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2797$5, 0, 12 );
					FBSTRING* vr$980 = fb_StrConcat( &TMP$2797$5, (void*)"mov rax, ", 10, (void*)vr$977, 0 );
					__builtin_memset( &TMP$2798$5, 0, 12 );
					FBSTRING* vr$983 = fb_StrConcat( &TMP$2798$5, (void*)vr$980, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$2799$5, -1, (void*)vr$983, -1, 0 );
					HWRITEASM64( &TMP$2799$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2799$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
				}
				label$2162:;
				label$2161:;
			}
			label$2159:;
			label$2158:;
			__builtin_memset( &TMP$2803$3, 0, 12 );
			__builtin_memset( &TMP$2800$3, 0, 12 );
			FBSTRING* vr$993 = fb_StrConcat( &TMP$2800$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2801$3, 0, 12 );
			FBSTRING* vr$996 = fb_StrConcat( &TMP$2801$3, (void*)vr$993, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2802$3, 0, 12 );
			FBSTRING* vr$999 = fb_StrConcat( &TMP$2802$3, (void*)vr$996, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$2803$3, -1, (void*)vr$999, -1, 0 );
			HWRITEASM64( &TMP$2803$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2803$3 );
		}
		label$2115:;
	}
	label$2085:;
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&CODE2$1 );
	fb_StrDelete( (FBSTRING*)&CODE1$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1954:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$2163:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	{
		$15IRVREGTYPE_ENUM TMP$2804$2;
		TMP$2804$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2804$2 != 2 ) goto label$2166;
		label$2167:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2165;
		label$2166:;
		if( TMP$2804$2 != 1 ) goto label$2168;
		label$2169:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2171;
			{
				FBSTRING TMP$2805$4;
				FBSTRING TMP$2806$4;
				FBSTRING TMP$2807$4;
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$21 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2805$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$2805$4, (void*)vr$21, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2806$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$2806$4, (void*)vr$24, -1, (void*)vr$19, -1 );
				__builtin_memset( &TMP$2807$4, 0, 12 );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$2807$4, (void*)vr$27, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$30, -1, 0 );
			}
			goto label$2170;
			label$2171:;
			{
				FBSTRING TMP$2808$4;
				FBSTRING* vr$33 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$2808$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$2808$4, (void*)vr$33, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$36, -1, 0 );
			}
			label$2170:;
		}
		goto label$2165;
		label$2168:;
		if( TMP$2804$2 != 3 ) goto label$2172;
		label$2173:;
		{
			FBSTRING TMP$2809$3;
			FBSTRING TMP$2810$3;
			FBSTRING TMP$2811$3;
			FBSTRING TMP$2812$3;
			FBSTRING TMP$2815$3;
			FBSTRING TMP$2816$3;
			int32 vr$40 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$43 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$2809$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$2809$3, (void*)vr$43, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$2810$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$2810$3, (void*)vr$46, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$40 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2811$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$2811$3, (void*)vr$49, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$52, -1, 0 );
			__builtin_memset( &TMP$2812$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2812$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2812$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2812$3 );
			__builtin_memset( &TMP$2815$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2815$3, -1, (void*)"FOUND AN ERROR : in loadres OFS not handled", 44, 0 );
			HWRITEASM64( &TMP$2815$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2815$3 );
			__builtin_memset( &TMP$2816$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2816$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2816$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2816$3 );
		}
		goto label$2165;
		label$2172:;
		if( TMP$2804$2 != 4 ) goto label$2174;
		label$2175:;
		{
			int32 vr$67 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$67 << (2 & 31))), 0, 0 );
		}
		goto label$2165;
		label$2174:;
		{
			FBSTRING TMP$2817$3;
			FBSTRING TMP$2820$3;
			FBSTRING TMP$2821$3;
			__builtin_memset( &TMP$2817$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2817$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2817$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2817$3 );
			__builtin_memset( &TMP$2820$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2820$3, -1, (void*)"FOUND AN ERROR : in loadres typ not handled", 44, 0 );
			HWRITEASM64( &TMP$2820$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2820$3 );
			__builtin_memset( &TMP$2821$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2821$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2821$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2821$3 );
		}
		label$2176:;
		label$2165:;
	}
	int32 vr$82 = HISSTRUCTIN2REGS( V1$1 );
	if( vr$82 == 0 ) goto label$2178;
	{
		int32 TMP$2822$2;
		FBSTRING TMP$2828$2;
		if( *(int32*)V1$1 != 1 ) goto label$2179;
		TMP$2822$2 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) != 0);
		goto label$3130;
		label$2179:;
		TMP$2822$2 = -1;
		label$3130:;
		if( TMP$2822$2 == 0 ) goto label$2181;
		{
			FBSTRING TMP$2823$3;
			FBSTRING TMP$2826$3;
			FBSTRING TMP$2827$3;
			__builtin_memset( &TMP$2823$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2823$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2823$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2823$3 );
			__builtin_memset( &TMP$2826$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2826$3, -1, (void*)"FOUND AN ERROR : IR_VREGTYPE not handled in emitloadres (linux)", 64, 0 );
			HWRITEASM64( &TMP$2826$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2826$3 );
			__builtin_memset( &TMP$2827$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2827$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2827$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2827$3 );
		}
		label$2181:;
		label$2180:;
		LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40);
		FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) + 8ll );
		__builtin_memset( &TMP$2828$2, 0, 12 );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$2828$2, (void*)vr$111, -1, (void*)"[rbp]", 6 );
		fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$114, -1, 0 );
		{
			uint32 TMP$2829$3;
			TMP$2829$3 = *(uint32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 32) + 132);
			goto label$2183;
			label$2184:;
			{
				FBSTRING TMP$2830$4;
				FBSTRING TMP$2831$4;
				FBSTRING TMP$2833$4;
				FBSTRING TMP$2834$4;
				__builtin_memset( &TMP$2831$4, 0, 12 );
				__builtin_memset( &TMP$2830$4, 0, 12 );
				FBSTRING* vr$123 = fb_StrConcat( &TMP$2830$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2831$4, -1, (void*)vr$123, -1, 0 );
				HWRITEASM64( &TMP$2831$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2831$4 );
				__builtin_memset( &TMP$2834$4, 0, 12 );
				__builtin_memset( &TMP$2833$4, 0, 12 );
				FBSTRING* vr$131 = fb_StrConcat( &TMP$2833$4, (void*)"mov rdx, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2834$4, -1, (void*)vr$131, -1, 0 );
				HWRITEASM64( &TMP$2834$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2834$4 );
			}
			goto label$2182;
			label$2185:;
			{
				FBSTRING TMP$2835$4;
				FBSTRING TMP$2836$4;
				__builtin_memset( &TMP$2836$4, 0, 12 );
				__builtin_memset( &TMP$2835$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$2835$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2836$4, -1, (void*)vr$139, -1, 0 );
				HWRITEASM64( &TMP$2836$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2836$4 );
				if( LGT$1 != 12 ) goto label$2187;
				{
					FBSTRING TMP$2837$5;
					FBSTRING TMP$2838$5;
					__builtin_memset( &TMP$2838$5, 0, 12 );
					__builtin_memset( &TMP$2837$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$2837$5, (void*)"movss xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2838$5, -1, (void*)vr$147, -1, 0 );
					HWRITEASM64( &TMP$2838$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2838$5 );
				}
				goto label$2186;
				label$2187:;
				{
					FBSTRING TMP$2839$5;
					FBSTRING TMP$2840$5;
					__builtin_memset( &TMP$2840$5, 0, 12 );
					__builtin_memset( &TMP$2839$5, 0, 12 );
					FBSTRING* vr$155 = fb_StrConcat( &TMP$2839$5, (void*)"movsd xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2840$5, -1, (void*)vr$155, -1, 0 );
					HWRITEASM64( &TMP$2840$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2840$5 );
				}
				label$2186:;
			}
			goto label$2182;
			label$2188:;
			{
				FBSTRING TMP$2841$4;
				FBSTRING TMP$2842$4;
				FBSTRING TMP$2843$4;
				FBSTRING TMP$2844$4;
				FBSTRING TMP$2845$4;
				FBSTRING TMP$2846$4;
				__builtin_memset( &TMP$2842$4, 0, 12 );
				__builtin_memset( &TMP$2841$4, 0, 12 );
				FBSTRING* vr$163 = fb_StrConcat( &TMP$2841$4, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2842$4, -1, (void*)vr$163, -1, 0 );
				HWRITEASM64( &TMP$2842$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2842$4 );
				__builtin_memset( &TMP$2846$4, 0, 12 );
				__builtin_memset( &TMP$2843$4, 0, 12 );
				FBSTRING* vr$171 = fb_StrConcat( &TMP$2843$4, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2844$4, 0, 12 );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$2844$4, (void*)vr$171, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2845$4, 0, 12 );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$2845$4, (void*)vr$174, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2846$4, -1, (void*)vr$177, -1, 0 );
				HWRITEASM64( &TMP$2846$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2846$4 );
			}
			goto label$2182;
			label$2189:;
			{
				FBSTRING TMP$2847$4;
				FBSTRING TMP$2848$4;
				__builtin_memset( &TMP$2848$4, 0, 12 );
				__builtin_memset( &TMP$2847$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$2847$4, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2848$4, -1, (void*)vr$185, -1, 0 );
				HWRITEASM64( &TMP$2848$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2848$4 );
				if( LGT$1 != 12 ) goto label$2191;
				{
					FBSTRING TMP$2850$5;
					FBSTRING TMP$2851$5;
					__builtin_memset( &TMP$2851$5, 0, 12 );
					__builtin_memset( &TMP$2850$5, 0, 12 );
					FBSTRING* vr$193 = fb_StrConcat( &TMP$2850$5, (void*)"movss xmm1, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2851$5, -1, (void*)vr$193, -1, 0 );
					HWRITEASM64( &TMP$2851$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2851$5 );
				}
				goto label$2190;
				label$2191:;
				{
					FBSTRING TMP$2853$5;
					FBSTRING TMP$2854$5;
					__builtin_memset( &TMP$2854$5, 0, 12 );
					__builtin_memset( &TMP$2853$5, 0, 12 );
					FBSTRING* vr$201 = fb_StrConcat( &TMP$2853$5, (void*)"movsd xmm1, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2854$5, -1, (void*)vr$201, -1, 0 );
					HWRITEASM64( &TMP$2854$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2854$5 );
				}
				label$2190:;
			}
			goto label$2182;
			label$2183:;
			static const void* tmp$4056[5] = {
				&&label$2184,
				&&label$2185,
				&&label$2182,
				&&label$2188,
				&&label$2189,
			};
			if( (TMP$2829$3 - 2u) > 4u ) goto label$2182;
			goto *tmp$4056[TMP$2829$3 - 2u];
			label$2182:;
		}
	}
	goto label$2177;
	label$2178:;
	{
		int32 TMP$2855$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$2192;
		TMP$2855$2 = 24;
		goto label$3131;
		label$2192:;
		TMP$2855$2 = DTYPE$1 & 31;
		label$3131:;
		if( TMP$2855$2 != 24 ) goto label$2194;
		{
			DTYPE$1 = 8;
			label$2194:;
		}
		int32 vr$208 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$208 == 0 ) goto label$2196;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2196:;
		}
		{
			if( DTYPE$1 != 16 ) goto label$2198;
			label$2199:;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 511) == 20 ) goto label$2201;
				{
					FBSTRING TMP$2856$5;
					FBSTRING TMP$2857$5;
					__builtin_memset( &TMP$2857$5, 0, 12 );
					__builtin_memset( &TMP$2856$5, 0, 12 );
					FBSTRING* vr$217 = fb_StrConcat( &TMP$2856$5, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$2857$5, -1, (void*)vr$217, -1, 0 );
					HWRITEASM64( &TMP$2857$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2857$5 );
				}
				goto label$2200;
				label$2201:;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2203;
					{
						if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2205;
						{
							FBSTRING TMP$2858$7;
							FBSTRING TMP$2859$7;
							__builtin_memset( &TMP$2859$7, 0, 12 );
							__builtin_memset( &TMP$2858$7, 0, 12 );
							FBSTRING* vr$227 = fb_StrConcat( &TMP$2858$7, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2859$7, -1, (void*)vr$227, -1, 0 );
							HWRITEASM64( &TMP$2859$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2859$7 );
						}
						goto label$2204;
						label$2205:;
						{
							FBSTRING TMP$2860$7;
							FBSTRING TMP$2861$7;
							__builtin_memset( &TMP$2861$7, 0, 12 );
							__builtin_memset( &TMP$2860$7, 0, 12 );
							FBSTRING* vr$235 = fb_StrConcat( &TMP$2860$7, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2861$7, -1, (void*)vr$235, -1, 0 );
							HWRITEASM64( &TMP$2861$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2861$7 );
						}
						label$2204:;
					}
					goto label$2202;
					label$2203:;
					{
						FBSTRING TMP$2862$6;
						FBSTRING TMP$2863$6;
						__builtin_memset( &TMP$2863$6, 0, 12 );
						__builtin_memset( &TMP$2862$6, 0, 12 );
						FBSTRING* vr$243 = fb_StrConcat( &TMP$2862$6, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$2863$6, -1, (void*)vr$243, -1, 0 );
						HWRITEASM64( &TMP$2863$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2863$6 );
					}
					label$2202:;
				}
				label$2200:;
			}
			goto label$2197;
			label$2198:;
			if( DTYPE$1 != 15 ) goto label$2206;
			label$2207:;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 511) == 20 ) goto label$2209;
				{
					FBSTRING TMP$2864$5;
					FBSTRING TMP$2865$5;
					__builtin_memset( &TMP$2865$5, 0, 12 );
					__builtin_memset( &TMP$2864$5, 0, 12 );
					FBSTRING* vr$254 = fb_StrConcat( &TMP$2864$5, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$2865$5, -1, (void*)vr$254, -1, 0 );
					HWRITEASM64( &TMP$2865$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2865$5 );
				}
				goto label$2208;
				label$2209:;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2211;
					{
						if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2213;
						{
							FBSTRING TMP$2866$7;
							FBSTRING TMP$2867$7;
							__builtin_memset( &TMP$2867$7, 0, 12 );
							__builtin_memset( &TMP$2866$7, 0, 12 );
							FBSTRING* vr$264 = fb_StrConcat( &TMP$2866$7, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2867$7, -1, (void*)vr$264, -1, 0 );
							HWRITEASM64( &TMP$2867$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2867$7 );
						}
						goto label$2212;
						label$2213:;
						{
							FBSTRING TMP$2868$7;
							FBSTRING TMP$2869$7;
							__builtin_memset( &TMP$2869$7, 0, 12 );
							__builtin_memset( &TMP$2868$7, 0, 12 );
							FBSTRING* vr$272 = fb_StrConcat( &TMP$2868$7, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2869$7, -1, (void*)vr$272, -1, 0 );
							HWRITEASM64( &TMP$2869$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2869$7 );
						}
						label$2212:;
					}
					goto label$2210;
					label$2211:;
					{
						FBSTRING TMP$2870$6;
						FBSTRING TMP$2871$6;
						__builtin_memset( &TMP$2871$6, 0, 12 );
						__builtin_memset( &TMP$2870$6, 0, 12 );
						FBSTRING* vr$280 = fb_StrConcat( &TMP$2870$6, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$2871$6, -1, (void*)vr$280, -1, 0 );
						HWRITEASM64( &TMP$2871$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2871$6 );
					}
					label$2210:;
				}
				label$2208:;
			}
			goto label$2197;
			label$2206:;
			if( DTYPE$1 == 8 ) goto label$2215;
			label$2216:;
			if( DTYPE$1 == 9 ) goto label$2215;
			label$2217:;
			if( DTYPE$1 == 13 ) goto label$2215;
			label$2218:;
			if( DTYPE$1 == 14 ) goto label$2215;
			label$2219:;
			if( DTYPE$1 != 10 ) goto label$2214;
			label$2215:;
			{
				FBSTRING TMP$2872$4;
				FBSTRING TMP$2873$4;
				FBSTRING TMP$2874$4;
				FBSTRING TMP$2875$4;
				__builtin_memset( &TMP$2875$4, 0, 12 );
				__builtin_memset( &TMP$2872$4, 0, 12 );
				FBSTRING* vr$288 = fb_StrConcat( &TMP$2872$4, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2873$4, 0, 12 );
				FBSTRING* vr$291 = fb_StrConcat( &TMP$2873$4, (void*)vr$288, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2874$4, 0, 12 );
				FBSTRING* vr$294 = fb_StrConcat( &TMP$2874$4, (void*)vr$291, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2875$4, -1, (void*)vr$294, -1, 0 );
				HWRITEASM64( &TMP$2875$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2875$4 );
			}
			goto label$2197;
			label$2214:;
			if( DTYPE$1 == 11 ) goto label$2221;
			label$2222:;
			if( DTYPE$1 != 12 ) goto label$2220;
			label$2221:;
			{
				FBSTRING TMP$2876$4;
				FBSTRING TMP$2877$4;
				FBSTRING TMP$2878$4;
				FBSTRING TMP$2879$4;
				__builtin_memset( &TMP$2879$4, 0, 12 );
				__builtin_memset( &TMP$2876$4, 0, 12 );
				FBSTRING* vr$302 = fb_StrConcat( &TMP$2876$4, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
				__builtin_memset( &TMP$2877$4, 0, 12 );
				FBSTRING* vr$305 = fb_StrConcat( &TMP$2877$4, (void*)vr$302, -1, (void*)", DWORD PTR ", 13 );
				__builtin_memset( &TMP$2878$4, 0, 12 );
				FBSTRING* vr$308 = fb_StrConcat( &TMP$2878$4, (void*)vr$305, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2879$4, -1, (void*)vr$308, -1, 0 );
				HWRITEASM64( &TMP$2879$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2879$4 );
			}
			goto label$2197;
			label$2220:;
			if( DTYPE$1 == 5 ) goto label$2224;
			label$2225:;
			if( DTYPE$1 != 6 ) goto label$2223;
			label$2224:;
			{
				FBSTRING TMP$2880$4;
				FBSTRING TMP$2881$4;
				FBSTRING TMP$2882$4;
				FBSTRING TMP$2883$4;
				__builtin_memset( &TMP$2883$4, 0, 12 );
				__builtin_memset( &TMP$2880$4, 0, 12 );
				FBSTRING* vr$316 = fb_StrConcat( &TMP$2880$4, (void*)"movzx ", 7, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2881$4, 0, 12 );
				FBSTRING* vr$319 = fb_StrConcat( &TMP$2881$4, (void*)vr$316, -1, (void*)", WORD PTR ", 12 );
				__builtin_memset( &TMP$2882$4, 0, 12 );
				FBSTRING* vr$322 = fb_StrConcat( &TMP$2882$4, (void*)vr$319, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2883$4, -1, (void*)vr$322, -1, 0 );
				HWRITEASM64( &TMP$2883$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2883$4 );
			}
			goto label$2197;
			label$2223:;
			if( DTYPE$1 == 2 ) goto label$2227;
			label$2228:;
			if( DTYPE$1 == 3 ) goto label$2227;
			label$2229:;
			if( DTYPE$1 == 1 ) goto label$2227;
			label$2230:;
			if( DTYPE$1 != 4 ) goto label$2226;
			label$2227:;
			{
				FBSTRING TMP$2884$4;
				FBSTRING TMP$2885$4;
				FBSTRING TMP$2886$4;
				FBSTRING TMP$2887$4;
				__builtin_memset( &TMP$2887$4, 0, 12 );
				__builtin_memset( &TMP$2884$4, 0, 12 );
				FBSTRING* vr$330 = fb_StrConcat( &TMP$2884$4, (void*)"movzx ", 7, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2885$4, 0, 12 );
				FBSTRING* vr$333 = fb_StrConcat( &TMP$2885$4, (void*)vr$330, -1, (void*)", BYTE PTR ", 12 );
				__builtin_memset( &TMP$2886$4, 0, 12 );
				FBSTRING* vr$336 = fb_StrConcat( &TMP$2886$4, (void*)vr$333, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2887$4, -1, (void*)vr$336, -1, 0 );
				HWRITEASM64( &TMP$2887$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2887$4 );
			}
			goto label$2197;
			label$2226:;
			{
				FBSTRING TMP$2888$4;
				FBSTRING TMP$2892$4;
				FBSTRING TMP$2893$4;
				FBSTRING TMP$2894$4;
				__builtin_memset( &TMP$2888$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2888$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2888$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2888$4 );
				__builtin_memset( &TMP$2893$4, 0, 12 );
				FBSTRING* vr$346 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
				__builtin_memset( &TMP$2892$4, 0, 12 );
				FBSTRING* vr$349 = fb_StrConcat( &TMP$2892$4, (void*)"FOUND AN ERROR : in loadres datatype not handled = ", 52, (void*)vr$346, -1 );
				fb_StrAssign( (void*)&TMP$2893$4, -1, (void*)vr$349, -1, 0 );
				HWRITEASM64( &TMP$2893$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2893$4 );
				__builtin_memset( &TMP$2894$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2894$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2894$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2894$4 );
			}
			label$2231:;
			label$2197:;
		}
	}
	label$2177:;
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2164:;
}

static void _EMITADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	int32 TMP$2900$1;
	label$2232:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	if( *(int32*)VR$1 == 4 ) goto label$2235;
	{
		FBSTRING TMP$2895$2;
		FBSTRING TMP$2898$2;
		FBSTRING TMP$2899$2;
		__builtin_memset( &TMP$2895$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2895$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2895$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2895$2 );
		__builtin_memset( &TMP$2898$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2898$2, -1, (void*)"FOUND AN ERROR : vr in addrof/deref not a reg", 46, 0 );
		HWRITEASM64( &TMP$2898$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2898$2 );
		__builtin_memset( &TMP$2899$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2899$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2899$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2899$2 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$2233;
	}
	label$2235:;
	label$2234:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2236;
	$19FB_CVA_LIST_TYPEDEF vr$22 = SYMBGETVALISTTYPE( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 32) );
	TMP$2900$1 = -((struct $8FBSYMBOL*)(-(vr$22 == 3) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 65536) != 0)) != (struct $8FBSYMBOL*)0u);
	goto label$3132;
	label$2236:;
	TMP$2900$1 = 0;
	label$3132:;
	if( TMP$2900$1 == 0 ) goto label$2238;
	{
		if( OP$1 != 22 ) goto label$2240;
		{
			OP$1 = 76;
		}
		label$2240:;
		label$2239:;
	}
	label$2238:;
	label$2237:;
	REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
	{
		if( OP$1 != 22 ) goto label$2242;
		label$2243:;
		{
			FBSTRING TMP$2922$3;
			FBSTRING TMP$2923$3;
			FBSTRING TMP$2924$3;
			FBSTRING TMP$2925$3;
			{
				$15IRVREGTYPE_ENUM TMP$2901$4;
				TMP$2901$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2901$4 != 2 ) goto label$2245;
				label$2246:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2244;
				label$2245:;
				if( TMP$2901$4 != 1 ) goto label$2247;
				label$2248:;
				{
					if( ((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) | -(*(int32*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == 7)) == 0 ) goto label$2250;
					{
						FBSTRING TMP$2902$6;
						FBSTRING TMP$2903$6;
						FBSTRING TMP$2904$6;
						FBSTRING* vr$48 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						uint8* vr$50 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
						__builtin_memset( &TMP$2902$6, 0, 12 );
						FBSTRING* vr$53 = fb_StrConcat( &TMP$2902$6, (void*)vr$50, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$2903$6, 0, 12 );
						FBSTRING* vr$56 = fb_StrConcat( &TMP$2903$6, (void*)vr$53, -1, (void*)vr$48, -1 );
						__builtin_memset( &TMP$2904$6, 0, 12 );
						FBSTRING* vr$59 = fb_StrConcat( &TMP$2904$6, (void*)vr$56, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$59, -1, 0 );
					}
					goto label$2249;
					label$2250:;
					{
						FBSTRING TMP$2905$6;
						FBSTRING* vr$62 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2905$6, 0, 12 );
						FBSTRING* vr$65 = fb_StrConcat( &TMP$2905$6, (void*)vr$62, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$65, -1, 0 );
					}
					label$2249:;
				}
				goto label$2244;
				label$2247:;
				if( TMP$2901$4 != 3 ) goto label$2251;
				label$2252:;
				{
					FBSTRING TMP$2906$5;
					FBSTRING TMP$2907$5;
					FBSTRING TMP$2908$5;
					int32 vr$69 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$72 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2906$5, 0, 12 );
					FBSTRING* vr$75 = fb_StrConcat( &TMP$2906$5, (void*)vr$72, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2907$5, 0, 12 );
					FBSTRING* vr$78 = fb_StrConcat( &TMP$2907$5, (void*)vr$75, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$69 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2908$5, 0, 12 );
					FBSTRING* vr$81 = fb_StrConcat( &TMP$2908$5, (void*)vr$78, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$81, -1, 0 );
				}
				goto label$2244;
				label$2251:;
				if( TMP$2901$4 != 5 ) goto label$2253;
				label$2254:;
				{
					FBSTRING TMP$2909$5;
					FBSTRING TMP$2910$5;
					FBSTRING TMP$2911$5;
					FBSTRING TMP$2912$5;
					FBSTRING TMP$2915$5;
					FBSTRING TMP$2916$5;
					FBSTRING* vr$84 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$86 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2909$5, 0, 12 );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$2909$5, (void*)vr$86, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2910$5, 0, 12 );
					FBSTRING* vr$92 = fb_StrConcat( &TMP$2910$5, (void*)vr$89, -1, (void*)vr$84, -1 );
					__builtin_memset( &TMP$2911$5, 0, 12 );
					FBSTRING* vr$95 = fb_StrConcat( &TMP$2911$5, (void*)vr$92, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$95, -1, 0 );
					__builtin_memset( &TMP$2912$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2912$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2912$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2912$5 );
					__builtin_memset( &TMP$2915$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2915$5, -1, (void*)"FOUND AN ERROR : in emitaddr OFS not handled", 45, 0 );
					HWRITEASM64( &TMP$2915$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2915$5 );
					__builtin_memset( &TMP$2916$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2916$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2916$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2916$5 );
				}
				goto label$2244;
				label$2253:;
				{
					FBSTRING TMP$2917$5;
					FBSTRING TMP$2920$5;
					FBSTRING TMP$2921$5;
					__builtin_memset( &TMP$2917$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2917$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2917$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2917$5 );
					__builtin_memset( &TMP$2920$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2920$5, -1, (void*)"FOUND AN ERROR : typ in addrof not handled", 43, 0 );
					HWRITEASM64( &TMP$2920$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2920$5 );
					__builtin_memset( &TMP$2921$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2921$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2921$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2921$5 );
				}
				label$2255:;
				label$2244:;
			}
			int32 vr$122 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$122 == 0 ) goto label$2257;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2257:;
			}
			__builtin_memset( &TMP$2925$3, 0, 12 );
			int32 vr$127 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
			__builtin_memset( &TMP$2922$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$2922$3, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$127 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2923$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$2923$3, (void*)vr$131, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2924$3, 0, 12 );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$2924$3, (void*)vr$134, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2925$3, -1, (void*)vr$137, -1, 0 );
			HWRITEASM64( &TMP$2925$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2925$3 );
		}
		goto label$2241;
		label$2242:;
		if( OP$1 != 76 ) goto label$2258;
		label$2259:;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2926$4;
				TMP$2926$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2926$4 != 2 ) goto label$2261;
				label$2262:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
					int32 vr$145 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
					if( vr$145 == 0 ) goto label$2264;
					{
						EMITOP3_OP4( &OP3$1 );
						label$2264:;
					}
				}
				goto label$2260;
				label$2261:;
				if( TMP$2926$4 != 1 ) goto label$2265;
				label$2266:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2268;
					{
						int32 TMP$2927$6;
						int32 TMP$2928$6;
						if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) == 0 ) goto label$2269;
						TMP$2927$6 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
						goto label$3133;
						label$2269:;
						TMP$2927$6 = 0;
						label$3133:;
						if( TMP$2927$6 == 0 ) goto label$2270;
						int32 vr$161 = FBGETOPTION( 0 );
						TMP$2928$6 = -(vr$161 == 2);
						goto label$3134;
						label$2270:;
						TMP$2928$6 = 0;
						label$3134:;
						if( TMP$2928$6 == 0 ) goto label$2272;
						{
							FBSTRING TMP$2929$7;
							FBSTRING TMP$2930$7;
							FBSTRING TMP$2931$7;
							__builtin_memset( &TMP$2931$7, 0, 12 );
							uint8* vr$165 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2929$7, 0, 12 );
							FBSTRING* vr$168 = fb_StrConcat( &TMP$2929$7, (void*)"mov rax, ", 10, (void*)vr$165, 0 );
							__builtin_memset( &TMP$2930$7, 0, 12 );
							FBSTRING* vr$171 = fb_StrConcat( &TMP$2930$7, (void*)vr$168, -1, (void*)"@GOTPCREL[rip]", 15 );
							fb_StrAssign( (void*)&TMP$2931$7, -1, (void*)vr$171, -1, 0 );
							HWRITEASM64( &TMP$2931$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2931$7 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
						}
						goto label$2271;
						label$2272:;
						{
							FBSTRING TMP$2932$7;
							FBSTRING TMP$2933$7;
							FBSTRING TMP$2934$7;
							FBSTRING* vr$177 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
							uint8* vr$179 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2932$7, 0, 12 );
							FBSTRING* vr$182 = fb_StrConcat( &TMP$2932$7, (void*)vr$179, 0, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$2933$7, 0, 12 );
							FBSTRING* vr$185 = fb_StrConcat( &TMP$2933$7, (void*)vr$182, -1, (void*)vr$177, -1 );
							__builtin_memset( &TMP$2934$7, 0, 12 );
							FBSTRING* vr$188 = fb_StrConcat( &TMP$2934$7, (void*)vr$185, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$188, -1, 0 );
						}
						label$2271:;
					}
					goto label$2267;
					label$2268:;
					{
						FBSTRING TMP$2935$6;
						FBSTRING* vr$191 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2935$6, 0, 12 );
						FBSTRING* vr$194 = fb_StrConcat( &TMP$2935$6, (void*)vr$191, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$194, -1, 0 );
					}
					label$2267:;
				}
				goto label$2260;
				label$2265:;
				if( TMP$2926$4 != 3 ) goto label$2273;
				label$2274:;
				{
					FBSTRING TMP$2936$5;
					FBSTRING TMP$2937$5;
					FBSTRING TMP$2938$5;
					int32 vr$198 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$201 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2936$5, 0, 12 );
					FBSTRING* vr$204 = fb_StrConcat( &TMP$2936$5, (void*)vr$201, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2937$5, 0, 12 );
					FBSTRING* vr$207 = fb_StrConcat( &TMP$2937$5, (void*)vr$204, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$198 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2938$5, 0, 12 );
					FBSTRING* vr$210 = fb_StrConcat( &TMP$2938$5, (void*)vr$207, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$210, -1, 0 );
				}
				goto label$2260;
				label$2273:;
				if( TMP$2926$4 != 5 ) goto label$2275;
				label$2276:;
				{
					FBSTRING TMP$2939$5;
					FBSTRING TMP$2940$5;
					FBSTRING TMP$2941$5;
					FBSTRING* vr$213 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$215 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2939$5, 0, 12 );
					FBSTRING* vr$218 = fb_StrConcat( &TMP$2939$5, (void*)vr$215, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2940$5, 0, 12 );
					FBSTRING* vr$221 = fb_StrConcat( &TMP$2940$5, (void*)vr$218, -1, (void*)vr$213, -1 );
					__builtin_memset( &TMP$2941$5, 0, 12 );
					FBSTRING* vr$224 = fb_StrConcat( &TMP$2941$5, (void*)vr$221, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$224, -1, 0 );
				}
				goto label$2260;
				label$2275:;
				if( TMP$2926$4 != 4 ) goto label$2277;
				label$2278:;
				{
					FBSTRING TMP$2942$5;
					FBSTRING TMP$2943$5;
					int32 vr$227 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					__builtin_memset( &TMP$2942$5, 0, 12 );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$2942$5, (void*)"[", 2, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$227 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2943$5, 0, 12 );
					FBSTRING* vr$234 = fb_StrConcat( &TMP$2943$5, (void*)vr$231, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$234, -1, 0 );
				}
				goto label$2260;
				label$2277:;
				{
					FBSTRING TMP$2944$5;
					FBSTRING TMP$2947$5;
					FBSTRING TMP$2948$5;
					__builtin_memset( &TMP$2944$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2944$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2944$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2944$5 );
					__builtin_memset( &TMP$2947$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2947$5, -1, (void*)"FOUND AN ERROR : typ in deref not handled", 42, 0 );
					HWRITEASM64( &TMP$2947$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2947$5 );
					__builtin_memset( &TMP$2948$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2948$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2948$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2948$5 );
				}
				label$2279:;
				label$2260:;
			}
			if( *(int32*)V1$1 != 5 ) goto label$2281;
			{
				FBSTRING TMP$2949$4;
				FBSTRING TMP$2950$4;
				FBSTRING TMP$2951$4;
				FBSTRING TMP$2952$4;
				__builtin_memset( &TMP$2952$4, 0, 12 );
				int32 vr$252 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$2949$4, 0, 12 );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$2949$4, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$252 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2950$4, 0, 12 );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$2950$4, (void*)vr$256, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2951$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$2951$4, (void*)vr$259, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2952$4, -1, (void*)vr$262, -1, 0 );
				HWRITEASM64( &TMP$2952$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2952$4 );
			}
			goto label$2280;
			label$2281:;
			{
				FBSTRING TMP$2953$4;
				FBSTRING TMP$2954$4;
				FBSTRING TMP$2955$4;
				FBSTRING TMP$2956$4;
				__builtin_memset( &TMP$2956$4, 0, 12 );
				int32 vr$269 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$2953$4, 0, 12 );
				FBSTRING* vr$273 = fb_StrConcat( &TMP$2953$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$269 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2954$4, 0, 12 );
				FBSTRING* vr$276 = fb_StrConcat( &TMP$2954$4, (void*)vr$273, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2955$4, 0, 12 );
				FBSTRING* vr$279 = fb_StrConcat( &TMP$2955$4, (void*)vr$276, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2956$4, -1, (void*)vr$279, -1, 0 );
				HWRITEASM64( &TMP$2956$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2956$4 );
			}
			label$2280:;
		}
		label$2258:;
		label$2241:;
	}
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2233:;
}

static void HDOCALL( struct $8FBSYMBOL* PROC$1, FBSTRING* PNAME$1, FBSTRING* FIRSTMOV$1, struct $6IRVREG* VR$1, int32 LEVEL$1, boolean VARIADIC$1, boolean CALLPTR$1 )
{
	int32 TMP$2966$1;
	int32 TMP$3351$1;
	label$2294:;
	int32 REG2$1;
	__builtin_memset( &REG2$1, 0, 4 );
	int32 CPTARG$1;
	__builtin_memset( &CPTARG$1, 0, 4 );
	int32 CPTINT$1;
	__builtin_memset( &CPTINT$1, 0, 4 );
	int32 CPTFLOAT$1;
	__builtin_memset( &CPTFLOAT$1, 0, 4 );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	struct $9IRCALLARG* ARG$1;
	struct $9IRCALLARG* PREV$1;
	struct $6IRVREG* V2$1;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	boolean TOSTACK$1;
	__builtin_memset( &TOSTACK$1, 0, 1 );
	int32 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 4 );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 OFST$1;
	__builtin_memset( &OFST$1, 0, 4 );
	FBSTRING PUSHSTR$1[301];
	__builtin_memset( (FBSTRING*)PUSHSTR$1, 0, 3612 );
	struct $8FBARRAY1I8FBSTRINGE tmp$2965$1;
	*(FBSTRING**)&tmp$2965$1 = (FBSTRING*)PUSHSTR$1;
	*(FBSTRING**)((uint8*)&tmp$2965$1 + 4) = (FBSTRING*)PUSHSTR$1;
	*(int32*)((uint8*)&tmp$2965$1 + 8) = 3612;
	*(int32*)((uint8*)&tmp$2965$1 + 12) = 12;
	*(int32*)((uint8*)&tmp$2965$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$2965$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$2965$1 + 24) = 301;
	*(int32*)((uint8*)&tmp$2965$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$2965$1 + 32) = 300;
	int32 PUSHNBSTR$1;
	__builtin_memset( &PUSHNBSTR$1, 0, 4 );
	int32 PUSHSIZE$1;
	__builtin_memset( &PUSHSIZE$1, 0, 4 );
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 4 );
	$15FB_STRUCT_INREG RETIN2REGS$1;
	__builtin_memset( &RETIN2REGS$1, 0, 4 );
	*(boolean*)((uint8*)&CTX$ + 153) = (boolean)1;
	if( CALLPTR$1 == (boolean)0 ) goto label$2297;
	{
		REG_CALLPTR( PNAME$1, FIRSTMOV$1 );
		label$2297:;
	}
	*(int64*)((uint8*)&CTX$ + 120) = *(int64*)((uint8*)&CTX$ + 96) + 104ll;
	*(int64*)((uint8*)&CTX$ + 112) = *(int64*)((uint8*)&CTX$ + 120);
	void* vr$21 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 60) );
	ARG$1 = (struct $9IRCALLARG*)vr$21;
	label$2298:;
	if( ARG$1 == (struct $9IRCALLARG*)0u ) goto label$2300;
	TMP$2966$1 = -((struct $9IRCALLARG*)-(*(int32*)((uint8*)ARG$1 + 8) == LEVEL$1) != (struct $9IRCALLARG*)0u);
	goto label$3135;
	label$2300:;
	TMP$2966$1 = 0;
	label$3135:;
	if( TMP$2966$1 == 0 ) goto label$2299;
	{
		int32 TMP$3056$2;
		void* vr$25 = LISTGETPREV( (void*)ARG$1 );
		PREV$1 = (struct $9IRCALLARG*)vr$25;
		V2$1 = *(struct $6IRVREG**)((uint8*)ARG$1 + 4);
		fb_StrAssign( (void*)&OP3$1, -1, (void*)"", 1, 0 );
		REG2$1 = -1;
		$19FB_CVA_LIST_TYPEDEF vr$33 = SYMBGETVALISTTYPE( *(int32*)((uint8*)V2$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) );
		if( (-((*(int32*)((uint8*)V2$1 + 4) & 480) == 0) & -(vr$33 == 3)) == 0 ) goto label$2302;
		{
			struct $6IRVREG* vr$36 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
			TEMPO1$1 = vr$36;
			_EMITADDR( 22, V2$1, TEMPO1$1 );
			__builtin_memcpy( V2$1, TEMPO1$1, 72 );
		}
		label$2302:;
		label$2301:;
		DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
		{
			$15IRVREGTYPE_ENUM TMP$2967$3;
			TMP$2967$3 = *($15IRVREGTYPE_ENUM*)V2$1;
			if( TMP$2967$3 != 2 ) goto label$2304;
			label$2305:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$2307;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) != (struct $8FBSYMBOL*)0u ) goto label$2309;
					{
						if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) == -1 ) goto label$2311;
						{
							FBSTRING TMP$2968$7;
							FBSTRING TMP$2969$7;
							FBSTRING TMP$2970$7;
							int32 vr$47 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
							REG2$1 = vr$47;
							FBSTRING* vr$50 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2968$7, 0, 12 );
							FBSTRING* vr$53 = fb_StrConcat( &TMP$2968$7, (void*)vr$50, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2969$7, 0, 12 );
							FBSTRING* vr$56 = fb_StrConcat( &TMP$2969$7, (void*)vr$53, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2970$7, 0, 12 );
							FBSTRING* vr$59 = fb_StrConcat( &TMP$2970$7, (void*)vr$56, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$59, -1, 0 );
						}
						goto label$2310;
						label$2311:;
						{
							FBSTRING TMP$2971$7;
							FBSTRING TMP$2972$7;
							FBSTRING TMP$2973$7;
							FBSTRING TMP$2974$7;
							FBSTRING TMP$2975$7;
							FBSTRING TMP$2976$7;
							FBSTRING TMP$2977$7;
							FBSTRING TMP$2978$7;
							int32 vr$64 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 52) + 12) );
							REG2$1 = vr$64;
							__builtin_memset( &TMP$2971$7, 0, 12 );
							FBSTRING* vr$69 = fb_StrConcat( &TMP$2971$7, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2972$7, 0, 12 );
							FBSTRING* vr$72 = fb_StrConcat( &TMP$2972$7, (void*)vr$69, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2973$7, 0, 12 );
							FBSTRING* vr$75 = fb_StrConcat( &TMP$2973$7, (void*)vr$72, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2974$7, 0, 12 );
							FBSTRING* vr$78 = fb_StrConcat( &TMP$2974$7, (void*)vr$75, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2975$7, 0, 12 );
							FBSTRING* vr$81 = fb_StrConcat( &TMP$2975$7, (void*)vr$78, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$81, -1, 0 );
							FBSTRING* vr$85 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2976$7, 0, 12 );
							FBSTRING* vr$88 = fb_StrConcat( &TMP$2976$7, (void*)vr$85, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2977$7, 0, 12 );
							FBSTRING* vr$91 = fb_StrConcat( &TMP$2977$7, (void*)vr$88, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2978$7, 0, 12 );
							FBSTRING* vr$94 = fb_StrConcat( &TMP$2978$7, (void*)vr$91, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$94, -1, 0 );
						}
						label$2310:;
					}
					goto label$2308;
					label$2309:;
					{
						uint8* vr$96 = REG_TEMPO(  );
						fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$96, 0, 0 );
						if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$2313;
						{
							FBSTRING TMP$2979$7;
							FBSTRING TMP$2980$7;
							FBSTRING TMP$2981$7;
							FBSTRING TMP$2982$7;
							FBSTRING TMP$2983$7;
							FBSTRING TMP$2984$7;
							FBSTRING TMP$2986$7;
							FBSTRING TMP$2987$7;
							FBSTRING TMP$2988$7;
							FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							uint8* vr$114 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) );
							__builtin_memset( &TMP$2979$7, 0, 12 );
							FBSTRING* vr$118 = fb_StrConcat( &TMP$2979$7, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2980$7, 0, 12 );
							FBSTRING* vr$121 = fb_StrConcat( &TMP$2980$7, (void*)vr$118, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2981$7, 0, 12 );
							FBSTRING* vr$124 = fb_StrConcat( &TMP$2981$7, (void*)vr$121, -1, (void*)vr$114, 0 );
							__builtin_memset( &TMP$2982$7, 0, 12 );
							FBSTRING* vr$127 = fb_StrConcat( &TMP$2982$7, (void*)vr$124, -1, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$2983$7, 0, 12 );
							FBSTRING* vr$130 = fb_StrConcat( &TMP$2983$7, (void*)vr$127, -1, (void*)vr$111, -1 );
							__builtin_memset( &TMP$2984$7, 0, 12 );
							FBSTRING* vr$133 = fb_StrConcat( &TMP$2984$7, (void*)vr$130, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$133, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"\x0A", 2, 0 );
							FBSTRING* vr$137 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)vr$137, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"mov ", 5, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)", ", 3, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"[", 2, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"]", 2, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)" #NO", 5, 0 );
							FBSTRING* vr$150 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2986$7, 0, 12 );
							FBSTRING* vr$153 = fb_StrConcat( &TMP$2986$7, (void*)vr$150, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2987$7, 0, 12 );
							FBSTRING* vr$156 = fb_StrConcat( &TMP$2987$7, (void*)vr$153, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2988$7, 0, 12 );
							FBSTRING* vr$159 = fb_StrConcat( &TMP$2988$7, (void*)vr$156, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$159, -1, 0 );
						}
						goto label$2312;
						label$2313:;
						{
							FBSTRING TMP$2989$7;
							FBSTRING TMP$2990$7;
							FBSTRING TMP$2991$7;
							FBSTRING TMP$2992$7;
							FBSTRING TMP$2993$7;
							FBSTRING TMP$2994$7;
							FBSTRING TMP$2995$7;
							FBSTRING* vr$163 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							__builtin_memset( &TMP$2989$7, 0, 12 );
							FBSTRING* vr$167 = fb_StrConcat( &TMP$2989$7, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2990$7, 0, 12 );
							FBSTRING* vr$170 = fb_StrConcat( &TMP$2990$7, (void*)vr$167, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2991$7, 0, 12 );
							FBSTRING* vr$173 = fb_StrConcat( &TMP$2991$7, (void*)vr$170, -1, (void*)vr$163, -1 );
							__builtin_memset( &TMP$2992$7, 0, 12 );
							FBSTRING* vr$176 = fb_StrConcat( &TMP$2992$7, (void*)vr$173, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$176, -1, 0 );
							FBSTRING* vr$180 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2993$7, 0, 12 );
							FBSTRING* vr$183 = fb_StrConcat( &TMP$2993$7, (void*)vr$180, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2994$7, 0, 12 );
							FBSTRING* vr$186 = fb_StrConcat( &TMP$2994$7, (void*)vr$183, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2995$7, 0, 12 );
							FBSTRING* vr$189 = fb_StrConcat( &TMP$2995$7, (void*)vr$186, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$189, -1, 0 );
						}
						label$2312:;
					}
					label$2308:;
				}
				goto label$2306;
				label$2307:;
				{
					uint8* vr$191 = REG_TEMPO(  );
					fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$191, 0, 0 );
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2315;
					{
						FBSTRING TMP$2996$6;
						FBSTRING TMP$2997$6;
						FBSTRING TMP$2998$6;
						FBSTRING TMP$2999$6;
						FBSTRING TMP$3000$6;
						FBSTRING TMP$3001$6;
						FBSTRING* vr$203 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						uint8* vr$205 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$2996$6, 0, 12 );
						FBSTRING* vr$209 = fb_StrConcat( &TMP$2996$6, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2997$6, 0, 12 );
						FBSTRING* vr$212 = fb_StrConcat( &TMP$2997$6, (void*)vr$209, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$2998$6, 0, 12 );
						FBSTRING* vr$215 = fb_StrConcat( &TMP$2998$6, (void*)vr$212, -1, (void*)vr$205, 0 );
						__builtin_memset( &TMP$2999$6, 0, 12 );
						FBSTRING* vr$218 = fb_StrConcat( &TMP$2999$6, (void*)vr$215, -1, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3000$6, 0, 12 );
						FBSTRING* vr$221 = fb_StrConcat( &TMP$3000$6, (void*)vr$218, -1, (void*)vr$203, -1 );
						__builtin_memset( &TMP$3001$6, 0, 12 );
						FBSTRING* vr$224 = fb_StrConcat( &TMP$3001$6, (void*)vr$221, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$224, -1, 0 );
					}
					goto label$2314;
					label$2315:;
					{
						FBSTRING TMP$3002$6;
						FBSTRING TMP$3003$6;
						FBSTRING TMP$3004$6;
						FBSTRING TMP$3005$6;
						FBSTRING* vr$227 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						__builtin_memset( &TMP$3002$6, 0, 12 );
						FBSTRING* vr$231 = fb_StrConcat( &TMP$3002$6, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$3003$6, 0, 12 );
						FBSTRING* vr$234 = fb_StrConcat( &TMP$3003$6, (void*)vr$231, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3004$6, 0, 12 );
						FBSTRING* vr$237 = fb_StrConcat( &TMP$3004$6, (void*)vr$234, -1, (void*)vr$227, -1 );
						__builtin_memset( &TMP$3005$6, 0, 12 );
						FBSTRING* vr$240 = fb_StrConcat( &TMP$3005$6, (void*)vr$237, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$240, -1, 0 );
					}
					label$2314:;
					if( *(int32*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) != 4 ) goto label$2317;
					{
						FBSTRING TMP$3006$6;
						FBSTRING TMP$3007$6;
						FBSTRING TMP$3008$6;
						FBSTRING TMP$3009$6;
						int32 vr$246 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
						REG2$1 = vr$246;
						__builtin_memset( &TMP$3006$6, 0, 12 );
						FBSTRING* vr$251 = fb_StrConcat( &TMP$3006$6, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$3007$6, 0, 12 );
						FBSTRING* vr$254 = fb_StrConcat( &TMP$3007$6, (void*)vr$251, -1, (void*)"+", 2 );
						__builtin_memset( &TMP$3008$6, 0, 12 );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$3008$6, (void*)vr$254, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$3009$6, 0, 12 );
						FBSTRING* vr$260 = fb_StrConcat( &TMP$3009$6, (void*)vr$257, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$260, -1, 0 );
					}
					goto label$2316;
					label$2317:;
					if( *(int32*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) != 1 ) goto label$2318;
					{
						if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$2320;
						{
							FBSTRING TMP$3010$7;
							FBSTRING TMP$3011$7;
							FBSTRING TMP$3012$7;
							FBSTRING TMP$3013$7;
							FBSTRING TMP$3014$7;
							FBSTRING TMP$3015$7;
							FBSTRING TMP$3016$7;
							FBSTRING TMP$3017$7;
							FBSTRING TMP$3018$7;
							FBSTRING* vr$277 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							uint8* vr$280 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) );
							FBSTRING* vr$283 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$3010$7, 0, 12 );
							FBSTRING* vr$286 = fb_StrConcat( &TMP$3010$7, (void*)"\x0A", 2, (void*)vr$283, -1 );
							__builtin_memset( &TMP$3011$7, 0, 12 );
							FBSTRING* vr$289 = fb_StrConcat( &TMP$3011$7, (void*)vr$286, -1, (void*)"add ", 5 );
							__builtin_memset( &TMP$3012$7, 0, 12 );
							FBSTRING* vr$292 = fb_StrConcat( &TMP$3012$7, (void*)vr$289, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3013$7, 0, 12 );
							FBSTRING* vr$295 = fb_StrConcat( &TMP$3013$7, (void*)vr$292, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$3014$7, 0, 12 );
							FBSTRING* vr$298 = fb_StrConcat( &TMP$3014$7, (void*)vr$295, -1, (void*)vr$280, 0 );
							__builtin_memset( &TMP$3015$7, 0, 12 );
							FBSTRING* vr$301 = fb_StrConcat( &TMP$3015$7, (void*)vr$298, -1, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$3016$7, 0, 12 );
							FBSTRING* vr$304 = fb_StrConcat( &TMP$3016$7, (void*)vr$301, -1, (void*)vr$277, -1 );
							__builtin_memset( &TMP$3017$7, 0, 12 );
							FBSTRING* vr$307 = fb_StrConcat( &TMP$3017$7, (void*)vr$304, -1, (void*)"]", 2 );
							__builtin_memset( &TMP$3018$7, 0, 12 );
							FBSTRING* vr$311 = fb_StrConcat( &TMP$3018$7, (void*)&OP3$1, -1, (void*)vr$307, -1 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$311, -1, 0 );
						}
						goto label$2319;
						label$2320:;
						{
							FBSTRING TMP$3019$7;
							FBSTRING TMP$3020$7;
							FBSTRING TMP$3021$7;
							FBSTRING TMP$3022$7;
							FBSTRING TMP$3023$7;
							FBSTRING TMP$3024$7;
							FBSTRING TMP$3025$7;
							FBSTRING* vr$315 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							FBSTRING* vr$318 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$3019$7, 0, 12 );
							FBSTRING* vr$321 = fb_StrConcat( &TMP$3019$7, (void*)"\x0A", 2, (void*)vr$318, -1 );
							__builtin_memset( &TMP$3020$7, 0, 12 );
							FBSTRING* vr$324 = fb_StrConcat( &TMP$3020$7, (void*)vr$321, -1, (void*)"add ", 5 );
							__builtin_memset( &TMP$3021$7, 0, 12 );
							FBSTRING* vr$327 = fb_StrConcat( &TMP$3021$7, (void*)vr$324, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3022$7, 0, 12 );
							FBSTRING* vr$330 = fb_StrConcat( &TMP$3022$7, (void*)vr$327, -1, (void*)",", 2 );
							__builtin_memset( &TMP$3023$7, 0, 12 );
							FBSTRING* vr$333 = fb_StrConcat( &TMP$3023$7, (void*)vr$330, -1, (void*)vr$315, -1 );
							__builtin_memset( &TMP$3024$7, 0, 12 );
							FBSTRING* vr$336 = fb_StrConcat( &TMP$3024$7, (void*)vr$333, -1, (void*)"[rbp]", 6 );
							__builtin_memset( &TMP$3025$7, 0, 12 );
							FBSTRING* vr$340 = fb_StrConcat( &TMP$3025$7, (void*)&OP3$1, -1, (void*)vr$336, -1 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$340, -1, 0 );
						}
						label$2319:;
						fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
					}
					goto label$2316;
					label$2318:;
					{
						FBSTRING TMP$3026$6;
						FBSTRING TMP$3029$6;
						FBSTRING TMP$3030$6;
						__builtin_memset( &TMP$3026$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3026$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3026$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3026$6 );
						__builtin_memset( &TMP$3029$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3029$6, -1, (void*)"FOUND AN ERROR : hdocall error with idx", 40, 0 );
						HWRITEASM64( &TMP$3029$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3029$6 );
						__builtin_memset( &TMP$3030$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3030$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3030$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3030$6 );
					}
					label$2316:;
				}
				label$2306:;
			}
			goto label$2303;
			label$2304:;
			if( TMP$2967$3 != 4 ) goto label$2321;
			label$2322:;
			{
				int32 TMP$3031$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$2323;
				TMP$3031$4 = 24;
				goto label$3136;
				label$2323:;
				TMP$3031$4 = DTYPE$1 & 31;
				label$3136:;
				if( TMP$3031$4 != 24 ) goto label$2325;
				{
					DTYPE$1 = 8;
					label$2325:;
				}
				int32 vr$361 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
				REG2$1 = vr$361;
				{
					if( DTYPE$1 == 8 ) goto label$2328;
					label$2329:;
					if( DTYPE$1 == 9 ) goto label$2328;
					label$2330:;
					if( DTYPE$1 == 13 ) goto label$2328;
					label$2331:;
					if( DTYPE$1 == 14 ) goto label$2328;
					label$2332:;
					if( DTYPE$1 == 16 ) goto label$2328;
					label$2333:;
					if( DTYPE$1 == 10 ) goto label$2328;
					label$2334:;
					if( DTYPE$1 != 20 ) goto label$2327;
					label$2328:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2326;
					label$2327:;
					if( DTYPE$1 == 11 ) goto label$2336;
					label$2337:;
					if( DTYPE$1 == 12 ) goto label$2336;
					label$2338:;
					if( DTYPE$1 != 15 ) goto label$2335;
					label$2336:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2326;
					label$2335:;
					if( DTYPE$1 == 5 ) goto label$2340;
					label$2341:;
					if( DTYPE$1 != 6 ) goto label$2339;
					label$2340:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2326;
					label$2339:;
					if( DTYPE$1 == 2 ) goto label$2343;
					label$2344:;
					if( DTYPE$1 == 3 ) goto label$2343;
					label$2345:;
					if( DTYPE$1 == 1 ) goto label$2343;
					label$2346:;
					if( DTYPE$1 != 4 ) goto label$2342;
					label$2343:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2326;
					label$2342:;
					{
						FBSTRING TMP$3032$6;
						FBSTRING TMP$3036$6;
						FBSTRING TMP$3037$6;
						FBSTRING TMP$3038$6;
						__builtin_memset( &TMP$3032$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3032$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3032$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3032$6 );
						__builtin_memset( &TMP$3037$6, 0, 12 );
						FBSTRING* vr$375 = fb_IntToStr( DTYPE$1 );
						__builtin_memset( &TMP$3036$6, 0, 12 );
						FBSTRING* vr$378 = fb_StrConcat( &TMP$3036$6, (void*)"FOUND AN ERROR : in hdocall datatype not handled 01 = ", 55, (void*)vr$375, -1 );
						fb_StrAssign( (void*)&TMP$3037$6, -1, (void*)vr$378, -1, 0 );
						HWRITEASM64( &TMP$3037$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3037$6 );
						__builtin_memset( &TMP$3038$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3038$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3038$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3038$6 );
					}
					label$2347:;
					label$2326:;
				}
			}
			goto label$2303;
			label$2321:;
			if( TMP$2967$3 != 1 ) goto label$2348;
			label$2349:;
			{
				int32 TMP$3039$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2350;
				TMP$3039$4 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) != 0);
				goto label$3137;
				label$2350:;
				TMP$3039$4 = 0;
				label$3137:;
				if( TMP$3039$4 == 0 ) goto label$2352;
				{
					FBSTRING TMP$3040$5;
					FBSTRING TMP$3041$5;
					FBSTRING TMP$3042$5;
					FBSTRING* vr$398 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					uint8* vr$400 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$3040$5, 0, 12 );
					FBSTRING* vr$403 = fb_StrConcat( &TMP$3040$5, (void*)vr$400, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3041$5, 0, 12 );
					FBSTRING* vr$406 = fb_StrConcat( &TMP$3041$5, (void*)vr$403, -1, (void*)vr$398, -1 );
					__builtin_memset( &TMP$3042$5, 0, 12 );
					FBSTRING* vr$409 = fb_StrConcat( &TMP$3042$5, (void*)vr$406, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$409, -1, 0 );
				}
				goto label$2351;
				label$2352:;
				{
					FBSTRING TMP$3043$5;
					FBSTRING* vr$412 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$3043$5, 0, 12 );
					FBSTRING* vr$415 = fb_StrConcat( &TMP$3043$5, (void*)vr$412, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$415, -1, 0 );
				}
				label$2351:;
			}
			goto label$2303;
			label$2348:;
			if( TMP$2967$3 != 3 ) goto label$2353;
			label$2354:;
			{
				FBSTRING TMP$3044$4;
				FBSTRING TMP$3045$4;
				FBSTRING TMP$3046$4;
				int32 vr$419 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
				REG2$1 = vr$419;
				FBSTRING* vr$422 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$3044$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$3044$4, (void*)vr$422, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$3045$4, 0, 12 );
				FBSTRING* vr$428 = fb_StrConcat( &TMP$3045$4, (void*)vr$425, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3046$4, 0, 12 );
				FBSTRING* vr$431 = fb_StrConcat( &TMP$3046$4, (void*)vr$428, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$431, -1, 0 );
			}
			goto label$2303;
			label$2353:;
			if( TMP$2967$3 != 5 ) goto label$2355;
			label$2356:;
			{
				FBSTRING TMP$3047$4;
				FBSTRING TMP$3048$4;
				FBSTRING TMP$3049$4;
				FBSTRING* vr$434 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				uint8* vr$436 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$3047$4, 0, 12 );
				FBSTRING* vr$439 = fb_StrConcat( &TMP$3047$4, (void*)vr$436, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3048$4, 0, 12 );
				FBSTRING* vr$442 = fb_StrConcat( &TMP$3048$4, (void*)vr$439, -1, (void*)vr$434, -1 );
				__builtin_memset( &TMP$3049$4, 0, 12 );
				FBSTRING* vr$445 = fb_StrConcat( &TMP$3049$4, (void*)vr$442, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$445, -1, 0 );
			}
			goto label$2303;
			label$2355:;
			if( TMP$2967$3 != 0 ) goto label$2357;
			label$2358:;
			{
				int32 TMP$3050$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$2359;
				TMP$3050$4 = 24;
				goto label$3138;
				label$2359:;
				TMP$3050$4 = DTYPE$1 & 31;
				label$3138:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3050$4 * 28)) != 1 ) goto label$2361;
				{
					FBSTRING* vr$451 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), DTYPE$1, (int8)0 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$451, -1, 0 );
				}
				goto label$2360;
				label$2361:;
				{
					if( DTYPE$1 != 1 ) goto label$2363;
					{
						if( *(int64*)((uint8*)V2$1 + 24) == 0ll ) goto label$2365;
						{
							*(int64*)((uint8*)V2$1 + 24) = 1ll;
						}
						label$2365:;
						label$2364:;
					}
					label$2363:;
					label$2362:;
					FBSTRING* vr$456 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$456, -1, 0 );
				}
				label$2360:;
			}
			goto label$2303;
			label$2357:;
			{
				FBSTRING TMP$3051$4;
				FBSTRING TMP$3054$4;
				FBSTRING TMP$3055$4;
				__builtin_memset( &TMP$3051$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3051$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3051$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3051$4 );
				__builtin_memset( &TMP$3054$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3054$4, -1, (void*)"FOUND AN ERROR : in hdocall typ not handled ", 45, 0 );
				HWRITEASM64( &TMP$3054$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3054$4 );
				__builtin_memset( &TMP$3055$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3055$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3055$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3055$4 );
			}
			label$2366:;
			label$2303:;
		}
		if( (DTYPE$1 & 480) == 0 ) goto label$2367;
		TMP$3056$2 = 24;
		goto label$3139;
		label$2367:;
		TMP$3056$2 = DTYPE$1 & 31;
		label$3139:;
		if( TMP$3056$2 != 24 ) goto label$2369;
		{
			DTYPE$1 = 8;
			label$2369:;
		}
		int32 vr$476 = PARAM_ANALYZE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8), &CPTARG$1, &CPTINT$1, &CPTFLOAT$1 );
		PARAMTYPE$1 = vr$476;
		if( PARAMTYPE$1 < 10 ) goto label$2371;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2373;
			{
				if( *(int32*)V2$1 != 0 ) goto label$2375;
				{
					int32 TMP$3057$5;
					PUSHSIZE$1 = PUSHSIZE$1 + 8;
					if( (DTYPE$1 & 480) == 0 ) goto label$2376;
					TMP$3057$5 = 24;
					goto label$3140;
					label$2376:;
					TMP$3057$5 = DTYPE$1 & 31;
					label$3140:;
					if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3057$5 * 28)) != 1 ) goto label$2378;
					{
						if( DTYPE$1 != 15 ) goto label$2380;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
							fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						goto label$2379;
						label$2380:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
							fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						label$2379:;
					}
					goto label$2377;
					label$2378:;
					if( (-(*(int64*)((uint8*)V2$1 + 24) >= -2147483648ll) & -(*(int64*)((uint8*)V2$1 + 24) < 2147483648ll)) == 0 ) goto label$2381;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
						fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
					}
					goto label$2377;
					label$2381:;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
						fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
					}
					label$2377:;
				}
				goto label$2374;
				label$2375:;
				{
					if( DTYPE$1 != 20 ) goto label$2383;
					{
						LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
						PUSHSIZE$1 = PUSHSIZE$1 + LGT$1;
						if( LGT$1 <= 8 ) goto label$2385;
						{
							FBSTRING TMP$3063$7;
							OFST$1 = LGT$1 % 8;
							if( OFST$1 != 0 ) goto label$2387;
							{
								OFST$1 = 8;
								label$2387:;
							}
							label$2388:;
							if( LGT$1 <= 0 ) goto label$2389;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push [rax]", 11, 0 );
								if( LGT$1 <= 8 ) goto label$2391;
								{
									PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
									fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"sub rax, 8", 11, 0 );
								}
								label$2391:;
								label$2390:;
								LGT$1 = LGT$1 + -8;
							}
							goto label$2388;
							label$2389:;
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							FBSTRING* vr$534 = fb_LongintToStr( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) - (int64)OFST$1 );
							__builtin_memset( &TMP$3063$7, 0, 12 );
							FBSTRING* vr$537 = fb_StrConcat( &TMP$3063$7, (void*)"add rax, ", 10, (void*)vr$534, -1 );
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)vr$537, -1, 0 );
							if( *(int32*)V2$1 != 4 ) goto label$2393;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							goto label$2392;
							label$2393:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"lea rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2392:;
						}
						goto label$2384;
						label$2385:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
							fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						label$2384:;
					}
					goto label$2382;
					label$2383:;
					{
						PUSHSIZE$1 = PUSHSIZE$1 + 8;
						if( *(int32*)V2$1 != 5 ) goto label$2395;
						{
							int32 TMP$3064$7;
							if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2396;
							int32 vr$563 = FBGETOPTION( 0 );
							TMP$3064$7 = -(vr$563 == 2);
							goto label$3141;
							label$2396:;
							TMP$3064$7 = 0;
							label$3141:;
							if( TMP$3064$7 == 0 ) goto label$2398;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, QWORD PTR ", 20, 0 );
								FBSTRING* vr$571 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
								int32 vr$573 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$571 );
								FBSTRING* vr$576 = fb_LEFT( (FBSTRING*)&OP1$1, vr$573 + -1 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)vr$576, -1, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"@GOTPCREL[rip]", 15, 0 );
							}
							goto label$2397;
							label$2398:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"lea rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2397:;
						}
						goto label$2394;
						label$2395:;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2400;
							{
								fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							goto label$2399;
							label$2400:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2399:;
						}
						label$2394:;
					}
					label$2382:;
					int32 vr$606 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
					if( vr$606 == 0 ) goto label$2402;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP3$1, -1, 0 );
					}
					label$2402:;
					label$2401:;
				}
				label$2374:;
			}
			goto label$2372;
			label$2373:;
			{
				int32 vr$612 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
				if( vr$612 == 0 ) goto label$2404;
				{
					EMITOP3_OP4( &OP3$1 );
					label$2404:;
				}
				if( PARAMTYPE$1 != 11 ) goto label$2406;
				{
					if( DTYPE$1 != 20 ) goto label$2408;
					{
						LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
					}
					goto label$2407;
					label$2408:;
					{
						LGT$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPE$1 * 28)) + 4);
					}
					label$2407:;
					if( *(int32*)V2$1 != 4 ) goto label$2410;
					{
						{
							uint32 TMP$3065$7;
							TMP$3065$7 = (uint32)LGT$1;
							goto label$2412;
							label$2413:;
							{
								FBSTRING TMP$3068$8;
								FBSTRING TMP$3069$8;
								FBSTRING TMP$3070$8;
								FBSTRING TMP$3071$8;
								__builtin_memset( &TMP$3071$8, 0, 12 );
								FBSTRING* vr$623 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3068$8, 0, 12 );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$3068$8, (void*)"mov byte PTR ", 14, (void*)vr$623, -1 );
								__builtin_memset( &TMP$3069$8, 0, 12 );
								FBSTRING* vr$629 = fb_StrConcat( &TMP$3069$8, (void*)vr$626, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3070$8, 0, 12 );
								FBSTRING* vr$632 = fb_StrConcat( &TMP$3070$8, (void*)vr$629, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3071$8, -1, (void*)vr$632, -1, 0 );
								HWRITEASM64( &TMP$3071$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3071$8 );
							}
							goto label$2411;
							label$2414:;
							{
								FBSTRING TMP$3072$8;
								FBSTRING TMP$3073$8;
								FBSTRING TMP$3074$8;
								FBSTRING TMP$3075$8;
								__builtin_memset( &TMP$3075$8, 0, 12 );
								FBSTRING* vr$640 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3072$8, 0, 12 );
								FBSTRING* vr$643 = fb_StrConcat( &TMP$3072$8, (void*)"mov WORD PTR ", 14, (void*)vr$640, -1 );
								__builtin_memset( &TMP$3073$8, 0, 12 );
								FBSTRING* vr$646 = fb_StrConcat( &TMP$3073$8, (void*)vr$643, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3074$8, 0, 12 );
								FBSTRING* vr$649 = fb_StrConcat( &TMP$3074$8, (void*)vr$646, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3075$8, -1, (void*)vr$649, -1, 0 );
								HWRITEASM64( &TMP$3075$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3075$8 );
							}
							goto label$2411;
							label$2415:;
							{
								FBSTRING TMP$3076$8;
								FBSTRING TMP$3077$8;
								FBSTRING TMP$3078$8;
								FBSTRING TMP$3079$8;
								__builtin_memset( &TMP$3079$8, 0, 12 );
								FBSTRING* vr$657 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3076$8, 0, 12 );
								FBSTRING* vr$660 = fb_StrConcat( &TMP$3076$8, (void*)"mov DWORD PTR ", 15, (void*)vr$657, -1 );
								__builtin_memset( &TMP$3077$8, 0, 12 );
								FBSTRING* vr$663 = fb_StrConcat( &TMP$3077$8, (void*)vr$660, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3078$8, 0, 12 );
								FBSTRING* vr$666 = fb_StrConcat( &TMP$3078$8, (void*)vr$663, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3079$8, -1, (void*)vr$666, -1, 0 );
								HWRITEASM64( &TMP$3079$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3079$8 );
							}
							goto label$2411;
							label$2416:;
							{
								FBSTRING TMP$3080$8;
								FBSTRING TMP$3081$8;
								FBSTRING TMP$3082$8;
								FBSTRING TMP$3083$8;
								__builtin_memset( &TMP$3083$8, 0, 12 );
								FBSTRING* vr$674 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3080$8, 0, 12 );
								FBSTRING* vr$677 = fb_StrConcat( &TMP$3080$8, (void*)"mov QWORD PTR ", 15, (void*)vr$674, -1 );
								__builtin_memset( &TMP$3081$8, 0, 12 );
								FBSTRING* vr$680 = fb_StrConcat( &TMP$3081$8, (void*)vr$677, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3082$8, 0, 12 );
								FBSTRING* vr$683 = fb_StrConcat( &TMP$3082$8, (void*)vr$680, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3083$8, -1, (void*)vr$683, -1, 0 );
								HWRITEASM64( &TMP$3083$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3083$8 );
							}
							goto label$2411;
							label$2412:;
							static const void* tmp$4057[8] = {
								&&label$2413,
								&&label$2414,
								&&label$2411,
								&&label$2415,
								&&label$2411,
								&&label$2411,
								&&label$2411,
								&&label$2416,
							};
							if( (TMP$3065$7 - 1u) > 7u ) goto label$2411;
							goto *tmp$4057[TMP$3065$7 - 1u];
							label$2411:;
						}
					}
					goto label$2409;
					label$2410:;
					{
						{
							uint32 TMP$3084$7;
							TMP$3084$7 = (uint32)LGT$1;
							goto label$2418;
							label$2419:;
							{
								FBSTRING TMP$3085$8;
								FBSTRING TMP$3086$8;
								FBSTRING TMP$3088$8;
								FBSTRING TMP$3089$8;
								FBSTRING TMP$3090$8;
								__builtin_memset( &TMP$3086$8, 0, 12 );
								__builtin_memset( &TMP$3085$8, 0, 12 );
								FBSTRING* vr$691 = fb_StrConcat( &TMP$3085$8, (void*)"mov al, ", 9, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3086$8, -1, (void*)vr$691, -1, 0 );
								HWRITEASM64( &TMP$3086$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3086$8 );
								__builtin_memset( &TMP$3090$8, 0, 12 );
								FBSTRING* vr$698 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3088$8, 0, 12 );
								FBSTRING* vr$701 = fb_StrConcat( &TMP$3088$8, (void*)"mov byte PTR ", 14, (void*)vr$698, -1 );
								__builtin_memset( &TMP$3089$8, 0, 12 );
								FBSTRING* vr$704 = fb_StrConcat( &TMP$3089$8, (void*)vr$701, -1, (void*)"[rsp], al", 10 );
								fb_StrAssign( (void*)&TMP$3090$8, -1, (void*)vr$704, -1, 0 );
								HWRITEASM64( &TMP$3090$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3090$8 );
							}
							goto label$2417;
							label$2420:;
							{
								FBSTRING TMP$3092$8;
								FBSTRING TMP$3093$8;
								FBSTRING TMP$3095$8;
								FBSTRING TMP$3096$8;
								FBSTRING TMP$3097$8;
								__builtin_memset( &TMP$3093$8, 0, 12 );
								__builtin_memset( &TMP$3092$8, 0, 12 );
								FBSTRING* vr$712 = fb_StrConcat( &TMP$3092$8, (void*)"mov ax, ", 9, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3093$8, -1, (void*)vr$712, -1, 0 );
								HWRITEASM64( &TMP$3093$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3093$8 );
								__builtin_memset( &TMP$3097$8, 0, 12 );
								FBSTRING* vr$719 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3095$8, 0, 12 );
								FBSTRING* vr$722 = fb_StrConcat( &TMP$3095$8, (void*)"mov WORD PTR ", 14, (void*)vr$719, -1 );
								__builtin_memset( &TMP$3096$8, 0, 12 );
								FBSTRING* vr$725 = fb_StrConcat( &TMP$3096$8, (void*)vr$722, -1, (void*)"[rsp], ax", 10 );
								fb_StrAssign( (void*)&TMP$3097$8, -1, (void*)vr$725, -1, 0 );
								HWRITEASM64( &TMP$3097$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3097$8 );
							}
							goto label$2417;
							label$2421:;
							{
								FBSTRING TMP$3098$8;
								FBSTRING TMP$3099$8;
								FBSTRING TMP$3101$8;
								FBSTRING TMP$3102$8;
								FBSTRING TMP$3103$8;
								__builtin_memset( &TMP$3099$8, 0, 12 );
								__builtin_memset( &TMP$3098$8, 0, 12 );
								FBSTRING* vr$733 = fb_StrConcat( &TMP$3098$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3099$8, -1, (void*)vr$733, -1, 0 );
								HWRITEASM64( &TMP$3099$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3099$8 );
								__builtin_memset( &TMP$3103$8, 0, 12 );
								FBSTRING* vr$740 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3101$8, 0, 12 );
								FBSTRING* vr$743 = fb_StrConcat( &TMP$3101$8, (void*)"mov DWORD PTR ", 15, (void*)vr$740, -1 );
								__builtin_memset( &TMP$3102$8, 0, 12 );
								FBSTRING* vr$746 = fb_StrConcat( &TMP$3102$8, (void*)vr$743, -1, (void*)"[rsp], eax", 11 );
								fb_StrAssign( (void*)&TMP$3103$8, -1, (void*)vr$746, -1, 0 );
								HWRITEASM64( &TMP$3103$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3103$8 );
							}
							goto label$2417;
							label$2422:;
							{
								FBSTRING TMP$3104$8;
								FBSTRING TMP$3105$8;
								FBSTRING TMP$3107$8;
								FBSTRING TMP$3108$8;
								FBSTRING TMP$3109$8;
								__builtin_memset( &TMP$3105$8, 0, 12 );
								__builtin_memset( &TMP$3104$8, 0, 12 );
								FBSTRING* vr$754 = fb_StrConcat( &TMP$3104$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3105$8, -1, (void*)vr$754, -1, 0 );
								HWRITEASM64( &TMP$3105$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3105$8 );
								__builtin_memset( &TMP$3109$8, 0, 12 );
								FBSTRING* vr$761 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3107$8, 0, 12 );
								FBSTRING* vr$764 = fb_StrConcat( &TMP$3107$8, (void*)"mov QWORD PTR ", 15, (void*)vr$761, -1 );
								__builtin_memset( &TMP$3108$8, 0, 12 );
								FBSTRING* vr$767 = fb_StrConcat( &TMP$3108$8, (void*)vr$764, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3109$8, -1, (void*)vr$767, -1, 0 );
								HWRITEASM64( &TMP$3109$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3109$8 );
							}
							goto label$2417;
							label$2418:;
							static const void* tmp$4058[8] = {
								&&label$2419,
								&&label$2420,
								&&label$2417,
								&&label$2421,
								&&label$2417,
								&&label$2417,
								&&label$2417,
								&&label$2422,
							};
							if( (TMP$3084$7 - 1u) > 7u ) goto label$2417;
							goto *tmp$4058[TMP$3084$7 - 1u];
							label$2417:;
						}
					}
					label$2409:;
				}
				goto label$2405;
				label$2406:;
				if( PARAMTYPE$1 != 12 ) goto label$2423;
				{
					FBSTRING TMP$3110$5;
					FBSTRING TMP$3111$5;
					FBSTRING TMP$3112$5;
					FBSTRING TMP$3113$5;
					FBSTRING TMP$3114$5;
					FBSTRING TMP$3115$5;
					FBSTRING TMP$3116$5;
					FBSTRING TMP$3117$5;
					FBSTRING TMP$3118$5;
					FBSTRING TMP$3119$5;
					FBSTRING TMP$3120$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					__builtin_memset( &TMP$3113$5, 0, 12 );
					__builtin_memset( &TMP$3110$5, 0, 12 );
					FBSTRING* vr$780 = fb_StrConcat( &TMP$3110$5, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
					__builtin_memset( &TMP$3111$5, 0, 12 );
					FBSTRING* vr$783 = fb_StrConcat( &TMP$3111$5, (void*)vr$780, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3112$5, 0, 12 );
					FBSTRING* vr$786 = fb_StrConcat( &TMP$3112$5, (void*)vr$783, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$3113$5, -1, (void*)vr$786, -1, 0 );
					HWRITEASM64( &TMP$3113$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3113$5 );
					*(int64*)((uint8*)&CTX$ + 120) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + *(int64*)((uint8*)&CTX$ + 120)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll);
					int64 vr$802 = __moddi3( *(int64*)((uint8*)&CTX$ + 120), 8ll );
					*(int64*)((uint8*)&CTX$ + 120) = (*(int64*)((uint8*)&CTX$ + 120) + -vr$802) + 8ll;
					fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0, 0 );
					__builtin_memset( &TMP$3115$5, 0, 12 );
					FBSTRING* vr$812 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
					__builtin_memset( &TMP$3114$5, 0, 12 );
					FBSTRING* vr$815 = fb_StrConcat( &TMP$3114$5, (void*)vr$812, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$3115$5, -1, (void*)vr$815, -1, 0 );
					MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &REGTEMPO$1, &TMP$3115$5, 1, 1 );
					fb_StrDelete( (FBSTRING*)&TMP$3115$5 );
					__builtin_memset( &TMP$3120$5, 0, 12 );
					FBSTRING* vr$825 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
					__builtin_memset( &TMP$3116$5, 0, 12 );
					FBSTRING* vr$831 = fb_StrConcat( &TMP$3116$5, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
					__builtin_memset( &TMP$3117$5, 0, 12 );
					FBSTRING* vr$834 = fb_StrConcat( &TMP$3117$5, (void*)vr$831, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3118$5, 0, 12 );
					FBSTRING* vr$837 = fb_StrConcat( &TMP$3118$5, (void*)vr$834, -1, (void*)vr$825, -1 );
					__builtin_memset( &TMP$3119$5, 0, 12 );
					FBSTRING* vr$840 = fb_StrConcat( &TMP$3119$5, (void*)vr$837, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$3120$5, -1, (void*)vr$840, -1, 0 );
					HWRITEASM64( &TMP$3120$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3120$5 );
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2425;
					{
						FBSTRING TMP$3121$6;
						FBSTRING TMP$3122$6;
						FBSTRING TMP$3123$6;
						FBSTRING TMP$3124$6;
						__builtin_memset( &TMP$3124$6, 0, 12 );
						FBSTRING* vr$854 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3121$6, 0, 12 );
						FBSTRING* vr$857 = fb_StrConcat( &TMP$3121$6, (void*)"mov QWORD PTR ", 15, (void*)vr$854, -1 );
						__builtin_memset( &TMP$3122$6, 0, 12 );
						FBSTRING* vr$860 = fb_StrConcat( &TMP$3122$6, (void*)vr$857, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3123$6, 0, 12 );
						FBSTRING* vr$863 = fb_StrConcat( &TMP$3123$6, (void*)vr$860, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3124$6, -1, (void*)vr$863, -1, 0 );
						HWRITEASM64( &TMP$3124$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3124$6 );
					}
					label$2425:;
					label$2424:;
				}
				goto label$2405;
				label$2423:;
				{
					if( *(int32*)V2$1 != 0 ) goto label$2427;
					{
						if( DTYPE$1 != 15 ) goto label$2429;
						{
							FBSTRING TMP$3129$7;
							FBSTRING TMP$3130$7;
							FBSTRING TMP$3131$7;
							if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2431;
							{
								FBSTRING TMP$3126$8;
								__builtin_memset( &TMP$3126$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3126$8, -1, (void*)"xor eax, eax", 13, 0 );
								HWRITEASM64( &TMP$3126$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3126$8 );
							}
							goto label$2430;
							label$2431:;
							{
								FBSTRING TMP$3127$8;
								FBSTRING TMP$3128$8;
								__builtin_memset( &TMP$3128$8, 0, 12 );
								__builtin_memset( &TMP$3127$8, 0, 12 );
								FBSTRING* vr$877 = fb_StrConcat( &TMP$3127$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3128$8, -1, (void*)vr$877, -1, 0 );
								HWRITEASM64( &TMP$3128$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3128$8 );
							}
							label$2430:;
							__builtin_memset( &TMP$3131$7, 0, 12 );
							FBSTRING* vr$884 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3129$7, 0, 12 );
							FBSTRING* vr$887 = fb_StrConcat( &TMP$3129$7, (void*)"mov DWORD PTR ", 15, (void*)vr$884, -1 );
							__builtin_memset( &TMP$3130$7, 0, 12 );
							FBSTRING* vr$890 = fb_StrConcat( &TMP$3130$7, (void*)vr$887, -1, (void*)"[rsp], eax", 11 );
							fb_StrAssign( (void*)&TMP$3131$7, -1, (void*)vr$890, -1, 0 );
							HWRITEASM64( &TMP$3131$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3131$7 );
						}
						goto label$2428;
						label$2429:;
						if( DTYPE$1 != 16 ) goto label$2432;
						{
							FBSTRING TMP$3136$7;
							FBSTRING TMP$3137$7;
							FBSTRING TMP$3138$7;
							if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2434;
							{
								FBSTRING TMP$3133$8;
								__builtin_memset( &TMP$3133$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3133$8, -1, (void*)"xor rax, rax", 13, 0 );
								HWRITEASM64( &TMP$3133$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3133$8 );
							}
							goto label$2433;
							label$2434:;
							{
								FBSTRING TMP$3134$8;
								FBSTRING TMP$3135$8;
								__builtin_memset( &TMP$3135$8, 0, 12 );
								__builtin_memset( &TMP$3134$8, 0, 12 );
								FBSTRING* vr$903 = fb_StrConcat( &TMP$3134$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3135$8, -1, (void*)vr$903, -1, 0 );
								HWRITEASM64( &TMP$3135$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3135$8 );
							}
							label$2433:;
							__builtin_memset( &TMP$3138$7, 0, 12 );
							FBSTRING* vr$910 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3136$7, 0, 12 );
							FBSTRING* vr$913 = fb_StrConcat( &TMP$3136$7, (void*)"mov QWORD PTR ", 15, (void*)vr$910, -1 );
							__builtin_memset( &TMP$3137$7, 0, 12 );
							FBSTRING* vr$916 = fb_StrConcat( &TMP$3137$7, (void*)vr$913, -1, (void*)"[rsp], rax", 11 );
							fb_StrAssign( (void*)&TMP$3138$7, -1, (void*)vr$916, -1, 0 );
							HWRITEASM64( &TMP$3138$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3138$7 );
						}
						goto label$2428;
						label$2432:;
						{
							if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$2436;
							{
								FBSTRING TMP$3139$8;
								FBSTRING TMP$3140$8;
								FBSTRING TMP$3141$8;
								FBSTRING TMP$3142$8;
								FBSTRING TMP$3143$8;
								__builtin_memset( &TMP$3140$8, 0, 12 );
								__builtin_memset( &TMP$3139$8, 0, 12 );
								FBSTRING* vr$929 = fb_StrConcat( &TMP$3139$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3140$8, -1, (void*)vr$929, -1, 0 );
								HWRITEASM64( &TMP$3140$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3140$8 );
								__builtin_memset( &TMP$3143$8, 0, 12 );
								FBSTRING* vr$936 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3141$8, 0, 12 );
								FBSTRING* vr$939 = fb_StrConcat( &TMP$3141$8, (void*)"mov QWORD PTR ", 15, (void*)vr$936, -1 );
								__builtin_memset( &TMP$3142$8, 0, 12 );
								FBSTRING* vr$942 = fb_StrConcat( &TMP$3142$8, (void*)vr$939, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3143$8, -1, (void*)vr$942, -1, 0 );
								HWRITEASM64( &TMP$3143$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3143$8 );
							}
							goto label$2435;
							label$2436:;
							if( *(int64*)((uint8*)V2$1 + 24) < 2147483648ll ) goto label$2437;
							{
								FBSTRING TMP$3144$8;
								FBSTRING TMP$3145$8;
								FBSTRING TMP$3146$8;
								FBSTRING TMP$3147$8;
								FBSTRING TMP$3148$8;
								__builtin_memset( &TMP$3145$8, 0, 12 );
								__builtin_memset( &TMP$3144$8, 0, 12 );
								FBSTRING* vr$951 = fb_StrConcat( &TMP$3144$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3145$8, -1, (void*)vr$951, -1, 0 );
								HWRITEASM64( &TMP$3145$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3145$8 );
								__builtin_memset( &TMP$3148$8, 0, 12 );
								FBSTRING* vr$958 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3146$8, 0, 12 );
								FBSTRING* vr$961 = fb_StrConcat( &TMP$3146$8, (void*)"mov QWORD PTR ", 15, (void*)vr$958, -1 );
								__builtin_memset( &TMP$3147$8, 0, 12 );
								FBSTRING* vr$964 = fb_StrConcat( &TMP$3147$8, (void*)vr$961, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3148$8, -1, (void*)vr$964, -1, 0 );
								HWRITEASM64( &TMP$3148$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3148$8 );
							}
							goto label$2435;
							label$2437:;
							{
								FBSTRING TMP$3149$8;
								FBSTRING TMP$3150$8;
								FBSTRING TMP$3151$8;
								FBSTRING TMP$3152$8;
								__builtin_memset( &TMP$3152$8, 0, 12 );
								FBSTRING* vr$972 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3149$8, 0, 12 );
								FBSTRING* vr$975 = fb_StrConcat( &TMP$3149$8, (void*)"mov QWORD PTR ", 15, (void*)vr$972, -1 );
								__builtin_memset( &TMP$3150$8, 0, 12 );
								FBSTRING* vr$978 = fb_StrConcat( &TMP$3150$8, (void*)vr$975, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3151$8, 0, 12 );
								FBSTRING* vr$981 = fb_StrConcat( &TMP$3151$8, (void*)vr$978, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3152$8, -1, (void*)vr$981, -1, 0 );
								HWRITEASM64( &TMP$3152$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3152$8 );
							}
							label$2435:;
						}
						label$2428:;
					}
					goto label$2426;
					label$2427:;
					{
						if( *(int32*)V2$1 != 4 ) goto label$2439;
						{
							if( DTYPE$1 != 20 ) goto label$2441;
							{
								FBSTRING TMP$3153$8;
								FBSTRING TMP$3154$8;
								FBSTRING TMP$3155$8;
								FBSTRING TMP$3156$8;
								FBSTRING TMP$3157$8;
								FBSTRING TMP$3158$8;
								FBSTRING TMP$3159$8;
								FBSTRING TMP$3160$8;
								*(int64*)((uint8*)&CTX$ + 120) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + *(int64*)((uint8*)&CTX$ + 120)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll);
								int64 vr$998 = __moddi3( *(int64*)((uint8*)&CTX$ + 120), 8ll );
								*(int64*)((uint8*)&CTX$ + 120) = (*(int64*)((uint8*)&CTX$ + 120) + -vr$998) + 8ll;
								__builtin_memset( &TMP$3154$8, 0, 12 );
								FBSTRING* vr$1004 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3153$8, 0, 12 );
								FBSTRING* vr$1007 = fb_StrConcat( &TMP$3153$8, (void*)vr$1004, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3154$8, -1, (void*)vr$1007, -1, 0 );
								MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &OP1$1, &TMP$3154$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3154$8 );
								__builtin_memset( &TMP$3157$8, 0, 12 );
								FBSTRING* vr$1017 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3155$8, 0, 12 );
								FBSTRING* vr$1020 = fb_StrConcat( &TMP$3155$8, (void*)"mov rax, ", 10, (void*)vr$1017, -1 );
								__builtin_memset( &TMP$3156$8, 0, 12 );
								FBSTRING* vr$1023 = fb_StrConcat( &TMP$3156$8, (void*)vr$1020, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3157$8, -1, (void*)vr$1023, -1, 0 );
								HWRITEASM64( &TMP$3157$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3157$8 );
								__builtin_memset( &TMP$3160$8, 0, 12 );
								FBSTRING* vr$1030 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3158$8, 0, 12 );
								FBSTRING* vr$1033 = fb_StrConcat( &TMP$3158$8, (void*)"mov ", 5, (void*)vr$1030, -1 );
								__builtin_memset( &TMP$3159$8, 0, 12 );
								FBSTRING* vr$1036 = fb_StrConcat( &TMP$3159$8, (void*)vr$1033, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3160$8, -1, (void*)vr$1036, -1, 0 );
								HWRITEASM64( &TMP$3160$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3160$8 );
							}
							goto label$2440;
							label$2441:;
							{
								FBSTRING TMP$3161$8;
								FBSTRING TMP$3162$8;
								FBSTRING TMP$3163$8;
								FBSTRING TMP$3164$8;
								__builtin_memset( &TMP$3164$8, 0, 12 );
								FBSTRING* vr$1044 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3161$8, 0, 12 );
								FBSTRING* vr$1047 = fb_StrConcat( &TMP$3161$8, (void*)"mov ", 5, (void*)vr$1044, -1 );
								__builtin_memset( &TMP$3162$8, 0, 12 );
								FBSTRING* vr$1050 = fb_StrConcat( &TMP$3162$8, (void*)vr$1047, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3163$8, 0, 12 );
								FBSTRING* vr$1053 = fb_StrConcat( &TMP$3163$8, (void*)vr$1050, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3164$8, -1, (void*)vr$1053, -1, 0 );
								HWRITEASM64( &TMP$3164$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3164$8 );
							}
							label$2440:;
						}
						goto label$2438;
						label$2439:;
						{
							if( (-(*(int32*)V2$1 == 5) | -(DTYPE$1 == 20)) == 0 ) goto label$2443;
							{
								int32 TMP$3165$8;
								int32 TMP$3166$8;
								if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2444;
								TMP$3165$8 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
								goto label$3142;
								label$2444:;
								TMP$3165$8 = 0;
								label$3142:;
								if( TMP$3165$8 == 0 ) goto label$2445;
								int32 vr$1065 = FBGETOPTION( 0 );
								TMP$3166$8 = -(vr$1065 == 2);
								goto label$3143;
								label$2445:;
								TMP$3166$8 = 0;
								label$3143:;
								if( TMP$3166$8 == 0 ) goto label$2447;
								{
									FBSTRING TMP$3167$9;
									FBSTRING TMP$3168$9;
									FBSTRING TMP$3169$9;
									__builtin_memset( &TMP$3169$9, 0, 12 );
									FBSTRING* vr$1068 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
									int32 vr$1070 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1068 );
									FBSTRING* vr$1073 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1070 + -1 );
									__builtin_memset( &TMP$3167$9, 0, 12 );
									FBSTRING* vr$1076 = fb_StrConcat( &TMP$3167$9, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$1073, -1 );
									__builtin_memset( &TMP$3168$9, 0, 12 );
									FBSTRING* vr$1079 = fb_StrConcat( &TMP$3168$9, (void*)vr$1076, -1, (void*)"@GOTPCREL[rip]", 15 );
									fb_StrAssign( (void*)&TMP$3169$9, -1, (void*)vr$1079, -1, 0 );
									HWRITEASM64( &TMP$3169$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3169$9 );
								}
								goto label$2446;
								label$2447:;
								{
									FBSTRING TMP$3170$9;
									FBSTRING TMP$3171$9;
									__builtin_memset( &TMP$3171$9, 0, 12 );
									__builtin_memset( &TMP$3170$9, 0, 12 );
									FBSTRING* vr$1087 = fb_StrConcat( &TMP$3170$9, (void*)"lea rax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3171$9, -1, (void*)vr$1087, -1, 0 );
									HWRITEASM64( &TMP$3171$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3171$9 );
								}
								label$2446:;
							}
							goto label$2442;
							label$2443:;
							{
								FBSTRING TMP$3172$8;
								FBSTRING TMP$3173$8;
								__builtin_memset( &TMP$3173$8, 0, 12 );
								__builtin_memset( &TMP$3172$8, 0, 12 );
								FBSTRING* vr$1095 = fb_StrConcat( &TMP$3172$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3173$8, -1, (void*)vr$1095, -1, 0 );
								HWRITEASM64( &TMP$3173$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3173$8 );
							}
							label$2442:;
							if( DTYPE$1 != 20 ) goto label$2449;
							{
								FBSTRING TMP$3174$8;
								FBSTRING TMP$3175$8;
								FBSTRING TMP$3176$8;
								FBSTRING TMP$3177$8;
								FBSTRING TMP$3178$8;
								FBSTRING TMP$3179$8;
								FBSTRING TMP$3180$8;
								FBSTRING TMP$3181$8;
								FBSTRING TMP$3182$8;
								*(int64*)((uint8*)&CTX$ + 120) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + *(int64*)((uint8*)&CTX$ + 120)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll);
								int64 vr$1111 = __moddi3( *(int64*)((uint8*)&CTX$ + 120), 8ll );
								*(int64*)((uint8*)&CTX$ + 120) = (*(int64*)((uint8*)&CTX$ + 120) + -vr$1111) + 8ll;
								__builtin_memset( &TMP$3176$8, 0, 12 );
								FBSTRING* vr$1117 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3175$8, 0, 12 );
								FBSTRING* vr$1120 = fb_StrConcat( &TMP$3175$8, (void*)vr$1117, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3176$8, -1, (void*)vr$1120, -1, 0 );
								__builtin_memset( &TMP$3174$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3174$8, -1, (void*)"rax", 4, 0 );
								MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &TMP$3174$8, &TMP$3176$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3176$8 );
								fb_StrDelete( (FBSTRING*)&TMP$3174$8 );
								__builtin_memset( &TMP$3179$8, 0, 12 );
								FBSTRING* vr$1133 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3177$8, 0, 12 );
								FBSTRING* vr$1136 = fb_StrConcat( &TMP$3177$8, (void*)"lea rax, ", 10, (void*)vr$1133, -1 );
								__builtin_memset( &TMP$3178$8, 0, 12 );
								FBSTRING* vr$1139 = fb_StrConcat( &TMP$3178$8, (void*)vr$1136, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3179$8, -1, (void*)vr$1139, -1, 0 );
								HWRITEASM64( &TMP$3179$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3179$8 );
								__builtin_memset( &TMP$3182$8, 0, 12 );
								FBSTRING* vr$1146 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3180$8, 0, 12 );
								FBSTRING* vr$1149 = fb_StrConcat( &TMP$3180$8, (void*)"mov QWORD PTR ", 15, (void*)vr$1146, -1 );
								__builtin_memset( &TMP$3181$8, 0, 12 );
								FBSTRING* vr$1152 = fb_StrConcat( &TMP$3181$8, (void*)vr$1149, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3182$8, -1, (void*)vr$1152, -1, 0 );
								HWRITEASM64( &TMP$3182$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3182$8 );
							}
							goto label$2448;
							label$2449:;
							{
								FBSTRING TMP$3183$8;
								FBSTRING TMP$3184$8;
								FBSTRING TMP$3185$8;
								__builtin_memset( &TMP$3185$8, 0, 12 );
								FBSTRING* vr$1159 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3183$8, 0, 12 );
								FBSTRING* vr$1162 = fb_StrConcat( &TMP$3183$8, (void*)"mov QWORD PTR ", 15, (void*)vr$1159, -1 );
								__builtin_memset( &TMP$3184$8, 0, 12 );
								FBSTRING* vr$1165 = fb_StrConcat( &TMP$3184$8, (void*)vr$1162, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3185$8, -1, (void*)vr$1165, -1, 0 );
								HWRITEASM64( &TMP$3185$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3185$8 );
							}
							label$2448:;
						}
						label$2438:;
					}
					label$2426:;
				}
				label$2405:;
			}
			label$2372:;
		}
		goto label$2370;
		label$2371:;
		{
			int32 vr$1170 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$1170 == 0 ) goto label$2451;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2451:;
			}
			if( *(int32*)V2$1 != 0 ) goto label$2453;
			{
				if( DTYPE$1 != 15 ) goto label$2455;
				{
					FBSTRING TMP$3189$5;
					FBSTRING TMP$3190$5;
					FBSTRING TMP$3191$5;
					if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2457;
					{
						FBSTRING TMP$3186$6;
						__builtin_memset( &TMP$3186$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3186$6, -1, (void*)"xor eax, eax", 13, 0 );
						HWRITEASM64( &TMP$3186$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3186$6 );
					}
					goto label$2456;
					label$2457:;
					{
						FBSTRING TMP$3187$6;
						FBSTRING TMP$3188$6;
						__builtin_memset( &TMP$3188$6, 0, 12 );
						__builtin_memset( &TMP$3187$6, 0, 12 );
						FBSTRING* vr$1182 = fb_StrConcat( &TMP$3187$6, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3188$6, -1, (void*)vr$1182, -1, 0 );
						HWRITEASM64( &TMP$3188$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3188$6 );
					}
					label$2456:;
					__builtin_memset( &TMP$3191$5, 0, 12 );
					FBSTRING* vr$1188 = fb_IntToStr( CPTFLOAT$1 + -1 );
					__builtin_memset( &TMP$3189$5, 0, 12 );
					FBSTRING* vr$1191 = fb_StrConcat( &TMP$3189$5, (void*)"movd xmm", 9, (void*)vr$1188, -1 );
					__builtin_memset( &TMP$3190$5, 0, 12 );
					FBSTRING* vr$1194 = fb_StrConcat( &TMP$3190$5, (void*)vr$1191, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$3191$5, -1, (void*)vr$1194, -1, 0 );
					HWRITEASM64( &TMP$3191$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3191$5 );
				}
				goto label$2454;
				label$2455:;
				if( DTYPE$1 != 16 ) goto label$2458;
				{
					FBSTRING TMP$3195$5;
					FBSTRING TMP$3196$5;
					FBSTRING TMP$3197$5;
					if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2460;
					{
						FBSTRING TMP$3192$6;
						__builtin_memset( &TMP$3192$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3192$6, -1, (void*)"xor eax, eax", 13, 0 );
						HWRITEASM64( &TMP$3192$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3192$6 );
					}
					goto label$2459;
					label$2460:;
					{
						FBSTRING TMP$3193$6;
						FBSTRING TMP$3194$6;
						__builtin_memset( &TMP$3194$6, 0, 12 );
						__builtin_memset( &TMP$3193$6, 0, 12 );
						FBSTRING* vr$1207 = fb_StrConcat( &TMP$3193$6, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3194$6, -1, (void*)vr$1207, -1, 0 );
						HWRITEASM64( &TMP$3194$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3194$6 );
					}
					label$2459:;
					__builtin_memset( &TMP$3197$5, 0, 12 );
					FBSTRING* vr$1213 = fb_IntToStr( CPTFLOAT$1 + -1 );
					__builtin_memset( &TMP$3195$5, 0, 12 );
					FBSTRING* vr$1216 = fb_StrConcat( &TMP$3195$5, (void*)"movq xmm", 9, (void*)vr$1213, -1 );
					__builtin_memset( &TMP$3196$5, 0, 12 );
					FBSTRING* vr$1219 = fb_StrConcat( &TMP$3196$5, (void*)vr$1216, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$3197$5, -1, (void*)vr$1219, -1, 0 );
					HWRITEASM64( &TMP$3197$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3197$5 );
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2462;
					{
						FBSTRING TMP$3198$6;
						FBSTRING TMP$3199$6;
						FBSTRING TMP$3200$6;
						__builtin_memset( &TMP$3200$6, 0, 12 );
						FBSTRING* vr$1230 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3198$6, 0, 12 );
						FBSTRING* vr$1233 = fb_StrConcat( &TMP$3198$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1230, -1 );
						__builtin_memset( &TMP$3199$6, 0, 12 );
						FBSTRING* vr$1236 = fb_StrConcat( &TMP$3199$6, (void*)vr$1233, -1, (void*)"[rsp], rax", 11 );
						fb_StrAssign( (void*)&TMP$3200$6, -1, (void*)vr$1236, -1, 0 );
						HWRITEASM64( &TMP$3200$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3200$6 );
					}
					label$2462:;
					label$2461:;
				}
				goto label$2454;
				label$2458:;
				{
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					if( *(int64*)((uint8*)V2$1 + 24) != 0ll ) goto label$2464;
					{
						FBSTRING TMP$3201$6;
						FBSTRING TMP$3202$6;
						FBSTRING TMP$3203$6;
						FBSTRING TMP$3204$6;
						__builtin_memset( &TMP$3204$6, 0, 12 );
						__builtin_memset( &TMP$3201$6, 0, 12 );
						FBSTRING* vr$1252 = fb_StrConcat( &TMP$3201$6, (void*)"xor ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3202$6, 0, 12 );
						FBSTRING* vr$1255 = fb_StrConcat( &TMP$3202$6, (void*)vr$1252, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3203$6, 0, 12 );
						FBSTRING* vr$1258 = fb_StrConcat( &TMP$3203$6, (void*)vr$1255, -1, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3204$6, -1, (void*)vr$1258, -1, 0 );
						HWRITEASM64( &TMP$3204$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3204$6 );
					}
					goto label$2463;
					label$2464:;
					if( (-(*(int64*)((uint8*)V2$1 + 24) > 0ll) & -(*(int64*)((uint8*)V2$1 + 24) <= 2147483647ll)) == 0 ) goto label$2465;
					{
						FBSTRING TMP$3205$6;
						FBSTRING TMP$3206$6;
						FBSTRING TMP$3207$6;
						FBSTRING TMP$3208$6;
						__builtin_memset( &TMP$3208$6, 0, 12 );
						__builtin_memset( &TMP$3205$6, 0, 12 );
						FBSTRING* vr$1274 = fb_StrConcat( &TMP$3205$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3206$6, 0, 12 );
						FBSTRING* vr$1277 = fb_StrConcat( &TMP$3206$6, (void*)vr$1274, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3207$6, 0, 12 );
						FBSTRING* vr$1280 = fb_StrConcat( &TMP$3207$6, (void*)vr$1277, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3208$6, -1, (void*)vr$1280, -1, 0 );
						HWRITEASM64( &TMP$3208$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3208$6 );
					}
					goto label$2463;
					label$2465:;
					{
						{
							if( DTYPE$1 == 8 ) goto label$2468;
							label$2469:;
							if( DTYPE$1 == 9 ) goto label$2468;
							label$2470:;
							if( DTYPE$1 == 13 ) goto label$2468;
							label$2471:;
							if( DTYPE$1 == 14 ) goto label$2468;
							label$2472:;
							if( DTYPE$1 != 10 ) goto label$2467;
							label$2468:;
							{
								FBSTRING TMP$3209$8;
								FBSTRING TMP$3210$8;
								FBSTRING TMP$3211$8;
								FBSTRING TMP$3212$8;
								__builtin_memset( &TMP$3212$8, 0, 12 );
								__builtin_memset( &TMP$3209$8, 0, 12 );
								FBSTRING* vr$1291 = fb_StrConcat( &TMP$3209$8, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3210$8, 0, 12 );
								FBSTRING* vr$1294 = fb_StrConcat( &TMP$3210$8, (void*)vr$1291, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3211$8, 0, 12 );
								FBSTRING* vr$1297 = fb_StrConcat( &TMP$3211$8, (void*)vr$1294, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3212$8, -1, (void*)vr$1297, -1, 0 );
								HWRITEASM64( &TMP$3212$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3212$8 );
							}
							goto label$2466;
							label$2467:;
							{
								FBSTRING TMP$3213$8;
								FBSTRING TMP$3214$8;
								FBSTRING TMP$3215$8;
								FBSTRING TMP$3216$8;
								__builtin_memset( &TMP$3216$8, 0, 12 );
								__builtin_memset( &TMP$3213$8, 0, 12 );
								FBSTRING* vr$1308 = fb_StrConcat( &TMP$3213$8, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3214$8, 0, 12 );
								FBSTRING* vr$1311 = fb_StrConcat( &TMP$3214$8, (void*)vr$1308, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3215$8, 0, 12 );
								FBSTRING* vr$1314 = fb_StrConcat( &TMP$3215$8, (void*)vr$1311, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3216$8, -1, (void*)vr$1314, -1, 0 );
								HWRITEASM64( &TMP$3216$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3216$8 );
							}
							label$2473:;
							label$2466:;
						}
					}
					label$2463:;
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2475;
					{
						FBSTRING TMP$3217$6;
						FBSTRING TMP$3218$6;
						FBSTRING TMP$3219$6;
						FBSTRING TMP$3220$6;
						__builtin_memset( &TMP$3220$6, 0, 12 );
						FBSTRING* vr$1328 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3217$6, 0, 12 );
						FBSTRING* vr$1331 = fb_StrConcat( &TMP$3217$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1328, -1 );
						__builtin_memset( &TMP$3218$6, 0, 12 );
						FBSTRING* vr$1334 = fb_StrConcat( &TMP$3218$6, (void*)vr$1331, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3219$6, 0, 12 );
						FBSTRING* vr$1337 = fb_StrConcat( &TMP$3219$6, (void*)vr$1334, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3220$6, -1, (void*)vr$1337, -1, 0 );
						HWRITEASM64( &TMP$3220$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3220$6 );
					}
					label$2475:;
					label$2474:;
				}
				label$2454:;
			}
			goto label$2452;
			label$2453:;
			if( DTYPE$1 != 20 ) goto label$2476;
			{
				LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
				if( *(int32*)V2$1 != 4 ) goto label$2478;
				{
					FBSTRING TMP$3221$5;
					FBSTRING TMP$3222$5;
					__builtin_memset( &TMP$3221$5, 0, 12 );
					FBSTRING* vr$1348 = fb_StrConcat( &TMP$3221$5, (void*)"[", 2, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3222$5, 0, 12 );
					FBSTRING* vr$1351 = fb_StrConcat( &TMP$3222$5, (void*)vr$1348, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$1351, -1, 0 );
				}
				label$2478:;
				label$2477:;
				if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2480;
				{
					{
						uint32 TMP$3223$6;
						TMP$3223$6 = (uint32)PARAMTYPE$1;
						goto label$2482;
						label$2483:;
						{
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2481;
						label$2484:;
						{
							REG_FILLR( 8, &OP1$1, CPTINT$1 + -1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2481;
						label$2485:;
						{
							REG_FILLR( 8, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2481;
						label$2486:;
						{
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2481;
						label$2487:;
						{
							REG_FILLX( 8, &OP1$1, CPTFLOAT$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2481;
						label$2488:;
						{
							REG_FILLX( 8, &OP1$1, CPTFLOAT$1 + -1 );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2481;
						label$2482:;
						static const void* tmp$4059[6] = {
							&&label$2483,
							&&label$2486,
							&&label$2484,
							&&label$2485,
							&&label$2487,
							&&label$2488,
						};
						if( TMP$3223$6 > 5u ) goto label$2481;
						goto *tmp$4059[TMP$3223$6 - 0u];
						label$2481:;
					}
				}
				goto label$2479;
				label$2480:;
				{
					if( PARAMTYPE$1 != 0 ) goto label$2490;
					{
						REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
					}
					goto label$2489;
					label$2490:;
					if( PARAMTYPE$1 != 1 ) goto label$2491;
					{
						REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
					}
					goto label$2489;
					label$2491:;
					{
						if( *(int32*)V2$1 != 4 ) goto label$2493;
						{
							{
								uint32 TMP$3224$8;
								TMP$3224$8 = (uint32)LGT$1;
								goto label$2495;
								label$2496:;
								{
									FBSTRING TMP$3225$9;
									FBSTRING TMP$3226$9;
									FBSTRING TMP$3227$9;
									FBSTRING TMP$3228$9;
									__builtin_memset( &TMP$3228$9, 0, 12 );
									FBSTRING* vr$1372 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3225$9, 0, 12 );
									FBSTRING* vr$1375 = fb_StrConcat( &TMP$3225$9, (void*)"mov byte PTR ", 14, (void*)vr$1372, -1 );
									__builtin_memset( &TMP$3226$9, 0, 12 );
									FBSTRING* vr$1378 = fb_StrConcat( &TMP$3226$9, (void*)vr$1375, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3227$9, 0, 12 );
									FBSTRING* vr$1381 = fb_StrConcat( &TMP$3227$9, (void*)vr$1378, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3228$9, -1, (void*)vr$1381, -1, 0 );
									HWRITEASM64( &TMP$3228$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3228$9 );
								}
								goto label$2494;
								label$2497:;
								{
									FBSTRING TMP$3229$9;
									FBSTRING TMP$3230$9;
									FBSTRING TMP$3231$9;
									FBSTRING TMP$3232$9;
									__builtin_memset( &TMP$3232$9, 0, 12 );
									FBSTRING* vr$1389 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3229$9, 0, 12 );
									FBSTRING* vr$1392 = fb_StrConcat( &TMP$3229$9, (void*)"mov WORD PTR ", 14, (void*)vr$1389, -1 );
									__builtin_memset( &TMP$3230$9, 0, 12 );
									FBSTRING* vr$1395 = fb_StrConcat( &TMP$3230$9, (void*)vr$1392, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3231$9, 0, 12 );
									FBSTRING* vr$1398 = fb_StrConcat( &TMP$3231$9, (void*)vr$1395, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3232$9, -1, (void*)vr$1398, -1, 0 );
									HWRITEASM64( &TMP$3232$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3232$9 );
								}
								goto label$2494;
								label$2498:;
								{
									FBSTRING TMP$3233$9;
									FBSTRING TMP$3234$9;
									FBSTRING TMP$3235$9;
									FBSTRING TMP$3236$9;
									__builtin_memset( &TMP$3236$9, 0, 12 );
									FBSTRING* vr$1406 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3233$9, 0, 12 );
									FBSTRING* vr$1409 = fb_StrConcat( &TMP$3233$9, (void*)"mov DWORD PTR ", 15, (void*)vr$1406, -1 );
									__builtin_memset( &TMP$3234$9, 0, 12 );
									FBSTRING* vr$1412 = fb_StrConcat( &TMP$3234$9, (void*)vr$1409, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3235$9, 0, 12 );
									FBSTRING* vr$1415 = fb_StrConcat( &TMP$3235$9, (void*)vr$1412, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3236$9, -1, (void*)vr$1415, -1, 0 );
									HWRITEASM64( &TMP$3236$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3236$9 );
								}
								goto label$2494;
								label$2499:;
								{
									FBSTRING TMP$3237$9;
									FBSTRING TMP$3238$9;
									FBSTRING TMP$3239$9;
									FBSTRING TMP$3240$9;
									__builtin_memset( &TMP$3240$9, 0, 12 );
									FBSTRING* vr$1423 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3237$9, 0, 12 );
									FBSTRING* vr$1426 = fb_StrConcat( &TMP$3237$9, (void*)"mov QWORD PTR ", 15, (void*)vr$1423, -1 );
									__builtin_memset( &TMP$3238$9, 0, 12 );
									FBSTRING* vr$1429 = fb_StrConcat( &TMP$3238$9, (void*)vr$1426, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3239$9, 0, 12 );
									FBSTRING* vr$1432 = fb_StrConcat( &TMP$3239$9, (void*)vr$1429, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3240$9, -1, (void*)vr$1432, -1, 0 );
									HWRITEASM64( &TMP$3240$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3240$9 );
								}
								goto label$2494;
								label$2495:;
								static const void* tmp$4060[8] = {
									&&label$2496,
									&&label$2497,
									&&label$2494,
									&&label$2498,
									&&label$2494,
									&&label$2494,
									&&label$2494,
									&&label$2499,
								};
								if( (TMP$3224$8 - 1u) > 7u ) goto label$2494;
								goto *tmp$4060[TMP$3224$8 - 1u];
								label$2494:;
							}
						}
						goto label$2492;
						label$2493:;
						{
							{
								uint32 TMP$3241$8;
								TMP$3241$8 = (uint32)LGT$1;
								goto label$2501;
								label$2502:;
								{
									FBSTRING TMP$3242$9;
									FBSTRING TMP$3243$9;
									FBSTRING TMP$3244$9;
									FBSTRING TMP$3245$9;
									FBSTRING TMP$3246$9;
									__builtin_memset( &TMP$3243$9, 0, 12 );
									__builtin_memset( &TMP$3242$9, 0, 12 );
									FBSTRING* vr$1440 = fb_StrConcat( &TMP$3242$9, (void*)"mov al, ", 9, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3243$9, -1, (void*)vr$1440, -1, 0 );
									HWRITEASM64( &TMP$3243$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3243$9 );
									__builtin_memset( &TMP$3246$9, 0, 12 );
									FBSTRING* vr$1447 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3244$9, 0, 12 );
									FBSTRING* vr$1450 = fb_StrConcat( &TMP$3244$9, (void*)"mov byte PTR ", 14, (void*)vr$1447, -1 );
									__builtin_memset( &TMP$3245$9, 0, 12 );
									FBSTRING* vr$1453 = fb_StrConcat( &TMP$3245$9, (void*)vr$1450, -1, (void*)"[rsp], al", 10 );
									fb_StrAssign( (void*)&TMP$3246$9, -1, (void*)vr$1453, -1, 0 );
									HWRITEASM64( &TMP$3246$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3246$9 );
								}
								goto label$2500;
								label$2503:;
								{
									FBSTRING TMP$3247$9;
									FBSTRING TMP$3248$9;
									FBSTRING TMP$3249$9;
									FBSTRING TMP$3250$9;
									FBSTRING TMP$3251$9;
									__builtin_memset( &TMP$3248$9, 0, 12 );
									__builtin_memset( &TMP$3247$9, 0, 12 );
									FBSTRING* vr$1461 = fb_StrConcat( &TMP$3247$9, (void*)"mov ax, ", 9, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3248$9, -1, (void*)vr$1461, -1, 0 );
									HWRITEASM64( &TMP$3248$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3248$9 );
									__builtin_memset( &TMP$3251$9, 0, 12 );
									FBSTRING* vr$1468 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3249$9, 0, 12 );
									FBSTRING* vr$1471 = fb_StrConcat( &TMP$3249$9, (void*)"mov WORD PTR ", 14, (void*)vr$1468, -1 );
									__builtin_memset( &TMP$3250$9, 0, 12 );
									FBSTRING* vr$1474 = fb_StrConcat( &TMP$3250$9, (void*)vr$1471, -1, (void*)"[rsp], ax", 10 );
									fb_StrAssign( (void*)&TMP$3251$9, -1, (void*)vr$1474, -1, 0 );
									HWRITEASM64( &TMP$3251$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3251$9 );
								}
								goto label$2500;
								label$2504:;
								{
									FBSTRING TMP$3252$9;
									FBSTRING TMP$3253$9;
									FBSTRING TMP$3254$9;
									FBSTRING TMP$3255$9;
									FBSTRING TMP$3256$9;
									__builtin_memset( &TMP$3253$9, 0, 12 );
									__builtin_memset( &TMP$3252$9, 0, 12 );
									FBSTRING* vr$1482 = fb_StrConcat( &TMP$3252$9, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3253$9, -1, (void*)vr$1482, -1, 0 );
									HWRITEASM64( &TMP$3253$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3253$9 );
									__builtin_memset( &TMP$3256$9, 0, 12 );
									FBSTRING* vr$1489 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3254$9, 0, 12 );
									FBSTRING* vr$1492 = fb_StrConcat( &TMP$3254$9, (void*)"mov DWORD PTR ", 15, (void*)vr$1489, -1 );
									__builtin_memset( &TMP$3255$9, 0, 12 );
									FBSTRING* vr$1495 = fb_StrConcat( &TMP$3255$9, (void*)vr$1492, -1, (void*)"[rsp], eax", 11 );
									fb_StrAssign( (void*)&TMP$3256$9, -1, (void*)vr$1495, -1, 0 );
									HWRITEASM64( &TMP$3256$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3256$9 );
								}
								goto label$2500;
								label$2505:;
								{
									FBSTRING TMP$3257$9;
									FBSTRING TMP$3258$9;
									FBSTRING TMP$3259$9;
									FBSTRING TMP$3260$9;
									FBSTRING TMP$3261$9;
									__builtin_memset( &TMP$3258$9, 0, 12 );
									__builtin_memset( &TMP$3257$9, 0, 12 );
									FBSTRING* vr$1503 = fb_StrConcat( &TMP$3257$9, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3258$9, -1, (void*)vr$1503, -1, 0 );
									HWRITEASM64( &TMP$3258$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3258$9 );
									__builtin_memset( &TMP$3261$9, 0, 12 );
									FBSTRING* vr$1510 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3259$9, 0, 12 );
									FBSTRING* vr$1513 = fb_StrConcat( &TMP$3259$9, (void*)"mov QWORD PTR ", 15, (void*)vr$1510, -1 );
									__builtin_memset( &TMP$3260$9, 0, 12 );
									FBSTRING* vr$1516 = fb_StrConcat( &TMP$3260$9, (void*)vr$1513, -1, (void*)"[rsp], rax", 11 );
									fb_StrAssign( (void*)&TMP$3261$9, -1, (void*)vr$1516, -1, 0 );
									HWRITEASM64( &TMP$3261$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3261$9 );
								}
								goto label$2500;
								label$2501:;
								static const void* tmp$4061[8] = {
									&&label$2502,
									&&label$2503,
									&&label$2500,
									&&label$2504,
									&&label$2500,
									&&label$2500,
									&&label$2500,
									&&label$2505,
								};
								if( (TMP$3241$8 - 1u) > 7u ) goto label$2500;
								goto *tmp$4061[TMP$3241$8 - 1u];
								label$2500:;
							}
						}
						label$2492:;
					}
					label$2489:;
				}
				label$2479:;
			}
			goto label$2452;
			label$2476:;
			{
				if( *(int32*)V2$1 != 5 ) goto label$2507;
				{
					int32 TMP$3262$5;
					int32 TMP$3263$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2508;
					TMP$3262$5 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
					goto label$3144;
					label$2508:;
					TMP$3262$5 = 0;
					label$3144:;
					if( TMP$3262$5 == 0 ) goto label$2509;
					int32 vr$1527 = FBGETOPTION( 0 );
					TMP$3263$5 = -(vr$1527 == 2);
					goto label$3145;
					label$2509:;
					TMP$3263$5 = 0;
					label$3145:;
					if( TMP$3263$5 == 0 ) goto label$2511;
					{
						FBSTRING TMP$3264$6;
						FBSTRING TMP$3265$6;
						FBSTRING TMP$3266$6;
						FBSTRING TMP$3267$6;
						FBSTRING TMP$3268$6;
						__builtin_memset( &TMP$3268$6, 0, 12 );
						FBSTRING* vr$1530 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
						int32 vr$1532 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1530 );
						FBSTRING* vr$1535 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1532 + -1 );
						__builtin_memset( &TMP$3264$6, 0, 12 );
						FBSTRING* vr$1541 = fb_StrConcat( &TMP$3264$6, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3265$6, 0, 12 );
						FBSTRING* vr$1544 = fb_StrConcat( &TMP$3265$6, (void*)vr$1541, -1, (void*)", QWORD PTR ", 13 );
						__builtin_memset( &TMP$3266$6, 0, 12 );
						FBSTRING* vr$1547 = fb_StrConcat( &TMP$3266$6, (void*)vr$1544, -1, (void*)vr$1535, -1 );
						__builtin_memset( &TMP$3267$6, 0, 12 );
						FBSTRING* vr$1550 = fb_StrConcat( &TMP$3267$6, (void*)vr$1547, -1, (void*)"@GOTPCREL[rip]", 15 );
						fb_StrAssign( (void*)&TMP$3268$6, -1, (void*)vr$1550, -1, 0 );
						HWRITEASM64( &TMP$3268$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3268$6 );
					}
					goto label$2510;
					label$2511:;
					{
						FBSTRING TMP$3269$6;
						FBSTRING TMP$3270$6;
						FBSTRING TMP$3271$6;
						FBSTRING TMP$3272$6;
						__builtin_memset( &TMP$3272$6, 0, 12 );
						__builtin_memset( &TMP$3269$6, 0, 12 );
						FBSTRING* vr$1561 = fb_StrConcat( &TMP$3269$6, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3270$6, 0, 12 );
						FBSTRING* vr$1564 = fb_StrConcat( &TMP$3270$6, (void*)vr$1561, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3271$6, 0, 12 );
						FBSTRING* vr$1567 = fb_StrConcat( &TMP$3271$6, (void*)vr$1564, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3272$6, -1, (void*)vr$1567, -1, 0 );
						HWRITEASM64( &TMP$3272$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3272$6 );
					}
					label$2510:;
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2513;
					{
						FBSTRING TMP$3273$6;
						FBSTRING TMP$3274$6;
						FBSTRING TMP$3275$6;
						FBSTRING TMP$3276$6;
						__builtin_memset( &TMP$3276$6, 0, 12 );
						FBSTRING* vr$1581 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3273$6, 0, 12 );
						FBSTRING* vr$1584 = fb_StrConcat( &TMP$3273$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1581, -1 );
						__builtin_memset( &TMP$3274$6, 0, 12 );
						FBSTRING* vr$1587 = fb_StrConcat( &TMP$3274$6, (void*)vr$1584, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3275$6, 0, 12 );
						FBSTRING* vr$1590 = fb_StrConcat( &TMP$3275$6, (void*)vr$1587, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3276$6, -1, (void*)vr$1590, -1, 0 );
						HWRITEASM64( &TMP$3276$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3276$6 );
					}
					label$2513:;
					label$2512:;
				}
				goto label$2506;
				label$2507:;
				{
					int32 TMP$3277$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$2514;
					TMP$3277$5 = 24;
					goto label$3146;
					label$2514:;
					TMP$3277$5 = DTYPE$1 & 31;
					label$3146:;
					if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3277$5 * 28)) != 1 ) goto label$2516;
					{
						if( DTYPE$1 != 16 ) goto label$2518;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2520;
							{
								FBSTRING TMP$3278$8;
								FBSTRING TMP$3279$8;
								FBSTRING TMP$3280$8;
								FBSTRING TMP$3281$8;
								__builtin_memset( &TMP$3281$8, 0, 12 );
								FBSTRING* vr$1601 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3278$8, 0, 12 );
								FBSTRING* vr$1604 = fb_StrConcat( &TMP$3278$8, (void*)"movq xmm", 9, (void*)vr$1601, -1 );
								__builtin_memset( &TMP$3279$8, 0, 12 );
								FBSTRING* vr$1607 = fb_StrConcat( &TMP$3279$8, (void*)vr$1604, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3280$8, 0, 12 );
								FBSTRING* vr$1610 = fb_StrConcat( &TMP$3280$8, (void*)vr$1607, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3281$8, -1, (void*)vr$1610, -1, 0 );
								HWRITEASM64( &TMP$3281$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3281$8 );
							}
							goto label$2519;
							label$2520:;
							{
								FBSTRING TMP$3283$8;
								FBSTRING TMP$3284$8;
								FBSTRING TMP$3285$8;
								FBSTRING TMP$3286$8;
								__builtin_memset( &TMP$3286$8, 0, 12 );
								FBSTRING* vr$1617 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3283$8, 0, 12 );
								FBSTRING* vr$1620 = fb_StrConcat( &TMP$3283$8, (void*)"movsd xmm", 10, (void*)vr$1617, -1 );
								__builtin_memset( &TMP$3284$8, 0, 12 );
								FBSTRING* vr$1623 = fb_StrConcat( &TMP$3284$8, (void*)vr$1620, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3285$8, 0, 12 );
								FBSTRING* vr$1626 = fb_StrConcat( &TMP$3285$8, (void*)vr$1623, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3286$8, -1, (void*)vr$1626, -1, 0 );
								HWRITEASM64( &TMP$3286$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3286$8 );
							}
							label$2519:;
						}
						goto label$2517;
						label$2518:;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2522;
							{
								FBSTRING TMP$3287$8;
								FBSTRING TMP$3288$8;
								FBSTRING TMP$3289$8;
								FBSTRING TMP$3290$8;
								__builtin_memset( &TMP$3290$8, 0, 12 );
								FBSTRING* vr$1634 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3287$8, 0, 12 );
								FBSTRING* vr$1637 = fb_StrConcat( &TMP$3287$8, (void*)"movd xmm", 9, (void*)vr$1634, -1 );
								__builtin_memset( &TMP$3288$8, 0, 12 );
								FBSTRING* vr$1640 = fb_StrConcat( &TMP$3288$8, (void*)vr$1637, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3289$8, 0, 12 );
								FBSTRING* vr$1643 = fb_StrConcat( &TMP$3289$8, (void*)vr$1640, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3290$8, -1, (void*)vr$1643, -1, 0 );
								HWRITEASM64( &TMP$3290$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3290$8 );
							}
							goto label$2521;
							label$2522:;
							{
								FBSTRING TMP$3292$8;
								FBSTRING TMP$3293$8;
								FBSTRING TMP$3294$8;
								FBSTRING TMP$3295$8;
								__builtin_memset( &TMP$3295$8, 0, 12 );
								FBSTRING* vr$1650 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3292$8, 0, 12 );
								FBSTRING* vr$1653 = fb_StrConcat( &TMP$3292$8, (void*)"movss xmm", 10, (void*)vr$1650, -1 );
								__builtin_memset( &TMP$3293$8, 0, 12 );
								FBSTRING* vr$1656 = fb_StrConcat( &TMP$3293$8, (void*)vr$1653, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3294$8, 0, 12 );
								FBSTRING* vr$1659 = fb_StrConcat( &TMP$3294$8, (void*)vr$1656, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3295$8, -1, (void*)vr$1659, -1, 0 );
								HWRITEASM64( &TMP$3295$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3295$8 );
							}
							label$2521:;
						}
						label$2517:;
						if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2524;
						{
							FBSTRING TMP$3298$7;
							FBSTRING TMP$3299$7;
							FBSTRING TMP$3300$7;
							FBSTRING TMP$3301$7;
							FBSTRING TMP$3303$7;
							FBSTRING TMP$3304$7;
							FBSTRING TMP$3305$7;
							FBSTRING TMP$3306$7;
							__builtin_memset( &TMP$3301$7, 0, 12 );
							FBSTRING* vr$1669 = fb_IntToStr( CPTFLOAT$1 + -1 );
							FBSTRING* vr$1672 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3298$7, 0, 12 );
							FBSTRING* vr$1675 = fb_StrConcat( &TMP$3298$7, (void*)"movsd QWORD PTR ", 17, (void*)vr$1672, -1 );
							__builtin_memset( &TMP$3299$7, 0, 12 );
							FBSTRING* vr$1678 = fb_StrConcat( &TMP$3299$7, (void*)vr$1675, -1, (void*)"[rsp], xmm", 11 );
							__builtin_memset( &TMP$3300$7, 0, 12 );
							FBSTRING* vr$1681 = fb_StrConcat( &TMP$3300$7, (void*)vr$1678, -1, (void*)vr$1669, -1 );
							fb_StrAssign( (void*)&TMP$3301$7, -1, (void*)vr$1681, -1, 0 );
							HWRITEASM64( &TMP$3301$7, 3 );
							fb_StrDelete( (FBSTRING*)&TMP$3301$7 );
							__builtin_memset( &TMP$3306$7, 0, 12 );
							FBSTRING* vr$1687 = fb_IntToStr( CPTFLOAT$1 + -1 );
							__builtin_memset( &TMP$3303$7, 0, 12 );
							FBSTRING* vr$1693 = fb_StrConcat( &TMP$3303$7, (void*)"movq ", 6, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
							__builtin_memset( &TMP$3304$7, 0, 12 );
							FBSTRING* vr$1696 = fb_StrConcat( &TMP$3304$7, (void*)vr$1693, -1, (void*)", xmm", 6 );
							__builtin_memset( &TMP$3305$7, 0, 12 );
							FBSTRING* vr$1699 = fb_StrConcat( &TMP$3305$7, (void*)vr$1696, -1, (void*)vr$1687, -1 );
							fb_StrAssign( (void*)&TMP$3306$7, -1, (void*)vr$1699, -1, 0 );
							HWRITEASM64( &TMP$3306$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3306$7 );
						}
						label$2524:;
						label$2523:;
					}
					goto label$2515;
					label$2516:;
					{
						int32 TMP$3312$6;
						REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
						if( DTYPE$1 != 19 ) goto label$2526;
						{
							if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2528;
							{
								FBSTRING TMP$3307$8;
								FBSTRING TMP$3310$8;
								FBSTRING TMP$3311$8;
								__builtin_memset( &TMP$3307$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3307$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3307$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3307$8 );
								__builtin_memset( &TMP$3310$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3310$8, -1, (void*)"FOUND AN ERROR : in hdocall Va_list and target linux could be a problem", 72, 0 );
								HWRITEASM64( &TMP$3310$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3310$8 );
								__builtin_memset( &TMP$3311$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3311$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3311$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3311$8 );
							}
							goto label$2527;
							label$2528:;
							{
								DTYPE$1 = 8;
							}
							label$2527:;
						}
						label$2526:;
						label$2525:;
						if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2529;
						int32 vr$1718 = FBGETOPTION( 0 );
						TMP$3312$6 = -(vr$1718 == 2);
						goto label$3147;
						label$2529:;
						TMP$3312$6 = 0;
						label$3147:;
						if( TMP$3312$6 == 0 ) goto label$2531;
						{
							int32 TMP$3313$7;
							if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2532;
							TMP$3313$7 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) != 0);
							goto label$3148;
							label$2532:;
							TMP$3313$7 = 0;
							label$3148:;
							if( TMP$3313$7 == 0 ) goto label$2534;
							{
								FBSTRING TMP$3314$8;
								FBSTRING TMP$3315$8;
								FBSTRING TMP$3316$8;
								__builtin_memset( &TMP$3316$8, 0, 12 );
								uint8* vr$1727 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
								__builtin_memset( &TMP$3314$8, 0, 12 );
								FBSTRING* vr$1730 = fb_StrConcat( &TMP$3314$8, (void*)"mov rax, ", 10, (void*)vr$1727, 0 );
								__builtin_memset( &TMP$3315$8, 0, 12 );
								FBSTRING* vr$1733 = fb_StrConcat( &TMP$3315$8, (void*)vr$1730, -1, (void*)"@GOTPCREL[rip]", 15 );
								fb_StrAssign( (void*)&TMP$3316$8, -1, (void*)vr$1733, -1, 0 );
								HWRITEASM64( &TMP$3316$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3316$8 );
								fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
							}
							label$2534:;
							label$2533:;
						}
						label$2531:;
						label$2530:;
						{
							if( DTYPE$1 == 8 ) goto label$2537;
							label$2538:;
							if( DTYPE$1 == 9 ) goto label$2537;
							label$2539:;
							if( DTYPE$1 == 13 ) goto label$2537;
							label$2540:;
							if( DTYPE$1 == 14 ) goto label$2537;
							label$2541:;
							if( DTYPE$1 != 10 ) goto label$2536;
							label$2537:;
							{
								FBSTRING TMP$3317$8;
								FBSTRING TMP$3318$8;
								FBSTRING TMP$3319$8;
								FBSTRING TMP$3320$8;
								__builtin_memset( &TMP$3320$8, 0, 12 );
								__builtin_memset( &TMP$3317$8, 0, 12 );
								FBSTRING* vr$1745 = fb_StrConcat( &TMP$3317$8, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3318$8, 0, 12 );
								FBSTRING* vr$1748 = fb_StrConcat( &TMP$3318$8, (void*)vr$1745, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3319$8, 0, 12 );
								FBSTRING* vr$1751 = fb_StrConcat( &TMP$3319$8, (void*)vr$1748, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3320$8, -1, (void*)vr$1751, -1, 0 );
								HWRITEASM64( &TMP$3320$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3320$8 );
							}
							goto label$2535;
							label$2536:;
							if( DTYPE$1 == 11 ) goto label$2543;
							label$2544:;
							if( DTYPE$1 != 12 ) goto label$2542;
							label$2543:;
							{
								FBSTRING TMP$3321$8;
								FBSTRING TMP$3322$8;
								FBSTRING TMP$3323$8;
								FBSTRING TMP$3324$8;
								__builtin_memset( &TMP$3324$8, 0, 12 );
								__builtin_memset( &TMP$3321$8, 0, 12 );
								FBSTRING* vr$1762 = fb_StrConcat( &TMP$3321$8, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3322$8, 0, 12 );
								FBSTRING* vr$1765 = fb_StrConcat( &TMP$3322$8, (void*)vr$1762, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3323$8, 0, 12 );
								FBSTRING* vr$1768 = fb_StrConcat( &TMP$3323$8, (void*)vr$1765, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3324$8, -1, (void*)vr$1768, -1, 0 );
								HWRITEASM64( &TMP$3324$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3324$8 );
							}
							goto label$2535;
							label$2542:;
							if( DTYPE$1 == 5 ) goto label$2546;
							label$2547:;
							if( DTYPE$1 != 6 ) goto label$2545;
							label$2546:;
							{
								FBSTRING TMP$3325$8;
								FBSTRING TMP$3326$8;
								FBSTRING TMP$3327$8;
								FBSTRING TMP$3328$8;
								__builtin_memset( &TMP$3328$8, 0, 12 );
								__builtin_memset( &TMP$3325$8, 0, 12 );
								FBSTRING* vr$1779 = fb_StrConcat( &TMP$3325$8, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRW$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3326$8, 0, 12 );
								FBSTRING* vr$1782 = fb_StrConcat( &TMP$3326$8, (void*)vr$1779, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3327$8, 0, 12 );
								FBSTRING* vr$1785 = fb_StrConcat( &TMP$3327$8, (void*)vr$1782, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3328$8, -1, (void*)vr$1785, -1, 0 );
								HWRITEASM64( &TMP$3328$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3328$8 );
							}
							goto label$2535;
							label$2545:;
							if( DTYPE$1 == 2 ) goto label$2549;
							label$2550:;
							if( DTYPE$1 == 3 ) goto label$2549;
							label$2551:;
							if( DTYPE$1 == 1 ) goto label$2549;
							label$2552:;
							if( DTYPE$1 != 4 ) goto label$2548;
							label$2549:;
							{
								FBSTRING TMP$3329$8;
								FBSTRING TMP$3330$8;
								FBSTRING TMP$3331$8;
								FBSTRING TMP$3332$8;
								__builtin_memset( &TMP$3332$8, 0, 12 );
								__builtin_memset( &TMP$3329$8, 0, 12 );
								FBSTRING* vr$1796 = fb_StrConcat( &TMP$3329$8, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRB$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3330$8, 0, 12 );
								FBSTRING* vr$1799 = fb_StrConcat( &TMP$3330$8, (void*)vr$1796, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3331$8, 0, 12 );
								FBSTRING* vr$1802 = fb_StrConcat( &TMP$3331$8, (void*)vr$1799, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3332$8, -1, (void*)vr$1802, -1, 0 );
								HWRITEASM64( &TMP$3332$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3332$8 );
							}
							goto label$2535;
							label$2548:;
							{
								FBSTRING TMP$3333$8;
								FBSTRING TMP$3337$8;
								FBSTRING TMP$3338$8;
								FBSTRING TMP$3339$8;
								__builtin_memset( &TMP$3333$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3333$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3333$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3333$8 );
								__builtin_memset( &TMP$3338$8, 0, 12 );
								FBSTRING* vr$1811 = fb_IntToStr( DTYPE$1 );
								__builtin_memset( &TMP$3337$8, 0, 12 );
								FBSTRING* vr$1814 = fb_StrConcat( &TMP$3337$8, (void*)"FOUND AN ERROR : in hdocall datatype not handled 03 = ", 55, (void*)vr$1811, -1 );
								fb_StrAssign( (void*)&TMP$3338$8, -1, (void*)vr$1814, -1, 0 );
								HWRITEASM64( &TMP$3338$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3338$8 );
								__builtin_memset( &TMP$3339$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3339$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3339$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3339$8 );
							}
							label$2553:;
							label$2535:;
						}
						if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2555;
						{
							FBSTRING TMP$3340$7;
							FBSTRING TMP$3341$7;
							FBSTRING TMP$3342$7;
							FBSTRING TMP$3343$7;
							__builtin_memset( &TMP$3343$7, 0, 12 );
							FBSTRING* vr$1832 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3340$7, 0, 12 );
							FBSTRING* vr$1835 = fb_StrConcat( &TMP$3340$7, (void*)"mov QWORD PTR ", 15, (void*)vr$1832, -1 );
							__builtin_memset( &TMP$3341$7, 0, 12 );
							FBSTRING* vr$1838 = fb_StrConcat( &TMP$3341$7, (void*)vr$1835, -1, (void*)"[rsp], ", 8 );
							__builtin_memset( &TMP$3342$7, 0, 12 );
							FBSTRING* vr$1841 = fb_StrConcat( &TMP$3342$7, (void*)vr$1838, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
							fb_StrAssign( (void*)&TMP$3343$7, -1, (void*)vr$1841, -1, 0 );
							HWRITEASM64( &TMP$3343$7, 3 );
							fb_StrDelete( (FBSTRING*)&TMP$3343$7 );
						}
						label$2555:;
						label$2554:;
					}
					label$2515:;
				}
				label$2506:;
			}
			label$2452:;
		}
		label$2370:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 60), (void*)ARG$1 );
		ARG$1 = PREV$1;
	}
	goto label$2298;
	label$2299:;
	if( CPTARG$1 <= *(int32*)((uint8*)&CTX$ + 80) ) goto label$2557;
	{
		*(int32*)((uint8*)&CTX$ + 80) = CPTARG$1;
		label$2557:;
	}
	int32 vr$1846 = fb_StrCompare( (void*)FIRSTMOV$1, -1, (void*)"", 1 );
	if( vr$1846 == 0 ) goto label$2559;
	{
		HWRITEASM64( FIRSTMOV$1, 0 );
		label$2559:;
	}
	if( CALLPTR$1 == (boolean)0 ) goto label$2561;
	{
		FBSTRING TMP$3344$2;
		FBSTRING TMP$3345$2;
		__builtin_memset( &TMP$3345$2, 0, 12 );
		__builtin_memset( &TMP$3344$2, 0, 12 );
		FBSTRING* vr$1850 = fb_StrConcat( &TMP$3344$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$3345$2, -1, (void*)vr$1850, -1, 0 );
		REG_FREEABLE( &TMP$3345$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3345$2 );
		label$2561:;
	}
	if( PUSHSIZE$1 == 0 ) goto label$2563;
	{
		if( (PUSHSIZE$1 % 16) == 0 ) goto label$2565;
		{
			FBSTRING TMP$3347$3;
			PUSHSIZE$1 = (((PUSHSIZE$1 + ((PUSHSIZE$1 >> (31 & 31)) & 15)) >> (4 & 31)) << (4 & 31)) + 16;
			__builtin_memset( &TMP$3347$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3347$3, -1, (void*)"sub rsp, 8", 11, 0 );
			HWRITEASM64( &TMP$3347$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3347$3 );
		}
		label$2565:;
		label$2564:;
		{
			int32 ISTR$3;
			ISTR$3 = PUSHNBSTR$1;
			goto label$2566;
			label$2569:;
			{
				FBSTRING* vr$1867 = fb_RIGHT( (FBSTRING*)((int32)(FBSTRING*)PUSHSTR$1 + (ISTR$3 * 12)), 3 );
				int32 vr$1868 = fb_StrCompare( (void*)vr$1867, -1, (void*)"#NO", 4 );
				if( vr$1868 != 0 ) goto label$2571;
				{
					HWRITEASM64( (FBSTRING*)((int32)(FBSTRING*)PUSHSTR$1 + (ISTR$3 * 12)), 3 );
				}
				goto label$2570;
				label$2571:;
				{
					HWRITEASM64( (FBSTRING*)((int32)(FBSTRING*)PUSHSTR$1 + (ISTR$3 * 12)), 0 );
				}
				label$2570:;
			}
			label$2567:;
			ISTR$3 = ISTR$3 + -1;
			label$2566:;
			if( ISTR$3 >= 1 ) goto label$2569;
			label$2568:;
		}
	}
	label$2563:;
	label$2562:;
	if( CALLPTR$1 == (boolean)0 ) goto label$2573;
	{
		REG_ALLOWED( (boolean)1 );
		label$2573:;
	}
	REG_SAVE(  );
	if( -VARIADIC$1 != -1 ) goto label$2575;
	{
		if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2577;
		{
			int32 TMP$3348$3;
			FBSTRING TMP$3349$3;
			FBSTRING TMP$3350$3;
			__builtin_memset( &TMP$3350$3, 0, 12 );
			if( CPTFLOAT$1 > 8 ) goto label$2578;
			TMP$3348$3 = CPTFLOAT$1;
			goto label$3149;
			label$2578:;
			TMP$3348$3 = 8;
			label$3149:;
			FBSTRING* vr$1876 = fb_IntToStr( TMP$3348$3 );
			__builtin_memset( &TMP$3349$3, 0, 12 );
			FBSTRING* vr$1879 = fb_StrConcat( &TMP$3349$3, (void*)"mov eax, ", 10, (void*)vr$1876, -1 );
			fb_StrAssign( (void*)&TMP$3350$3, -1, (void*)vr$1879, -1, 0 );
			HWRITEASM64( &TMP$3350$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3350$3 );
		}
		label$2577:;
		label$2576:;
	}
	label$2575:;
	label$2574:;
	if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2579;
	int32 vr$1884 = FBGETOPTION( 0 );
	TMP$3351$1 = -(vr$1884 == 2);
	goto label$3150;
	label$2579:;
	TMP$3351$1 = 0;
	label$3150:;
	if( TMP$3351$1 == 0 ) goto label$2581;
	{
		FBSTRING TMP$3352$2;
		FBSTRING TMP$3353$2;
		FBSTRING TMP$3354$2;
		__builtin_memset( &TMP$3354$2, 0, 12 );
		__builtin_memset( &TMP$3352$2, 0, 12 );
		FBSTRING* vr$1889 = fb_StrConcat( &TMP$3352$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		__builtin_memset( &TMP$3353$2, 0, 12 );
		FBSTRING* vr$1892 = fb_StrConcat( &TMP$3353$2, (void*)vr$1889, -1, (void*)"@PLT", 5 );
		fb_StrAssign( (void*)&TMP$3354$2, -1, (void*)vr$1892, -1, 0 );
		HWRITEASM64( &TMP$3354$2, 1 );
		fb_StrDelete( (FBSTRING*)&TMP$3354$2 );
	}
	goto label$2580;
	label$2581:;
	{
		FBSTRING TMP$3355$2;
		FBSTRING TMP$3356$2;
		__builtin_memset( &TMP$3356$2, 0, 12 );
		__builtin_memset( &TMP$3355$2, 0, 12 );
		FBSTRING* vr$1899 = fb_StrConcat( &TMP$3355$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$3356$2, -1, (void*)vr$1899, -1, 0 );
		HWRITEASM64( &TMP$3356$2, 1 );
		fb_StrDelete( (FBSTRING*)&TMP$3356$2 );
	}
	label$2580:;
	if( PUSHSIZE$1 == 0 ) goto label$2583;
	{
		FBSTRING TMP$3358$2;
		FBSTRING TMP$3359$2;
		__builtin_memset( &TMP$3359$2, 0, 12 );
		FBSTRING* vr$1904 = fb_IntToStr( PUSHSIZE$1 );
		__builtin_memset( &TMP$3358$2, 0, 12 );
		FBSTRING* vr$1907 = fb_StrConcat( &TMP$3358$2, (void*)"add rsp, ", 10, (void*)vr$1904, -1 );
		fb_StrAssign( (void*)&TMP$3359$2, -1, (void*)vr$1907, -1, 0 );
		HWRITEASM64( &TMP$3359$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3359$2 );
		PUSHSIZE$1 = 0;
		PUSHNBSTR$1 = 0;
	}
	label$2583:;
	label$2582:;
	if( *(int64*)((uint8*)&CTX$ + 120) <= *(int64*)((uint8*)&CTX$ + 104) ) goto label$2585;
	{
		*(int64*)((uint8*)&CTX$ + 104) = *(int64*)((uint8*)&CTX$ + 120);
		label$2585:;
	}
	*(int64*)((uint8*)&CTX$ + 112) = 0ll;
	*(boolean*)((uint8*)&CTX$ + 153) = (boolean)0;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2587;
	{
		int32 TMP$3389$2;
		int32 vr$1911 = HISSTRUCTIN2REGS( VR$1 );
		if( vr$1911 == 0 ) goto label$2589;
		{
			*($15IRVREGTYPE_ENUM*)VR$1 = 1;
			*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + (int64)(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368) << (1 & 31));
			*(int64*)((uint8*)VR$1 + 40) = -(*(int64*)((uint8*)&CTX$ + 96));
			{
				uint32 TMP$3360$4;
				TMP$3360$4 = *(uint32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) + 132);
				goto label$2591;
				label$2592:;
				{
					FBSTRING TMP$3362$5;
					FBSTRING TMP$3363$5;
					FBSTRING TMP$3364$5;
					FBSTRING TMP$3366$5;
					FBSTRING TMP$3367$5;
					FBSTRING TMP$3368$5;
					__builtin_memset( &TMP$3364$5, 0, 12 );
					FBSTRING* vr$1922 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3362$5, 0, 12 );
					FBSTRING* vr$1925 = fb_StrConcat( &TMP$3362$5, (void*)"mov ", 5, (void*)vr$1922, -1 );
					__builtin_memset( &TMP$3363$5, 0, 12 );
					FBSTRING* vr$1928 = fb_StrConcat( &TMP$3363$5, (void*)vr$1925, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3364$5, -1, (void*)vr$1928, -1, 0 );
					HWRITEASM64( &TMP$3364$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3364$5 );
					__builtin_memset( &TMP$3368$5, 0, 12 );
					FBSTRING* vr$1935 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3366$5, 0, 12 );
					FBSTRING* vr$1938 = fb_StrConcat( &TMP$3366$5, (void*)"mov ", 5, (void*)vr$1935, -1 );
					__builtin_memset( &TMP$3367$5, 0, 12 );
					FBSTRING* vr$1941 = fb_StrConcat( &TMP$3367$5, (void*)vr$1938, -1, (void*)"[rbp], rdx", 11 );
					fb_StrAssign( (void*)&TMP$3368$5, -1, (void*)vr$1941, -1, 0 );
					HWRITEASM64( &TMP$3368$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3368$5 );
				}
				goto label$2590;
				label$2593:;
				{
					FBSTRING TMP$3369$5;
					FBSTRING TMP$3370$5;
					FBSTRING TMP$3371$5;
					FBSTRING TMP$3373$5;
					FBSTRING TMP$3374$5;
					FBSTRING TMP$3375$5;
					__builtin_memset( &TMP$3371$5, 0, 12 );
					FBSTRING* vr$1947 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3369$5, 0, 12 );
					FBSTRING* vr$1950 = fb_StrConcat( &TMP$3369$5, (void*)"mov ", 5, (void*)vr$1947, -1 );
					__builtin_memset( &TMP$3370$5, 0, 12 );
					FBSTRING* vr$1953 = fb_StrConcat( &TMP$3370$5, (void*)vr$1950, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3371$5, -1, (void*)vr$1953, -1, 0 );
					HWRITEASM64( &TMP$3371$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3371$5 );
					__builtin_memset( &TMP$3375$5, 0, 12 );
					FBSTRING* vr$1960 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3373$5, 0, 12 );
					FBSTRING* vr$1963 = fb_StrConcat( &TMP$3373$5, (void*)"movq ", 6, (void*)vr$1960, -1 );
					__builtin_memset( &TMP$3374$5, 0, 12 );
					FBSTRING* vr$1966 = fb_StrConcat( &TMP$3374$5, (void*)vr$1963, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3375$5, -1, (void*)vr$1966, -1, 0 );
					HWRITEASM64( &TMP$3375$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3375$5 );
				}
				goto label$2590;
				label$2594:;
				{
					FBSTRING TMP$3376$5;
					FBSTRING TMP$3377$5;
					FBSTRING TMP$3378$5;
					FBSTRING TMP$3379$5;
					FBSTRING TMP$3380$5;
					FBSTRING TMP$3381$5;
					__builtin_memset( &TMP$3378$5, 0, 12 );
					FBSTRING* vr$1972 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3376$5, 0, 12 );
					FBSTRING* vr$1975 = fb_StrConcat( &TMP$3376$5, (void*)"movq ", 6, (void*)vr$1972, -1 );
					__builtin_memset( &TMP$3377$5, 0, 12 );
					FBSTRING* vr$1978 = fb_StrConcat( &TMP$3377$5, (void*)vr$1975, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3378$5, -1, (void*)vr$1978, -1, 0 );
					HWRITEASM64( &TMP$3378$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3378$5 );
					__builtin_memset( &TMP$3381$5, 0, 12 );
					FBSTRING* vr$1985 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3379$5, 0, 12 );
					FBSTRING* vr$1988 = fb_StrConcat( &TMP$3379$5, (void*)"mov ", 5, (void*)vr$1985, -1 );
					__builtin_memset( &TMP$3380$5, 0, 12 );
					FBSTRING* vr$1991 = fb_StrConcat( &TMP$3380$5, (void*)vr$1988, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3381$5, -1, (void*)vr$1991, -1, 0 );
					HWRITEASM64( &TMP$3381$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3381$5 );
				}
				goto label$2590;
				label$2595:;
				{
					FBSTRING TMP$3382$5;
					FBSTRING TMP$3383$5;
					FBSTRING TMP$3384$5;
					FBSTRING TMP$3386$5;
					FBSTRING TMP$3387$5;
					FBSTRING TMP$3388$5;
					__builtin_memset( &TMP$3384$5, 0, 12 );
					FBSTRING* vr$1997 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3382$5, 0, 12 );
					FBSTRING* vr$2000 = fb_StrConcat( &TMP$3382$5, (void*)"movq ", 6, (void*)vr$1997, -1 );
					__builtin_memset( &TMP$3383$5, 0, 12 );
					FBSTRING* vr$2003 = fb_StrConcat( &TMP$3383$5, (void*)vr$2000, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3384$5, -1, (void*)vr$2003, -1, 0 );
					HWRITEASM64( &TMP$3384$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3384$5 );
					__builtin_memset( &TMP$3388$5, 0, 12 );
					FBSTRING* vr$2010 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3386$5, 0, 12 );
					FBSTRING* vr$2013 = fb_StrConcat( &TMP$3386$5, (void*)"movq ", 6, (void*)vr$2010, -1 );
					__builtin_memset( &TMP$3387$5, 0, 12 );
					FBSTRING* vr$2016 = fb_StrConcat( &TMP$3387$5, (void*)vr$2013, -1, (void*)"[rbp], xmm1", 12 );
					fb_StrAssign( (void*)&TMP$3388$5, -1, (void*)vr$2016, -1, 0 );
					HWRITEASM64( &TMP$3388$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3388$5 );
				}
				goto label$2590;
				label$2591:;
				static const void* tmp$4062[5] = {
					&&label$2592,
					&&label$2593,
					&&label$2590,
					&&label$2594,
					&&label$2595,
				};
				if( (TMP$3360$4 - 2u) > 4u ) goto label$2590;
				goto *tmp$4062[TMP$3360$4 - 2u];
				label$2590:;
			}
			fb_ArrayDestructStr( (struct $7FBARRAYIvE*)&tmp$2965$1 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			fb_StrDelete( (FBSTRING*)&OP3$1 );
			fb_StrDelete( (FBSTRING*)&OP1$1 );
			goto label$2295;
		}
		label$2589:;
		label$2588:;
		DTYPE$1 = *(int32*)((uint8*)VR$1 + 4) & 511;
		if( (DTYPE$1 & 480) == 0 ) goto label$2596;
		TMP$3389$2 = 24;
		goto label$3151;
		label$2596:;
		TMP$3389$2 = DTYPE$1 & 31;
		label$3151:;
		if( TMP$3389$2 != 24 ) goto label$2598;
		{
			DTYPE$1 = 8;
			label$2598:;
		}
		if( DTYPE$1 != 16 ) goto label$2600;
		{
			if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 20 ) goto label$2602;
			{
				FBSTRING TMP$3391$4;
				__builtin_memset( &TMP$3391$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3391$4, -1, (void*)"movq rax, xmm0", 15, 0 );
				HWRITEASM64( &TMP$3391$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3391$4 );
			}
			goto label$2601;
			label$2602:;
			{
				if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2604;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2606;
					{
						FBSTRING TMP$3392$6;
						__builtin_memset( &TMP$3392$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3392$6, -1, (void*)"movq rax, xmm0", 15, 0 );
						HWRITEASM64( &TMP$3392$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3392$6 );
					}
					label$2606:;
					label$2605:;
				}
				goto label$2603;
				label$2604:;
				{
					FBSTRING TMP$3393$5;
					__builtin_memset( &TMP$3393$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3393$5, -1, (void*)"movq rax, xmm0", 15, 0 );
					HWRITEASM64( &TMP$3393$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3393$5 );
				}
				label$2603:;
			}
			label$2601:;
		}
		goto label$2599;
		label$2600:;
		if( DTYPE$1 != 15 ) goto label$2607;
		{
			if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 20 ) goto label$2609;
			{
				FBSTRING TMP$3395$4;
				__builtin_memset( &TMP$3395$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3395$4, -1, (void*)"movd eax, xmm0", 15, 0 );
				HWRITEASM64( &TMP$3395$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3395$4 );
			}
			goto label$2608;
			label$2609:;
			{
				if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2611;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2613;
					{
						FBSTRING TMP$3396$6;
						__builtin_memset( &TMP$3396$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3396$6, -1, (void*)"movd eax, xmm0", 15, 0 );
						HWRITEASM64( &TMP$3396$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3396$6 );
					}
					label$2613:;
					label$2612:;
				}
				goto label$2610;
				label$2611:;
				{
					FBSTRING TMP$3397$5;
					__builtin_memset( &TMP$3397$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3397$5, -1, (void*)"movd eax, xmm0", 15, 0 );
					HWRITEASM64( &TMP$3397$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3397$5 );
				}
				label$2610:;
			}
			label$2608:;
		}
		label$2607:;
		label$2599:;
		REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
		{
			$15IRVREGTYPE_ENUM TMP$3398$3;
			TMP$3398$3 = *($15IRVREGTYPE_ENUM*)VR$1;
			if( TMP$3398$3 != 4 ) goto label$2615;
			label$2616:;
			{
				{
					if( DTYPE$1 == 8 ) goto label$2619;
					label$2620:;
					if( DTYPE$1 == 9 ) goto label$2619;
					label$2621:;
					if( DTYPE$1 == 13 ) goto label$2619;
					label$2622:;
					if( DTYPE$1 == 14 ) goto label$2619;
					label$2623:;
					if( DTYPE$1 == 16 ) goto label$2619;
					label$2624:;
					if( DTYPE$1 != 10 ) goto label$2618;
					label$2619:;
					{
						FBSTRING TMP$3399$6;
						FBSTRING TMP$3400$6;
						FBSTRING TMP$3401$6;
						FBSTRING TMP$3402$6;
						int32 vr$2063 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$2063 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3402$6, 0, 12 );
						__builtin_memset( &TMP$3399$6, 0, 12 );
						FBSTRING* vr$2070 = fb_StrConcat( &TMP$3399$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3400$6, 0, 12 );
						FBSTRING* vr$2073 = fb_StrConcat( &TMP$3400$6, (void*)vr$2070, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3401$6, 0, 12 );
						FBSTRING* vr$2076 = fb_StrConcat( &TMP$3401$6, (void*)vr$2073, -1, *(void**)REGSTRQ$, 0 );
						fb_StrAssign( (void*)&TMP$3402$6, -1, (void*)vr$2076, -1, 0 );
						HWRITEASM64( &TMP$3402$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3402$6 );
					}
					goto label$2617;
					label$2618:;
					if( DTYPE$1 == 11 ) goto label$2626;
					label$2627:;
					if( DTYPE$1 == 12 ) goto label$2626;
					label$2628:;
					if( DTYPE$1 != 15 ) goto label$2625;
					label$2626:;
					{
						FBSTRING TMP$3403$6;
						FBSTRING TMP$3404$6;
						FBSTRING TMP$3405$6;
						FBSTRING TMP$3406$6;
						int32 vr$2081 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRD$ + (vr$2081 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3406$6, 0, 12 );
						__builtin_memset( &TMP$3403$6, 0, 12 );
						FBSTRING* vr$2088 = fb_StrConcat( &TMP$3403$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3404$6, 0, 12 );
						FBSTRING* vr$2091 = fb_StrConcat( &TMP$3404$6, (void*)vr$2088, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3405$6, 0, 12 );
						FBSTRING* vr$2094 = fb_StrConcat( &TMP$3405$6, (void*)vr$2091, -1, *(void**)REGSTRD$, 0 );
						fb_StrAssign( (void*)&TMP$3406$6, -1, (void*)vr$2094, -1, 0 );
						HWRITEASM64( &TMP$3406$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3406$6 );
					}
					goto label$2617;
					label$2625:;
					if( DTYPE$1 == 5 ) goto label$2630;
					label$2631:;
					if( DTYPE$1 != 6 ) goto label$2629;
					label$2630:;
					{
						FBSTRING TMP$3407$6;
						FBSTRING TMP$3408$6;
						FBSTRING TMP$3409$6;
						FBSTRING TMP$3410$6;
						int32 vr$2099 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRW$ + (vr$2099 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3410$6, 0, 12 );
						__builtin_memset( &TMP$3407$6, 0, 12 );
						FBSTRING* vr$2106 = fb_StrConcat( &TMP$3407$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3408$6, 0, 12 );
						FBSTRING* vr$2109 = fb_StrConcat( &TMP$3408$6, (void*)vr$2106, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3409$6, 0, 12 );
						FBSTRING* vr$2112 = fb_StrConcat( &TMP$3409$6, (void*)vr$2109, -1, *(void**)REGSTRW$, 0 );
						fb_StrAssign( (void*)&TMP$3410$6, -1, (void*)vr$2112, -1, 0 );
						HWRITEASM64( &TMP$3410$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3410$6 );
					}
					goto label$2617;
					label$2629:;
					if( DTYPE$1 == 2 ) goto label$2633;
					label$2634:;
					if( DTYPE$1 == 3 ) goto label$2633;
					label$2635:;
					if( DTYPE$1 == 1 ) goto label$2633;
					label$2636:;
					if( DTYPE$1 != 4 ) goto label$2632;
					label$2633:;
					{
						FBSTRING TMP$3411$6;
						FBSTRING TMP$3412$6;
						FBSTRING TMP$3413$6;
						FBSTRING TMP$3414$6;
						int32 vr$2117 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRB$ + (vr$2117 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3414$6, 0, 12 );
						__builtin_memset( &TMP$3411$6, 0, 12 );
						FBSTRING* vr$2124 = fb_StrConcat( &TMP$3411$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3412$6, 0, 12 );
						FBSTRING* vr$2127 = fb_StrConcat( &TMP$3412$6, (void*)vr$2124, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3413$6, 0, 12 );
						FBSTRING* vr$2130 = fb_StrConcat( &TMP$3413$6, (void*)vr$2127, -1, *(void**)REGSTRB$, 0 );
						fb_StrAssign( (void*)&TMP$3414$6, -1, (void*)vr$2130, -1, 0 );
						HWRITEASM64( &TMP$3414$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3414$6 );
					}
					goto label$2617;
					label$2632:;
					{
						FBSTRING TMP$3415$6;
						FBSTRING TMP$3419$6;
						FBSTRING TMP$3420$6;
						FBSTRING TMP$3421$6;
						__builtin_memset( &TMP$3415$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3415$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3415$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3415$6 );
						__builtin_memset( &TMP$3420$6, 0, 12 );
						FBSTRING* vr$2139 = fb_IntToStr( DTYPE$1 );
						__builtin_memset( &TMP$3419$6, 0, 12 );
						FBSTRING* vr$2142 = fb_StrConcat( &TMP$3419$6, (void*)"FOUND AN ERROR : in hdocall datatype not handled 04 = ", 55, (void*)vr$2139, -1 );
						fb_StrAssign( (void*)&TMP$3420$6, -1, (void*)vr$2142, -1, 0 );
						HWRITEASM64( &TMP$3420$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3420$6 );
						__builtin_memset( &TMP$3421$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3421$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3421$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3421$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + 68), 0, 0 );
					}
					label$2637:;
					label$2617:;
				}
			}
			goto label$2614;
			label$2615:;
			{
				FBSTRING TMP$3422$4;
				FBSTRING TMP$3425$4;
				FBSTRING TMP$3426$4;
				__builtin_memset( &TMP$3422$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3422$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3422$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3422$4 );
				__builtin_memset( &TMP$3425$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3425$4, -1, (void*)"FOUND AN ERROR : in hdocall vr->type not handled (test optim)", 62, 0 );
				HWRITEASM64( &TMP$3425$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3425$4 );
				__builtin_memset( &TMP$3426$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3426$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3426$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3426$4 );
			}
			label$2638:;
			label$2614:;
		}
	}
	label$2587:;
	label$2586:;
	fb_ArrayDestructStr( (struct $7FBARRAYIvE*)&tmp$2965$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2295:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	FBSTRING TMP$3427$1;
	FBSTRING TMP$3428$1;
	label$2639:;
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1 );
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2642;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2644;
		{
			VARIADIC$1 = (boolean)1;
		}
		label$2644:;
		label$2643:;
	}
	label$2642:;
	label$2641:;
	__builtin_memset( &TMP$3428$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3428$1, -1, (void*)"", 1, 0 );
	__builtin_memset( &TMP$3427$1, 0, 12 );
	uint8* vr$7 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&TMP$3427$1, -1, (void*)vr$7, 0, 0 );
	HDOCALL( PROC$1, &TMP$3427$1, &TMP$3428$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)0 );
	fb_StrDelete( (FBSTRING*)&TMP$3428$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3427$1 );
	label$2640:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int32 BYTESTOPOP$1, int32 LEVEL$1 )
{
	label$2645:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1 );
	struct $8FBSYMBOL* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 4 );
	{
		$15IRVREGTYPE_ENUM TMP$3429$2;
		TMP$3429$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$3429$2 != 4 ) goto label$2648;
		label$2649:;
		{
			int32 vr$6 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$6 << (2 & 31))), 0, 0 );
		}
		goto label$2647;
		label$2648:;
		if( TMP$3429$2 != 2 ) goto label$2650;
		label$2651:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2647;
		label$2650:;
		if( TMP$3429$2 != 3 ) goto label$2652;
		label$2653:;
		{
			FBSTRING TMP$3430$3;
			FBSTRING TMP$3431$3;
			FBSTRING TMP$3432$3;
			int32 vr$13 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$16 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$3430$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$3430$3, (void*)vr$16, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$3431$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$3431$3, (void*)vr$19, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$13 << (2 & 31))), 0 );
			__builtin_memset( &TMP$3432$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$3432$3, (void*)vr$22, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$25, -1, 0 );
		}
		goto label$2647;
		label$2652:;
		if( TMP$3429$2 != 5 ) goto label$2654;
		label$2655:;
		{
			uint8* vr$28 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$28, 0, 0 );
		}
		goto label$2647;
		label$2654:;
		if( TMP$3429$2 != 0 ) goto label$2656;
		label$2657:;
		{
			FBSTRING TMP$3433$3;
			FBSTRING TMP$3436$3;
			FBSTRING TMP$3437$3;
			__builtin_memset( &TMP$3433$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3433$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3433$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3433$3 );
			__builtin_memset( &TMP$3436$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3436$3, -1, (void*)"FOUND AN ERROR : Never IMM as first operand", 44, 0 );
			HWRITEASM64( &TMP$3436$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3436$3 );
			__builtin_memset( &TMP$3437$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3437$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3437$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3437$3 );
		}
		goto label$2647;
		label$2656:;
		if( TMP$3429$2 != 1 ) goto label$2658;
		label$2659:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2661;
			{
				FBSTRING TMP$3438$4;
				FBSTRING TMP$3439$4;
				FBSTRING TMP$3440$4;
				FBSTRING* vr$52 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$54 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$3438$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$3438$4, (void*)vr$54, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3439$4, 0, 12 );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$3439$4, (void*)vr$57, -1, (void*)vr$52, -1 );
				__builtin_memset( &TMP$3440$4, 0, 12 );
				FBSTRING* vr$63 = fb_StrConcat( &TMP$3440$4, (void*)vr$60, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$63, -1, 0 );
			}
			goto label$2660;
			label$2661:;
			{
				FBSTRING TMP$3441$4;
				FBSTRING* vr$66 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$3441$4, 0, 12 );
				FBSTRING* vr$69 = fb_StrConcat( &TMP$3441$4, (void*)vr$66, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$69, -1, 0 );
			}
			label$2660:;
		}
		goto label$2647;
		label$2658:;
		{
			FBSTRING TMP$3442$3;
			FBSTRING TMP$3443$3;
			FBSTRING TMP$3444$3;
			__builtin_memset( &TMP$3442$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3442$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3442$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3442$3 );
			__builtin_memset( &TMP$3443$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3443$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51, 0 );
			HWRITEASM64( &TMP$3443$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3443$3 );
			__builtin_memset( &TMP$3444$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3444$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3444$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3444$3 );
		}
		label$2662:;
		label$2647:;
	}
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2664;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2666;
		{
			VARIADIC$1 = (boolean)1;
		}
		label$2666:;
		label$2665:;
	}
	label$2664:;
	label$2663:;
	HDOCALL( PROC$1, &OP1$1, &OP3$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2646:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$3445$1;
	FBSTRING TMP$3446$1;
	label$2667:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	if( *(int32*)((uint8*)V1$1 + 12) != *(int32*)((uint8*)&CTX$ + 136) ) goto label$2670;
	{
		REG$1 = *(int32*)((uint8*)&CTX$ + 132);
		*(int32*)((uint8*)&CTX$ + 140) = 0;
		*(int32*)((uint8*)&CTX$ + 136) = -2;
	}
	goto label$2669;
	label$2670:;
	{
		int32 vr$3 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
		REG$1 = vr$3;
	}
	label$2669:;
	__builtin_memset( &TMP$3446$1, 0, 12 );
	__builtin_memset( &TMP$3445$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3445$1, (void*)"jmp ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REG$1 << (2 & 31))), 0 );
	fb_StrAssign( (void*)&TMP$3446$1, -1, (void*)vr$8, -1, 0 );
	HWRITEASM64( &TMP$3446$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3446$1 );
	label$2668:;
}

static void _EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$3447$1;
	FBSTRING TMP$3448$1;
	FBSTRING TMP$3449$1;
	label$2671:;
	__builtin_memset( &TMP$3449$1, 0, 12 );
	uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
	uint8* vr$2 = HGETBOPCODE( OP$1 );
	__builtin_memset( &TMP$3447$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3447$1, (void*)vr$2, 0, (void*)" ", 2 );
	__builtin_memset( &TMP$3448$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3448$1, (void*)vr$5, -1, (void*)vr$1, 0 );
	fb_StrAssign( (void*)&TMP$3449$1, -1, (void*)vr$8, -1, 0 );
	HWRITEASM64( &TMP$3449$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3449$1 );
	if( *(int32*)((uint8*)&CTX$ + 236) == 0 ) goto label$2674;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((uint8*)&CTX$ + 236) << (2 & 31))) = -2;
		*(int32*)((uint8*)&CTX$ + 236) = 0;
	}
	label$2674:;
	label$2673:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) == (struct $8FBSYMBOL*)0u ) goto label$2676;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) = LABEL$1;
	}
	label$2676:;
	label$2675:;
	if( OP$1 == 98 ) goto label$2678;
	{
		REG_MARK( LABEL$1 );
	}
	label$2678:;
	label$2677:;
	label$2672:;
}

static void _EMITRETURN( int32 BYTESTOPOP$1 )
{
	FBSTRING TMP$3451$1;
	FBSTRING TMP$3452$1;
	label$2679:;
	__builtin_memset( &TMP$3451$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3451$1, -1, (void*)"add rsp, 88 # restore stack for gosub", 38, 0 );
	HWRITEASM64( &TMP$3451$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3451$1 );
	__builtin_memset( &TMP$3452$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3452$1, -1, (void*)"ret", 4, 0 );
	HWRITEASM64( &TMP$3452$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3452$1 );
	label$2680:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$3453$1;
	label$2681:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING OP1$1;
	FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
	__builtin_memset( &TMP$3453$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3453$1, (void*)vr$2, -1, (void*)"[rbp]", 6 );
	fb_StrInit( (void*)&OP1$1, -1, (void*)vr$5, -1, 0 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4 );
	int32 REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 4 );
	if( LABELCOUNT$1 != 0 ) goto label$2684;
	{
		FBSTRING TMP$3454$2;
		FBSTRING TMP$3455$2;
		__builtin_memset( &TMP$3455$2, 0, 12 );
		uint8* vr$11 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3454$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$3454$2, (void*)"jmp ", 5, (void*)vr$11, 0 );
		fb_StrAssign( (void*)&TMP$3455$2, -1, (void*)vr$14, -1, 0 );
		HWRITEASM64( &TMP$3455$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3455$2 );
	}
	goto label$2683;
	label$2684:;
	{
		FBSTRING TMP$3456$2;
		FBSTRING TMP$3457$2;
		FBSTRING TMP$3468$2;
		FBSTRING TMP$3469$2;
		FBSTRING TMP$3470$2;
		FBSTRING TMP$3471$2;
		FBSTRING TMP$3473$2;
		FBSTRING TMP$3474$2;
		FBSTRING TMP$3475$2;
		FBSTRING TMP$3476$2;
		FBSTRING TMP$3477$2;
		FBSTRING TMP$3479$2;
		FBSTRING TMP$3480$2;
		FBSTRING TMP$3481$2;
		FBSTRING TMP$3482$2;
		FBSTRING TMP$3483$2;
		FBSTRING TMP$3484$2;
		FBSTRING TMP$3485$2;
		FBSTRING TMP$3491$2;
		uint8* vr$18 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$18, 0, 0 );
		__builtin_memset( &TMP$3457$2, 0, 12 );
		__builtin_memset( &TMP$3456$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$3456$2, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$3457$2, -1, (void*)vr$24, -1, 0 );
		HWRITEASM64( &TMP$3457$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3457$2 );
		if( (-(BIAS$1 > 2147483647ull) & -(BIAS$1 < 18446744071562067968ull)) == 0 ) goto label$2686;
		{
			FBSTRING TMP$3458$3;
			FBSTRING TMP$3459$3;
			FBSTRING TMP$3460$3;
			FBSTRING TMP$3461$3;
			FBSTRING TMP$3463$3;
			FBSTRING TMP$3464$3;
			int32 vr$31 = REG_FINDFREE( 999998, -1 );
			fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$31 << (2 & 31))), 0, 0 );
			__builtin_memset( &TMP$3461$3, 0, 12 );
			FBSTRING* vr$35 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3458$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$3458$3, (void*)"mov ", 5, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$3459$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$3459$3, (void*)vr$39, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$3460$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$3460$3, (void*)vr$42, -1, (void*)vr$35, -1 );
			fb_StrAssign( (void*)&TMP$3461$3, -1, (void*)vr$45, -1, 0 );
			HWRITEASM64( &TMP$3461$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3461$3 );
			__builtin_memset( &TMP$3464$3, 0, 12 );
			__builtin_memset( &TMP$3463$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$3463$3, (void*)"sub rax, ", 10, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$3464$3, -1, (void*)vr$53, -1, 0 );
			HWRITEASM64( &TMP$3464$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3464$3 );
		}
		goto label$2685;
		label$2686:;
		{
			FBSTRING TMP$3465$3;
			FBSTRING TMP$3466$3;
			__builtin_memset( &TMP$3466$3, 0, 12 );
			FBSTRING* vr$58 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3465$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$3465$3, (void*)"sub rax, ", 10, (void*)vr$58, -1 );
			fb_StrAssign( (void*)&TMP$3466$3, -1, (void*)vr$61, -1, 0 );
			HWRITEASM64( &TMP$3466$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3466$3 );
		}
		label$2685:;
		__builtin_memset( &TMP$3469$2, 0, 12 );
		FBSTRING* vr$66 = fb_ULongintToStr( SPAN$1 );
		__builtin_memset( &TMP$3468$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$3468$2, (void*)"cmp rax, ", 10, (void*)vr$66, -1 );
		fb_StrAssign( (void*)&TMP$3469$2, -1, (void*)vr$69, -1, 0 );
		HWRITEASM64( &TMP$3469$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3469$2 );
		__builtin_memset( &TMP$3471$2, 0, 12 );
		uint8* vr$74 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3470$2, 0, 12 );
		FBSTRING* vr$77 = fb_StrConcat( &TMP$3470$2, (void*)"ja ", 4, (void*)vr$74, 0 );
		fb_StrAssign( (void*)&TMP$3471$2, -1, (void*)vr$77, -1, 0 );
		HWRITEASM64( &TMP$3471$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3471$2 );
		int32 vr$81 = REG_FINDFREE( 999997, -1 );
		REGTEMPO$1 = vr$81;
		*(int32*)((int32)(int32*)REGHANDLE$ + (REGTEMPO$1 << (2 & 31))) = -2;
		__builtin_memset( &TMP$3477$2, 0, 12 );
		__builtin_memset( &TMP$3473$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$3473$2, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (REGTEMPO$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$3474$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$3474$2, (void*)vr$88, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$3475$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$3475$2, (void*)vr$91, -1, (void*)&LNAME$1, -1 );
		__builtin_memset( &TMP$3476$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$3476$2, (void*)vr$94, -1, (void*)"[rip]", 6 );
		fb_StrAssign( (void*)&TMP$3477$2, -1, (void*)vr$97, -1, 0 );
		HWRITEASM64( &TMP$3477$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3477$2 );
		__builtin_memset( &TMP$3481$2, 0, 12 );
		__builtin_memset( &TMP$3479$2, 0, 12 );
		FBSTRING* vr$105 = fb_StrConcat( &TMP$3479$2, (void*)"jmp QWORD PTR [rax*8+", 22, *(void**)((int32)(uint8**)REGSTRQ$ + (REGTEMPO$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$3480$2, 0, 12 );
		FBSTRING* vr$108 = fb_StrConcat( &TMP$3480$2, (void*)vr$105, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$3481$2, -1, (void*)vr$108, -1, 0 );
		HWRITEASM64( &TMP$3481$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3481$2 );
		__builtin_memset( &TMP$3482$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3482$2, -1, (void*)".data", 6, 0 );
		ASM_SECTION( &TMP$3482$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3482$2 );
		__builtin_memset( &TMP$3483$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3483$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$3483$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3483$2 );
		__builtin_memset( &TMP$3485$2, 0, 12 );
		__builtin_memset( &TMP$3484$2, 0, 12 );
		FBSTRING* vr$124 = fb_StrConcat( &TMP$3484$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3485$2, -1, (void*)vr$124, -1, 0 );
		HWRITEASM64( &TMP$3485$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3485$2 );
		{
			int32 ISEL$3;
			ISEL$3 = 0;
			int32 TMP$3486$3;
			TMP$3486$3 = (int32)SPAN$1;
			goto label$2687;
			label$2690:;
			{
				if( (uint64)ISEL$3 != *(uint64*)((uint8*)VALUES$1 + (IDX$1 << (3 & 31))) ) goto label$2692;
				{
					FBSTRING TMP$3487$5;
					FBSTRING TMP$3488$5;
					__builtin_memset( &TMP$3488$5, 0, 12 );
					uint8* vr$135 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (IDX$1 << (2 & 31))) );
					__builtin_memset( &TMP$3487$5, 0, 12 );
					FBSTRING* vr$138 = fb_StrConcat( &TMP$3487$5, (void*)".quad ", 7, (void*)vr$135, 0 );
					fb_StrAssign( (void*)&TMP$3488$5, -1, (void*)vr$138, -1, 0 );
					HWRITEASM64( &TMP$3488$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3488$5 );
					IDX$1 = IDX$1 + 1;
				}
				goto label$2691;
				label$2692:;
				{
					FBSTRING TMP$3489$5;
					FBSTRING TMP$3490$5;
					__builtin_memset( &TMP$3490$5, 0, 12 );
					uint8* vr$144 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
					__builtin_memset( &TMP$3489$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$3489$5, (void*)".quad ", 7, (void*)vr$144, 0 );
					fb_StrAssign( (void*)&TMP$3490$5, -1, (void*)vr$147, -1, 0 );
					HWRITEASM64( &TMP$3490$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3490$5 );
				}
				label$2691:;
			}
			label$2688:;
			ISEL$3 = ISEL$3 + 1;
			label$2687:;
			if( ISEL$3 <= TMP$3486$3 ) goto label$2690;
			label$2689:;
		}
		__builtin_memset( &TMP$3491$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3491$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$3491$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3491$2 );
	}
	label$2683:;
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$2682:;
}

static void _EMITMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$2693:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING INSTRUC$1;
	fb_StrInit( (void*)&INSTRUC$1, -1, (void*)"mov ", 5, 0 );
	uint8* REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 4 );
	int32 DESTTYP$1;
	DESTTYP$1 = 0;
	int32 SRCTYP$1;
	SRCTYP$1 = 0;
	int32 REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4 );
	{
		if( OP$1 != 107 ) goto label$2696;
		label$2697:;
		{
			if( *(int32*)V1$1 != 4 ) goto label$2699;
			{
				int32 vr$10 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				REGSRC$1 = vr$10;
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0, 0 );
				SRCTYP$1 = 1;
			}
			goto label$2698;
			label$2699:;
			if( *(int32*)V1$1 != 1 ) goto label$2700;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2702;
				{
					FBSTRING TMP$3492$5;
					FBSTRING TMP$3493$5;
					FBSTRING TMP$3494$5;
					FBSTRING* vr$24 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$26 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$3492$5, 0, 12 );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$3492$5, (void*)vr$26, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3493$5, 0, 12 );
					FBSTRING* vr$32 = fb_StrConcat( &TMP$3493$5, (void*)vr$29, -1, (void*)vr$24, -1 );
					__builtin_memset( &TMP$3494$5, 0, 12 );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$3494$5, (void*)vr$32, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$35, -1, 0 );
				}
				goto label$2701;
				label$2702:;
				{
					FBSTRING TMP$3495$5;
					FBSTRING* vr$38 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$3495$5, 0, 12 );
					FBSTRING* vr$41 = fb_StrConcat( &TMP$3495$5, (void*)vr$38, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$41, -1, 0 );
				}
				label$2701:;
				SRCTYP$1 = 0;
			}
			goto label$2698;
			label$2700:;
			if( *(int32*)V1$1 != 5 ) goto label$2703;
			{
				FBSTRING TMP$3496$4;
				FBSTRING TMP$3497$4;
				FBSTRING TMP$3498$4;
				FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$47 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$3496$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$3496$4, (void*)vr$47, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3497$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$3497$4, (void*)vr$50, -1, (void*)vr$45, -1 );
				__builtin_memset( &TMP$3498$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$3498$4, (void*)vr$53, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$56, -1, 0 );
				SRCTYP$1 = 1;
				fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"lea ", 5, 0 );
			}
			goto label$2698;
			label$2703:;
			{
				FBSTRING TMP$3499$4;
				FBSTRING TMP$3502$4;
				FBSTRING TMP$3503$4;
				__builtin_memset( &TMP$3499$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3499$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3499$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3499$4 );
				__builtin_memset( &TMP$3502$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3502$4, -1, (void*)"FOUND AN ERROR : Memclear v1 not a reg nor a var", 49, 0 );
				HWRITEASM64( &TMP$3502$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3502$4 );
				__builtin_memset( &TMP$3503$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3503$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3503$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3503$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2694;
			}
			label$2698:;
			if( *(int32*)V2$1 != 4 ) goto label$2705;
			{
				FBSTRING TMP$3504$4;
				FBSTRING TMP$3505$4;
				FBSTRING TMP$3506$4;
				FBSTRING TMP$3507$4;
				FBSTRING TMP$3509$4;
				FBSTRING TMP$3510$4;
				FBSTRING TMP$3511$4;
				FBSTRING TMP$3512$4;
				FBSTRING TMP$3513$4;
				FBSTRING TMP$3514$4;
				FBSTRING TMP$3516$4;
				FBSTRING TMP$3518$4;
				FBSTRING TMP$3519$4;
				FBSTRING TMP$3520$4;
				FBSTRING TMP$3521$4;
				FBSTRING TMP$3522$4;
				FBSTRING TMP$3523$4;
				FBSTRING TMP$3524$4;
				int32 vr$79 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
				fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$79 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$3507$4, 0, 12 );
				__builtin_memset( &TMP$3504$4, 0, 12 );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$3504$4, (void*)"test ", 6, (void*)&OP2$1, -1 );
				__builtin_memset( &TMP$3505$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$3505$4, (void*)vr$87, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$3506$4, 0, 12 );
				FBSTRING* vr$93 = fb_StrConcat( &TMP$3506$4, (void*)vr$90, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$3507$4, -1, (void*)vr$93, -1, 0 );
				HWRITEASM64( &TMP$3507$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3507$4 );
				uint8* vr$97 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$97, 0, 0 );
				__builtin_memset( &TMP$3510$4, 0, 12 );
				__builtin_memset( &TMP$3509$4, 0, 12 );
				FBSTRING* vr$103 = fb_StrConcat( &TMP$3509$4, (void*)"jz ", 4, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$3510$4, -1, (void*)vr$103, -1, 0 );
				HWRITEASM64( &TMP$3510$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3510$4 );
				__builtin_memset( &TMP$3512$4, 0, 12 );
				__builtin_memset( &TMP$3511$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$3511$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$3512$4, -1, (void*)vr$111, -1, 0 );
				HWRITEASM64( &TMP$3512$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3512$4 );
				uint8* vr$115 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$115, 0, 0 );
				__builtin_memset( &TMP$3514$4, 0, 12 );
				__builtin_memset( &TMP$3513$4, 0, 12 );
				FBSTRING* vr$121 = fb_StrConcat( &TMP$3513$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$3514$4, -1, (void*)vr$121, -1, 0 );
				HWRITEASM64( &TMP$3514$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3514$4 );
				__builtin_memset( &TMP$3516$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3516$4, -1, (void*)"mov BYTE PTR [rax], 0", 22, 0 );
				HWRITEASM64( &TMP$3516$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3516$4 );
				__builtin_memset( &TMP$3518$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3518$4, -1, (void*)"inc rax", 8, 0 );
				HWRITEASM64( &TMP$3518$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3518$4 );
				__builtin_memset( &TMP$3520$4, 0, 12 );
				__builtin_memset( &TMP$3519$4, 0, 12 );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$3519$4, (void*)"dec ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$3520$4, -1, (void*)vr$137, -1, 0 );
				HWRITEASM64( &TMP$3520$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3520$4 );
				__builtin_memset( &TMP$3522$4, 0, 12 );
				__builtin_memset( &TMP$3521$4, 0, 12 );
				FBSTRING* vr$145 = fb_StrConcat( &TMP$3521$4, (void*)"jnz ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$3522$4, -1, (void*)vr$145, -1, 0 );
				HWRITEASM64( &TMP$3522$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3522$4 );
				__builtin_memset( &TMP$3524$4, 0, 12 );
				__builtin_memset( &TMP$3523$4, 0, 12 );
				FBSTRING* vr$153 = fb_StrConcat( &TMP$3523$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$3524$4, -1, (void*)vr$153, -1, 0 );
				HWRITEASM64( &TMP$3524$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3524$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2694;
			}
			label$2705:;
			label$2704:;
			if( *(int32*)V2$1 == 0 ) goto label$2707;
			{
				FBSTRING TMP$3525$4;
				FBSTRING TMP$3528$4;
				FBSTRING TMP$3529$4;
				__builtin_memset( &TMP$3525$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3525$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3525$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3525$4 );
				__builtin_memset( &TMP$3528$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3528$4, -1, (void*)"FOUND AN ERROR : Memclear without an immediat as size", 54, 0 );
				HWRITEASM64( &TMP$3528$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3528$4 );
				__builtin_memset( &TMP$3529$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3529$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3529$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3529$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2694;
			}
			label$2707:;
			label$2706:;
			if( *(int64*)((uint8*)V2$1 + 24) != 0ll ) goto label$2709;
			{
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2694;
				label$2709:;
			}
			{
				int64 TMP$3530$4;
				TMP$3530$4 = *(int64*)((uint8*)V2$1 + 24);
				if( TMP$3530$4 > 8ll ) goto label$2712;
				label$2713:;
				if( TMP$3530$4 == 3ll ) goto label$2712;
				label$2714:;
				if( TMP$3530$4 == 5ll ) goto label$2712;
				label$2715:;
				if( TMP$3530$4 == 6ll ) goto label$2712;
				label$2716:;
				if( TMP$3530$4 != 7ll ) goto label$2711;
				label$2712:;
				{
					MEMCLEAR( (int32)*(int64*)((uint8*)V2$1 + 24), &OP1$1, SRCTYP$1 );
				}
				goto label$2710;
				label$2711:;
				if( TMP$3530$4 != 1ll ) goto label$2717;
				label$2718:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2720;
					{
						FBSTRING TMP$3532$6;
						FBSTRING TMP$3533$6;
						FBSTRING TMP$3534$6;
						__builtin_memset( &TMP$3534$6, 0, 12 );
						__builtin_memset( &TMP$3532$6, 0, 12 );
						FBSTRING* vr$198 = fb_StrConcat( &TMP$3532$6, (void*)"mov BYTE PTR [", 15, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3533$6, 0, 12 );
						FBSTRING* vr$201 = fb_StrConcat( &TMP$3533$6, (void*)vr$198, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3534$6, -1, (void*)vr$201, -1, 0 );
						HWRITEASM64( &TMP$3534$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3534$6 );
					}
					goto label$2719;
					label$2720:;
					{
						FBSTRING TMP$3536$6;
						FBSTRING TMP$3537$6;
						FBSTRING TMP$3538$6;
						FBSTRING TMP$3539$6;
						__builtin_memset( &TMP$3538$6, 0, 12 );
						__builtin_memset( &TMP$3536$6, 0, 12 );
						FBSTRING* vr$210 = fb_StrConcat( &TMP$3536$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3537$6, 0, 12 );
						FBSTRING* vr$213 = fb_StrConcat( &TMP$3537$6, (void*)vr$210, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3538$6, -1, (void*)vr$213, -1, 0 );
						HWRITEASM64( &TMP$3538$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3538$6 );
						__builtin_memset( &TMP$3539$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3539$6, -1, (void*)"mov BYTE PTR [rax], 0", 22, 0 );
						HWRITEASM64( &TMP$3539$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3539$6 );
					}
					label$2719:;
				}
				goto label$2710;
				label$2717:;
				if( TMP$3530$4 != 2ll ) goto label$2721;
				label$2722:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2724;
					{
						FBSTRING TMP$3541$6;
						FBSTRING TMP$3542$6;
						FBSTRING TMP$3543$6;
						__builtin_memset( &TMP$3543$6, 0, 12 );
						__builtin_memset( &TMP$3541$6, 0, 12 );
						FBSTRING* vr$226 = fb_StrConcat( &TMP$3541$6, (void*)"mov WORD PTR [", 15, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3542$6, 0, 12 );
						FBSTRING* vr$229 = fb_StrConcat( &TMP$3542$6, (void*)vr$226, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3543$6, -1, (void*)vr$229, -1, 0 );
						HWRITEASM64( &TMP$3543$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3543$6 );
					}
					goto label$2723;
					label$2724:;
					{
						FBSTRING TMP$3544$6;
						FBSTRING TMP$3545$6;
						FBSTRING TMP$3546$6;
						FBSTRING TMP$3548$6;
						__builtin_memset( &TMP$3546$6, 0, 12 );
						__builtin_memset( &TMP$3544$6, 0, 12 );
						FBSTRING* vr$238 = fb_StrConcat( &TMP$3544$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3545$6, 0, 12 );
						FBSTRING* vr$241 = fb_StrConcat( &TMP$3545$6, (void*)vr$238, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3546$6, -1, (void*)vr$241, -1, 0 );
						HWRITEASM64( &TMP$3546$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3546$6 );
						__builtin_memset( &TMP$3548$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3548$6, -1, (void*)"mov WORD PTR [rax], 0", 22, 0 );
						HWRITEASM64( &TMP$3548$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3548$6 );
					}
					label$2723:;
				}
				goto label$2710;
				label$2721:;
				if( TMP$3530$4 != 4ll ) goto label$2725;
				label$2726:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2728;
					{
						FBSTRING TMP$3550$6;
						FBSTRING TMP$3551$6;
						FBSTRING TMP$3552$6;
						__builtin_memset( &TMP$3552$6, 0, 12 );
						__builtin_memset( &TMP$3550$6, 0, 12 );
						FBSTRING* vr$254 = fb_StrConcat( &TMP$3550$6, (void*)"mov DWORD PTR [", 16, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3551$6, 0, 12 );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$3551$6, (void*)vr$254, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3552$6, -1, (void*)vr$257, -1, 0 );
						HWRITEASM64( &TMP$3552$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3552$6 );
					}
					goto label$2727;
					label$2728:;
					{
						FBSTRING TMP$3553$6;
						FBSTRING TMP$3554$6;
						FBSTRING TMP$3555$6;
						FBSTRING TMP$3557$6;
						__builtin_memset( &TMP$3555$6, 0, 12 );
						__builtin_memset( &TMP$3553$6, 0, 12 );
						FBSTRING* vr$266 = fb_StrConcat( &TMP$3553$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3554$6, 0, 12 );
						FBSTRING* vr$269 = fb_StrConcat( &TMP$3554$6, (void*)vr$266, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3555$6, -1, (void*)vr$269, -1, 0 );
						HWRITEASM64( &TMP$3555$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3555$6 );
						__builtin_memset( &TMP$3557$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3557$6, -1, (void*)"mov DWORD PTR [rax], 0", 23, 0 );
						HWRITEASM64( &TMP$3557$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3557$6 );
					}
					label$2727:;
				}
				goto label$2710;
				label$2725:;
				if( TMP$3530$4 != 8ll ) goto label$2729;
				label$2730:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2732;
					{
						FBSTRING TMP$3558$6;
						FBSTRING TMP$3559$6;
						FBSTRING TMP$3560$6;
						__builtin_memset( &TMP$3560$6, 0, 12 );
						__builtin_memset( &TMP$3558$6, 0, 12 );
						FBSTRING* vr$282 = fb_StrConcat( &TMP$3558$6, (void*)"mov QWORD PTR [", 16, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3559$6, 0, 12 );
						FBSTRING* vr$285 = fb_StrConcat( &TMP$3559$6, (void*)vr$282, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3560$6, -1, (void*)vr$285, -1, 0 );
						HWRITEASM64( &TMP$3560$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3560$6 );
					}
					goto label$2731;
					label$2732:;
					{
						FBSTRING TMP$3561$6;
						FBSTRING TMP$3562$6;
						FBSTRING TMP$3563$6;
						FBSTRING TMP$3565$6;
						__builtin_memset( &TMP$3563$6, 0, 12 );
						__builtin_memset( &TMP$3561$6, 0, 12 );
						FBSTRING* vr$294 = fb_StrConcat( &TMP$3561$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3562$6, 0, 12 );
						FBSTRING* vr$297 = fb_StrConcat( &TMP$3562$6, (void*)vr$294, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3563$6, -1, (void*)vr$297, -1, 0 );
						HWRITEASM64( &TMP$3563$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3563$6 );
						__builtin_memset( &TMP$3565$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3565$6, -1, (void*)"mov QWORD PTR [rax], 0", 23, 0 );
						HWRITEASM64( &TMP$3565$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3565$6 );
					}
					label$2731:;
				}
				label$2729:;
				label$2710:;
			}
		}
		goto label$2695;
		label$2696:;
		if( OP$1 != 105 ) goto label$2733;
		label$2734:;
		{
			if( BYTES$1 != 0ll ) goto label$2736;
			{
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2694;
			}
			label$2736:;
			label$2735:;
			{
				$15IRVREGTYPE_ENUM TMP$3566$4;
				TMP$3566$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$3566$4 != 2 ) goto label$2738;
				label$2739:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2737;
				label$2738:;
				if( TMP$3566$4 != 4 ) goto label$2740;
				label$2741:;
				{
					int32 vr$315 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$315 << (2 & 31))), 0, 0 );
				}
				goto label$2737;
				label$2740:;
				if( TMP$3566$4 != 1 ) goto label$2742;
				label$2743:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2745;
					{
						FBSTRING TMP$3567$6;
						FBSTRING TMP$3568$6;
						FBSTRING TMP$3569$6;
						FBSTRING* vr$328 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						uint8* vr$330 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
						__builtin_memset( &TMP$3567$6, 0, 12 );
						FBSTRING* vr$333 = fb_StrConcat( &TMP$3567$6, (void*)vr$330, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3568$6, 0, 12 );
						FBSTRING* vr$336 = fb_StrConcat( &TMP$3568$6, (void*)vr$333, -1, (void*)vr$328, -1 );
						__builtin_memset( &TMP$3569$6, 0, 12 );
						FBSTRING* vr$339 = fb_StrConcat( &TMP$3569$6, (void*)vr$336, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$339, -1, 0 );
					}
					goto label$2744;
					label$2745:;
					{
						FBSTRING TMP$3570$6;
						FBSTRING* vr$342 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$3570$6, 0, 12 );
						FBSTRING* vr$345 = fb_StrConcat( &TMP$3570$6, (void*)vr$342, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$345, -1, 0 );
					}
					label$2744:;
				}
				goto label$2737;
				label$2742:;
				if( TMP$3566$4 != 3 ) goto label$2746;
				label$2747:;
				{
					FBSTRING TMP$3571$5;
					FBSTRING TMP$3572$5;
					FBSTRING TMP$3573$5;
					int32 vr$349 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$352 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$3571$5, 0, 12 );
					FBSTRING* vr$355 = fb_StrConcat( &TMP$3571$5, (void*)vr$352, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3572$5, 0, 12 );
					FBSTRING* vr$358 = fb_StrConcat( &TMP$3572$5, (void*)vr$355, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$349 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3573$5, 0, 12 );
					FBSTRING* vr$361 = fb_StrConcat( &TMP$3573$5, (void*)vr$358, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$361, -1, 0 );
				}
				goto label$2737;
				label$2746:;
				if( TMP$3566$4 != 5 ) goto label$2748;
				label$2749:;
				{
					FBSTRING TMP$3574$5;
					FBSTRING TMP$3575$5;
					FBSTRING TMP$3576$5;
					FBSTRING* vr$364 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$366 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$3574$5, 0, 12 );
					FBSTRING* vr$369 = fb_StrConcat( &TMP$3574$5, (void*)vr$366, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3575$5, 0, 12 );
					FBSTRING* vr$372 = fb_StrConcat( &TMP$3575$5, (void*)vr$369, -1, (void*)vr$364, -1 );
					__builtin_memset( &TMP$3576$5, 0, 12 );
					FBSTRING* vr$375 = fb_StrConcat( &TMP$3576$5, (void*)vr$372, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$375, -1, 0 );
					DESTTYP$1 = 1;
				}
				goto label$2737;
				label$2748:;
				if( TMP$3566$4 != 0 ) goto label$2750;
				label$2751:;
				{
					FBSTRING TMP$3577$5;
					FBSTRING TMP$3578$5;
					FBSTRING* vr$378 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 24) );
					__builtin_memset( &TMP$3577$5, 0, 12 );
					FBSTRING* vr$381 = fb_StrConcat( &TMP$3577$5, (void*)"[", 2, (void*)vr$378, -1 );
					__builtin_memset( &TMP$3578$5, 0, 12 );
					FBSTRING* vr$384 = fb_StrConcat( &TMP$3578$5, (void*)vr$381, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$384, -1, 0 );
				}
				goto label$2737;
				label$2750:;
				{
					FBSTRING TMP$3579$5;
					FBSTRING TMP$3582$5;
					FBSTRING TMP$3583$5;
					__builtin_memset( &TMP$3579$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3579$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3579$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3579$5 );
					__builtin_memset( &TMP$3582$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3582$5, -1, (void*)"FOUND AN ERROR : memcopy 01 type not handled", 45, 0 );
					HWRITEASM64( &TMP$3582$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3582$5 );
					__builtin_memset( &TMP$3583$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3583$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3583$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3583$5 );
				}
				label$2752:;
				label$2737:;
			}
			{
				$15IRVREGTYPE_ENUM TMP$3584$4;
				TMP$3584$4 = *($15IRVREGTYPE_ENUM*)V2$1;
				if( TMP$3584$4 != 4 ) goto label$2754;
				label$2755:;
				{
					int32 vr$400 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					REGSRC$1 = vr$400;
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0, 0 );
				}
				goto label$2753;
				label$2754:;
				if( TMP$3584$4 != 1 ) goto label$2756;
				label$2757:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2759;
					{
						FBSTRING TMP$3585$6;
						FBSTRING TMP$3586$6;
						FBSTRING TMP$3587$6;
						FBSTRING* vr$413 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						uint8* vr$415 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$3585$6, 0, 12 );
						FBSTRING* vr$418 = fb_StrConcat( &TMP$3585$6, (void*)vr$415, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3586$6, 0, 12 );
						FBSTRING* vr$421 = fb_StrConcat( &TMP$3586$6, (void*)vr$418, -1, (void*)vr$413, -1 );
						__builtin_memset( &TMP$3587$6, 0, 12 );
						FBSTRING* vr$424 = fb_StrConcat( &TMP$3587$6, (void*)vr$421, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$424, -1, 0 );
					}
					goto label$2758;
					label$2759:;
					{
						FBSTRING TMP$3588$6;
						FBSTRING* vr$427 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						__builtin_memset( &TMP$3588$6, 0, 12 );
						FBSTRING* vr$430 = fb_StrConcat( &TMP$3588$6, (void*)vr$427, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$430, -1, 0 );
					}
					label$2758:;
				}
				goto label$2753;
				label$2756:;
				if( TMP$3584$4 != 5 ) goto label$2760;
				label$2761:;
				{
					FBSTRING TMP$3589$5;
					FBSTRING TMP$3590$5;
					FBSTRING TMP$3591$5;
					FBSTRING* vr$433 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					uint8* vr$435 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$3589$5, 0, 12 );
					FBSTRING* vr$438 = fb_StrConcat( &TMP$3589$5, (void*)vr$435, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3590$5, 0, 12 );
					FBSTRING* vr$441 = fb_StrConcat( &TMP$3590$5, (void*)vr$438, -1, (void*)vr$433, -1 );
					__builtin_memset( &TMP$3591$5, 0, 12 );
					FBSTRING* vr$444 = fb_StrConcat( &TMP$3591$5, (void*)vr$441, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$444, -1, 0 );
					SRCTYP$1 = 1;
				}
				goto label$2753;
				label$2760:;
				if( TMP$3584$4 != 3 ) goto label$2762;
				label$2763:;
				{
					FBSTRING TMP$3592$5;
					FBSTRING TMP$3593$5;
					FBSTRING TMP$3594$5;
					int32 vr$448 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
					FBSTRING* vr$451 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$3592$5, 0, 12 );
					FBSTRING* vr$454 = fb_StrConcat( &TMP$3592$5, (void*)vr$451, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3593$5, 0, 12 );
					FBSTRING* vr$457 = fb_StrConcat( &TMP$3593$5, (void*)vr$454, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$448 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3594$5, 0, 12 );
					FBSTRING* vr$460 = fb_StrConcat( &TMP$3594$5, (void*)vr$457, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$460, -1, 0 );
				}
				goto label$2753;
				label$2762:;
				{
					FBSTRING TMP$3595$5;
					FBSTRING TMP$3598$5;
					FBSTRING TMP$3599$5;
					__builtin_memset( &TMP$3595$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3595$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3595$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3595$5 );
					__builtin_memset( &TMP$3598$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3598$5, -1, (void*)"FOUND AN ERROR : Memcopy v2 not a reg nor a var nor ofs nor ptr", 64, 0 );
					HWRITEASM64( &TMP$3598$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3598$5 );
					__builtin_memset( &TMP$3599$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3599$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3599$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3599$5 );
				}
				label$2764:;
				label$2753:;
			}
			int32 vr$475 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$475 == 0 ) goto label$2766;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2766:;
			}
			{
				if( BYTES$1 > 8ll ) goto label$2769;
				label$2770:;
				if( BYTES$1 == 3ll ) goto label$2769;
				label$2771:;
				if( BYTES$1 == 5ll ) goto label$2769;
				label$2772:;
				if( BYTES$1 == 6ll ) goto label$2769;
				label$2773:;
				if( BYTES$1 != 7ll ) goto label$2768;
				label$2769:;
				{
					MEMCOPY( (int32)BYTES$1, &OP2$1, &OP1$1, SRCTYP$1, DESTTYP$1 );
				}
				goto label$2767;
				label$2768:;
				{
					if( *(int32*)V2$1 != 1 ) goto label$2776;
					{
						FBSTRING TMP$3600$6;
						FBSTRING TMP$3601$6;
						FBSTRING TMP$3602$6;
						FBSTRING TMP$3603$6;
						__builtin_memset( &TMP$3601$6, 0, 12 );
						__builtin_memset( &TMP$3600$6, 0, 12 );
						FBSTRING* vr$485 = fb_StrConcat( &TMP$3600$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$3601$6, -1, (void*)vr$485, -1, 0 );
						HWRITEASM64( &TMP$3601$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3601$6 );
						__builtin_memset( &TMP$3602$6, 0, 12 );
						FBSTRING* vr$491 = fb_StrConcat( &TMP$3602$6, (void*)"[", 2, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3603$6, 0, 12 );
						FBSTRING* vr$494 = fb_StrConcat( &TMP$3603$6, (void*)vr$491, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$494, -1, 0 );
					}
					goto label$2775;
					label$2776:;
					if( *(int32*)V2$1 == 4 ) goto label$2777;
					{
						FBSTRING TMP$3604$6;
						FBSTRING TMP$3605$6;
						__builtin_memset( &TMP$3605$6, 0, 12 );
						__builtin_memset( &TMP$3604$6, 0, 12 );
						FBSTRING* vr$501 = fb_StrConcat( &TMP$3604$6, (void*)"lea rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$3605$6, -1, (void*)vr$501, -1, 0 );
						HWRITEASM64( &TMP$3605$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3605$6 );
						REGSRC$1 = 0;
					}
					label$2777:;
					label$2775:;
					if( *(int32*)V1$1 != 1 ) goto label$2779;
					{
						FBSTRING TMP$3606$6;
						FBSTRING TMP$3607$6;
						FBSTRING TMP$3608$6;
						FBSTRING TMP$3609$6;
						FBSTRING TMP$3610$6;
						FBSTRING TMP$3611$6;
						uint8* vr$506 = REG_TEMPO(  );
						REGTEMPO$1 = vr$506;
						__builtin_memset( &TMP$3609$6, 0, 12 );
						__builtin_memset( &TMP$3606$6, 0, 12 );
						FBSTRING* vr$511 = fb_StrConcat( &TMP$3606$6, (void*)"mov ", 5, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3607$6, 0, 12 );
						FBSTRING* vr$514 = fb_StrConcat( &TMP$3607$6, (void*)vr$511, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3608$6, 0, 12 );
						FBSTRING* vr$517 = fb_StrConcat( &TMP$3608$6, (void*)vr$514, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3609$6, -1, (void*)vr$517, -1, 0 );
						HWRITEASM64( &TMP$3609$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3609$6 );
						__builtin_memset( &TMP$3610$6, 0, 12 );
						FBSTRING* vr$523 = fb_StrConcat( &TMP$3610$6, (void*)"[", 2, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3611$6, 0, 12 );
						FBSTRING* vr$526 = fb_StrConcat( &TMP$3611$6, (void*)vr$523, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$526, -1, 0 );
					}
					label$2779:;
					label$2778:;
					{
						if( BYTES$1 != 1ll ) goto label$2781;
						label$2782:;
						{
							FBSTRING TMP$3613$7;
							FBSTRING TMP$3614$7;
							FBSTRING TMP$3615$7;
							__builtin_memset( &TMP$3615$7, 0, 12 );
							__builtin_memset( &TMP$3613$7, 0, 12 );
							FBSTRING* vr$532 = fb_StrConcat( &TMP$3613$7, (void*)"mov al, [", 10, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3614$7, 0, 12 );
							FBSTRING* vr$535 = fb_StrConcat( &TMP$3614$7, (void*)vr$532, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3615$7, -1, (void*)vr$535, -1, 0 );
							HWRITEASM64( &TMP$3615$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3615$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2784;
							{
								FBSTRING TMP$3616$8;
								FBSTRING TMP$3617$8;
								FBSTRING TMP$3618$8;
								__builtin_memset( &TMP$3618$8, 0, 12 );
								__builtin_memset( &TMP$3616$8, 0, 12 );
								FBSTRING* vr$544 = fb_StrConcat( &TMP$3616$8, (void*)"mov BYTE PTR [", 15, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3617$8, 0, 12 );
								FBSTRING* vr$547 = fb_StrConcat( &TMP$3617$8, (void*)vr$544, -1, (void*)"], al", 6 );
								fb_StrAssign( (void*)&TMP$3618$8, -1, (void*)vr$547, -1, 0 );
								HWRITEASM64( &TMP$3618$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3618$8 );
							}
							goto label$2783;
							label$2784:;
							{
								FBSTRING TMP$3619$8;
								FBSTRING TMP$3620$8;
								FBSTRING TMP$3621$8;
								__builtin_memset( &TMP$3621$8, 0, 12 );
								__builtin_memset( &TMP$3619$8, 0, 12 );
								FBSTRING* vr$555 = fb_StrConcat( &TMP$3619$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3620$8, 0, 12 );
								FBSTRING* vr$558 = fb_StrConcat( &TMP$3620$8, (void*)vr$555, -1, (void*)", al", 5 );
								fb_StrAssign( (void*)&TMP$3621$8, -1, (void*)vr$558, -1, 0 );
								HWRITEASM64( &TMP$3621$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3621$8 );
							}
							label$2783:;
						}
						goto label$2780;
						label$2781:;
						if( BYTES$1 != 2ll ) goto label$2785;
						label$2786:;
						{
							FBSTRING TMP$3623$7;
							FBSTRING TMP$3624$7;
							FBSTRING TMP$3625$7;
							__builtin_memset( &TMP$3625$7, 0, 12 );
							__builtin_memset( &TMP$3623$7, 0, 12 );
							FBSTRING* vr$566 = fb_StrConcat( &TMP$3623$7, (void*)"mov ax, [", 10, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3624$7, 0, 12 );
							FBSTRING* vr$569 = fb_StrConcat( &TMP$3624$7, (void*)vr$566, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3625$7, -1, (void*)vr$569, -1, 0 );
							HWRITEASM64( &TMP$3625$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3625$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2788;
							{
								FBSTRING TMP$3626$8;
								FBSTRING TMP$3627$8;
								FBSTRING TMP$3628$8;
								__builtin_memset( &TMP$3628$8, 0, 12 );
								__builtin_memset( &TMP$3626$8, 0, 12 );
								FBSTRING* vr$578 = fb_StrConcat( &TMP$3626$8, (void*)"mov WORD PTR [", 15, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3627$8, 0, 12 );
								FBSTRING* vr$581 = fb_StrConcat( &TMP$3627$8, (void*)vr$578, -1, (void*)"], ax", 6 );
								fb_StrAssign( (void*)&TMP$3628$8, -1, (void*)vr$581, -1, 0 );
								HWRITEASM64( &TMP$3628$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3628$8 );
							}
							goto label$2787;
							label$2788:;
							{
								FBSTRING TMP$3629$8;
								FBSTRING TMP$3630$8;
								FBSTRING TMP$3631$8;
								__builtin_memset( &TMP$3631$8, 0, 12 );
								__builtin_memset( &TMP$3629$8, 0, 12 );
								FBSTRING* vr$589 = fb_StrConcat( &TMP$3629$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3630$8, 0, 12 );
								FBSTRING* vr$592 = fb_StrConcat( &TMP$3630$8, (void*)vr$589, -1, (void*)", ax", 5 );
								fb_StrAssign( (void*)&TMP$3631$8, -1, (void*)vr$592, -1, 0 );
								HWRITEASM64( &TMP$3631$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3631$8 );
							}
							label$2787:;
						}
						goto label$2780;
						label$2785:;
						if( BYTES$1 != 4ll ) goto label$2789;
						label$2790:;
						{
							FBSTRING TMP$3633$7;
							FBSTRING TMP$3634$7;
							FBSTRING TMP$3635$7;
							__builtin_memset( &TMP$3635$7, 0, 12 );
							__builtin_memset( &TMP$3633$7, 0, 12 );
							FBSTRING* vr$600 = fb_StrConcat( &TMP$3633$7, (void*)"mov eax, [", 11, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3634$7, 0, 12 );
							FBSTRING* vr$603 = fb_StrConcat( &TMP$3634$7, (void*)vr$600, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3635$7, -1, (void*)vr$603, -1, 0 );
							HWRITEASM64( &TMP$3635$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3635$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2792;
							{
								FBSTRING TMP$3636$8;
								FBSTRING TMP$3637$8;
								FBSTRING TMP$3638$8;
								__builtin_memset( &TMP$3638$8, 0, 12 );
								__builtin_memset( &TMP$3636$8, 0, 12 );
								FBSTRING* vr$612 = fb_StrConcat( &TMP$3636$8, (void*)"mov DWORD PTR [", 16, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3637$8, 0, 12 );
								FBSTRING* vr$615 = fb_StrConcat( &TMP$3637$8, (void*)vr$612, -1, (void*)"], eax", 7 );
								fb_StrAssign( (void*)&TMP$3638$8, -1, (void*)vr$615, -1, 0 );
								HWRITEASM64( &TMP$3638$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3638$8 );
							}
							goto label$2791;
							label$2792:;
							{
								FBSTRING TMP$3639$8;
								FBSTRING TMP$3640$8;
								FBSTRING TMP$3641$8;
								__builtin_memset( &TMP$3641$8, 0, 12 );
								__builtin_memset( &TMP$3639$8, 0, 12 );
								FBSTRING* vr$623 = fb_StrConcat( &TMP$3639$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3640$8, 0, 12 );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$3640$8, (void*)vr$623, -1, (void*)", eax", 6 );
								fb_StrAssign( (void*)&TMP$3641$8, -1, (void*)vr$626, -1, 0 );
								HWRITEASM64( &TMP$3641$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3641$8 );
							}
							label$2791:;
						}
						goto label$2780;
						label$2789:;
						if( BYTES$1 != 8ll ) goto label$2793;
						label$2794:;
						{
							FBSTRING TMP$3642$7;
							FBSTRING TMP$3643$7;
							FBSTRING TMP$3644$7;
							__builtin_memset( &TMP$3644$7, 0, 12 );
							__builtin_memset( &TMP$3642$7, 0, 12 );
							FBSTRING* vr$634 = fb_StrConcat( &TMP$3642$7, (void*)"mov rax, [", 11, *(void**)((int32)(uint8**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3643$7, 0, 12 );
							FBSTRING* vr$637 = fb_StrConcat( &TMP$3643$7, (void*)vr$634, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3644$7, -1, (void*)vr$637, -1, 0 );
							HWRITEASM64( &TMP$3644$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3644$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2796;
							{
								FBSTRING TMP$3645$8;
								FBSTRING TMP$3646$8;
								FBSTRING TMP$3647$8;
								__builtin_memset( &TMP$3647$8, 0, 12 );
								__builtin_memset( &TMP$3645$8, 0, 12 );
								FBSTRING* vr$646 = fb_StrConcat( &TMP$3645$8, (void*)"mov QWORD PTR [", 16, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3646$8, 0, 12 );
								FBSTRING* vr$649 = fb_StrConcat( &TMP$3646$8, (void*)vr$646, -1, (void*)"], rax", 7 );
								fb_StrAssign( (void*)&TMP$3647$8, -1, (void*)vr$649, -1, 0 );
								HWRITEASM64( &TMP$3647$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3647$8 );
							}
							goto label$2795;
							label$2796:;
							{
								FBSTRING TMP$3648$8;
								FBSTRING TMP$3649$8;
								FBSTRING TMP$3650$8;
								__builtin_memset( &TMP$3650$8, 0, 12 );
								__builtin_memset( &TMP$3648$8, 0, 12 );
								FBSTRING* vr$657 = fb_StrConcat( &TMP$3648$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3649$8, 0, 12 );
								FBSTRING* vr$660 = fb_StrConcat( &TMP$3649$8, (void*)vr$657, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$3650$8, -1, (void*)vr$660, -1, 0 );
								HWRITEASM64( &TMP$3650$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3650$8 );
							}
							label$2795:;
						}
						label$2793:;
						label$2780:;
					}
				}
				label$2774:;
				label$2767:;
			}
		}
		label$2733:;
		label$2695:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2694:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	label$2797:;
	label$2798:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$2799:;
	FBSTRING ASMLINE$1;
	__builtin_memset( &ASMLINE$1, 0, 12 );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$2801:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$2802;
	{
		{
			$14AST_ASMTOKTYPE TMP$3651$3;
			TMP$3651$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$3651$3 != 0 ) goto label$2804;
			label$2805:;
			{
				FBSTRING TMP$3652$4;
				__builtin_memset( &TMP$3652$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$3652$4, (void*)&ASMLINE$1, -1, *(void**)((uint8*)N$1 + 4), 0 );
				fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$6, -1, 0 );
			}
			goto label$2803;
			label$2804:;
			if( TMP$3651$3 != 1 ) goto label$2806;
			label$2807:;
			{
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4) + 48);
				if( OFS$4 == 0ll ) goto label$2809;
				{
					FBSTRING* vr$10 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1, (void*)vr$10, -1, 0 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1, (void*)"[rbp]", 6, 0 );
				}
				goto label$2808;
				label$2809:;
				{
					FBSTRING TMP$3653$5;
					uint8* vr$14 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
					__builtin_memset( &TMP$3653$5, 0, 12 );
					FBSTRING* vr$18 = fb_StrConcat( &TMP$3653$5, (void*)&ASMLINE$1, -1, (void*)vr$14, 0 );
					fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$18, -1, 0 );
				}
				label$2808:;
			}
			goto label$2803;
			label$2806:;
			{
				FBSTRING TMP$3654$4;
				FBSTRING TMP$3657$4;
				FBSTRING TMP$3658$4;
				__builtin_memset( &TMP$3654$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3654$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3654$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3654$4 );
				__builtin_memset( &TMP$3657$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3657$4, -1, (void*)"FOUND AN ERROR : in emitasm token unknown", 42, 0 );
				HWRITEASM64( &TMP$3657$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3657$4 );
				__builtin_memset( &TMP$3658$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3658$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3658$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3658$4 );
			}
			label$2810:;
			label$2803:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$2801;
	label$2802:;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	HWRITEASM64( &ASMLINE$1, 0 );
	fb_StrDelete( (FBSTRING*)&ASMLINE$1 );
	label$2800:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$3660$1;
	FBSTRING TMP$3664$1;
	FBSTRING TMP$3665$1;
	FBSTRING TMP$3666$1;
	FBSTRING TMP$3667$1;
	label$2811:;
	int32 ALIGN$1;
	__builtin_memset( &ALIGN$1, 0, 4 );
	if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$2814;
	{
		ALIGN$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
	}
	goto label$2813;
	label$2814:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$2816;
		{
			ALIGN$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368);
		}
		goto label$2815;
		label$2816:;
		{
			int32 TMP$3659$3;
			if( ((*(int32*)((uint8*)SYM$1 + 28) & 511) & 480) == 0 ) goto label$2817;
			TMP$3659$3 = 24;
			goto label$3152;
			label$2817:;
			TMP$3659$3 = (*(int32*)((uint8*)SYM$1 + 28) & 511) & 31;
			label$3152:;
			ALIGN$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3659$3 * 28)) + 4);
		}
		label$2815:;
	}
	label$2813:;
	__builtin_memset( &TMP$3660$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3660$1, -1, (void*)".data", 6, 0 );
	ASM_SECTION( &TMP$3660$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3660$1 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$2819;
	{
		FBSTRING TMP$3661$2;
		FBSTRING TMP$3662$2;
		__builtin_memset( &TMP$3662$2, 0, 12 );
		uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$3661$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$3661$2, (void*)".globl ", 8, (void*)vr$21, 0 );
		fb_StrAssign( (void*)&TMP$3662$2, -1, (void*)vr$24, -1, 0 );
		HWRITEASM64( &TMP$3662$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3662$2 );
	}
	label$2819:;
	label$2818:;
	__builtin_memset( &TMP$3665$1, 0, 12 );
	FBSTRING* vr$29 = fb_IntToStr( ALIGN$1 );
	__builtin_memset( &TMP$3664$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3664$1, (void*)".align ", 8, (void*)vr$29, -1 );
	fb_StrAssign( (void*)&TMP$3665$1, -1, (void*)vr$32, -1, 0 );
	HWRITEASM64( &TMP$3665$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3665$1 );
	__builtin_memset( &TMP$3667$1, 0, 12 );
	uint8* vr$37 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$3666$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$3666$1, (void*)vr$37, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$3667$1, -1, (void*)vr$40, -1, 0 );
	HWRITEASM64( &TMP$3667$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3667$1 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$2821;
	{
	}
	goto label$2820;
	label$2821:;
	{
		if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2823;
		{
			EDBGEMITGLOBALVAR_ASM64( SYM$1, 1 );
			label$2823:;
		}
	}
	label$2820:;
	label$2812:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	FBSTRING TMP$3675$1;
	FBSTRING TMP$3676$1;
	FBSTRING TMP$3677$1;
	FBSTRING TMP$3678$1;
	FBSTRING TMP$3679$1;
	label$2824:;
	FBSTRING SIZ$1;
	__builtin_memset( &SIZ$1, 0, 12 );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (DTYPE$1 & 480) == 0 ) goto label$2827;
	{
		DTYPE$1 = 8;
		label$2827:;
	}
	if( (-(DTYPE$1 == 1) & -(VALUE$1 != 0ll)) == 0 ) goto label$2829;
	{
		VALUE$1 = 1ll;
	}
	label$2829:;
	label$2828:;
	{
		int32 TMP$3668$2;
		uint32 TMP$3669$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$2830;
		TMP$3668$2 = 24;
		goto label$3153;
		label$2830:;
		TMP$3668$2 = DTYPE$1 & 31;
		label$3153:;
		TMP$3669$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3668$2 * 28)) + 4);
		goto label$2832;
		label$2833:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".byte", 6, 0 );
			LGT$1 = 2;
		}
		goto label$2831;
		label$2834:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".word", 6, 0 );
			LGT$1 = 4;
		}
		goto label$2831;
		label$2835:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".long", 6, 0 );
			LGT$1 = 8;
		}
		goto label$2831;
		label$2836:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".quad", 6, 0 );
			LGT$1 = 16;
		}
		goto label$2831;
		label$2837:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".quad", 6, 0 );
			LGT$1 = 8;
		}
		goto label$2831;
		label$2832:;
		static const void* tmp$4063[8] = {
			&&label$2833,
			&&label$2834,
			&&label$2837,
			&&label$2835,
			&&label$2837,
			&&label$2837,
			&&label$2837,
			&&label$2836,
		};
		if( (TMP$3669$2 - 1u) > 7u ) goto label$2837;
		goto *tmp$4063[TMP$3669$2 - 1u];
		label$2831:;
	}
	__builtin_memset( &TMP$3679$1, 0, 12 );
	FBSTRING* vr$17 = fb_LongintToStr( VALUE$1 );
	FBSTRING* vr$18 = fb_HEX_l( (uint64)VALUE$1 );
	FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)vr$18, LGT$1 );
	__builtin_memset( &TMP$3675$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$3675$1, (void*)&SIZ$1, -1, (void*)" 0x", 4 );
	__builtin_memset( &TMP$3676$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$3676$1, (void*)vr$23, -1, (void*)vr$19, -1 );
	__builtin_memset( &TMP$3677$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$3677$1, (void*)vr$26, -1, (void*)" # ", 4 );
	__builtin_memset( &TMP$3678$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3678$1, (void*)vr$29, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&TMP$3679$1, -1, (void*)vr$32, -1, 0 );
	HWRITEASM64( &TMP$3679$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3679$1 );
	fb_StrDelete( (FBSTRING*)&SIZ$1 );
	label$2825:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	FBSTRING TMP$3680$1;
	label$2838:;
	__builtin_memset( &TMP$3680$1, 0, 12 );
	FBSTRING* vr$3 = HFLOATTOHEX_ASM64( VALUE$1, *(int32*)((uint8*)SYM$1 + 28) & 511, (int8)1 );
	fb_StrAssign( (void*)&TMP$3680$1, -1, (void*)vr$3, -1, 0 );
	HWRITEASM64( &TMP$3680$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3680$1 );
	label$2839:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$3688$1;
	FBSTRING TMP$3692$1;
	FBSTRING TMP$3693$1;
	FBSTRING TMP$3694$1;
	FBSTRING TMP$3695$1;
	label$2840:;
	IRHLEMITPROCBEGIN(  );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 44), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 68), -1, (void*)"", 1, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&CTX$ + 136) = -2;
	*(int32*)((uint8*)&CTX$ + 140) = 0;
	*(int32*)((uint8*)&CTX$ + 240) = 0;
	*(boolean*)((uint8*)&CTX$ + 224) = (boolean)0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 56), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 3;
	*(boolean*)((uint8*)&CTX$ + 153) = (boolean)0;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	*(int32*)((uint8*)&CTX$ + 84) = 0;
	*(int32*)((uint8*)&CTX$ + 88) = 0;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2843;
	{
		*(int32*)((uint8*)&CTX$ + 92) = 16;
		*(int64*)((uint8*)&CTX$ + 96) = 40ll;
	}
	goto label$2842;
	label$2843:;
	{
		*(int32*)((uint8*)&CTX$ + 92) = 8;
		*(int64*)((uint8*)&CTX$ + 96) = 56ll;
	}
	label$2842:;
	*(int32*)((uint8*)&CTX$ + 80) = 0;
	*(int32*)((uint8*)&CTX$ + 128) = 0;
	*(int64*)((uint8*)&CTX$ + 104) = 0ll;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 256) == 0 ) goto label$2845;
	{
		FBSTRING TMP$3682$2;
		FBSTRING TMP$3684$2;
		FBSTRING TMP$3685$2;
		FBSTRING TMP$3686$2;
		FBSTRING TMP$3687$2;
		__builtin_memset( &TMP$3682$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3682$2, -1, (void*)".drectve", 9, 0 );
		ASM_SECTION( &TMP$3682$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3682$2 );
		__builtin_memset( &TMP$3686$2, 0, 12 );
		uint8* vr$11 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3684$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$3684$2, (void*)".ascii \x22 -export:", 18, (void*)vr$11, 0 );
		__builtin_memset( &TMP$3685$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$3685$2, (void*)vr$14, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$3686$2, -1, (void*)vr$17, -1, 0 );
		HWRITEASM64( &TMP$3686$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3686$2 );
		__builtin_memset( &TMP$3687$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3687$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$3687$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3687$2 );
	}
	label$2845:;
	label$2844:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2847;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2849;
		{
			*(boolean*)((uint8*)&CTX$ + 224) = (boolean)1;
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2851;
			{
				*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + 112ll;
			}
			label$2851:;
			label$2850:;
		}
		label$2849:;
		label$2848:;
	}
	label$2847:;
	label$2846:;
	__builtin_memset( &TMP$3688$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3688$1, -1, (void*)".text", 6, 0 );
	HWRITEASM64( &TMP$3688$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3688$1 );
	if( (*(int32*)((uint8*)PROC$1 + 4) & 64) != 0 ) goto label$2853;
	{
		FBSTRING TMP$3689$2;
		FBSTRING TMP$3690$2;
		__builtin_memset( &TMP$3690$2, 0, 12 );
		uint8* vr$35 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3689$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$3689$2, (void*)".globl ", 8, (void*)vr$35, 0 );
		fb_StrAssign( (void*)&TMP$3690$2, -1, (void*)vr$38, -1, 0 );
		HWRITEASM64( &TMP$3690$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3690$2 );
	}
	label$2853:;
	label$2852:;
	__builtin_memset( &TMP$3693$1, 0, 12 );
	uint8* vr$43 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$3692$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$3692$1, (void*)".seh_proc ", 11, (void*)vr$43, 0 );
	fb_StrAssign( (void*)&TMP$3693$1, -1, (void*)vr$46, -1, 0 );
	CFI_WINDOWS_ASM_CODE( &TMP$3693$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3693$1 );
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	__builtin_memset( &TMP$3695$1, 0, 12 );
	uint8* vr$52 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$3694$1, 0, 12 );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$3694$1, (void*)vr$52, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$3695$1, -1, (void*)vr$55, -1, 0 );
	HWRITEASM64( &TMP$3695$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3695$1 );
	if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2855;
	{
		FBSTRING TMP$3697$2;
		__builtin_memset( &TMP$3697$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3697$2, -1, (void*)".cfi_startproc", 15, 0 );
		HWRITEASM64( &TMP$3697$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3697$2 );
	}
	label$2855:;
	label$2854:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2857;
	{
		EDBGEMITPROCHEADER_ASM64( PROC$1 );
		label$2857:;
	}
	*(int32*)((uint8*)&CTX$ + 4) = 4;
	label$2841:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$3879$1;
	FBSTRING TMP$3883$1;
	label$2858:;
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4 );
	FBSTRING RESTREG$1;
	__builtin_memset( &RESTREG$1, 0, 12 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	if( *(int64*)((uint8*)&CTX$ + 104) <= *(int64*)((uint8*)&CTX$ + 96) ) goto label$2861;
	{
		*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 104);
		label$2861:;
	}
	if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$2863;
	{
		if( *(int32*)((uint8*)&CTX$ + 80) == 0 ) goto label$2865;
		{
			int32 TMP$3698$3;
			if( *(int32*)((uint8*)&CTX$ + 80) <= 4 ) goto label$2866;
			TMP$3698$3 = *(int32*)((uint8*)&CTX$ + 80) << (3 & 31);
			goto label$3154;
			label$2866:;
			TMP$3698$3 = 32;
			label$3154:;
			*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + (int64)TMP$3698$3;
			label$2865:;
		}
	}
	goto label$2862;
	label$2863:;
	{
		*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + (int64)(*(int32*)((uint8*)&CTX$ + 80) << (3 & 31));
	}
	label$2862:;
	*(int64*)((uint8*)&CTX$ + 96) = (*(int64*)((uint8*)&CTX$ + 96) + 15ll) & -16ll;
	*(int32*)((uint8*)&CTX$ + 4) = 3;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$2868;
	{
		FBSTRING TMP$3700$2;
		FBSTRING TMP$3702$2;
		FBSTRING TMP$3708$2;
		FBSTRING TMP$3710$2;
		FBSTRING TMP$3776$2;
		FBSTRING TMP$3777$2;
		FBSTRING TMP$3779$2;
		__builtin_memset( &TMP$3700$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3700$2, -1, (void*)"push rbp", 9, 0 );
		HWRITEASM64( &TMP$3700$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3700$2 );
		__builtin_memset( &TMP$3702$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3702$2, -1, (void*)".seh_pushreg rbp", 17, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3702$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3702$2 );
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2870;
		{
			FBSTRING TMP$3704$3;
			__builtin_memset( &TMP$3704$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3704$3, -1, (void*)".cfi_def_cfa_offset 16", 23, 0 );
			HWRITEASM64( &TMP$3704$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3704$3 );
		}
		label$2870:;
		label$2869:;
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2872;
		{
			FBSTRING TMP$3706$3;
			__builtin_memset( &TMP$3706$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3706$3, -1, (void*)".cfi_offset 6, -16", 19, 0 );
			HWRITEASM64( &TMP$3706$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3706$3 );
		}
		label$2872:;
		label$2871:;
		__builtin_memset( &TMP$3708$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3708$2, -1, (void*)"mov  rbp,rsp", 13, 0 );
		HWRITEASM64( &TMP$3708$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3708$2 );
		__builtin_memset( &TMP$3710$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3710$2, -1, (void*)".seh_setframe rbp, 0", 21, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3710$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3710$2 );
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2874;
		{
			FBSTRING TMP$3712$3;
			__builtin_memset( &TMP$3712$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3712$3, -1, (void*)".cfi_def_cfa_register 6", 24, 0 );
			HWRITEASM64( &TMP$3712$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3712$3 );
		}
		label$2874:;
		label$2873:;
		if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$2876;
		{
			FBSTRING TMP$3714$3;
			FBSTRING TMP$3715$3;
			FBSTRING TMP$3717$3;
			FBSTRING TMP$3718$3;
			FBSTRING TMP$3720$3;
			FBSTRING TMP$3721$3;
			FBSTRING TMP$3722$3;
			FBSTRING TMP$3723$3;
			FBSTRING TMP$3725$3;
			FBSTRING TMP$3726$3;
			FBSTRING TMP$3727$3;
			FBSTRING TMP$3728$3;
			FBSTRING TMP$3729$3;
			FBSTRING TMP$3730$3;
			FBSTRING TMP$3732$3;
			FBSTRING TMP$3733$3;
			FBSTRING TMP$3765$3;
			FBSTRING TMP$3766$3;
			FBSTRING TMP$3767$3;
			__builtin_memset( &TMP$3715$3, 0, 12 );
			FBSTRING* vr$42 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
			__builtin_memset( &TMP$3714$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$3714$3, (void*)"add qword ptr $totalstacksize[rip], ", 37, (void*)vr$42, -1 );
			fb_StrAssign( (void*)&TMP$3715$3, -1, (void*)vr$45, -1, 0 );
			HWRITEASM64( &TMP$3715$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3715$3 );
			__builtin_memset( &TMP$3718$3, 0, 12 );
			FBSTRING* vr$50 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 244) );
			__builtin_memset( &TMP$3717$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$3717$3, (void*)"cmp qword ptr $totalstacksize[rip], ", 37, (void*)vr$50, -1 );
			fb_StrAssign( (void*)&TMP$3718$3, -1, (void*)vr$53, -1, 0 );
			HWRITEASM64( &TMP$3718$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3718$3 );
			__builtin_memset( &TMP$3720$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3720$3, -1, (void*)".section .data", 15, 0 );
			HWRITEASM64( &TMP$3720$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3720$3 );
			__builtin_memset( &TMP$3721$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3721$3, -1, (void*)".align 8", 9, 0 );
			HWRITEASM64( &TMP$3721$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3721$3 );
			FBSTRING LNAME1$3;
			uint8* vr$65 = SYMBUNIQUELABEL(  );
			fb_StrInit( (void*)&LNAME1$3, -1, (void*)vr$65, 0, 0 );
			__builtin_memset( &TMP$3723$3, 0, 12 );
			__builtin_memset( &TMP$3722$3, 0, 12 );
			FBSTRING* vr$71 = fb_StrConcat( &TMP$3722$3, (void*)&LNAME1$3, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3723$3, -1, (void*)vr$71, -1, 0 );
			HWRITEASM64( &TMP$3723$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3723$3 );
			__builtin_memset( &TMP$3729$3, 0, 12 );
			uint8* vr$76 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$3725$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$3725$3, (void*)".ascii \x22" "Aborting : stack overflow ", 35, (void*)((uint8*)&ENV$ + 304), 261 );
			__builtin_memset( &TMP$3726$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$3726$3, (void*)vr$80, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$3727$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$3727$3, (void*)vr$83, -1, (void*)vr$76, 0 );
			__builtin_memset( &TMP$3728$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$3728$3, (void*)vr$86, -1, (void*)"\x5C" "0\x22", 4 );
			fb_StrAssign( (void*)&TMP$3729$3, -1, (void*)vr$89, -1, 0 );
			HWRITEASM64( &TMP$3729$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3729$3 );
			__builtin_memset( &TMP$3730$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3730$3, -1, (void*)".text", 6, 0 );
			HWRITEASM64( &TMP$3730$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3730$3 );
			FBSTRING LNAME$3;
			uint8* vr$97 = SYMBUNIQUELABEL(  );
			fb_StrInit( (void*)&LNAME$3, -1, (void*)vr$97, 0, 0 );
			__builtin_memset( &TMP$3733$3, 0, 12 );
			__builtin_memset( &TMP$3732$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$3732$3, (void*)"jl ", 4, (void*)&LNAME$3, -1 );
			fb_StrAssign( (void*)&TMP$3733$3, -1, (void*)vr$103, -1, 0 );
			HWRITEASM64( &TMP$3733$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3733$3 );
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2878;
			{
				FBSTRING TMP$3735$4;
				FBSTRING TMP$3736$4;
				FBSTRING TMP$3737$4;
				FBSTRING TMP$3739$4;
				FBSTRING TMP$3741$4;
				FBSTRING TMP$3743$4;
				FBSTRING TMP$3745$4;
				FBSTRING TMP$3747$4;
				FBSTRING TMP$3749$4;
				__builtin_memset( &TMP$3737$4, 0, 12 );
				__builtin_memset( &TMP$3735$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$3735$4, (void*)"lea rdi, ", 10, (void*)&LNAME1$3, -1 );
				__builtin_memset( &TMP$3736$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$3736$4, (void*)vr$111, -1, (void*)"[rip]", 6 );
				fb_StrAssign( (void*)&TMP$3737$4, -1, (void*)vr$114, -1, 0 );
				HWRITEASM64( &TMP$3737$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3737$4 );
				__builtin_memset( &TMP$3739$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3739$4, -1, (void*)"call fb_StrAllocTempDescZ", 26, 0 );
				HWRITEASM64( &TMP$3739$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3739$4 );
				__builtin_memset( &TMP$3741$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3741$4, -1, (void*)"xor edi, edi", 13, 0 );
				HWRITEASM64( &TMP$3741$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3741$4 );
				__builtin_memset( &TMP$3743$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3743$4, -1, (void*)"mov rsi, rax", 13, 0 );
				HWRITEASM64( &TMP$3743$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3743$4 );
				__builtin_memset( &TMP$3745$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3745$4, -1, (void*)"mov rdx, 1", 11, 0 );
				HWRITEASM64( &TMP$3745$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3745$4 );
				__builtin_memset( &TMP$3747$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3747$4, -1, (void*)"call fb_PrintString", 20, 0 );
				HWRITEASM64( &TMP$3747$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3747$4 );
				__builtin_memset( &TMP$3749$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3749$4, -1, (void*)"mov rdi, 4", 11, 0 );
				HWRITEASM64( &TMP$3749$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3749$4 );
			}
			goto label$2877;
			label$2878:;
			{
				FBSTRING TMP$3751$4;
				FBSTRING TMP$3752$4;
				FBSTRING TMP$3753$4;
				FBSTRING TMP$3754$4;
				FBSTRING TMP$3756$4;
				FBSTRING TMP$3758$4;
				FBSTRING TMP$3760$4;
				FBSTRING TMP$3761$4;
				FBSTRING TMP$3763$4;
				__builtin_memset( &TMP$3753$4, 0, 12 );
				__builtin_memset( &TMP$3751$4, 0, 12 );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$3751$4, (void*)"lea rcx, ", 10, (void*)&LNAME1$3, -1 );
				__builtin_memset( &TMP$3752$4, 0, 12 );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$3752$4, (void*)vr$146, -1, (void*)"[rip]", 6 );
				fb_StrAssign( (void*)&TMP$3753$4, -1, (void*)vr$149, -1, 0 );
				HWRITEASM64( &TMP$3753$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3753$4 );
				__builtin_memset( &TMP$3754$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3754$4, -1, (void*)"call fb_StrAllocTempDescZ", 26, 0 );
				HWRITEASM64( &TMP$3754$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3754$4 );
				__builtin_memset( &TMP$3756$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3756$4, -1, (void*)"xor ecx, ecx", 13, 0 );
				HWRITEASM64( &TMP$3756$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3756$4 );
				__builtin_memset( &TMP$3758$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3758$4, -1, (void*)"mov rdx, rax", 13, 0 );
				HWRITEASM64( &TMP$3758$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3758$4 );
				__builtin_memset( &TMP$3760$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3760$4, -1, (void*)"mov r8d, 1", 11, 0 );
				HWRITEASM64( &TMP$3760$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3760$4 );
				__builtin_memset( &TMP$3761$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3761$4, -1, (void*)"call fb_PrintString", 20, 0 );
				HWRITEASM64( &TMP$3761$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3761$4 );
				__builtin_memset( &TMP$3763$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3763$4, -1, (void*)"mov rcx, 4", 11, 0 );
				HWRITEASM64( &TMP$3763$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3763$4 );
			}
			label$2877:;
			__builtin_memset( &TMP$3765$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3765$3, -1, (void*)"call fb_End", 12, 0 );
			HWRITEASM64( &TMP$3765$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3765$3 );
			__builtin_memset( &TMP$3767$3, 0, 12 );
			__builtin_memset( &TMP$3766$3, 0, 12 );
			FBSTRING* vr$185 = fb_StrConcat( &TMP$3766$3, (void*)&LNAME$3, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3767$3, -1, (void*)vr$185, -1, 0 );
			HWRITEASM64( &TMP$3767$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3767$3 );
			fb_StrDelete( (FBSTRING*)&LNAME$3 );
			fb_StrDelete( (FBSTRING*)&LNAME1$3 );
		}
		label$2876:;
		label$2875:;
		if( *(int64*)((uint8*)&CTX$ + 96) < 2147483648ll ) goto label$2880;
		{
			FBSTRING TMP$3768$3;
			FBSTRING TMP$3769$3;
			FBSTRING TMP$3771$3;
			__builtin_memset( &TMP$3769$3, 0, 12 );
			FBSTRING* vr$192 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
			__builtin_memset( &TMP$3768$3, 0, 12 );
			FBSTRING* vr$195 = fb_StrConcat( &TMP$3768$3, (void*)"mov rax, ", 10, (void*)vr$192, -1 );
			fb_StrAssign( (void*)&TMP$3769$3, -1, (void*)vr$195, -1, 0 );
			HWRITEASM64( &TMP$3769$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3769$3 );
			__builtin_memset( &TMP$3771$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3771$3, -1, (void*)"sub rsp, rax", 13, 0 );
			HWRITEASM64( &TMP$3771$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3771$3 );
		}
		goto label$2879;
		label$2880:;
		{
			FBSTRING TMP$3773$3;
			FBSTRING TMP$3774$3;
			__builtin_memset( &TMP$3774$3, 0, 12 );
			FBSTRING* vr$204 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
			__builtin_memset( &TMP$3773$3, 0, 12 );
			FBSTRING* vr$207 = fb_StrConcat( &TMP$3773$3, (void*)"sub rsp, ", 10, (void*)vr$204, -1 );
			fb_StrAssign( (void*)&TMP$3774$3, -1, (void*)vr$207, -1, 0 );
			HWRITEASM64( &TMP$3774$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3774$3 );
		}
		label$2879:;
		__builtin_memset( &TMP$3777$2, 0, 12 );
		FBSTRING* vr$212 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
		__builtin_memset( &TMP$3776$2, 0, 12 );
		FBSTRING* vr$215 = fb_StrConcat( &TMP$3776$2, (void*)".seh_stackalloc ", 17, (void*)vr$212, -1 );
		fb_StrAssign( (void*)&TMP$3777$2, -1, (void*)vr$215, -1, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3777$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3777$2 );
		__builtin_memset( &TMP$3779$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3779$2, -1, (void*)".seh_endprologue", 17, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3779$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3779$2 );
		if( *(uint64*)((uint8*)&CTX$ + 96) < (uint64)*(int32*)((uint8*)&CTX$ + 244) ) goto label$2882;
		{
			FBSTRING TMP$3782$3;
			FBSTRING TMP$3783$3;
			FBSTRING MSGEX$3;
			uint8* vr$224 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$3782$3, 0, 12 );
			FBSTRING* vr$227 = fb_StrConcat( &TMP$3782$3, (void*)" proc=", 7, (void*)vr$224, 0 );
			__builtin_memset( &TMP$3783$3, 0, 12 );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$3783$3, (void*)vr$227, -1, (void*)" STACK OVERFLOW, review array size, use redim/shared or increase stack size", 76 );
			fb_StrInit( (void*)&MSGEX$3, -1, (void*)vr$230, -1, 0 );
			ERRREPORTWARNEX( 24, (uint8*)0u, -1, 1, (uint8*)*(uint8**)&MSGEX$3 );
			fb_StrDelete( (FBSTRING*)&MSGEX$3 );
		}
		label$2882:;
		label$2881:;
		if( (*(int32*)((uint8*)&CTX$ + 128) & 2) == 0 ) goto label$2884;
		{
			FBSTRING TMP$3785$3;
			__builtin_memset( &TMP$3785$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3785$3, -1, (void*)"mov QWORD PTR -8[rbp], rbx", 27, 0 );
			HWRITEASM64( &TMP$3785$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3785$3 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rbx, QWORD PTR -8[rbp]\x0A", 29, 0 );
			FBSTRING* vr$240 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$240, -1, 0 );
			label$2884:;
		}
		if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$2886;
		{
			if( (*(int32*)((uint8*)&CTX$ + 128) & 32) == 0 ) goto label$2888;
			{
				FBSTRING TMP$3789$4;
				__builtin_memset( &TMP$3789$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3789$4, -1, (void*)"mov QWORD PTR -16[rbp], rdi", 28, 0 );
				HWRITEASM64( &TMP$3789$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3789$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rdi, QWORD PTR -16[rbp]\x0A", 30, 0 );
				FBSTRING* vr$249 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$249, -1, 0 );
				label$2888:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 16) == 0 ) goto label$2890;
			{
				FBSTRING TMP$3793$4;
				__builtin_memset( &TMP$3793$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3793$4, -1, (void*)"mov QWORD PTR -24[rbp], rsi", 28, 0 );
				HWRITEASM64( &TMP$3793$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3793$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rsi, QWORD PTR -24[rbp]\x0A", 30, 0 );
				FBSTRING* vr$258 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$258, -1, 0 );
				label$2890:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 4096) == 0 ) goto label$2892;
			{
				FBSTRING TMP$3797$4;
				__builtin_memset( &TMP$3797$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3797$4, -1, (void*)"mov QWORD PTR -32[rbp], r12", 28, 0 );
				HWRITEASM64( &TMP$3797$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3797$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r12, QWORD PTR -32[rbp]\x0A", 30, 0 );
				FBSTRING* vr$267 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$267, -1, 0 );
				label$2892:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 8192) == 0 ) goto label$2894;
			{
				FBSTRING TMP$3801$4;
				__builtin_memset( &TMP$3801$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3801$4, -1, (void*)"mov QWORD PTR -40[rbp], r13", 28, 0 );
				HWRITEASM64( &TMP$3801$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3801$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r13, QWORD PTR -40[rbp]\x0A", 30, 0 );
				FBSTRING* vr$276 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$276, -1, 0 );
				label$2894:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 16384) == 0 ) goto label$2896;
			{
				FBSTRING TMP$3805$4;
				__builtin_memset( &TMP$3805$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3805$4, -1, (void*)"mov QWORD PTR -48[rbp], r14", 28, 0 );
				HWRITEASM64( &TMP$3805$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3805$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r14, QWORD PTR -48[rbp]\x0A", 30, 0 );
				FBSTRING* vr$285 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$285, -1, 0 );
				label$2896:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 32768) == 0 ) goto label$2898;
			{
				FBSTRING TMP$3809$4;
				__builtin_memset( &TMP$3809$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3809$4, -1, (void*)"mov QWORD PTR -56[rbp], r15", 28, 0 );
				HWRITEASM64( &TMP$3809$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3809$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r15, QWORD PTR -56[rbp]\x0A", 30, 0 );
				FBSTRING* vr$294 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$294, -1, 0 );
				label$2898:;
			}
		}
		goto label$2885;
		label$2886:;
		{
			if( (*(int32*)((uint8*)&CTX$ + 128) & 4096) == 0 ) goto label$2900;
			{
				FBSTRING TMP$3813$4;
				__builtin_memset( &TMP$3813$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3813$4, -1, (void*)"mov QWORD PTR -16[rbp], r12", 28, 0 );
				HWRITEASM64( &TMP$3813$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3813$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r12, QWORD PTR -16[rbp]\x0A", 30, 0 );
				FBSTRING* vr$303 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$303, -1, 0 );
				label$2900:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 8192) == 0 ) goto label$2902;
			{
				FBSTRING TMP$3817$4;
				__builtin_memset( &TMP$3817$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3817$4, -1, (void*)"mov QWORD PTR -24[rbp], r13", 28, 0 );
				HWRITEASM64( &TMP$3817$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3817$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r13, QWORD PTR -24[rbp]\x0A", 30, 0 );
				FBSTRING* vr$312 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$312, -1, 0 );
				label$2902:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 16384) == 0 ) goto label$2904;
			{
				FBSTRING TMP$3821$4;
				__builtin_memset( &TMP$3821$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3821$4, -1, (void*)"mov QWORD PTR -32[rbp], r14", 28, 0 );
				HWRITEASM64( &TMP$3821$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3821$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r14, QWORD PTR -32[rbp]\x0A", 30, 0 );
				FBSTRING* vr$321 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$321, -1, 0 );
				label$2904:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 32768) == 0 ) goto label$2906;
			{
				FBSTRING TMP$3825$4;
				__builtin_memset( &TMP$3825$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3825$4, -1, (void*)"mov QWORD PTR -40[rbp], r15", 28, 0 );
				HWRITEASM64( &TMP$3825$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3825$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r15, QWORD PTR -40[rbp]\x0A", 30, 0 );
				FBSTRING* vr$330 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$330, -1, 0 );
				label$2906:;
			}
		}
		label$2885:;
		int32 vr$333 = fb_StrCompare( (void*)&RESTREG$1, -1, (void*)"", 1 );
		if( vr$333 == 0 ) goto label$2908;
		{
			FBSTRING* vr$335 = fb_RTRIM( (FBSTRING*)&RESTREG$1 );
			fb_StrAssign( (void*)&RESTREG$1, -1, (void*)vr$335, -1, 0 );
			label$2908:;
		}
	}
	label$2868:;
	label$2867:;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2910;
	{
		if( *(boolean*)((uint8*)&CTX$ + 224) == (boolean)0 ) goto label$2912;
		{
			FBSTRING TMP$3841$3;
			FBSTRING TMP$3842$3;
			FBSTRING TMP$3843$3;
			FBSTRING TMP$3860$3;
			FBSTRING TMP$3861$3;
			if( *(int32*)((uint8*)&CTX$ + 84) >= 1 ) goto label$2914;
			{
				FBSTRING TMP$3829$4;
				__builtin_memset( &TMP$3829$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3829$4, -1, (void*)"mov QWORD PTR -152[rbp], rdi", 29, 0 );
				HWRITEASM64( &TMP$3829$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3829$4 );
				label$2914:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 2 ) goto label$2916;
			{
				FBSTRING TMP$3831$4;
				__builtin_memset( &TMP$3831$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3831$4, -1, (void*)"mov QWORD PTR -144[rbp], rsi", 29, 0 );
				HWRITEASM64( &TMP$3831$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3831$4 );
				label$2916:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 3 ) goto label$2918;
			{
				FBSTRING TMP$3833$4;
				__builtin_memset( &TMP$3833$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3833$4, -1, (void*)"mov QWORD PTR -136[rbp], rdx", 29, 0 );
				HWRITEASM64( &TMP$3833$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3833$4 );
				label$2918:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 4 ) goto label$2920;
			{
				FBSTRING TMP$3835$4;
				__builtin_memset( &TMP$3835$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3835$4, -1, (void*)"mov QWORD PTR -128[rbp], rcx", 29, 0 );
				HWRITEASM64( &TMP$3835$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3835$4 );
				label$2920:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 5 ) goto label$2922;
			{
				FBSTRING TMP$3837$4;
				__builtin_memset( &TMP$3837$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3837$4, -1, (void*)"mov QWORD PTR -120[rbp], r8", 28, 0 );
				HWRITEASM64( &TMP$3837$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3837$4 );
				label$2922:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 6 ) goto label$2924;
			{
				FBSTRING TMP$3839$4;
				__builtin_memset( &TMP$3839$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3839$4, -1, (void*)"mov QWORD PTR -112[rbp], r9", 28, 0 );
				HWRITEASM64( &TMP$3839$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3839$4 );
				label$2924:;
			}
			uint8* vr$361 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$361, 0, 0 );
			__builtin_memset( &TMP$3841$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3841$3, -1, (void*)"test eax, eax", 14, 0 );
			HWRITEASM64( &TMP$3841$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3841$3 );
			__builtin_memset( &TMP$3843$3, 0, 12 );
			__builtin_memset( &TMP$3842$3, 0, 12 );
			FBSTRING* vr$371 = fb_StrConcat( &TMP$3842$3, (void*)"jz ", 4, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$3843$3, -1, (void*)vr$371, -1, 0 );
			HWRITEASM64( &TMP$3843$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3843$3 );
			if( *(int32*)((uint8*)&CTX$ + 88) >= 1 ) goto label$2926;
			{
				FBSTRING TMP$3845$4;
				__builtin_memset( &TMP$3845$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3845$4, -1, (void*)"movq QWORD PTR -104[rbp], xmm0", 31, 0 );
				HWRITEASM64( &TMP$3845$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3845$4 );
				label$2926:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 2 ) goto label$2928;
			{
				FBSTRING TMP$3847$4;
				__builtin_memset( &TMP$3847$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3847$4, -1, (void*)"movq QWORD PTR -96[rbp], xmm1", 30, 0 );
				HWRITEASM64( &TMP$3847$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3847$4 );
				label$2928:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 3 ) goto label$2930;
			{
				FBSTRING TMP$3849$4;
				__builtin_memset( &TMP$3849$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3849$4, -1, (void*)"movq QWORD PTR -88[rbp], xmm2", 30, 0 );
				HWRITEASM64( &TMP$3849$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3849$4 );
				label$2930:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 4 ) goto label$2932;
			{
				FBSTRING TMP$3851$4;
				__builtin_memset( &TMP$3851$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3851$4, -1, (void*)"movq QWORD PTR -80[rbp], xmm3", 30, 0 );
				HWRITEASM64( &TMP$3851$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3851$4 );
				label$2932:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 5 ) goto label$2934;
			{
				FBSTRING TMP$3853$4;
				__builtin_memset( &TMP$3853$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3853$4, -1, (void*)"movq QWORD PTR -72[rbp], xmm4", 30, 0 );
				HWRITEASM64( &TMP$3853$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3853$4 );
				label$2934:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 6 ) goto label$2936;
			{
				FBSTRING TMP$3855$4;
				__builtin_memset( &TMP$3855$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3855$4, -1, (void*)"movq QWORD PTR -64[rbp], xmm5", 30, 0 );
				HWRITEASM64( &TMP$3855$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3855$4 );
				label$2936:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 7 ) goto label$2938;
			{
				FBSTRING TMP$3857$4;
				__builtin_memset( &TMP$3857$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3857$4, -1, (void*)"movq QWORD PTR -56[rbp], xmm6", 30, 0 );
				HWRITEASM64( &TMP$3857$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3857$4 );
				label$2938:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 8 ) goto label$2940;
			{
				FBSTRING TMP$3859$4;
				__builtin_memset( &TMP$3859$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3859$4, -1, (void*)"movq QWORD PTR -48[rbp], xmm7", 30, 0 );
				HWRITEASM64( &TMP$3859$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3859$4 );
				label$2940:;
			}
			__builtin_memset( &TMP$3861$3, 0, 12 );
			__builtin_memset( &TMP$3860$3, 0, 12 );
			FBSTRING* vr$411 = fb_StrConcat( &TMP$3860$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3861$3, -1, (void*)vr$411, -1, 0 );
			HWRITEASM64( &TMP$3861$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3861$3 );
		}
		label$2912:;
		label$2911:;
	}
	label$2910:;
	label$2909:;
	*(int32*)((uint8*)&CTX$ + 4) = 5;
	if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$2942;
	{
		FBSTRING TMP$3863$2;
		FBSTRING TMP$3864$2;
		__builtin_memset( &TMP$3864$2, 0, 12 );
		FBSTRING* vr$416 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
		__builtin_memset( &TMP$3863$2, 0, 12 );
		FBSTRING* vr$419 = fb_StrConcat( &TMP$3863$2, (void*)"sub qword ptr $totalstacksize[rip], ", 37, (void*)vr$416, -1 );
		fb_StrAssign( (void*)&TMP$3864$2, -1, (void*)vr$419, -1, 0 );
		HWRITEASM64( &TMP$3864$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3864$2 );
	}
	label$2942:;
	label$2941:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2944;
	{
		FBSTRING TMP$3865$2;
		FBSTRING TMP$3866$2;
		FBSTRING TMP$3867$2;
		FBSTRING TMP$3868$2;
		FBSTRING TMP$3869$2;
		FBSTRING TMP$3870$2;
		uint8* vr$423 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$423, 0, 0 );
		__builtin_memset( &TMP$3868$2, 0, 12 );
		uint8* vr$426 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
		__builtin_memset( &TMP$3866$2, 0, 12 );
		FBSTRING* vr$430 = fb_StrConcat( &TMP$3866$2, (void*)&LNAME$1, -1, (void*)"-", 2 );
		__builtin_memset( &TMP$3867$2, 0, 12 );
		FBSTRING* vr$433 = fb_StrConcat( &TMP$3867$2, (void*)vr$430, -1, (void*)vr$426, 0 );
		fb_StrAssign( (void*)&TMP$3868$2, -1, (void*)vr$433, -1, 0 );
		__builtin_memset( &TMP$3865$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3865$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$3865$2, (uint8)224u, (int16)0, &TMP$3868$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3868$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3865$2 );
		__builtin_memset( &TMP$3870$2, 0, 12 );
		__builtin_memset( &TMP$3869$2, 0, 12 );
		FBSTRING* vr$445 = fb_StrConcat( &TMP$3869$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3870$2, -1, (void*)vr$445, -1, 0 );
		HWRITEASM64( &TMP$3870$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3870$2 );
	}
	label$2944:;
	label$2943:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$2946;
	{
		FBSTRING TMP$3872$2;
		FBSTRING TMP$3874$2;
		int32 vr$452 = fb_StrCompare( (void*)&RESTREG$1, -1, (void*)"", 1 );
		if( vr$452 == 0 ) goto label$2948;
		{
			HWRITEASM64( &RESTREG$1, 0 );
			label$2948:;
		}
		__builtin_memset( &TMP$3872$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3872$2, -1, (void*)"mov rsp,rbp", 12, 0 );
		HWRITEASM64( &TMP$3872$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3872$2 );
		__builtin_memset( &TMP$3874$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3874$2, -1, (void*)"pop rbp", 8, 0 );
		HWRITEASM64( &TMP$3874$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3874$2 );
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2950;
		{
			FBSTRING TMP$3876$3;
			__builtin_memset( &TMP$3876$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3876$3, -1, (void*)".cfi_restore 6", 15, 0 );
			HWRITEASM64( &TMP$3876$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3876$3 );
		}
		label$2950:;
		label$2949:;
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2952;
		{
			FBSTRING TMP$3878$3;
			__builtin_memset( &TMP$3878$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3878$3, -1, (void*)".cfi_def_cfa 7, 8", 18, 0 );
			HWRITEASM64( &TMP$3878$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3878$3 );
		}
		label$2952:;
		label$2951:;
	}
	label$2946:;
	label$2945:;
	__builtin_memset( &TMP$3879$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3879$1, -1, (void*)"ret", 4, 0 );
	HWRITEASM64( &TMP$3879$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3879$1 );
	if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2954;
	{
		FBSTRING TMP$3881$2;
		__builtin_memset( &TMP$3881$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3881$2, -1, (void*)".cfi_endproc", 13, 0 );
		HWRITEASM64( &TMP$3881$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3881$2 );
	}
	label$2954:;
	label$2953:;
	__builtin_memset( &TMP$3883$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3883$1, -1, (void*)".seh_endproc", 13, 0 );
	CFI_WINDOWS_ASM_CODE( &TMP$3883$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3883$1 );
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2956;
	{
		FBSTRING TMP$3884$2;
		FBSTRING TMP$3885$2;
		FBSTRING TMP$3886$2;
		FBSTRING TMP$3887$2;
		FBSTRING TMP$3888$2;
		FBSTRING TMP$3889$2;
		FBSTRING LNAME$2;
		uint8* vr$482 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$482, 0, 0 );
		__builtin_memset( &TMP$3887$2, 0, 12 );
		uint8* vr$485 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
		__builtin_memset( &TMP$3885$2, 0, 12 );
		FBSTRING* vr$489 = fb_StrConcat( &TMP$3885$2, (void*)&LNAME$2, -1, (void*)"-", 2 );
		__builtin_memset( &TMP$3886$2, 0, 12 );
		FBSTRING* vr$492 = fb_StrConcat( &TMP$3886$2, (void*)vr$489, -1, (void*)vr$485, 0 );
		fb_StrAssign( (void*)&TMP$3887$2, -1, (void*)vr$492, -1, 0 );
		__builtin_memset( &TMP$3884$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3884$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$3884$2, (uint8)36u, (int16)0, &TMP$3887$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3887$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3884$2 );
		__builtin_memset( &TMP$3889$2, 0, 12 );
		__builtin_memset( &TMP$3888$2, 0, 12 );
		FBSTRING* vr$504 = fb_StrConcat( &TMP$3888$2, (void*)&LNAME$2, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3889$2, -1, (void*)vr$504, -1, 0 );
		HWRITEASM64( &TMP$3889$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3889$2 );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$2956:;
	label$2955:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
	*(int32*)((uint8*)&CTX$ + 212) = 0;
	IRHLEMITPROCEND(  );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 44), -1, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 56), -1, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 68), -1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&RESTREG$1 );
	label$2859:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$2957:;
	FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( RHS$1 );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$0, 0, 0 );
	int32 SYMDTYPE$1;
	SYMDTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	int32 PTRDTYPE$1;
	PTRDTYPE$1 = ((((*(int32*)((uint8*)RHS$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)RHS$1 + 28) & 511) & 32505856);
	if( OFS$1 == 0ll ) goto label$2960;
	{
		FBSTRING TMP$3890$2;
		FBSTRING TMP$3891$2;
		FBSTRING TMP$3892$2;
		FBSTRING TMP$3893$2;
		__builtin_memset( &TMP$3893$2, 0, 12 );
		FBSTRING* vr$22 = fb_LongintToStr( OFS$1 );
		__builtin_memset( &TMP$3890$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$3890$2, (void*)".quad ", 7, (void*)&S$1, -1 );
		__builtin_memset( &TMP$3891$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$3891$2, (void*)vr$26, -1, (void*)"+", 2 );
		__builtin_memset( &TMP$3892$2, 0, 12 );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$3892$2, (void*)vr$29, -1, (void*)vr$22, -1 );
		fb_StrAssign( (void*)&TMP$3893$2, -1, (void*)vr$32, -1, 0 );
		HWRITEASM64( &TMP$3893$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3893$2 );
	}
	goto label$2959;
	label$2960:;
	{
		FBSTRING TMP$3894$2;
		FBSTRING TMP$3895$2;
		__builtin_memset( &TMP$3895$2, 0, 12 );
		__builtin_memset( &TMP$3894$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$3894$2, (void*)".quad ", 7, (void*)&S$1, -1 );
		fb_StrAssign( (void*)&TMP$3895$2, -1, (void*)vr$40, -1, 0 );
		HWRITEASM64( &TMP$3895$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3895$2 );
	}
	label$2959:;
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$2958:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	FBSTRING TMP$3897$1;
	FBSTRING TMP$3898$1;
	label$2961:;
	__builtin_memset( &TMP$3898$1, 0, 12 );
	FBSTRING* vr$1 = fb_LongintToStr( BYTES$1 );
	__builtin_memset( &TMP$3897$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$3897$1, (void*)".zero ", 7, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$3898$1, -1, (void*)vr$4, -1, 0 );
	HWRITEASM64( &TMP$3898$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3898$1 );
	label$2962:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$3900$1;
	FBSTRING TMP$3901$1;
	FBSTRING TMP$3902$1;
	FBSTRING TMP$3903$1;
	label$2963:;
	__builtin_memset( &TMP$3900$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3900$1, -1, (void*)".fbctinf", 9, 0 );
	ASM_SECTION( &TMP$3900$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3900$1 );
	__builtin_memset( &TMP$3903$1, 0, 12 );
	__builtin_memset( &TMP$3901$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$3901$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3902$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$3902$1, (void*)vr$7, -1, (void*)"\x5C" "0\x22", 4 );
	fb_StrAssign( (void*)&TMP$3903$1, -1, (void*)vr$10, -1, 0 );
	HWRITEASM64( &TMP$3903$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3903$1 );
	label$2964:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	FBSTRING TMP$3907$1;
	FBSTRING TMP$3908$1;
	FBSTRING TMP$3909$1;
	label$2965:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 4 );
	if( VARLENGTH$1 != 0ll ) goto label$2968;
	{
		FBSTRING TMP$3905$2;
		__builtin_memset( &TMP$3905$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3905$2, -1, (void*)".byte 0 # 0", 12, 0 );
		HWRITEASM64( &TMP$3905$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3905$2 );
		goto label$2966;
	}
	label$2968:;
	label$2967:;
	if( VARLENGTH$1 >= LITLENGTH$1 ) goto label$2970;
	{
		FBSTRING TMP$3906$2;
		ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
		__builtin_memset( &TMP$3906$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)LITERAL$1 );
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)vr$7, (int32)VARLENGTH$1 );
		fb_StrAssign( (void*)&TMP$3906$2, -1, (void*)vr$8, -1, 0 );
		uint8* vr$10 = HESCAPE( (uint8*)*(uint8**)&TMP$3906$2 );
		S$1 = vr$10;
		fb_StrDelete( (FBSTRING*)&TMP$3906$2 );
	}
	goto label$2969;
	label$2970:;
	{
		uint8* vr$12 = HESCAPE( (uint8*)LITERAL$1 );
		S$1 = vr$12;
	}
	label$2969:;
	__builtin_memset( &TMP$3909$1, 0, 12 );
	__builtin_memset( &TMP$3907$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$3907$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3908$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$3908$1, (void*)vr$16, -1, (void*)"\x5C" "0\x22", 4 );
	fb_StrAssign( (void*)&TMP$3909$1, -1, (void*)vr$19, -1, 0 );
	HWRITEASM64( &TMP$3909$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3909$1 );
	if( LITLENGTH$1 >= VARLENGTH$1 ) goto label$2972;
	{
		FBSTRING TMP$3910$2;
		FBSTRING TMP$3911$2;
		__builtin_memset( &TMP$3911$2, 0, 12 );
		FBSTRING* vr$25 = fb_LongintToStr( VARLENGTH$1 - LITLENGTH$1 );
		__builtin_memset( &TMP$3910$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$3910$2, (void*)".zero ", 7, (void*)vr$25, -1 );
		fb_StrAssign( (void*)&TMP$3911$2, -1, (void*)vr$28, -1, 0 );
		HWRITEASM64( &TMP$3911$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3911$2 );
	}
	label$2972:;
	label$2971:;
	label$2966:;
}

static void _EMITVARINIWSTR( int64 TOTLGT$1, uint32* LITSTR$1, int64 LITLGT$1 )
{
	FBSTRING TMP$3920$1;
	FBSTRING TMP$3921$1;
	FBSTRING TMP$3922$1;
	label$2973:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 4 );
	FBSTRING OSTR$1;
	__builtin_memset( &OSTR$1, 0, 12 );
	int32 WCLEN$1;
	WCLEN$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	if( TOTLGT$1 != 0ll ) goto label$2976;
	{
		if( WCLEN$1 != 2 ) goto label$2978;
		{
			FBSTRING TMP$3914$3;
			__builtin_memset( &TMP$3914$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3914$3, -1, (void*)".word 0", 8, 0 );
			HWRITEASM64( &TMP$3914$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3914$3 );
		}
		goto label$2977;
		label$2978:;
		{
			FBSTRING TMP$3916$3;
			__builtin_memset( &TMP$3916$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3916$3, -1, (void*)".long 0", 8, 0 );
			HWRITEASM64( &TMP$3916$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3916$3 );
		}
		label$2977:;
		fb_StrDelete( (FBSTRING*)&OSTR$1 );
		goto label$2974;
	}
	label$2976:;
	label$2975:;
	if( LITLGT$1 <= TOTLGT$1 ) goto label$2980;
	{
		uint32* TMP$3917$2;
		ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
		uint32* vr$12 = fb_WstrLeft( (uint32*)LITSTR$1, (int32)TOTLGT$1 );
		TMP$3917$2 = vr$12;
		uint8* vr$13 = HESCAPEW( (uint32*)TMP$3917$2 );
		S$1 = vr$13;
		fb_WstrDelete( (uint32*)TMP$3917$2 );
	}
	goto label$2979;
	label$2980:;
	{
		uint8* vr$14 = HESCAPEW( (uint32*)LITSTR$1 );
		S$1 = vr$14;
	}
	label$2979:;
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8 );
	FBSTRING* vr$17 = fb_LEFT( (FBSTRING*)vr$16, *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) << (1 & 31) );
	__builtin_memset( &TMP$3920$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$3920$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3921$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$3921$1, (void*)vr$20, -1, (void*)vr$17, -1 );
	__builtin_memset( &TMP$3922$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$3922$1, (void*)vr$23, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$26, -1, 0 );
	HWRITEASM64( &OSTR$1, 0 );
	if( LITLGT$1 >= TOTLGT$1 ) goto label$2982;
	{
		FBSTRING TMP$3923$2;
		FBSTRING TMP$3924$2;
		__builtin_memset( &TMP$3924$2, 0, 12 );
		FBSTRING* vr$33 = fb_LongintToStr( (TOTLGT$1 - LITLGT$1) * (int64)WCLEN$1 );
		__builtin_memset( &TMP$3923$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$3923$2, (void*)".zero ", 7, (void*)vr$33, -1 );
		fb_StrAssign( (void*)&TMP$3924$2, -1, (void*)vr$36, -1, 0 );
		HWRITEASM64( &TMP$3924$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3924$2 );
	}
	label$2982:;
	label$2981:;
	fb_StrDelete( (FBSTRING*)&OSTR$1 );
	label$2974:;
}

static void _EMITMACRO( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$2983:;
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 4 );
	struct $6IRVREG* TEMPO2$1;
	__builtin_memset( &TEMPO2$1, 0, 4 );
	int32 SAVEREG$1;
	__builtin_memset( &SAVEREG$1, 0, 4 );
	int32 STARTARG$1;
	__builtin_memset( &STARTARG$1, 0, 4 );
	int32 VREG$1;
	__builtin_memset( &VREG$1, 0, 4 );
	FBSTRING REGVALIST$1;
	__builtin_memset( &REGVALIST$1, 0, 12 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$2986;
	{
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = 8;
	}
	label$2986:;
	label$2985:;
	{
		if( OP$1 != 109 ) goto label$2988;
		label$2989:;
		{
			struct $6IRVREG* vr$9 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
			TEMPO1$1 = vr$9;
			REG_FINDFREE( *(int32*)((uint8*)TEMPO1$1 + 12), -1 );
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2991;
			{
				FBSTRING TMP$3926$4;
				FBSTRING TMP$3927$4;
				FBSTRING TMP$3928$4;
				FBSTRING TMP$3929$4;
				FBSTRING TMP$3931$4;
				FBSTRING TMP$3932$4;
				FBSTRING TMP$3933$4;
				FBSTRING TMP$3934$4;
				int32 TMP$3935$4;
				int32 TMP$3936$4;
				FBSTRING TMP$3938$4;
				FBSTRING TMP$3939$4;
				FBSTRING TMP$3940$4;
				FBSTRING TMP$3942$4;
				FBSTRING TMP$3943$4;
				FBSTRING TMP$3944$4;
				FBSTRING TMP$3946$4;
				FBSTRING TMP$3948$4;
				FBSTRING TMP$3949$4;
				FBSTRING TMP$3950$4;
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				int32 vr$12 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				fb_StrAssign( (void*)&REGVALIST$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$12 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$3929$4, 0, 12 );
				FBSTRING* vr$17 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) << (3 & 31) );
				__builtin_memset( &TMP$3926$4, 0, 12 );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$3926$4, (void*)"mov DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3927$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$3927$4, (void*)vr$21, -1, (void*)"], ", 4 );
				__builtin_memset( &TMP$3928$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$3928$4, (void*)vr$24, -1, (void*)vr$17, -1 );
				fb_StrAssign( (void*)&TMP$3929$4, -1, (void*)vr$27, -1, 0 );
				HWRITEASM64( &TMP$3929$4, 1 );
				fb_StrDelete( (FBSTRING*)&TMP$3929$4 );
				__builtin_memset( &TMP$3934$4, 0, 12 );
				FBSTRING* vr$34 = fb_IntToStr( (*(int32*)((uint8*)&CTX$ + 88) << (3 & 31)) + 48 );
				__builtin_memset( &TMP$3931$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$3931$4, (void*)"mov DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3932$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$3932$4, (void*)vr$38, -1, (void*)"], ", 4 );
				__builtin_memset( &TMP$3933$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$3933$4, (void*)vr$41, -1, (void*)vr$34, -1 );
				fb_StrAssign( (void*)&TMP$3934$4, -1, (void*)vr$44, -1, 0 );
				HWRITEASM64( &TMP$3934$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3934$4 );
				if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$2992;
				TMP$3935$4 = 0;
				goto label$3155;
				label$2992:;
				TMP$3935$4 = *(int32*)((uint8*)&CTX$ + 84) + -6;
				label$3155:;
				if( *(int32*)((uint8*)&CTX$ + 88) > 8 ) goto label$2993;
				TMP$3936$4 = 0;
				goto label$3156;
				label$2993:;
				TMP$3936$4 = *(int32*)((uint8*)&CTX$ + 88) + -8;
				label$3156:;
				STARTARG$1 = ((TMP$3935$4 + TMP$3936$4) << (3 & 31)) + 16;
				__builtin_memset( &TMP$3940$4, 0, 12 );
				FBSTRING* vr$54 = fb_IntToStr( STARTARG$1 );
				__builtin_memset( &TMP$3938$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$3938$4, (void*)"lea rax,", 9, (void*)vr$54, -1 );
				__builtin_memset( &TMP$3939$4, 0, 12 );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$3939$4, (void*)vr$57, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&TMP$3940$4, -1, (void*)vr$60, -1, 0 );
				HWRITEASM64( &TMP$3940$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3940$4 );
				__builtin_memset( &TMP$3944$4, 0, 12 );
				__builtin_memset( &TMP$3942$4, 0, 12 );
				FBSTRING* vr$68 = fb_StrConcat( &TMP$3942$4, (void*)"mov QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3943$4, 0, 12 );
				FBSTRING* vr$71 = fb_StrConcat( &TMP$3943$4, (void*)vr$68, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$3944$4, -1, (void*)vr$71, -1, 0 );
				HWRITEASM64( &TMP$3944$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3944$4 );
				__builtin_memset( &TMP$3946$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3946$4, -1, (void*)"lea rax, -152[rbp]", 19, 0 );
				HWRITEASM64( &TMP$3946$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3946$4 );
				__builtin_memset( &TMP$3950$4, 0, 12 );
				__builtin_memset( &TMP$3948$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$3948$4, (void*)"mov QWORD PTR 16[", 18, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3949$4, 0, 12 );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$3949$4, (void*)vr$83, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$3950$4, -1, (void*)vr$86, -1, 0 );
				HWRITEASM64( &TMP$3950$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3950$4 );
			}
			goto label$2990;
			label$2991:;
			{
				FBSTRING TMP$3951$4;
				FBSTRING TMP$3952$4;
				FBSTRING TMP$3953$4;
				FBSTRING TMP$3954$4;
				FBSTRING TMP$3955$4;
				__builtin_memset( &TMP$3955$4, 0, 12 );
				FBSTRING* vr$93 = fb_IntToStr( (*(int32*)((uint8*)&CTX$ + 84) << (3 & 31)) + 16 );
				int32 vr$95 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				__builtin_memset( &TMP$3951$4, 0, 12 );
				FBSTRING* vr$99 = fb_StrConcat( &TMP$3951$4, (void*)"lea ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$95 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3952$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$3952$4, (void*)vr$99, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$3953$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$3953$4, (void*)vr$102, -1, (void*)vr$93, -1 );
				__builtin_memset( &TMP$3954$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$3954$4, (void*)vr$105, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&TMP$3955$4, -1, (void*)vr$108, -1, 0 );
				HWRITEASM64( &TMP$3955$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3955$4 );
				_EMITSTORE( V1$1, TEMPO1$1 );
			}
			label$2990:;
			if( *(int32*)V2$1 != 3 ) goto label$2995;
			{
				VREG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12);
				{
					int32 IREG$5;
					IREG$5 = 1;
					label$2999:;
					{
						if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) != VREG$1 ) goto label$3001;
						{
							*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) = -2;
							goto label$2998;
						}
						label$3001:;
						label$3000:;
					}
					label$2997:;
					IREG$5 = IREG$5 + 1;
					label$2996:;
					if( IREG$5 <= 15 ) goto label$2999;
					label$2998:;
				}
			}
			label$2995:;
			label$2994:;
		}
		goto label$2987;
		label$2988:;
		if( OP$1 != 112 ) goto label$3002;
		label$3003:;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$3005;
			{
				struct $6IRVREG* vr$118 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO1$1 = vr$118;
				REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				int32 vr$121 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				fb_StrAssign( (void*)&REGVALIST$1, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$121 << (2 & 31))), 0, 0 );
				uint8* vr$124 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$124, 0, 0 );
				uint8* vr$126 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$126, 0, 0 );
				if( (-(*(int32*)((uint8*)VR$1 + 4) == 16) | -(*(int32*)((uint8*)VR$1 + 4) == 15)) == 0 ) goto label$3007;
				{
					FBSTRING TMP$3958$5;
					FBSTRING TMP$3959$5;
					FBSTRING TMP$3960$5;
					FBSTRING TMP$3961$5;
					FBSTRING TMP$3962$5;
					FBSTRING TMP$3964$5;
					FBSTRING TMP$3965$5;
					FBSTRING TMP$3966$5;
					FBSTRING TMP$3969$5;
					FBSTRING TMP$3970$5;
					FBSTRING TMP$3971$5;
					FBSTRING TMP$3973$5;
					FBSTRING TMP$3974$5;
					FBSTRING TMP$3975$5;
					FBSTRING TMP$3976$5;
					FBSTRING TMP$3977$5;
					FBSTRING TMP$3978$5;
					FBSTRING TMP$3979$5;
					FBSTRING TMP$3981$5;
					FBSTRING TMP$3982$5;
					FBSTRING TMP$3983$5;
					FBSTRING TMP$3985$5;
					FBSTRING TMP$3986$5;
					FBSTRING TMP$3987$5;
					FBSTRING TMP$3988$5;
					FBSTRING TMP$3989$5;
					FBSTRING TMP$3991$5;
					FBSTRING TMP$3992$5;
					FBSTRING TMP$3993$5;
					__builtin_memset( &TMP$3960$5, 0, 12 );
					__builtin_memset( &TMP$3958$5, 0, 12 );
					FBSTRING* vr$137 = fb_StrConcat( &TMP$3958$5, (void*)"cmp DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3959$5, 0, 12 );
					FBSTRING* vr$140 = fb_StrConcat( &TMP$3959$5, (void*)vr$137, -1, (void*)"], 104", 7 );
					fb_StrAssign( (void*)&TMP$3960$5, -1, (void*)vr$140, -1, 0 );
					HWRITEASM64( &TMP$3960$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3960$5 );
					__builtin_memset( &TMP$3962$5, 0, 12 );
					__builtin_memset( &TMP$3961$5, 0, 12 );
					FBSTRING* vr$148 = fb_StrConcat( &TMP$3961$5, (void*)"jg ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$3962$5, -1, (void*)vr$148, -1, 0 );
					HWRITEASM64( &TMP$3962$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3962$5 );
					__builtin_memset( &TMP$3966$5, 0, 12 );
					__builtin_memset( &TMP$3964$5, 0, 12 );
					FBSTRING* vr$156 = fb_StrConcat( &TMP$3964$5, (void*)"mov eax, DWORD PTR 4[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3965$5, 0, 12 );
					FBSTRING* vr$159 = fb_StrConcat( &TMP$3965$5, (void*)vr$156, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3966$5, -1, (void*)vr$159, -1, 0 );
					HWRITEASM64( &TMP$3966$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3966$5 );
					__builtin_memset( &TMP$3971$5, 0, 12 );
					__builtin_memset( &TMP$3969$5, 0, 12 );
					FBSTRING* vr$167 = fb_StrConcat( &TMP$3969$5, (void*)"add DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3970$5, 0, 12 );
					FBSTRING* vr$170 = fb_StrConcat( &TMP$3970$5, (void*)vr$167, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3971$5, -1, (void*)vr$170, -1, 0 );
					HWRITEASM64( &TMP$3971$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3971$5 );
					__builtin_memset( &TMP$3975$5, 0, 12 );
					__builtin_memset( &TMP$3973$5, 0, 12 );
					FBSTRING* vr$178 = fb_StrConcat( &TMP$3973$5, (void*)"add rax, QWORD PTR 16[", 23, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3974$5, 0, 12 );
					FBSTRING* vr$181 = fb_StrConcat( &TMP$3974$5, (void*)vr$178, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3975$5, -1, (void*)vr$181, -1, 0 );
					HWRITEASM64( &TMP$3975$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3975$5 );
					__builtin_memset( &TMP$3977$5, 0, 12 );
					__builtin_memset( &TMP$3976$5, 0, 12 );
					FBSTRING* vr$189 = fb_StrConcat( &TMP$3976$5, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$3977$5, -1, (void*)vr$189, -1, 0 );
					HWRITEASM64( &TMP$3977$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3977$5 );
					__builtin_memset( &TMP$3979$5, 0, 12 );
					__builtin_memset( &TMP$3978$5, 0, 12 );
					FBSTRING* vr$197 = fb_StrConcat( &TMP$3978$5, (void*)&LNAME1$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3979$5, -1, (void*)vr$197, -1, 0 );
					HWRITEASM64( &TMP$3979$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3979$5 );
					__builtin_memset( &TMP$3983$5, 0, 12 );
					__builtin_memset( &TMP$3981$5, 0, 12 );
					FBSTRING* vr$205 = fb_StrConcat( &TMP$3981$5, (void*)"mov rax, QWORD PTR 8[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3982$5, 0, 12 );
					FBSTRING* vr$208 = fb_StrConcat( &TMP$3982$5, (void*)vr$205, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3983$5, -1, (void*)vr$208, -1, 0 );
					HWRITEASM64( &TMP$3983$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3983$5 );
					__builtin_memset( &TMP$3987$5, 0, 12 );
					__builtin_memset( &TMP$3985$5, 0, 12 );
					FBSTRING* vr$216 = fb_StrConcat( &TMP$3985$5, (void*)"add QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3986$5, 0, 12 );
					FBSTRING* vr$219 = fb_StrConcat( &TMP$3986$5, (void*)vr$216, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3987$5, -1, (void*)vr$219, -1, 0 );
					HWRITEASM64( &TMP$3987$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3987$5 );
					__builtin_memset( &TMP$3989$5, 0, 12 );
					__builtin_memset( &TMP$3988$5, 0, 12 );
					FBSTRING* vr$227 = fb_StrConcat( &TMP$3988$5, (void*)&LNAME2$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3989$5, -1, (void*)vr$227, -1, 0 );
					HWRITEASM64( &TMP$3989$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3989$5 );
					__builtin_memset( &TMP$3993$5, 0, 12 );
					int32 vr$233 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
					__builtin_memset( &TMP$3991$5, 0, 12 );
					FBSTRING* vr$237 = fb_StrConcat( &TMP$3991$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$233 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3992$5, 0, 12 );
					FBSTRING* vr$240 = fb_StrConcat( &TMP$3992$5, (void*)vr$237, -1, (void*)", [rax]", 8 );
					fb_StrAssign( (void*)&TMP$3993$5, -1, (void*)vr$240, -1, 0 );
					HWRITEASM64( &TMP$3993$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3993$5 );
				}
				goto label$3006;
				label$3007:;
				{
					FBSTRING TMP$3996$5;
					FBSTRING TMP$3997$5;
					FBSTRING TMP$3998$5;
					FBSTRING TMP$3999$5;
					FBSTRING TMP$4000$5;
					FBSTRING TMP$4002$5;
					FBSTRING TMP$4003$5;
					FBSTRING TMP$4004$5;
					FBSTRING TMP$4006$5;
					FBSTRING TMP$4007$5;
					FBSTRING TMP$4008$5;
					FBSTRING TMP$4009$5;
					FBSTRING TMP$4010$5;
					FBSTRING TMP$4011$5;
					FBSTRING TMP$4012$5;
					FBSTRING TMP$4013$5;
					FBSTRING TMP$4014$5;
					FBSTRING TMP$4015$5;
					FBSTRING TMP$4016$5;
					FBSTRING TMP$4017$5;
					FBSTRING TMP$4018$5;
					FBSTRING TMP$4019$5;
					FBSTRING TMP$4020$5;
					FBSTRING TMP$4021$5;
					FBSTRING TMP$4022$5;
					FBSTRING TMP$4023$5;
					FBSTRING TMP$4024$5;
					FBSTRING TMP$4025$5;
					FBSTRING TMP$4026$5;
					__builtin_memset( &TMP$3998$5, 0, 12 );
					__builtin_memset( &TMP$3996$5, 0, 12 );
					FBSTRING* vr$248 = fb_StrConcat( &TMP$3996$5, (void*)"cmp DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3997$5, 0, 12 );
					FBSTRING* vr$251 = fb_StrConcat( &TMP$3997$5, (void*)vr$248, -1, (void*)"], 40", 6 );
					fb_StrAssign( (void*)&TMP$3998$5, -1, (void*)vr$251, -1, 0 );
					HWRITEASM64( &TMP$3998$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3998$5 );
					__builtin_memset( &TMP$4000$5, 0, 12 );
					__builtin_memset( &TMP$3999$5, 0, 12 );
					FBSTRING* vr$259 = fb_StrConcat( &TMP$3999$5, (void*)"jg ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$4000$5, -1, (void*)vr$259, -1, 0 );
					HWRITEASM64( &TMP$4000$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4000$5 );
					__builtin_memset( &TMP$4004$5, 0, 12 );
					__builtin_memset( &TMP$4002$5, 0, 12 );
					FBSTRING* vr$267 = fb_StrConcat( &TMP$4002$5, (void*)"mov eax, DWORD PTR [", 21, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4003$5, 0, 12 );
					FBSTRING* vr$270 = fb_StrConcat( &TMP$4003$5, (void*)vr$267, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4004$5, -1, (void*)vr$270, -1, 0 );
					HWRITEASM64( &TMP$4004$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4004$5 );
					__builtin_memset( &TMP$4008$5, 0, 12 );
					__builtin_memset( &TMP$4006$5, 0, 12 );
					FBSTRING* vr$278 = fb_StrConcat( &TMP$4006$5, (void*)"add DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4007$5, 0, 12 );
					FBSTRING* vr$281 = fb_StrConcat( &TMP$4007$5, (void*)vr$278, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$4008$5, -1, (void*)vr$281, -1, 0 );
					HWRITEASM64( &TMP$4008$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4008$5 );
					__builtin_memset( &TMP$4011$5, 0, 12 );
					__builtin_memset( &TMP$4009$5, 0, 12 );
					FBSTRING* vr$289 = fb_StrConcat( &TMP$4009$5, (void*)"add rax, QWORD PTR 16[", 23, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4010$5, 0, 12 );
					FBSTRING* vr$292 = fb_StrConcat( &TMP$4010$5, (void*)vr$289, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4011$5, -1, (void*)vr$292, -1, 0 );
					HWRITEASM64( &TMP$4011$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4011$5 );
					__builtin_memset( &TMP$4013$5, 0, 12 );
					__builtin_memset( &TMP$4012$5, 0, 12 );
					FBSTRING* vr$300 = fb_StrConcat( &TMP$4012$5, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$4013$5, -1, (void*)vr$300, -1, 0 );
					HWRITEASM64( &TMP$4013$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4013$5 );
					__builtin_memset( &TMP$4015$5, 0, 12 );
					__builtin_memset( &TMP$4014$5, 0, 12 );
					FBSTRING* vr$308 = fb_StrConcat( &TMP$4014$5, (void*)&LNAME1$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$4015$5, -1, (void*)vr$308, -1, 0 );
					HWRITEASM64( &TMP$4015$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4015$5 );
					__builtin_memset( &TMP$4018$5, 0, 12 );
					__builtin_memset( &TMP$4016$5, 0, 12 );
					FBSTRING* vr$316 = fb_StrConcat( &TMP$4016$5, (void*)"mov rax, QWORD PTR 8[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4017$5, 0, 12 );
					FBSTRING* vr$319 = fb_StrConcat( &TMP$4017$5, (void*)vr$316, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4018$5, -1, (void*)vr$319, -1, 0 );
					HWRITEASM64( &TMP$4018$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4018$5 );
					__builtin_memset( &TMP$4021$5, 0, 12 );
					__builtin_memset( &TMP$4019$5, 0, 12 );
					FBSTRING* vr$327 = fb_StrConcat( &TMP$4019$5, (void*)"add QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4020$5, 0, 12 );
					FBSTRING* vr$330 = fb_StrConcat( &TMP$4020$5, (void*)vr$327, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$4021$5, -1, (void*)vr$330, -1, 0 );
					HWRITEASM64( &TMP$4021$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4021$5 );
					__builtin_memset( &TMP$4023$5, 0, 12 );
					__builtin_memset( &TMP$4022$5, 0, 12 );
					FBSTRING* vr$338 = fb_StrConcat( &TMP$4022$5, (void*)&LNAME2$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$4023$5, -1, (void*)vr$338, -1, 0 );
					HWRITEASM64( &TMP$4023$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4023$5 );
					__builtin_memset( &TMP$4026$5, 0, 12 );
					int32 vr$344 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
					__builtin_memset( &TMP$4024$5, 0, 12 );
					FBSTRING* vr$348 = fb_StrConcat( &TMP$4024$5, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$344 << (2 & 31))), 0 );
					__builtin_memset( &TMP$4025$5, 0, 12 );
					FBSTRING* vr$351 = fb_StrConcat( &TMP$4025$5, (void*)vr$348, -1, (void*)", [rax]", 8 );
					fb_StrAssign( (void*)&TMP$4026$5, -1, (void*)vr$351, -1, 0 );
					HWRITEASM64( &TMP$4026$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4026$5 );
				}
				label$3006:;
			}
			goto label$3004;
			label$3005:;
			{
				FBSTRING TMP$4028$4;
				FBSTRING TMP$4029$4;
				FBSTRING TMP$4030$4;
				FBSTRING TMP$4031$4;
				FBSTRING TMP$4032$4;
				if( *(int32*)V1$1 != 3 ) goto label$3009;
				{
					int32 vr$358 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					SAVEREG$1 = vr$358;
				}
				goto label$3008;
				label$3009:;
				if( *(int32*)V1$1 != 4 ) goto label$3010;
				{
					int32 vr$361 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					SAVEREG$1 = vr$361;
				}
				label$3010:;
				label$3008:;
				if( (-(*(int32*)V1$1 != 4) | -(-((*(int32*)((uint8*)V1$1 + 4) & 480) != 0) == -1)) == 0 ) goto label$3012;
				{
					_EMITADDR( 76, V1$1, VR$1 );
					if( *(int32*)V1$1 != 3 ) goto label$3014;
					{
						*(int32*)((int32)(int32*)REGHANDLE$ + (SAVEREG$1 << (2 & 31))) = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12);
					}
					goto label$3013;
					label$3014:;
					if( *(int32*)V1$1 != 4 ) goto label$3015;
					{
						*(int32*)((int32)(int32*)REGHANDLE$ + (SAVEREG$1 << (2 & 31))) = *(int32*)((uint8*)V1$1 + 12);
					}
					label$3015:;
					label$3013:;
					struct $6IRVREG* vr$376 = IRHLALLOCVRIMM( 8, (struct $8FBSYMBOL*)0u, 8ll );
					TEMPO1$1 = vr$376;
					_EMITBOP( 28, V1$1, TEMPO1$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u );
				}
				goto label$3011;
				label$3012:;
				{
					*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
				}
				label$3011:;
				__builtin_memset( &TMP$4032$4, 0, 12 );
				int32 vr$381 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				int32 vr$384 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$4028$4, 0, 12 );
				FBSTRING* vr$388 = fb_StrConcat( &TMP$4028$4, (void*)"mov ", 5, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$384 << (2 & 31))), 0 );
				__builtin_memset( &TMP$4029$4, 0, 12 );
				FBSTRING* vr$391 = fb_StrConcat( &TMP$4029$4, (void*)vr$388, -1, (void*)", [", 4 );
				__builtin_memset( &TMP$4030$4, 0, 12 );
				FBSTRING* vr$394 = fb_StrConcat( &TMP$4030$4, (void*)vr$391, -1, *(void**)((int32)(uint8**)REGSTRQ$ + (vr$381 << (2 & 31))), 0 );
				__builtin_memset( &TMP$4031$4, 0, 12 );
				FBSTRING* vr$397 = fb_StrConcat( &TMP$4031$4, (void*)vr$394, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$4032$4, -1, (void*)vr$397, -1, 0 );
				HWRITEASM64( &TMP$4032$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$4032$4 );
			}
			label$3004:;
		}
		goto label$2987;
		label$3002:;
		if( OP$1 != 110 ) goto label$3016;
		label$3017:;
		{
			if( *(int32*)V1$1 != 3 ) goto label$3019;
			{
				VREG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12);
				{
					int32 IREG$5;
					IREG$5 = 1;
					label$3023:;
					{
						if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) != VREG$1 ) goto label$3025;
						{
							*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) = -2;
							goto label$3022;
						}
						label$3025:;
						label$3024:;
					}
					label$3021:;
					IREG$5 = IREG$5 + 1;
					label$3020:;
					if( IREG$5 <= 15 ) goto label$3023;
					label$3022:;
				}
			}
			label$3019:;
			label$3018:;
		}
		goto label$2987;
		label$3016:;
		if( OP$1 != 111 ) goto label$3026;
		label$3027:;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$3029;
			{
				struct $6IRVREG* vr$407 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO1$1 = vr$407;
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				struct $6IRVREG* vr$408 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO2$1 = vr$408;
				_EMITADDR( 22, V2$1, TEMPO2$1 );
				_EMITMEM( 105, TEMPO1$1, TEMPO2$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40) );
			}
			goto label$3028;
			label$3029:;
			{
				_EMITSTORE( V1$1, V2$1 );
			}
			label$3028:;
		}
		label$3026:;
		label$2987:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	fb_StrDelete( (FBSTRING*)&REGVALIST$1 );
	label$2984:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$3030:;
	label$3031:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$3032:;
	label$3033:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$3034:;
	label$3035:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$3036:;
	label$3037:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	label$3038:;
	label$3039:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$3040:;
	label$3041:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$3042:;
	label$3043:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$3044:;
	label$3045:;
}

static void _EMITFBCTINFBEGIN( void )
{
	label$3046:;
	label$3047:;
}

static void _EMITFBCTINFEND( void )
{
	label$3048:;
	label$3049:;
}

static void _EMITSPILLREGS( void )
{
	label$3050:;
	label$3051:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$3052:;
	label$3053:;
}

static void CFI_WINDOWS_ASM_CODE( FBSTRING* STATEMENT$1 )
{
	label$3056:;
	if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$3059;
	{
		if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$3061;
		{
			HWRITEASM64( STATEMENT$1, 0 );
		}
		label$3061:;
		label$3060:;
	}
	label$3059:;
	label$3058:;
	label$3057:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$3063:;
	_ZN6DBGCTXC1Ev( &CTXDBG$ );
	_ZN13ASM64_CONTEXTC1Ev( &CTX$ );
	label$3064:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$3066:;
	fb_ArrayEraseObj( (struct $7FBARRAYIvE*)&DBGSTAB$, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev );
	fb_ArrayEraseObj( (struct $7FBARRAYIvE*)&DBGSTR$, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev );
	_ZN13ASM64_CONTEXTD1Ev( &CTX$ );
	_ZN6DBGCTXD1Ev( &CTXDBG$ );
	label$3067:;
}
