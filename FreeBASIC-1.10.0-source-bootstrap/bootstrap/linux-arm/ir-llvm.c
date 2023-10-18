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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
struct $17IRLLVMVARINISCOPE {
	int8 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $17IRLLVMVARINISCOPE ) == 1 );
struct $13IRLLVMCONTEXT {
	int32 INDENT;
	int32 LINENUM;
	FBSTRING VARINI;
	int32 VARINISCOPELEVEL;
	struct $17IRLLVMVARINISCOPE VARINISCOPES[128];
	FBSTRING CTORS;
	FBSTRING DTORS;
	int32 CTORCOUNT;
	int32 DTORCOUNT;
	FBSTRING FBCTINF;
	int32 FBCTINF_LEN;
	int32 SECTION;
	FBSTRING HEAD_TXT;
	FBSTRING BODY_TXT;
	FBSTRING FOOT_TXT;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRLLVMCONTEXT ) == 240 );
typedef int32 $6IR_OPT;
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
struct $7BUILTIN {
	uint8* DECL;
	int32 USED;
};
__FB_STATIC_ASSERT( sizeof( struct $7BUILTIN ) == 8 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef int32 $14IR_OPTIONVALUE;
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
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $9IRCALLARG {
	struct $8FBSYMBOL* PARAM;
	struct $6IRVREG* VR;
	int32 LEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRCALLARG ) == 12 );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
int64 __divdi3( int64, int64 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_DoubleToStr( double );
FBSTRING* fb_StrFill2( int32, FBSTRING* );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
static void fb_ctor__irzllvm( void ) __attribute__(( constructor ));
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
int32 FBGETOPTION( int32 );
int32 FBIS64BIT( void );
int32 FBGETCPUFAMILY( void );
FBSTRING* ASTDUMPOPTOSTR( $6AST_OP );
void _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBISDATADESC( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int32, tmp$41 );
int32 HFILEEXISTS( uint8* );
uint8* HUNESCAPE( uint8*, int32* );
uint32* HUNESCAPEW( uint32*, int32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
int32 HCHARNEEDSESCAPING( int32, int32 );
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
static void _ZN13IRLLVMCONTEXTC1Ev( struct $13IRLLVMCONTEXT* );
static void _ZN13IRLLVMCONTEXTaSERKS_( struct $13IRLLVMCONTEXT*, struct $13IRLLVMCONTEXT* );
static void _ZN13IRLLVMCONTEXTD1Ev( struct $13IRLLVMCONTEXT* );
static FBSTRING* HEMITTYPE( int32, struct $8FBSYMBOL* );
static void HEMITSTRUCT( struct $8FBSYMBOL* );
static void _EMITDBG( int32, struct $8FBSYMBOL*, int32, uint8* );
static FBSTRING* HVREGTOSTR( struct $6IRVREG* );
static void HEMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void HEMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void HEMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _INIT( void );
static void _END( void );
static void HWRITELINE( FBSTRING* );
static void HINTERNALCOMMAND( FBSTRING* );
static void HASTCOMMAND( FBSTRING* );
static void HWRITELABEL( uint8* );
static FBSTRING* HSYMNAME( struct $8FBSYMBOL* );
static FBSTRING* VREGPRETTY( struct $6IRVREG* );
static FBSTRING* HEMITPARAMNAME( struct $8FBSYMBOL* );
static FBSTRING* HEMITPROCCALLCONV( struct $8FBSYMBOL* );
static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL*, int32, int32 );
static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* );
static void HEMITUDT( struct $8FBSYMBOL* );
static void HBUILDSTRLIT( FBSTRING*, int32, uint8*, int32 );
static void HBUILDWSTRLIT( FBSTRING*, int32, uint32*, int32 );
static FBSTRING* HEMITSTRLITTYPE( int32 );
static FBSTRING* HEMITSYMTYPE( struct $8FBSYMBOL* );
static void HEMITVARIABLE( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* );
static void HEMITCTORDTORARRAYELEMENT( struct $8FBSYMBOL*, FBSTRING* );
static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* );
static int32 _EMITBEGIN( void );
static void _EMITEND( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int32 _SUPPORTSOP( int32, int32 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static void HADDOFFSET( struct $6IRVREG*, int32, struct $8FBSYMBOL*, int64 );
static void HPREPAREADDRESS( struct $6IRVREG* );
static void HLOADVREG( struct $6IRVREG* );
static FBSTRING* HEMITINT( int32, struct $8FBSYMBOL*, int32 );
static FBSTRING* HEMITLONG( int64 );
static FBSTRING* HEMITFLOAT( double );
static int32 HISFIXLENSTR( struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static uint8* HGETBOPCODE( int32, int32 );
static void HLOADOPERANDSANDWRITEBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static void _EMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void HBUILTINUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static uint8* HGETCONVOPCODE( int32, int32 );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( uint8*, struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALL( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int32, struct $8FBSYMBOL* );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITMACRO( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _EMITCOMMENT( uint8* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void HVARINIELEMENTTYPE( struct $8FBSYMBOL* );
static void HVARINISEPARATOR( void );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
static void HMAYBEADDCONV( FBSTRING*, int32, struct $8FBSYMBOL*, FBSTRING*, int32, struct $8FBSYMBOL*, FBSTRING* );
static void _EMITVARINIOFS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _EMITVARINISTR( int64, uint8*, int64 );
static void _EMITVARINIWSTR( int64, uint32*, int64 );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int32 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFSTRING( uint8* );
static void _EMITFBCTINFEND( void );
static void _EMITPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITPROCEND( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
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
extern struct $7IR_VTBL IRLLVM_VTBL$;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 276 );
extern struct $5IRCTX IR$;
extern struct $10AST_OPINFO AST_OPTB$[121];
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
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
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
struct $11IRHLCONTEXT {
	int32 REGCOUNT;
	struct $6TFLIST VREGS;
	struct $5TLIST CALLARGS;
};
__FB_STATIC_ASSERT( sizeof( struct $11IRHLCONTEXT ) == 92 );
extern struct $11IRHLCONTEXT IRHL$;
static struct $7BUILTIN BUILTINS$[18] = { { (uint8*)"declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind" }, { (uint8*)"declare void @llvm.memmove.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1) nounwind" }, { (uint8*)"declare float  @llvm.sin.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.sin.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.cos.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.cos.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.exp.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.exp.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.log.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.log.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.sqrt.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.sqrt.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.floor.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.floor.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.fabs.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.fabs.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.nearbyint.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.nearbyint.f64(double) nounwind" } };
static struct $13IRLLVMCONTEXT CTX$;
static uint8* DTYPENAME$[26] = { (uint8*)"i8", (uint8*)"i8", (uint8*)"i8", (uint8*)"i8", (uint8*)"i8", (uint8*)"i16", (uint8*)"i16", (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)"i32", (uint8*)"i32", (uint8*)"i64", (uint8*)"i64", (uint8*)"float", (uint8*)"double", (uint8*)"%FBSTRING", (uint8*)"i8", (uint8*)"%struct.va_list", (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)"i8", (uint8*)0u };
struct $7IR_VTBL IRLLVM_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$43)0u, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)0u, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$51)0u, (tmp$51)&_EMITADDR, (tmp$53)&_EMITCALL, (tmp$54)&_EMITCALLPTR, (tmp$45)0u, (tmp$52)&_EMITJUMPPTR, (tmp$55)&_EMITBRANCH, (tmp$56)&_EMITJMPTB, (tmp$57)&_EMITMEM, (tmp$58)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$59)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$60)&_EMITVARINII, (tmp$61)&_EMITVARINIF, (tmp$62)&_EMITVARINIOFS, (tmp$63)&_EMITVARINISTR, (tmp$64)&_EMITVARINIWSTR, (tmp$65)&_EMITVARINIPAD, (tmp$66)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$67)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$68)&IRHLALLOCVREG, (tmp$69)&IRHLALLOCVRIMM, (tmp$70)&IRHLALLOCVRIMMF, (tmp$71)&IRHLALLOCVRVAR, (tmp$72)&IRHLALLOCVRIDX, (tmp$73)&IRHLALLOCVRPTR, (tmp$71)&IRHLALLOCVROFS, (tmp$74)&_SETVREGDATATYPE, (tmp$75)0u, (tmp$51)0u, (tmp$44)0u, (tmp$45)0u };

__attribute__(( constructor )) static void fb_ctor__irzllvm( void )
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

static void _ZN13IRLLVMCONTEXTC1Ev( struct $13IRLLVMCONTEXT* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 20), 0, 4 );
	__builtin_memset( (struct $17IRLLVMVARINISCOPE*)((uint8*)THIS$1 + 24), 0, 128 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 152), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 164), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 176), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 180), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 184), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 196), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 200), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 204), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 216), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 228), 0, 12 );
	label$10:;
	label$11:;
}

static void _ZN13IRLLVMCONTEXTaSERKS_( struct $13IRLLVMCONTEXT* THIS$1, struct $13IRLLVMCONTEXT* __FB_RHS__$1 )
{
	int32 TMP$113$1;
	struct $17IRLLVMVARINISCOPE* TMP$114$1;
	struct $17IRLLVMVARINISCOPE* TMP$115$1;
	label$12:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 20) = *(int32*)((uint8*)__FB_RHS__$1 + 20);
	TMP$114$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)THIS$1 + 24);
	TMP$115$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)__FB_RHS__$1 + 24);
	TMP$113$1 = 0;
	label$14:;
	__builtin_memcpy( TMP$114$1, TMP$115$1, 1 );
	TMP$114$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)TMP$114$1 + 1);
	TMP$115$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)TMP$115$1 + 1);
	TMP$113$1 = TMP$113$1 + 1;
	if( TMP$113$1 != 128 ) goto label$14;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 152), -1, (void*)((uint8*)__FB_RHS__$1 + 152), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 164), -1, (void*)((uint8*)__FB_RHS__$1 + 164), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 176) = *(int32*)((uint8*)__FB_RHS__$1 + 176);
	*(int32*)((uint8*)THIS$1 + 180) = *(int32*)((uint8*)__FB_RHS__$1 + 180);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 184), -1, (void*)((uint8*)__FB_RHS__$1 + 184), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 196) = *(int32*)((uint8*)__FB_RHS__$1 + 196);
	*(int32*)((uint8*)THIS$1 + 200) = *(int32*)((uint8*)__FB_RHS__$1 + 200);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 204), -1, (void*)((uint8*)__FB_RHS__$1 + 204), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 216), -1, (void*)((uint8*)__FB_RHS__$1 + 216), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 228), -1, (void*)((uint8*)__FB_RHS__$1 + 228), -1, 0 );
	label$13:;
}

static void _ZN13IRLLVMCONTEXTD1Ev( struct $13IRLLVMCONTEXT* THIS$1 )
{
	label$17:;
	label$18:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 228) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 216) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 204) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 184) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 164) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 152) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _INIT( void )
{
	label$19:;
	IRHLINIT(  );
	*($6IR_OPT*)((uint8*)&IR$ + 272) = *(int32*)((uint8*)&IR$ + 272) | 131074;
	int32 vr$1 = FBIS64BIT(  );
	if( vr$1 == 0 ) goto label$22;
	{
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 32) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 52);
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 36) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 56);
	}
	goto label$21;
	label$22:;
	{
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 32) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 44);
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 36) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 48);
	}
	label$21:;
	label$20:;
}

static void _END( void )
{
	label$23:;
	IRHLEND(  );
	label$24:;
}

static void HWRITELINE( FBSTRING* LN$1 )
{
	int32 TMP$125$1;
	label$25:;
	if( *(int32*)&CTX$ <= 0 ) goto label$27;
	int32 vr$0 = fb_StrLen( (void*)LN$1, -1 );
	TMP$125$1 = -(vr$0 > 0);
	goto label$736;
	label$27:;
	TMP$125$1 = 0;
	label$736:;
	if( TMP$125$1 == 0 ) goto label$29;
	{
		FBSTRING TMP$127$2;
		FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"\x09", 1 );
		FBSTRING* vr$3 = fb_StrFill2( *(int32*)&CTX$, (FBSTRING*)vr$2 );
		__builtin_memset( &TMP$127$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$127$2, (void*)vr$3, -1, (void*)LN$1, -1 );
		fb_StrAssign( (void*)LN$1, -1, (void*)vr$6, -1, 0 );
	}
	label$29:;
	label$28:;
	fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x0A", 2, 0 );
	{
		uint32 TMP$129$2;
		TMP$129$2 = *(uint32*)((uint8*)&CTX$ + 200);
		goto label$31;
		label$32:;
		{
			FBSTRING TMP$130$3;
			__builtin_memset( &TMP$130$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$130$3, (void*)((uint8*)&CTX$ + 204), -1, (void*)LN$1, -1 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 204), -1, (void*)vr$10, -1, 0 );
		}
		goto label$30;
		label$33:;
		{
			FBSTRING TMP$131$3;
			__builtin_memset( &TMP$131$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$131$3, (void*)((uint8*)&CTX$ + 216), -1, (void*)LN$1, -1 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 216), -1, (void*)vr$15, -1, 0 );
		}
		goto label$30;
		label$34:;
		{
			FBSTRING TMP$132$3;
			__builtin_memset( &TMP$132$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$132$3, (void*)((uint8*)&CTX$ + 228), -1, (void*)LN$1, -1 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 228), -1, (void*)vr$20, -1, 0 );
		}
		goto label$30;
		label$31:;
		static const void* tmp$581[3] = {
			&&label$32,
			&&label$33,
			&&label$34,
		};
		if( TMP$129$2 > 2u ) goto label$30;
		goto *tmp$581[TMP$129$2 - 0u];
		label$30:;
	}
	label$26:;
}

static void HINTERNALCOMMAND( FBSTRING* MESSAGE$1 )
{
	FBSTRING TMP$134$1;
	FBSTRING TMP$135$1;
	label$35:;
	__builtin_memset( &TMP$135$1, 0, 12 );
	__builtin_memset( &TMP$134$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$134$1, (void*)"; ", 3, (void*)MESSAGE$1, -1 );
	fb_StrAssign( (void*)&TMP$135$1, -1, (void*)vr$3, -1, 0 );
	HWRITELINE( &TMP$135$1 );
	fb_StrDelete( (FBSTRING*)&TMP$135$1 );
	label$36:;
}

static void HASTCOMMAND( FBSTRING* MESSAGE$1 )
{
	FBSTRING TMP$136$1;
	label$37:;
	__builtin_memset( &TMP$136$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$136$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$136$1 );
	fb_StrDelete( (FBSTRING*)&TMP$136$1 );
	HINTERNALCOMMAND( MESSAGE$1 );
	label$38:;
}

static void HWRITELABEL( uint8* ID$1 )
{
	FBSTRING TMP$138$1;
	FBSTRING TMP$139$1;
	label$39:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	__builtin_memset( &TMP$139$1, 0, 12 );
	__builtin_memset( &TMP$138$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$138$1, (void*)ID$1, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$139$1, -1, (void*)vr$4, -1, 0 );
	HWRITELINE( &TMP$139$1 );
	fb_StrDelete( (FBSTRING*)&TMP$139$1 );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	label$40:;
}

static FBSTRING* HSYMNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$41:;
	if( *(uint8**)((uint8*)SYM$1 + 20) == (uint8*)0u ) goto label$44;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
	}
	goto label$43;
	label$44:;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
	}
	label$43:;
	label$42:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* VREGPRETTY( struct $6IRVREG* V$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$45:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	{
		$15IRVREGTYPE_ENUM TMP$140$2;
		TMP$140$2 = *($15IRVREGTYPE_ENUM*)V$1;
		if( TMP$140$2 != 0 ) goto label$48;
		label$49:;
		{
			int32 TMP$141$3;
			if( (*(int32*)((uint8*)V$1 + 4) & 480) == 0 ) goto label$50;
			TMP$141$3 = 24;
			goto label$737;
			label$50:;
			TMP$141$3 = *(int32*)((uint8*)V$1 + 4) & 31;
			label$737:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$141$3 * 28)) != 1 ) goto label$52;
			{
				FBSTRING* vr$9 = fb_DoubleToStr( *(double*)((uint8*)V$1 + 24) );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$9, -1, 0 );
			}
			goto label$51;
			label$52:;
			{
				FBSTRING* vr$12 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 24) );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$12, -1, 0 );
			}
			label$51:;
		}
		goto label$47;
		label$48:;
		if( TMP$140$2 != 4 ) goto label$53;
		label$54:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)V$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$56;
			{
				FBSTRING* vr$16 = HSYMNAME( *(struct $8FBSYMBOL**)((uint8*)V$1 + 32) );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$16, -1, 0 );
			}
			goto label$55;
			label$56:;
			{
				FBSTRING TMP$143$4;
				FBSTRING* vr$19 = fb_IntToStr( *(int32*)((uint8*)V$1 + 12) );
				__builtin_memset( &TMP$143$4, 0, 12 );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$143$4, (void*)"vr", 3, (void*)vr$19, -1 );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$22, -1, 0 );
			}
			label$55:;
		}
		goto label$47;
		label$53:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)V$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$59;
			{
				FBSTRING* vr$26 = HSYMNAME( *(struct $8FBSYMBOL**)((uint8*)V$1 + 32) );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$26, -1, 0 );
			}
			label$59:;
			label$58:;
		}
		label$57:;
		label$47:;
	}
	if( *(struct $6IRVREG**)((uint8*)V$1 + 52) == (struct $6IRVREG*)0u ) goto label$61;
	{
		FBSTRING TMP$145$2;
		int32 vr$30 = fb_StrLen( (void*)&S$1, -1 );
		if( vr$30 <= 0 ) goto label$63;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"+", 2, 0 );
		}
		label$63:;
		label$62:;
		FBSTRING* vr$33 = VREGPRETTY( *(struct $6IRVREG**)((uint8*)V$1 + 52) );
		__builtin_memset( &TMP$145$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$145$2, (void*)&S$1, -1, (void*)vr$33, -1 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$37, -1, 0 );
	}
	label$61:;
	label$60:;
	if( *(int64*)((uint8*)V$1 + 40) == 0ll ) goto label$65;
	{
		FBSTRING TMP$146$2;
		FBSTRING TMP$147$2;
		FBSTRING* vr$41 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 40) );
		__builtin_memset( &TMP$146$2, 0, 12 );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$146$2, (void*)"+", 2, (void*)vr$41, -1 );
		__builtin_memset( &TMP$147$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$147$2, (void*)&S$1, -1, (void*)vr$44, -1 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$48, -1, 0 );
	}
	label$65:;
	label$64:;
	if( *(int32*)((uint8*)V$1 + 48) == 0 ) goto label$67;
	{
		FBSTRING TMP$149$2;
		FBSTRING TMP$150$2;
		FBSTRING* vr$52 = fb_IntToStr( *(int32*)((uint8*)V$1 + 48) );
		__builtin_memset( &TMP$149$2, 0, 12 );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$149$2, (void*)"*", 2, (void*)vr$52, -1 );
		__builtin_memset( &TMP$150$2, 0, 12 );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$150$2, (void*)&S$1, -1, (void*)vr$55, -1 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$59, -1, 0 );
	}
	label$67:;
	label$66:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$46:;
	FBSTRING* vr$65 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$65;
}

static FBSTRING* HEMITPARAMNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$152$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$68:;
	uint8* vr$1 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$152$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$152$1, (void*)vr$1, 0, (void*)"$", 2 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$4, -1, 0 );
	label$69:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* HEMITPROCCALLCONV( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$70:;
	int32 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0 ) goto label$73;
	{
		goto label$71;
	}
	label$73:;
	label$72:;
	{
		uint32 TMP$153$2;
		TMP$153$2 = *(uint32*)((uint8*)PROC$1 + 84);
		goto label$75;
		label$76:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"x86_stdcallcc ", 15, 0 );
		}
		goto label$74;
		label$77:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"x86_thiscall ", 14, 0 );
		}
		goto label$74;
		label$78:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"x86_fastcall ", 14, 0 );
		}
		goto label$74;
		label$75:;
		static const void* tmp$582[6] = {
			&&label$76,
			&&label$76,
			&&label$74,
			&&label$76,
			&&label$77,
			&&label$78,
		};
		if( (TMP$153$2 - 1u) > 5u ) goto label$74;
		goto *tmp$582[TMP$153$2 - 1u];
		label$74:;
	}
	label$71:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL* PROC$1, int32 IS_PROTO$1, int32 IS_TYPE$1 )
{
	FBSTRING TMP$157$1;
	struct $8FBSYMBOL* TMP$164$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$79:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING* vr$2 = HEMITPROCCALLCONV( PROC$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$2, -1, 0 );
	FBSTRING* vr$7 = HEMITTYPE( *(int32*)((uint8*)PROC$1 + 88) & 511, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 92) );
	__builtin_memset( &TMP$157$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$157$1, (void*)&LN$1, -1, (void*)vr$7, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$11, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	if( IS_TYPE$1 != 0 ) goto label$82;
	{
		FBSTRING TMP$159$2;
		uint8* vr$14 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$159$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$159$2, (void*)&LN$1, -1, (void*)vr$14, 0 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$18, -1, 0 );
	}
	label$82:;
	label$81:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"( ", 3, 0 );
	struct $8FBSYMBOL* HIDDEN$1;
	HIDDEN$1 = (struct $8FBSYMBOL*)0u;
	int32 vr$21 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$21 == 0 ) goto label$84;
	{
		if( IS_PROTO$1 == 0 ) goto label$86;
		{
			FBSTRING TMP$161$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32);
			FBSTRING* vr$40 = HEMITTYPE( ((((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 32505856), HIDDEN$1 );
			__builtin_memset( &TMP$161$3, 0, 12 );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$161$3, (void*)&LN$1, -1, (void*)vr$40, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$44, -1, 0 );
		}
		goto label$85;
		label$86:;
		{
			FBSTRING TMP$162$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112);
			FBSTRING* vr$66 = HEMITTYPE( ((((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 32505856), *(struct $8FBSYMBOL**)((uint8*)HIDDEN$1 + 32) );
			__builtin_memset( &TMP$162$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$162$3, (void*)&LN$1, -1, (void*)vr$66, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$70, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
			FBSTRING* vr$73 = HEMITPARAMNAME( HIDDEN$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$73, -1, 0 );
		}
		label$85:;
		if( (int32)*(int16*)((uint8*)PROC$1 + 68) <= 0 ) goto label$88;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		label$88:;
		label$87:;
	}
	label$84:;
	label$83:;
	struct $8FBSYMBOL* PARAM$1;
	if( *(int32*)((uint8*)PROC$1 + 84) != 4 ) goto label$89;
	TMP$164$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	goto label$738;
	label$89:;
	TMP$164$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$738:;
	PARAM$1 = TMP$164$1;
	label$90:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$91;
	{
		struct $8FBSYMBOL* TMP$168$2;
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$93;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"...", 4, 0 );
		}
		goto label$92;
		label$93:;
		{
			_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( PARAM$1, &DTYPE$1, &SUBTYPE$1 );
			FBSTRING* vr$85 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$85, -1, 0 );
			if( IS_PROTO$1 != 0 ) goto label$95;
			{
				FBSTRING TMP$166$4;
				FBSTRING TMP$167$4;
				FBSTRING* vr$88 = HEMITPARAMNAME( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 60) );
				__builtin_memset( &TMP$166$4, 0, 12 );
				FBSTRING* vr$91 = fb_StrConcat( &TMP$166$4, (void*)" ", 2, (void*)vr$88, -1 );
				__builtin_memset( &TMP$167$4, 0, 12 );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$167$4, (void*)&LN$1, -1, (void*)vr$91, -1 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$95, -1, 0 );
			}
			label$95:;
			label$94:;
		}
		label$92:;
		if( *(int32*)((uint8*)PROC$1 + 84) != 4 ) goto label$96;
		TMP$168$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
		goto label$739;
		label$96:;
		TMP$168$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		label$739:;
		PARAM$1 = TMP$168$2;
		if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$98;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		label$98:;
		label$97:;
	}
	goto label$90;
	label$91:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" )", 3, 0 );
	if( IS_TYPE$1 != 0 ) goto label$100;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" nounwind", 10, 0 );
		if( (*(int32*)((uint8*)PROC$1 + 8) & 128) == 0 ) goto label$102;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" naked", 7, 0 );
		}
		label$102:;
		label$101:;
	}
	label$100:;
	label$99:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&LN$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$80:;
	FBSTRING* vr$110 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$110;
}

static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$103:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144);
	FBSTRING S$1;
	fb_StrInit( (void*)&S$1, -1, (void*)"%", 2, 0 );
	label$105:;
	if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$106;
	{
		FBSTRING TMP$173$2;
		__builtin_memset( &TMP$173$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$173$2, (void*)&S$1, -1, *(void**)((uint8*)NS$1 + 16), 0 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$9, -1, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)".", 2, 0 );
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 144);
	}
	goto label$105;
	label$106:;
	if( *(uint8**)((uint8*)SYM$1 + 20) == (uint8*)0u ) goto label$108;
	{
		FBSTRING TMP$174$2;
		__builtin_memset( &TMP$174$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$174$2, (void*)&S$1, -1, *(void**)((uint8*)SYM$1 + 20), 0 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$19, -1, 0 );
	}
	goto label$107;
	label$108:;
	{
		FBSTRING TMP$175$2;
		__builtin_memset( &TMP$175$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$175$2, (void*)&S$1, -1, *(void**)((uint8*)SYM$1 + 16), 0 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$25, -1, 0 );
	}
	label$107:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$104:;
	FBSTRING* vr$31 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$31;
}

static void HEMITUDT( struct $8FBSYMBOL* S$1 )
{
	label$109:;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$112;
	{
		goto label$110;
	}
	label$112:;
	label$111:;
	if( (*(int32*)((uint8*)S$1 + 12) & 67108864) == 0 ) goto label$114;
	{
		goto label$110;
	}
	label$114:;
	label$113:;
	int32 OLDSECTION$1;
	OLDSECTION$1 = *(int32*)((uint8*)&CTX$ + 200);
	if( (*(int32*)((uint8*)S$1 + 4) & 128) != 0 ) goto label$116;
	{
		*(int32*)((uint8*)&CTX$ + 200) = 0;
	}
	label$116:;
	label$115:;
	{
		uint32 TMP$176$2;
		TMP$176$2 = *(uint32*)S$1;
		goto label$118;
		label$119:;
		{
			FBSTRING TMP$178$3;
			FBSTRING TMP$179$3;
			FBSTRING TMP$180$3;
			*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 67108864;
			__builtin_memset( &TMP$180$3, 0, 12 );
			FBSTRING* vr$9 = HEMITTYPE( 10, (struct $8FBSYMBOL*)0u );
			FBSTRING* vr$10 = HGETUDTNAME( S$1 );
			__builtin_memset( &TMP$178$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$178$3, (void*)vr$10, -1, (void*)" = type ", 9 );
			__builtin_memset( &TMP$179$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$179$3, (void*)vr$13, -1, (void*)vr$9, -1 );
			fb_StrAssign( (void*)&TMP$180$3, -1, (void*)vr$16, -1, 0 );
			HWRITELINE( &TMP$180$3 );
			fb_StrDelete( (FBSTRING*)&TMP$180$3 );
		}
		goto label$117;
		label$120:;
		{
			HEMITSTRUCT( S$1 );
		}
		goto label$117;
		label$118:;
		static const void* tmp$583[2] = {
			&&label$119,
			&&label$120,
		};
		if( (TMP$176$2 - 9u) > 1u ) goto label$117;
		goto *tmp$583[TMP$176$2 - 9u];
		label$117:;
	}
	*(int32*)((uint8*)&CTX$ + 200) = OLDSECTION$1;
	label$110:;
}

static void HBUILDSTRLIT( FBSTRING* LN$1, int32 WANTEDLENGTH$1, uint8* Z$1, int32 LENGTH$1 )
{
	label$121:;
	int32 CH$1;
	if( LENGTH$1 <= WANTEDLENGTH$1 ) goto label$124;
	{
		LENGTH$1 = WANTEDLENGTH$1;
	}
	label$124:;
	label$123:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$181$2;
		TMP$181$2 = LENGTH$1 + -1;
		goto label$125;
		label$128:;
		{
			CH$1 = (int32)*(uint8*)((uint8*)Z$1 + I$2);
			int32 vr$3 = HCHARNEEDSESCAPING( CH$1, 34 );
			if( vr$3 == 0 ) goto label$130;
			{
				FBSTRING TMP$184$4;
				FBSTRING* vr$4 = fb_HEXEx_i( (uint32)CH$1, 2 );
				__builtin_memset( &TMP$184$4, 0, 12 );
				FBSTRING* vr$7 = fb_StrConcat( &TMP$184$4, (void*)"\x5C", 2, (void*)vr$4, -1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$7, -1, 0 );
			}
			goto label$129;
			label$130:;
			{
				FBSTRING* vr$8 = fb_CHR( 1, CH$1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$8, -1, 0 );
			}
			label$129:;
		}
		label$126:;
		I$2 = I$2 + 1;
		label$125:;
		if( I$2 <= TMP$181$2 ) goto label$128;
		label$127:;
	}
	label$131:;
	if( LENGTH$1 >= WANTEDLENGTH$1 ) goto label$132;
	{
		fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x5C" "00", 4, 0 );
		LENGTH$1 = LENGTH$1 + 1;
	}
	goto label$131;
	label$132:;
	label$122:;
}

static void HBUILDWSTRLIT( FBSTRING* LN$1, int32 WANTEDLENGTH$1, uint32* W$1, int32 LENGTH$1 )
{
	label$133:;
	uint32 CH$1;
	uint32 WCHARSIZE$1;
	WCHARSIZE$1 = *(uint32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	if( LENGTH$1 <= WANTEDLENGTH$1 ) goto label$136;
	{
		LENGTH$1 = WANTEDLENGTH$1;
	}
	label$136:;
	label$135:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$186$2;
		TMP$186$2 = LENGTH$1 + -1;
		goto label$137;
		label$140:;
		{
			CH$1 = *(uint32*)((uint8*)W$1 + (I$2 << (2 & 31)));
			int32 vr$3 = HCHARNEEDSESCAPING( (int32)CH$1, 34 );
			if( vr$3 == 0 ) goto label$142;
			{
				if( WCHARSIZE$1 < 1u ) goto label$144;
				{
					FBSTRING TMP$187$5;
					FBSTRING* vr$5 = fb_HEXEx_i( CH$1 & 255u, 2 );
					__builtin_memset( &TMP$187$5, 0, 12 );
					FBSTRING* vr$8 = fb_StrConcat( &TMP$187$5, (void*)"\x5C", 2, (void*)vr$5, -1 );
					fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$8, -1, 0 );
				}
				label$144:;
				label$143:;
				if( WCHARSIZE$1 < 2u ) goto label$146;
				{
					FBSTRING TMP$188$5;
					FBSTRING* vr$11 = fb_HEXEx_i( (CH$1 >> (8 & 31)) & 255u, 2 );
					__builtin_memset( &TMP$188$5, 0, 12 );
					FBSTRING* vr$14 = fb_StrConcat( &TMP$188$5, (void*)"\x5C", 2, (void*)vr$11, -1 );
					fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$14, -1, 0 );
				}
				label$146:;
				label$145:;
				if( WCHARSIZE$1 < 4u ) goto label$148;
				{
					FBSTRING TMP$189$5;
					FBSTRING TMP$190$5;
					FBSTRING* vr$17 = fb_HEXEx_i( (CH$1 >> (16 & 31)) & 255u, 2 );
					__builtin_memset( &TMP$189$5, 0, 12 );
					FBSTRING* vr$20 = fb_StrConcat( &TMP$189$5, (void*)"\x5C", 2, (void*)vr$17, -1 );
					fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$20, -1, 0 );
					FBSTRING* vr$23 = fb_HEXEx_i( (CH$1 >> (24 & 31)) & 255u, 2 );
					__builtin_memset( &TMP$190$5, 0, 12 );
					FBSTRING* vr$26 = fb_StrConcat( &TMP$190$5, (void*)"\x5C", 2, (void*)vr$23, -1 );
					fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$26, -1, 0 );
				}
				label$148:;
				label$147:;
			}
			goto label$141;
			label$142:;
			{
				FBSTRING* vr$27 = fb_CHR( 1, (int32)CH$1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$27, -1, 0 );
				{
					int32 J$5;
					J$5 = 2;
					int32 TMP$191$5;
					TMP$191$5 = (int32)WCHARSIZE$1;
					goto label$149;
					label$152:;
					{
						fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x5C" "00", 4, 0 );
					}
					label$150:;
					J$5 = J$5 + 1;
					label$149:;
					if( J$5 <= TMP$191$5 ) goto label$152;
					label$151:;
				}
			}
			label$141:;
		}
		label$138:;
		I$2 = I$2 + 1;
		label$137:;
		if( I$2 <= TMP$186$2 ) goto label$140;
		label$139:;
	}
	label$153:;
	if( LENGTH$1 >= WANTEDLENGTH$1 ) goto label$154;
	{
		{
			int32 J$3;
			J$3 = 1;
			int32 TMP$192$3;
			TMP$192$3 = (int32)WCHARSIZE$1;
			goto label$155;
			label$158:;
			{
				fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x5C" "00", 4, 0 );
			}
			label$156:;
			J$3 = J$3 + 1;
			label$155:;
			if( J$3 <= TMP$192$3 ) goto label$158;
			label$157:;
		}
		LENGTH$1 = LENGTH$1 + 1;
	}
	goto label$153;
	label$154:;
	label$134:;
}

static FBSTRING* HEMITSTRLITTYPE( int32 LENGTH$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$159:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"[", 2, 0 );
	FBSTRING* vr$2 = fb_IntToStr( LENGTH$1 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)" x i8]", 7, 0 );
	label$160:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static FBSTRING* HEMITSYMTYPE( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$161:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$164;
	{
		FBSTRING* vr$16 = HEMITTYPE( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$16, -1, 0 );
	}
	goto label$163;
	label$164:;
	{
		{
			if( DTYPE$1 == 18 ) goto label$167;
			label$168:;
			if( DTYPE$1 == 4 ) goto label$167;
			label$169:;
			if( DTYPE$1 != 7 ) goto label$166;
			label$167:;
			{
				FBSTRING* vr$20 = HEMITSTRLITTYPE( (int32)*(int64*)((uint8*)SYM$1 + 40) );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$20, -1, 0 );
			}
			goto label$165;
			label$166:;
			{
				FBSTRING* vr$23 = HEMITTYPE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$23, -1, 0 );
			}
			label$170:;
			label$165:;
		}
	}
	label$163:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$172;
	{
	}
	goto label$171;
	label$172:;
	{
		{
			$12FB_SYMBCLASS TMP$195$3;
			TMP$195$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$195$3 == 1 ) goto label$175;
			label$176:;
			if( TMP$195$3 != 12 ) goto label$174;
			label$175:;
			{
				{
					int32 I$5;
					I$5 = *(int32*)((uint8*)SYM$1 + 64) + -1;
					goto label$177;
					label$180:;
					{
						FBSTRING TMP$198$6;
						FBSTRING TMP$199$6;
						FBSTRING TMP$200$6;
						FBSTRING TMP$201$6;
						int64 ELEMENTS$6;
						ELEMENTS$6 = (*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31)))) + 1ll;
						__builtin_memset( &TMP$199$6, 0, 12 );
						FBSTRING* vr$41 = fb_StrConcat( &TMP$199$6, (void*)" x ", 4, (void*)&S$1, -1 );
						__builtin_memset( &TMP$200$6, 0, 12 );
						FBSTRING* vr$44 = fb_StrConcat( &TMP$200$6, (void*)vr$41, -1, (void*)"]", 2 );
						FBSTRING* vr$45 = fb_LongintToStr( ELEMENTS$6 );
						__builtin_memset( &TMP$198$6, 0, 12 );
						FBSTRING* vr$48 = fb_StrConcat( &TMP$198$6, (void*)"[", 2, (void*)vr$45, -1 );
						__builtin_memset( &TMP$201$6, 0, 12 );
						FBSTRING* vr$51 = fb_StrConcat( &TMP$201$6, (void*)vr$48, -1, (void*)vr$44, -1 );
						fb_StrAssign( (void*)&S$1, -1, (void*)vr$51, -1, 0 );
					}
					label$178:;
					I$5 = I$5 + -1;
					label$177:;
					if( I$5 >= 0 ) goto label$180;
					label$179:;
				}
			}
			label$174:;
			label$173:;
		}
	}
	label$171:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$162:;
	FBSTRING* vr$58 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$58;
}

static void HEMITVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$181:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	int32 IS_GLOBAL$1;
	int32 LENGTH$1;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 1024) == 0 ) goto label$184;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$186;
		{
			fb_StrDelete( (FBSTRING*)&LN$1 );
			goto label$182;
		}
		label$186:;
		label$185:;
		{
			int32 TMP$202$3;
			TMP$202$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$202$3 == 4 ) goto label$189;
			label$190:;
			if( TMP$202$3 != 7 ) goto label$188;
			label$189:;
			{
				FBSTRING TMP$204$4;
				uint8* vr$8 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$204$4, 0, 12 );
				FBSTRING* vr$11 = fb_StrConcat( &TMP$204$4, (void*)vr$8, 0, (void*)" = ", 4 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$11, -1, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"private constant ", 18, 0 );
				FBSTRING* vr$14 = HEMITSYMTYPE( SYM$1 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$14, -1, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" c\x22", 4, 0 );
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 7 ) goto label$192;
				{
					int32 TMP$207$5;
					int64 vr$21 = __divdi3( *(int64*)((uint8*)SYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
					LENGTH$1 = (int32)vr$21;
					TMP$207$5 = 0;
					uint32* vr$25 = HUNESCAPEW( *(uint32**)((uint8*)SYM$1 + 56), &TMP$207$5 );
					HBUILDWSTRLIT( &LN$1, LENGTH$1, vr$25, LENGTH$1 );
				}
				goto label$191;
				label$192:;
				{
					int32 TMP$208$5;
					LENGTH$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
					TMP$208$5 = 0;
					uint8* vr$31 = HUNESCAPE( *(uint8**)((uint8*)SYM$1 + 56), &TMP$208$5 );
					HBUILDSTRLIT( &LN$1, LENGTH$1, vr$31, LENGTH$1 );
				}
				label$191:;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
				HWRITELINE( &LN$1 );
			}
			goto label$187;
			label$188:;
			{
			}
			label$193:;
			label$187:;
		}
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$182;
	}
	label$184:;
	label$183:;
	if( (-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) != (struct $7ASTNODE*)0u) & (-((*(int32*)((uint8*)SYM$1 + 4) & 128) == 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0))) == 0 ) goto label$195;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 128) != 0 ) goto label$197;
		{
			if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$199;
			{
				if( (*(int32*)((uint8*)SYM$1 + 4) & 32) != 0 ) goto label$201;
				{
					fb_StrDelete( (FBSTRING*)&LN$1 );
					goto label$182;
				}
				label$201:;
				label$200:;
			}
			label$199:;
			label$198:;
		}
		label$197:;
		label$196:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$182;
	}
	label$195:;
	label$194:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$203;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$182;
	}
	label$203:;
	label$202:;
	IS_GLOBAL$1 = *(int32*)((uint8*)SYM$1 + 4) & 59;
	uint8* vr$59 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$59, 0, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = ", 4, 0 );
	if( IS_GLOBAL$1 == 0 ) goto label$205;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"global", 7, 0 );
	}
	goto label$204;
	label$205:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"alloca", 7, 0 );
	}
	label$204:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	FBSTRING* vr$65 = HEMITSYMTYPE( SYM$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$65, -1, 0 );
	if( IS_GLOBAL$1 == 0 ) goto label$207;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" zeroinitializer", 17, 0 );
	}
	label$207:;
	label$206:;
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$182:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$208:;
	int32 vr$0 = SYMBISDATADESC( SYM$1 );
	if( vr$0 != 0 ) goto label$211;
	{
		HEMITVARIABLE( SYM$1 );
	}
	label$211:;
	label$210:;
	label$209:;
}

static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$213$1;
	FBSTRING TMP$214$1;
	label$212:;
	if( (-((*(int32*)((uint8*)S$1 + 12) & 16384) != 0) | -((*(int32*)((uint8*)S$1 + 12) & 2) == 0)) == 0 ) goto label$215;
	{
		goto label$213;
	}
	label$215:;
	label$214:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( S$1 );
	if( vr$7 != (uint8*)0u ) goto label$217;
	{
		goto label$213;
	}
	label$217:;
	label$216:;
	if( (*(int32*)((uint8*)S$1 + 12) & 128) == 0 ) goto label$219;
	{
		goto label$213;
	}
	label$219:;
	label$218:;
	int32 OLDSECTION$1;
	OLDSECTION$1 = *(int32*)((uint8*)&CTX$ + 200);
	*(int32*)((uint8*)&CTX$ + 200) = 0;
	__builtin_memset( &TMP$214$1, 0, 12 );
	FBSTRING* vr$11 = HEMITPROCHEADER( S$1, -1, 0 );
	__builtin_memset( &TMP$213$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$213$1, (void*)"declare ", 9, (void*)vr$11, -1 );
	fb_StrAssign( (void*)&TMP$214$1, -1, (void*)vr$14, -1, 0 );
	HWRITELINE( &TMP$214$1 );
	fb_StrDelete( (FBSTRING*)&TMP$214$1 );
	*(int32*)((uint8*)&CTX$ + 200) = OLDSECTION$1;
	label$213:;
}

static void HEMITSTRUCT( struct $8FBSYMBOL* S$1 )
{
	label$220:;
	struct $8FBSYMBOL* FLD$1;
	if( (*(int32*)((uint8*)S$1 + 12) & 134217728) == 0 ) goto label$223;
	{
		goto label$221;
	}
	label$223:;
	label$222:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 134217728;
	struct $8FBSYMBOL* vr$5 = SYMBUDTGETFIRSTFIELD( S$1 );
	FLD$1 = vr$5;
	label$224:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$225;
	{
		HEMITUDT( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32) );
		struct $8FBSYMBOL* vr$7 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$7;
	}
	goto label$224;
	label$225:;
	if( (*(int32*)((uint8*)S$1 + 12) & 67108864) == 0 ) goto label$227;
	{
		goto label$221;
	}
	label$227:;
	label$226:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 67108864;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	if( *(uint8**)((uint8*)S$1 + 16) == (uint8*)0u ) goto label$229;
	{
		FBSTRING* vr$15 = HGETUDTNAME( S$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$15, -1, 0 );
	}
	goto label$228;
	label$229:;
	{
		FBSTRING TMP$215$2;
		FBSTRING TMP$216$2;
		uint8* vr$17 = SYMBUNIQUEID( (boolean)0 );
		__builtin_memset( &TMP$215$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$215$2, (void*)"%", 2, (void*)vr$17, 0 );
		__builtin_memset( &TMP$216$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$216$2, (void*)&LN$1, -1, (void*)vr$20, -1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$24, -1, 0 );
	}
	label$228:;
	int32 PACKED$1;
	PACKED$1 = -((int32)*(uint8*)((uint8*)S$1 + 125) == 1);
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = type ", 9, 0 );
	if( PACKED$1 == 0 ) goto label$231;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"<", 2, 0 );
		label$231:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"{ ", 3, 0 );
	struct $8FBSYMBOL* vr$32 = SYMBUDTGETFIRSTFIELD( S$1 );
	FLD$1 = vr$32;
	label$232:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$233;
	{
		if( (*(int32*)((uint8*)FLD$1 + 4) & 4) != 0 ) goto label$235;
		{
			FBSTRING* vr$35 = HEMITSYMTYPE( FLD$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$35, -1, 0 );
		}
		label$235:;
		label$234:;
		struct $8FBSYMBOL* vr$37 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$37;
		if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$237;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		label$237:;
		label$236:;
	}
	goto label$232;
	label$233:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" }", 3, 0 );
	if( PACKED$1 == 0 ) goto label$239;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)">", 2, 0 );
		label$239:;
	}
	HWRITELINE( &LN$1 );
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) & -134217729;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$221:;
}

static void HEMITCTORDTORARRAYELEMENT( struct $8FBSYMBOL* PROC$1, FBSTRING* S$1 )
{
	FBSTRING TMP$222$1;
	FBSTRING TMP$224$1;
	label$240:;
	int32 vr$0 = fb_StrLen( (void*)S$1, -1 );
	if( vr$0 <= 0 ) goto label$243;
	{
		fb_StrConcatByref( (void*)S$1, -1, (void*)", ", 3, 0 );
	}
	label$243:;
	label$242:;
	fb_StrConcatByref( (void*)S$1, -1, (void*)"{ i32, void ()* } { i32 ", 25, 0 );
	FBSTRING* vr$3 = fb_IntToStr( *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 56) );
	__builtin_memset( &TMP$222$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$222$1, (void*)S$1, -1, (void*)vr$3, -1 );
	fb_StrAssign( (void*)S$1, -1, (void*)vr$6, -1, 0 );
	fb_StrConcatByref( (void*)S$1, -1, (void*)", void ()* ", 12, 0 );
	uint8* vr$7 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$224$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$224$1, (void*)S$1, -1, (void*)vr$7, 0 );
	fb_StrAssign( (void*)S$1, -1, (void*)vr$10, -1, 0 );
	fb_StrConcatByref( (void*)S$1, -1, (void*)" }", 3, 0 );
	label$241:;
}

static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$244:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 16384) == 0 ) goto label$247;
	{
		goto label$245;
	}
	label$247:;
	label$246:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 65536) == 0 ) goto label$249;
	{
		*(int32*)((uint8*)&CTX$ + 176) = *(int32*)((uint8*)&CTX$ + 176) + 1;
		HEMITCTORDTORARRAYELEMENT( PROC$1, (FBSTRING*)((uint8*)&CTX$ + 152) );
	}
	goto label$248;
	label$249:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 131072) == 0 ) goto label$250;
	{
		*(int32*)((uint8*)&CTX$ + 180) = *(int32*)((uint8*)&CTX$ + 180) + 1;
		HEMITCTORDTORARRAYELEMENT( PROC$1, (FBSTRING*)((uint8*)&CTX$ + 164) );
	}
	label$250:;
	label$248:;
	label$245:;
}

static int32 _EMITBEGIN( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$251:;
	int32 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 584) );
	if( vr$2 == 0 ) goto label$254;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$254:;
	label$253:;
	int32 vr$5 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 580) = vr$5;
	FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
	int32 vr$8 = fb_FileOpen( (FBSTRING*)vr$7, 0u, 3u, 0u, *(int32*)((uint8*)&ENV$ + 580), 0 );
	if( vr$8 == 0 ) goto label$256;
	{
		fb$result$1 = 0;
		goto label$252;
	}
	label$256:;
	label$255:;
	*(int32*)&CTX$ = 0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 152), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 164), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 176) = 0;
	*(int32*)((uint8*)&CTX$ + 180) = 0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 204), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 216), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 228), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	*(int32*)((uint8*)&CTX$ + 200) = 0;
	{
		int32 I$2;
		I$2 = 0;
		label$260:;
		{
			*(int32*)(((int32)(struct $7BUILTIN*)BUILTINS$ + (I$2 << (3 & 31))) + 4) = 0;
		}
		label$258:;
		I$2 = I$2 + 1;
		label$257:;
		if( I$2 <= 17 ) goto label$260;
		label$259:;
	}
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$262;
	{
		_EMITDBG( 113, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	}
	label$262:;
	label$261:;
	int32 vr$16 = FBIS64BIT(  );
	if( vr$16 == 0 ) goto label$264;
	{
		FBSTRING TMP$226$2;
		__builtin_memset( &TMP$226$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$226$2, -1, (void*)"%FBSTRING = type { i8*, i64, i64 }", 35, 0 );
		HWRITELINE( &TMP$226$2 );
		fb_StrDelete( (FBSTRING*)&TMP$226$2 );
	}
	goto label$263;
	label$264:;
	{
		FBSTRING TMP$228$2;
		__builtin_memset( &TMP$228$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$228$2, -1, (void*)"%FBSTRING = type { i8*, i32, i32 }", 35, 0 );
		HWRITELINE( &TMP$228$2 );
		fb_StrDelete( (FBSTRING*)&TMP$228$2 );
	}
	label$263:;
	*(int32*)((uint8*)&CTX$ + 200) = 1;
	fb$result$1 = -1;
	label$252:;
	return fb$result$1;
}

static void _EMITEND( void )
{
	FBSTRING TMP$230$1;
	FBSTRING TMP$231$1;
	label$265:;
	*(int32*)((uint8*)&CTX$ + 200) = 0;
	{
		int32 I$2;
		I$2 = 0;
		label$270:;
		{
			if( *(int32*)(((int32)(struct $7BUILTIN*)BUILTINS$ + (I$2 << (3 & 31))) + 4) == 0 ) goto label$272;
			{
				FBSTRING TMP$229$4;
				__builtin_memset( &TMP$229$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$229$4, -1, *(void**)((int32)(struct $7BUILTIN*)BUILTINS$ + (I$2 << (3 & 31))), 0, 0 );
				HWRITELINE( &TMP$229$4 );
				fb_StrDelete( (FBSTRING*)&TMP$229$4 );
			}
			label$272:;
			label$271:;
		}
		label$268:;
		I$2 = I$2 + 1;
		label$267:;
		if( I$2 <= 17 ) goto label$270;
		label$269:;
	}
	__builtin_memset( &TMP$230$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$230$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$230$1 );
	fb_StrDelete( (FBSTRING*)&TMP$230$1 );
	SYMBFOREACHGLOBAL( 3, (tmp$41)&HMAYBEEMITPROCPROTO );
	__builtin_memset( &TMP$231$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$231$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$231$1 );
	fb_StrDelete( (FBSTRING*)&TMP$231$1 );
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HMAYBEEMITGLOBALVAR );
	IRFOREACHDATASTMT( (tmp$41)&HEMITVARIABLE );
	SYMBFOREACHGLOBAL( 3, (tmp$41)&HADDGLOBALCTORDTOR );
	if( *(int32*)((uint8*)&CTX$ + 176) <= 0 ) goto label$274;
	{
		FBSTRING TMP$234$2;
		FBSTRING TMP$235$2;
		FBSTRING TMP$236$2;
		FBSTRING TMP$237$2;
		FBSTRING TMP$238$2;
		__builtin_memset( &TMP$238$2, 0, 12 );
		__builtin_memset( &TMP$235$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$235$2, (void*)" x { i32, void ()* }] [", 24, (void*)((uint8*)&CTX$ + 152), -1 );
		__builtin_memset( &TMP$236$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$236$2, (void*)vr$19, -1, (void*)"]", 2 );
		FBSTRING* vr$23 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 176) );
		__builtin_memset( &TMP$234$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$234$2, (void*)"@llvm.global_ctors = appending global [", 40, (void*)vr$23, -1 );
		__builtin_memset( &TMP$237$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$237$2, (void*)vr$26, -1, (void*)vr$22, -1 );
		fb_StrAssign( (void*)&TMP$238$2, -1, (void*)vr$29, -1, 0 );
		HWRITELINE( &TMP$238$2 );
		fb_StrDelete( (FBSTRING*)&TMP$238$2 );
	}
	label$274:;
	label$273:;
	if( *(int32*)((uint8*)&CTX$ + 180) <= 0 ) goto label$276;
	{
		FBSTRING TMP$240$2;
		FBSTRING TMP$241$2;
		FBSTRING TMP$242$2;
		FBSTRING TMP$243$2;
		FBSTRING TMP$244$2;
		__builtin_memset( &TMP$244$2, 0, 12 );
		__builtin_memset( &TMP$241$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$241$2, (void*)" x { i32, void ()* }] [", 24, (void*)((uint8*)&CTX$ + 164), -1 );
		__builtin_memset( &TMP$242$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$242$2, (void*)vr$37, -1, (void*)"]", 2 );
		FBSTRING* vr$41 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 180) );
		__builtin_memset( &TMP$240$2, 0, 12 );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$240$2, (void*)"@llvm.global_dtors = appending global [", 40, (void*)vr$41, -1 );
		__builtin_memset( &TMP$243$2, 0, 12 );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$243$2, (void*)vr$44, -1, (void*)vr$40, -1 );
		fb_StrAssign( (void*)&TMP$244$2, -1, (void*)vr$47, -1, 0 );
		HWRITELINE( &TMP$244$2 );
		fb_StrDelete( (FBSTRING*)&TMP$244$2 );
	}
	label$276:;
	label$275:;
	*(int32*)((uint8*)&CTX$ + 200) = 2;
	int32 vr$52 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 204), -1 );
	if( vr$52 == 0 ) goto label$278;
	{
	}
	label$278:;
	label$277:;
	int32 vr$54 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 216), -1 );
	if( vr$54 == 0 ) goto label$280;
	{
	}
	label$280:;
	label$279:;
	int32 vr$56 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 228), -1 );
	if( vr$56 == 0 ) goto label$282;
	{
	}
	label$282:;
	label$281:;
	int32 vr$57 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 580) );
	if( vr$57 == 0 ) goto label$284;
	{
	}
	label$284:;
	label$283:;
	*(int32*)((uint8*)&ENV$ + 580) = 0;
	label$266:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$285:;
	{
		if( OPT$1 != 1 ) goto label$288;
		label$289:;
		{
			fb$result$1 = 0;
			goto label$286;
		}
		goto label$287;
		label$288:;
		{
			ERRREPORTEX( 21, (uint8*)"_GETOPTIONVALUE", 0, 1, (uint8*)0u );
		}
		label$290:;
		label$287:;
	}
	label$286:;
	return fb$result$1;
}

static int32 _SUPPORTSOP( int32 OP$1, int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$291:;
	{
		uint32 TMP$246$2;
		TMP$246$2 = (uint32)OP$1;
		goto label$294;
		label$295:;
		{
			fb$result$1 = 0;
		}
		goto label$293;
		label$296:;
		{
			int32 TMP$247$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$297;
			TMP$247$3 = 24;
			goto label$740;
			label$297:;
			TMP$247$3 = DTYPE$1 & 31;
			label$740:;
			fb$result$1 = -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$247$3 * 28)) == 1);
		}
		goto label$293;
		label$298:;
		{
			fb$result$1 = -1;
		}
		goto label$293;
		label$294:;
		static const void* tmp$584[17] = {
			&&label$296,
			&&label$295,
			&&label$298,
			&&label$295,
			&&label$298,
			&&label$295,
			&&label$295,
			&&label$295,
			&&label$298,
			&&label$298,
			&&label$295,
			&&label$295,
			&&label$298,
			&&label$298,
			&&label$298,
			&&label$295,
			&&label$295,
		};
		if( (TMP$246$2 - 56u) > 16u ) goto label$298;
		goto *tmp$584[TMP$246$2 - 56u];
		label$293:;
	}
	label$292:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$299:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$300:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$301:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$302:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$249$1;
	FBSTRING TMP$250$1;
	FBSTRING TMP$252$1;
	FBSTRING TMP$254$1;
	FBSTRING TMP$255$1;
	FBSTRING TMP$256$1;
	label$303:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	__builtin_memset( &TMP$250$1, 0, 12 );
	FBSTRING* vr$2 = HSYMNAME( SYM$1 );
	__builtin_memset( &TMP$249$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$249$1, (void*)"paramvar ", 10, (void*)vr$2, -1 );
	fb_StrAssign( (void*)&TMP$250$1, -1, (void*)vr$5, -1, 0 );
	HASTCOMMAND( &TMP$250$1 );
	fb_StrDelete( (FBSTRING*)&TMP$250$1 );
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 4 );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	uint8* vr$13 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$252$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$252$1, (void*)vr$13, 0, (void*)" = alloca ", 11 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$16, -1, 0 );
	FBSTRING* vr$18 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$18, -1, 0 );
	HWRITELINE( &LN$1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)"store ", 7, 0 );
	FBSTRING* vr$22 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$22, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	FBSTRING* vr$25 = HEMITPARAMNAME( SYM$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$25, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
	uint8* vr$28 = SYMBGETMANGLEDNAME( SYM$1 );
	FBSTRING* vr$38 = HEMITTYPE( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1 );
	__builtin_memset( &TMP$254$1, 0, 12 );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$254$1, (void*)vr$38, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$255$1, 0, 12 );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$255$1, (void*)vr$41, -1, (void*)vr$28, 0 );
	__builtin_memset( &TMP$256$1, 0, 12 );
	FBSTRING* vr$48 = fb_StrConcat( &TMP$256$1, (void*)&LN$1, -1, (void*)vr$44, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$48, -1, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$304:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$258$1;
	FBSTRING TMP$259$1;
	label$305:;
	__builtin_memset( &TMP$259$1, 0, 12 );
	FBSTRING* vr$1 = HSYMNAME( SYM$1 );
	__builtin_memset( &TMP$258$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$258$1, (void*)"localvar ", 10, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$259$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$259$1 );
	fb_StrDelete( (FBSTRING*)&TMP$259$1 );
	HEMITVARIABLE( SYM$1 );
	label$306:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$307:;
	label$308:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$309:;
	label$310:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* HEAD_SYM$1 )
{
	label$311:;
	label$312:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* V$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$313:;
	struct $6IRVREG* TEMP0$1;
	if( (-(*(int32*)((uint8*)V$1 + 4) != DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)V$1 + 8) != SUBTYPE$1)) == 0 ) goto label$316;
	{
		struct $6IRVREG* vr$5 = IRHLALLOCVREG( DTYPE$1, SUBTYPE$1 );
		TEMP0$1 = vr$5;
		HEMITCONVERT( TEMP0$1, V$1 );
		__builtin_memcpy( V$1, TEMP0$1, 72 );
	}
	label$316:;
	label$315:;
	label$314:;
}

static void HADDOFFSET( struct $6IRVREG* V$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 OFS$1 )
{
	label$317:;
	struct $6IRVREG* VOFFSET$1;
	struct $6IRVREG* vr$0 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
	VOFFSET$1 = vr$0;
	HEMITCONVERT( VOFFSET$1, V$1 );
	if( OFS$1 == 0ll ) goto label$320;
	{
		struct $6IRVREG* VIMMOFFSET$2;
		struct $6IRVREG* vr$1 = IRHLALLOCVRIMM( 8, (struct $8FBSYMBOL*)0u, OFS$1 );
		VIMMOFFSET$2 = vr$1;
		struct $6IRVREG* VNEWOFFSET$2;
		struct $6IRVREG* vr$2 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
		VNEWOFFSET$2 = vr$2;
		HEMITBOP( 28, VOFFSET$1, VIMMOFFSET$2, VNEWOFFSET$2, (struct $8FBSYMBOL*)0u );
		VOFFSET$1 = VNEWOFFSET$2;
	}
	label$320:;
	label$319:;
	_SETVREGDATATYPE( VOFFSET$1, DTYPE$1, SUBTYPE$1 );
	__builtin_memcpy( V$1, VOFFSET$1, 72 );
	label$318:;
}

static void HPREPAREADDRESS( struct $6IRVREG* V$1 )
{
	label$321:;
	$11FB_DATATYPE ADDRDTYPE$1;
	ADDRDTYPE$1 = *($11FB_DATATYPE*)((uint8*)V$1 + 4);
	struct $8FBSYMBOL* ADDRSUBTYPE$1;
	ADDRSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)V$1 + 8);
	int64 OFS$1;
	OFS$1 = *(int64*)((uint8*)V$1 + 40);
	struct $6IRVREG* VIDX$1;
	VIDX$1 = *(struct $6IRVREG**)((uint8*)V$1 + 52);
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)V$1 + 32);
	if( *(int32*)V$1 != 5 ) goto label$324;
	{
	}
	goto label$323;
	label$324:;
	{
		ADDRDTYPE$1 = (((ADDRDTYPE$1 & 31) | ((ADDRDTYPE$1 & 480) + 32)) | ((ADDRDTYPE$1 & 261632) << (1 & 31))) | (ADDRDTYPE$1 & 32505856);
	}
	label$323:;
	if( *(int32*)V$1 != 3 ) goto label$326;
	{
		__builtin_memcpy( V$1, VIDX$1, 72 );
	}
	goto label$325;
	label$326:;
	{
		*($15IRVREGTYPE_ENUM*)V$1 = 4;
		*(int32*)((uint8*)V$1 + 12) = -1;
		*(int64*)((uint8*)V$1 + 40) = 0ll;
		*(struct $6IRVREG**)((uint8*)V$1 + 52) = (struct $6IRVREG*)0u;
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$328;
		{
			SYMBGETREALTYPE( SYM$1, (int32*)((uint8*)V$1 + 4), (struct $8FBSYMBOL**)((uint8*)V$1 + 8) );
			*($11FB_DATATYPE*)((uint8*)V$1 + 4) = (((*(int32*)((uint8*)V$1 + 4) & 31) | ((*(int32*)((uint8*)V$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)V$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)V$1 + 4) & 32505856);
			_SETVREGDATATYPE( V$1, ADDRDTYPE$1, ADDRSUBTYPE$1 );
		}
		goto label$327;
		label$328:;
		{
			*($11FB_DATATYPE*)((uint8*)V$1 + 4) = ADDRDTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)V$1 + 8) = ADDRSUBTYPE$1;
		}
		label$327:;
	}
	label$325:;
	if( (-(VIDX$1 != (struct $6IRVREG*)0u) | -(OFS$1 != 0ll)) == 0 ) goto label$330;
	{
		HADDOFFSET( V$1, ADDRDTYPE$1, ADDRSUBTYPE$1, OFS$1 );
	}
	label$330:;
	label$329:;
	label$322:;
}

static void HLOADVREG( struct $6IRVREG* V$1 )
{
	label$331:;
	{
		$15IRVREGTYPE_ENUM TMP$260$2;
		TMP$260$2 = *($15IRVREGTYPE_ENUM*)V$1;
		if( TMP$260$2 == 4 ) goto label$335;
		label$336:;
		if( TMP$260$2 != 0 ) goto label$334;
		label$335:;
		{
		}
		goto label$333;
		label$334:;
		if( TMP$260$2 != 5 ) goto label$337;
		label$338:;
		{
			HPREPAREADDRESS( V$1 );
		}
		goto label$333;
		label$337:;
		{
			FBSTRING TMP$262$3;
			FBSTRING TMP$263$3;
			FBSTRING TMP$264$3;
			FBSTRING TMP$265$3;
			FBSTRING TMP$266$3;
			HPREPAREADDRESS( V$1 );
			struct $6IRVREG* TEMP0$3;
			struct $6IRVREG* vr$16 = IRHLALLOCVREG( (((*(int32*)((uint8*)V$1 + 4) & 31) | ((*(int32*)((uint8*)V$1 + 4) & 480) + -32)) | (((*(int32*)((uint8*)V$1 + 4) & 261632) >> (1 & 31)) & 261632)) | (*(int32*)((uint8*)V$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)V$1 + 8) );
			TEMP0$3 = vr$16;
			FBSTRING S$3;
			FBSTRING* vr$17 = HVREGTOSTR( TEMP0$3 );
			__builtin_memset( &TMP$262$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$262$3, (void*)vr$17, -1, (void*)" = load ", 9 );
			fb_StrInit( (void*)&S$3, -1, (void*)vr$20, -1, 0 );
			FBSTRING* vr$37 = HEMITTYPE( (((*(int32*)((uint8*)V$1 + 4) & 31) | ((*(int32*)((uint8*)V$1 + 4) & 480) + -32)) | (((*(int32*)((uint8*)V$1 + 4) & 261632) >> (1 & 31)) & 261632)) | (*(int32*)((uint8*)V$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)V$1 + 8) );
			__builtin_memset( &TMP$263$3, 0, 12 );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$263$3, (void*)vr$37, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$264$3, 0, 12 );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$264$3, (void*)&S$3, -1, (void*)vr$40, -1 );
			fb_StrAssign( (void*)&S$3, -1, (void*)vr$44, -1, 0 );
			FBSTRING* vr$48 = HEMITTYPE( *(int32*)((uint8*)V$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V$1 + 8) );
			__builtin_memset( &TMP$265$3, 0, 12 );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$265$3, (void*)vr$48, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$266$3, 0, 12 );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$266$3, (void*)&S$3, -1, (void*)vr$51, -1 );
			fb_StrAssign( (void*)&S$3, -1, (void*)vr$55, -1, 0 );
			FBSTRING* vr$57 = HVREGTOSTR( V$1 );
			fb_StrConcatAssign( (void*)&S$3, -1, (void*)vr$57, -1, 0 );
			HWRITELINE( &S$3 );
			__builtin_memcpy( V$1, TEMP0$3, 72 );
			fb_StrDelete( (FBSTRING*)&S$3 );
		}
		label$339:;
		label$333:;
	}
	label$332:;
}

static FBSTRING* HEMITTYPE( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$340:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 PTRCOUNT$1;
	PTRCOUNT$1 = (DTYPE$1 & 480) >> (5 & 31);
	DTYPE$1 = DTYPE$1 & 31;
	{
		uint32 TMP$267$2;
		TMP$267$2 = (uint32)DTYPE$1;
		goto label$343;
		label$344:;
		{
			if( PTRCOUNT$1 != 0 ) goto label$346;
			{
				fb_StrAssign( (void*)&S$1, -1, (void*)"void", 5, 0 );
			}
			goto label$345;
			label$346:;
			{
				fb_StrAssign( (void*)&S$1, -1, *(void**)DTYPENAME$, 0, 0 );
			}
			label$345:;
		}
		goto label$342;
		label$347:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$349;
			{
				HEMITUDT( SUBTYPE$1 );
				FBSTRING* vr$7 = HGETUDTNAME( SUBTYPE$1 );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$7, -1, 0 );
			}
			goto label$348;
			label$349:;
			if( DTYPE$1 != 10 ) goto label$350;
			{
				int32 TMP$269$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$351;
				TMP$269$4 = 24;
				goto label$741;
				label$351:;
				TMP$269$4 = DTYPE$1 & 31;
				label$741:;
				fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$269$4 * 28)) + 16) << (2 & 31))), 0, 0 );
			}
			goto label$348;
			label$350:;
			{
				fb_StrAssign( (void*)&S$1, -1, *(void**)DTYPENAME$, 0, 0 );
			}
			label$348:;
		}
		goto label$342;
		label$352:;
		{
			PTRCOUNT$1 = PTRCOUNT$1 + -1;
			FBSTRING* vr$16 = HEMITPROCHEADER( SUBTYPE$1, -1, -1 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$16, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"*", 2, 0 );
		}
		goto label$342;
		label$353:;
		{
			int32 TMP$270$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$354;
			TMP$270$3 = 24;
			goto label$742;
			label$354:;
			TMP$270$3 = DTYPE$1 & 31;
			label$742:;
			fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$270$3 * 28)) + 16) << (2 & 31))), 0, 0 );
		}
		goto label$342;
		label$355:;
		{
			fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + 12), 0, 0 );
		}
		goto label$342;
		label$356:;
		{
			fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + (DTYPE$1 << (2 & 31))), 0, 0 );
		}
		goto label$342;
		label$343:;
		static const void* tmp$585[23] = {
			&&label$344,
			&&label$356,
			&&label$356,
			&&label$356,
			&&label$353,
			&&label$356,
			&&label$356,
			&&label$353,
			&&label$356,
			&&label$356,
			&&label$347,
			&&label$356,
			&&label$356,
			&&label$356,
			&&label$356,
			&&label$356,
			&&label$356,
			&&label$356,
			&&label$355,
			&&label$356,
			&&label$347,
			&&label$356,
			&&label$352,
		};
		if( TMP$267$2 > 22u ) goto label$356;
		goto *tmp$585[TMP$267$2 - 0u];
		label$342:;
	}
	if( PTRCOUNT$1 <= 0 ) goto label$358;
	{
		FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"*", 1 );
		FBSTRING* vr$28 = fb_StrFill2( PTRCOUNT$1, (FBSTRING*)vr$27 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$28, -1, 0 );
	}
	label$358:;
	label$357:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$341:;
	FBSTRING* vr$34 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$34;
}

static FBSTRING* HEMITINT( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$359:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	{
		if( DTYPE$1 == 8 ) goto label$363;
		label$364:;
		if( DTYPE$1 == 9 ) goto label$363;
		label$365:;
		if( DTYPE$1 == 11 ) goto label$363;
		label$366:;
		if( DTYPE$1 == 12 ) goto label$363;
		label$367:;
		if( DTYPE$1 != 10 ) goto label$362;
		label$363:;
		{
			FBSTRING* vr$2 = fb_IntToStr( VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$2, -1, 0 );
		}
		goto label$361;
		label$362:;
		{
			if( (DTYPE$1 & 480) == 0 ) goto label$370;
			{
				fb_StrAssign( (void*)&S$1, -1, (void*)"inttoptr ", 10, 0 );
			}
			goto label$369;
			label$370:;
			{
				fb_StrAssign( (void*)&S$1, -1, (void*)"trunc ", 7, 0 );
			}
			label$369:;
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"(", 2, 0 );
			FBSTRING* vr$8 = HEMITTYPE( 8, (struct $8FBSYMBOL*)0u );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$8, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)" ", 2, 0 );
			FBSTRING* vr$11 = fb_IntToStr( VALUE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$11, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)" to ", 5, 0 );
			FBSTRING* vr$14 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$14, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)")", 2, 0 );
		}
		label$368:;
		label$361:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$360:;
	FBSTRING* vr$21 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$21;
}

static FBSTRING* HEMITLONG( int64 VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$371:;
	FBSTRING* vr$1 = fb_LongintToStr( VALUE$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$372:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HEMITFLOAT( double VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$373:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"0x", 3, 0 );
	FBSTRING* vr$2 = fb_HEXEx_l( *(uint64*)&VALUE$1, 16 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$374:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static int32 HISFIXLENSTR( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$375:;
	if( *(int32*)SYM$1 != 1 ) goto label$378;
	{
		{
			int32 TMP$277$3;
			TMP$277$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$277$3 == 18 ) goto label$381;
			label$382:;
			if( TMP$277$3 == 4 ) goto label$381;
			label$383:;
			if( TMP$277$3 != 7 ) goto label$380;
			label$381:;
			{
				fb$result$1 = -1;
				goto label$376;
			}
			label$380:;
			label$379:;
		}
	}
	label$378:;
	label$377:;
	fb$result$1 = 0;
	goto label$376;
	label$376:;
	return fb$result$1;
}

static FBSTRING* HVREGTOSTR( struct $6IRVREG* V$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$384:;
	{
		uint32 TMP$278$2;
		TMP$278$2 = *(uint32*)V$1;
		goto label$387;
		label$388:;
		{
			int32 TMP$279$3;
			int32 TMP$280$3;
			if( (*(int32*)((uint8*)V$1 + 4) & 480) == 0 ) goto label$389;
			TMP$279$3 = 24;
			goto label$743;
			label$389:;
			TMP$279$3 = *(int32*)((uint8*)V$1 + 4) & 31;
			label$743:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$279$3 * 28)) != 1 ) goto label$391;
			{
				FBSTRING* vr$8 = HEMITFLOAT( *(double*)((uint8*)V$1 + 24) );
				fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$8, -1, 0 );
				goto label$385;
			}
			label$391:;
			label$390:;
			if( (*(int32*)((uint8*)V$1 + 4) & 480) == 0 ) goto label$392;
			TMP$280$3 = 24;
			goto label$744;
			label$392:;
			TMP$280$3 = *(int32*)((uint8*)V$1 + 4) & 31;
			label$744:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$280$3 * 28)) + 4) != 8 ) goto label$394;
			{
				FBSTRING* vr$16 = HEMITLONG( *(int64*)((uint8*)V$1 + 24) );
				fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$16, -1, 0 );
				goto label$385;
			}
			label$394:;
			label$393:;
			FBSTRING* vr$22 = HEMITINT( *(int32*)((uint8*)V$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V$1 + 8), (int32)*(int64*)((uint8*)V$1 + 24) );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$22, -1, 0 );
			goto label$385;
		}
		goto label$386;
		label$395:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)V$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$397;
			{
				FBSTRING TMP$282$4;
				FBSTRING* vr$26 = fb_IntToStr( *(int32*)((uint8*)V$1 + 12) );
				__builtin_memset( &TMP$282$4, 0, 12 );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$282$4, (void*)"%vr", 4, (void*)vr$26, -1 );
				fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$29, -1, 0 );
				goto label$385;
			}
			label$397:;
			label$396:;
		}
		goto label$386;
		label$387:;
		static const void* tmp$586[5] = {
			&&label$388,
			&&label$386,
			&&label$386,
			&&label$386,
			&&label$395,
		};
		if( TMP$278$2 > 4u ) goto label$386;
		goto *tmp$586[TMP$278$2 - 0u];
		label$386:;
	}
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)V$1 + 32);
	int32 vr$32 = HISFIXLENSTR( SYM$1 );
	if( vr$32 == 0 ) goto label$399;
	{
		FBSTRING TMP$285$2;
		FBSTRING TMP$286$2;
		FBSTRING S$2;
		fb_StrInit( (void*)&S$2, -1, (void*)"bitcast (", 10, 0 );
		FBSTRING* vr$34 = HEMITSYMTYPE( SYM$1 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)vr$34, -1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)"* ", 3, 0 );
		uint8* vr$37 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$285$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$285$2, (void*)&S$2, -1, (void*)vr$37, 0 );
		fb_StrAssign( (void*)&S$2, -1, (void*)vr$41, -1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)" to ", 5, 0 );
		FBSTRING* vr$61 = HEMITTYPE( ((((*(int32*)((uint8*)SYM$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)SYM$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)SYM$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)SYM$1 + 28) & 511) & 32505856), (struct $8FBSYMBOL*)0u );
		__builtin_memset( &TMP$286$2, 0, 12 );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$286$2, (void*)&S$2, -1, (void*)vr$61, -1 );
		fb_StrAssign( (void*)&S$2, -1, (void*)vr$65, -1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)")", 2, 0 );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)&S$2, -1, 0 );
		fb_StrDelete( (FBSTRING*)&S$2 );
		goto label$385;
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$399:;
	label$398:;
	uint8* vr$72 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$72, 0, 0 );
	goto label$385;
	label$385:;
	FBSTRING* vr$75 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$75;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$288$1;
	FBSTRING TMP$289$1;
	FBSTRING TMP$291$1;
	FBSTRING TMP$292$1;
	label$400:;
	__builtin_memset( &TMP$289$1, 0, 12 );
	FBSTRING* vr$1 = HSYMNAME( LABEL$1 );
	__builtin_memset( &TMP$288$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$288$1, (void*)"label ", 7, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$289$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$289$1 );
	fb_StrDelete( (FBSTRING*)&TMP$289$1 );
	__builtin_memset( &TMP$292$1, 0, 12 );
	uint8* vr$9 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$291$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$291$1, (void*)"br label %", 11, (void*)vr$9, 0 );
	fb_StrAssign( (void*)&TMP$292$1, -1, (void*)vr$12, -1, 0 );
	HWRITELINE( &TMP$292$1 );
	fb_StrDelete( (FBSTRING*)&TMP$292$1 );
	uint8* vr$16 = SYMBGETMANGLEDNAME( LABEL$1 );
	HWRITELABEL( vr$16 );
	label$401:;
}

static uint8* HGETBOPCODE( int32 OP$1, int32 DTYPE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$402:;
	{
		uint32 TMP$293$2;
		TMP$293$2 = (uint32)OP$1;
		goto label$405;
		label$406:;
		{
			int32 TMP$294$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$407;
			TMP$294$3 = 24;
			goto label$745;
			label$407:;
			TMP$294$3 = DTYPE$1 & 31;
			label$745:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$294$3 * 28)) != 1 ) goto label$409;
			{
				fb$result$1 = (uint8*)"fadd";
			}
			goto label$408;
			label$409:;
			{
				fb$result$1 = (uint8*)"add";
			}
			label$408:;
		}
		goto label$404;
		label$410:;
		{
			int32 TMP$297$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$411;
			TMP$297$3 = 24;
			goto label$746;
			label$411:;
			TMP$297$3 = DTYPE$1 & 31;
			label$746:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$297$3 * 28)) != 1 ) goto label$413;
			{
				fb$result$1 = (uint8*)"fsub";
			}
			goto label$412;
			label$413:;
			{
				fb$result$1 = (uint8*)"sub";
			}
			label$412:;
		}
		goto label$404;
		label$414:;
		{
			int32 TMP$300$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$415;
			TMP$300$3 = 24;
			goto label$747;
			label$415:;
			TMP$300$3 = DTYPE$1 & 31;
			label$747:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$300$3 * 28)) != 1 ) goto label$417;
			{
				fb$result$1 = (uint8*)"fmul";
			}
			goto label$416;
			label$417:;
			{
				fb$result$1 = (uint8*)"mul";
			}
			label$416:;
		}
		goto label$404;
		label$418:;
		{
			fb$result$1 = (uint8*)"fdiv";
		}
		goto label$404;
		label$419:;
		{
			fb$result$1 = (uint8*)"sdiv";
		}
		goto label$404;
		label$420:;
		{
			int32 TMP$305$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$421;
			TMP$305$3 = 24;
			goto label$748;
			label$421:;
			TMP$305$3 = DTYPE$1 & 31;
			label$748:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$305$3 * 28)) != 1 ) goto label$423;
			{
				fb$result$1 = (uint8*)"frem";
			}
			goto label$422;
			label$423:;
			{
				fb$result$1 = (uint8*)"srem";
			}
			label$422:;
		}
		goto label$404;
		label$424:;
		{
			fb$result$1 = (uint8*)"shl";
		}
		goto label$404;
		label$425:;
		{
			fb$result$1 = (uint8*)"ashr";
		}
		goto label$404;
		label$426:;
		{
			fb$result$1 = (uint8*)"and";
		}
		goto label$404;
		label$427:;
		{
			fb$result$1 = (uint8*)"or";
		}
		goto label$404;
		label$428:;
		{
			fb$result$1 = (uint8*)"xor";
		}
		goto label$404;
		label$429:;
		{
			fb$result$1 = (uint8*)"icmp eq";
		}
		goto label$404;
		label$430:;
		{
			fb$result$1 = (uint8*)"icmp ne";
		}
		goto label$404;
		label$431:;
		{
			fb$result$1 = (uint8*)"icmp sgt";
		}
		goto label$404;
		label$432:;
		{
			fb$result$1 = (uint8*)"icmp slt";
		}
		goto label$404;
		label$433:;
		{
			fb$result$1 = (uint8*)"icmp sge";
		}
		goto label$404;
		label$434:;
		{
			fb$result$1 = (uint8*)"icmp sle";
		}
		goto label$404;
		label$435:;
		{
			fb$result$1 = (uint8*)"eqv";
		}
		goto label$404;
		label$436:;
		{
			fb$result$1 = (uint8*)"imp";
		}
		goto label$404;
		label$405:;
		static const void* tmp$587[23] = {
			&&label$406,
			&&label$410,
			&&label$414,
			&&label$418,
			&&label$419,
			&&label$420,
			&&label$426,
			&&label$427,
			&&label$404,
			&&label$404,
			&&label$428,
			&&label$435,
			&&label$436,
			&&label$424,
			&&label$425,
			&&label$404,
			&&label$404,
			&&label$429,
			&&label$431,
			&&label$432,
			&&label$430,
			&&label$433,
			&&label$434,
		};
		if( (TMP$293$2 - 28u) > 22u ) goto label$404;
		goto *tmp$587[TMP$293$2 - 28u];
		label$404:;
	}
	label$403:;
	return fb$result$1;
}

static void HLOADOPERANDSANDWRITEBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	FBSTRING TMP$321$1;
	label$437:;
	HLOADVREG( V1$1 );
	HLOADVREG( V2$1 );
	_SETVREGDATATYPE( V1$1, DTYPE$1, SUBTYPE$1 );
	_SETVREGDATATYPE( V2$1, DTYPE$1, SUBTYPE$1 );
	FBSTRING LN$1;
	FBSTRING* vr$0 = HVREGTOSTR( VR$1 );
	fb_StrInit( (void*)&LN$1, -1, (void*)vr$0, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = ", 4, 0 );
	uint8* vr$3 = HGETBOPCODE( OP$1, DTYPE$1 );
	__builtin_memset( &TMP$321$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$321$1, (void*)&LN$1, -1, (void*)vr$3, 0 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$7, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	FBSTRING* vr$10 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$10, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	FBSTRING* vr$13 = HVREGTOSTR( V1$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$13, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
	FBSTRING* vr$16 = HVREGTOSTR( V2$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$16, -1, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$438:;
}

static void HEMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$439:;
	if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$442;
	{
		FBSTRING TMP$323$2;
		FBSTRING TMP$325$2;
		FBSTRING TMP$326$2;
		struct $6IRVREG* vr$0 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
		VR$1 = vr$0;
		HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
		FBSTRING FALSELABEL$2;
		uint8* vr$3 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&FALSELABEL$2, -1, (void*)vr$3, 0, 0 );
		FBSTRING LN$2;
		FBSTRING* vr$5 = HVREGTOSTR( VR$1 );
		__builtin_memset( &TMP$323$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$323$2, (void*)"br i1 ", 7, (void*)vr$5, -1 );
		fb_StrInit( (void*)&LN$2, -1, (void*)vr$8, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)", ", 3, 0 );
		uint8* vr$11 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$325$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$325$2, (void*)"label %", 8, (void*)vr$11, 0 );
		__builtin_memset( &TMP$326$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$326$2, (void*)&LN$2, -1, (void*)vr$14, -1 );
		fb_StrAssign( (void*)&LN$2, -1, (void*)vr$18, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)", ", 3, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)"label %", 8, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)&FALSELABEL$2, -1, 0 );
		HWRITELINE( &LN$2 );
		HWRITELABEL( (uint8*)*(uint8**)&FALSELABEL$2 );
		fb_StrDelete( (FBSTRING*)&LN$2 );
		fb_StrDelete( (FBSTRING*)&FALSELABEL$2 );
		goto label$440;
		fb_StrDelete( (FBSTRING*)&LN$2 );
		fb_StrDelete( (FBSTRING*)&FALSELABEL$2 );
	}
	label$442:;
	label$441:;
	int32 ISSELF$1;
	ISSELF$1 = 0;
	struct $6IRVREG V1ORIG$1;
	__builtin_memset( &V1ORIG$1, 0, 72 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$444;
	{
		ISSELF$1 = -1;
		struct $6IRVREG* vr$32 = IRHLALLOCVREG( *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
		VR$1 = vr$32;
		__builtin_memcpy( &V1ORIG$1, V1$1, 72 );
	}
	label$444:;
	label$443:;
	HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
	if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 8) == 0 ) goto label$446;
	{
		FBSTRING TMP$329$2;
		struct $6IRVREG* VTEMP$2;
		struct $6IRVREG* vr$40 = IRHLALLOCVREG( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
		VTEMP$2 = vr$40;
		FBSTRING LN$2;
		FBSTRING* vr$41 = HVREGTOSTR( VTEMP$2 );
		fb_StrInit( (void*)&LN$2, -1, (void*)vr$41, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)" = sext ", 9, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)"i1 ", 4, 0 );
		FBSTRING* vr$45 = HVREGTOSTR( VR$1 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)vr$45, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)" to ", 5, 0 );
		FBSTRING* vr$50 = HEMITTYPE( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
		__builtin_memset( &TMP$329$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$329$2, (void*)&LN$2, -1, (void*)vr$50, -1 );
		fb_StrAssign( (void*)&LN$2, -1, (void*)vr$54, -1, 0 );
		HWRITELINE( &LN$2 );
		__builtin_memcpy( VR$1, VTEMP$2, 72 );
		fb_StrDelete( (FBSTRING*)&LN$2 );
	}
	label$446:;
	label$445:;
	if( ISSELF$1 == 0 ) goto label$448;
	{
		HEMITSTORE( &V1ORIG$1, VR$1 );
	}
	label$448:;
	label$447:;
	label$440:;
}

static void _EMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$330$1;
	FBSTRING TMP$331$1;
	FBSTRING TMP$332$1;
	FBSTRING TMP$333$1;
	label$449:;
	FBSTRING BOPDUMP$1;
	FBSTRING* vr$0 = VREGPRETTY( V2$1 );
	FBSTRING* vr$1 = ASTDUMPOPTOSTR( OP$1 );
	FBSTRING* vr$2 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$330$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$330$1, (void*)vr$2, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$331$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$331$1, (void*)vr$5, -1, (void*)vr$1, -1 );
	__builtin_memset( &TMP$332$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$332$1, (void*)vr$8, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$333$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$333$1, (void*)vr$11, -1, (void*)vr$0, -1 );
	fb_StrInit( (void*)&BOPDUMP$1, -1, (void*)vr$14, -1, 0 );
	if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$452;
	{
		FBSTRING TMP$335$2;
		FBSTRING TMP$336$2;
		__builtin_memset( &TMP$336$2, 0, 12 );
		__builtin_memset( &TMP$335$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$335$2, (void*)"branchbop ", 11, (void*)&BOPDUMP$1, -1 );
		fb_StrAssign( (void*)&TMP$336$2, -1, (void*)vr$20, -1, 0 );
		HASTCOMMAND( &TMP$336$2 );
		fb_StrDelete( (FBSTRING*)&TMP$336$2 );
	}
	goto label$451;
	label$452:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$453;
	{
		FBSTRING TMP$338$2;
		FBSTRING TMP$339$2;
		__builtin_memset( &TMP$339$2, 0, 12 );
		__builtin_memset( &TMP$338$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$338$2, (void*)"selfbop ", 9, (void*)&BOPDUMP$1, -1 );
		fb_StrAssign( (void*)&TMP$339$2, -1, (void*)vr$28, -1, 0 );
		HASTCOMMAND( &TMP$339$2 );
		fb_StrDelete( (FBSTRING*)&TMP$339$2 );
	}
	goto label$451;
	label$453:;
	{
		FBSTRING TMP$341$2;
		FBSTRING TMP$342$2;
		__builtin_memset( &TMP$342$2, 0, 12 );
		__builtin_memset( &TMP$341$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$341$2, (void*)"bop ", 5, (void*)&BOPDUMP$1, -1 );
		fb_StrAssign( (void*)&TMP$342$2, -1, (void*)vr$36, -1, 0 );
		HASTCOMMAND( &TMP$342$2 );
		fb_StrDelete( (FBSTRING*)&TMP$342$2 );
	}
	label$451:;
	HEMITBOP( OP$1, V1$1, V2$1, VR$1, LABEL$1 );
	fb_StrDelete( (FBSTRING*)&BOPDUMP$1 );
	label$450:;
}

static void HBUILTINUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$454:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	HLOADVREG( V1$1 );
	FBSTRING* vr$1 = HVREGTOSTR( VR$1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$1, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = call ", 9, 0 );
	if( *(int32*)((uint8*)V1$1 + 4) != 15 ) goto label$457;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"float @llvm.", 13, 0 );
		{
			if( OP$1 != 56 ) goto label$459;
			label$460:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 116) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"fabs", 5, 0 );
			}
			goto label$458;
			label$459:;
			if( OP$1 != 58 ) goto label$461;
			label$462:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 20) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"sin", 4, 0 );
			}
			goto label$458;
			label$461:;
			if( OP$1 != 60 ) goto label$463;
			label$464:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 36) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"cos", 4, 0 );
			}
			goto label$458;
			label$463:;
			if( OP$1 != 69 ) goto label$465;
			label$466:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 52) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"exp", 4, 0 );
			}
			goto label$458;
			label$465:;
			if( OP$1 != 68 ) goto label$467;
			label$468:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 68) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"log", 4, 0 );
			}
			goto label$458;
			label$467:;
			if( OP$1 != 65 ) goto label$469;
			label$470:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 84) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"sqrt", 5, 0 );
			}
			goto label$458;
			label$469:;
			if( OP$1 != 70 ) goto label$471;
			label$472:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 100) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"floor", 6, 0 );
			}
			goto label$458;
			label$471:;
			{
			}
			label$473:;
			label$458:;
		}
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)".f32(float ", 12, 0 );
	}
	goto label$456;
	label$457:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"double @llvm.", 14, 0 );
		{
			if( OP$1 != 56 ) goto label$475;
			label$476:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 124) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"fabs", 5, 0 );
			}
			goto label$474;
			label$475:;
			if( OP$1 != 58 ) goto label$477;
			label$478:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 28) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"sin", 4, 0 );
			}
			goto label$474;
			label$477:;
			if( OP$1 != 60 ) goto label$479;
			label$480:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 44) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"cos", 4, 0 );
			}
			goto label$474;
			label$479:;
			if( OP$1 != 69 ) goto label$481;
			label$482:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 60) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"exp", 4, 0 );
			}
			goto label$474;
			label$481:;
			if( OP$1 != 68 ) goto label$483;
			label$484:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 76) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"log", 4, 0 );
			}
			goto label$474;
			label$483:;
			if( OP$1 != 65 ) goto label$485;
			label$486:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 92) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"sqrt", 5, 0 );
			}
			goto label$474;
			label$485:;
			if( OP$1 != 70 ) goto label$487;
			label$488:;
			{
				*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 108) = -1;
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"floor", 6, 0 );
			}
			goto label$474;
			label$487:;
			{
			}
			label$489:;
			label$474:;
		}
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)".f64(double ", 13, 0 );
	}
	label$456:;
	FBSTRING* vr$23 = HVREGTOSTR( V1$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$23, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)")", 2, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$455:;
}

static void _EMITUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$355$1;
	FBSTRING TMP$356$1;
	label$490:;
	FBSTRING UOPDUMP$1;
	FBSTRING* vr$0 = VREGPRETTY( V1$1 );
	FBSTRING* vr$1 = ASTDUMPOPTOSTR( OP$1 );
	__builtin_memset( &TMP$355$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$355$1, (void*)vr$1, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$356$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$356$1, (void*)vr$4, -1, (void*)vr$0, -1 );
	fb_StrInit( (void*)&UOPDUMP$1, -1, (void*)vr$7, -1, 0 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$493;
	{
		FBSTRING TMP$358$2;
		FBSTRING TMP$359$2;
		__builtin_memset( &TMP$359$2, 0, 12 );
		__builtin_memset( &TMP$358$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$358$2, (void*)"selfuop ", 9, (void*)&UOPDUMP$1, -1 );
		fb_StrAssign( (void*)&TMP$359$2, -1, (void*)vr$13, -1, 0 );
		HASTCOMMAND( &TMP$359$2 );
		fb_StrDelete( (FBSTRING*)&TMP$359$2 );
	}
	goto label$492;
	label$493:;
	{
		FBSTRING TMP$361$2;
		FBSTRING TMP$362$2;
		__builtin_memset( &TMP$362$2, 0, 12 );
		__builtin_memset( &TMP$361$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$361$2, (void*)"uop ", 5, (void*)&UOPDUMP$1, -1 );
		fb_StrAssign( (void*)&TMP$362$2, -1, (void*)vr$21, -1, 0 );
		HASTCOMMAND( &TMP$362$2 );
		fb_StrDelete( (FBSTRING*)&TMP$362$2 );
	}
	label$492:;
	{
		if( OP$1 != 54 ) goto label$495;
		label$496:;
		{
			struct $6IRVREG V1ORIG$3;
			__builtin_memset( &V1ORIG$3, 0, 72 );
			int32 ISSELF$3;
			ISSELF$3 = 0;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$498;
			{
				ISSELF$3 = -1;
				struct $6IRVREG* vr$28 = IRHLALLOCVREG( *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
				VR$1 = vr$28;
				__builtin_memcpy( &V1ORIG$3, V1$1, 72 );
			}
			label$498:;
			label$497:;
			struct $6IRVREG* ZERO$3;
			struct $6IRVREG* vr$30 = IRHLALLOCVRIMM( 8, (struct $8FBSYMBOL*)0u, 0ll );
			ZERO$3 = vr$30;
			HEMITBOP( 29, ZERO$3, V1$1, VR$1, (struct $8FBSYMBOL*)0u );
			if( ISSELF$3 == 0 ) goto label$500;
			{
				HEMITSTORE( &V1ORIG$3, VR$1 );
			}
			label$500:;
			label$499:;
		}
		goto label$494;
		label$495:;
		if( OP$1 != 52 ) goto label$501;
		label$502:;
		{
			struct $6IRVREG* MINUSONE$3;
			struct $6IRVREG* vr$32 = IRHLALLOCVRIMM( 8, (struct $8FBSYMBOL*)0u, -1ll );
			MINUSONE$3 = vr$32;
			HEMITBOP( 38, V1$1, MINUSONE$3, VR$1, (struct $8FBSYMBOL*)0u );
		}
		goto label$494;
		label$501:;
		{
			HBUILTINUOP( OP$1, V1$1, VR$1 );
		}
		label$503:;
		label$494:;
	}
	fb_StrDelete( (FBSTRING*)&UOPDUMP$1 );
	label$491:;
}

static uint8* HGETCONVOPCODE( int32 LDTYPE$1, int32 RDTYPE$1 )
{
	int32 TMP$363$1;
	int32 TMP$376$1;
	int32 TMP$384$1;
	int32 TMP$385$1;
	int32 TMP$388$1;
	int32 TMP$389$1;
	int32 TMP$391$1;
	uint8* TMP$394$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$504:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$506;
	TMP$363$1 = 24;
	goto label$749;
	label$506:;
	TMP$363$1 = LDTYPE$1 & 31;
	label$749:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$363$1 * 28)) != 1 ) goto label$508;
	{
		int32 TMP$364$2;
		int32 TMP$372$2;
		uint8* TMP$375$2;
		if( (RDTYPE$1 & 480) == 0 ) goto label$509;
		TMP$364$2 = 24;
		goto label$750;
		label$509:;
		TMP$364$2 = RDTYPE$1 & 31;
		label$750:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$364$2 * 28)) != 1 ) goto label$511;
		{
			int32 TMP$365$3;
			int32 TMP$366$3;
			int32 TMP$367$3;
			int32 TMP$368$3;
			uint8* TMP$371$3;
			if( (LDTYPE$1 & 480) == 0 ) goto label$512;
			TMP$365$3 = 24;
			goto label$751;
			label$512:;
			TMP$365$3 = LDTYPE$1 & 31;
			label$751:;
			if( (RDTYPE$1 & 480) == 0 ) goto label$513;
			TMP$366$3 = 24;
			goto label$752;
			label$513:;
			TMP$366$3 = RDTYPE$1 & 31;
			label$752:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$365$3 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$366$3 * 28)) + 4) ) goto label$515;
			{
				fb$result$1 = (uint8*)0u;
				goto label$505;
			}
			label$515:;
			label$514:;
			if( (LDTYPE$1 & 480) == 0 ) goto label$516;
			TMP$367$3 = 24;
			goto label$753;
			label$516:;
			TMP$367$3 = LDTYPE$1 & 31;
			label$753:;
			if( (RDTYPE$1 & 480) == 0 ) goto label$517;
			TMP$368$3 = 24;
			goto label$754;
			label$517:;
			TMP$368$3 = RDTYPE$1 & 31;
			label$754:;
			if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$367$3 * 28)) + 4) >= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$368$3 * 28)) + 4) ) goto label$518;
			TMP$371$3 = (uint8*)"fptrunc";
			goto label$755;
			label$518:;
			TMP$371$3 = (uint8*)"fpext";
			label$755:;
			fb$result$1 = TMP$371$3;
			goto label$505;
		}
		label$511:;
		label$510:;
		if( (RDTYPE$1 & 480) == 0 ) goto label$519;
		TMP$372$2 = 24;
		goto label$756;
		label$519:;
		TMP$372$2 = RDTYPE$1 & 31;
		label$756:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$372$2 * 28)) + 8) == 0 ) goto label$520;
		TMP$375$2 = (uint8*)"sitofp";
		goto label$757;
		label$520:;
		TMP$375$2 = (uint8*)"uitofp";
		label$757:;
		fb$result$1 = TMP$375$2;
		goto label$505;
	}
	label$508:;
	label$507:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$521;
	TMP$376$1 = 24;
	goto label$758;
	label$521:;
	TMP$376$1 = RDTYPE$1 & 31;
	label$758:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$376$1 * 28)) != 1 ) goto label$523;
	{
		int32 TMP$377$2;
		uint8* TMP$380$2;
		if( (LDTYPE$1 & 480) == 0 ) goto label$524;
		TMP$377$2 = 24;
		goto label$759;
		label$524:;
		TMP$377$2 = LDTYPE$1 & 31;
		label$759:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$377$2 * 28)) + 8) == 0 ) goto label$525;
		TMP$380$2 = (uint8*)"fptosi";
		goto label$760;
		label$525:;
		TMP$380$2 = (uint8*)"fptoui";
		label$760:;
		fb$result$1 = TMP$380$2;
		goto label$505;
	}
	label$523:;
	label$522:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$527;
	{
		if( (RDTYPE$1 & 480) == 0 ) goto label$529;
		{
			fb$result$1 = (uint8*)"bitcast";
			goto label$505;
		}
		label$529:;
		label$528:;
		fb$result$1 = (uint8*)"inttoptr";
		goto label$505;
	}
	goto label$526;
	label$527:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$530;
	{
		fb$result$1 = (uint8*)"ptrtoint";
		goto label$505;
	}
	label$530:;
	label$526:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$531;
	TMP$384$1 = 24;
	goto label$761;
	label$531:;
	TMP$384$1 = LDTYPE$1 & 31;
	label$761:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$532;
	TMP$385$1 = 24;
	goto label$762;
	label$532:;
	TMP$385$1 = RDTYPE$1 & 31;
	label$762:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$384$1 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$385$1 * 28)) + 4) ) goto label$534;
	{
		int32 TMP$386$2;
		int32 TMP$387$2;
		if( (LDTYPE$1 & 480) == 0 ) goto label$535;
		TMP$386$2 = 24;
		goto label$763;
		label$535:;
		TMP$386$2 = LDTYPE$1 & 31;
		label$763:;
		if( (RDTYPE$1 & 480) == 0 ) goto label$536;
		TMP$387$2 = 24;
		goto label$764;
		label$536:;
		TMP$387$2 = RDTYPE$1 & 31;
		label$764:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$386$2 * 28)) + 20) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$387$2 * 28)) + 20) ) goto label$538;
		{
			fb$result$1 = (uint8*)0u;
			goto label$505;
		}
		label$538:;
		label$537:;
		fb$result$1 = (uint8*)"bitcast";
		goto label$505;
	}
	label$534:;
	label$533:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$539;
	TMP$388$1 = 24;
	goto label$765;
	label$539:;
	TMP$388$1 = LDTYPE$1 & 31;
	label$765:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$540;
	TMP$389$1 = 24;
	goto label$766;
	label$540:;
	TMP$389$1 = RDTYPE$1 & 31;
	label$766:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$388$1 * 28)) + 4) >= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$389$1 * 28)) + 4) ) goto label$542;
	{
		fb$result$1 = (uint8*)"trunc";
		goto label$505;
	}
	label$542:;
	label$541:;
	if( (LDTYPE$1 & 480) == 0 ) goto label$543;
	TMP$391$1 = 24;
	goto label$767;
	label$543:;
	TMP$391$1 = LDTYPE$1 & 31;
	label$767:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$391$1 * 28)) + 8) == 0 ) goto label$544;
	TMP$394$1 = (uint8*)"sext";
	goto label$768;
	label$544:;
	TMP$394$1 = (uint8*)"zext";
	label$768:;
	fb$result$1 = TMP$394$1;
	goto label$505;
	label$505:;
	return fb$result$1;
}

static void HEMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$395$1;
	int32 TMP$396$1;
	FBSTRING TMP$400$1;
	FBSTRING TMP$401$1;
	FBSTRING TMP$402$1;
	FBSTRING TMP$403$1;
	FBSTRING TMP$404$1;
	label$545:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$547;
	TMP$395$1 = 24;
	goto label$769;
	label$547:;
	TMP$395$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$769:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$548;
	TMP$396$1 = 24;
	goto label$770;
	label$548:;
	TMP$396$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$770:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$395$1 * 28)) == 1) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$396$1 * 28)) == 0)) == 0 ) goto label$550;
	{
		FBSTRING TMP$397$2;
		struct $6IRVREG* V0$2;
		struct $6IRVREG* vr$15 = IRHLALLOCVREG( *(int32*)((uint8*)V2$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) );
		V0$2 = vr$15;
		HLOADVREG( V2$1 );
		FBSTRING LN$2;
		FBSTRING* vr$16 = HVREGTOSTR( V0$2 );
		__builtin_memset( &TMP$397$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$397$2, (void*)vr$16, -1, (void*)" = call ", 9 );
		fb_StrInit( (void*)&LN$2, -1, (void*)vr$19, -1, 0 );
		if( *(int32*)((uint8*)V2$1 + 4) != 15 ) goto label$552;
		{
			*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 132) = -1;
			fb_StrConcatAssign( (void*)&LN$2, -1, (void*)"float @llvm.nearbyint.f32(float ", 33, 0 );
		}
		goto label$551;
		label$552:;
		{
			*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 140) = -1;
			fb_StrConcatAssign( (void*)&LN$2, -1, (void*)"double @llvm.nearbyint.f64(double ", 35, 0 );
		}
		label$551:;
		FBSTRING* vr$24 = HVREGTOSTR( V2$1 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)vr$24, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1, (void*)")", 2, 0 );
		HWRITELINE( &LN$2 );
		__builtin_memcpy( V2$1, V0$2, 72 );
		fb_StrDelete( (FBSTRING*)&LN$2 );
	}
	label$550:;
	label$549:;
	uint8* OP$1;
	uint8* vr$31 = HGETCONVOPCODE( *(int32*)((uint8*)V1$1 + 4), *(int32*)((uint8*)V2$1 + 4) );
	OP$1 = vr$31;
	if( OP$1 != (uint8*)0u ) goto label$554;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		goto label$546;
	}
	label$554:;
	label$553:;
	struct $6IRVREG* V0$1;
	__builtin_memset( &V0$1, 0, 4 );
	if( *(int32*)V1$1 != 4 ) goto label$556;
	{
		V0$1 = V1$1;
	}
	goto label$555;
	label$556:;
	{
		struct $6IRVREG* vr$36 = IRHLALLOCVREG( *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
		V0$1 = vr$36;
	}
	label$555:;
	HLOADVREG( V2$1 );
	FBSTRING LN$1;
	FBSTRING* vr$37 = HVREGTOSTR( V0$1 );
	__builtin_memset( &TMP$400$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$400$1, (void*)vr$37, -1, (void*)" = ", 4 );
	__builtin_memset( &TMP$401$1, 0, 12 );
	FBSTRING* vr$43 = fb_StrConcat( &TMP$401$1, (void*)vr$40, -1, (void*)OP$1, 0 );
	__builtin_memset( &TMP$402$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$402$1, (void*)vr$43, -1, (void*)" ", 2 );
	fb_StrInit( (void*)&LN$1, -1, (void*)vr$46, -1, 0 );
	FBSTRING* vr$50 = HEMITTYPE( *(int32*)((uint8*)V2$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) );
	__builtin_memset( &TMP$403$1, 0, 12 );
	FBSTRING* vr$54 = fb_StrConcat( &TMP$403$1, (void*)&LN$1, -1, (void*)vr$50, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$54, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	FBSTRING* vr$57 = HVREGTOSTR( V2$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$57, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" to ", 5, 0 );
	FBSTRING* vr$62 = HEMITTYPE( *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
	__builtin_memset( &TMP$404$1, 0, 12 );
	FBSTRING* vr$66 = fb_StrConcat( &TMP$404$1, (void*)&LN$1, -1, (void*)vr$62, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$66, -1, 0 );
	HWRITELINE( &LN$1 );
	if( *(int32*)V1$1 == 4 ) goto label$558;
	{
		HEMITSTORE( V1$1, V0$1 );
	}
	label$558:;
	label$557:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$546:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	FBSTRING TMP$407$1;
	FBSTRING TMP$408$1;
	FBSTRING TMP$409$1;
	FBSTRING TMP$410$1;
	label$559:;
	__builtin_memset( &TMP$410$1, 0, 12 );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	FBSTRING* vr$2 = VREGPRETTY( V2$1 );
	__builtin_memset( &TMP$407$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$407$1, (void*)"conv ", 6, (void*)vr$2, -1 );
	__builtin_memset( &TMP$408$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$408$1, (void*)vr$5, -1, (void*)" => ", 5 );
	__builtin_memset( &TMP$409$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$409$1, (void*)vr$8, -1, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$410$1, -1, (void*)vr$11, -1, 0 );
	HASTCOMMAND( &TMP$410$1 );
	fb_StrDelete( (FBSTRING*)&TMP$410$1 );
	HEMITCONVERT( V1$1, V2$1 );
	label$560:;
}

static void HEMITSTORE( struct $6IRVREG* L$1, struct $6IRVREG* R$1 )
{
	FBSTRING TMP$411$1;
	FBSTRING TMP$412$1;
	FBSTRING TMP$413$1;
	FBSTRING TMP$414$1;
	label$561:;
	HLOADVREG( R$1 );
	_SETVREGDATATYPE( R$1, *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
	HPREPAREADDRESS( L$1 );
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1, (void*)"store ", 7, 0 );
	FBSTRING* vr$18 = HEMITTYPE( (((*(int32*)((uint8*)L$1 + 4) & 31) | ((*(int32*)((uint8*)L$1 + 4) & 480) + -32)) | (((*(int32*)((uint8*)L$1 + 4) & 261632) >> (1 & 31)) & 261632)) | (*(int32*)((uint8*)L$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
	__builtin_memset( &TMP$411$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$411$1, (void*)vr$18, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$412$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$412$1, (void*)&LN$1, -1, (void*)vr$21, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$25, -1, 0 );
	FBSTRING* vr$27 = HVREGTOSTR( R$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$27, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
	FBSTRING* vr$32 = HEMITTYPE( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
	__builtin_memset( &TMP$413$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$413$1, (void*)vr$32, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$414$1, 0, 12 );
	FBSTRING* vr$39 = fb_StrConcat( &TMP$414$1, (void*)&LN$1, -1, (void*)vr$35, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$39, -1, 0 );
	FBSTRING* vr$41 = HVREGTOSTR( L$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$41, -1, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$562:;
}

static void _EMITSTORE( struct $6IRVREG* L$1, struct $6IRVREG* R$1 )
{
	FBSTRING TMP$416$1;
	FBSTRING TMP$417$1;
	FBSTRING TMP$418$1;
	FBSTRING TMP$419$1;
	label$563:;
	__builtin_memset( &TMP$419$1, 0, 12 );
	FBSTRING* vr$1 = VREGPRETTY( R$1 );
	FBSTRING* vr$2 = VREGPRETTY( L$1 );
	__builtin_memset( &TMP$416$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$416$1, (void*)"store ", 7, (void*)vr$2, -1 );
	__builtin_memset( &TMP$417$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$417$1, (void*)vr$5, -1, (void*)" := ", 5 );
	__builtin_memset( &TMP$418$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$418$1, (void*)vr$8, -1, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$419$1, -1, (void*)vr$11, -1, 0 );
	HASTCOMMAND( &TMP$419$1 );
	fb_StrDelete( (FBSTRING*)&TMP$419$1 );
	HEMITSTORE( L$1, R$1 );
	label$564:;
}

static void _EMITSPILLREGS( void )
{
	label$565:;
	label$566:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$567:;
	label$568:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$421$1;
	FBSTRING TMP$422$1;
	FBSTRING TMP$424$1;
	FBSTRING TMP$425$1;
	FBSTRING TMP$426$1;
	FBSTRING TMP$427$1;
	label$569:;
	__builtin_memset( &TMP$422$1, 0, 12 );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$421$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$421$1, (void*)"loadres ", 9, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$422$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$422$1 );
	fb_StrDelete( (FBSTRING*)&TMP$422$1 );
	HLOADVREG( V1$1 );
	_SETVREGDATATYPE( V1$1, *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
	__builtin_memset( &TMP$427$1, 0, 12 );
	FBSTRING* vr$11 = HVREGTOSTR( V1$1 );
	FBSTRING* vr$14 = HEMITTYPE( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
	__builtin_memset( &TMP$424$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$424$1, (void*)"ret ", 5, (void*)vr$14, -1 );
	__builtin_memset( &TMP$425$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$425$1, (void*)vr$17, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$426$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$426$1, (void*)vr$20, -1, (void*)vr$11, -1 );
	fb_StrAssign( (void*)&TMP$427$1, -1, (void*)vr$23, -1, 0 );
	HWRITELINE( &TMP$427$1 );
	fb_StrDelete( (FBSTRING*)&TMP$427$1 );
	label$570:;
}

static void _EMITADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$571:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	{
		if( OP$1 != 22 ) goto label$574;
		label$575:;
		{
			FBSTRING TMP$429$3;
			FBSTRING TMP$430$3;
			__builtin_memset( &TMP$430$3, 0, 12 );
			FBSTRING* vr$2 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$429$3, 0, 12 );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$429$3, (void*)"addrof ", 8, (void*)vr$2, -1 );
			fb_StrAssign( (void*)&TMP$430$3, -1, (void*)vr$5, -1, 0 );
			HASTCOMMAND( &TMP$430$3 );
			fb_StrDelete( (FBSTRING*)&TMP$430$3 );
			HPREPAREADDRESS( V1$1 );
			_SETVREGDATATYPE( V1$1, *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
		}
		goto label$573;
		label$574:;
		if( OP$1 != 76 ) goto label$576;
		label$577:;
		{
			FBSTRING TMP$432$3;
			FBSTRING TMP$433$3;
			__builtin_memset( &TMP$433$3, 0, 12 );
			FBSTRING* vr$12 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$432$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$432$3, (void*)"deref ", 7, (void*)vr$12, -1 );
			fb_StrAssign( (void*)&TMP$433$3, -1, (void*)vr$15, -1, 0 );
			HASTCOMMAND( &TMP$433$3 );
			fb_StrDelete( (FBSTRING*)&TMP$433$3 );
			HLOADVREG( V1$1 );
		}
		label$576:;
		label$573:;
	}
	__builtin_memcpy( VR$1, V1$1, 72 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$572:;
}

static void HDOCALL( uint8* PNAME$1, struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	FBSTRING TMP$438$1;
	FBSTRING TMP$439$1;
	int32 TMP$440$1;
	label$578:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	struct $9IRCALLARG* ARG$1;
	struct $9IRCALLARG* PREV$1;
	struct $6IRVREG* VARG$1;
	struct $6IRVREG* V0$1;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$581;
	{
		if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 0 ) goto label$583;
		{
			struct $6IRVREG* vr$6 = IRHLALLOCVREG( *(int32*)((uint8*)PROC$1 + 88) & 511, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 92) );
			VR$1 = vr$6;
		}
		label$583:;
		label$582:;
	}
	label$581:;
	label$580:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$585;
	{
		FBSTRING TMP$434$2;
		FBSTRING TMP$435$2;
		if( *(int32*)VR$1 != 4 ) goto label$587;
		{
			V0$1 = VR$1;
		}
		goto label$586;
		label$587:;
		{
			struct $6IRVREG* vr$10 = IRHLALLOCVREG( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
			V0$1 = vr$10;
		}
		label$586:;
		FBSTRING* vr$11 = HVREGTOSTR( V0$1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$11, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = call ", 9, 0 );
		FBSTRING* vr$14 = HEMITPROCCALLCONV( PROC$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$14, -1, 0 );
		FBSTRING* vr$18 = HEMITTYPE( *(int32*)((uint8*)V0$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V0$1 + 8) );
		__builtin_memset( &TMP$434$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$434$2, (void*)vr$18, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$435$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$435$2, (void*)&LN$1, -1, (void*)vr$21, -1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$25, -1, 0 );
	}
	goto label$584;
	label$585:;
	{
		fb_StrAssign( (void*)&LN$1, -1, (void*)"call ", 6, 0 );
		FBSTRING* vr$28 = HEMITPROCCALLCONV( PROC$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$28, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"void ", 6, 0 );
	}
	label$584:;
	__builtin_memset( &TMP$438$1, 0, 12 );
	FBSTRING* vr$33 = fb_StrConcat( &TMP$438$1, (void*)PNAME$1, 0, (void*)"( ", 3 );
	__builtin_memset( &TMP$439$1, 0, 12 );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$439$1, (void*)&LN$1, -1, (void*)vr$33, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$37, -1, 0 );
	void* vr$40 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 60) );
	ARG$1 = (struct $9IRCALLARG*)vr$40;
	label$588:;
	if( ARG$1 == (struct $9IRCALLARG*)0u ) goto label$590;
	TMP$440$1 = -((struct $9IRCALLARG*)-(*(int32*)((uint8*)ARG$1 + 8) == LEVEL$1) != (struct $9IRCALLARG*)0u);
	goto label$771;
	label$590:;
	TMP$440$1 = 0;
	label$771:;
	if( TMP$440$1 == 0 ) goto label$589;
	{
		FBSTRING TMP$442$2;
		FBSTRING TMP$443$2;
		void* vr$44 = LISTGETPREV( (void*)ARG$1 );
		PREV$1 = (struct $9IRCALLARG*)vr$44;
		VARG$1 = *(struct $6IRVREG**)((uint8*)ARG$1 + 4);
		__builtin_memset( &TMP$443$2, 0, 12 );
		FBSTRING* vr$47 = VREGPRETTY( VARG$1 );
		__builtin_memset( &TMP$442$2, 0, 12 );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$442$2, (void*)"arg ", 5, (void*)vr$47, -1 );
		fb_StrAssign( (void*)&TMP$443$2, -1, (void*)vr$50, -1, 0 );
		HINTERNALCOMMAND( &TMP$443$2 );
		fb_StrDelete( (FBSTRING*)&TMP$443$2 );
		HLOADVREG( VARG$1 );
		int32 DTYPE$2;
		__builtin_memset( &DTYPE$2, 0, 4 );
		struct $8FBSYMBOL* SUBTYPE$2;
		__builtin_memset( &SUBTYPE$2, 0, 4 );
		if( *(struct $8FBSYMBOL**)ARG$1 == (struct $8FBSYMBOL*)0u ) goto label$592;
		{
			_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( *(struct $8FBSYMBOL**)ARG$1, &DTYPE$2, &SUBTYPE$2 );
		}
		goto label$591;
		label$592:;
		{
			DTYPE$2 = *(int32*)((uint8*)VARG$1 + 4);
			SUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)VARG$1 + 8);
		}
		label$591:;
		FBSTRING* vr$62 = HEMITTYPE( DTYPE$2, SUBTYPE$2 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$62, -1, 0 );
		_SETVREGDATATYPE( VARG$1, DTYPE$2, SUBTYPE$2 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
		FBSTRING* vr$65 = HVREGTOSTR( VARG$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$65, -1, 0 );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 60), (void*)ARG$1 );
		if( PREV$1 == (struct $9IRCALLARG*)0u ) goto label$594;
		{
			if( *(int32*)((uint8*)PREV$1 + 8) != LEVEL$1 ) goto label$596;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
			}
			label$596:;
			label$595:;
		}
		label$594:;
		label$593:;
		ARG$1 = PREV$1;
	}
	goto label$588;
	label$589:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" )", 3, 0 );
	HWRITELINE( &LN$1 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$598;
	{
		if( *(int32*)VR$1 == 4 ) goto label$600;
		{
			HEMITSTORE( VR$1, V0$1 );
		}
		label$600:;
		label$599:;
	}
	label$598:;
	label$597:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$579:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	FBSTRING TMP$445$1;
	FBSTRING TMP$446$1;
	FBSTRING TMP$447$1;
	label$601:;
	__builtin_memset( &TMP$447$1, 0, 12 );
	FBSTRING* vr$1 = HSYMNAME( PROC$1 );
	__builtin_memset( &TMP$445$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$445$1, (void*)"call ", 6, (void*)vr$1, -1 );
	__builtin_memset( &TMP$446$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$446$1, (void*)vr$4, -1, (void*)"()", 3 );
	fb_StrAssign( (void*)&TMP$447$1, -1, (void*)vr$7, -1, 0 );
	HASTCOMMAND( &TMP$447$1 );
	fb_StrDelete( (FBSTRING*)&TMP$447$1 );
	uint8* vr$11 = SYMBGETMANGLEDNAME( PROC$1 );
	HDOCALL( vr$11, PROC$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	label$602:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int32 BYTESTOPOP$1, int32 LEVEL$1 )
{
	FBSTRING TMP$449$1;
	FBSTRING TMP$450$1;
	FBSTRING TMP$451$1;
	label$603:;
	__builtin_memset( &TMP$450$1, 0, 12 );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$449$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$449$1, (void*)"callptr ", 9, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$450$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$450$1 );
	fb_StrDelete( (FBSTRING*)&TMP$450$1 );
	HLOADVREG( V1$1 );
	__builtin_memset( &TMP$451$1, 0, 12 );
	FBSTRING* vr$9 = HVREGTOSTR( V1$1 );
	fb_StrAssign( (void*)&TMP$451$1, -1, (void*)vr$9, -1, 0 );
	HDOCALL( (uint8*)*(uint8**)&TMP$451$1, PROC$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	fb_StrDelete( (FBSTRING*)&TMP$451$1 );
	label$604:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$453$1;
	FBSTRING TMP$454$1;
	FBSTRING TMP$456$1;
	FBSTRING TMP$457$1;
	label$605:;
	__builtin_memset( &TMP$454$1, 0, 12 );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$453$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$453$1, (void*)"jumpptr ", 9, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$454$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$454$1 );
	fb_StrDelete( (FBSTRING*)&TMP$454$1 );
	HLOADVREG( V1$1 );
	__builtin_memset( &TMP$457$1, 0, 12 );
	FBSTRING* vr$9 = HVREGTOSTR( V1$1 );
	__builtin_memset( &TMP$456$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$456$1, (void*)"goto *", 7, (void*)vr$9, -1 );
	fb_StrAssign( (void*)&TMP$457$1, -1, (void*)vr$12, -1, 0 );
	HWRITELINE( &TMP$457$1 );
	fb_StrDelete( (FBSTRING*)&TMP$457$1 );
	label$606:;
}

static void _EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$459$1;
	FBSTRING TMP$460$1;
	FBSTRING TMP$461$1;
	FBSTRING TMP$462$1;
	label$607:;
	__builtin_memset( &TMP$460$1, 0, 12 );
	FBSTRING* vr$1 = HSYMNAME( LABEL$1 );
	__builtin_memset( &TMP$459$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$459$1, (void*)"goto ", 6, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$460$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$460$1 );
	fb_StrDelete( (FBSTRING*)&TMP$460$1 );
	__builtin_memset( &TMP$462$1, 0, 12 );
	uint8* vr$9 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$461$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$461$1, (void*)"br label %", 11, (void*)vr$9, 0 );
	fb_StrAssign( (void*)&TMP$462$1, -1, (void*)vr$12, -1, 0 );
	HWRITELINE( &TMP$462$1 );
	fb_StrDelete( (FBSTRING*)&TMP$462$1 );
	uint8* vr$16 = SYMBUNIQUELABEL(  );
	HWRITELABEL( vr$16 );
	label$608:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$464$1;
	FBSTRING TMP$465$1;
	FBSTRING TMP$467$1;
	FBSTRING TMP$468$1;
	FBSTRING TMP$469$1;
	FBSTRING TMP$476$1;
	label$609:;
	__builtin_memset( &TMP$465$1, 0, 12 );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$464$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$464$1, (void*)"jmptb ", 7, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$465$1, -1, (void*)vr$4, -1, 0 );
	HASTCOMMAND( &TMP$465$1 );
	fb_StrDelete( (FBSTRING*)&TMP$465$1 );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	HLOADVREG( V1$1 );
	FBSTRING DTYPE$1;
	FBSTRING* vr$11 = HEMITTYPE( *(int32*)((uint8*)V1$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) );
	fb_StrInit( (void*)&DTYPE$1, -1, (void*)vr$11, -1, 0 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)"switch ", 8, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&DTYPE$1, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	FBSTRING* vr$17 = HVREGTOSTR( V1$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$17, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
	uint8* vr$20 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
	__builtin_memset( &TMP$467$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$467$1, (void*)"label %", 8, (void*)vr$20, 0 );
	__builtin_memset( &TMP$468$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$468$1, (void*)vr$23, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$469$1, 0, 12 );
	FBSTRING* vr$30 = fb_StrConcat( &TMP$469$1, (void*)&LN$1, -1, (void*)vr$26, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$30, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"[", 2, 0 );
	HWRITELINE( &LN$1 );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$470$2;
		TMP$470$2 = LABELCOUNT$1 + -1;
		goto label$611;
		label$614:;
		{
			FBSTRING TMP$471$3;
			FBSTRING TMP$472$3;
			FBSTRING TMP$473$3;
			FBSTRING TMP$474$3;
			FBSTRING TMP$475$3;
			FBSTRING* vr$39 = fb_ULongintToStr( *(uint64*)((uint8*)VALUES$1 + (I$2 << (3 & 31))) + BIAS$1 );
			__builtin_memset( &TMP$471$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$471$3, (void*)&DTYPE$1, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$472$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$472$3, (void*)vr$43, -1, (void*)vr$39, -1 );
			__builtin_memset( &TMP$473$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$473$3, (void*)vr$46, -1, (void*)", ", 3 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$49, -1, 0 );
			uint8* vr$53 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$2 << (2 & 31))) );
			__builtin_memset( &TMP$474$3, 0, 12 );
			FBSTRING* vr$56 = fb_StrConcat( &TMP$474$3, (void*)"label %", 8, (void*)vr$53, 0 );
			__builtin_memset( &TMP$475$3, 0, 12 );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$475$3, (void*)&LN$1, -1, (void*)vr$56, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$60, -1, 0 );
			HWRITELINE( &LN$1 );
		}
		label$612:;
		I$2 = I$2 + 1;
		label$611:;
		if( I$2 <= TMP$470$2 ) goto label$614;
		label$613:;
	}
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	__builtin_memset( &TMP$476$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$476$1, -1, (void*)"]", 2, 0 );
	HWRITELINE( &TMP$476$1 );
	fb_StrDelete( (FBSTRING*)&TMP$476$1 );
	fb_StrDelete( (FBSTRING*)&DTYPE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$610:;
}

static void _EMITMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$615:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)"call void ", 11, 0 );
	{
		if( OP$1 != 107 ) goto label$618;
		label$619:;
		{
			FBSTRING TMP$479$3;
			FBSTRING TMP$480$3;
			__builtin_memset( &TMP$480$3, 0, 12 );
			FBSTRING* vr$3 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$479$3, 0, 12 );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$479$3, (void*)"memclear ", 10, (void*)vr$3, -1 );
			fb_StrAssign( (void*)&TMP$480$3, -1, (void*)vr$6, -1, 0 );
			HASTCOMMAND( &TMP$480$3 );
			fb_StrDelete( (FBSTRING*)&TMP$480$3 );
		}
		goto label$617;
		label$618:;
		if( OP$1 != 105 ) goto label$620;
		label$621:;
		{
			FBSTRING TMP$483$3;
			FBSTRING TMP$484$3;
			FBSTRING TMP$485$3;
			FBSTRING TMP$486$3;
			__builtin_memset( &TMP$486$3, 0, 12 );
			FBSTRING* vr$11 = VREGPRETTY( V2$1 );
			FBSTRING* vr$12 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$483$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$483$3, (void*)"memmove ", 9, (void*)vr$12, -1 );
			__builtin_memset( &TMP$484$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$484$3, (void*)vr$15, -1, (void*)" <= ", 5 );
			__builtin_memset( &TMP$485$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$485$3, (void*)vr$18, -1, (void*)vr$11, -1 );
			fb_StrAssign( (void*)&TMP$486$3, -1, (void*)vr$21, -1, 0 );
			HASTCOMMAND( &TMP$486$3 );
			fb_StrDelete( (FBSTRING*)&TMP$486$3 );
		}
		label$620:;
		label$617:;
	}
	HLOADVREG( V1$1 );
	HLOADVREG( V2$1 );
	{
		if( OP$1 != 107 ) goto label$623;
		label$624:;
		{
			*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 4) = -1;
			_SETVREGDATATYPE( V1$1, 34, (struct $8FBSYMBOL*)0u );
			_SETVREGDATATYPE( V2$1, 8, (struct $8FBSYMBOL*)0u );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"@llvm.memset.p0i8.i32( ", 24, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i8* ", 5, 0 );
			FBSTRING* vr$27 = HVREGTOSTR( V1$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$27, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i8 0, ", 7, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i32 ", 5, 0 );
			FBSTRING* vr$32 = HVREGTOSTR( V2$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$32, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		goto label$622;
		label$623:;
		if( OP$1 != 105 ) goto label$625;
		label$626:;
		{
			*(int32*)((int32)(struct $7BUILTIN*)BUILTINS$ + 12) = -1;
			_SETVREGDATATYPE( V1$1, 34, (struct $8FBSYMBOL*)0u );
			_SETVREGDATATYPE( V2$1, 34, (struct $8FBSYMBOL*)0u );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"@llvm.memmove.p0i8.p0i8.i32( ", 30, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i8* ", 5, 0 );
			FBSTRING* vr$37 = HVREGTOSTR( V1$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$37, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i8* ", 5, 0 );
			FBSTRING* vr$41 = HVREGTOSTR( V2$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$41, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i32 ", 5, 0 );
			FBSTRING* vr$45 = fb_ULongintToStr( (uint64)BYTES$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$45, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		label$625:;
		label$622:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i32 1, i1 false )", 18, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$616:;
}

static void _EMITMACRO( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$627:;
	label$628:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$629:;
	label$630:;
}

static void _EMITDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 LNUM$1, uint8* FILENAME$1 )
{
	label$631:;
	if( OP$1 != 113 ) goto label$634;
	{
		if( FILENAME$1 == (uint8*)0u ) goto label$636;
		{
			FBSTRING TMP$496$3;
			FBSTRING TMP$497$3;
			FBSTRING TMP$498$3;
			FBSTRING TMP$499$3;
			FBSTRING TMP$500$3;
			__builtin_memset( &TMP$500$3, 0, 12 );
			FBSTRING* vr$1 = HREPLACE( FILENAME$1, (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			FBSTRING* vr$2 = fb_IntToStr( LNUM$1 );
			__builtin_memset( &TMP$496$3, 0, 12 );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$496$3, (void*)"#line ", 7, (void*)vr$2, -1 );
			__builtin_memset( &TMP$497$3, 0, 12 );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$497$3, (void*)vr$5, -1, (void*)" \x22", 3 );
			__builtin_memset( &TMP$498$3, 0, 12 );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$498$3, (void*)vr$8, -1, (void*)vr$1, -1 );
			__builtin_memset( &TMP$499$3, 0, 12 );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$499$3, (void*)vr$11, -1, (void*)"\x22", 2 );
			fb_StrAssign( (void*)&TMP$500$3, -1, (void*)vr$14, -1, 0 );
			HWRITELINE( &TMP$500$3 );
			fb_StrDelete( (FBSTRING*)&TMP$500$3 );
		}
		goto label$635;
		label$636:;
		{
			FBSTRING TMP$501$3;
			FBSTRING TMP$502$3;
			FBSTRING TMP$503$3;
			FBSTRING TMP$504$3;
			FBSTRING TMP$505$3;
			__builtin_memset( &TMP$505$3, 0, 12 );
			FBSTRING* vr$20 = HREPLACE( (uint8*)((uint8*)&ENV$ + 304), (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			FBSTRING* vr$21 = fb_IntToStr( LNUM$1 );
			__builtin_memset( &TMP$501$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$501$3, (void*)"#line ", 7, (void*)vr$21, -1 );
			__builtin_memset( &TMP$502$3, 0, 12 );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$502$3, (void*)vr$24, -1, (void*)" \x22", 3 );
			__builtin_memset( &TMP$503$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$503$3, (void*)vr$27, -1, (void*)vr$20, -1 );
			__builtin_memset( &TMP$504$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$504$3, (void*)vr$30, -1, (void*)"\x22", 2 );
			fb_StrAssign( (void*)&TMP$505$3, -1, (void*)vr$33, -1, 0 );
			HWRITELINE( &TMP$505$3 );
			fb_StrDelete( (FBSTRING*)&TMP$505$3 );
		}
		label$635:;
		*(int32*)((uint8*)&CTX$ + 4) = LNUM$1;
	}
	label$634:;
	label$633:;
	label$632:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	FBSTRING TMP$506$1;
	FBSTRING TMP$507$1;
	label$637:;
	__builtin_memset( &TMP$507$1, 0, 12 );
	__builtin_memset( &TMP$506$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$506$1, (void*)"; ", 3, (void*)TEXT$1, 0 );
	fb_StrAssign( (void*)&TMP$507$1, -1, (void*)vr$3, -1, 0 );
	HWRITELINE( &TMP$507$1 );
	fb_StrDelete( (FBSTRING*)&TMP$507$1 );
	label$638:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$639:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$641:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$642;
	{
		{
			$14AST_ASMTOKTYPE TMP$508$3;
			TMP$508$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$508$3 != 0 ) goto label$644;
			label$645:;
			{
				FBSTRING TMP$509$4;
				__builtin_memset( &TMP$509$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$509$4, (void*)&LN$1, -1, *(void**)((uint8*)N$1 + 4), 0 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$6, -1, 0 );
			}
			goto label$643;
			label$644:;
			if( TMP$508$3 != 1 ) goto label$646;
			label$647:;
			{
				FBSTRING TMP$510$4;
				uint8* vr$9 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
				__builtin_memset( &TMP$510$4, 0, 12 );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$510$4, (void*)&LN$1, -1, (void*)vr$9, 0 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$13, -1, 0 );
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4) + 48);
				if( OFS$4 == 0ll ) goto label$649;
				{
					if( OFS$4 <= 0ll ) goto label$651;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"+", 2, 0 );
					}
					label$651:;
					label$650:;
					FBSTRING* vr$18 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$18, -1, 0 );
				}
				label$649:;
				label$648:;
			}
			label$646:;
			label$643:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$641;
	label$642:;
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$640:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$652:;
	uint8* vr$0 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$0, 0, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)" = global ", 11, 0 );
	FBSTRING* vr$3 = HEMITSYMTYPE( SYM$1 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$3, -1, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)" ", 2, 0 );
	*(int32*)((uint8*)&CTX$ + 20) = 0;
	*(int8*)((uint8*)&CTX$ + 24) = (int8)0;
	label$653:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$654:;
	HWRITELINE( (FBSTRING*)((uint8*)&CTX$ + 8) );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)"", 1, 0 );
	label$655:;
}

static void HVARINIELEMENTTYPE( struct $8FBSYMBOL* SYM$1 )
{
	label$656:;
	if( *(int32*)((uint8*)&CTX$ + 20) <= 0 ) goto label$659;
	{
		if( (int32)*(int8*)((uint8*)((uint8*)&CTX$ + *(int32*)((uint8*)&CTX$ + 20)) + 24) == 0 ) goto label$661;
		{
			FBSTRING TMP$512$3;
			FBSTRING TMP$513$3;
			FBSTRING* vr$5 = HEMITTYPE( *(int32*)((uint8*)SYM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
			__builtin_memset( &TMP$512$3, 0, 12 );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$512$3, (void*)vr$5, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$513$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$513$3, (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$8, -1 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$12, -1, 0 );
		}
		goto label$660;
		label$661:;
		{
			FBSTRING* vr$14 = HEMITSYMTYPE( SYM$1 );
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$14, -1, 0 );
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)" ", 2, 0 );
		}
		label$660:;
	}
	label$659:;
	label$658:;
	label$657:;
}

static void HVARINISEPARATOR( void )
{
	label$662:;
	if( *(int32*)((uint8*)&CTX$ + 20) <= 0 ) goto label$665;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)", ", 3, 0 );
	}
	label$665:;
	label$664:;
	label$663:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	int32 TMP$514$1;
	label$666:;
	HVARINIELEMENTTYPE( SYM$1 );
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (-(DTYPE$1 == 1) & -(VALUE$1 != 0ll)) == 0 ) goto label$669;
	{
		VALUE$1 = 1ll;
	}
	label$669:;
	label$668:;
	if( (DTYPE$1 & 480) == 0 ) goto label$670;
	TMP$514$1 = 24;
	goto label$772;
	label$670:;
	TMP$514$1 = DTYPE$1 & 31;
	label$772:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$514$1 * 28)) + 4) != 8 ) goto label$672;
	{
		FBSTRING* vr$8 = HEMITLONG( VALUE$1 );
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$8, -1, 0 );
	}
	goto label$671;
	label$672:;
	{
		FBSTRING TMP$515$2;
		FBSTRING* vr$12 = HEMITINT( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), (int32)VALUE$1 );
		__builtin_memset( &TMP$515$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$515$2, (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$12, -1 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$16, -1, 0 );
	}
	label$671:;
	HVARINISEPARATOR(  );
	label$667:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	label$673:;
	HVARINIELEMENTTYPE( SYM$1 );
	FBSTRING* vr$0 = HEMITFLOAT( VALUE$1 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$0, -1, 0 );
	HVARINISEPARATOR(  );
	label$674:;
}

static void HMAYBEADDCONV( FBSTRING* S$1, int32 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, FBSTRING* LTYPE$1, int32 RDTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, FBSTRING* RTYPE$1 )
{
	FBSTRING TMP$517$1;
	FBSTRING TMP$518$1;
	FBSTRING TMP$519$1;
	FBSTRING TMP$520$1;
	FBSTRING TMP$521$1;
	FBSTRING TMP$522$1;
	FBSTRING TMP$523$1;
	label$675:;
	if( (-(LDTYPE$1 == RDTYPE$1) & -(LSUBTYPE$1 == RSUBTYPE$1)) == 0 ) goto label$678;
	{
		goto label$676;
	}
	label$678:;
	label$677:;
	uint8* OP$1;
	uint8* vr$3 = HGETCONVOPCODE( LDTYPE$1, RDTYPE$1 );
	OP$1 = vr$3;
	if( OP$1 != (uint8*)0u ) goto label$680;
	{
		goto label$676;
	}
	label$680:;
	label$679:;
	__builtin_memset( &TMP$517$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$517$1, (void*)OP$1, 0, (void*)" (", 3 );
	__builtin_memset( &TMP$518$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$518$1, (void*)vr$6, -1, (void*)RTYPE$1, -1 );
	__builtin_memset( &TMP$519$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$519$1, (void*)vr$9, -1, (void*)" ", 2 );
	__builtin_memset( &TMP$520$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$520$1, (void*)vr$12, -1, (void*)S$1, -1 );
	__builtin_memset( &TMP$521$1, 0, 12 );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$521$1, (void*)vr$15, -1, (void*)" to ", 5 );
	__builtin_memset( &TMP$522$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$522$1, (void*)vr$18, -1, (void*)LTYPE$1, -1 );
	__builtin_memset( &TMP$523$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$523$1, (void*)vr$21, -1, (void*)")", 2 );
	fb_StrAssign( (void*)S$1, -1, (void*)vr$24, -1, 0 );
	label$676:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	FBSTRING TMP$547$1;
	label$681:;
	HVARINIELEMENTTYPE( SYM$1 );
	FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( RHS$1 );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$0, 0, 0 );
	int32 SYMDTYPE$1;
	SYMDTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	FBSTRING SYMTYPE$1;
	FBSTRING* vr$5 = HEMITTYPE( SYMDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
	fb_StrInit( (void*)&SYMTYPE$1, -1, (void*)vr$5, -1, 0 );
	int32 PTRDTYPE$1;
	PTRDTYPE$1 = ((((*(int32*)((uint8*)RHS$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)RHS$1 + 28) & 511) & 32505856);
	FBSTRING PTRTYPE$1;
	FBSTRING* vr$25 = HEMITTYPE( PTRDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)RHS$1 + 32) );
	fb_StrInit( (void*)&PTRTYPE$1, -1, (void*)vr$25, -1, 0 );
	if( OFS$1 == 0ll ) goto label$684;
	{
		FBSTRING TMP$525$2;
		FBSTRING TMP$526$2;
		FBSTRING TMP$527$2;
		FBSTRING TMP$528$2;
		FBSTRING TMP$529$2;
		FBSTRING TMP$530$2;
		FBSTRING TMP$532$2;
		FBSTRING TMP$533$2;
		FBSTRING TMP$534$2;
		FBSTRING TMP$535$2;
		FBSTRING TMP$536$2;
		FBSTRING TMP$537$2;
		FBSTRING TMP$538$2;
		FBSTRING TMP$539$2;
		FBSTRING TMP$541$2;
		FBSTRING TMP$542$2;
		FBSTRING TMP$543$2;
		FBSTRING TMP$544$2;
		FBSTRING TMP$545$2;
		FBSTRING TMP$546$2;
		FBSTRING INTTYPE$2;
		FBSTRING* vr$27 = HEMITTYPE( 9, (struct $8FBSYMBOL*)0u );
		fb_StrInit( (void*)&INTTYPE$2, -1, (void*)vr$27, -1, 0 );
		__builtin_memset( &TMP$525$2, 0, 12 );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$525$2, (void*)"ptrtoint (", 11, (void*)&PTRTYPE$1, -1 );
		__builtin_memset( &TMP$526$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$526$2, (void*)vr$34, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$527$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$527$2, (void*)vr$37, -1, (void*)&S$1, -1 );
		__builtin_memset( &TMP$528$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$528$2, (void*)vr$40, -1, (void*)" to ", 5 );
		__builtin_memset( &TMP$529$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$529$2, (void*)vr$43, -1, (void*)&INTTYPE$2, -1 );
		__builtin_memset( &TMP$530$2, 0, 12 );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$530$2, (void*)vr$46, -1, (void*)")", 2 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$49, -1, 0 );
		FBSTRING* vr$51 = fb_LongintToStr( OFS$1 );
		__builtin_memset( &TMP$532$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$532$2, (void*)"add (", 6, (void*)&INTTYPE$2, -1 );
		__builtin_memset( &TMP$533$2, 0, 12 );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$533$2, (void*)vr$57, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$534$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$534$2, (void*)vr$60, -1, (void*)&S$1, -1 );
		__builtin_memset( &TMP$535$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$535$2, (void*)vr$63, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$536$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$536$2, (void*)vr$66, -1, (void*)&INTTYPE$2, -1 );
		__builtin_memset( &TMP$537$2, 0, 12 );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$537$2, (void*)vr$69, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$538$2, 0, 12 );
		FBSTRING* vr$75 = fb_StrConcat( &TMP$538$2, (void*)vr$72, -1, (void*)vr$51, -1 );
		__builtin_memset( &TMP$539$2, 0, 12 );
		FBSTRING* vr$78 = fb_StrConcat( &TMP$539$2, (void*)vr$75, -1, (void*)")", 2 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$78, -1, 0 );
		__builtin_memset( &TMP$541$2, 0, 12 );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$541$2, (void*)"inttoptr (", 11, (void*)&INTTYPE$2, -1 );
		__builtin_memset( &TMP$542$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$542$2, (void*)vr$85, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$543$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$543$2, (void*)vr$88, -1, (void*)&S$1, -1 );
		__builtin_memset( &TMP$544$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$544$2, (void*)vr$91, -1, (void*)" to ", 5 );
		__builtin_memset( &TMP$545$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$545$2, (void*)vr$94, -1, (void*)&PTRTYPE$1, -1 );
		__builtin_memset( &TMP$546$2, 0, 12 );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$546$2, (void*)vr$97, -1, (void*)")", 2 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$100, -1, 0 );
		fb_StrDelete( (FBSTRING*)&INTTYPE$2 );
	}
	label$684:;
	label$683:;
	__builtin_memset( &TMP$547$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$547$1, -1, (void*)&PTRTYPE$1, -1, 0 );
	HMAYBEADDCONV( &S$1, SYMDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), &SYMTYPE$1, PTRDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)RHS$1 + 32), &TMP$547$1 );
	fb_StrDelete( (FBSTRING*)&TMP$547$1 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)&S$1, -1, 0 );
	HVARINISEPARATOR(  );
	fb_StrDelete( (FBSTRING*)&PTRTYPE$1 );
	fb_StrDelete( (FBSTRING*)&SYMTYPE$1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$682:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	int32 TMP$549$1;
	label$685:;
	if( *(int32*)((uint8*)&CTX$ + 20) <= 0 ) goto label$688;
	{
		FBSTRING* vr$1 = HEMITSTRLITTYPE( (int32)VARLENGTH$1 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$1, -1, 0 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)" ", 2, 0 );
	}
	label$688:;
	label$687:;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)"c\x22", 3, 0 );
	TMP$549$1 = 0;
	uint8* vr$8 = HUNESCAPE( LITERAL$1, &TMP$549$1 );
	HBUILDSTRLIT( (FBSTRING*)((uint8*)&CTX$ + 8), (int32)(VARLENGTH$1 + 1ll), vr$8, (int32)(LITLENGTH$1 + 1ll) );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)"\x22", 2, 0 );
	HVARINISEPARATOR(  );
	label$686:;
}

static void _EMITVARINIWSTR( int64 VARLENGTH$1, uint32* LITERAL$1, int64 LITLENGTH$1 )
{
	int32 TMP$550$1;
	label$689:;
	if( *(int32*)((uint8*)&CTX$ + 20) <= 0 ) goto label$692;
	{
		FBSTRING* vr$1 = HEMITSTRLITTYPE( (int32)VARLENGTH$1 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$1, -1, 0 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)" ", 2, 0 );
	}
	label$692:;
	label$691:;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)"c\x22", 3, 0 );
	TMP$550$1 = 0;
	uint32* vr$8 = HUNESCAPEW( LITERAL$1, &TMP$550$1 );
	HBUILDWSTRLIT( (FBSTRING*)((uint8*)&CTX$ + 8), (int32)(VARLENGTH$1 + 1ll), vr$8, (int32)(LITLENGTH$1 + 1ll) );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)"\x22", 2, 0 );
	HVARINISEPARATOR(  );
	label$690:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	label$693:;
	label$694:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	label$695:;
	HVARINIELEMENTTYPE( SYM$1 );
	*(int32*)((uint8*)&CTX$ + 20) = *(int32*)((uint8*)&CTX$ + 20) + 1;
	if( *(int32*)((uint8*)&CTX$ + 20) < 128 ) goto label$698;
	{
		ERRREPORT( 21, 0, (uint8*)"global variable/array initializer nesting level too deep (MAXVARINISCOPES=128)" );
		*(int32*)((uint8*)&CTX$ + 20) = *(int32*)((uint8*)&CTX$ + 20) + -1;
	}
	label$698:;
	label$697:;
	*(int8*)((uint8*)((uint8*)&CTX$ + *(int32*)((uint8*)&CTX$ + 20)) + 24) = (int8)IS_ARRAY$1;
	if( IS_ARRAY$1 == 0 ) goto label$700;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)"[ ", 3, 0 );
	}
	goto label$699;
	label$700:;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)"{ ", 3, 0 );
	}
	label$699:;
	label$696:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$701:;
	FBSTRING* vr$1 = fb_RIGHT( (FBSTRING*)((uint8*)&CTX$ + 8), 2 );
	int32 vr$2 = fb_StrCompare( (void*)vr$1, -1, (void*)", ", 3 );
	if( vr$2 != 0 ) goto label$704;
	{
		int32 vr$4 = fb_StrLen( (void*)((uint8*)&CTX$ + 8), -1 );
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)((uint8*)&CTX$ + 8), vr$4 + -2 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)vr$7, -1, 0 );
	}
	label$704:;
	label$703:;
	if( (int32)*(int8*)((uint8*)((uint8*)&CTX$ + *(int32*)((uint8*)&CTX$ + 20)) + 24) == 0 ) goto label$706;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)" ]", 3, 0 );
	}
	goto label$705;
	label$706:;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)" }", 3, 0 );
	}
	label$705:;
	if( *(int32*)((uint8*)&CTX$ + 20) <= 0 ) goto label$708;
	{
		*(int32*)((uint8*)&CTX$ + 20) = *(int32*)((uint8*)&CTX$ + 20) + -1;
	}
	label$708:;
	label$707:;
	HVARINISEPARATOR(  );
	label$702:;
}

static void _EMITFBCTINFBEGIN( void )
{
	FBSTRING TMP$557$1;
	label$709:;
	__builtin_memset( &TMP$557$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$557$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$557$1 );
	fb_StrDelete( (FBSTRING*)&TMP$557$1 );
	label$710:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$558$1;
	FBSTRING TMP$559$1;
	label$711:;
	__builtin_memset( &TMP$558$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$558$1, (void*)S$1, 0, (void*)"\x5C" "00", 4 );
	__builtin_memset( &TMP$559$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$559$1, (void*)((uint8*)&CTX$ + 184), -1, (void*)vr$2, -1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 184), -1, (void*)vr$6, -1, 0 );
	int32 vr$8 = fb_StrLen( (void*)S$1, 0 );
	*(int32*)((uint8*)&CTX$ + 196) = (*(int32*)((uint8*)&CTX$ + 196) + vr$8) + 1;
	label$712:;
}

static void _EMITFBCTINFEND( void )
{
	label$713:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)"@__fbctinf = internal constant ", 32, 0 );
	FBSTRING* vr$2 = HEMITSTRLITTYPE( *(int32*)((uint8*)&CTX$ + 196) );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" c\x22", 4, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)((uint8*)&CTX$ + 184), -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	int32 vr$8 = FBGETOPTION( 3 );
	if( vr$8 != 9 ) goto label$716;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", section \x22__DATA,fbctinf\x22", 27, 0 );
	}
	goto label$715;
	label$716:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", section \x22.fbctinf\x22", 21, 0 );
	}
	label$715:;
	HWRITELINE( &LN$1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)"@llvm.used = appending global [1 x i8*] ", 41, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"[", 2, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"i8* bitcast (", 14, 0 );
	FBSTRING* vr$15 = HEMITSTRLITTYPE( *(int32*)((uint8*)&CTX$ + 196) );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$15, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"* @__fbctinf to i8*)", 21, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"]", 2, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", section \x22llvm.metadata\x22", 26, 0 );
	HWRITELINE( &LN$1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 184), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 196) = 0;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$714:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$571$1;
	FBSTRING TMP$576$1;
	label$717:;
	IRHLEMITPROCBEGIN(  );
	__builtin_memset( &TMP$571$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$571$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$571$1 );
	fb_StrDelete( (FBSTRING*)&TMP$571$1 );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"define ", 8, 0 );
	if( (*(int32*)((uint8*)PROC$1 + 4) & 256) == 0 ) goto label$720;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"dllexport ", 11, 0 );
	}
	goto label$719;
	label$720:;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 64) == 0 ) goto label$721;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"private ", 9, 0 );
	}
	label$721:;
	label$719:;
	FBSTRING* vr$12 = HEMITPROCHEADER( PROC$1, 0, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$12, -1, 0 );
	HWRITELINE( &LN$1 );
	__builtin_memset( &TMP$576$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$576$1, -1, (void*)"{", 2, 0 );
	HWRITELINE( &TMP$576$1 );
	fb_StrDelete( (FBSTRING*)&TMP$576$1 );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$718:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$580$1;
	label$722:;
	if( (*(int32*)((uint8*)PROC$1 + 28) & 511) != 0 ) goto label$725;
	{
		FBSTRING TMP$578$2;
		__builtin_memset( &TMP$578$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$578$2, -1, (void*)"ret void", 9, 0 );
		HWRITELINE( &TMP$578$2 );
		fb_StrDelete( (FBSTRING*)&TMP$578$2 );
	}
	label$725:;
	label$724:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	__builtin_memset( &TMP$580$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$580$1, -1, (void*)"}", 2, 0 );
	HWRITELINE( &TMP$580$1 );
	fb_StrDelete( (FBSTRING*)&TMP$580$1 );
	IRHLEMITPROCEND(  );
	label$723:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$726:;
	label$727:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$728:;
	label$729:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$731:;
	_ZN13IRLLVMCONTEXTC1Ev( &CTX$ );
	label$732:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$734:;
	_ZN13IRLLVMCONTEXTD1Ev( &CTX$ );
	label$735:;
}
