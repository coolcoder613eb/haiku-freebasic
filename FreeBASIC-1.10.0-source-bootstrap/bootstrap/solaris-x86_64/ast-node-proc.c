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
		uint32* LITTEXTW;
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
typedef int64 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
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
		uint32* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint32* DATA;
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
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int64* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
struct $14FB_DTORWRAPPER {
	struct $8FBSYMBOL* PROC;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_DTORWRAPPER ) == 16 );
struct $15FB_GLOBINSTANCE {
	struct $8FBSYMBOL* SYM;
	struct $7ASTNODE* INITREE;
	int64 CALL_DTOR;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBINSTANCE ) == 24 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezproc( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
void* LISTGETNEXT( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int64 ERRGETCOUNT( void );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int64, uint8*, int64 );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
void ASTPROCBEGIN( struct $8FBSYMBOL*, int64 );
int64 ASTPROCEND( int64 );
void ASTPROCVECTORIZE( struct $7ASTNODE* );
int64 ASTSCOPEUPDBREAKLIST( struct $7ASTNODE* );
void ASTSCOPEDESTROYVARS( struct $8FBSYMBOL* );
void ASTSCOPEALLOCLOCALS( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTADDAFTER( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTFINDFIRSTCODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTUPDATEBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLOAD( struct $7ASTNODE*, int64, int64 );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWMEM( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTBUILDDELETEOP( $6AST_OP, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
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
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTOPTASSIGNMENT( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTTYPEINIUPDATE( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINICLONE( struct $7ASTNODE* );
void ASTTYPEINIDELETE( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDVARDEREF( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARINC( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDCTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDDTORCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTBUILDFORBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64 );
struct $7ASTNODE* ASTBUILDFOREND( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDPROCRESULTVAR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTDTORLISTFLUSH( int64 );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
void ASTGOSUBADDEXIT( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
int64 SYMBPROCHASFWDREFINSIGNATURE( struct $8FBSYMBOL* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
struct $8FBSYMBOL* SYMBADDVARFORPARAM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDVARFORPROCRESULTPARAM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCRESULTVAR( struct $8FBSYMBOL* );
void SYMBPROCALLOCEXT( struct $8FBSYMBOL* );
void SYMBDELSYMBOLTB( struct $10FBSYMBOLTB*, int64 );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
int64 SYMBCHECKLABELS( struct $8FBSYMBOL* );
int64 SYMBHASCTOR( struct $8FBSYMBOL* );
int64 SYMBHASDEFCTOR( struct $8FBSYMBOL* );
int64 SYMBHASDTOR( struct $8FBSYMBOL* );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int64 );
void SYMBNESTEND( int64 );
uint8* SYMBUNIQUELABEL( void );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALCTOR( struct $8FBSYMBOL* );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALDTOR( struct $8FBSYMBOL* );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRDELETE( struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRALLOCTMPRESULT( struct $7ASTNODE* );
struct $7ASTNODE* RTLARRAYERASE( struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* RTLARRAYREDIM( struct $7ASTNODE*, int64, struct $7FBARRAYIP7ASTNODEE*, int64, int64 );
struct $7ASTNODE* RTLINITAPP( struct $7ASTNODE*, struct $7ASTNODE* );
int64 RTLEXITAPP( struct $7ASTNODE* );
void RTLERRORSETHANDLER( struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLERRORSETMODNAME( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* RTLERRORSETFUNCNAME( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* RTLPROFILECALL_MCOUNT( void );
static int64 HMODLEVELISEMPTY( struct $7ASTNODE* );
static void HLOADPROCRESULT( struct $8FBSYMBOL* );
static int64 HDECLVARSFORPROCPARAMS( struct $8FBSYMBOL* );
static struct $7ASTNODE* HINITVPTR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HCALLCTORS( struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HCALLDTORS( struct $8FBSYMBOL* );
static void HCALLDELETEDTOR( struct $8FBSYMBOL* );
static void HGENSTATICINSTANCESDTORS( struct $8FBSYMBOL* );
static void HGENGLOBALINSTANCESCTOR( void );
static struct $7ASTNODE* HNEWPROCNODE( void );
static void HDELPROCNODE( struct $7ASTNODE* );
static void HPROCFLUSH( struct $7ASTNODE*, int64 );
static void HPROCFLUSHALL( void );
static struct $7ASTNODE* ASTUPDATE( struct $7ASTNODE* );
static struct $7ASTNODE* HCHECKERRHND( struct $7ASTNODE*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HMAYBECALLRESULTCTOR( struct $7ASTNODE*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLPROFILER( struct $7ASTNODE* );
static struct $7ASTNODE* HCALLCTORLIST( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLFIELDCTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCLEARUNIONFIELDS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL** );
static struct $7ASTNODE* HINITDYNAMICARRAYFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLFIELDCTORS( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $7ASTNODE* HCALLBASECTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HCALLFIELDDTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HCALLFIELDDTORS( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HCALLBASEDTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HCALLSTATICCTOR( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HCALLSTATICDTOR( struct $8FBSYMBOL* );
static void HGLOBCTORBEGIN( int64 );
typedef void (*tmp$37)( void );
typedef int64 (*tmp$38)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$40)( int64, int64 );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$55)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$67)( uint8* );
typedef struct $6IRVREG* (*tmp$68)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$75)( struct $6IRVREG* );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
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
static struct $8FBARRAY2IlE tmp$81$;
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

void ASTPROCLISTINIT( void )
{
	label$10:;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 64ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 72ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) = (struct $7ASTNODE*)0ull;
	LISTINIT( (struct $5TLIST*)((uint8*)&AST$ + 152ll), 32ll, 24ll, 6ll );
	*(int64*)((uint8*)&AST$ + 216ll) = 0ll;
	*(int64*)((uint8*)&AST$ + 224ll) = 0ll;
	label$11:;
}

void ASTPROCLISTEND( void )
{
	label$12:;
	*(int64*)((uint8*)&AST$ + 224ll) = 0ll;
	*(int64*)((uint8*)&AST$ + 216ll) = 0ll;
	LISTEND( (struct $5TLIST*)((uint8*)&AST$ + 152ll) );
	*(struct $7ASTNODE**)((uint8*)&AST$ + 64ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 72ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) = (struct $7ASTNODE*)0ull;
	label$13:;
}

struct $7ASTNODE* ASTADD( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$61:;
	struct $7ASTNODE* vr$1 = ASTUPDATE( N$1 );
	N$1 = vr$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$64;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$62;
	}
	label$64:;
	label$63:;
	if( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 120ll) == (struct $7ASTNODE*)0ull ) goto label$66;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 120ll) + 136ll) = N$1;
	}
	goto label$65;
	label$66:;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 112ll) = N$1;
	}
	label$65:;
	*(struct $7ASTNODE**)((uint8*)N$1 + 128ll) = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 120ll);
	*(struct $7ASTNODE**)((uint8*)N$1 + 136ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 120ll) = N$1;
	fb$result$1 = N$1;
	label$62:;
	return fb$result$1;
}

struct $7ASTNODE* ASTADDAFTER( struct $7ASTNODE* N$1, struct $7ASTNODE* REF$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$67:;
	struct $7ASTNODE* vr$1 = ASTUPDATE( N$1 );
	N$1 = vr$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$70;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$68;
	}
	label$70:;
	label$69:;
	if( REF$1 == (struct $7ASTNODE*)0ull ) goto label$72;
	{
		*(struct $7ASTNODE**)((uint8*)N$1 + 128ll) = REF$1;
		*(struct $7ASTNODE**)((uint8*)N$1 + 136ll) = *(struct $7ASTNODE**)((uint8*)REF$1 + 136ll);
		if( *(struct $7ASTNODE**)((uint8*)REF$1 + 136ll) == (struct $7ASTNODE*)0ull ) goto label$74;
		{
			if( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)REF$1 + 136ll) + 128ll) == (struct $7ASTNODE*)0ull ) goto label$76;
			{
				*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)REF$1 + 136ll) + 128ll) = N$1;
			}
			label$76:;
			label$75:;
		}
		goto label$73;
		label$74:;
		{
			*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 120ll) = N$1;
		}
		label$73:;
		*(struct $7ASTNODE**)((uint8*)REF$1 + 136ll) = N$1;
	}
	goto label$71;
	label$72:;
	{
		*(struct $7ASTNODE**)((uint8*)N$1 + 128ll) = (struct $7ASTNODE*)0ull;
		*(struct $7ASTNODE**)((uint8*)N$1 + 136ll) = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 112ll);
		if( *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 112ll) == (struct $7ASTNODE*)0ull ) goto label$78;
		{
			*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 112ll) + 128ll) = N$1;
		}
		goto label$77;
		label$78:;
		{
			*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 120ll) = N$1;
		}
		label$77:;
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 112ll) = N$1;
	}
	label$71:;
	fb$result$1 = N$1;
	label$68:;
	return fb$result$1;
}

void ASTADDUNSCOPED( struct $7ASTNODE* N$1 )
{
	label$79:;
	struct $7ASTNODE* LAST$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$82;
	{
		goto label$80;
	}
	label$82:;
	label$81:;
	LAST$1 = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 104ll);
	if( LAST$1 != (struct $7ASTNODE*)0ull ) goto label$84;
	{
		LAST$1 = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 112ll);
	}
	label$84:;
	label$83:;
	*(int64*)((uint8*)&AST$ + 392ll) = 0ll;
	if( LAST$1 != (struct $7ASTNODE*)0ull ) goto label$86;
	{
		struct $7ASTNODE* vr$2 = ASTADD( N$1 );
		N$1 = vr$2;
	}
	goto label$85;
	label$86:;
	{
		struct $7ASTNODE* vr$3 = ASTADDAFTER( N$1, LAST$1 );
		N$1 = vr$3;
	}
	label$85:;
	*(int64*)((uint8*)&AST$ + 392ll) = -1ll;
	*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 104ll) = N$1;
	label$80:;
}

struct $7ASTNODE* ASTFINDFIRSTCODE( struct $7ASTNODE* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$87:;
	struct $7ASTNODE* I$1;
	I$1 = *(struct $7ASTNODE**)((uint8*)PROC$1 + 112ll);
	label$89:;
	if( I$1 == (struct $7ASTNODE*)0ull ) goto label$90;
	{
		{
			$13AST_NODECLASS TMP$94$3;
			TMP$94$3 = *($13AST_NODECLASS*)I$1;
			if( TMP$94$3 == 0ll ) goto label$93;
			label$94:;
			if( TMP$94$3 == 21ll ) goto label$93;
			label$95:;
			if( TMP$94$3 == 24ll ) goto label$93;
			label$96:;
			if( TMP$94$3 == 27ll ) goto label$93;
			label$97:;
			if( TMP$94$3 == 29ll ) goto label$93;
			label$98:;
			if( TMP$94$3 != 30ll ) goto label$92;
			label$93:;
			{
			}
			goto label$91;
			label$92:;
			{
				goto label$90;
			}
			label$99:;
			label$91:;
		}
		I$1 = *(struct $7ASTNODE**)((uint8*)I$1 + 136ll);
	}
	goto label$89;
	label$90:;
	fb$result$1 = I$1;
	label$88:;
	return fb$result$1;
}

void ASTPROCBEGIN( struct $8FBSYMBOL* SYM$1, int64 ISMAIN$1 )
{
	int64 TMP$95$1;
	label$100:;
	struct $7ASTNODE* N$1;
	int64 ENABLE_IMPLICIT_CODE$1;
	struct $7ASTNODE* vr$0 = HNEWPROCNODE(  );
	N$1 = vr$0;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96ll) = SYM$1;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 112ll) = (struct $8FBSYMBOL*)0ull;
	SYMBPROCALLOCEXT( SYM$1 );
	*(uint8**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 48ll) = *(uint8**)((uint8*)&ENV$ + 872ll);
	*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) = N$1;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = N$1;
	if( ISMAIN$1 == 0ll ) goto label$102;
	TMP$95$1 = 0ll;
	goto label$110;
	label$102:;
	TMP$95$1 = 1ll;
	label$110:;
	*(uint64*)((uint8*)&PARSER$ + 200ll) = (uint64)TMP$95$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) = SYM$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = SYM$1;
	SYMBNESTBEGIN( SYM$1, 0ll );
	struct $8FBSYMBOL* vr$6 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 64ll) = vr$6;
	struct $8FBSYMBOL* vr$8 = SYMBADDLABEL( (uint8*)0ull, 0ll );
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 72ll) = vr$8;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = SYM$1;
	*(int64*)((uint8*)N$1 + 96ll) = ISMAIN$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 40ll) = (struct $7ASTNODE*)0ull;
	*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	*(struct $7ASTNODE**)((uint8*)N$1 + 80ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)N$1 + 88ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)N$1 + 104ll) = (struct $7ASTNODE*)0ull;
	(*(tmp$41*)((uint8*)&IR$ + 48ll))( SYM$1 );
	ENABLE_IMPLICIT_CODE$1 = (int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 128ll) == 0ll);
	if( ENABLE_IMPLICIT_CODE$1 == 0ll ) goto label$104;
	{
		HDECLVARSFORPROCPARAMS( SYM$1 );
		if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) == 0ll ) goto label$106;
		{
			SYMBADDPROCRESULTVAR( SYM$1 );
		}
		label$106:;
		label$105:;
	}
	label$104:;
	label$103:;
	{
		struct $10FB_PROCERR* TMP$96$2;
		TMP$96$2 = (struct $10FB_PROCERR*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 56ll);
		*(struct $8FBSYMBOL**)TMP$96$2 = (struct $8FBSYMBOL*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)TMP$96$2 + 8ll) = (struct $8FBSYMBOL*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)TMP$96$2 + 16ll) = (struct $8FBSYMBOL*)0ull;
	}
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 104ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 4096ll) == 0ll ) goto label$108;
	{
		struct $8FBSYMBOL* ARGC$2;
		struct $8FBSYMBOL* ARGV$2;
		ARGC$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll);
		ARGV$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll);
		struct $7ASTNODE* vr$35 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)ARGV$2 + 104ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$37 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)ARGC$2 + 104ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$38 = RTLINITAPP( vr$37, vr$35 );
		*(struct $7ASTNODE**)((uint8*)&ENV$ + 1416ll) = vr$38;
	}
	goto label$107;
	label$108:;
	if( (((int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 4096ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 8ll) != 0ll)) & ENABLE_IMPLICIT_CODE$1) == 0ll ) goto label$109;
	{
		struct $7ASTNODE* vr$49 = HINITVPTR( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll), SYM$1 );
		ASTADD( vr$49 );
	}
	label$109:;
	label$107:;
	struct $7ASTNODE* vr$51 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)N$1 + 64ll), -1ll );
	ASTADD( vr$51 );
	label$101:;
}

int64 ASTPROCEND( int64 CALLRTEXIT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$139:;
	static int64 REC_CNT$1 = 0ll;
	int64 RES$1;
	int64 DO_FLUSH$1;
	int64 ENABLE_IMPLICIT_CODE$1;
	struct $8FBSYMBOL* SYM$1;
	struct $7ASTNODE* N$1;
	N$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 80ll);
	REC_CNT$1 = REC_CNT$1 + 1ll;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	*(int64*)((uint8*)N$1 + 56ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	ENABLE_IMPLICIT_CODE$1 = (int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 128ll) == 0ll);
	int64 vr$7 = ERRGETCOUNT(  );
	if( vr$7 != 0ll ) goto label$142;
	{
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 4ll) != 0ll) & ENABLE_IMPLICIT_CODE$1) == 0ll ) goto label$144;
		{
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 4ll) != 0ll ) goto label$146;
			{
				*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 4ll;
				HCALLCTORS( N$1, SYM$1 );
			}
			label$146:;
			label$145:;
		}
		label$144:;
		label$143:;
		ASTSCOPEDESTROYVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 112ll) );
	}
	label$142:;
	label$141:;
	struct $7ASTNODE* vr$19 = ASTNEWLABEL( *(struct $8FBSYMBOL**)((uint8*)N$1 + 72ll), -1ll );
	ASTADD( vr$19 );
	int64 vr$21 = SYMBCHECKLABELS( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 104ll) );
	RES$1 = (int64)-(vr$21 == 0ll);
	if( RES$1 == 0ll ) goto label$148;
	{
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 8ll) != 0ll) & ENABLE_IMPLICIT_CODE$1) == 0ll ) goto label$150;
		{
			HCALLDTORS( SYM$1 );
		}
		label$150:;
		label$149:;
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 4096ll) != 0ll) & ENABLE_IMPLICIT_CODE$1) == 0ll ) goto label$152;
		{
			HCALLDELETEDTOR( SYM$1 );
		}
		label$152:;
		label$151:;
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 80ll) == (struct $7ASTNODE*)0ull ) goto label$154;
		{
			int64 vr$32 = ASTSCOPEUPDBREAKLIST( N$1 );
			RES$1 = vr$32;
		}
		label$154:;
		label$153:;
		ASTGOSUBADDEXIT( SYM$1 );
		struct $7ASTNODE* HEAD_NODE$2;
		HEAD_NODE$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		if( ENABLE_IMPLICIT_CODE$1 == 0ll ) goto label$156;
		{
			struct $7ASTNODE* vr$34 = HCALLPROFILER( HEAD_NODE$2 );
			HEAD_NODE$2 = vr$34;
			struct $7ASTNODE* vr$35 = HCHECKERRHND( HEAD_NODE$2, SYM$1 );
			HEAD_NODE$2 = vr$35;
		}
		label$156:;
		label$155:;
		if( CALLRTEXIT$1 == 0ll ) goto label$158;
		{
			if( *(int64*)((uint8*)N$1 + 96ll) == 0ll ) goto label$160;
			{
				RTLEXITAPP( (struct $7ASTNODE*)0ull );
			}
			label$160:;
			label$159:;
		}
		label$158:;
		label$157:;
		if( ENABLE_IMPLICIT_CODE$1 == 0ll ) goto label$162;
		{
			if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) == 0ll ) goto label$164;
			{
				struct $7ASTNODE* vr$39 = HMAYBECALLRESULTCTOR( HEAD_NODE$2, SYM$1 );
				HEAD_NODE$2 = vr$39;
				HLOADPROCRESULT( SYM$1 );
			}
			label$164:;
			label$163:;
		}
		label$162:;
		label$161:;
	}
	label$148:;
	label$147:;
	(*(tmp$41*)((uint8*)&IR$ + 56ll))( SYM$1 );
	DO_FLUSH$1 = 0ll;
	int64 vr$40 = ERRGETCOUNT(  );
	if( (RES$1 & (int64)-(vr$40 == 0ll)) == 0ll ) goto label$166;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 128ll;
		if( REC_CNT$1 != 1ll ) goto label$168;
		{
			if( *(int64*)((uint8*)N$1 + 96ll) != 0ll ) goto label$170;
			{
				int64 vr$50 = SYMBPROCHASFWDREFINSIGNATURE( SYM$1 );
				if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 64ll) == 0ll) & (~vr$50 | (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 0ll))) == 0ll ) goto label$172;
				{
					DO_FLUSH$1 = -1ll;
				}
				goto label$171;
				label$172:;
				{
					SYMBDELSYMBOLTB( (struct $10FBSYMBOLTB*)((uint8*)SYM$1 + 96ll), -1ll );
				}
				label$171:;
			}
			goto label$169;
			label$170:;
			{
				DO_FLUSH$1 = -1ll;
			}
			label$169:;
		}
		label$168:;
		label$167:;
	}
	goto label$165;
	label$166:;
	{
		SYMBDELSYMBOLTB( (struct $10FBSYMBOLTB*)((uint8*)SYM$1 + 96ll), 0ll );
	}
	label$165:;
	SYMBNESTEND( 0ll );
	if( *(int64*)((uint8*)&ENV$ + 248ll) < 1ll ) goto label$174;
	{
		if( *(int64*)((uint8*)&ENV$ + 208ll) != 0ll ) goto label$176;
		{
			ASTPROCVECTORIZE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		}
		label$176:;
		label$175:;
	}
	label$174:;
	label$173:;
	if( DO_FLUSH$1 == 0ll ) goto label$178;
	{
		if( *(int64*)((uint8*)N$1 + 96ll) != 0ll ) goto label$180;
		{
			HPROCFLUSH( N$1, -1ll );
		}
		goto label$179;
		label$180:;
		{
			HPROCFLUSHALL(  );
		}
		label$179:;
	}
	label$178:;
	label$177:;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) = *(struct $7ASTNODE**)((uint8*)&AST$ + 64ll);
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = *(struct $7ASTNODE**)((uint8*)&AST$ + 64ll);
	*(uint64*)((uint8*)&PARSER$ + 200ll) = 0ull;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) = *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll);
	REC_CNT$1 = REC_CNT$1 + -1ll;
	fb$result$1 = RES$1;
	label$140:;
	return fb$result$1;
}

struct $8FBSYMBOL* ASTPROCADDSTATICINSTANCE( struct $8FBSYMBOL* SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$331:;
	struct $5TLIST* DTORLIST$1;
	struct $14FB_DTORWRAPPER* WRAP$1;
	struct $8FBSYMBOL* PROC$1;
	DTORLIST$1 = *(struct $5TLIST**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 208ll) + 88ll);
	if( DTORLIST$1 != (struct $5TLIST*)0ull ) goto label$334;
	{
		void* vr$3 = XCALLOCATE( 64 );
		DTORLIST$1 = (struct $5TLIST*)vr$3;
		*(struct $5TLIST**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 208ll) + 88ll) = DTORLIST$1;
		LISTINIT( DTORLIST$1, 16ll, 16ll, 6ll );
	}
	label$334:;
	label$333:;
	void* vr$6 = LISTNEWNODE( DTORLIST$1 );
	WRAP$1 = (struct $14FB_DTORWRAPPER*)vr$6;
	uint8* vr$7 = SYMBUNIQUELABEL(  );
	struct $8FBSYMBOL* vr$8 = SYMBPREADDPROC( (uint8*)0ull );
	struct $8FBSYMBOL* vr$9 = SYMBADDPROC( vr$8, (uint8*)vr$7, (uint8*)0ull, 0ll, (struct $8FBSYMBOL*)0ull, 64ll, 0ll, 3ll, 4ll );
	PROC$1 = vr$9;
	*(struct $8FBSYMBOL**)WRAP$1 = PROC$1;
	*(struct $8FBSYMBOL**)((uint8*)WRAP$1 + 8ll) = SYM$1;
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 8388608ll;
	fb$result$1 = PROC$1;
	label$332:;
	return fb$result$1;
}

void ASTPROCADDGLOBALINSTANCE( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* INITREE$1, int64 CALL_DTOR$1 )
{
	label$335:;
	struct $15FB_GLOBINSTANCE* WRAP$1;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 152ll) );
	WRAP$1 = (struct $15FB_GLOBINSTANCE*)vr$1;
	*(struct $8FBSYMBOL**)WRAP$1 = SYM$1;
	*(struct $7ASTNODE**)((uint8*)WRAP$1 + 8ll) = INITREE$1;
	*(int64*)((uint8*)WRAP$1 + 16ll) = CALL_DTOR$1;
	*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 8388608ll;
	if( INITREE$1 == (struct $7ASTNODE*)0ull ) goto label$338;
	{
		*(int64*)((uint8*)&AST$ + 216ll) = *(int64*)((uint8*)&AST$ + 216ll) + 1ll;
	}
	label$338:;
	label$337:;
	if( CALL_DTOR$1 == 0ll ) goto label$340;
	{
		*(int64*)((uint8*)&AST$ + 224ll) = *(int64*)((uint8*)&AST$ + 224ll) + 1ll;
	}
	label$340:;
	label$339:;
	label$336:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $7ASTNODE* HNEWPROCNODE( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 43ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	if( *(struct $7ASTNODE**)((uint8*)&AST$ + 72ll) == (struct $7ASTNODE*)0ull ) goto label$17;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 72ll) + 136ll) = N$1;
	}
	goto label$16;
	label$17:;
	{
		*(struct $7ASTNODE**)((uint8*)&AST$ + 64ll) = N$1;
	}
	label$16:;
	*(struct $7ASTNODE**)((uint8*)N$1 + 128ll) = *(struct $7ASTNODE**)((uint8*)&AST$ + 72ll);
	*(struct $7ASTNODE**)((uint8*)N$1 + 136ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 72ll) = N$1;
	fb$result$1 = N$1;
	label$15:;
	return fb$result$1;
}

static void HDELPROCNODE( struct $7ASTNODE* N$1 )
{
	label$18:;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = (struct $7ASTNODE*)0ull;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 128ll) == (struct $7ASTNODE*)0ull ) goto label$21;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 128ll) + 136ll) = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
	}
	goto label$20;
	label$21:;
	{
		*(struct $7ASTNODE**)((uint8*)&AST$ + 64ll) = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
	}
	label$20:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 136ll) == (struct $7ASTNODE*)0ull ) goto label$23;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 136ll) + 128ll) = *(struct $7ASTNODE**)((uint8*)N$1 + 128ll);
	}
	goto label$22;
	label$23:;
	{
		*(struct $7ASTNODE**)((uint8*)&AST$ + 72ll) = *(struct $7ASTNODE**)((uint8*)N$1 + 128ll);
	}
	label$22:;
	ASTDELNODE( N$1 );
	label$19:;
}

static void HPROCFLUSH( struct $7ASTNODE* P$1, int64 DOEMIT$1 )
{
	int64 TMP$93$1;
	label$24:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* NXT$1;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)P$1 + 24ll);
	if( DOEMIT$1 == 0ll ) goto label$27;
	{
		HGENSTATICINSTANCESDTORS( SYM$1 );
	}
	label$27:;
	label$26:;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) = P$1;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = P$1;
	*(int64*)((uint8*)&AST$ + 272ll) = DOEMIT$1;
	if( *(int64*)((uint8*)P$1 + 96ll) == 0ll ) goto label$28;
	TMP$93$1 = 0ll;
	goto label$360;
	label$28:;
	TMP$93$1 = 1ll;
	label$360:;
	*(uint64*)((uint8*)&PARSER$ + 200ll) = (uint64)TMP$93$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) = SYM$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = SYM$1;
	SYMBNESTBEGIN( SYM$1, 0ll );
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$30;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 16777216ll;
		(*(tmp$42*)((uint8*)&IR$ + 144ll))( SYM$1, *(struct $8FBSYMBOL**)((uint8*)P$1 + 64ll) );
		ASTSCOPEALLOCLOCALS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll) );
	}
	label$30:;
	label$29:;
	N$1 = *(struct $7ASTNODE**)((uint8*)P$1 + 112ll);
	label$31:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$32;
	{
		NXT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
		ASTLOAD( N$1 );
		ASTDELNODE( N$1 );
		N$1 = NXT$1;
	}
	goto label$31;
	label$32:;
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$34;
	{
		(*(tmp$46*)((uint8*)&IR$ + 152ll))( SYM$1, *(struct $8FBSYMBOL**)((uint8*)P$1 + 64ll), *(struct $8FBSYMBOL**)((uint8*)P$1 + 72ll) );
		(*(tmp$41*)((uint8*)&IR$ + 104ll))( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll) );
	}
	label$34:;
	label$33:;
	SYMBDELSYMBOLTB( (struct $10FBSYMBOLTB*)((uint8*)SYM$1 + 96ll), 0ll );
	SYMBNESTEND( 0ll );
	HDELPROCNODE( P$1 );
	*(int64*)((uint8*)&AST$ + 272ll) = -1ll;
	label$25:;
}

static void HPROCFLUSHALL( void )
{
	label$35:;
	struct $7ASTNODE* N$1;
	int64 DOEMIT$1;
	struct $8FBSYMBOL* SYM$1;
	HGENGLOBALINSTANCESCTOR(  );
	label$37:;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 64ll);
		if( N$1 != (struct $7ASTNODE*)0ull ) goto label$41;
		{
			goto label$38;
		}
		label$41:;
		label$40:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 128ll) == 0ll ) goto label$43;
		{
			DOEMIT$1 = -1ll;
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 64ll) == 0ll ) goto label$45;
			{
				if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) != 0ll ) goto label$47;
				{
					DOEMIT$1 = 0ll;
				}
				goto label$46;
				label$47:;
				if( (*(int64*)((uint8*)SYM$1 + 24ll) & 8192ll) == 0ll ) goto label$48;
				{
					int64 vr$9 = HMODLEVELISEMPTY( N$1 );
					DOEMIT$1 = (int64)-(vr$9 == 0ll);
				}
				label$48:;
				label$46:;
			}
			label$45:;
			label$44:;
		}
		goto label$42;
		label$43:;
		{
			DOEMIT$1 = 0ll;
		}
		label$42:;
		HPROCFLUSH( N$1, DOEMIT$1 );
	}
	label$39:;
	goto label$37;
	label$38:;
	label$36:;
}

static struct $7ASTNODE* ASTUPDATE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$49:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$52;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$50;
	}
	label$52:;
	label$51:;
	if( *(int64*)N$1 != 9ll ) goto label$54;
	{
		if( *(int64*)((uint8*)N$1 + 40ll) == 0ll ) goto label$56;
		{
			if( *(int64*)((uint8*)N$1 + 8ll) == 0ll ) goto label$58;
			{
				ASTSETTYPE( N$1, 0ll, (struct $8FBSYMBOL*)0ull );
			}
			label$58:;
			label$57:;
		}
		label$56:;
		label$55:;
	}
	label$54:;
	label$53:;
	struct $7ASTNODE* vr$4 = ASTTYPEINIUPDATE( N$1 );
	N$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTUPDATEBITFIELDS( N$1 );
	N$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTOPTIMIZETREE( N$1 );
	N$1 = vr$6;
	struct $7ASTNODE* vr$7 = ASTOPTASSIGNMENT( N$1 );
	N$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTUPDSTRCONCAT( N$1 );
	N$1 = vr$8;
	if( *(int64*)((uint8*)&AST$ + 392ll) == 0ll ) goto label$60;
	{
		struct $7ASTNODE* vr$9 = ASTDTORLISTFLUSH( 0ll );
		struct $7ASTNODE* vr$10 = ASTNEWLINK( N$1, vr$9, 0ll );
		N$1 = vr$10;
	}
	label$60:;
	label$59:;
	fb$result$1 = N$1;
	label$50:;
	return fb$result$1;
}

static struct $7ASTNODE* HCHECKERRHND( struct $7ASTNODE* HEAD_NODE$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$111:;
	if( *(int64*)((uint8*)&ENV$ + 336ll) == 0ll ) goto label$114;
	{
		struct $7ASTNODE* vr$2 = ASTNEWCONSTSTR( (uint8*)((uint8*)&ENV$ + 608ll) );
		struct $7ASTNODE* vr$3 = RTLERRORSETMODNAME( SYM$1, vr$2 );
		struct $7ASTNODE* vr$4 = ASTADDAFTER( vr$3, HEAD_NODE$1 );
		HEAD_NODE$1 = vr$4;
		struct $7ASTNODE* vr$6 = ASTNEWCONSTSTR( *(uint8**)((uint8*)SYM$1 + 32ll) );
		struct $7ASTNODE* vr$7 = RTLERRORSETFUNCNAME( SYM$1, vr$6 );
		struct $7ASTNODE* vr$8 = ASTADDAFTER( vr$7, HEAD_NODE$1 );
		HEAD_NODE$1 = vr$8;
	}
	label$114:;
	label$113:;
	{
		struct $10FB_PROCERR* TMP$97$2;
		TMP$97$2 = (struct $10FB_PROCERR*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 56ll);
		if( *(struct $8FBSYMBOL**)((uint8*)TMP$97$2 + 16ll) == (struct $8FBSYMBOL*)0ull ) goto label$116;
		{
			struct $7ASTNODE* vr$14 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)TMP$97$2 + 16ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$15 = RTLERRORSETFUNCNAME( (struct $8FBSYMBOL*)0ull, vr$14 );
			ASTADD( vr$15 );
			*(struct $8FBSYMBOL**)((uint8*)TMP$97$2 + 16ll) = (struct $8FBSYMBOL*)0ull;
		}
		label$116:;
		label$115:;
		if( *(struct $8FBSYMBOL**)((uint8*)TMP$97$2 + 8ll) == (struct $8FBSYMBOL*)0ull ) goto label$118;
		{
			struct $7ASTNODE* vr$19 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)TMP$97$2 + 8ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$20 = RTLERRORSETMODNAME( (struct $8FBSYMBOL*)0ull, vr$19 );
			ASTADD( vr$20 );
			*(struct $8FBSYMBOL**)((uint8*)TMP$97$2 + 8ll) = (struct $8FBSYMBOL*)0ull;
		}
		label$118:;
		label$117:;
		if( *(struct $8FBSYMBOL**)TMP$97$2 == (struct $8FBSYMBOL*)0ull ) goto label$120;
		{
			struct $7ASTNODE* vr$24 = ASTNEWVAR( *(struct $8FBSYMBOL**)TMP$97$2, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			RTLERRORSETHANDLER( vr$24, 0ll );
			*(struct $8FBSYMBOL**)TMP$97$2 = (struct $8FBSYMBOL*)0ull;
		}
		label$120:;
		label$119:;
	}
	fb$result$1 = HEAD_NODE$1;
	label$112:;
	return fb$result$1;
}

static struct $7ASTNODE* HMAYBECALLRESULTCTOR( struct $7ASTNODE* HEAD_NODE$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$121:;
	struct $8FBSYMBOL* RES$1;
	struct $8FBSYMBOL* DEFCTOR$1;
	if( ((int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 2048ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 20ll)) == 0ll ) goto label$124;
	{
		fb$result$1 = HEAD_NODE$1;
		goto label$122;
	}
	label$124:;
	label$123:;
	if( ((int64)-((*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 96ll) & 2ll) == 0ll) & (int64)-((*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 208ll) + 96ll) & 1ll) != 0ll)) == 0ll ) goto label$126;
	{
		fb$result$1 = HEAD_NODE$1;
		goto label$122;
	}
	label$126:;
	label$125:;
	struct $8FBSYMBOL* vr$18 = SYMBGETCOMPDEFCTOR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
	DEFCTOR$1 = vr$18;
	if( DEFCTOR$1 != (struct $8FBSYMBOL*)0ull ) goto label$128;
	{
		int64 vr$19 = SYMBHASCTOR( SYM$1 );
		if( vr$19 == 0ll ) goto label$130;
		{
			ERRREPORT( 184ll, 0ll, (uint8*)0ull );
		}
		label$130:;
		label$129:;
		fb$result$1 = HEAD_NODE$1;
		goto label$122;
	}
	label$128:;
	label$127:;
	struct $8FBSYMBOL* vr$20 = SYMBGETPROCRESULT( SYM$1 );
	RES$1 = vr$20;
	if( RES$1 != (struct $8FBSYMBOL*)0ull ) goto label$132;
	{
		fb$result$1 = HEAD_NODE$1;
		goto label$122;
	}
	label$132:;
	label$131:;
	struct $7ASTNODE* vr$21 = ASTBUILDPROCRESULTVAR( SYM$1, RES$1 );
	struct $7ASTNODE* vr$23 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), vr$21 );
	struct $7ASTNODE* vr$24 = ASTADDAFTER( vr$23, HEAD_NODE$1 );
	fb$result$1 = vr$24;
	label$122:;
	return fb$result$1;
}

static struct $7ASTNODE* HCALLPROFILER( struct $7ASTNODE* HEAD_NODE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$133:;
	if( *(int64*)((uint8*)&ENV$ + 368ll) == 0ll ) goto label$136;
	{
		if( *(int64*)((uint8*)&ENV$ + 216ll) == 3ll ) goto label$138;
		{
			struct $7ASTNODE* vr$1 = RTLPROFILECALL_MCOUNT(  );
			struct $7ASTNODE* vr$2 = ASTADDAFTER( vr$1, HEAD_NODE$1 );
			HEAD_NODE$1 = vr$2;
		}
		label$138:;
		label$137:;
	}
	label$136:;
	label$135:;
	fb$result$1 = HEAD_NODE$1;
	label$134:;
	return fb$result$1;
}

static int64 HDECLVARSFORPROCPARAMS( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* TMP$98$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$181:;
	int64 I$1;
	struct $8FBSYMBOL* P$1;
	fb$result$1 = 0ll;
	if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 20ll ) goto label$184;
	{
		SYMBADDVARFORPROCRESULTPARAM( PROC$1 );
	}
	label$184:;
	label$183:;
	I$1 = 1ll;
	if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$185;
	TMP$98$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	goto label$361;
	label$185:;
	TMP$98$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$361:;
	P$1 = TMP$98$1;
	label$186:;
	if( P$1 == (struct $8FBSYMBOL*)0ull ) goto label$187;
	{
		struct $8FBSYMBOL* TMP$99$2;
		if( *(int64*)((uint8*)P$1 + 96ll) == 4ll ) goto label$189;
		{
			struct $8FBSYMBOL* vr$7 = SYMBADDVARFORPARAM( P$1 );
			*(struct $8FBSYMBOL**)((uint8*)P$1 + 104ll) = vr$7;
			if( *(struct $8FBSYMBOL**)((uint8*)P$1 + 104ll) != (struct $8FBSYMBOL*)0ull ) goto label$191;
			{
				ERRREPORTPARAM( PROC$1, I$1, (uint8*)0ull, 4ll );
				goto label$182;
			}
			label$191:;
			label$190:;
		}
		label$189:;
		label$188:;
		if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$192;
		TMP$99$2 = *(struct $8FBSYMBOL**)((uint8*)P$1 + 304ll);
		goto label$362;
		label$192:;
		TMP$99$2 = *(struct $8FBSYMBOL**)((uint8*)P$1 + 312ll);
		label$362:;
		P$1 = TMP$99$2;
		I$1 = I$1 + 1ll;
	}
	goto label$186;
	label$187:;
	fb$result$1 = -1ll;
	label$182:;
	return fb$result$1;
}

static void HLOADPROCRESULT( struct $8FBSYMBOL* PROC$1 )
{
	label$193:;
	struct $8FBSYMBOL* S$1;
	struct $7ASTNODE* N$1;
	struct $8FBSYMBOL* vr$0 = SYMBGETPROCRESULT( PROC$1 );
	S$1 = vr$0;
	if( ((int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 17ll) & (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 2048ll) == 0ll)) == 0ll ) goto label$196;
	{
		struct $7ASTNODE* vr$8 = ASTNEWVAR( S$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$9 = RTLSTRALLOCTMPRESULT( vr$8 );
		N$1 = vr$9;
		if( (((int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 1ll) | (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 2ll)) | (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 3ll)) == 0ll ) goto label$198;
		{
			struct $7ASTNODE* vr$16 = ASTNEWLOAD( N$1, *(int64*)((uint8*)PROC$1 + 56ll), -1ll );
			N$1 = vr$16;
		}
		label$198:;
		label$197:;
	}
	goto label$195;
	label$196:;
	{
		struct $7ASTNODE* vr$20 = ASTNEWVAR( S$1, 0ll, *(int64*)((uint8*)PROC$1 + 160ll), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168ll) );
		struct $7ASTNODE* vr$21 = ASTNEWLOAD( vr$20, *(int64*)((uint8*)PROC$1 + 160ll), -1ll );
		N$1 = vr$21;
	}
	label$195:;
	ASTADD( N$1 );
	label$194:;
}

static int64 HMODLEVELISEMPTY( struct $7ASTNODE* P$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$199:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* NXT$1;
	N$1 = *(struct $7ASTNODE**)((uint8*)P$1 + 112ll);
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$202;
	{
		fb$result$1 = -1ll;
		goto label$200;
	}
	label$202:;
	label$201:;
	if( *(int64*)N$1 == 21ll ) goto label$204;
	{
		fb$result$1 = 0ll;
		goto label$200;
	}
	label$204:;
	label$203:;
	N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$206;
	{
		fb$result$1 = -1ll;
		goto label$200;
	}
	label$206:;
	label$205:;
	if( *(int64*)N$1 == 21ll ) goto label$208;
	{
		fb$result$1 = 0ll;
		goto label$200;
	}
	label$208:;
	label$207:;
	N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$210;
	{
		fb$result$1 = -1ll;
		goto label$200;
	}
	label$210:;
	label$209:;
	fb$result$1 = 0ll;
	goto label$200;
	label$200:;
	return fb$result$1;
}

static struct $7ASTNODE* HCALLCTORLIST( int64 IS_CTOR$1, struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* FLD$1 )
{
	int64 TMP$100$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$211:;
	struct $8FBSYMBOL* CNT$1;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* ITER$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $7ASTNODE* FLDEXPR$1;
	struct $7ASTNODE* TREE$1;
	int64 DTYPE$1;
	int64 ELEMENTS$1;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$214;
	{
		DTYPE$1 = *(int64*)((uint8*)FLD$1 + 56ll) & 511ll;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll);
		ELEMENTS$1 = *(int64*)((uint8*)FLD$1 + 128ll);
	}
	goto label$213;
	label$214:;
	{
		DTYPE$1 = *(int64*)((uint8*)THIS_$1 + 56ll) & 511ll;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)THIS_$1 + 64ll);
		ELEMENTS$1 = *(int64*)((uint8*)THIS_$1 + 128ll);
	}
	label$213:;
	struct $8FBSYMBOL* vr$9 = SYMBADDTEMPVAR( 8ll, (struct $8FBSYMBOL*)0ull );
	CNT$1 = vr$9;
	struct $8FBSYMBOL* vr$10 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	LABEL$1 = vr$10;
	struct $8FBSYMBOL* vr$20 = SYMBADDTEMPVAR( (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll), SUBTYPE$1 );
	ITER$1 = vr$20;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$216;
	{
		if( IS_CTOR$1 == 0ll ) goto label$218;
		{
			struct $7ASTNODE* vr$21 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
			FLDEXPR$1 = vr$21;
		}
		goto label$217;
		label$218:;
		{
			struct $7ASTNODE* vr$25 = ASTBUILDVARFIELD( THIS_$1, FLD$1, (ELEMENTS$1 + -1ll) * *(int64*)((uint8*)FLD$1 + 80ll) );
			FLDEXPR$1 = vr$25;
		}
		label$217:;
	}
	goto label$215;
	label$216:;
	{
		if( IS_CTOR$1 == 0ll ) goto label$220;
		{
			struct $7ASTNODE* vr$26 = ASTBUILDVARFIELD( THIS_$1, (struct $8FBSYMBOL*)0ull, 0ll );
			FLDEXPR$1 = vr$26;
		}
		goto label$219;
		label$220:;
		{
			struct $7ASTNODE* vr$30 = ASTBUILDVARFIELD( THIS_$1, (struct $8FBSYMBOL*)0ull, (ELEMENTS$1 + -1ll) * *(int64*)((uint8*)SUBTYPE$1 + 80ll) );
			FLDEXPR$1 = vr$30;
		}
		label$219:;
	}
	label$215:;
	struct $7ASTNODE* vr$31 = ASTNEWADDROF( FLDEXPR$1 );
	struct $7ASTNODE* vr$32 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( ITER$1, vr$31, 64ll );
	TREE$1 = vr$32;
	struct $7ASTNODE* vr$33 = ASTBUILDFORBEGIN( TREE$1, CNT$1, LABEL$1, 0ll, -1ll );
	TREE$1 = vr$33;
	if( IS_CTOR$1 == 0ll ) goto label$222;
	{
		struct $7ASTNODE* vr$34 = ASTBUILDVARDEREF( ITER$1 );
		struct $7ASTNODE* vr$35 = ASTBUILDCTORCALL( SUBTYPE$1, vr$34 );
		struct $7ASTNODE* vr$36 = ASTNEWLINK( TREE$1, vr$35, 0ll );
		TREE$1 = vr$36;
	}
	goto label$221;
	label$222:;
	{
		struct $7ASTNODE* vr$37 = ASTBUILDVARDEREF( ITER$1 );
		struct $7ASTNODE* vr$38 = ASTBUILDDTORCALL( SUBTYPE$1, vr$37, 0ll );
		struct $7ASTNODE* vr$39 = ASTNEWLINK( TREE$1, vr$38, 0ll );
		TREE$1 = vr$39;
	}
	label$221:;
	if( IS_CTOR$1 == 0ll ) goto label$223;
	TMP$100$1 = 1ll;
	goto label$363;
	label$223:;
	TMP$100$1 = -1ll;
	label$363:;
	struct $7ASTNODE* vr$40 = ASTBUILDVARINC( ITER$1, TMP$100$1 );
	struct $7ASTNODE* vr$41 = ASTNEWLINK( TREE$1, vr$40, 0ll );
	TREE$1 = vr$41;
	struct $7ASTNODE* vr$42 = ASTNEWCONSTI( ELEMENTS$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$43 = ASTBUILDFOREND( TREE$1, CNT$1, LABEL$1, vr$42 );
	TREE$1 = vr$43;
	fb$result$1 = TREE$1;
	label$212:;
	return fb$result$1;
}

static struct $7ASTNODE* HCALLFIELDCTOR( struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* FLD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$224:;
	if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) == 0ll ) goto label$227;
	{
		goto label$225;
	}
	label$227:;
	label$226:;
	if( (*(int64*)((uint8*)FLD$1 + 24ll) & 2048ll) == 0ll ) goto label$229;
	{
		goto label$225;
	}
	label$229:;
	label$228:;
	int64 vr$5 = SYMBHASDEFCTOR( FLD$1 );
	if( vr$5 == 0ll ) goto label$231;
	{
		if( *(int64*)((uint8*)FLD$1 + 104ll) != 0ll ) goto label$233;
		{
			struct $7ASTNODE* vr$7 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
			struct $7ASTNODE* vr$9 = ASTBUILDCTORCALL( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll), vr$7 );
			fb$result$1 = vr$9;
		}
		goto label$232;
		label$233:;
		{
			struct $7ASTNODE* vr$10 = HCALLCTORLIST( -1ll, THIS_$1, FLD$1 );
			fb$result$1 = vr$10;
		}
		label$232:;
		goto label$225;
	}
	label$231:;
	label$230:;
	if( *(int64*)((uint8*)FLD$1 + 192ll) <= 0ll ) goto label$235;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 9ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$13 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
		struct $7ASTNODE* vr$14 = ASTNEWASSIGN( vr$13, vr$12, 64ll );
		fb$result$1 = vr$14;
	}
	goto label$234;
	label$235:;
	{
		int64 vr$15 = SYMBGETREALSIZE( FLD$1 );
		struct $7ASTNODE* vr$16 = ASTNEWCONSTI( vr$15, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$17 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
		struct $7ASTNODE* vr$18 = ASTNEWMEM( 107ll, vr$17, vr$16, 0ll );
		fb$result$1 = vr$18;
	}
	label$234:;
	label$225:;
	return fb$result$1;
}

static struct $7ASTNODE* HCLEARUNIONFIELDS( struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* BASE_FLD$1, struct $8FBSYMBOL** PFINALFIELD$1 )
{
	int64 TMP$101$1;
	int64 TMP$102$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$236:;
	struct $8FBSYMBOL* FLD$1;
	int64 BYTES$1;
	int64 LGT$1;
	int64 BASE_OFS$1;
	FLD$1 = BASE_FLD$1;
	BYTES$1 = 0ll;
	BASE_OFS$1 = *(int64*)((uint8*)BASE_FLD$1 + 88ll);
	label$238:;
	{
		int64 vr$2 = SYMBGETREALSIZE( FLD$1 );
		LGT$1 = (vr$2 + *(int64*)((uint8*)FLD$1 + 88ll)) - BASE_OFS$1;
		if( LGT$1 <= BYTES$1 ) goto label$242;
		{
			BYTES$1 = LGT$1;
		}
		label$242:;
		label$241:;
		FLD$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 312ll);
	}
	label$240:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$243;
	TMP$101$1 = (int64)-((struct $8FBSYMBOL*)(int64)-(*(int64*)FLD$1 == 12ll) != (struct $8FBSYMBOL*)0ull);
	goto label$364;
	label$243:;
	TMP$101$1 = 0ll;
	label$364:;
	if( TMP$101$1 == 0ll ) goto label$244;
	TMP$102$1 = (int64)-((*(int64*)((uint8*)FLD$1 + 24ll) & 16777216ll) != 0ll);
	goto label$365;
	label$244:;
	TMP$102$1 = 0ll;
	label$365:;
	if( TMP$102$1 != 0ll ) goto label$238;
	label$239:;
	*PFINALFIELD$1 = FLD$1;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( BYTES$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$15 = ASTBUILDVARFIELD( THIS_$1, BASE_FLD$1, 0ll );
	struct $7ASTNODE* vr$16 = ASTNEWMEM( 107ll, vr$15, vr$14, 0ll );
	fb$result$1 = vr$16;
	label$237:;
	return fb$result$1;
}

static struct $7ASTNODE* HINITDYNAMICARRAYFIELD( struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* FLD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$245:;
	struct $7ASTNODE* EXPRTB$1[8][2];
	__builtin_memset( (struct $7ASTNODE**)EXPRTB$1, 0, 128ll );
	struct $8FBARRAY2IP7ASTNODEE tmp$103$1;
	*(struct $7ASTNODE***)&tmp$103$1 = (struct $7ASTNODE**)EXPRTB$1;
	*(struct $7ASTNODE***)((uint8*)&tmp$103$1 + 8ll) = (struct $7ASTNODE**)EXPRTB$1;
	*(int64*)((uint8*)&tmp$103$1 + 16ll) = 128ll;
	*(int64*)((uint8*)&tmp$103$1 + 24ll) = 8ll;
	*(int64*)((uint8*)&tmp$103$1 + 32ll) = 2ll;
	*(int64*)((uint8*)&tmp$103$1 + 40ll) = 50ll;
	*(int64*)((uint8*)&tmp$103$1 + 48ll) = 8ll;
	*(int64*)((uint8*)&tmp$103$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$103$1 + 64ll) = 7ll;
	*(int64*)((uint8*)&tmp$103$1 + 72ll) = 2ll;
	*(int64*)((uint8*)&tmp$103$1 + 80ll) = 0ll;
	*(int64*)((uint8*)&tmp$103$1 + 88ll) = 1ll;
	struct $7ASTNODE* BOUNDSTYPEINI$1;
	struct $7ASTNODE* N$1;
	int64 DIMENSIONS$1;
	struct $7ASTNODE* vr$5 = ASTTYPEINICLONE( *(struct $7ASTNODE**)((uint8*)FLD$1 + 96ll) );
	BOUNDSTYPEINI$1 = vr$5;
	DIMENSIONS$1 = 0ll;
	N$1 = *(struct $7ASTNODE**)((uint8*)BOUNDSTYPEINI$1 + 112ll);
	label$247:;
	{
		*(struct $7ASTNODE**)((int64)(struct $7ASTNODE**)EXPRTB$1 + (DIMENSIONS$1 << (4ll & 63ll))) = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		*(struct $7ASTNODE**)(((int64)(struct $7ASTNODE**)EXPRTB$1 + (DIMENSIONS$1 << (4ll & 63ll))) + 8ll) = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		DIMENSIONS$1 = DIMENSIONS$1 + 1ll;
	}
	label$249:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$247;
	label$248:;
	ASTDELTREE( BOUNDSTYPEINI$1 );
	struct $7ASTNODE* vr$20 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
	struct $7ASTNODE* vr$21 = RTLARRAYREDIM( vr$20, DIMENSIONS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$103$1, 0ll, (int64)-((*(int64*)((uint8*)FLD$1 + 24ll) & 2048ll) == 0ll) );
	fb$result$1 = vr$21;
	label$246:;
	return fb$result$1;
}

static struct $7ASTNODE* HCALLFIELDCTORS( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$250:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* THIS_$1;
	struct $7ASTNODE* TREE$1;
	struct $7ASTNODE* BOUNDSTYPEINI$1;
	int64 SKIP$1;
	TREE$1 = (struct $7ASTNODE*)0ull;
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll);
	FLD$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 104ll);
	label$252:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$253;
	{
		if( *(int64*)FLD$1 != 12ll ) goto label$255;
		{
			if( FLD$1 == *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll) ) goto label$257;
			{
				if( (*(int64*)((uint8*)FLD$1 + 24ll) & 16777216ll) == 0ll ) goto label$259;
				{
					struct $7ASTNODE* vr$9 = HCLEARUNIONFIELDS( THIS_$1, FLD$1, &FLD$1 );
					struct $7ASTNODE* vr$10 = ASTNEWLINK( TREE$1, vr$9, 0ll );
					TREE$1 = vr$10;
					goto label$252;
				}
				goto label$258;
				label$259:;
				{
					if( *(struct $7ASTNODE**)((uint8*)FLD$1 + 96ll) != (struct $7ASTNODE*)0ull ) goto label$261;
					{
						struct $7ASTNODE* vr$12 = HCALLFIELDCTOR( THIS_$1, FLD$1 );
						struct $7ASTNODE* vr$13 = ASTNEWLINK( TREE$1, vr$12, 0ll );
						TREE$1 = vr$13;
					}
					goto label$260;
					label$261:;
					if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) == 0ll ) goto label$262;
					{
						struct $7ASTNODE* vr$16 = HINITDYNAMICARRAYFIELD( THIS_$1, FLD$1 );
						struct $7ASTNODE* vr$17 = ASTNEWLINK( TREE$1, vr$16, 0ll );
						TREE$1 = vr$17;
					}
					goto label$260;
					label$262:;
					{
						struct $7ASTNODE* vr$19 = ASTTYPEINICLONE( *(struct $7ASTNODE**)((uint8*)FLD$1 + 96ll) );
						struct $7ASTNODE* vr$20 = ASTBUILDVARFIELD( THIS_$1, (struct $8FBSYMBOL*)0ull, 0ll );
						struct $7ASTNODE* vr$21 = _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( vr$20, vr$19, 0ll, 64ll );
						struct $7ASTNODE* vr$22 = ASTNEWLINK( TREE$1, vr$21, 0ll );
						TREE$1 = vr$22;
					}
					label$260:;
				}
				label$258:;
			}
			label$257:;
			label$256:;
		}
		label$255:;
		label$254:;
		FLD$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 312ll);
	}
	goto label$252;
	label$253:;
	fb$result$1 = TREE$1;
	label$251:;
	return fb$result$1;
}

static struct $7ASTNODE* HCALLBASECTOR( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$263:;
	struct $7ASTNODE* INITREE$1;
	struct $8FBSYMBOL* BASE_$1;
	struct $8FBSYMBOL* THIS_$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* DEFCTOR$1;
	BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll);
	if( BASE_$1 != (struct $8FBSYMBOL*)0ull ) goto label$266;
	{
		goto label$264;
	}
	label$266:;
	label$265:;
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll);
	INITREE$1 = *(struct $7ASTNODE**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 128ll);
	if( INITREE$1 == (struct $7ASTNODE*)0ull ) goto label$268;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 128ll) = (struct $7ASTNODE*)0ull;
		struct $7ASTNODE* vr$8 = ASTBUILDVARFIELD( THIS_$1, (struct $8FBSYMBOL*)0ull, 0ll );
		struct $7ASTNODE* vr$9 = _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll( vr$8, INITREE$1, 0ll, 64ll );
		fb$result$1 = vr$9;
		goto label$264;
	}
	label$268:;
	label$267:;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 64ll);
	struct $8FBSYMBOL* vr$11 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
	DEFCTOR$1 = vr$11;
	if( DEFCTOR$1 == (struct $8FBSYMBOL*)0ull ) goto label$270;
	{
		int64 vr$12 = SYMBCHECKACCESS( DEFCTOR$1 );
		if( vr$12 != 0ll ) goto label$272;
		{
			ERRREPORT( 207ll, 0ll, (uint8*)0ull );
		}
		label$272:;
		label$271:;
	}
	goto label$269;
	label$270:;
	struct $8FBSYMBOL* vr$13 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
	if( vr$13 == (struct $8FBSYMBOL*)0ull ) goto label$273;
	{
		ERRREPORT( 185ll, 0ll, (uint8*)0ull );
	}
	label$273:;
	label$269:;
	struct $7ASTNODE* vr$14 = HCALLFIELDCTOR( THIS_$1, BASE_$1 );
	fb$result$1 = vr$14;
	label$264:;
	return fb$result$1;
}

static struct $7ASTNODE* HINITVPTR( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$274:;
	if( (*(int64*)((uint8*)PARENT$1 + 24ll) & 4194304ll) != 0ll ) goto label$277;
	{
		goto label$275;
	}
	label$277:;
	label$276:;
	struct $8FBSYMBOL* THIS_$1;
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll);
	struct $7ASTNODE* vr$8 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 240ll) + 296ll), *(int64*)((uint8*)&ENV$ + 592ll) << (1ll & 63ll), 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$9 = ASTNEWADDROF( vr$8 );
	struct $7ASTNODE* vr$10 = ASTNEWCONV( 32ll, (struct $8FBSYMBOL*)0ull, vr$9, 0ll, (int64*)0ull );
	struct $8FBSYMBOL* vr$11 = SYMBUDTGETFIRSTFIELD( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199240ll) );
	struct $7ASTNODE* vr$12 = ASTBUILDVARFIELD( THIS_$1, vr$11, 0ll );
	struct $7ASTNODE* vr$13 = ASTNEWASSIGN( vr$12, vr$10, 64ll );
	fb$result$1 = vr$13;
	label$275:;
	return fb$result$1;
}

static void HCALLCTORS( struct $7ASTNODE* N$1, struct $8FBSYMBOL* SYM$1 )
{
	label$278:;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll);
	struct $7ASTNODE* vr$2 = HCALLBASECTOR( PARENT$1, SYM$1 );
	TREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = HCALLFIELDCTORS( PARENT$1, SYM$1 );
	struct $7ASTNODE* vr$4 = ASTNEWLINK( TREE$1, vr$3, 0ll );
	TREE$1 = vr$4;
	struct $7ASTNODE* vr$5 = HINITVPTR( PARENT$1, SYM$1 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( TREE$1, vr$5, 0ll );
	TREE$1 = vr$6;
	struct $7ASTNODE* vr$7 = ASTFINDFIRSTCODE( N$1 );
	N$1 = vr$7;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$281;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 128ll);
	}
	label$281:;
	label$280:;
	ASTADDAFTER( TREE$1, N$1 );
	label$279:;
}

static void HCALLFIELDDTOR( struct $8FBSYMBOL* THIS_$1, struct $8FBSYMBOL* FLD$1 )
{
	label$282:;
	if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) == 0ll ) goto label$285;
	{
		struct $7ASTNODE* vr$2 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
		struct $7ASTNODE* vr$3 = RTLARRAYERASE( vr$2, -1ll, 0ll );
		ASTADD( vr$3 );
	}
	goto label$284;
	label$285:;
	if( *(int64*)((uint8*)FLD$1 + 104ll) != 0ll ) goto label$286;
	{
		if( (*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) != 17ll ) goto label$288;
		{
			struct $7ASTNODE* vr$7 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
			struct $7ASTNODE* vr$8 = RTLSTRDELETE( vr$7 );
			ASTADD( vr$8 );
		}
		goto label$287;
		label$288:;
		int64 vr$9 = SYMBHASDTOR( FLD$1 );
		if( vr$9 == 0ll ) goto label$289;
		{
			struct $7ASTNODE* vr$10 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
			struct $7ASTNODE* vr$12 = ASTBUILDDTORCALL( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll), vr$10, 0ll );
			ASTADD( vr$12 );
		}
		label$289:;
		label$287:;
	}
	goto label$284;
	label$286:;
	{
		if( (*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) != 17ll ) goto label$291;
		{
			struct $7ASTNODE* vr$15 = ASTBUILDVARFIELD( THIS_$1, FLD$1, 0ll );
			struct $7ASTNODE* vr$16 = RTLARRAYERASE( vr$15, 0ll, 0ll );
			ASTADD( vr$16 );
		}
		goto label$290;
		label$291:;
		int64 vr$17 = SYMBHASDTOR( FLD$1 );
		if( vr$17 == 0ll ) goto label$292;
		{
			struct $7ASTNODE* vr$18 = HCALLCTORLIST( 0ll, THIS_$1, FLD$1 );
			ASTADD( vr$18 );
		}
		label$292:;
		label$290:;
	}
	label$284:;
	label$283:;
}

static void HCALLFIELDDTORS( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	label$293:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* THIS_$1;
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll);
	FLD$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 112ll);
	label$295:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$296;
	{
		if( *(int64*)FLD$1 != 12ll ) goto label$298;
		{
			if( (((int64)-((*(int64*)((uint8*)FLD$1 + 8ll) & 8192ll) == 0ll) & (int64)-(FLD$1 != *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll))) & (int64)-((*(int64*)((uint8*)FLD$1 + 8ll) & 262144ll) == 0ll)) == 0ll ) goto label$300;
			{
				HCALLFIELDDTOR( THIS_$1, FLD$1 );
			}
			label$300:;
			label$299:;
		}
		label$298:;
		label$297:;
		FLD$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 304ll);
	}
	goto label$295;
	label$296:;
	label$294:;
}

static void HCALLDELETEDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$301:;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* DTOR1$1;
	struct $8FBSYMBOL* THIS_$1;
	struct $7ASTNODE* THISPTR$1;
	struct $7ASTNODE* TREE$1;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 248ll);
	struct $8FBSYMBOL* vr$2 = SYMBGETCOMPDTOR1( PARENT$1 );
	DTOR1$1 = vr$2;
	if( DTOR1$1 != (struct $8FBSYMBOL*)0ull ) goto label$304;
	{
		goto label$302;
	}
	label$304:;
	label$303:;
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll);
	struct $7ASTNODE* vr$5 = ASTBUILDVARFIELD( THIS_$1, (struct $8FBSYMBOL*)0ull, 0ll );
	struct $7ASTNODE* vr$6 = ASTNEWADDROF( vr$5 );
	THISPTR$1 = vr$6;
	struct $7ASTNODE* vr$7 = ASTBUILDDELETEOP( 80ll, THISPTR$1 );
	TREE$1 = vr$7;
	ASTADD( TREE$1 );
	label$302:;
}

static void HCALLBASEDTOR( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	label$305:;
	struct $8FBSYMBOL* BASE_$1;
	struct $8FBSYMBOL* DTOR$1;
	struct $8FBSYMBOL* THIS_$1;
	BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 176ll);
	if( BASE_$1 != (struct $8FBSYMBOL*)0ull ) goto label$308;
	{
		goto label$306;
	}
	label$308:;
	label$307:;
	struct $8FBSYMBOL* vr$2 = SYMBGETCOMPDTOR1( *(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 64ll) );
	DTOR$1 = vr$2;
	if( DTOR$1 != (struct $8FBSYMBOL*)0ull ) goto label$310;
	{
		goto label$306;
	}
	label$310:;
	label$309:;
	int64 vr$3 = SYMBCHECKACCESS( DTOR$1 );
	if( vr$3 != 0ll ) goto label$312;
	{
		ERRREPORT( 208ll, 0ll, (uint8*)0ull );
	}
	label$312:;
	label$311:;
	if( (*(int64*)((uint8*)DTOR$1 + 16ll) & 512ll) == 0ll ) goto label$314;
	{
		goto label$306;
	}
	label$314:;
	label$313:;
	THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll) + 104ll);
	struct $7ASTNODE* vr$8 = ASTBUILDVARFIELD( THIS_$1, BASE_$1, 0ll );
	struct $7ASTNODE* vr$10 = ASTBUILDDTORCALL( *(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 64ll), vr$8, -1ll );
	ASTADD( vr$10 );
	label$306:;
}

static void HCALLDTORS( struct $8FBSYMBOL* PROC$1 )
{
	label$315:;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 248ll);
	HCALLFIELDDTORS( PARENT$1, PROC$1 );
	HCALLBASEDTOR( PARENT$1, PROC$1 );
	label$316:;
}

static void HCALLSTATICCTOR( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* INITREE$1 )
{
	label$317:;
	struct $7ASTNODE* vr$0 = ASTTYPEINICLONE( INITREE$1 );
	struct $7ASTNODE* vr$1 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( SYM$1, vr$0, 0ll, 64ll );
	ASTADD( vr$1 );
	ASTTYPEINIDELETE( INITREE$1 );
	label$318:;
}

static void HCALLSTATICDTOR( struct $8FBSYMBOL* SYM$1 )
{
	label$319:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) == 0ll ) goto label$322;
	{
		struct $7ASTNODE* vr$2 = ASTBUILDVARFIELD( SYM$1, (struct $8FBSYMBOL*)0ull, 0ll );
		struct $7ASTNODE* vr$3 = RTLARRAYERASE( vr$2, -1ll, 0ll );
		ASTADD( vr$3 );
	}
	goto label$321;
	label$322:;
	{
		if( *(int64*)((uint8*)SYM$1 + 104ll) != 0ll ) goto label$324;
		{
			struct $7ASTNODE* vr$5 = ASTBUILDVARFIELD( SYM$1, (struct $8FBSYMBOL*)0ull, 0ll );
			struct $7ASTNODE* vr$7 = ASTBUILDDTORCALL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), vr$5, 0ll );
			ASTADD( vr$7 );
		}
		goto label$323;
		label$324:;
		{
			struct $7ASTNODE* vr$8 = HCALLCTORLIST( 0ll, SYM$1, (struct $8FBSYMBOL*)0ull );
			ASTADD( vr$8 );
		}
		label$323:;
	}
	label$321:;
	label$320:;
}

static void HGENSTATICINSTANCESDTORS( struct $8FBSYMBOL* PROC$1 )
{
	label$325:;
	struct $5TLIST* DTORLIST$1;
	struct $14FB_DTORWRAPPER* WRAP$1;
	struct $7ASTNODE* N$1;
	DTORLIST$1 = *(struct $5TLIST**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 88ll);
	if( DTORLIST$1 != (struct $5TLIST*)0ull ) goto label$328;
	{
		goto label$326;
	}
	label$328:;
	label$327:;
	void* vr$2 = LISTGETHEAD( DTORLIST$1 );
	WRAP$1 = (struct $14FB_DTORWRAPPER*)vr$2;
	label$329:;
	if( WRAP$1 == (struct $14FB_DTORWRAPPER*)0ull ) goto label$330;
	{
		ASTPROCBEGIN( *(struct $8FBSYMBOL**)WRAP$1, 0ll );
		N$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 80ll);
		HCALLSTATICDTOR( *(struct $8FBSYMBOL**)((uint8*)WRAP$1 + 8ll) );
		ASTPROCEND( 0ll );
		HPROCFLUSH( N$1, -1ll );
		void* vr$5 = LISTGETNEXT( (void*)WRAP$1 );
		WRAP$1 = (struct $14FB_DTORWRAPPER*)vr$5;
	}
	goto label$329;
	label$330:;
	LISTEND( DTORLIST$1 );
	free( *(void**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 88ll) );
	*(struct $5TLIST**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 88ll) = (struct $5TLIST*)0ull;
	label$326:;
}

static void HGLOBCTORBEGIN( int64 IS_CTOR$1 )
{
	uint8* TMP$104$1;
	label$341:;
	struct $8FBSYMBOL* PROC$1;
	if( IS_CTOR$1 == 0ll ) goto label$343;
	TMP$104$1 = (uint8*)"_GLOBAL__I";
	goto label$366;
	label$343:;
	TMP$104$1 = (uint8*)"_GLOBAL__D";
	label$366:;
	uint8* vr$0 = SYMBUNIQUELABEL(  );
	struct $8FBSYMBOL* vr$1 = SYMBPREADDPROC( (uint8*)0ull );
	struct $8FBSYMBOL* vr$2 = SYMBADDPROC( vr$1, (uint8*)vr$0, (uint8*)TMP$104$1, 0ll, (struct $8FBSYMBOL*)0ull, 64ll, 0ll, 3ll, 4ll );
	PROC$1 = vr$2;
	if( IS_CTOR$1 == 0ll ) goto label$345;
	{
		SYMBADDGLOBALCTOR( PROC$1 );
	}
	goto label$344;
	label$345:;
	{
		SYMBADDGLOBALDTOR( PROC$1 );
	}
	label$344:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = *(int64*)((uint8*)PROC$1 + 24ll) | 2ll;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = *(int64*)((uint8*)PROC$1 + 24ll) | 128ll;
	ASTPROCBEGIN( PROC$1, 0ll );
	label$342:;
}

static void HGENGLOBALINSTANCESCTOR( void )
{
	label$346:;
	struct $15FB_GLOBINSTANCE* INST$1;
	struct $8FBSYMBOL* SYM$1;
	if( *(int64*)((uint8*)&AST$ + 216ll) <= 0ll ) goto label$349;
	{
		HGLOBCTORBEGIN( -1ll );
		void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&AST$ + 152ll) );
		INST$1 = (struct $15FB_GLOBINSTANCE*)vr$1;
		label$350:;
		if( INST$1 == (struct $15FB_GLOBINSTANCE*)0ull ) goto label$351;
		{
			if( *(struct $7ASTNODE**)((uint8*)INST$1 + 8ll) == (struct $7ASTNODE*)0ull ) goto label$353;
			{
				HCALLSTATICCTOR( *(struct $8FBSYMBOL**)INST$1, *(struct $7ASTNODE**)((uint8*)INST$1 + 8ll) );
				*(struct $7ASTNODE**)((uint8*)INST$1 + 8ll) = (struct $7ASTNODE*)0ull;
			}
			label$353:;
			label$352:;
			void* vr$6 = LISTGETNEXT( (void*)INST$1 );
			INST$1 = (struct $15FB_GLOBINSTANCE*)vr$6;
		}
		goto label$350;
		label$351:;
		ASTPROCEND( 0ll );
	}
	label$349:;
	label$348:;
	if( *(int64*)((uint8*)&AST$ + 224ll) <= 0ll ) goto label$355;
	{
		HGLOBCTORBEGIN( 0ll );
		void* vr$8 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&AST$ + 152ll) );
		INST$1 = (struct $15FB_GLOBINSTANCE*)vr$8;
		label$356:;
		if( INST$1 == (struct $15FB_GLOBINSTANCE*)0ull ) goto label$357;
		{
			if( *(int64*)((uint8*)INST$1 + 16ll) == 0ll ) goto label$359;
			{
				HCALLSTATICDTOR( *(struct $8FBSYMBOL**)INST$1 );
			}
			label$359:;
			label$358:;
			void* vr$11 = LISTGETPREV( (void*)INST$1 );
			INST$1 = (struct $15FB_GLOBINSTANCE*)vr$11;
		}
		goto label$356;
		label$357:;
		ASTPROCEND( 0ll );
	}
	label$355:;
	label$354:;
	label$347:;
}
