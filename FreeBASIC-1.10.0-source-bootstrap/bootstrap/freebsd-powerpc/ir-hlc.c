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
struct $12SECTIONENTRY {
	FBSTRING TEXT;
	int32 OLD;
	int32 INDENT;
};
__FB_STATIC_ASSERT( sizeof( struct $12SECTIONENTRY ) == 20 );
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
struct $8IRHLCCTX {
	struct $12SECTIONENTRY SECTIONS[129];
	int32 SECTION;
	int32 SECTIONGOSUBLEVEL;
	int32 LINENUM;
	FBSTRING ESCAPEDINPUTFILENAME;
	uint32 USEDBUILTINS;
	struct $5TLIST ANONSTACK;
	FBSTRING VARINI;
	int32 VARINISCOPELEVEL;
	FBSTRING FBCTINF;
	FBSTRING EXPORTS;
	struct $5TLIST EXPRNODES;
	FBSTRING EXPRTEXT;
	struct $5TLIST EXPRCACHE;
	int32 GLOBALVARPASS;
};
__FB_STATIC_ASSERT( sizeof( struct $8IRHLCCTX ) == 2760 );
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
typedef int32 $13FB_COMPTARGET;
typedef int32 $16EMITPROC_OPTIONS;
typedef int32 $19FB_CVA_LIST_TYPEDEF;
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
struct $8EXPRNODE;
struct $8EXPRNODE {
	int32 CLASS;
	int32 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8EXPRNODE* L;
	struct $8EXPRNODE* R;
	union {
		uint8* TEXT;
		union $7FBVALUE VAL;
		struct $8FBSYMBOL* SYM;
		int32 OP;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $8EXPRNODE ) == 32 );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $13EXPRCACHENODE {
	int32 VREGID;
	struct $8EXPRNODE* EXPR;
};
__FB_STATIC_ASSERT( sizeof( struct $13EXPRCACHENODE ) == 8 );
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
void free( void* );
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
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_StrFill2( int32, FBSTRING* );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_TRIM( FBSTRING* );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
void fb_LEFTSELF( FBSTRING*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
static void fb_ctor__irzhlc( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
void* LISTGETNEXT( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
int32 FBGETOPTION( int32 );
int32 FBIS64BIT( void );
int32 FBGETCPUFAMILY( void );
int32 TYPECALCNATURALALIGN( int32, struct $8FBSYMBOL* );
void _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 SYMBPROCCALCSTDCALLSUFFIXN( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBHASDTOR( struct $8FBSYMBOL* );
int32 SYMBISDATADESC( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int32, struct $8FBSYMBOL* );
int32 TYPETOUNSIGNED( int32 );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int32, tmp$41 );
int32 HFILEEXISTS( uint8* );
FBSTRING* HFLOATTOHEX_C99( double );
uint8* ZSTRDUP( uint8* );
uint8* HUNESCAPE( uint8*, int32* );
uint32* HUNESCAPEW( uint32*, int32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
int32 HCHARNEEDSESCAPING( int32, int32 );
int32 HISVALIDHEXDIGIT( int32 );
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
static void _ZN12SECTIONENTRYC1Ev( struct $12SECTIONENTRY* );
static void _ZN12SECTIONENTRYaSERKS_( struct $12SECTIONENTRY*, struct $12SECTIONENTRY* );
static void _ZN12SECTIONENTRYD1Ev( struct $12SECTIONENTRY* );
static void _ZN8IRHLCCTXC1Ev( struct $8IRHLCCTX* );
static void _ZN8IRHLCCTXaSERKS_( struct $8IRHLCCTX*, struct $8IRHLCCTX* );
static void _ZN8IRHLCCTXD1Ev( struct $8IRHLCCTX* );
static FBSTRING* HEMITTYPE( int32, struct $8FBSYMBOL* );
static void HEMITSTRUCT( struct $8FBSYMBOL*, int32 );
static void _EMITDBG( int32, struct $8FBSYMBOL*, int32, uint8* );
static void EXPRFREENODE( struct $8EXPRNODE* );
static void _INIT( void );
static void _END( void );
static void SECTIONBEGIN( void );
static void SECTIONWRITELINE( FBSTRING* );
static void SECTIONINDENT( void );
static void SECTIONUNINDENT( void );
static int32 SECTIONINSIDEPROC( void );
static void SECTIONEND( void );
static int32 SECTIONGOSUB( int32 );
static void SECTIONRETURN( int32 );
static void HWRITELINE( FBSTRING*, int32 );
static void HUPDATECURRENTFILENAME( uint8* );
static void HWRITESTATICASSERT( FBSTRING* );
static void HAPPENDCTORATTRIB( FBSTRING*, struct $8FBSYMBOL*, int32 );
static FBSTRING* HGETMANGLEDNAMEFORASM( struct $8FBSYMBOL*, int32 );
static int32 HNEEDALIAS( struct $8FBSYMBOL* );
static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL*, $16EMITPROC_OPTIONS );
static FBSTRING* HGETUDTTAG( struct $8FBSYMBOL* );
static FBSTRING* HGETUDTID( struct $8FBSYMBOL* );
static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* );
static void HEMITUDT( struct $8FBSYMBOL*, int32 );
static FBSTRING* HEMITARRAYDECL( struct $8FBSYMBOL* );
static void HEMITVARDECL( int32, struct $8FBSYMBOL*, uint8* );
static void HMAYBEEMITLOCALVAR( struct $8FBSYMBOL* );
static void HALLOCGLOBALVAR( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAREXCEPTDATASTMT( struct $8FBSYMBOL* );
static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* );
static void HEMITFIELDTYPES( struct $8FBSYMBOL* );
static struct $8FBSYMBOL** HFINDPARENTANONALREADYONSTACK( struct $8FBSYMBOL* );
static void HPUSHANONPARENTS( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HPOPANONPARENTS( struct $8FBSYMBOL** );
static void HEMITSTRUCTWITHFIELDS( struct $8FBSYMBOL* );
static void HWRITEX86F2I( FBSTRING*, int32, int32 );
static void HWRITEGENERICF2I( FBSTRING*, int32, int32 );
static void HWRITEF2I( FBSTRING*, int32, int32 );
static void HMAYBEEMITPROCEXPORT( struct $8FBSYMBOL* );
static int32 _EMITBEGIN( void );
static void _EMITEND( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int32 _SUPPORTSOP( int32, int32 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static int32 HISSTATICWITHDTOR( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static struct $8EXPRNODE* EXPRNEW( int32, int32, struct $8FBSYMBOL* );
static void EXPRFREETREE( struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWTEXT( int32, struct $8FBSYMBOL*, uint8* );
static struct $8EXPRNODE* EXPRNEWIMMI( int64, int32 );
static struct $8EXPRNODE* EXPRNEWIMMF( double, int32 );
static int32 SYMBISCARRAY( struct $8FBSYMBOL* );
static struct $8EXPRNODE* EXPRNEWCAST( int32, struct $8FBSYMBOL*, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWMACRO( $6AST_OP, int32, struct $8FBSYMBOL*, struct $8EXPRNODE*, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWSYM( struct $8FBSYMBOL* );
static int32 TYPECBOP( int32, int32, int32 );
static struct $8EXPRNODE* EXPRNEWUOP( int32, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWBOP( int32, struct $8EXPRNODE*, struct $8EXPRNODE* );
static void EXPRCACHE( int32, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRLOOKUP( int32 );
static FBSTRING* HEMITINT( int32, int64 );
static FBSTRING* HEMITFLOAT( int32, double );
static void HBUILDSTRLIT( FBSTRING*, uint8*, int64 );
static void HBUILDWSTRLIT( FBSTRING*, uint32*, int64 );
static uint8* HBOPTOSTR( int32 );
static uint8* HUOPTOSTR( int32, int32, int32* );
static void HIMM2TEXT( FBSTRING*, struct $8EXPRNODE* );
static void HSYM2TEXT( FBSTRING*, struct $8FBSYMBOL* );
static void HEXPRFLUSH( struct $8EXPRNODE*, int32 );
static FBSTRING* EXPRFLUSH( struct $8EXPRNODE*, int32 );
static struct $8EXPRNODE* EXPRNEWOFFSET( struct $8FBSYMBOL*, int64 );
static struct $8EXPRNODE* EXPRNEWVREG( struct $6IRVREG*, int32 );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void EXPRSTORE( struct $6IRVREG*, struct $8EXPRNODE*, int32 );
static void _EMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( FBSTRING*, int32, struct $6IRVREG*, int32 );
static void _EMITCALL( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int32, struct $8FBSYMBOL* );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITMACRO( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _EMITCOMMENT( uint8* );
static int32 HFINDLABELINSEENLIST( struct $5TLIST*, struct $8FBSYMBOL* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void HVARINISEPARATOR( void );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
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
extern struct $7IR_VTBL IRHLC_VTBL$;
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
static struct $8IRHLCCTX CTX$;
static uint8* DTYPENAME$[26] = { (uint8*)"void", (uint8*)"boolean", (uint8*)"int8", (uint8*)"uint8", (uint8*)0u, (uint8*)"int16", (uint8*)"uint16", (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)"int32", (uint8*)"uint32", (uint8*)"int64", (uint8*)"uint64", (uint8*)"float", (uint8*)"double", (uint8*)"FBSTRING", (uint8*)0u, (uint8*)"__builtin_va_list", (uint8*)0u, (uint8*)0u, (uint8*)0u, (uint8*)"void", (uint8*)0u };
struct $7IR_VTBL IRHLC_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)0u, (tmp$42)0u, (tmp$43)0u, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)0u, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$51)0u, (tmp$51)&_EMITADDR, (tmp$53)&_EMITCALL, (tmp$54)&_EMITCALLPTR, (tmp$45)0u, (tmp$52)&_EMITJUMPPTR, (tmp$55)&_EMITBRANCH, (tmp$56)&_EMITJMPTB, (tmp$57)&_EMITMEM, (tmp$58)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$59)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$60)&_EMITVARINII, (tmp$61)&_EMITVARINIF, (tmp$62)&_EMITVARINIOFS, (tmp$63)&_EMITVARINISTR, (tmp$64)&_EMITVARINIWSTR, (tmp$65)&_EMITVARINIPAD, (tmp$66)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$67)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$68)&IRHLALLOCVREG, (tmp$69)&IRHLALLOCVRIMM, (tmp$70)&IRHLALLOCVRIMMF, (tmp$71)&IRHLALLOCVRVAR, (tmp$72)&IRHLALLOCVRIDX, (tmp$73)&IRHLALLOCVRPTR, (tmp$71)&IRHLALLOCVROFS, (tmp$74)&_SETVREGDATATYPE, (tmp$75)0u, (tmp$51)0u, (tmp$44)0u, (tmp$45)0u };

__attribute__(( constructor )) static void fb_ctor__irzhlc( void )
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

static void _ZN12SECTIONENTRYC1Ev( struct $12SECTIONENTRY* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 12), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 16), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN12SECTIONENTRYaSERKS_( struct $12SECTIONENTRY* THIS$1, struct $12SECTIONENTRY* __FB_RHS__$1 )
{
	label$12:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(int32*)((uint8*)THIS$1 + 16) = *(int32*)((uint8*)__FB_RHS__$1 + 16);
	label$13:;
}

static void _ZN12SECTIONENTRYD1Ev( struct $12SECTIONENTRY* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN8IRHLCCTXC1Ev( struct $8IRHLCCTX* THIS$1 )
{
	int32 TMP$95$1;
	struct $12SECTIONENTRY* TMP$96$1;
	TMP$96$1 = (struct $12SECTIONENTRY*)THIS$1;
	TMP$95$1 = 0;
	label$20:;
	_ZN12SECTIONENTRYC1Ev( TMP$96$1 );
	TMP$96$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$96$1 + 20);
	TMP$95$1 = TMP$95$1 + 1;
	if( TMP$95$1 != 129 ) goto label$20;
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2580), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2584), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2588), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 2592), 0, 12 );
	__builtin_memset( (uint32*)((uint8*)THIS$1 + 2604), 0, 4 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 2608), 0, 32 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 2640), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2652), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 2656), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 2668), 0, 12 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 2680), 0, 32 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 2712), 0, 12 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 2724), 0, 32 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2756), 0, 4 );
	label$18:;
	label$19:;
}

static void _ZN8IRHLCCTXaSERKS_( struct $8IRHLCCTX* THIS$1, struct $8IRHLCCTX* __FB_RHS__$1 )
{
	int32 TMP$97$1;
	struct $12SECTIONENTRY* TMP$98$1;
	struct $12SECTIONENTRY* TMP$99$1;
	label$21:;
	TMP$98$1 = (struct $12SECTIONENTRY*)THIS$1;
	TMP$99$1 = (struct $12SECTIONENTRY*)__FB_RHS__$1;
	TMP$97$1 = 0;
	label$23:;
	_ZN12SECTIONENTRYaSERKS_( TMP$98$1, (struct $12SECTIONENTRY*)TMP$99$1 );
	TMP$98$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$98$1 + 20);
	TMP$99$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$99$1 + 20);
	TMP$97$1 = TMP$97$1 + 1;
	if( TMP$97$1 != 129 ) goto label$23;
	*(int32*)((uint8*)THIS$1 + 2580) = *(int32*)((uint8*)__FB_RHS__$1 + 2580);
	*(int32*)((uint8*)THIS$1 + 2584) = *(int32*)((uint8*)__FB_RHS__$1 + 2584);
	*(int32*)((uint8*)THIS$1 + 2588) = *(int32*)((uint8*)__FB_RHS__$1 + 2588);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2592), -1, (void*)((uint8*)__FB_RHS__$1 + 2592), -1, 0 );
	*(uint32*)((uint8*)THIS$1 + 2604) = *(uint32*)((uint8*)__FB_RHS__$1 + 2604);
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 2608), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 2608), 32 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2640), -1, (void*)((uint8*)__FB_RHS__$1 + 2640), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 2652) = *(int32*)((uint8*)__FB_RHS__$1 + 2652);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2656), -1, (void*)((uint8*)__FB_RHS__$1 + 2656), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2668), -1, (void*)((uint8*)__FB_RHS__$1 + 2668), -1, 0 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 2680), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 2680), 32 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2712), -1, (void*)((uint8*)__FB_RHS__$1 + 2712), -1, 0 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 2724), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 2724), 32 );
	*(int32*)((uint8*)THIS$1 + 2756) = *(int32*)((uint8*)__FB_RHS__$1 + 2756);
	label$22:;
}

static void _ZN8IRHLCCTXD1Ev( struct $8IRHLCCTX* THIS$1 )
{
	int32 TMP$102$1;
	struct $12SECTIONENTRY* TMP$103$1;
	label$27:;
	label$28:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 2712) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 2668) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 2656) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 2640) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 2592) );
	TMP$103$1 = (struct $12SECTIONENTRY*)((uint8*)THIS$1 + 2560);
	TMP$102$1 = 0;
	label$29:;
	_ZN12SECTIONENTRYD1Ev( TMP$103$1 );
	TMP$103$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$103$1 + -20);
	TMP$102$1 = TMP$102$1 + 1;
	if( TMP$102$1 != 129 ) goto label$29;
}

static void _INIT( void )
{
	label$30:;
	IRHLINIT(  );
	LISTINIT( (struct $5TLIST*)((uint8*)&CTX$ + 2608), 8, 4, 6 );
	LISTINIT( (struct $5TLIST*)((uint8*)&CTX$ + 2680), 32, 32, 7 );
	LISTINIT( (struct $5TLIST*)((uint8*)&CTX$ + 2724), 8, 8, 6 );
	*($6IR_OPT*)((uint8*)&IR$ + 272) = *(int32*)((uint8*)&IR$ + 272) | 131074;
	int32 vr$4 = FBIS64BIT(  );
	if( vr$4 == 0 ) goto label$33;
	{
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 32) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 52);
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 36) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 56);
	}
	goto label$32;
	label$33:;
	{
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 32) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 44);
		*(uint8**)((int32)(uint8**)DTYPENAME$ + 36) = *(uint8**)((int32)(uint8**)DTYPENAME$ + 48);
	}
	label$32:;
	label$31:;
}

static void _END( void )
{
	label$34:;
	LISTEND( (struct $5TLIST*)((uint8*)&CTX$ + 2724) );
	LISTEND( (struct $5TLIST*)((uint8*)&CTX$ + 2680) );
	LISTEND( (struct $5TLIST*)((uint8*)&CTX$ + 2608) );
	IRHLEND(  );
	label$35:;
}

static void SECTIONBEGIN( void )
{
	label$36:;
	*(int32*)((uint8*)&CTX$ + 2580) = *(int32*)((uint8*)&CTX$ + 2580) + 1;
	{
		struct $12SECTIONENTRY* TMP$119$2;
		TMP$119$2 = (struct $12SECTIONENTRY*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20));
		*(int32*)((uint8*)TMP$119$2 + 12) = -1;
		if( *(int32*)((uint8*)&CTX$ + 2580) <= 0 ) goto label$39;
		{
			*(int32*)((uint8*)TMP$119$2 + 16) = *(int32*)((uint8*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20)) + -4);
		}
		goto label$38;
		label$39:;
		{
			*(int32*)((uint8*)TMP$119$2 + 16) = 0;
		}
		label$38:;
	}
	label$37:;
}

static void SECTIONWRITELINE( FBSTRING* S$1 )
{
	label$40:;
	{
		FBSTRING TMP$126$2;
		struct $12SECTIONENTRY* TMP$120$2;
		TMP$120$2 = (struct $12SECTIONENTRY*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20));
		if( *(int32*)((uint8*)TMP$120$2 + 12) == 0 ) goto label$43;
		{
			if( *(int32*)((uint8*)TMP$120$2 + 16) <= 0 ) goto label$45;
			{
				FBSTRING TMP$122$4;
				FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"\x09", 1 );
				FBSTRING* vr$7 = fb_StrFill2( *(int32*)((uint8*)TMP$120$2 + 16), (FBSTRING*)vr$5 );
				fb_StrAssign( (void*)TMP$120$2, -1, (void*)vr$7, -1, 0 );
				__builtin_memset( &TMP$122$4, 0, 12 );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$122$4, (void*)TMP$120$2, -1, (void*)S$1, -1 );
				fb_StrAssign( (void*)TMP$120$2, -1, (void*)vr$14, -1, 0 );
			}
			goto label$44;
			label$45:;
			{
				fb_StrAssign( (void*)TMP$120$2, -1, (void*)S$1, -1, 0 );
			}
			label$44:;
			*(int32*)((uint8*)TMP$120$2 + 12) = 0;
		}
		goto label$42;
		label$43:;
		{
			FBSTRING TMP$124$3;
			if( *(int32*)((uint8*)TMP$120$2 + 16) <= 0 ) goto label$47;
			{
				FBSTRING TMP$123$4;
				FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"\x09", 1 );
				FBSTRING* vr$23 = fb_StrFill2( *(int32*)((uint8*)TMP$120$2 + 16), (FBSTRING*)vr$21 );
				__builtin_memset( &TMP$123$4, 0, 12 );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$123$4, (void*)TMP$120$2, -1, (void*)vr$23, -1 );
				fb_StrAssign( (void*)TMP$120$2, -1, (void*)vr$28, -1, 0 );
			}
			label$47:;
			label$46:;
			__builtin_memset( &TMP$124$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$124$3, (void*)TMP$120$2, -1, (void*)S$1, -1 );
			fb_StrAssign( (void*)TMP$120$2, -1, (void*)vr$35, -1, 0 );
		}
		label$42:;
		__builtin_memset( &TMP$126$2, 0, 12 );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$126$2, (void*)TMP$120$2, -1, (void*)"\x0A", 2 );
		fb_StrAssign( (void*)TMP$120$2, -1, (void*)vr$42, -1, 0 );
	}
	label$41:;
}

static void SECTIONINDENT( void )
{
	label$48:;
	*(int32*)((uint8*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20)) + 16) = *(int32*)((uint8*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20)) + 16) + 1;
	label$49:;
}

static void SECTIONUNINDENT( void )
{
	label$50:;
	*(int32*)((uint8*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20)) + 16) = *(int32*)((uint8*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20)) + 16) + -1;
	label$51:;
}

static int32 SECTIONINSIDEPROC( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$52:;
	fb$result$1 = -(*(int32*)((uint8*)&CTX$ + 2580) >= 2);
	label$53:;
	return fb$result$1;
}

static void SECTIONEND( void )
{
	label$54:;
	struct $12SECTIONENTRY* PARENT$1;
	struct $12SECTIONENTRY* CHILD$1;
	if( *(int32*)((uint8*)&CTX$ + 2580) <= 0 ) goto label$57;
	{
		PARENT$1 = (struct $12SECTIONENTRY*)((uint8*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20)) + -20);
		CHILD$1 = (struct $12SECTIONENTRY*)((uint8*)&CTX$ + (*(int32*)((uint8*)&CTX$ + 2580) * 20));
		if( *(int32*)((uint8*)CHILD$1 + 12) != 0 ) goto label$59;
		{
			if( *(int32*)((uint8*)PARENT$1 + 12) == 0 ) goto label$61;
			{
				fb_StrAssign( (void*)PARENT$1, -1, (void*)CHILD$1, -1, 0 );
				*(int32*)((uint8*)PARENT$1 + 12) = 0;
			}
			goto label$60;
			label$61:;
			{
				FBSTRING TMP$127$4;
				__builtin_memset( &TMP$127$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$127$4, (void*)PARENT$1, -1, (void*)CHILD$1, -1 );
				fb_StrAssign( (void*)PARENT$1, -1, (void*)vr$19, -1, 0 );
			}
			label$60:;
		}
		label$59:;
		label$58:;
	}
	label$57:;
	label$56:;
	*(int32*)((uint8*)&CTX$ + 2580) = *(int32*)((uint8*)&CTX$ + 2580) + -1;
	label$55:;
}

static int32 SECTIONGOSUB( int32 SECTION$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	fb$result$1 = *(int32*)((uint8*)&CTX$ + 2580);
	*(int32*)((uint8*)&CTX$ + 2580) = SECTION$1;
	*(int32*)((uint8*)&CTX$ + 2584) = *(int32*)((uint8*)&CTX$ + 2584) + 1;
	label$63:;
	return fb$result$1;
}

static void SECTIONRETURN( int32 SECTION$1 )
{
	label$64:;
	*(int32*)((uint8*)&CTX$ + 2584) = *(int32*)((uint8*)&CTX$ + 2584) + -1;
	*(int32*)((uint8*)&CTX$ + 2580) = SECTION$1;
	label$65:;
}

static void HWRITELINE( FBSTRING* S$1, int32 NOLINE$1 )
{
	label$66:;
	static FBSTRING LN$1;
	if( (*(int32*)((uint8*)&ENV$ + 148) & -(NOLINE$1 == 0)) == 0 ) goto label$69;
	{
		fb_StrAssign( (void*)&LN$1, -1, (void*)"#line ", 7, 0 );
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 2588) );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$2, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" \x22", 3, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)((uint8*)&CTX$ + 2592), -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
		SECTIONWRITELINE( &LN$1 );
	}
	label$69:;
	label$68:;
	SECTIONWRITELINE( S$1 );
	label$67:;
}

static void HUPDATECURRENTFILENAME( uint8* FILENAME$1 )
{
	label$70:;
	FBSTRING* vr$0 = HREPLACE( FILENAME$1, (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 2592), -1, (void*)vr$0, -1, 0 );
	label$71:;
}

static void HWRITESTATICASSERT( FBSTRING* EXPR$1 )
{
	FBSTRING TMP$137$1;
	FBSTRING TMP$138$1;
	FBSTRING TMP$139$1;
	label$72:;
	int32 SECTION$1;
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 64u) != 0u ) goto label$75;
	{
		FBSTRING TMP$134$2;
		*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 64u;
		int32 vr$2 = SECTIONGOSUB( 0 );
		SECTION$1 = vr$2;
		__builtin_memset( &TMP$134$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$134$2, -1, (void*)"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]", 85, 0 );
		HWRITELINE( &TMP$134$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$134$2 );
		SECTIONRETURN( SECTION$1 );
	}
	label$75:;
	label$74:;
	__builtin_memset( &TMP$139$1, 0, 12 );
	__builtin_memset( &TMP$137$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$137$1, (void*)"__FB_STATIC_ASSERT( ", 21, (void*)EXPR$1, -1 );
	__builtin_memset( &TMP$138$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$138$1, (void*)vr$10, -1, (void*)" );", 4 );
	fb_StrAssign( (void*)&TMP$139$1, -1, (void*)vr$13, -1, 0 );
	HWRITELINE( &TMP$139$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$139$1 );
	label$73:;
}

static void HAPPENDCTORATTRIB( FBSTRING* LN$1, struct $8FBSYMBOL* PROC$1, int32 IN_FRONT$1 )
{
	label$76:;
	int32 PRIORITY$1;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 196608) == 0 ) goto label$79;
	{
		if( IN_FRONT$1 != 0 ) goto label$81;
		{
			fb_StrConcatByref( (void*)LN$1, -1, (void*)" ", 2, 0 );
		}
		label$81:;
		label$80:;
		fb_StrConcatByref( (void*)LN$1, -1, (void*)"__attribute__(( ", 17, 0 );
		if( (*(int32*)((uint8*)PROC$1 + 12) & 65536) == 0 ) goto label$83;
		{
			fb_StrConcatByref( (void*)LN$1, -1, (void*)"constructor", 12, 0 );
		}
		goto label$82;
		label$83:;
		{
			fb_StrConcatByref( (void*)LN$1, -1, (void*)"destructor", 11, 0 );
		}
		label$82:;
		PRIORITY$1 = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 56);
		if( PRIORITY$1 == 0 ) goto label$85;
		{
			FBSTRING TMP$146$3;
			FBSTRING TMP$147$3;
			FBSTRING* vr$6 = fb_IntToStr( PRIORITY$1 );
			__builtin_memset( &TMP$146$3, 0, 12 );
			FBSTRING* vr$9 = fb_StrConcat( &TMP$146$3, (void*)"( ", 3, (void*)vr$6, -1 );
			__builtin_memset( &TMP$147$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$147$3, (void*)vr$9, -1, (void*)" )", 3 );
			fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$12, -1, 0 );
		}
		label$85:;
		label$84:;
		fb_StrConcatByref( (void*)LN$1, -1, (void*)" ))", 4, 0 );
		if( IN_FRONT$1 == 0 ) goto label$87;
		{
			fb_StrConcatByref( (void*)LN$1, -1, (void*)" ", 2, 0 );
		}
		label$87:;
		label$86:;
	}
	label$79:;
	label$78:;
	label$77:;
}

static FBSTRING* HGETMANGLEDNAMEFORASM( struct $8FBSYMBOL* SYM$1, int32 UNDERSCORE_PREFIX$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$88:;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 12 );
	uint8* vr$2 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$2, 0, 0 );
	if( (UNDERSCORE_PREFIX$1 & *(int32*)((uint8*)&ENV$ + 292)) == 0 ) goto label$91;
	{
		FBSTRING TMP$150$2;
		__builtin_memset( &TMP$150$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$150$2, (void*)"_", 2, (void*)&MANGLED$1, -1 );
		fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$8, -1, 0 );
	}
	label$91:;
	label$90:;
	int32 vr$10 = FBGETCPUFAMILY(  );
	if( (-(vr$10 == 0) & -(*(int32*)SYM$1 == 3)) == 0 ) goto label$93;
	{
		if( *(int32*)((uint8*)SYM$1 + 84) != 1 ) goto label$95;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)"@", 2, 0 );
			int64 vr$17 = SYMBPROCCALCSTDCALLSUFFIXN( SYM$1 );
			FBSTRING* vr$18 = fb_LongintToStr( vr$17 );
			fb_StrConcatAssign( (void*)&MANGLED$1, -1, (void*)vr$18, -1, 0 );
		}
		label$95:;
		label$94:;
	}
	label$93:;
	label$92:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&MANGLED$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$89:;
	FBSTRING* vr$24 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$24;
}

static int32 HNEEDALIAS( struct $8FBSYMBOL* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$96:;
	fb$result$1 = 0;
	int32 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0 ) goto label$99;
	{
		goto label$97;
	}
	label$99:;
	label$98:;
	{
		$13FB_COMPTARGET TMP$152$2;
		TMP$152$2 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
		if( TMP$152$2 == 0 ) goto label$102;
		label$103:;
		if( TMP$152$2 == 1 ) goto label$102;
		label$104:;
		if( TMP$152$2 != 4 ) goto label$101;
		label$102:;
		{
			if( *(int32*)((uint8*)PROC$1 + 84) != 6 ) goto label$106;
			{
				goto label$97;
			}
			label$106:;
			label$105:;
		}
		goto label$100;
		label$101:;
		{
			goto label$97;
		}
		label$107:;
		label$100:;
	}
	{
		$11FB_FUNCMODE TMP$153$2;
		TMP$153$2 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 84);
		if( TMP$153$2 == 2 ) goto label$110;
		label$111:;
		if( TMP$153$2 != 4 ) goto label$109;
		label$110:;
		{
			fb$result$1 = -1;
		}
		goto label$108;
		label$109:;
		if( TMP$153$2 != 1 ) goto label$112;
		label$113:;
		{
			fb$result$1 = -1;
		}
		label$112:;
		label$108:;
	}
	label$97:;
	return fb$result$1;
}

static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL* PROC$1, $16EMITPROC_OPTIONS OPTIONS$1 )
{
	FBSTRING TMP$155$1;
	struct $8FBSYMBOL* TMP$173$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$114:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 12 );
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( OPTIONS$1 != 0 ) goto label$117;
	{
		HAPPENDCTORATTRIB( &LN$1, PROC$1, -1 );
	}
	label$117:;
	label$116:;
	if( (OPTIONS$1 & 2) != 0 ) goto label$119;
	{
		if( (*(int32*)((uint8*)PROC$1 + 4) & 64) == 0 ) goto label$121;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"static ", 8, 0 );
		}
		label$121:;
		label$120:;
	}
	label$119:;
	label$118:;
	FBSTRING* vr$10 = HEMITTYPE( *(int32*)((uint8*)PROC$1 + 88), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 92) );
	__builtin_memset( &TMP$155$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$155$1, (void*)&LN$1, -1, (void*)vr$10, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$14, -1, 0 );
	int32 vr$16 = FBGETCPUFAMILY(  );
	if( vr$16 != 0 ) goto label$123;
	{
		{
			$11FB_FUNCMODE TMP$156$3;
			TMP$156$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 84);
			if( TMP$156$3 == 1 ) goto label$126;
			label$127:;
			if( TMP$156$3 == 2 ) goto label$126;
			label$128:;
			if( TMP$156$3 != 4 ) goto label$125;
			label$126:;
			{
				{
					$13FB_COMPTARGET TMP$157$5;
					TMP$157$5 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
					if( TMP$157$5 == 0 ) goto label$131;
					label$132:;
					if( TMP$157$5 != 4 ) goto label$130;
					label$131:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __stdcall", 11, 0 );
					}
					goto label$129;
					label$130:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __attribute__((stdcall))", 26, 0 );
					}
					label$133:;
					label$129:;
				}
			}
			goto label$124;
			label$125:;
			if( TMP$156$3 != 5 ) goto label$134;
			label$135:;
			{
				{
					$13FB_COMPTARGET TMP$160$5;
					TMP$160$5 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
					if( TMP$160$5 == 0 ) goto label$138;
					label$139:;
					if( TMP$160$5 != 4 ) goto label$137;
					label$138:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __thiscall", 12, 0 );
					}
					goto label$136;
					label$137:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __attribute__((thiscall))", 27, 0 );
					}
					label$140:;
					label$136:;
				}
			}
			goto label$124;
			label$134:;
			if( TMP$156$3 != 6 ) goto label$141;
			label$142:;
			{
				{
					$13FB_COMPTARGET TMP$163$5;
					TMP$163$5 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
					if( TMP$163$5 == 0 ) goto label$145;
					label$146:;
					if( TMP$163$5 != 4 ) goto label$144;
					label$145:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __fastcall", 12, 0 );
					}
					goto label$143;
					label$144:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __attribute__((fastcall))", 27, 0 );
					}
					label$147:;
					label$143:;
				}
			}
			label$141:;
			label$124:;
		}
	}
	label$123:;
	label$122:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
	uint8* vr$25 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$25, 0, 0 );
	if( (OPTIONS$1 & 2) == 0 ) goto label$149;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"(*", 3, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&MANGLED$1, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)")", 2, 0 );
	}
	goto label$148;
	label$149:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&MANGLED$1, -1, 0 );
	}
	label$148:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"( ", 3, 0 );
	struct $8FBSYMBOL* HIDDEN$1;
	HIDDEN$1 = (struct $8FBSYMBOL*)0u;
	int32 vr$35 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$35 == 0 ) goto label$151;
	{
		if( (OPTIONS$1 & 1) == 0 ) goto label$153;
		{
			FBSTRING TMP$168$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32);
			FBSTRING* vr$55 = HEMITTYPE( ((((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 32505856), HIDDEN$1 );
			__builtin_memset( &TMP$168$3, 0, 12 );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$168$3, (void*)&LN$1, -1, (void*)vr$55, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$59, -1, 0 );
		}
		goto label$152;
		label$153:;
		{
			FBSTRING TMP$169$3;
			FBSTRING TMP$170$3;
			FBSTRING TMP$171$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112);
			FBSTRING* vr$81 = HEMITTYPE( ((((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)HIDDEN$1 + 28) & 511) & 32505856), *(struct $8FBSYMBOL**)((uint8*)HIDDEN$1 + 32) );
			__builtin_memset( &TMP$169$3, 0, 12 );
			FBSTRING* vr$85 = fb_StrConcat( &TMP$169$3, (void*)&LN$1, -1, (void*)vr$81, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$85, -1, 0 );
			uint8* vr$87 = SYMBGETMANGLEDNAME( HIDDEN$1 );
			__builtin_memset( &TMP$170$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$170$3, (void*)" ", 2, (void*)vr$87, 0 );
			__builtin_memset( &TMP$171$3, 0, 12 );
			FBSTRING* vr$94 = fb_StrConcat( &TMP$171$3, (void*)&LN$1, -1, (void*)vr$90, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$94, -1, 0 );
		}
		label$152:;
		if( (int32)*(int16*)((uint8*)PROC$1 + 68) <= 0 ) goto label$155;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		label$155:;
		label$154:;
	}
	label$151:;
	label$150:;
	struct $8FBSYMBOL* PARAM$1;
	if( *(int32*)((uint8*)PROC$1 + 84) != 4 ) goto label$156;
	TMP$173$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	goto label$1202;
	label$156:;
	TMP$173$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$1202:;
	PARAM$1 = TMP$173$1;
	if( (-(HIDDEN$1 == (struct $8FBSYMBOL*)0u) & -(PARAM$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$158;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"void", 5, 0 );
	}
	label$158:;
	label$157:;
	label$159:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$160;
	{
		struct $8FBSYMBOL* TMP$178$2;
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$162;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"...", 4, 0 );
		}
		goto label$161;
		label$162:;
		{
			if( (*(int32*)((uint8*)PARAM$1 + 12) & 524288) == 0 ) goto label$164;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"char**", 7, 0 );
			}
			goto label$163;
			label$164:;
			{
				_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( PARAM$1, &DTYPE$1, &SUBTYPE$1 );
				FBSTRING* vr$113 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$113, -1, 0 );
			}
			label$163:;
			if( (OPTIONS$1 & 1) != 0 ) goto label$166;
			{
				FBSTRING TMP$176$4;
				FBSTRING TMP$177$4;
				uint8* vr$117 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 60) );
				__builtin_memset( &TMP$176$4, 0, 12 );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$176$4, (void*)" ", 2, (void*)vr$117, 0 );
				__builtin_memset( &TMP$177$4, 0, 12 );
				FBSTRING* vr$124 = fb_StrConcat( &TMP$177$4, (void*)&LN$1, -1, (void*)vr$120, -1 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$124, -1, 0 );
			}
			label$166:;
			label$165:;
		}
		label$161:;
		if( *(int32*)((uint8*)PROC$1 + 84) != 4 ) goto label$167;
		TMP$178$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
		goto label$1203;
		label$167:;
		TMP$178$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		label$1203:;
		PARAM$1 = TMP$178$2;
		if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$169;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", ", 3, 0 );
		}
		label$169:;
		label$168:;
	}
	goto label$159;
	label$160:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" )", 3, 0 );
	if( (-((OPTIONS$1 & 2) == 0) & -((OPTIONS$1 & 1) != 0)) == 0 ) goto label$171;
	{
		int32 vr$136 = HNEEDALIAS( PROC$1 );
		if( vr$136 == 0 ) goto label$173;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" asm(\x22", 7, 0 );
			FBSTRING* vr$138 = HGETMANGLEDNAMEFORASM( PROC$1, -1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$138, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22)", 3, 0 );
		}
		label$173:;
		label$172:;
		HAPPENDCTORATTRIB( &LN$1, PROC$1, 0 );
	}
	label$171:;
	label$170:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&LN$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$115:;
	FBSTRING* vr$147 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$147;
}

static FBSTRING* HGETUDTTAG( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$174:;
	if( *(int32*)SYM$1 != 10 ) goto label$177;
	{
		if( (*(int32*)((uint8*)SYM$1 + 120) & 1) == 0 ) goto label$179;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"union ", 7, 0 );
		}
		goto label$178;
		label$179:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"struct ", 8, 0 );
		}
		label$178:;
	}
	label$177:;
	label$176:;
	label$175:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* HGETUDTID( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$185$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$180:;
	if( ((*(int32*)((uint8*)SYM$1 + 28) & 32505856) >> (20 & 31)) != 19 ) goto label$183;
	{
		{
			$19FB_CVA_LIST_TYPEDEF TMP$183$3;
			$19FB_CVA_LIST_TYPEDEF vr$6 = SYMBGETVALISTTYPE( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
			TMP$183$3 = vr$6;
			if( TMP$183$3 == 3 ) goto label$186;
			label$187:;
			if( TMP$183$3 == 4 ) goto label$186;
			label$188:;
			if( TMP$183$3 != 5 ) goto label$185;
			label$186:;
			{
				fb_StrAssign( (void*)&fb$result$1, -1, *(void**)((uint8*)SYM$1 + 20), 0, 0 );
				goto label$181;
			}
			label$185:;
			label$184:;
		}
	}
	label$183:;
	label$182:;
	uint8* vr$9 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$185$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$185$1, (void*)"$", 2, (void*)vr$9, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$12, -1, 0 );
	label$181:;
	FBSTRING* vr$15 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$15;
}

static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$189:;
	FBSTRING* vr$1 = HGETUDTTAG( SYM$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	FBSTRING* vr$3 = HGETUDTID( SYM$1 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)vr$3, -1, 0 );
	label$190:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static void HEMITUDT( struct $8FBSYMBOL* S$1, int32 IS_PTR$1 )
{
	label$191:;
	int32 SECTION$1;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$194;
	{
		goto label$192;
	}
	label$194:;
	label$193:;
	if( (*(int32*)((uint8*)S$1 + 12) & 67108864) == 0 ) goto label$196;
	{
		goto label$192;
	}
	label$196:;
	label$195:;
	if( (*(int32*)((uint8*)S$1 + 4) & 128) == 0 ) goto label$198;
	{
		SECTION$1 = (int32)*(uint16*)((uint8*)S$1 + 36) + 1;
		if( (int32)*(uint16*)((uint8*)S$1 + 36) != 0 ) goto label$200;
		{
			SECTION$1 = SECTION$1 + 1;
		}
		goto label$199;
		label$200:;
		if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)S$1 + 144) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$201;
		{
			SECTION$1 = SECTION$1 + 1;
		}
		label$201:;
		label$199:;
		if( SECTION$1 <= *(int32*)((uint8*)&CTX$ + 2580) ) goto label$203;
		{
			SECTION$1 = *(int32*)((uint8*)&CTX$ + 2580);
		}
		label$203:;
		label$202:;
	}
	goto label$197;
	label$198:;
	{
		SECTION$1 = 0;
	}
	label$197:;
	int32 vr$14 = SECTIONGOSUB( SECTION$1 );
	SECTION$1 = vr$14;
	{
		uint32 TMP$186$2;
		TMP$186$2 = *(uint32*)S$1;
		goto label$205;
		label$206:;
		{
			FBSTRING TMP$189$3;
			FBSTRING TMP$190$3;
			FBSTRING TMP$191$3;
			FBSTRING TMP$192$3;
			FBSTRING TMP$193$3;
			*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 67108864;
			__builtin_memset( &TMP$193$3, 0, 12 );
			FBSTRING* vr$20 = HGETUDTNAME( S$1 );
			FBSTRING* vr$21 = HEMITTYPE( 10, (struct $8FBSYMBOL*)0u );
			__builtin_memset( &TMP$189$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$189$3, (void*)"typedef ", 9, (void*)vr$21, -1 );
			__builtin_memset( &TMP$190$3, 0, 12 );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$190$3, (void*)vr$24, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$191$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$191$3, (void*)vr$27, -1, (void*)vr$20, -1 );
			__builtin_memset( &TMP$192$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$192$3, (void*)vr$30, -1, (void*)";", 2 );
			fb_StrAssign( (void*)&TMP$193$3, -1, (void*)vr$33, -1, 0 );
			HWRITELINE( &TMP$193$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$193$3 );
		}
		goto label$204;
		label$207:;
		{
			HEMITSTRUCT( S$1, IS_PTR$1 );
		}
		goto label$204;
		label$208:;
		{
			if( (*(int32*)((uint8*)S$1 + 12) & 16384) == 0 ) goto label$210;
			{
				FBSTRING DECL$4;
				FBSTRING* vr$39 = HEMITPROCHEADER( S$1, 3 );
				fb_StrInit( (void*)&DECL$4, -1, (void*)vr$39, -1, 0 );
				if( (*(int32*)((uint8*)S$1 + 12) & 67108864) != 0 ) goto label$212;
				{
					FBSTRING TMP$194$5;
					FBSTRING TMP$195$5;
					FBSTRING TMP$196$5;
					__builtin_memset( &TMP$196$5, 0, 12 );
					__builtin_memset( &TMP$194$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$194$5, (void*)"typedef ", 9, (void*)&DECL$4, -1 );
					__builtin_memset( &TMP$195$5, 0, 12 );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$195$5, (void*)vr$47, -1, (void*)";", 2 );
					fb_StrAssign( (void*)&TMP$196$5, -1, (void*)vr$50, -1, 0 );
					HWRITELINE( &TMP$196$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$196$5 );
					*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 67108864;
				}
				label$212:;
				label$211:;
				fb_StrDelete( (FBSTRING*)&DECL$4 );
			}
			label$210:;
			label$209:;
		}
		goto label$204;
		label$205:;
		static const void* tmp$677[8] = {
			&&label$208,
			&&label$204,
			&&label$204,
			&&label$204,
			&&label$204,
			&&label$204,
			&&label$206,
			&&label$207,
		};
		if( (TMP$186$2 - 3u) > 7u ) goto label$204;
		goto *tmp$677[TMP$186$2 - 3u];
		label$204:;
	}
	SECTIONRETURN( SECTION$1 );
	label$192:;
}

static FBSTRING* HEMITARRAYDECL( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$213:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 512) == 0 ) goto label$216;
	{
		fb_StrDelete( (FBSTRING*)&S$1 );
		goto label$214;
	}
	label$216:;
	label$215:;
	{
		$12FB_SYMBCLASS TMP$197$2;
		TMP$197$2 = *($12FB_SYMBCLASS*)SYM$1;
		if( TMP$197$2 == 1 ) goto label$219;
		label$220:;
		if( TMP$197$2 != 12 ) goto label$218;
		label$219:;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) != 0 ) goto label$222;
			{
				{
					int32 I$5;
					I$5 = 0;
					int32 TMP$198$5;
					TMP$198$5 = *(int32*)((uint8*)SYM$1 + 64) + -1;
					goto label$223;
					label$226:;
					{
						FBSTRING TMP$201$6;
						FBSTRING TMP$202$6;
						FBSTRING TMP$203$6;
						FBSTRING* vr$18 = fb_LongintToStr( (*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31)))) + 1ll );
						__builtin_memset( &TMP$201$6, 0, 12 );
						FBSTRING* vr$21 = fb_StrConcat( &TMP$201$6, (void*)"[", 2, (void*)vr$18, -1 );
						__builtin_memset( &TMP$202$6, 0, 12 );
						FBSTRING* vr$24 = fb_StrConcat( &TMP$202$6, (void*)vr$21, -1, (void*)"]", 2 );
						__builtin_memset( &TMP$203$6, 0, 12 );
						FBSTRING* vr$28 = fb_StrConcat( &TMP$203$6, (void*)&S$1, -1, (void*)vr$24, -1 );
						fb_StrAssign( (void*)&S$1, -1, (void*)vr$28, -1, 0 );
					}
					label$224:;
					I$5 = I$5 + 1;
					label$223:;
					if( I$5 <= TMP$198$5 ) goto label$226;
					label$225:;
				}
			}
			label$222:;
			label$221:;
		}
		label$218:;
		label$217:;
	}
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) != 0 ) goto label$228;
	{
		int64 LENGTH$2;
		LENGTH$2 = 0ll;
		{
			int32 TMP$204$3;
			TMP$204$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$204$3 == 18 ) goto label$231;
			label$232:;
			if( TMP$204$3 != 4 ) goto label$230;
			label$231:;
			{
				LENGTH$2 = *(int64*)((uint8*)SYM$1 + 40);
			}
			goto label$229;
			label$230:;
			if( TMP$204$3 != 7 ) goto label$233;
			label$234:;
			{
				int64 vr$38 = __divdi3( *(int64*)((uint8*)SYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
				LENGTH$2 = vr$38;
			}
			label$233:;
			label$229:;
		}
		if( LENGTH$2 <= 0ll ) goto label$236;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"[", 2, 0 );
			FBSTRING* vr$40 = fb_LongintToStr( LENGTH$2 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$40, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"]", 2, 0 );
		}
		label$236:;
		label$235:;
	}
	label$228:;
	label$227:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$214:;
	FBSTRING* vr$47 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$47;
}

static void HEMITVARDECL( int32 USE_EXTERN$1, struct $8FBSYMBOL* SYM$1, uint8* VARINI$1 )
{
	FBSTRING TMP$206$1;
	FBSTRING TMP$207$1;
	FBSTRING TMP$208$1;
	label$237:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	if( USE_EXTERN$1 == 0 ) goto label$240;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"extern ", 8, 0 );
	}
	goto label$239;
	label$240:;
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) & -((*(int32*)((uint8*)SYM$1 + 4) & 56) == 0)) == 0 ) goto label$241;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"static ", 8, 0 );
	}
	label$241:;
	label$239:;
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 4 );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	FBSTRING* vr$15 = HEMITTYPE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
	__builtin_memset( &TMP$206$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$206$1, (void*)&LN$1, -1, (void*)vr$15, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$19, -1, 0 );
	uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$207$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$207$1, (void*)" ", 2, (void*)vr$21, 0 );
	__builtin_memset( &TMP$208$1, 0, 12 );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$208$1, (void*)&LN$1, -1, (void*)vr$24, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$28, -1, 0 );
	FBSTRING* vr$30 = HEMITARRAYDECL( SYM$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$30, -1, 0 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0) & ~USE_EXTERN$1) == 0 ) goto label$243;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __attribute__((common))", 25, 0 );
	}
	label$243:;
	label$242:;
	if( VARINI$1 == (uint8*)0u ) goto label$245;
	{
		FBSTRING TMP$211$2;
		FBSTRING TMP$212$2;
		__builtin_memset( &TMP$211$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$211$2, (void*)" = ", 4, (void*)VARINI$1, 0 );
		__builtin_memset( &TMP$212$2, 0, 12 );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$212$2, (void*)&LN$1, -1, (void*)vr$40, -1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$44, -1, 0 );
	}
	label$245:;
	label$244:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)";", 2, 0 );
	HWRITELINE( &LN$1, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$238:;
}

static void HMAYBEEMITLOCALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$246:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$249;
	{
		goto label$247;
	}
	label$249:;
	label$248:;
	if( (-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) != (struct $7ASTNODE*)0u) & -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0)) == 0 ) goto label$251;
	{
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
	}
	goto label$250;
	label$251:;
	{
		HEMITVARDECL( 0, SYM$1, (uint8*)0u );
	}
	label$250:;
	label$247:;
}

static void HALLOCGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$252:;
	if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 56) == (struct $7ASTNODE*)0u ) goto label$255;
	{
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 32) == 0) & -((*(int32*)((uint8*)SYM$1 + 12) & 2) == 0)) == 0 ) goto label$257;
		{
			goto label$253;
		}
		label$257:;
		label$256:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
	}
	goto label$254;
	label$255:;
	{
		HEMITVARDECL( 0, SYM$1, (uint8*)0u );
	}
	label$254:;
	label$253:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$258:;
	if( ((-((*(int32*)((uint8*)SYM$1 + 4) & 1024) != 0) | (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) & -((*(int32*)((uint8*)SYM$1 + 12) & 2) == 0))) | -((*(int32*)((uint8*)SYM$1 + 4) & 16388) != 0)) == 0 ) goto label$261;
	{
		goto label$259;
	}
	label$261:;
	label$260:;
	{
		int32 TMP$213$2;
		TMP$213$2 = *(int32*)((uint8*)&CTX$ + 2756);
		if( TMP$213$2 != 1 ) goto label$263;
		label$264:;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 56) == 0 ) goto label$266;
			{
				HEMITVARDECL( -1, SYM$1, (uint8*)0u );
			}
			goto label$265;
			label$266:;
			{
				HALLOCGLOBALVAR( SYM$1 );
			}
			label$265:;
		}
		goto label$262;
		label$263:;
		if( TMP$213$2 != 2 ) goto label$267;
		label$268:;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 40) == 0 ) goto label$270;
			{
				HALLOCGLOBALVAR( SYM$1 );
			}
			label$270:;
			label$269:;
		}
		label$267:;
		label$262:;
	}
	label$259:;
}

static void HMAYBEEMITGLOBALVAREXCEPTDATASTMT( struct $8FBSYMBOL* SYM$1 )
{
	label$271:;
	int32 vr$0 = SYMBISDATADESC( SYM$1 );
	if( vr$0 == 0 ) goto label$274;
	{
		goto label$272;
	}
	label$274:;
	label$273:;
	HMAYBEEMITGLOBALVAR( SYM$1 );
	label$272:;
}

static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$214$1;
	FBSTRING TMP$215$1;
	label$275:;
	int32 SECTION$1;
	if( (-((*(int32*)((uint8*)S$1 + 12) & 16384) != 0) | -((*(int32*)((uint8*)S$1 + 12) & 2) == 0)) == 0 ) goto label$278;
	{
		goto label$276;
	}
	label$278:;
	label$277:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( S$1 );
	if( vr$7 != (uint8*)0u ) goto label$280;
	{
		goto label$276;
	}
	label$280:;
	label$279:;
	int32 vr$8 = SECTIONGOSUB( 0 );
	SECTION$1 = vr$8;
	__builtin_memset( &TMP$215$1, 0, 12 );
	FBSTRING* vr$10 = HEMITPROCHEADER( S$1, 1 );
	__builtin_memset( &TMP$214$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$214$1, (void*)vr$10, -1, (void*)";", 2 );
	fb_StrAssign( (void*)&TMP$215$1, -1, (void*)vr$13, -1, 0 );
	HWRITELINE( &TMP$215$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$215$1 );
	SECTIONRETURN( SECTION$1 );
	label$276:;
}

static void HEMITFIELDTYPES( struct $8FBSYMBOL* UDT$1 )
{
	label$281:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* vr$0 = SYMBUDTGETFIRSTFIELD( UDT$1 );
	FLD$1 = vr$0;
	label$283:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$284;
	{
		HEMITUDT( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32), -(((*(int32*)((uint8*)FLD$1 + 28) & 511) & 480) != 0) );
		struct $8FBSYMBOL* vr$6 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$6;
	}
	goto label$283;
	label$284:;
	label$282:;
}

static struct $8FBSYMBOL** HFINDPARENTANONALREADYONSTACK( struct $8FBSYMBOL* FLD$1 )
{
	struct $8FBSYMBOL** fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$285:;
	struct $8FBSYMBOL** ANONNODE$1;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 168);
	label$287:;
	{
		void* vr$3 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&CTX$ + 2608) );
		ANONNODE$1 = (struct $8FBSYMBOL**)vr$3;
		label$290:;
		if( ANONNODE$1 == (struct $8FBSYMBOL**)0u ) goto label$291;
		{
			if( *ANONNODE$1 != PARENT$1 ) goto label$293;
			{
				fb$result$1 = ANONNODE$1;
				goto label$286;
			}
			label$293:;
			label$292:;
			void* vr$5 = LISTGETPREV( (void*)ANONNODE$1 );
			ANONNODE$1 = (struct $8FBSYMBOL**)vr$5;
		}
		goto label$290;
		label$291:;
		PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 168);
	}
	label$289:;
	if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$287;
	label$288:;
	fb$result$1 = (struct $8FBSYMBOL**)0u;
	label$286:;
	return fb$result$1;
}

static void HPUSHANONPARENTS( struct $8FBSYMBOL* BASEPARENT$1, struct $8FBSYMBOL* PARENT$1 )
{
	label$294:;
	if( PARENT$1 != BASEPARENT$1 ) goto label$297;
	{
		goto label$295;
	}
	label$297:;
	label$296:;
	HPUSHANONPARENTS( BASEPARENT$1, *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 168) );
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 1) == 0 ) goto label$299;
	{
		FBSTRING TMP$217$2;
		__builtin_memset( &TMP$217$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$217$2, -1, (void*)"union {", 8, 0 );
		HWRITELINE( &TMP$217$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$217$2 );
	}
	goto label$298;
	label$299:;
	{
		FBSTRING TMP$219$2;
		__builtin_memset( &TMP$219$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$219$2, -1, (void*)"struct {", 9, 0 );
		HWRITELINE( &TMP$219$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$219$2 );
	}
	label$298:;
	SECTIONINDENT(  );
	void* vr$12 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2608) );
	*(struct $8FBSYMBOL**)vr$12 = PARENT$1;
	label$295:;
}

static void HPOPANONPARENTS( struct $8FBSYMBOL** ANONNODE$1 )
{
	label$300:;
	label$302:;
	void* vr$1 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&CTX$ + 2608) );
	if( (uint32)vr$1 == (uint32)ANONNODE$1 ) goto label$303;
	{
		FBSTRING TMP$221$2;
		SECTIONUNINDENT(  );
		__builtin_memset( &TMP$221$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$221$2, -1, (void*)"};", 3, 0 );
		HWRITELINE( &TMP$221$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$221$2 );
		void* vr$7 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&CTX$ + 2608) );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2608), vr$7 );
	}
	goto label$302;
	label$303:;
	label$301:;
}

static void HEMITSTRUCTWITHFIELDS( struct $8FBSYMBOL* S$1 )
{
	label$304:;
	int32 SKIP$1;
	int32 DTYPE$1;
	int32 ALIGN$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL** ANONNODE$1;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	struct $8FBSYMBOL* vr$1 = SYMBUDTGETFIRSTFIELD( S$1 );
	FLD$1 = vr$1;
	label$306:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$307;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 168) != S$1 ) goto label$309;
		{
			HPOPANONPARENTS( (struct $8FBSYMBOL**)0u );
		}
		goto label$308;
		label$309:;
		{
			struct $8FBSYMBOL* TMP$222$3;
			struct $8FBSYMBOL** vr$3 = HFINDPARENTANONALREADYONSTACK( FLD$1 );
			ANONNODE$1 = vr$3;
			HPOPANONPARENTS( ANONNODE$1 );
			if( ANONNODE$1 == (struct $8FBSYMBOL**)0u ) goto label$310;
			TMP$222$3 = *ANONNODE$1;
			goto label$1204;
			label$310:;
			TMP$222$3 = S$1;
			label$1204:;
			HPUSHANONPARENTS( TMP$222$3, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 168) );
		}
		label$308:;
		SKIP$1 = -((*(int32*)((uint8*)FLD$1 + 4) & 4) != 0);
		if( SKIP$1 != 0 ) goto label$312;
		{
			FBSTRING TMP$223$3;
			FBSTRING TMP$224$3;
			int32 TMP$228$3;
			DTYPE$1 = *(int32*)((uint8*)FLD$1 + 28) & 511;
			SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32);
			FBSTRING* vr$12 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$12, -1, 0 );
			__builtin_memset( &TMP$223$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$223$3, (void*)" ", 2, *(void**)((uint8*)FLD$1 + 16), 0 );
			__builtin_memset( &TMP$224$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$224$3, (void*)&LN$1, -1, (void*)vr$17, -1 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$21, -1, 0 );
			FBSTRING* vr$23 = HEMITARRAYDECL( FLD$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$23, -1, 0 );
			ALIGN$1 = (int32)*(uint8*)((uint8*)S$1 + 125);
			if( ALIGN$1 <= 0 ) goto label$314;
			{
				int32 TMP$225$4;
				int32 vr$27 = TYPECALCNATURALALIGN( DTYPE$1, SUBTYPE$1 );
				SKIP$1 = -(ALIGN$1 >= vr$27);
				if( (DTYPE$1 & 480) == 0 ) goto label$315;
				TMP$225$4 = 24;
				goto label$1205;
				label$315:;
				TMP$225$4 = DTYPE$1 & 31;
				label$1205:;
				if( TMP$225$4 != 20 ) goto label$317;
				{
					uint8 FIELDUDTALIGN$5;
					FIELDUDTALIGN$5 = *(uint8*)((uint8*)SUBTYPE$1 + 125);
					if( (int32)FIELDUDTALIGN$5 <= 0 ) goto label$319;
					{
						SKIP$1 = SKIP$1 | -(ALIGN$1 >= (int32)FIELDUDTALIGN$5);
					}
					label$319:;
					label$318:;
				}
				label$317:;
				label$316:;
				if( SKIP$1 != 0 ) goto label$321;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __attribute__((packed, aligned(", 33, 0 );
					FBSTRING* vr$37 = fb_IntToStr( ALIGN$1 );
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$37, -1, 0 );
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)")))", 4, 0 );
				}
				label$321:;
				label$320:;
			}
			label$314:;
			label$313:;
			if( ALIGN$1 <= 0 ) goto label$322;
			TMP$228$3 = -(SKIP$1 != 0);
			goto label$1206;
			label$322:;
			TMP$228$3 = -1;
			label$1206:;
			if( TMP$228$3 == 0 ) goto label$324;
			{
				int32 TMP$229$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$325;
				TMP$229$4 = 24;
				goto label$1207;
				label$325:;
				TMP$229$4 = DTYPE$1 & 31;
				label$1207:;
				if( TMP$229$4 != 20 ) goto label$327;
				{
					int32 TMP$230$5;
					int32 TMP$231$5;
					int32 EFFECTIVEALIGN$5;
					int32 vr$43 = TYPECALCNATURALALIGN( DTYPE$1, SUBTYPE$1 );
					EFFECTIVEALIGN$5 = vr$43;
					if( ALIGN$1 <= 0 ) goto label$328;
					TMP$230$5 = -(ALIGN$1 < EFFECTIVEALIGN$5);
					goto label$1208;
					label$328:;
					TMP$230$5 = 0;
					label$1208:;
					if( TMP$230$5 == 0 ) goto label$330;
					{
						EFFECTIVEALIGN$5 = ALIGN$1;
					}
					label$330:;
					label$329:;
					uint8 FIELDUDTALIGN$5;
					FIELDUDTALIGN$5 = *(uint8*)((uint8*)SUBTYPE$1 + 125);
					if( (int32)FIELDUDTALIGN$5 <= 0 ) goto label$331;
					TMP$231$5 = -(EFFECTIVEALIGN$5 > (int32)FIELDUDTALIGN$5);
					goto label$1209;
					label$331:;
					TMP$231$5 = 0;
					label$1209:;
					if( TMP$231$5 == 0 ) goto label$333;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __attribute__((aligned(", 25, 0 );
						FBSTRING* vr$50 = fb_IntToStr( EFFECTIVEALIGN$5 );
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$50, -1, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)")))", 4, 0 );
					}
					label$333:;
					label$332:;
				}
				label$327:;
				label$326:;
			}
			label$324:;
			label$323:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)";", 2, 0 );
			HWRITELINE( &LN$1, -1 );
		}
		label$312:;
		label$311:;
		struct $8FBSYMBOL* vr$55 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$55;
	}
	goto label$306;
	label$307:;
	HPOPANONPARENTS( (struct $8FBSYMBOL**)0u );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$305:;
}

static void HEMITSTRUCT( struct $8FBSYMBOL* S$1, int32 IS_PTR$1 )
{
	FBSTRING TMP$242$1;
	FBSTRING TMP$245$1;
	FBSTRING TMP$246$1;
	FBSTRING TMP$247$1;
	FBSTRING TMP$248$1;
	FBSTRING TMP$249$1;
	label$334:;
	int32 EMIT_FIELDS$1;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	if( (*(int32*)((uint8*)S$1 + 12) & 134217728) == 0 ) goto label$337;
	{
		if( IS_PTR$1 == 0 ) goto label$339;
		{
			if( (*(int32*)((uint8*)S$1 + 12) & 2) != 0 ) goto label$341;
			{
				FBSTRING TMP$233$4;
				FBSTRING TMP$234$4;
				*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 2;
				__builtin_memset( &TMP$234$4, 0, 12 );
				FBSTRING* vr$9 = HGETUDTNAME( S$1 );
				__builtin_memset( &TMP$233$4, 0, 12 );
				FBSTRING* vr$12 = fb_StrConcat( &TMP$233$4, (void*)vr$9, -1, (void*)";", 2 );
				fb_StrAssign( (void*)&TMP$234$4, -1, (void*)vr$12, -1, 0 );
				HWRITELINE( &TMP$234$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$234$4 );
			}
			label$341:;
			label$340:;
			fb_StrDelete( (FBSTRING*)&LN$1 );
			goto label$335;
		}
		label$339:;
		label$338:;
	}
	label$337:;
	label$336:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 134217728;
	EMIT_FIELDS$1 = -((*(int32*)((uint8*)S$1 + 120) & 32768) == 0);
	if( EMIT_FIELDS$1 == 0 ) goto label$343;
	{
		HEMITFIELDTYPES( S$1 );
	}
	label$343:;
	label$342:;
	if( (*(int32*)((uint8*)S$1 + 12) & 67108864) == 0 ) goto label$345;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$335;
	}
	label$345:;
	label$344:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 67108864;
	FBSTRING* vr$29 = HGETUDTTAG( S$1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$29, -1, 0 );
	if( (-(*(int32*)((uint8*)&ENV$ + 108) == 0) & -((int32)*(uint8*)((uint8*)S$1 + 125) > 0)) == 0 ) goto label$347;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"__attribute__((gcc_struct)) ", 29, 0 );
	}
	label$347:;
	label$346:;
	FBSTRING* vr$37 = HGETUDTID( S$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$37, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" {", 3, 0 );
	HWRITELINE( &LN$1, -1 );
	SECTIONINDENT(  );
	if( EMIT_FIELDS$1 == 0 ) goto label$349;
	{
		HEMITSTRUCTWITHFIELDS( S$1 );
	}
	goto label$348;
	label$349:;
	{
		FBSTRING TMP$239$2;
		FBSTRING TMP$240$2;
		FBSTRING TMP$241$2;
		__builtin_memset( &TMP$241$2, 0, 12 );
		FBSTRING* vr$43 = fb_LongintToStr( *(int64*)((uint8*)S$1 + 40) );
		__builtin_memset( &TMP$239$2, 0, 12 );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$239$2, (void*)"uint8 __fb_struct_body[", 24, (void*)vr$43, -1 );
		__builtin_memset( &TMP$240$2, 0, 12 );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$240$2, (void*)vr$46, -1, (void*)"];", 3 );
		fb_StrAssign( (void*)&TMP$241$2, -1, (void*)vr$49, -1, 0 );
		HWRITELINE( &TMP$241$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$241$2 );
	}
	label$348:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$242$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$242$1, -1, (void*)"};", 3, 0 );
	HWRITELINE( &TMP$242$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$242$1 );
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) & -134217729;
	__builtin_memset( &TMP$249$1, 0, 12 );
	FBSTRING* vr$62 = fb_ULongintToStr( *(uint64*)((uint8*)S$1 + 40) );
	FBSTRING* vr$63 = HGETUDTID( S$1 );
	FBSTRING* vr$64 = HGETUDTTAG( S$1 );
	__builtin_memset( &TMP$245$1, 0, 12 );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$245$1, (void*)"sizeof( ", 9, (void*)vr$64, -1 );
	__builtin_memset( &TMP$246$1, 0, 12 );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$246$1, (void*)vr$67, -1, (void*)vr$63, -1 );
	__builtin_memset( &TMP$247$1, 0, 12 );
	FBSTRING* vr$73 = fb_StrConcat( &TMP$247$1, (void*)vr$70, -1, (void*)" ) == ", 7 );
	__builtin_memset( &TMP$248$1, 0, 12 );
	FBSTRING* vr$76 = fb_StrConcat( &TMP$248$1, (void*)vr$73, -1, (void*)vr$62, -1 );
	fb_StrAssign( (void*)&TMP$249$1, -1, (void*)vr$76, -1, 0 );
	HWRITESTATICASSERT( &TMP$249$1 );
	fb_StrDelete( (FBSTRING*)&TMP$249$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$335:;
}

static void HWRITEX86F2I( FBSTRING* FNAME$1, int32 RTYPE$1, int32 PTYPE$1 )
{
	FBSTRING TMP$255$1;
	FBSTRING TMP$259$1;
	FBSTRING TMP$260$1;
	FBSTRING TMP$261$1;
	FBSTRING TMP$262$1;
	FBSTRING TMP$263$1;
	FBSTRING TMP$264$1;
	FBSTRING TMP$265$1;
	FBSTRING TMP$267$1;
	FBSTRING TMP$270$1;
	FBSTRING TMP$271$1;
	FBSTRING TMP$272$1;
	FBSTRING TMP$274$1;
	FBSTRING TMP$277$1;
	FBSTRING TMP$278$1;
	FBSTRING TMP$279$1;
	FBSTRING TMP$282$1;
	FBSTRING TMP$283$1;
	FBSTRING TMP$284$1;
	FBSTRING TMP$286$1;
	FBSTRING TMP$288$1;
	FBSTRING TMP$290$1;
	FBSTRING TMP$292$1;
	FBSTRING TMP$294$1;
	FBSTRING TMP$296$1;
	label$350:;
	FBSTRING RTYPE_STR$1;
	FBSTRING* vr$0 = HEMITTYPE( RTYPE$1, (struct $8FBSYMBOL*)0u );
	fb_StrInit( (void*)&RTYPE_STR$1, -1, (void*)vr$0, -1, 0 );
	FBSTRING PTYPE_STR$1;
	FBSTRING* vr$2 = HEMITTYPE( PTYPE$1, (struct $8FBSYMBOL*)0u );
	fb_StrInit( (void*)&PTYPE_STR$1, -1, (void*)vr$2, -1, 0 );
	FBSTRING RTYPE_SUFFIX$1;
	__builtin_memset( &RTYPE_SUFFIX$1, 0, 12 );
	FBSTRING PTYPE_SUFFIX$1;
	__builtin_memset( &PTYPE_SUFFIX$1, 0, 12 );
	if( *(int32*)((uint8*)&ENV$ + 132) != 1 ) goto label$353;
	{
		{
			int32 TMP$250$3;
			int32 TMP$251$3;
			if( (RTYPE$1 & 480) == 0 ) goto label$354;
			TMP$250$3 = 24;
			goto label$1210;
			label$354:;
			TMP$250$3 = RTYPE$1 & 31;
			label$1210:;
			TMP$251$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$250$3 * 28)) + 4);
			if( TMP$251$3 != 4 ) goto label$356;
			label$357:;
			{
				fb_StrAssign( (void*)&RTYPE_SUFFIX$1, -1, (void*)"l", 2, 0 );
			}
			goto label$355;
			label$356:;
			if( TMP$251$3 != 8 ) goto label$358;
			label$359:;
			{
				fb_StrAssign( (void*)&RTYPE_SUFFIX$1, -1, (void*)"q", 2, 0 );
			}
			label$358:;
			label$355:;
		}
		if( PTYPE$1 != 15 ) goto label$361;
		{
			fb_StrAssign( (void*)&PTYPE_SUFFIX$1, -1, (void*)"s", 2, 0 );
		}
		goto label$360;
		label$361:;
		{
			fb_StrAssign( (void*)&PTYPE_SUFFIX$1, -1, (void*)"l", 2, 0 );
		}
		label$360:;
	}
	label$353:;
	label$352:;
	__builtin_memset( &TMP$255$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$255$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$255$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$255$1 );
	__builtin_memset( &TMP$265$1, 0, 12 );
	__builtin_memset( &TMP$259$1, 0, 12 );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$259$1, (void*)"static inline ", 15, (void*)&RTYPE_STR$1, -1 );
	__builtin_memset( &TMP$260$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$260$1, (void*)vr$22, -1, (void*)" fb_", 5 );
	__builtin_memset( &TMP$261$1, 0, 12 );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$261$1, (void*)vr$25, -1, (void*)FNAME$1, -1 );
	__builtin_memset( &TMP$262$1, 0, 12 );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$262$1, (void*)vr$28, -1, (void*)"( ", 3 );
	__builtin_memset( &TMP$263$1, 0, 12 );
	FBSTRING* vr$34 = fb_StrConcat( &TMP$263$1, (void*)vr$31, -1, (void*)&PTYPE_STR$1, -1 );
	__builtin_memset( &TMP$264$1, 0, 12 );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$264$1, (void*)vr$34, -1, (void*)" value )", 9 );
	fb_StrAssign( (void*)&TMP$265$1, -1, (void*)vr$37, -1, 0 );
	HWRITELINE( &TMP$265$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$265$1 );
	__builtin_memset( &TMP$267$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$267$1, -1, (void*)"{", 2, 0 );
	HWRITELINE( &TMP$267$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$267$1 );
	SECTIONINDENT(  );
	__builtin_memset( &TMP$272$1, 0, 12 );
	__builtin_memset( &TMP$270$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$270$1, (void*)"volatile ", 10, (void*)&RTYPE_STR$1, -1 );
	__builtin_memset( &TMP$271$1, 0, 12 );
	FBSTRING* vr$52 = fb_StrConcat( &TMP$271$1, (void*)vr$49, -1, (void*)" result;", 9 );
	fb_StrAssign( (void*)&TMP$272$1, -1, (void*)vr$52, -1, 0 );
	HWRITELINE( &TMP$272$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$272$1 );
	__builtin_memset( &TMP$274$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$274$1, -1, (void*)"__asm__(", 9, 0 );
	HWRITELINE( &TMP$274$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$274$1 );
	SECTIONINDENT(  );
	__builtin_memset( &TMP$279$1, 0, 12 );
	__builtin_memset( &TMP$277$1, 0, 12 );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$277$1, (void*)"\x22" "fld", 5, (void*)&PTYPE_SUFFIX$1, -1 );
	__builtin_memset( &TMP$278$1, 0, 12 );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$278$1, (void*)vr$64, -1, (void*)" %1;\x22", 6 );
	fb_StrAssign( (void*)&TMP$279$1, -1, (void*)vr$67, -1, 0 );
	HWRITELINE( &TMP$279$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$279$1 );
	__builtin_memset( &TMP$284$1, 0, 12 );
	__builtin_memset( &TMP$282$1, 0, 12 );
	FBSTRING* vr$75 = fb_StrConcat( &TMP$282$1, (void*)"\x22" "fistp", 7, (void*)&RTYPE_SUFFIX$1, -1 );
	__builtin_memset( &TMP$283$1, 0, 12 );
	FBSTRING* vr$78 = fb_StrConcat( &TMP$283$1, (void*)vr$75, -1, (void*)" %0;\x22", 6 );
	fb_StrAssign( (void*)&TMP$284$1, -1, (void*)vr$78, -1, 0 );
	HWRITELINE( &TMP$284$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$284$1 );
	__builtin_memset( &TMP$286$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$286$1, -1, (void*)":\x22=m\x22 (result)", 15, 0 );
	HWRITELINE( &TMP$286$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$286$1 );
	__builtin_memset( &TMP$288$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$288$1, -1, (void*)":\x22m\x22 (value)", 13, 0 );
	HWRITELINE( &TMP$288$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$288$1 );
	__builtin_memset( &TMP$290$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$290$1, -1, (void*)":\x22st\x22", 6, 0 );
	HWRITELINE( &TMP$290$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$290$1 );
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$292$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$292$1, -1, (void*)");", 3, 0 );
	HWRITELINE( &TMP$292$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$292$1 );
	__builtin_memset( &TMP$294$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$294$1, -1, (void*)"return result;", 15, 0 );
	HWRITELINE( &TMP$294$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$294$1 );
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$296$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$296$1, -1, (void*)"}", 2, 0 );
	HWRITELINE( &TMP$296$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$296$1 );
	fb_StrDelete( (FBSTRING*)&PTYPE_SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&RTYPE_SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&PTYPE_STR$1 );
	fb_StrDelete( (FBSTRING*)&RTYPE_STR$1 );
	label$351:;
}

static void HWRITEGENERICF2I( FBSTRING* FNAME$1, int32 RTYPE$1, int32 PTYPE$1 )
{
	FBSTRING TMP$303$1;
	FBSTRING TMP$304$1;
	FBSTRING TMP$305$1;
	FBSTRING TMP$306$1;
	FBSTRING TMP$307$1;
	FBSTRING TMP$308$1;
	FBSTRING TMP$309$1;
	label$362:;
	FBSTRING CALLNAME$1;
	__builtin_memset( &CALLNAME$1, 0, 12 );
	if( PTYPE$1 != 15 ) goto label$365;
	{
		fb_StrAssign( (void*)&CALLNAME$1, -1, (void*)"nearbyintf", 11, 0 );
	}
	goto label$364;
	label$365:;
	{
		fb_StrAssign( (void*)&CALLNAME$1, -1, (void*)"nearbyint", 10, 0 );
	}
	label$364:;
	__builtin_memset( &TMP$309$1, 0, 12 );
	FBSTRING* vr$5 = HEMITTYPE( RTYPE$1, (struct $8FBSYMBOL*)0u );
	__builtin_memset( &TMP$303$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$303$1, (void*)"#define fb_", 12, (void*)FNAME$1, -1 );
	__builtin_memset( &TMP$304$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$304$1, (void*)vr$8, -1, (void*)"( value ) ((", 13 );
	__builtin_memset( &TMP$305$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$305$1, (void*)vr$11, -1, (void*)vr$5, -1 );
	__builtin_memset( &TMP$306$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$306$1, (void*)vr$14, -1, (void*)")__builtin_", 12 );
	__builtin_memset( &TMP$307$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$307$1, (void*)vr$17, -1, (void*)&CALLNAME$1, -1 );
	__builtin_memset( &TMP$308$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$308$1, (void*)vr$20, -1, (void*)"( value ))", 11 );
	fb_StrAssign( (void*)&TMP$309$1, -1, (void*)vr$23, -1, 0 );
	HWRITELINE( &TMP$309$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$309$1 );
	fb_StrDelete( (FBSTRING*)&CALLNAME$1 );
	label$363:;
}

static void HWRITEF2I( FBSTRING* FNAME$1, int32 RTYPE$1, int32 PTYPE$1 )
{
	label$366:;
	int32 vr$0 = FBGETCPUFAMILY(  );
	if( vr$0 != 0 ) goto label$369;
	{
		{
			if( RTYPE$1 == 11 ) goto label$372;
			label$373:;
			if( RTYPE$1 != 13 ) goto label$371;
			label$372:;
			{
				HWRITEX86F2I( FNAME$1, RTYPE$1, PTYPE$1 );
				goto label$367;
			}
			label$371:;
			label$370:;
		}
	}
	label$369:;
	label$368:;
	HWRITEGENERICF2I( FNAME$1, RTYPE$1, PTYPE$1 );
	label$367:;
}

static void HMAYBEEMITPROCEXPORT( struct $8FBSYMBOL* PROC$1 )
{
	label$374:;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 256) != 0 ) goto label$377;
	{
		goto label$375;
	}
	label$377:;
	label$376:;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"\x09\x22", 3, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"\x5Ct.ascii ", 10, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"\x5C\x22 -export:\x5C\x5C\x5C\x22", 16, 0 );
	FBSTRING* vr$5 = HGETMANGLEDNAMEFORASM( PROC$1, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)vr$5, -1, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"\x5C\x5C\x5C\x22\x5C\x22", 7, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"\x5Cn", 3, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"\x22\x0A", 3, 0 );
	label$375:;
}

static int32 _EMITBEGIN( void )
{
	FBSTRING TMP$317$1;
	FBSTRING TMP$319$1;
	FBSTRING TMP$321$1;
	FBSTRING TMP$323$1;
	FBSTRING TMP$325$1;
	FBSTRING TMP$327$1;
	FBSTRING TMP$329$1;
	FBSTRING TMP$331$1;
	FBSTRING TMP$337$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$378:;
	int32 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 584) );
	if( vr$2 == 0 ) goto label$381;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$381:;
	label$380:;
	int32 vr$5 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 580) = vr$5;
	FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 584) );
	int32 vr$8 = fb_FileOpen( (FBSTRING*)vr$7, 0u, 3u, 0u, *(int32*)((uint8*)&ENV$ + 580), 0 );
	if( vr$8 == 0 ) goto label$383;
	{
		fb$result$1 = 0;
		goto label$379;
	}
	label$383:;
	label$382:;
	*(int32*)((uint8*)&CTX$ + 2580) = -1;
	*(int32*)((uint8*)&CTX$ + 2584) = 0;
	*(int32*)((uint8*)&CTX$ + 2588) = 0;
	*(uint32*)((uint8*)&CTX$ + 2604) = 0u;
	*(int32*)((uint8*)&CTX$ + 2756) = 0;
	HUPDATECURRENTFILENAME( (uint8*)((uint8*)&ENV$ + 304) );
	SECTIONBEGIN(  );
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$385;
	{
		_EMITDBG( 113, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	}
	label$385:;
	label$384:;
	__builtin_memset( &TMP$317$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$317$1, -1, (void*)"typedef   signed char       int8;", 34, 0 );
	HWRITELINE( &TMP$317$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$317$1 );
	__builtin_memset( &TMP$319$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$319$1, -1, (void*)"typedef unsigned char      uint8;", 34, 0 );
	HWRITELINE( &TMP$319$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$319$1 );
	__builtin_memset( &TMP$321$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$321$1, -1, (void*)"typedef   signed short      int16;", 35, 0 );
	HWRITELINE( &TMP$321$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$321$1 );
	__builtin_memset( &TMP$323$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$323$1, -1, (void*)"typedef unsigned short     uint16;", 35, 0 );
	HWRITELINE( &TMP$323$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$323$1 );
	__builtin_memset( &TMP$325$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$325$1, -1, (void*)"typedef   signed int        int32;", 35, 0 );
	HWRITELINE( &TMP$325$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$325$1 );
	__builtin_memset( &TMP$327$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$327$1, -1, (void*)"typedef unsigned int       uint32;", 35, 0 );
	HWRITELINE( &TMP$327$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$327$1 );
	__builtin_memset( &TMP$329$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$329$1, -1, (void*)"typedef   signed long long  int64;", 35, 0 );
	HWRITELINE( &TMP$329$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$329$1 );
	__builtin_memset( &TMP$331$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$331$1, -1, (void*)"typedef unsigned long long uint64;", 35, 0 );
	HWRITELINE( &TMP$331$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$331$1 );
	int32 vr$42 = FBIS64BIT(  );
	if( vr$42 == 0 ) goto label$387;
	{
		FBSTRING TMP$333$2;
		__builtin_memset( &TMP$333$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$333$2, -1, (void*)"typedef struct { char *data; int64 len; int64 size; } FBSTRING;", 64, 0 );
		HWRITELINE( &TMP$333$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$333$2 );
	}
	goto label$386;
	label$387:;
	{
		FBSTRING TMP$335$2;
		__builtin_memset( &TMP$335$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$335$2, -1, (void*)"typedef struct { char *data; int32 len; int32 size; } FBSTRING;", 64, 0 );
		HWRITELINE( &TMP$335$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$335$2 );
	}
	label$386:;
	__builtin_memset( &TMP$337$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$337$1, -1, (void*)"typedef int8 boolean;", 22, 0 );
	HWRITELINE( &TMP$337$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$337$1 );
	SECTIONBEGIN(  );
	fb$result$1 = -1;
	label$379:;
	return fb$result$1;
}

static void _EMITEND( void )
{
	label$388:;
	int32 SECTION$1;
	HUPDATECURRENTFILENAME( (uint8*)((uint8*)&ENV$ + 304) );
	int32 vr$1 = SECTIONGOSUB( 0 );
	SECTION$1 = vr$1;
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 1u) == 0u ) goto label$391;
	{
		FBSTRING TMP$339$2;
		__builtin_memset( &TMP$339$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$339$2, -1, (void*)"F2I", 4, 0 );
		HWRITEF2I( &TMP$339$2, 11, 15 );
		fb_StrDelete( (FBSTRING*)&TMP$339$2 );
		label$391:;
	}
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 2u) == 0u ) goto label$393;
	{
		FBSTRING TMP$341$2;
		__builtin_memset( &TMP$341$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$341$2, -1, (void*)"F2L", 4, 0 );
		HWRITEF2I( &TMP$341$2, 13, 15 );
		fb_StrDelete( (FBSTRING*)&TMP$341$2 );
		label$393:;
	}
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 4u) == 0u ) goto label$395;
	{
		FBSTRING TMP$343$2;
		__builtin_memset( &TMP$343$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$343$2, -1, (void*)"F2UL", 5, 0 );
		HWRITEF2I( &TMP$343$2, 14, 15 );
		fb_StrDelete( (FBSTRING*)&TMP$343$2 );
		label$395:;
	}
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 8u) == 0u ) goto label$397;
	{
		FBSTRING TMP$345$2;
		__builtin_memset( &TMP$345$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$345$2, -1, (void*)"D2I", 4, 0 );
		HWRITEF2I( &TMP$345$2, 11, 16 );
		fb_StrDelete( (FBSTRING*)&TMP$345$2 );
		label$397:;
	}
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 16u) == 0u ) goto label$399;
	{
		FBSTRING TMP$347$2;
		__builtin_memset( &TMP$347$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$347$2, -1, (void*)"D2L", 4, 0 );
		HWRITEF2I( &TMP$347$2, 13, 16 );
		fb_StrDelete( (FBSTRING*)&TMP$347$2 );
		label$399:;
	}
	if( (*(uint32*)((uint8*)&CTX$ + 2604) & 32u) == 0u ) goto label$401;
	{
		FBSTRING TMP$349$2;
		__builtin_memset( &TMP$349$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$349$2, -1, (void*)"D2UL", 5, 0 );
		HWRITEF2I( &TMP$349$2, 14, 16 );
		fb_StrDelete( (FBSTRING*)&TMP$349$2 );
		label$401:;
	}
	SYMBFOREACHGLOBAL( 3, (tmp$41)&HMAYBEEMITPROCPROTO );
	*(int32*)((uint8*)&CTX$ + 2756) = 1;
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HMAYBEEMITGLOBALVAREXCEPTDATASTMT );
	IRFOREACHDATASTMT( (tmp$41)&HMAYBEEMITGLOBALVAR );
	*(int32*)((uint8*)&CTX$ + 2756) = 2;
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HMAYBEEMITGLOBALVAREXCEPTDATASTMT );
	IRFOREACHDATASTMT( (tmp$41)&HMAYBEEMITGLOBALVAR );
	SECTIONRETURN( SECTION$1 );
	if( (*(int32*)((uint8*)&ENV$ + 224) & (*(int32*)((uint8*)&ENV$ + 284) & 4)) == 0 ) goto label$403;
	{
		SYMBFOREACHGLOBAL( 3, (tmp$41)&HMAYBEEMITPROCEXPORT );
		int32 vr$35 = fb_StrLen( (void*)((uint8*)&CTX$ + 2668), -1 );
		if( vr$35 <= 0 ) goto label$405;
		{
			FBSTRING TMP$351$3;
			FBSTRING TMP$352$3;
			FBSTRING TMP$353$3;
			FBSTRING TMP$355$3;
			__builtin_memset( &TMP$353$3, 0, 12 );
			__builtin_memset( &TMP$351$3, 0, 12 );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$351$3, (void*)"\x0A__asm__( \x0A\x09\x22.section .drectve\x5Cn\x22\x0A", 35, (void*)((uint8*)&CTX$ + 2668), -1 );
			__builtin_memset( &TMP$352$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$352$3, (void*)vr$40, -1, (void*)");", 3 );
			fb_StrAssign( (void*)&TMP$353$3, -1, (void*)vr$43, -1, 0 );
			HWRITELINE( &TMP$353$3, -1 );
			fb_StrDelete( (FBSTRING*)&TMP$353$3 );
			__builtin_memset( &TMP$355$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$355$3, -1, (void*)"__asm__( \x22.text\x22 );", 20, 0 );
			HWRITELINE( &TMP$355$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$355$3 );
		}
		label$405:;
		label$404:;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 2668), -1, (void*)"", 1, 0 );
	}
	label$403:;
	label$402:;
	SECTIONEND(  );
	if( *(int32*)((uint8*)&CTX$ + 12) != 0 ) goto label$407;
	{
		int32 vr$53 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)&CTX$, -1 );
		if( vr$53 == 0 ) goto label$409;
		{
		}
		label$409:;
		label$408:;
	}
	label$407:;
	label$406:;
	SECTIONEND(  );
	int32 vr$54 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 580) );
	if( vr$54 == 0 ) goto label$411;
	{
	}
	label$411:;
	label$410:;
	*(int32*)((uint8*)&ENV$ + 580) = 0;
	label$389:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$412:;
	{
		if( OPT$1 != 1 ) goto label$415;
		label$416:;
		{
			fb$result$1 = 0;
			goto label$413;
		}
		goto label$414;
		label$415:;
		{
			ERRREPORTEX( 21, (uint8*)"_GETOPTIONVALUE", 0, 1, (uint8*)0u );
		}
		label$417:;
		label$414:;
	}
	label$413:;
	return fb$result$1;
}

static int32 _SUPPORTSOP( int32 OP$1, int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$418:;
	{
		uint32 TMP$357$2;
		TMP$357$2 = (uint32)OP$1;
		goto label$421;
		label$422:;
		{
			fb$result$1 = 0;
		}
		goto label$420;
		label$423:;
		{
			fb$result$1 = -1;
		}
		goto label$420;
		label$421:;
		static const void* tmp$678[16] = {
			&&label$422,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$422,
			&&label$422,
			&&label$423,
			&&label$423,
			&&label$423,
			&&label$422,
			&&label$422,
		};
		if( (TMP$357$2 - 57u) > 15u ) goto label$423;
		goto *tmp$678[TMP$357$2 - 57u];
		label$420:;
	}
	label$419:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$424:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$425:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$426:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$427:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$428:;
	label$429:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$430:;
	label$431:;
}

static int32 HISSTATICWITHDTOR( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$432:;
	int32 vr$8 = SYMBHASDTOR( SYM$1 );
	fb$result$1 = (-((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) & -((*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0)) & vr$8;
	label$433:;
	return fb$result$1;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* SYM$1 )
{
	label$434:;
	struct $8FBSYMBOL* DESC$1;
	int32 SECTION$1;
	int32 vr$0 = SECTIONGOSUB( 0 );
	SECTION$1 = vr$0;
	label$436:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$437;
	{
		{
			$12FB_SYMBCLASS TMP$358$3;
			TMP$358$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$358$3 != 15 ) goto label$439;
			label$440:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64) );
			}
			goto label$438;
			label$439:;
			if( TMP$358$3 != 1 ) goto label$441;
			label$442:;
			{
				int32 vr$3 = HISSTATICWITHDTOR( SYM$1 );
				if( vr$3 == 0 ) goto label$444;
				{
					HMAYBEEMITLOCALVAR( SYM$1 );
					DESC$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88);
					if( DESC$1 == (struct $8FBSYMBOL*)0u ) goto label$446;
					{
						HMAYBEEMITLOCALVAR( DESC$1 );
					}
					label$446:;
					label$445:;
				}
				label$444:;
				label$443:;
			}
			label$441:;
			label$438:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$436;
	label$437:;
	SECTIONRETURN( SECTION$1 );
	label$435:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* VREG$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$447:;
	if( VREG$1 == (struct $6IRVREG*)0u ) goto label$450;
	{
		*($11FB_DATATYPE*)((uint8*)VREG$1 + 4) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8) = SUBTYPE$1;
	}
	label$450:;
	label$449:;
	label$448:;
}

static FBSTRING* HEMITTYPE( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$451:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 PTRCOUNT$1;
	$19FB_CVA_LIST_TYPEDEF vr$2 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
	if( vr$2 <= 1 ) goto label$454;
	{
		{
			$19FB_CVA_LIST_TYPEDEF TMP$359$3;
			$19FB_CVA_LIST_TYPEDEF vr$3 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
			TMP$359$3 = vr$3;
			if( TMP$359$3 != 2 ) goto label$456;
			label$457:;
			{
				DTYPE$1 = (((((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856)) & -32) | 19;
			}
			goto label$455;
			label$456:;
			{
				DTYPE$1 = (DTYPE$1 & -32) | 19;
			}
			label$458:;
			label$455:;
		}
	}
	label$454:;
	label$453:;
	PTRCOUNT$1 = (DTYPE$1 & 480) >> (5 & 31);
	DTYPE$1 = DTYPE$1 & 31;
	{
		uint32 TMP$360$2;
		TMP$360$2 = (uint32)DTYPE$1;
		goto label$460;
		label$461:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$463;
			{
				HEMITUDT( SUBTYPE$1, -(PTRCOUNT$1 > 0) );
				FBSTRING* vr$22 = HGETUDTNAME( SUBTYPE$1 );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$22, -1, 0 );
			}
			goto label$462;
			label$463:;
			if( DTYPE$1 != 10 ) goto label$464;
			{
				int32 TMP$361$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$465;
				TMP$361$4 = 24;
				goto label$1211;
				label$465:;
				TMP$361$4 = DTYPE$1 & 31;
				label$1211:;
				fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$361$4 * 28)) + 16) << (2 & 31))), 0, 0 );
			}
			goto label$462;
			label$464:;
			{
				fb_StrAssign( (void*)&S$1, -1, *(void**)DTYPENAME$, 0, 0 );
			}
			label$462:;
		}
		goto label$459;
		label$466:;
		{
			PTRCOUNT$1 = PTRCOUNT$1 + -1;
			HEMITUDT( SUBTYPE$1, -(PTRCOUNT$1 > 0) );
			uint8* vr$32 = SYMBGETMANGLEDNAME( SUBTYPE$1 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$32, 0, 0 );
		}
		goto label$459;
		label$467:;
		{
			int32 TMP$362$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$468;
			TMP$362$3 = 24;
			goto label$1212;
			label$468:;
			TMP$362$3 = DTYPE$1 & 31;
			label$1212:;
			fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$362$3 * 28)) + 16) << (2 & 31))), 0, 0 );
		}
		goto label$459;
		label$469:;
		{
			fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + 12), 0, 0 );
		}
		goto label$459;
		label$470:;
		{
			fb_StrAssign( (void*)&S$1, -1, *(void**)((int32)(uint8**)DTYPENAME$ + (DTYPE$1 << (2 & 31))), 0, 0 );
		}
		goto label$459;
		label$460:;
		static const void* tmp$679[19] = {
			&&label$467,
			&&label$470,
			&&label$470,
			&&label$467,
			&&label$470,
			&&label$470,
			&&label$461,
			&&label$470,
			&&label$470,
			&&label$470,
			&&label$470,
			&&label$470,
			&&label$470,
			&&label$470,
			&&label$469,
			&&label$470,
			&&label$461,
			&&label$470,
			&&label$466,
		};
		if( (TMP$360$2 - 4u) > 18u ) goto label$470;
		goto *tmp$679[TMP$360$2 - 4u];
		label$459:;
	}
	if( PTRCOUNT$1 <= 0 ) goto label$472;
	{
		FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"*", 1 );
		FBSTRING* vr$43 = fb_StrFill2( PTRCOUNT$1, (FBSTRING*)vr$42 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$43, -1, 0 );
	}
	label$472:;
	label$471:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$452:;
	FBSTRING* vr$49 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$49;
}

static struct $8EXPRNODE* EXPRNEW( int32 CLASS_$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$473:;
	struct $8EXPRNODE* N$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2680) );
	N$1 = (struct $8EXPRNODE*)vr$2;
	*(int32*)N$1 = CLASS_$1;
	*(int32*)((uint8*)N$1 + 4) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 8) = SUBTYPE$1;
	fb$result$1 = N$1;
	label$474:;
	return fb$result$1;
}

static void EXPRFREENODE( struct $8EXPRNODE* N$1 )
{
	label$475:;
	if( *(int32*)N$1 != 0 ) goto label$478;
	{
		if( *(uint8**)((uint8*)N$1 + 24) == (uint8*)0u ) goto label$480;
		{
			free( *(void**)((uint8*)N$1 + 24) );
		}
		label$480:;
		label$479:;
	}
	label$478:;
	label$477:;
	LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2680), (void*)N$1 );
	label$476:;
}

static void EXPRFREETREE( struct $8EXPRNODE* N$1 )
{
	label$481:;
	if( *(struct $8EXPRNODE**)((uint8*)N$1 + 12) == (struct $8EXPRNODE*)0u ) goto label$484;
	{
		EXPRFREETREE( *(struct $8EXPRNODE**)((uint8*)N$1 + 12) );
	}
	label$484:;
	label$483:;
	if( *(struct $8EXPRNODE**)((uint8*)N$1 + 16) == (struct $8EXPRNODE*)0u ) goto label$486;
	{
		EXPRFREETREE( *(struct $8EXPRNODE**)((uint8*)N$1 + 16) );
	}
	label$486:;
	label$485:;
	EXPRFREENODE( N$1 );
	label$482:;
}

static struct $8EXPRNODE* EXPRNEWTEXT( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, uint8* S$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$487:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$1 = EXPRNEW( 0, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	uint8* vr$2 = ZSTRDUP( S$1 );
	*(uint8**)((uint8*)N$1 + 24) = vr$2;
	fb$result$1 = N$1;
	label$488:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWIMMI( int64 I$1, int32 DTYPE$1 )
{
	int32 TMP$364$1;
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$489:;
	struct $8EXPRNODE* N$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$491;
	TMP$364$1 = 24;
	goto label$1213;
	label$491:;
	TMP$364$1 = DTYPE$1 & 31;
	label$1213:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$364$1 * 28)) + 4) != 8 ) goto label$493;
	{
		int32 TMP$365$2;
		$11FB_DATATYPE TMP$366$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$494;
		TMP$365$2 = 24;
		goto label$1214;
		label$494:;
		TMP$365$2 = DTYPE$1 & 31;
		label$1214:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$365$2 * 28)) + 8) == 0 ) goto label$495;
		TMP$366$2 = 13;
		goto label$1215;
		label$495:;
		TMP$366$2 = 14;
		label$1215:;
		DTYPE$1 = TMP$366$2;
	}
	goto label$492;
	label$493:;
	{
		int32 TMP$367$2;
		$11FB_DATATYPE TMP$368$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$496;
		TMP$367$2 = 24;
		goto label$1216;
		label$496:;
		TMP$367$2 = DTYPE$1 & 31;
		label$1216:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$367$2 * 28)) + 8) == 0 ) goto label$497;
		TMP$368$2 = 11;
		goto label$1217;
		label$497:;
		TMP$368$2 = 12;
		label$1217:;
		DTYPE$1 = TMP$368$2;
	}
	label$492:;
	struct $8EXPRNODE* vr$10 = EXPRNEW( 1, DTYPE$1, (struct $8FBSYMBOL*)0u );
	N$1 = vr$10;
	*(int64*)((uint8*)N$1 + 24) = I$1;
	fb$result$1 = N$1;
	label$490:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWIMMF( double F$1, int32 DTYPE$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$498:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$1 = EXPRNEW( 1, DTYPE$1, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	*(double*)((uint8*)N$1 + 24) = F$1;
	fb$result$1 = N$1;
	label$499:;
	return fb$result$1;
}

static int32 SYMBISCARRAY( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$500:;
	if( ((-((*(int32*)((uint8*)SYM$1 + 4) & 262144) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 81920) != 0)) | -((*(int32*)((uint8*)SYM$1 + 4) & 512) != 0)) == 0 ) goto label$503;
	{
		fb$result$1 = 0;
		goto label$501;
	}
	label$503:;
	label$502:;
	{
		$12FB_SYMBCLASS TMP$369$2;
		TMP$369$2 = *($12FB_SYMBCLASS*)SYM$1;
		if( TMP$369$2 == 1 ) goto label$506;
		label$507:;
		if( TMP$369$2 != 12 ) goto label$505;
		label$506:;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 4) == 0 ) goto label$509;
			{
				fb$result$1 = 0;
				goto label$501;
			}
			label$509:;
			label$508:;
			if( *(int32*)((uint8*)SYM$1 + 64) == 0 ) goto label$511;
			{
				fb$result$1 = -1;
				goto label$501;
			}
			label$511:;
			label$510:;
		}
		label$505:;
		label$504:;
	}
	{
		int32 TMP$370$2;
		TMP$370$2 = *(int32*)((uint8*)SYM$1 + 28) & 511;
		if( TMP$370$2 == 18 ) goto label$514;
		label$515:;
		if( TMP$370$2 == 4 ) goto label$514;
		label$516:;
		if( TMP$370$2 != 7 ) goto label$513;
		label$514:;
		{
			fb$result$1 = -1;
			goto label$501;
		}
		label$513:;
		label$512:;
	}
	fb$result$1 = 0;
	goto label$501;
	label$501:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWCAST( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8EXPRNODE* L$1 )
{
	int32 TMP$371$1;
	int32 TMP$372$1;
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$517:;
	if( (-(DTYPE$1 == *(int32*)((uint8*)L$1 + 4)) & -(SUBTYPE$1 == *(struct $8FBSYMBOL**)((uint8*)L$1 + 8))) == 0 ) goto label$520;
	{
		fb$result$1 = L$1;
		goto label$518;
	}
	label$520:;
	label$519:;
	if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$521;
	TMP$371$1 = 24;
	goto label$1218;
	label$521:;
	TMP$371$1 = *(int32*)((uint8*)L$1 + 4) & 31;
	label$1218:;
	if( (DTYPE$1 & 480) == 0 ) goto label$522;
	TMP$372$1 = 24;
	goto label$1219;
	label$522:;
	TMP$372$1 = DTYPE$1 & 31;
	label$1219:;
	if( ((-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$371$1 * 28)) + 20) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$372$1 * 28)) + 20)) & -((*(int32*)((uint8*)L$1 + 4) & 480) == 0)) & -((DTYPE$1 & 480) == 0)) == 0 ) goto label$524;
	{
		fb$result$1 = L$1;
		goto label$518;
	}
	label$524:;
	label$523:;
	if( *(int32*)L$1 != 3 ) goto label$526;
	{
		if( (-(((DTYPE$1 & 480) >> (5 & 31)) > 0) & -(((*(int32*)((uint8*)L$1 + 4) & 480) >> (5 & 31)) > 0)) == 0 ) goto label$528;
		{
			*(int32*)((uint8*)L$1 + 4) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)L$1 + 8) = SUBTYPE$1;
			fb$result$1 = L$1;
			goto label$518;
		}
		label$528:;
		label$527:;
	}
	label$526:;
	label$525:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$33 = EXPRNEW( 3, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$33;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 12) = L$1;
	fb$result$1 = N$1;
	label$518:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWMACRO( $6AST_OP OP$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8EXPRNODE* L$1, struct $8EXPRNODE* R$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$529:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$1 = EXPRNEW( 6, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 24) = OP$1;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 12) = L$1;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 16) = R$1;
	fb$result$1 = N$1;
	label$530:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWSYM( struct $8FBSYMBOL* SYM$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$531:;
	struct $8EXPRNODE* N$1;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( (-(*(int32*)SYM$1 == 1) & -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$534;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88);
	}
	label$534:;
	label$533:;
	if( *(int32*)SYM$1 != 7 ) goto label$536;
	{
		struct $8EXPRNODE* vr$9 = EXPRNEW( 2, 32, (struct $8FBSYMBOL*)0u );
		N$1 = vr$9;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = SYM$1;
	}
	goto label$535;
	label$536:;
	if( *(int32*)SYM$1 != 3 ) goto label$537;
	{
		struct $8EXPRNODE* vr$12 = EXPRNEW( 2, 54, SYM$1 );
		N$1 = vr$12;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = SYM$1;
	}
	goto label$535;
	label$537:;
	int32 vr$14 = SYMBISCARRAY( SYM$1 );
	if( vr$14 == 0 ) goto label$538;
	{
		struct $8EXPRNODE* vr$15 = EXPRNEW( 2, -2147483648u, (struct $8FBSYMBOL*)0u );
		N$1 = vr$15;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = SYM$1;
		struct $8EXPRNODE* vr$35 = EXPRNEWCAST( ((((*(int32*)((uint8*)SYM$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)SYM$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)SYM$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)SYM$1 + 28) & 511) & 32505856), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), N$1 );
		N$1 = vr$35;
	}
	goto label$535;
	label$538:;
	if( ((-(*(int32*)SYM$1 == 1) | -(*(int32*)SYM$1 == 4)) & -((*(int32*)((uint8*)SYM$1 + 12) & 524288) != 0)) == 0 ) goto label$539;
	{
		struct $8EXPRNODE* vr$45 = EXPRNEW( 2, 66, (struct $8FBSYMBOL*)0u );
		N$1 = vr$45;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = SYM$1;
	}
	goto label$535;
	label$539:;
	{
		SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
		struct $8EXPRNODE* vr$49 = EXPRNEW( 2, DTYPE$1, SUBTYPE$1 );
		N$1 = vr$49;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = SYM$1;
	}
	label$535:;
	fb$result$1 = N$1;
	label$532:;
	return fb$result$1;
}

static int32 TYPECBOP( int32 OP$1, int32 A$1, int32 B$1 )
{
	int32 TMP$373$1;
	int32 TMP$374$1;
	int32 TMP$375$1;
	int32 TMP$378$1;
	int32 TMP$381$1;
	int32 TMP$382$1;
	int32 TMP$383$1;
	int32 TMP$384$1;
	int32 TMP$389$1;
	int32 TMP$390$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$540:;
	if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 8) == 0 ) goto label$543;
	{
		fb$result$1 = 11;
		goto label$541;
	}
	label$543:;
	label$542:;
	if( (A$1 & 480) == 0 ) goto label$544;
	TMP$373$1 = 24;
	goto label$1220;
	label$544:;
	TMP$373$1 = A$1 & 31;
	label$1220:;
	A$1 = TMP$373$1;
	if( (B$1 & 480) == 0 ) goto label$545;
	TMP$374$1 = 24;
	goto label$1221;
	label$545:;
	TMP$374$1 = B$1 & 31;
	label$1221:;
	B$1 = TMP$374$1;
	if( (-(A$1 == 16) | -(B$1 == 16)) == 0 ) goto label$547;
	{
		fb$result$1 = 16;
		goto label$541;
	}
	label$547:;
	label$546:;
	if( (-(A$1 == 15) | -(B$1 == 15)) == 0 ) goto label$549;
	{
		fb$result$1 = 15;
		goto label$541;
	}
	label$549:;
	label$548:;
	if( (A$1 & 480) == 0 ) goto label$550;
	TMP$375$1 = 24;
	goto label$1222;
	label$550:;
	TMP$375$1 = A$1 & 31;
	label$1222:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$375$1 * 28)) + 4) > 4 ) goto label$552;
	{
		int32 TMP$376$2;
		$11FB_DATATYPE TMP$377$2;
		if( (A$1 & 480) == 0 ) goto label$553;
		TMP$376$2 = 24;
		goto label$1223;
		label$553:;
		TMP$376$2 = A$1 & 31;
		label$1223:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$376$2 * 28)) + 8) == 0 ) goto label$554;
		TMP$377$2 = 11;
		goto label$1224;
		label$554:;
		TMP$377$2 = 12;
		label$1224:;
		A$1 = TMP$377$2;
	}
	label$552:;
	label$551:;
	if( (B$1 & 480) == 0 ) goto label$555;
	TMP$378$1 = 24;
	goto label$1225;
	label$555:;
	TMP$378$1 = B$1 & 31;
	label$1225:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$378$1 * 28)) + 4) > 4 ) goto label$557;
	{
		int32 TMP$379$2;
		$11FB_DATATYPE TMP$380$2;
		if( (B$1 & 480) == 0 ) goto label$558;
		TMP$379$2 = 24;
		goto label$1226;
		label$558:;
		TMP$379$2 = B$1 & 31;
		label$1226:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$379$2 * 28)) + 8) == 0 ) goto label$559;
		TMP$380$2 = 11;
		goto label$1227;
		label$559:;
		TMP$380$2 = 12;
		label$1227:;
		B$1 = TMP$380$2;
	}
	label$557:;
	label$556:;
	if( (A$1 & 480) == 0 ) goto label$560;
	TMP$381$1 = 24;
	goto label$1228;
	label$560:;
	TMP$381$1 = A$1 & 31;
	label$1228:;
	if( (B$1 & 480) == 0 ) goto label$561;
	TMP$382$1 = 24;
	goto label$1229;
	label$561:;
	TMP$382$1 = B$1 & 31;
	label$1229:;
	if( ~(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$381$1 * 28)) + 8) & *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$382$1 * 28)) + 8)) == 0 ) goto label$563;
	{
		int32 vr$33 = TYPETOUNSIGNED( A$1 );
		A$1 = vr$33;
		int32 vr$34 = TYPETOUNSIGNED( B$1 );
		B$1 = vr$34;
	}
	label$563:;
	label$562:;
	if( (A$1 & 480) == 0 ) goto label$564;
	TMP$383$1 = 24;
	goto label$1230;
	label$564:;
	TMP$383$1 = A$1 & 31;
	label$1230:;
	if( (B$1 & 480) == 0 ) goto label$565;
	TMP$384$1 = 24;
	goto label$1231;
	label$565:;
	TMP$384$1 = B$1 & 31;
	label$1231:;
	if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$383$1 * 28)) + 4) == 8) | -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$384$1 * 28)) + 4) == 8)) == 0 ) goto label$567;
	{
		int32 TMP$385$2;
		$11FB_DATATYPE TMP$386$2;
		int32 TMP$387$2;
		$11FB_DATATYPE TMP$388$2;
		if( (A$1 & 480) == 0 ) goto label$568;
		TMP$385$2 = 24;
		goto label$1232;
		label$568:;
		TMP$385$2 = A$1 & 31;
		label$1232:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$385$2 * 28)) + 8) == 0 ) goto label$569;
		TMP$386$2 = 13;
		goto label$1233;
		label$569:;
		TMP$386$2 = 14;
		label$1233:;
		A$1 = TMP$386$2;
		if( (B$1 & 480) == 0 ) goto label$570;
		TMP$387$2 = 24;
		goto label$1234;
		label$570:;
		TMP$387$2 = B$1 & 31;
		label$1234:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$387$2 * 28)) + 8) == 0 ) goto label$571;
		TMP$388$2 = 13;
		goto label$1235;
		label$571:;
		TMP$388$2 = 14;
		label$1235:;
		B$1 = TMP$388$2;
	}
	label$567:;
	label$566:;
	if( (A$1 & 480) == 0 ) goto label$572;
	TMP$389$1 = 24;
	goto label$1236;
	label$572:;
	TMP$389$1 = A$1 & 31;
	label$1236:;
	if( (B$1 & 480) == 0 ) goto label$573;
	TMP$390$1 = 24;
	goto label$1237;
	label$573:;
	TMP$390$1 = B$1 & 31;
	label$1237:;
	if( ~(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$389$1 * 28)) + 8) & *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$390$1 * 28)) + 8)) == 0 ) goto label$575;
	{
		int32 vr$58 = TYPETOUNSIGNED( A$1 );
		A$1 = vr$58;
		int32 vr$59 = TYPETOUNSIGNED( B$1 );
		B$1 = vr$59;
	}
	label$575:;
	label$574:;
	fb$result$1 = A$1;
	label$541:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWUOP( int32 OP$1, struct $8EXPRNODE* L$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$576:;
	struct $8EXPRNODE* N$1;
	int32 DTYPE$1;
	int32 SOLVED_OUT$1;
	SOLVED_OUT$1 = 0;
	{
		uint32 TMP$391$2;
		TMP$391$2 = (uint32)OP$1;
		goto label$579;
		label$580:;
		{
			if( *(int32*)L$1 != 4 ) goto label$582;
			{
				SOLVED_OUT$1 = -(*(int32*)((uint8*)L$1 + 24) == 76);
			}
			label$582:;
			label$581:;
			DTYPE$1 = *(int32*)((uint8*)L$1 + 4);
			DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
		}
		goto label$578;
		label$583:;
		{
			if( *(int32*)L$1 != 4 ) goto label$585;
			{
				SOLVED_OUT$1 = -(*(int32*)((uint8*)L$1 + 24) == 22);
			}
			label$585:;
			label$584:;
			DTYPE$1 = *(int32*)((uint8*)L$1 + 4);
			DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856);
		}
		goto label$578;
		label$586:;
		{
			if( *(int32*)L$1 != 4 ) goto label$588;
			{
				SOLVED_OUT$1 = -(*(int32*)((uint8*)L$1 + 24) == OP$1);
			}
			label$588:;
			label$587:;
			int32 vr$33 = TYPECBOP( OP$1, *(int32*)((uint8*)L$1 + 4), *(int32*)((uint8*)L$1 + 4) );
			DTYPE$1 = vr$33;
		}
		goto label$578;
		label$589:;
		{
			DTYPE$1 = *(int32*)((uint8*)L$1 + 4);
		}
		goto label$578;
		label$590:;
		{
		}
		goto label$578;
		label$579:;
		static const void* tmp$680[55] = {
			&&label$580,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$586,
			&&label$590,
			&&label$586,
			&&label$590,
			&&label$589,
			&&label$590,
			&&label$589,
			&&label$589,
			&&label$589,
			&&label$589,
			&&label$589,
			&&label$589,
			&&label$590,
			&&label$589,
			&&label$590,
			&&label$590,
			&&label$589,
			&&label$589,
			&&label$589,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$590,
			&&label$583,
		};
		if( (TMP$391$2 - 22u) > 54u ) goto label$590;
		goto *tmp$680[TMP$391$2 - 22u];
		label$578:;
	}
	if( SOLVED_OUT$1 == 0 ) goto label$592;
	{
		N$1 = *(struct $8EXPRNODE**)((uint8*)L$1 + 12);
		EXPRFREENODE( L$1 );
		fb$result$1 = N$1;
		goto label$577;
	}
	label$592:;
	label$591:;
	struct $8EXPRNODE* vr$37 = EXPRNEW( 4, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
	N$1 = vr$37;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 12) = L$1;
	*(int32*)((uint8*)N$1 + 24) = OP$1;
	fb$result$1 = N$1;
	label$577:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWBOP( int32 OP$1, struct $8EXPRNODE* L$1, struct $8EXPRNODE* R$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$593:;
	struct $8EXPRNODE* N$1;
	int32 DTYPE$1;
	int32 vr$3 = TYPECBOP( OP$1, *(int32*)((uint8*)L$1 + 4), *(int32*)((uint8*)R$1 + 4) );
	DTYPE$1 = vr$3;
	{
		uint32 TMP$392$2;
		TMP$392$2 = (uint32)OP$1;
		goto label$596;
		label$597:;
		{
			if( (-((*(int32*)((uint8*)L$1 + 4) & 480) != 0) & -((*(int32*)((uint8*)R$1 + 4) & 480) != 0)) == 0 ) goto label$599;
			{
				if( (-(((*(int32*)((uint8*)L$1 + 4) & 32505856) >> (20 & 31)) == 19) | -(((*(int32*)((uint8*)R$1 + 4) & 32505856) >> (20 & 31)) == 19)) == 0 ) goto label$601;
				{
					struct $8EXPRNODE* vr$20 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, L$1 );
					L$1 = vr$20;
					struct $8EXPRNODE* vr$21 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, R$1 );
					R$1 = vr$21;
				}
				label$601:;
				label$600:;
			}
			label$599:;
			label$598:;
		}
		goto label$595;
		label$596:;
		static const void* tmp$681[6] = {
			&&label$597,
			&&label$597,
			&&label$597,
			&&label$597,
			&&label$597,
			&&label$597,
		};
		if( (TMP$392$2 - 45u) > 5u ) goto label$595;
		goto *tmp$681[TMP$392$2 - 45u];
		label$595:;
	}
	struct $8EXPRNODE* vr$22 = EXPRNEW( 5, DTYPE$1, (struct $8FBSYMBOL*)0u );
	N$1 = vr$22;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 12) = L$1;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 16) = R$1;
	*(int32*)((uint8*)N$1 + 24) = OP$1;
	fb$result$1 = N$1;
	label$594:;
	return fb$result$1;
}

static void EXPRCACHE( int32 VREGID$1, struct $8EXPRNODE* EXPR$1 )
{
	label$602:;
	struct $13EXPRCACHENODE* ENTRY$1;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2724) );
	ENTRY$1 = (struct $13EXPRCACHENODE*)vr$1;
	*(int32*)ENTRY$1 = VREGID$1;
	*(struct $8EXPRNODE**)((uint8*)ENTRY$1 + 4) = EXPR$1;
	label$603:;
}

static struct $8EXPRNODE* EXPRLOOKUP( int32 VREGID$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$604:;
	struct $13EXPRCACHENODE* ENTRY$1;
	void* vr$2 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&CTX$ + 2724) );
	ENTRY$1 = (struct $13EXPRCACHENODE*)vr$2;
	label$606:;
	if( ENTRY$1 == (struct $13EXPRCACHENODE*)0u ) goto label$607;
	{
		if( *(int32*)ENTRY$1 != VREGID$1 ) goto label$609;
		{
			goto label$607;
		}
		label$609:;
		label$608:;
		void* vr$4 = LISTGETNEXT( (void*)ENTRY$1 );
		ENTRY$1 = (struct $13EXPRCACHENODE*)vr$4;
	}
	goto label$606;
	label$607:;
	if( ENTRY$1 == (struct $13EXPRCACHENODE*)0u ) goto label$611;
	{
		fb$result$1 = *(struct $8EXPRNODE**)((uint8*)ENTRY$1 + 4);
		LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2724), (void*)ENTRY$1 );
	}
	goto label$610;
	label$611:;
	{
		fb$result$1 = (struct $8EXPRNODE*)0u;
	}
	label$610:;
	label$605:;
	return fb$result$1;
}

static FBSTRING* HEMITINT( int32 DTYPE$1, int64 VALUE$1 )
{
	int32 TMP$393$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$612:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	if( (DTYPE$1 & 480) == 0 ) goto label$614;
	TMP$393$1 = 24;
	goto label$1238;
	label$614:;
	TMP$393$1 = DTYPE$1 & 31;
	label$1238:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$393$1 * 28)) + 8) == 0 ) goto label$616;
	{
		int32 TMP$394$2;
		FBSTRING* vr$5 = fb_LongintToStr( VALUE$1 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$5, -1, 0 );
		if( (DTYPE$1 & 480) == 0 ) goto label$617;
		TMP$394$2 = 24;
		goto label$1239;
		label$617:;
		TMP$394$2 = DTYPE$1 & 31;
		label$1239:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$394$2 * 28)) + 4) != 8 ) goto label$619;
		{
			if( VALUE$1 != -9223372036854775808ull ) goto label$621;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)"u", 2, 0 );
			}
			label$621:;
			label$620:;
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"ll", 3, 0 );
		}
		goto label$618;
		label$619:;
		{
			if( VALUE$1 != -2147483648ll ) goto label$623;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)"u", 2, 0 );
			}
			label$623:;
			label$622:;
		}
		label$618:;
	}
	goto label$615;
	label$616:;
	{
		int32 TMP$397$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$624;
		TMP$397$2 = 24;
		goto label$1240;
		label$624:;
		TMP$397$2 = DTYPE$1 & 31;
		label$1240:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$397$2 * 28)) + 4) != 8 ) goto label$626;
		{
			FBSTRING* vr$16 = fb_ULongintToStr( (uint64)VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$16, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"ull", 4, 0 );
		}
		goto label$625;
		label$626:;
		{
			FBSTRING* vr$20 = fb_UIntToStr( (uint32)VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$20, -1, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"u", 2, 0 );
		}
		label$625:;
	}
	label$615:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$613:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}

static FBSTRING* HEMITFLOAT( int32 DTYPE$1, double VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$627:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	uint32 EXPVAL$1;
	EXPVAL$1 = *(uint32*)((uint8*)&VALUE$1 + 4);
	{
		if( EXPVAL$1 == 2146435072u ) goto label$631;
		label$632:;
		if( EXPVAL$1 != 4293918720u ) goto label$630;
		label$631:;
		{
			if( DTYPE$1 != 16 ) goto label$634;
			{
				if( (EXPVAL$1 & 2147483648u) == 0u ) goto label$636;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"(-__builtin_inf())", 19, 0 );
				}
				goto label$635;
				label$636:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"__builtin_inf()", 16, 0 );
				}
				label$635:;
			}
			goto label$633;
			label$634:;
			{
				if( (EXPVAL$1 & 2147483648u) == 0u ) goto label$638;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"(-__builtin_inff())", 20, 0 );
				}
				goto label$637;
				label$638:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"__builtin_inff()", 17, 0 );
				}
				label$637:;
			}
			label$633:;
		}
		goto label$629;
		label$630:;
		if( EXPVAL$1 == 2146959360u ) goto label$640;
		label$641:;
		if( EXPVAL$1 != 4294443008u ) goto label$639;
		label$640:;
		{
			if( DTYPE$1 != 16 ) goto label$643;
			{
				if( (EXPVAL$1 & 2147483648u) == 0u ) goto label$645;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"(-__builtin_nan( \x22\x22 ))", 23, 0 );
				}
				goto label$644;
				label$645:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"__builtin_nan( \x22\x22 )", 20, 0 );
				}
				label$644:;
			}
			goto label$642;
			label$643:;
			{
				if( (EXPVAL$1 & 2147483648u) == 0u ) goto label$647;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"(-__builtin_nanf( \x22\x22 ))", 24, 0 );
				}
				goto label$646;
				label$647:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"__builtin_nanf( \x22\x22 )", 21, 0 );
				}
				label$646:;
			}
			label$642:;
		}
		goto label$629;
		label$639:;
		{
			FBSTRING* vr$15 = HFLOATTOHEX_C99( VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$15, -1, 0 );
			if( DTYPE$1 != 15 ) goto label$650;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)"f", 2, 0 );
			}
			label$650:;
			label$649:;
		}
		label$648:;
		label$629:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$628:;
	FBSTRING* vr$22 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$22;
}

static void HBUILDSTRLIT( FBSTRING* LN$1, uint8* Z$1, int64 LENGTH$1 )
{
	label$651:;
	int32 CH$1;
	fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22", 2, 0 );
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$408$2;
		TMP$408$2 = (int32)(LENGTH$1 + -2ll);
		goto label$653;
		label$656:;
		{
			CH$1 = (int32)*(uint8*)((uint8*)Z$1 + I$2);
			int32 vr$4 = HCHARNEEDSESCAPING( CH$1, 34 );
			if( vr$4 == 0 ) goto label$658;
			{
				FBSTRING TMP$410$4;
				FBSTRING* vr$5 = fb_HEXEx_i( (uint32)CH$1, 2 );
				__builtin_memset( &TMP$410$4, 0, 12 );
				FBSTRING* vr$8 = fb_StrConcat( &TMP$410$4, (void*)"\x5Cx", 3, (void*)vr$5, -1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$8, -1, 0 );
				int32 vr$11 = HISVALIDHEXDIGIT( (int32)*(uint8*)((uint8*)((uint8*)Z$1 + I$2) + 1) );
				if( vr$11 == 0 ) goto label$660;
				{
					fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22 \x22", 4, 0 );
				}
				label$660:;
				label$659:;
			}
			goto label$657;
			label$658:;
			if( (uint32)CH$1 != 63u ) goto label$661;
			{
				fb_StrConcatByref( (void*)LN$1, -1, (void*)"?", 2, 0 );
				if( (uint32)(int32)*(uint8*)((uint8*)((uint8*)Z$1 + I$2) + 1) != 63u ) goto label$663;
				{
					{
						uint8 TMP$413$6;
						TMP$413$6 = *(uint8*)((uint8*)((uint8*)Z$1 + I$2) + 2);
						if( (uint32)(int32)TMP$413$6 == 61u ) goto label$666;
						label$667:;
						if( (uint32)(int32)TMP$413$6 == 47u ) goto label$666;
						label$668:;
						if( (uint32)(int32)TMP$413$6 == 39u ) goto label$666;
						label$669:;
						if( (uint32)(int32)TMP$413$6 == 40u ) goto label$666;
						label$670:;
						if( (uint32)(int32)TMP$413$6 == 41u ) goto label$666;
						label$671:;
						if( (uint32)(int32)TMP$413$6 == 33u ) goto label$666;
						label$672:;
						if( (uint32)(int32)TMP$413$6 == 60u ) goto label$666;
						label$673:;
						if( (uint32)(int32)TMP$413$6 == 62u ) goto label$666;
						label$674:;
						if( (uint32)(int32)TMP$413$6 != 45u ) goto label$665;
						label$666:;
						{
							fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22 \x22", 4, 0 );
						}
						label$665:;
						label$664:;
					}
				}
				label$663:;
				label$662:;
			}
			goto label$657;
			label$661:;
			{
				FBSTRING* vr$24 = fb_CHR( 1, CH$1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$24, -1, 0 );
			}
			label$657:;
		}
		label$654:;
		I$2 = I$2 + 1;
		label$653:;
		if( I$2 <= TMP$408$2 ) goto label$656;
		label$655:;
	}
	fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22", 2, 0 );
	label$652:;
}

static void HBUILDWSTRLIT( FBSTRING* LN$1, uint32* W$1, int64 LENGTH$1 )
{
	label$675:;
	int32 CH$1;
	int32 WCHARSIZE$1;
	fb_StrConcatByref( (void*)LN$1, -1, (void*)"L\x22", 3, 0 );
	WCHARSIZE$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$422$2;
		TMP$422$2 = (int32)(LENGTH$1 + -2ll);
		goto label$677;
		label$680:;
		{
			CH$1 = *(int32*)((uint8*)W$1 + (I$2 << (2 & 31)));
			int32 vr$4 = HCHARNEEDSESCAPING( CH$1, 34 );
			if( vr$4 == 0 ) goto label$682;
			{
				FBSTRING TMP$423$4;
				FBSTRING* vr$6 = fb_HEXEx_i( (uint32)CH$1, WCHARSIZE$1 << (1 & 31) );
				__builtin_memset( &TMP$423$4, 0, 12 );
				FBSTRING* vr$9 = fb_StrConcat( &TMP$423$4, (void*)"\x5Cx", 3, (void*)vr$6, -1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$9, -1, 0 );
				int32 vr$12 = HISVALIDHEXDIGIT( *(int32*)((uint8*)((uint8*)W$1 + (I$2 << (2 & 31))) + 4) );
				if( vr$12 == 0 ) goto label$684;
				{
					fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22 L\x22", 5, 0 );
				}
				label$684:;
				label$683:;
			}
			goto label$681;
			label$682:;
			if( (uint32)CH$1 != 63u ) goto label$685;
			{
				fb_StrConcatByref( (void*)LN$1, -1, (void*)"?", 2, 0 );
				if( *(uint32*)((uint8*)((uint8*)W$1 + (I$2 << (2 & 31))) + 4) != 63u ) goto label$687;
				{
					{
						uint32 TMP$425$6;
						TMP$425$6 = *(uint32*)((uint8*)((uint8*)W$1 + (I$2 << (2 & 31))) + 8);
						if( TMP$425$6 == 61u ) goto label$690;
						label$691:;
						if( TMP$425$6 == 47u ) goto label$690;
						label$692:;
						if( TMP$425$6 == 39u ) goto label$690;
						label$693:;
						if( TMP$425$6 == 40u ) goto label$690;
						label$694:;
						if( TMP$425$6 == 41u ) goto label$690;
						label$695:;
						if( TMP$425$6 == 33u ) goto label$690;
						label$696:;
						if( TMP$425$6 == 60u ) goto label$690;
						label$697:;
						if( TMP$425$6 == 62u ) goto label$690;
						label$698:;
						if( TMP$425$6 != 45u ) goto label$689;
						label$690:;
						{
							fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22 L\x22", 5, 0 );
						}
						label$689:;
						label$688:;
					}
				}
				label$687:;
				label$686:;
			}
			goto label$681;
			label$685:;
			{
				FBSTRING* vr$17 = fb_CHR( 1, CH$1 );
				fb_StrConcatByref( (void*)LN$1, -1, (void*)vr$17, -1, 0 );
			}
			label$681:;
		}
		label$678:;
		I$2 = I$2 + 1;
		label$677:;
		if( I$2 <= TMP$422$2 ) goto label$680;
		label$679:;
	}
	fb_StrConcatByref( (void*)LN$1, -1, (void*)"\x22", 2, 0 );
	label$676:;
}

static uint8* HBOPTOSTR( int32 OP$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$699:;
	{
		uint32 TMP$426$2;
		TMP$426$2 = (uint32)OP$1;
		goto label$702;
		label$703:;
		{
			fb$result$1 = (uint8*)" + ";
		}
		goto label$701;
		label$704:;
		{
			fb$result$1 = (uint8*)" - ";
		}
		goto label$701;
		label$705:;
		{
			fb$result$1 = (uint8*)" * ";
		}
		goto label$701;
		label$706:;
		{
			fb$result$1 = (uint8*)" / ";
		}
		goto label$701;
		label$707:;
		{
			fb$result$1 = (uint8*)" / ";
		}
		goto label$701;
		label$708:;
		{
			fb$result$1 = (uint8*)" % ";
		}
		goto label$701;
		label$709:;
		{
			fb$result$1 = (uint8*)" << ";
		}
		goto label$701;
		label$710:;
		{
			fb$result$1 = (uint8*)" >> ";
		}
		goto label$701;
		label$711:;
		{
			fb$result$1 = (uint8*)" & ";
		}
		goto label$701;
		label$712:;
		{
			fb$result$1 = (uint8*)" | ";
		}
		goto label$701;
		label$713:;
		{
			fb$result$1 = (uint8*)" ^ ";
		}
		goto label$701;
		label$714:;
		{
			fb$result$1 = (uint8*)" == ";
		}
		goto label$701;
		label$715:;
		{
			fb$result$1 = (uint8*)" > ";
		}
		goto label$701;
		label$716:;
		{
			fb$result$1 = (uint8*)" < ";
		}
		goto label$701;
		label$717:;
		{
			fb$result$1 = (uint8*)" != ";
		}
		goto label$701;
		label$718:;
		{
			fb$result$1 = (uint8*)" >= ";
		}
		goto label$701;
		label$719:;
		{
			fb$result$1 = (uint8*)" <= ";
		}
		goto label$701;
		label$702:;
		static const void* tmp$682[23] = {
			&&label$703,
			&&label$704,
			&&label$705,
			&&label$706,
			&&label$707,
			&&label$708,
			&&label$711,
			&&label$712,
			&&label$701,
			&&label$701,
			&&label$713,
			&&label$701,
			&&label$701,
			&&label$709,
			&&label$710,
			&&label$701,
			&&label$701,
			&&label$714,
			&&label$715,
			&&label$716,
			&&label$717,
			&&label$718,
			&&label$719,
		};
		if( (TMP$426$2 - 28u) > 22u ) goto label$701;
		goto *tmp$682[TMP$426$2 - 28u];
		label$701:;
	}
	label$700:;
	return fb$result$1;
}

static uint8* HUOPTOSTR( int32 OP$1, int32 DTYPE$1, int32* IS_BUILTIN$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$720:;
	*IS_BUILTIN$1 = 0;
	{
		if( OP$1 != 22 ) goto label$723;
		label$724:;
		{
			fb$result$1 = (uint8*)"&";
		}
		goto label$722;
		label$723:;
		if( OP$1 != 76 ) goto label$725;
		label$726:;
		{
			fb$result$1 = (uint8*)"*";
		}
		goto label$722;
		label$725:;
		if( OP$1 != 54 ) goto label$727;
		label$728:;
		{
			fb$result$1 = (uint8*)"-";
		}
		goto label$722;
		label$727:;
		if( OP$1 != 52 ) goto label$729;
		label$730:;
		{
			fb$result$1 = (uint8*)"~";
		}
		goto label$722;
		label$729:;
		if( OP$1 != 56 ) goto label$731;
		label$732:;
		{
			*IS_BUILTIN$1 = -1;
			{
				int32 TMP$445$4;
				uint32 TMP$446$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$733;
				TMP$445$4 = 24;
				goto label$1241;
				label$733:;
				TMP$445$4 = DTYPE$1 & 31;
				label$1241:;
				TMP$446$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$445$4 * 28)) + 20);
				goto label$735;
				label$736:;
				{
					fb$result$1 = (uint8*)"__builtin_fabsf";
				}
				goto label$734;
				label$737:;
				{
					fb$result$1 = (uint8*)"__builtin_fabs";
				}
				goto label$734;
				label$738:;
				{
					fb$result$1 = (uint8*)"__builtin_llabs";
				}
				goto label$734;
				label$739:;
				{
					fb$result$1 = (uint8*)"__builtin_abs";
				}
				goto label$734;
				label$735:;
				static const void* tmp$683[4] = {
					&&label$738,
					&&label$738,
					&&label$736,
					&&label$737,
				};
				if( (TMP$446$4 - 7u) > 3u ) goto label$739;
				goto *tmp$683[TMP$446$4 - 7u];
				label$734:;
			}
		}
		goto label$722;
		label$731:;
		{
			*IS_BUILTIN$1 = -1;
			if( (DTYPE$1 & 511) != 15 ) goto label$742;
			{
				{
					uint32 TMP$451$5;
					TMP$451$5 = (uint32)OP$1;
					goto label$744;
					label$745:;
					{
						fb$result$1 = (uint8*)"__builtin_sinf";
					}
					goto label$743;
					label$746:;
					{
						fb$result$1 = (uint8*)"__builtin_asinf";
					}
					goto label$743;
					label$747:;
					{
						fb$result$1 = (uint8*)"__builtin_cosf";
					}
					goto label$743;
					label$748:;
					{
						fb$result$1 = (uint8*)"__builtin_acosf";
					}
					goto label$743;
					label$749:;
					{
						fb$result$1 = (uint8*)"__builtin_tanf";
					}
					goto label$743;
					label$750:;
					{
						fb$result$1 = (uint8*)"__builtin_atanf";
					}
					goto label$743;
					label$751:;
					{
						fb$result$1 = (uint8*)"__builtin_sqrtf";
					}
					goto label$743;
					label$752:;
					{
						fb$result$1 = (uint8*)"__builtin_logf";
					}
					goto label$743;
					label$753:;
					{
						fb$result$1 = (uint8*)"__builtin_expf";
					}
					goto label$743;
					label$754:;
					{
						fb$result$1 = (uint8*)"__builtin_floorf";
					}
					goto label$743;
					label$755:;
					{
					}
					goto label$743;
					label$744:;
					static const void* tmp$684[13] = {
						&&label$745,
						&&label$746,
						&&label$747,
						&&label$748,
						&&label$749,
						&&label$750,
						&&label$755,
						&&label$751,
						&&label$755,
						&&label$755,
						&&label$752,
						&&label$753,
						&&label$754,
					};
					if( (TMP$451$5 - 58u) > 12u ) goto label$755;
					goto *tmp$684[TMP$451$5 - 58u];
					label$743:;
				}
			}
			goto label$741;
			label$742:;
			{
				{
					uint32 TMP$462$5;
					TMP$462$5 = (uint32)OP$1;
					goto label$757;
					label$758:;
					{
						fb$result$1 = (uint8*)"__builtin_sin";
					}
					goto label$756;
					label$759:;
					{
						fb$result$1 = (uint8*)"__builtin_asin";
					}
					goto label$756;
					label$760:;
					{
						fb$result$1 = (uint8*)"__builtin_cos";
					}
					goto label$756;
					label$761:;
					{
						fb$result$1 = (uint8*)"__builtin_acos";
					}
					goto label$756;
					label$762:;
					{
						fb$result$1 = (uint8*)"__builtin_tan";
					}
					goto label$756;
					label$763:;
					{
						fb$result$1 = (uint8*)"__builtin_atan";
					}
					goto label$756;
					label$764:;
					{
						fb$result$1 = (uint8*)"__builtin_sqrt";
					}
					goto label$756;
					label$765:;
					{
						fb$result$1 = (uint8*)"__builtin_log";
					}
					goto label$756;
					label$766:;
					{
						fb$result$1 = (uint8*)"__builtin_exp";
					}
					goto label$756;
					label$767:;
					{
						fb$result$1 = (uint8*)"__builtin_floor";
					}
					goto label$756;
					label$768:;
					{
					}
					goto label$756;
					label$757:;
					static const void* tmp$685[13] = {
						&&label$758,
						&&label$759,
						&&label$760,
						&&label$761,
						&&label$762,
						&&label$763,
						&&label$768,
						&&label$764,
						&&label$768,
						&&label$768,
						&&label$765,
						&&label$766,
						&&label$767,
					};
					if( (TMP$462$5 - 58u) > 12u ) goto label$768;
					goto *tmp$685[TMP$462$5 - 58u];
					label$756:;
				}
			}
			label$741:;
		}
		label$740:;
		label$722:;
	}
	label$721:;
	return fb$result$1;
}

static void HIMM2TEXT( FBSTRING* S$1, struct $8EXPRNODE* N$1 )
{
	int32 TMP$473$1;
	label$769:;
	if( (*(int32*)((uint8*)N$1 + 4) & 480) == 0 ) goto label$771;
	TMP$473$1 = 24;
	goto label$1242;
	label$771:;
	TMP$473$1 = *(int32*)((uint8*)N$1 + 4) & 31;
	label$1242:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$473$1 * 28)) != 1 ) goto label$773;
	{
		FBSTRING TMP$474$2;
		FBSTRING* vr$7 = HEMITFLOAT( *(int32*)((uint8*)N$1 + 4), *(double*)((uint8*)N$1 + 24) );
		__builtin_memset( &TMP$474$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$474$2, (void*)S$1, -1, (void*)vr$7, -1 );
		fb_StrAssign( (void*)S$1, -1, (void*)vr$10, -1, 0 );
	}
	goto label$772;
	label$773:;
	{
		FBSTRING TMP$475$2;
		FBSTRING* vr$13 = HEMITINT( *(int32*)((uint8*)N$1 + 4), *(int64*)((uint8*)N$1 + 24) );
		__builtin_memset( &TMP$475$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$475$2, (void*)S$1, -1, (void*)vr$13, -1 );
		fb_StrAssign( (void*)S$1, -1, (void*)vr$16, -1, 0 );
	}
	label$772:;
	label$770:;
}

static void HSYM2TEXT( FBSTRING* S$1, struct $8FBSYMBOL* SYM$1 )
{
	label$774:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 1024) == 0 ) goto label$777;
	{
		if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 7 ) goto label$779;
		{
			int32 TMP$476$3;
			int64 vr$6 = __divdi3( *(int64*)((uint8*)SYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
			TMP$476$3 = 0;
			uint32* vr$9 = HUNESCAPEW( *(uint32**)((uint8*)SYM$1 + 56), &TMP$476$3 );
			HBUILDWSTRLIT( S$1, vr$9, vr$6 );
		}
		goto label$778;
		label$779:;
		{
			int32 TMP$477$3;
			TMP$477$3 = 0;
			uint8* vr$13 = HUNESCAPE( *(uint8**)((uint8*)SYM$1 + 56), &TMP$477$3 );
			HBUILDSTRLIT( S$1, vr$13, *(int64*)((uint8*)SYM$1 + 40) );
		}
		label$778:;
	}
	goto label$776;
	label$777:;
	{
		FBSTRING TMP$479$2;
		if( *(int32*)SYM$1 != 7 ) goto label$781;
		{
			fb_StrConcatByref( (void*)S$1, -1, (void*)"&&", 3, 0 );
		}
		goto label$780;
		label$781:;
		if( *(int32*)SYM$1 != 3 ) goto label$782;
		{
			fb_StrConcatByref( (void*)S$1, -1, (void*)"&", 2, 0 );
		}
		label$782:;
		label$780:;
		uint8* vr$16 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$479$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$479$2, (void*)S$1, -1, (void*)vr$16, 0 );
		fb_StrAssign( (void*)S$1, -1, (void*)vr$19, -1, 0 );
	}
	label$776:;
	label$775:;
}

static void HEXPRFLUSH( struct $8EXPRNODE* N$1, int32 NEED_PARENS$1 )
{
	label$783:;
	struct $8EXPRNODE* L$1;
	struct $8FBSYMBOL* SYM$1;
	int32 IS_BUILTIN$1;
	{
		uint32 TMP$480$2;
		TMP$480$2 = *(uint32*)N$1;
		goto label$786;
		label$787:;
		{
			FBSTRING TMP$481$3;
			__builtin_memset( &TMP$481$3, 0, 12 );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$481$3, (void*)((uint8*)&CTX$ + 2712), -1, *(void**)((uint8*)N$1 + 24), 0 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$5, -1, 0 );
		}
		goto label$785;
		label$788:;
		{
			HIMM2TEXT( (FBSTRING*)((uint8*)&CTX$ + 2712), N$1 );
		}
		goto label$785;
		label$789:;
		{
			HSYM2TEXT( (FBSTRING*)((uint8*)&CTX$ + 2712), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24) );
		}
		goto label$785;
		label$790:;
		{
			FBSTRING TMP$482$3;
			FBSTRING TMP$483$3;
			FBSTRING TMP$484$3;
			FBSTRING* vr$12 = HEMITTYPE( *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
			__builtin_memset( &TMP$482$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$482$3, (void*)"(", 2, (void*)vr$12, -1 );
			__builtin_memset( &TMP$483$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$483$3, (void*)vr$15, -1, (void*)")", 2 );
			__builtin_memset( &TMP$484$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$484$3, (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$18, -1 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$22, -1, 0 );
			HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
		}
		goto label$785;
		label$791:;
		{
			{
				int32 TMP$485$4;
				TMP$485$4 = *(int32*)((uint8*)N$1 + 24);
				if( TMP$485$4 != 112 ) goto label$793;
				label$794:;
				{
					FBSTRING TMP$487$5;
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"__builtin_va_arg( ", 19, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)", ", 3, 0 );
					FBSTRING* vr$31 = HEMITTYPE( *(int32*)((uint8*)N$1 + 4), *(struct $8FBSYMBOL**)((uint8*)N$1 + 8) );
					__builtin_memset( &TMP$487$5, 0, 12 );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$487$5, (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$31, -1 );
					fb_StrAssign( (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$35, -1, 0 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
				}
				goto label$792;
				label$793:;
				if( TMP$485$4 != 109 ) goto label$795;
				label$796:;
				{
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"__builtin_va_start( ", 21, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)", ", 3, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 16), -1 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
				}
				goto label$792;
				label$795:;
				if( TMP$485$4 != 110 ) goto label$797;
				label$798:;
				{
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"__builtin_va_end( ", 19, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
				}
				goto label$792;
				label$797:;
				if( TMP$485$4 != 111 ) goto label$799;
				label$800:;
				{
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"__builtin_va_copy( ", 20, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)", ", 3, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 16), -1 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
				}
				goto label$792;
				label$799:;
				{
				}
				label$801:;
				label$792:;
			}
		}
		goto label$785;
		label$802:;
		{
			FBSTRING TMP$491$3;
			uint8* vr$54 = HUOPTOSTR( *(int32*)((uint8*)N$1 + 24), *(int32*)((uint8*)N$1 + 4), &IS_BUILTIN$1 );
			__builtin_memset( &TMP$491$3, 0, 12 );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$491$3, (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$54, 0 );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$58, -1, 0 );
			NEED_PARENS$1 = -(*(int32*)*(struct $8EXPRNODE**)((uint8*)N$1 + 12) == 4) | IS_BUILTIN$1;
			if( NEED_PARENS$1 == 0 ) goto label$804;
			{
				fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"(", 2, 0 );
				if( IS_BUILTIN$1 == 0 ) goto label$806;
				{
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)" ", 2, 0 );
				}
				label$806:;
				label$805:;
			}
			label$804:;
			label$803:;
			HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
			if( NEED_PARENS$1 == 0 ) goto label$808;
			{
				if( IS_BUILTIN$1 == 0 ) goto label$810;
				{
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)" ", 2, 0 );
				}
				label$810:;
				label$809:;
				fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
			}
			label$808:;
			label$807:;
		}
		goto label$785;
		label$811:;
		{
			{
				int32 TMP$492$4;
				TMP$492$4 = *(int32*)((uint8*)N$1 + 24);
				if( TMP$492$4 != 64 ) goto label$813;
				label$814:;
				{
					if( *(int32*)((uint8*)N$1 + 4) != 15 ) goto label$816;
					{
						fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"__builtin_atan2f", 17, 0 );
					}
					goto label$815;
					label$816:;
					{
						fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"__builtin_atan2", 16, 0 );
					}
					label$815:;
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"(", 2, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), 0 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)", ", 3, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 16), 0 );
					fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
				}
				goto label$812;
				label$813:;
				{
					FBSTRING TMP$495$5;
					if( NEED_PARENS$1 == 0 ) goto label$819;
					{
						fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"(", 2, 0 );
					}
					label$819:;
					label$818:;
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 12), -1 );
					uint8* vr$81 = HBOPTOSTR( *(int32*)((uint8*)N$1 + 24) );
					__builtin_memset( &TMP$495$5, 0, 12 );
					FBSTRING* vr$85 = fb_StrConcat( &TMP$495$5, (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$81, 0 );
					fb_StrAssign( (void*)((uint8*)&CTX$ + 2712), -1, (void*)vr$85, -1, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 16), -1 );
					if( NEED_PARENS$1 == 0 ) goto label$821;
					{
						fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2712), -1, (void*)")", 2, 0 );
					}
					label$821:;
					label$820:;
				}
				label$817:;
				label$812:;
			}
		}
		goto label$785;
		label$786:;
		static const void* tmp$686[7] = {
			&&label$787,
			&&label$788,
			&&label$789,
			&&label$790,
			&&label$802,
			&&label$811,
			&&label$791,
		};
		if( TMP$480$2 > 6u ) goto label$785;
		goto *tmp$686[TMP$480$2 - 0u];
		label$785:;
	}
	label$784:;
}

static FBSTRING* EXPRFLUSH( struct $8EXPRNODE* N$1, int32 NEED_PARENS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$822:;
	HEXPRFLUSH( N$1, NEED_PARENS$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)((uint8*)&CTX$ + 2712), -1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 2712), -1, (void*)"", 1, 0 );
	EXPRFREETREE( N$1 );
	label$823:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static struct $8EXPRNODE* EXPRNEWOFFSET( struct $8FBSYMBOL* SYM$1, int64 OFS$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$824:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$1 = EXPRNEWSYM( SYM$1 );
	L$1 = vr$1;
	int32 vr$5 = SYMBISCARRAY( SYM$1 );
	if( (((-((*(int32*)((uint8*)SYM$1 + 4) & 512) != 0) | vr$5) | -(*(int32*)SYM$1 == 3)) | -(*(int32*)SYM$1 == 7)) != 0 ) goto label$827;
	{
		struct $8EXPRNODE* vr$13 = EXPRNEWUOP( 22, L$1 );
		L$1 = vr$13;
	}
	label$827:;
	label$826:;
	if( OFS$1 == 0ll ) goto label$829;
	{
		struct $8EXPRNODE* vr$14 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, L$1 );
		L$1 = vr$14;
		struct $8EXPRNODE* vr$15 = EXPRNEWIMMI( OFS$1, 8 );
		struct $8EXPRNODE* vr$16 = EXPRNEWBOP( 28, L$1, vr$15 );
		L$1 = vr$16;
	}
	label$829:;
	label$828:;
	fb$result$1 = L$1;
	label$825:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWVREG( struct $6IRVREG* VREG$1, int32 IS_LVALUE$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$830:;
	struct $8EXPRNODE* L$1;
	int32 DTYPE$1;
	int32 HAVE_OFFSET$1;
	{
		uint32 TMP$496$2;
		TMP$496$2 = *(uint32*)VREG$1;
		goto label$833;
		label$834:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$836;
			{
				if( *(struct $6IRVREG**)((uint8*)VREG$1 + 52) == (struct $6IRVREG*)0u ) goto label$838;
				{
					struct $8EXPRNODE* vr$5 = EXPRNEWVREG( *(struct $6IRVREG**)((uint8*)VREG$1 + 52), 0 );
					L$1 = vr$5;
					if( *(int64*)((uint8*)VREG$1 + 40) == 0ll ) goto label$840;
					{
						struct $8EXPRNODE* vr$7 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, L$1 );
						L$1 = vr$7;
						struct $8EXPRNODE* vr$9 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 40), 8 );
						struct $8EXPRNODE* vr$10 = EXPRNEWBOP( 28, L$1, vr$9 );
						L$1 = vr$10;
					}
					label$840:;
					label$839:;
				}
				goto label$837;
				label$838:;
				{
					struct $8EXPRNODE* vr$12 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 40), 8 );
					L$1 = vr$12;
				}
				label$837:;
				struct $8EXPRNODE* vr$27 = EXPRNEWCAST( (((*(int32*)((uint8*)VREG$1 + 4) & 31) | ((*(int32*)((uint8*)VREG$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)VREG$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)VREG$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8), L$1 );
				L$1 = vr$27;
				struct $8EXPRNODE* vr$28 = EXPRNEWUOP( 76, L$1 );
				L$1 = vr$28;
				goto label$832;
			}
			label$836:;
			label$835:;
			HAVE_OFFSET$1 = -(*(int64*)((uint8*)VREG$1 + 40) != 0ll) | -(*(struct $6IRVREG**)((uint8*)VREG$1 + 52) != (struct $6IRVREG*)0u);
			int32 IS_C_ARRAY$3;
			int32 vr$35 = SYMBISCARRAY( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) );
			IS_C_ARRAY$3 = vr$35;
			int32 DO_DEREF$3;
			DO_DEREF$3 = HAVE_OFFSET$1 | IS_C_ARRAY$3;
			struct $8EXPRNODE* vr$38 = EXPRNEWSYM( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) );
			L$1 = vr$38;
			int32 SYMDTYPE$3;
			SYMDTYPE$3 = *(int32*)((uint8*)L$1 + 4);
			struct $8FBSYMBOL* SYMSUBTYPE$3;
			SYMSUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
			if( (-(*(int32*)((uint8*)VREG$1 + 4) != SYMDTYPE$3) | -(*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8) != SYMSUBTYPE$3)) == 0 ) goto label$842;
			{
				int32 TMP$497$4;
				int32 TMP$498$4;
				if( (*(int32*)((uint8*)VREG$1 + 4) & 480) == 0 ) goto label$843;
				TMP$497$4 = 24;
				goto label$1243;
				label$843:;
				TMP$497$4 = *(int32*)((uint8*)VREG$1 + 4) & 31;
				label$1243:;
				if( (SYMDTYPE$3 & 480) == 0 ) goto label$844;
				TMP$498$4 = 24;
				goto label$1244;
				label$844:;
				TMP$498$4 = SYMDTYPE$3 & 31;
				label$1244:;
				DO_DEREF$3 = DO_DEREF$3 | -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$497$4 * 28)) != *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$498$4 * 28)));
				{
					int32 TMP$499$5;
					int32 TMP$500$5;
					if( (*(int32*)((uint8*)VREG$1 + 4) & 480) == 0 ) goto label$845;
					TMP$499$5 = 24;
					goto label$1245;
					label$845:;
					TMP$499$5 = *(int32*)((uint8*)VREG$1 + 4) & 31;
					label$1245:;
					TMP$500$5 = TMP$499$5;
					if( TMP$500$5 != 17 ) goto label$847;
					label$848:;
					{
						DO_DEREF$3 = -1;
					}
					goto label$846;
					label$847:;
					if( TMP$500$5 != 20 ) goto label$849;
					label$850:;
					{
						$19FB_CVA_LIST_TYPEDEF vr$64 = SYMBGETVALISTTYPE( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) + 28), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) + 32) );
						DO_DEREF$3 = DO_DEREF$3 | -(vr$64 != 3);
					}
					goto label$846;
					label$849:;
					{
						{
							int32 TMP$501$7;
							int32 TMP$502$7;
							if( (SYMDTYPE$3 & 480) == 0 ) goto label$852;
							TMP$501$7 = 24;
							goto label$1246;
							label$852:;
							TMP$501$7 = SYMDTYPE$3 & 31;
							label$1246:;
							TMP$502$7 = TMP$501$7;
							if( TMP$502$7 != 17 ) goto label$854;
							label$855:;
							{
								DO_DEREF$3 = -1;
							}
							goto label$853;
							label$854:;
							if( TMP$502$7 != 20 ) goto label$856;
							label$857:;
							{
								$19FB_CVA_LIST_TYPEDEF vr$73 = SYMBGETVALISTTYPE( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) + 28), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) + 32) );
								DO_DEREF$3 = DO_DEREF$3 | -(vr$73 != 3);
							}
							label$856:;
							label$853:;
						}
					}
					label$851:;
					label$846:;
				}
			}
			label$842:;
			label$841:;
			if( DO_DEREF$3 != 0 ) goto label$859;
			{
				goto label$832;
			}
			label$859:;
			label$858:;
			if( IS_C_ARRAY$3 != 0 ) goto label$861;
			{
				struct $8EXPRNODE* vr$76 = EXPRNEWUOP( 22, L$1 );
				L$1 = vr$76;
			}
			label$861:;
			label$860:;
			if( HAVE_OFFSET$1 == 0 ) goto label$863;
			{
				if( IS_C_ARRAY$3 == 0 ) goto label$865;
				{
					struct $8EXPRNODE* vr$77 = EXPRNEWCAST( 8, (struct $8FBSYMBOL*)0u, L$1 );
					L$1 = vr$77;
				}
				goto label$864;
				label$865:;
				{
					struct $8EXPRNODE* vr$78 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, L$1 );
					L$1 = vr$78;
				}
				label$864:;
				if( *(struct $6IRVREG**)((uint8*)VREG$1 + 52) == (struct $6IRVREG*)0u ) goto label$867;
				{
					struct $8EXPRNODE* vr$81 = EXPRNEWVREG( *(struct $6IRVREG**)((uint8*)VREG$1 + 52), 0 );
					struct $8EXPRNODE* vr$82 = EXPRNEWBOP( 28, L$1, vr$81 );
					L$1 = vr$82;
				}
				label$867:;
				label$866:;
				if( *(int64*)((uint8*)VREG$1 + 40) == 0ll ) goto label$869;
				{
					struct $8EXPRNODE* vr$85 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 40), 8 );
					struct $8EXPRNODE* vr$86 = EXPRNEWBOP( 28, L$1, vr$85 );
					L$1 = vr$86;
				}
				label$869:;
				label$868:;
			}
			label$863:;
			label$862:;
			struct $8EXPRNODE* vr$101 = EXPRNEWCAST( (((*(int32*)((uint8*)VREG$1 + 4) & 31) | ((*(int32*)((uint8*)VREG$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)VREG$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)VREG$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8), L$1 );
			L$1 = vr$101;
			struct $8EXPRNODE* vr$102 = EXPRNEWUOP( 76, L$1 );
			L$1 = vr$102;
		}
		goto label$832;
		label$870:;
		{
			struct $8EXPRNODE* vr$105 = EXPRNEWOFFSET( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32), *(int64*)((uint8*)VREG$1 + 40) );
			L$1 = vr$105;
		}
		goto label$832;
		label$871:;
		{
			int32 TMP$503$3;
			DTYPE$1 = *(int32*)((uint8*)VREG$1 + 4);
			if( (DTYPE$1 & 480) == 0 ) goto label$872;
			TMP$503$3 = 24;
			goto label$1247;
			label$872:;
			TMP$503$3 = DTYPE$1 & 31;
			label$1247:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$503$3 * 28)) != 1 ) goto label$874;
			{
				struct $8EXPRNODE* vr$111 = EXPRNEWIMMF( *(double*)((uint8*)VREG$1 + 24), DTYPE$1 );
				L$1 = vr$111;
			}
			goto label$873;
			label$874:;
			if( DTYPE$1 != 1 ) goto label$875;
			{
				int32 TMP$504$4;
				if( *(int64*)((uint8*)VREG$1 + 24) == 0ll ) goto label$876;
				TMP$504$4 = 1;
				goto label$1248;
				label$876:;
				TMP$504$4 = 0;
				label$1248:;
				struct $8EXPRNODE* vr$114 = EXPRNEWIMMI( (int64)TMP$504$4, 8 );
				L$1 = vr$114;
			}
			goto label$873;
			label$875:;
			{
				struct $8EXPRNODE* vr$116 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 24), DTYPE$1 );
				L$1 = vr$116;
			}
			label$873:;
		}
		goto label$832;
		label$877:;
		{
			struct $8EXPRNODE* vr$118 = EXPRLOOKUP( *(int32*)((uint8*)VREG$1 + 12) );
			L$1 = vr$118;
			if( L$1 != (struct $8EXPRNODE*)0u ) goto label$879;
			{
				FBSTRING TMP$506$4;
				FBSTRING TMP$507$4;
				__builtin_memset( &TMP$507$4, 0, 12 );
				FBSTRING* vr$121 = fb_IntToStr( *(int32*)((uint8*)VREG$1 + 12) );
				__builtin_memset( &TMP$506$4, 0, 12 );
				FBSTRING* vr$124 = fb_StrConcat( &TMP$506$4, (void*)"vr$", 4, (void*)vr$121, -1 );
				fb_StrAssign( (void*)&TMP$507$4, -1, (void*)vr$124, -1, 0 );
				struct $8EXPRNODE* vr$128 = EXPRNEWTEXT( *(int32*)((uint8*)VREG$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8), (uint8*)*(uint8**)&TMP$507$4 );
				L$1 = vr$128;
				fb_StrDelete( (FBSTRING*)&TMP$507$4 );
			}
			label$879:;
			label$878:;
		}
		goto label$832;
		label$833:;
		static const void* tmp$687[6] = {
			&&label$871,
			&&label$834,
			&&label$834,
			&&label$834,
			&&label$877,
			&&label$870,
		};
		if( TMP$496$2 > 5u ) goto label$832;
		goto *tmp$687[TMP$496$2 - 0u];
		label$832:;
	}
	if( IS_LVALUE$1 != 0 ) goto label$881;
	{
		struct $8EXPRNODE* vr$132 = EXPRNEWCAST( *(int32*)((uint8*)VREG$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8), L$1 );
		L$1 = vr$132;
	}
	label$881:;
	label$880:;
	fb$result$1 = L$1;
	label$831:;
	return fb$result$1;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$882:;
	int32 vr$0 = SECTIONINSIDEPROC(  );
	if( vr$0 == 0 ) goto label$885;
	{
		FBSTRING TMP$509$2;
		FBSTRING TMP$510$2;
		__builtin_memset( &TMP$510$2, 0, 12 );
		uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$509$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$509$2, (void*)vr$2, 0, (void*)":;", 3 );
		fb_StrAssign( (void*)&TMP$510$2, -1, (void*)vr$5, -1, 0 );
		HWRITELINE( &TMP$510$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$510$2 );
	}
	label$885:;
	label$884:;
	label$883:;
}

static void EXPRSTORE( struct $6IRVREG* VR$1, struct $8EXPRNODE* R$1, int32 HAS_SIDEFX$1 )
{
	label$886:;
	static FBSTRING LN$1;
	static FBSTRING TEMPVAR$1;
	struct $8EXPRNODE* L$1;
	if( *(int32*)VR$1 != 4 ) goto label$889;
	{
		if( HAS_SIDEFX$1 == 0 ) goto label$891;
		{
			FBSTRING TMP$511$3;
			FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)VR$1 + 12) );
			__builtin_memset( &TMP$511$3, 0, 12 );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$511$3, (void*)"vr$", 4, (void*)vr$2, -1 );
			fb_StrAssign( (void*)&TEMPVAR$1, -1, (void*)vr$5, -1, 0 );
			FBSTRING* vr$8 = HEMITTYPE( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$8, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&TEMPVAR$1, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = ", 4, 0 );
			FBSTRING* vr$9 = EXPRFLUSH( R$1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$9, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)";", 2, 0 );
			HWRITELINE( &LN$1, 0 );
			struct $8EXPRNODE* vr$12 = EXPRNEWTEXT( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8), (uint8*)*(uint8**)&TEMPVAR$1 );
			R$1 = vr$12;
		}
		goto label$890;
		label$891:;
		{
			struct $8EXPRNODE* vr$15 = EXPRNEWCAST( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8), R$1 );
			R$1 = vr$15;
		}
		label$890:;
		EXPRCACHE( *(int32*)((uint8*)VR$1 + 12), R$1 );
	}
	goto label$888;
	label$889:;
	{
		struct $8EXPRNODE* vr$17 = EXPRNEWVREG( VR$1, -1 );
		L$1 = vr$17;
		struct $8EXPRNODE* vr$20 = EXPRNEWCAST( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8), R$1 );
		R$1 = vr$20;
		if( (-((*(int32*)((uint8*)L$1 + 4) & 480) != 0) | -((*(int32*)((uint8*)R$1 + 4) & 480) != 0)) == 0 ) goto label$893;
		{
			struct $8EXPRNODE* vr$30 = EXPRNEWCAST( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8), R$1 );
			R$1 = vr$30;
		}
		label$893:;
		label$892:;
		FBSTRING* vr$31 = EXPRFLUSH( L$1, 0 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$31, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" = ", 4, 0 );
		FBSTRING* vr$32 = EXPRFLUSH( R$1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$32, -1, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)";", 2, 0 );
		HWRITELINE( &LN$1, 0 );
	}
	label$888:;
	label$887:;
}

static void _EMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$894:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* R$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0 );
	L$1 = vr$0;
	struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V2$1, 0 );
	R$1 = vr$1;
	if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$897;
	{
		FBSTRING TMP$514$2;
		static FBSTRING S$2;
		fb_StrAssign( (void*)&S$2, -1, (void*)"if( ", 5, 0 );
		struct $8EXPRNODE* vr$2 = EXPRNEWBOP( OP$1, L$1, R$1 );
		FBSTRING* vr$3 = EXPRFLUSH( vr$2, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)vr$3, -1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)" ) goto ", 9, 0 );
		uint8* vr$4 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$514$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$514$2, (void*)&S$2, -1, (void*)vr$4, 0 );
		fb_StrAssign( (void*)&S$2, -1, (void*)vr$7, -1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)";", 2, 0 );
		HWRITELINE( &S$2, 0 );
		goto label$895;
	}
	label$897:;
	label$896:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$899;
	{
		VR$1 = V1$1;
	}
	label$899:;
	label$898:;
	{
		uint32 TMP$515$2;
		TMP$515$2 = (uint32)OP$1;
		goto label$901;
		label$902:;
		{
			struct $8EXPRNODE* vr$8 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$8;
			if( *(int32*)((uint8*)VR$1 + 4) == 1 ) goto label$904;
			{
				struct $8EXPRNODE* vr$10 = EXPRNEWUOP( 54, L$1 );
				L$1 = vr$10;
			}
			label$904:;
			label$903:;
		}
		goto label$900;
		label$905:;
		{
			if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$907;
			{
				struct $8EXPRNODE* vr$13 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, L$1 );
				L$1 = vr$13;
			}
			label$907:;
			label$906:;
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$909;
			{
				struct $8EXPRNODE* vr$16 = EXPRNEWCAST( 35, (struct $8FBSYMBOL*)0u, R$1 );
				R$1 = vr$16;
			}
			label$909:;
			label$908:;
			struct $8EXPRNODE* vr$17 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$17;
		}
		goto label$900;
		label$910:;
		{
			struct $8EXPRNODE* vr$18 = EXPRNEWCAST( 16, (struct $8FBSYMBOL*)0u, L$1 );
			L$1 = vr$18;
			struct $8EXPRNODE* vr$19 = EXPRNEWCAST( 16, (struct $8FBSYMBOL*)0u, R$1 );
			R$1 = vr$19;
			struct $8EXPRNODE* vr$20 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$20;
		}
		goto label$900;
		label$911:;
		{
			struct $8EXPRNODE* vr$21 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$21;
		}
		goto label$900;
		label$912:;
		{
			int32 TMP$516$3;
			if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$913;
			TMP$516$3 = 24;
			goto label$1249;
			label$913:;
			TMP$516$3 = *(int32*)((uint8*)L$1 + 4) & 31;
			label$1249:;
			struct $8EXPRNODE* vr$30 = EXPRNEWIMMI( (int64)((*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$516$3 * 28)) + 4) << (3 & 31)) + -1), 8 );
			struct $8EXPRNODE* vr$31 = EXPRNEWBOP( 34, R$1, vr$30 );
			R$1 = vr$31;
			struct $8EXPRNODE* vr$32 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$32;
		}
		goto label$900;
		label$914:;
		{
			struct $8EXPRNODE* vr$33 = EXPRNEWBOP( 38, L$1, R$1 );
			L$1 = vr$33;
			if( *(int32*)((uint8*)VR$1 + 4) != 1 ) goto label$916;
			{
				struct $8EXPRNODE* vr$35 = EXPRNEWIMMI( 1ll, 8 );
				struct $8EXPRNODE* vr$36 = EXPRNEWBOP( 38, L$1, vr$35 );
				L$1 = vr$36;
			}
			goto label$915;
			label$916:;
			{
				struct $8EXPRNODE* vr$37 = EXPRNEWUOP( 52, L$1 );
				L$1 = vr$37;
			}
			label$915:;
		}
		goto label$900;
		label$917:;
		{
			if( *(int32*)((uint8*)VR$1 + 4) != 1 ) goto label$919;
			{
				struct $8EXPRNODE* vr$39 = EXPRNEWIMMI( 1ll, 8 );
				struct $8EXPRNODE* vr$40 = EXPRNEWBOP( 38, L$1, vr$39 );
				L$1 = vr$40;
			}
			goto label$918;
			label$919:;
			{
				struct $8EXPRNODE* vr$41 = EXPRNEWUOP( 52, L$1 );
				L$1 = vr$41;
			}
			label$918:;
			struct $8EXPRNODE* vr$42 = EXPRNEWBOP( 35, L$1, R$1 );
			L$1 = vr$42;
		}
		goto label$900;
		label$901:;
		static const void* tmp$688[23] = {
			&&label$905,
			&&label$905,
			&&label$911,
			&&label$910,
			&&label$911,
			&&label$911,
			&&label$911,
			&&label$911,
			&&label$900,
			&&label$900,
			&&label$911,
			&&label$914,
			&&label$917,
			&&label$912,
			&&label$912,
			&&label$900,
			&&label$900,
			&&label$902,
			&&label$902,
			&&label$902,
			&&label$902,
			&&label$902,
			&&label$902,
		};
		if( (TMP$515$2 - 28u) > 22u ) goto label$900;
		goto *tmp$688[TMP$515$2 - 28u];
		label$900:;
	}
	EXPRSTORE( VR$1, L$1, 0 );
	label$895:;
}

static void _EMITUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$920:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$923;
	{
		VR$1 = V1$1;
	}
	label$923:;
	label$922:;
	struct $8EXPRNODE* EXPR$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0 );
	EXPR$1 = vr$0;
	if( (-(OP$1 == 52) & -(*(int32*)((uint8*)VR$1 + 4) == 1)) == 0 ) goto label$925;
	{
		struct $8EXPRNODE* vr$5 = EXPRNEWIMMI( 0ll, 8 );
		struct $8EXPRNODE* vr$6 = EXPRNEWBOP( 45, EXPR$1, vr$5 );
		EXPR$1 = vr$6;
	}
	goto label$924;
	label$925:;
	{
		struct $8EXPRNODE* vr$7 = EXPRNEWUOP( OP$1, EXPR$1 );
		EXPR$1 = vr$7;
	}
	label$924:;
	EXPRSTORE( VR$1, EXPR$1, 0 );
	label$921:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$519$1;
	int32 TMP$520$1;
	label$926:;
	struct $8EXPRNODE* R$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V2$1, 0 );
	R$1 = vr$0;
	if( (-(*(int32*)((uint8*)V1$1 + 4) != 1) & -(*(int32*)((uint8*)R$1 + 4) == 1)) == 0 ) goto label$929;
	{
		if( *(int32*)R$1 != 1 ) goto label$931;
		{
			*(int64*)((uint8*)R$1 + 24) = (int64)-(*(int64*)((uint8*)R$1 + 24) != 0ll);
			*(int32*)((uint8*)R$1 + 4) = 11;
		}
		goto label$930;
		label$931:;
		{
			struct $8EXPRNODE* vr$12 = EXPRNEWUOP( 54, R$1 );
			R$1 = vr$12;
		}
		label$930:;
	}
	goto label$928;
	label$929:;
	if( (-(*(int32*)((uint8*)V1$1 + 4) == 1) & -(*(int32*)((uint8*)R$1 + 4) != 1)) == 0 ) goto label$932;
	{
		if( *(int32*)R$1 != 1 ) goto label$934;
		{
			int32 TMP$517$3;
			int32 TMP$518$3;
			if( (*(int32*)((uint8*)R$1 + 4) & 480) == 0 ) goto label$935;
			TMP$517$3 = 24;
			goto label$1250;
			label$935:;
			TMP$517$3 = *(int32*)((uint8*)R$1 + 4) & 31;
			label$1250:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$517$3 * 28)) != 1 ) goto label$936;
			TMP$518$3 = -(*(double*)((uint8*)R$1 + 24) != 0x0p+0);
			goto label$1251;
			label$936:;
			TMP$518$3 = -(*(int64*)((uint8*)R$1 + 24) != 0ll);
			label$1251:;
			*(int64*)((uint8*)R$1 + 24) = (int64)-TMP$518$3;
			*(int32*)((uint8*)R$1 + 4) = 11;
		}
		goto label$933;
		label$934:;
		{
			struct $8EXPRNODE* vr$32 = EXPRNEWIMMI( 0ll, 8 );
			struct $8EXPRNODE* vr$33 = EXPRNEWBOP( 48, R$1, vr$32 );
			R$1 = vr$33;
		}
		label$933:;
	}
	goto label$928;
	label$932:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$938;
	TMP$519$1 = 24;
	goto label$1252;
	label$938:;
	TMP$519$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$1252:;
	if( (*(int32*)((uint8*)R$1 + 4) & 480) == 0 ) goto label$939;
	TMP$520$1 = 24;
	goto label$1253;
	label$939:;
	TMP$520$1 = *(int32*)((uint8*)R$1 + 4) & 31;
	label$1253:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$519$1 * 28)) == 0) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$520$1 * 28)) == 1)) == 0 ) goto label$937;
	{
		FBSTRING S$2;
		__builtin_memset( &S$2, 0, 12 );
		int32 TEMPDTYPE$2;
		__builtin_memset( &TEMPDTYPE$2, 0, 4 );
		{
			int32 TMP$521$3;
			int32 TMP$522$3;
			if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$940;
			TMP$521$3 = 24;
			goto label$1254;
			label$940:;
			TMP$521$3 = *(int32*)((uint8*)V1$1 + 4) & 31;
			label$1254:;
			TMP$522$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$521$3 * 28)) + 20);
			if( TMP$522$3 > 5 ) goto label$942;
			label$943:;
			{
				if( *(int32*)((uint8*)R$1 + 4) != 15 ) goto label$945;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)"fb_F2I", 7, 0 );
					*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 1u;
				}
				goto label$944;
				label$945:;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)"fb_D2I", 7, 0 );
					*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 8u;
				}
				label$944:;
				TEMPDTYPE$2 = 11;
			}
			goto label$941;
			label$942:;
			if( TMP$522$3 > 7 ) goto label$946;
			label$947:;
			{
				if( *(int32*)((uint8*)R$1 + 4) != 15 ) goto label$949;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)"fb_F2L", 7, 0 );
					*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 2u;
				}
				goto label$948;
				label$949:;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)"fb_D2L", 7, 0 );
					*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 16u;
				}
				label$948:;
				TEMPDTYPE$2 = 13;
			}
			goto label$941;
			label$946:;
			{
				if( *(int32*)((uint8*)R$1 + 4) != 15 ) goto label$952;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)"fb_F2UL", 8, 0 );
					*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 4u;
				}
				goto label$951;
				label$952:;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)"fb_D2UL", 8, 0 );
					*(uint32*)((uint8*)&CTX$ + 2604) = *(uint32*)((uint8*)&CTX$ + 2604) | 32u;
				}
				label$951:;
				TEMPDTYPE$2 = 14;
			}
			label$950:;
			label$941:;
		}
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)"( ", 3, 0 );
		FBSTRING* vr$70 = EXPRFLUSH( R$1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)vr$70, -1, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)" )", 3, 0 );
		struct $8EXPRNODE* vr$73 = EXPRNEWTEXT( TEMPDTYPE$2, (struct $8FBSYMBOL*)0u, (uint8*)*(uint8**)&S$2 );
		R$1 = vr$73;
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$937:;
	label$928:;
	EXPRSTORE( V1$1, R$1, 0 );
	label$927:;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	label$953:;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V2$1, 0 );
	EXPRSTORE( V1$1, vr$0, 0 );
	label$954:;
}

static void _EMITSPILLREGS( void )
{
	label$955:;
	label$956:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$957:;
	label$958:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$530$1;
	FBSTRING TMP$531$1;
	FBSTRING TMP$532$1;
	label$959:;
	_EMITSTORE( VR$1, V1$1 );
	__builtin_memset( &TMP$532$1, 0, 12 );
	struct $8EXPRNODE* vr$1 = EXPRNEWVREG( VR$1, 0 );
	FBSTRING* vr$2 = EXPRFLUSH( vr$1, 0 );
	__builtin_memset( &TMP$530$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$530$1, (void*)"return ", 8, (void*)vr$2, -1 );
	__builtin_memset( &TMP$531$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$531$1, (void*)vr$5, -1, (void*)";", 2 );
	fb_StrAssign( (void*)&TMP$532$1, -1, (void*)vr$8, -1, 0 );
	HWRITELINE( &TMP$532$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$532$1 );
	label$960:;
}

static void _EMITADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$961:;
	struct $8EXPRNODE* L$1;
	L$1 = (struct $8EXPRNODE*)0u;
	{
		if( OP$1 != 22 ) goto label$964;
		label$965:;
		{
			if( (-(*(int32*)V1$1 == 1) & -(*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$967;
			{
				if( *(int32*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) != 7 ) goto label$969;
				{
					struct $8EXPRNODE* vr$8 = EXPRNEWSYM( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					L$1 = vr$8;
					struct $8EXPRNODE* vr$11 = EXPRNEWCAST( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8), L$1 );
					L$1 = vr$11;
					goto label$963;
				}
				label$969:;
				label$968:;
			}
			label$967:;
			label$966:;
			struct $8EXPRNODE* vr$12 = EXPRNEWVREG( V1$1, -1 );
			struct $8EXPRNODE* vr$13 = EXPRNEWUOP( 22, vr$12 );
			L$1 = vr$13;
		}
		goto label$963;
		label$964:;
		if( OP$1 != 76 ) goto label$970;
		label$971:;
		{
			struct $8EXPRNODE* vr$14 = EXPRNEWVREG( V1$1, 0 );
			L$1 = vr$14;
		}
		label$970:;
		label$963:;
	}
	EXPRSTORE( VR$1, L$1, 0 );
	label$962:;
}

static void HDOCALL( FBSTRING* S$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	int32 TMP$533$1;
	label$972:;
	struct $9IRCALLARG* ARG$1;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb_StrConcatByref( (void*)S$1, -1, (void*)"( ", 3, 0 );
	void* vr$1 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 60) );
	ARG$1 = (struct $9IRCALLARG*)vr$1;
	label$974:;
	if( ARG$1 == (struct $9IRCALLARG*)0u ) goto label$976;
	TMP$533$1 = -((struct $9IRCALLARG*)-(*(int32*)((uint8*)ARG$1 + 8) == LEVEL$1) != (struct $9IRCALLARG*)0u);
	goto label$1255;
	label$976:;
	TMP$533$1 = 0;
	label$1255:;
	if( TMP$533$1 == 0 ) goto label$975;
	{
		int32 TMP$534$2;
		struct $9IRCALLARG* PREV$2;
		void* vr$5 = LISTGETPREV( (void*)ARG$1 );
		PREV$2 = (struct $9IRCALLARG*)vr$5;
		struct $8EXPRNODE* EXPR$2;
		struct $8EXPRNODE* vr$7 = EXPRNEWVREG( *(struct $6IRVREG**)((uint8*)ARG$1 + 4), 0 );
		EXPR$2 = vr$7;
		if( *(struct $8FBSYMBOL**)ARG$1 == (struct $8FBSYMBOL*)0u ) goto label$977;
		TMP$534$2 = -((struct $8FBSYMBOL*)-(*(int32*)((uint8*)*(struct $8FBSYMBOL**)ARG$1 + 56) != 4) != (struct $8FBSYMBOL*)0u);
		goto label$1256;
		label$977:;
		TMP$534$2 = 0;
		label$1256:;
		if( TMP$534$2 == 0 ) goto label$979;
		{
			_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( *(struct $8FBSYMBOL**)ARG$1, &DTYPE$1, &SUBTYPE$1 );
			struct $8EXPRNODE* vr$16 = EXPRNEWCAST( DTYPE$1, SUBTYPE$1, EXPR$2 );
			EXPR$2 = vr$16;
		}
		label$979:;
		label$978:;
		FBSTRING* vr$17 = EXPRFLUSH( EXPR$2, 0 );
		fb_StrConcatByref( (void*)S$1, -1, (void*)vr$17, -1, 0 );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 60), (void*)ARG$1 );
		if( PREV$2 == (struct $9IRCALLARG*)0u ) goto label$981;
		{
			if( *(int32*)((uint8*)PREV$2 + 8) != LEVEL$1 ) goto label$983;
			{
				fb_StrConcatByref( (void*)S$1, -1, (void*)", ", 3, 0 );
			}
			label$983:;
			label$982:;
		}
		label$981:;
		label$980:;
		ARG$1 = PREV$2;
	}
	goto label$974;
	label$975:;
	fb_StrConcatByref( (void*)S$1, -1, (void*)" )", 3, 0 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$985;
	{
		fb_StrConcatByref( (void*)S$1, -1, (void*)";", 2, 0 );
		HWRITELINE( S$1, 0 );
	}
	goto label$984;
	label$985:;
	{
		struct $8EXPRNODE* vr$23 = EXPRNEWTEXT( *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 8), (uint8*)*(uint8**)S$1 );
		EXPRSTORE( VR$1, vr$23, -1 );
	}
	label$984:;
	label$973:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	label$986:;
	static FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&S$1, -1, (void*)vr$0, 0, 0 );
	HDOCALL( &S$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	label$987:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int32 BYTESTOPOP$1, int32 LEVEL$1 )
{
	label$988:;
	static FBSTRING S$1;
	fb_StrAssign( (void*)&S$1, -1, (void*)"(", 2, 0 );
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0 );
	FBSTRING* vr$1 = EXPRFLUSH( vr$0, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$1, -1, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)")", 2, 0 );
	HDOCALL( &S$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	label$989:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$536$1;
	FBSTRING TMP$537$1;
	FBSTRING TMP$538$1;
	label$990:;
	__builtin_memset( &TMP$538$1, 0, 12 );
	struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V1$1, 0 );
	FBSTRING* vr$2 = EXPRFLUSH( vr$1, -1 );
	__builtin_memset( &TMP$536$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$536$1, (void*)"goto *", 7, (void*)vr$2, -1 );
	__builtin_memset( &TMP$537$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$537$1, (void*)vr$5, -1, (void*)";", 2 );
	fb_StrAssign( (void*)&TMP$538$1, -1, (void*)vr$8, -1, 0 );
	HWRITELINE( &TMP$538$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$538$1 );
	label$991:;
}

static void _EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$540$1;
	FBSTRING TMP$541$1;
	FBSTRING TMP$542$1;
	label$992:;
	__builtin_memset( &TMP$542$1, 0, 12 );
	uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$540$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$540$1, (void*)"goto ", 6, (void*)vr$1, 0 );
	__builtin_memset( &TMP$541$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$541$1, (void*)vr$4, -1, (void*)";", 2 );
	fb_StrAssign( (void*)&TMP$542$1, -1, (void*)vr$7, -1, 0 );
	HWRITELINE( &TMP$542$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$542$1 );
	label$993:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$552$1;
	FBSTRING TMP$553$1;
	FBSTRING TMP$554$1;
	FBSTRING TMP$555$1;
	FBSTRING TMP$556$1;
	FBSTRING TMP$561$1;
	FBSTRING TMP$562$1;
	FBSTRING TMP$563$1;
	FBSTRING TMP$564$1;
	FBSTRING TMP$565$1;
	FBSTRING TMP$566$1;
	FBSTRING TMP$567$1;
	FBSTRING TMP$568$1;
	FBSTRING TMP$569$1;
	FBSTRING TMP$570$1;
	FBSTRING TMP$571$1;
	label$994:;
	FBSTRING TB$1;
	__builtin_memset( &TB$1, 0, 12 );
	FBSTRING TEMP$1;
	__builtin_memset( &TEMP$1, 0, 12 );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	struct $8EXPRNODE* L$1;
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
	struct $8EXPRNODE* vr$4 = EXPRNEWVREG( V1$1, 0 );
	FBSTRING* vr$5 = EXPRFLUSH( vr$4, 0 );
	fb_StrAssign( (void*)&TEMP$1, -1, (void*)vr$5, -1, 0 );
	if( LABELCOUNT$1 > 0 ) goto label$997;
	{
		FBSTRING TMP$543$2;
		FBSTRING TMP$544$2;
		FBSTRING TMP$545$2;
		FBSTRING TMP$547$2;
		FBSTRING TMP$548$2;
		FBSTRING TMP$549$2;
		__builtin_memset( &TMP$545$2, 0, 12 );
		uint8* vr$8 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$543$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$543$2, (void*)"goto ", 6, (void*)vr$8, 0 );
		__builtin_memset( &TMP$544$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$544$2, (void*)vr$11, -1, (void*)";", 2 );
		fb_StrAssign( (void*)&TMP$545$2, -1, (void*)vr$14, -1, 0 );
		HWRITELINE( &TMP$545$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$545$2 );
		__builtin_memset( &TMP$549$2, 0, 12 );
		__builtin_memset( &TMP$547$2, 0, 12 );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$547$2, (void*)"(void)", 7, (void*)&TEMP$1, -1 );
		__builtin_memset( &TMP$548$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$548$2, (void*)vr$22, -1, (void*)";", 2 );
		fb_StrAssign( (void*)&TMP$549$2, -1, (void*)vr$25, -1, 0 );
		HWRITELINE( &TMP$549$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$549$2 );
		fb_StrDelete( (FBSTRING*)&LN$1 );
		fb_StrDelete( (FBSTRING*)&TEMP$1 );
		fb_StrDelete( (FBSTRING*)&TB$1 );
		goto label$995;
	}
	label$997:;
	label$996:;
	uint8* vr$32 = SYMBUNIQUEID( (boolean)0 );
	fb_StrAssign( (void*)&TB$1, -1, (void*)vr$32, 0, 0 );
	struct $8EXPRNODE* vr$35 = EXPRNEWIMMI( (int64)(SPAN$1 + 1ull), 8 );
	L$1 = vr$35;
	__builtin_memset( &TMP$556$1, 0, 12 );
	FBSTRING* vr$37 = EXPRFLUSH( L$1, 0 );
	__builtin_memset( &TMP$552$1, 0, 12 );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$552$1, (void*)"static const void* ", 20, (void*)&TB$1, -1 );
	__builtin_memset( &TMP$553$1, 0, 12 );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$553$1, (void*)vr$41, -1, (void*)"[", 2 );
	__builtin_memset( &TMP$554$1, 0, 12 );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$554$1, (void*)vr$44, -1, (void*)vr$37, -1 );
	__builtin_memset( &TMP$555$1, 0, 12 );
	FBSTRING* vr$50 = fb_StrConcat( &TMP$555$1, (void*)vr$47, -1, (void*)"] = {", 6 );
	fb_StrAssign( (void*)&TMP$556$1, -1, (void*)vr$50, -1, 0 );
	HWRITELINE( &TMP$556$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$556$1 );
	SECTIONINDENT(  );
	int32 I$1;
	I$1 = 0;
	int32 VALUE$1;
	VALUE$1 = 0;
	label$998:;
	{
		FBSTRING TMP$558$2;
		FBSTRING TMP$559$2;
		FBSTRING TMP$560$2;
		struct $8FBSYMBOL* LABEL$2;
		__builtin_memset( &LABEL$2, 0, 4 );
		if( (uint64)VALUE$1 != *(uint64*)((uint8*)VALUES$1 + (I$1 << (3 & 31))) ) goto label$1002;
		{
			LABEL$2 = *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$1 << (2 & 31)));
			I$1 = I$1 + 1;
		}
		goto label$1001;
		label$1002:;
		{
			LABEL$2 = DEFLABEL$1;
		}
		label$1001:;
		__builtin_memset( &TMP$560$2, 0, 12 );
		uint8* vr$62 = SYMBGETMANGLEDNAME( LABEL$2 );
		__builtin_memset( &TMP$558$2, 0, 12 );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$558$2, (void*)"&&", 3, (void*)vr$62, 0 );
		__builtin_memset( &TMP$559$2, 0, 12 );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$559$2, (void*)vr$65, -1, (void*)",", 2 );
		fb_StrAssign( (void*)&TMP$560$2, -1, (void*)vr$68, -1, 0 );
		HWRITELINE( &TMP$560$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$560$2 );
		if( (uint64)VALUE$1 != SPAN$1 ) goto label$1004;
		{
			goto label$999;
		}
		label$1004:;
		label$1003:;
		VALUE$1 = VALUE$1 + 1;
	}
	label$1000:;
	goto label$998;
	label$999:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$561$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$561$1, -1, (void*)"};", 3, 0 );
	HWRITELINE( &TMP$561$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$561$1 );
	struct $8EXPRNODE* vr$78 = EXPRNEWTEXT( DTYPE$1, (struct $8FBSYMBOL*)0u, (uint8*)*(uint8**)&TEMP$1 );
	L$1 = vr$78;
	if( BIAS$1 == 0ull ) goto label$1006;
	{
		struct $8EXPRNODE* vr$79 = EXPRNEWIMMI( (int64)BIAS$1, DTYPE$1 );
		struct $8EXPRNODE* vr$80 = EXPRNEWBOP( 29, L$1, vr$79 );
		L$1 = vr$80;
	}
	label$1006:;
	label$1005:;
	struct $8EXPRNODE* vr$81 = EXPRNEWIMMI( (int64)SPAN$1, DTYPE$1 );
	struct $8EXPRNODE* vr$82 = EXPRNEWBOP( 46, L$1, vr$81 );
	L$1 = vr$82;
	__builtin_memset( &TMP$566$1, 0, 12 );
	uint8* vr$84 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
	FBSTRING* vr$85 = EXPRFLUSH( L$1, 0 );
	__builtin_memset( &TMP$562$1, 0, 12 );
	FBSTRING* vr$88 = fb_StrConcat( &TMP$562$1, (void*)"if( ", 5, (void*)vr$85, -1 );
	__builtin_memset( &TMP$563$1, 0, 12 );
	FBSTRING* vr$91 = fb_StrConcat( &TMP$563$1, (void*)vr$88, -1, (void*)" ) goto ", 9 );
	__builtin_memset( &TMP$564$1, 0, 12 );
	FBSTRING* vr$94 = fb_StrConcat( &TMP$564$1, (void*)vr$91, -1, (void*)vr$84, 0 );
	__builtin_memset( &TMP$565$1, 0, 12 );
	FBSTRING* vr$97 = fb_StrConcat( &TMP$565$1, (void*)vr$94, -1, (void*)";", 2 );
	fb_StrAssign( (void*)&TMP$566$1, -1, (void*)vr$97, -1, 0 );
	HWRITELINE( &TMP$566$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$566$1 );
	struct $8EXPRNODE* vr$101 = EXPRNEWTEXT( DTYPE$1, (struct $8FBSYMBOL*)0u, (uint8*)*(uint8**)&TEMP$1 );
	L$1 = vr$101;
	struct $8EXPRNODE* vr$102 = EXPRNEWIMMI( (int64)BIAS$1, DTYPE$1 );
	struct $8EXPRNODE* vr$103 = EXPRNEWBOP( 29, L$1, vr$102 );
	L$1 = vr$103;
	__builtin_memset( &TMP$571$1, 0, 12 );
	FBSTRING* vr$105 = EXPRFLUSH( L$1, 0 );
	__builtin_memset( &TMP$567$1, 0, 12 );
	FBSTRING* vr$109 = fb_StrConcat( &TMP$567$1, (void*)"goto *", 7, (void*)&TB$1, -1 );
	__builtin_memset( &TMP$568$1, 0, 12 );
	FBSTRING* vr$112 = fb_StrConcat( &TMP$568$1, (void*)vr$109, -1, (void*)"[", 2 );
	__builtin_memset( &TMP$569$1, 0, 12 );
	FBSTRING* vr$115 = fb_StrConcat( &TMP$569$1, (void*)vr$112, -1, (void*)vr$105, -1 );
	__builtin_memset( &TMP$570$1, 0, 12 );
	FBSTRING* vr$118 = fb_StrConcat( &TMP$570$1, (void*)vr$115, -1, (void*)"];", 3 );
	fb_StrAssign( (void*)&TMP$571$1, -1, (void*)vr$118, -1, 0 );
	HWRITELINE( &TMP$571$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$571$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&TEMP$1 );
	fb_StrDelete( (FBSTRING*)&TB$1 );
	label$995:;
}

static void _EMITMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$1007:;
	{
		if( OP$1 != 107 ) goto label$1010;
		label$1011:;
		{
			FBSTRING TMP$574$3;
			FBSTRING TMP$575$3;
			FBSTRING TMP$576$3;
			FBSTRING TMP$577$3;
			FBSTRING TMP$578$3;
			__builtin_memset( &TMP$578$3, 0, 12 );
			struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V2$1, 0 );
			FBSTRING* vr$2 = EXPRFLUSH( vr$1, 0 );
			struct $8EXPRNODE* vr$3 = EXPRNEWVREG( V1$1, 0 );
			FBSTRING* vr$4 = EXPRFLUSH( vr$3, 0 );
			__builtin_memset( &TMP$574$3, 0, 12 );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$574$3, (void*)"__builtin_memset( ", 19, (void*)vr$4, -1 );
			__builtin_memset( &TMP$575$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$575$3, (void*)vr$7, -1, (void*)", 0, ", 6 );
			__builtin_memset( &TMP$576$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$576$3, (void*)vr$10, -1, (void*)vr$2, -1 );
			__builtin_memset( &TMP$577$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$577$3, (void*)vr$13, -1, (void*)" );", 4 );
			fb_StrAssign( (void*)&TMP$578$3, -1, (void*)vr$16, -1, 0 );
			HWRITELINE( &TMP$578$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$578$3 );
		}
		goto label$1009;
		label$1010:;
		if( OP$1 != 105 ) goto label$1012;
		label$1013:;
		{
			FBSTRING TMP$580$3;
			FBSTRING TMP$581$3;
			FBSTRING TMP$582$3;
			FBSTRING TMP$583$3;
			FBSTRING TMP$584$3;
			FBSTRING TMP$585$3;
			FBSTRING TMP$586$3;
			__builtin_memset( &TMP$586$3, 0, 12 );
			FBSTRING* vr$21 = fb_ULongintToStr( (uint64)BYTES$1 );
			struct $8EXPRNODE* vr$22 = EXPRNEWVREG( V2$1, 0 );
			FBSTRING* vr$23 = EXPRFLUSH( vr$22, 0 );
			struct $8EXPRNODE* vr$24 = EXPRNEWVREG( V1$1, 0 );
			FBSTRING* vr$25 = EXPRFLUSH( vr$24, 0 );
			__builtin_memset( &TMP$580$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$580$3, (void*)"__builtin_memcpy( ", 19, (void*)vr$25, -1 );
			__builtin_memset( &TMP$581$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$581$3, (void*)vr$28, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$582$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$582$3, (void*)vr$31, -1, (void*)vr$23, -1 );
			__builtin_memset( &TMP$583$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$583$3, (void*)vr$34, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$584$3, 0, 12 );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$584$3, (void*)vr$37, -1, (void*)vr$21, -1 );
			__builtin_memset( &TMP$585$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$585$3, (void*)vr$40, -1, (void*)" );", 4 );
			fb_StrAssign( (void*)&TMP$586$3, -1, (void*)vr$43, -1, 0 );
			HWRITELINE( &TMP$586$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$586$3 );
		}
		label$1012:;
		label$1009:;
	}
	label$1008:;
}

static void _EMITMACRO( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$1014:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* R$1;
	{
		if( OP$1 != 109 ) goto label$1017;
		label$1018:;
		{
			FBSTRING TMP$587$3;
			FBSTRING TMP$588$3;
			struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0 );
			L$1 = vr$0;
			struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V2$1, 0 );
			R$1 = vr$1;
			__builtin_memset( &TMP$588$3, 0, 12 );
			struct $8EXPRNODE* vr$3 = EXPRNEWMACRO( OP$1, -2147483648u, (struct $8FBSYMBOL*)0u, L$1, R$1 );
			FBSTRING* vr$4 = EXPRFLUSH( vr$3, 0 );
			__builtin_memset( &TMP$587$3, 0, 12 );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$587$3, (void*)vr$4, -1, (void*)";", 2 );
			fb_StrAssign( (void*)&TMP$588$3, -1, (void*)vr$7, -1, 0 );
			HWRITELINE( &TMP$588$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$588$3 );
		}
		goto label$1016;
		label$1017:;
		if( OP$1 != 110 ) goto label$1019;
		label$1020:;
		{
			FBSTRING TMP$589$3;
			FBSTRING TMP$590$3;
			struct $8EXPRNODE* vr$11 = EXPRNEWVREG( V1$1, 0 );
			L$1 = vr$11;
			__builtin_memset( &TMP$590$3, 0, 12 );
			struct $8EXPRNODE* vr$13 = EXPRNEWMACRO( OP$1, -2147483648u, (struct $8FBSYMBOL*)0u, L$1, (struct $8EXPRNODE*)0u );
			FBSTRING* vr$14 = EXPRFLUSH( vr$13, 0 );
			__builtin_memset( &TMP$589$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$589$3, (void*)vr$14, -1, (void*)";", 2 );
			fb_StrAssign( (void*)&TMP$590$3, -1, (void*)vr$17, -1, 0 );
			HWRITELINE( &TMP$590$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$590$3 );
		}
		goto label$1016;
		label$1019:;
		if( OP$1 != 112 ) goto label$1021;
		label$1022:;
		{
			struct $8EXPRNODE* vr$21 = EXPRNEWVREG( V1$1, 0 );
			L$1 = vr$21;
			struct $8EXPRNODE* vr$24 = EXPRNEWMACRO( OP$1, *(int32*)((uint8*)VR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 32), L$1, (struct $8EXPRNODE*)0u );
			L$1 = vr$24;
			EXPRSTORE( VR$1, L$1, 0 );
		}
		goto label$1016;
		label$1021:;
		if( OP$1 != 111 ) goto label$1023;
		label$1024:;
		{
			FBSTRING TMP$591$3;
			FBSTRING TMP$592$3;
			struct $8EXPRNODE* vr$25 = EXPRNEWVREG( V1$1, 0 );
			L$1 = vr$25;
			struct $8EXPRNODE* vr$26 = EXPRNEWVREG( V2$1, 0 );
			R$1 = vr$26;
			__builtin_memset( &TMP$592$3, 0, 12 );
			struct $8EXPRNODE* vr$28 = EXPRNEWMACRO( OP$1, -2147483648u, (struct $8FBSYMBOL*)0u, L$1, R$1 );
			FBSTRING* vr$29 = EXPRFLUSH( vr$28, 0 );
			__builtin_memset( &TMP$591$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$591$3, (void*)vr$29, -1, (void*)";", 2 );
			fb_StrAssign( (void*)&TMP$592$3, -1, (void*)vr$32, -1, 0 );
			HWRITELINE( &TMP$592$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$592$3 );
		}
		label$1023:;
		label$1016:;
	}
	label$1015:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$1025:;
	struct $8FBSYMBOL* ARRAY$1;
	int32 vr$0 = HISSTATICWITHDTOR( SYM$1 );
	if( vr$0 == 0 ) goto label$1028;
	{
		goto label$1026;
	}
	label$1028:;
	label$1027:;
	ARRAY$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96);
	if( ARRAY$1 == (struct $8FBSYMBOL*)0u ) goto label$1030;
	{
		int32 vr$2 = HISSTATICWITHDTOR( ARRAY$1 );
		if( vr$2 == 0 ) goto label$1032;
		{
			goto label$1026;
		}
		label$1032:;
		label$1031:;
	}
	label$1030:;
	label$1029:;
	HMAYBEEMITLOCALVAR( SYM$1 );
	label$1026:;
}

static void _EMITDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 LNUM$1, uint8* FILENAME$1 )
{
	label$1033:;
	if( OP$1 != 113 ) goto label$1036;
	{
		*(int32*)((uint8*)&CTX$ + 2588) = LNUM$1;
		if( FILENAME$1 == (uint8*)0u ) goto label$1038;
		{
			HUPDATECURRENTFILENAME( FILENAME$1 );
		}
		label$1038:;
		label$1037:;
	}
	label$1036:;
	label$1035:;
	label$1034:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	label$1039:;
	int32 LENGTH$1;
	static FBSTRING S$1;
	fb_StrAssign( (void*)&S$1, -1, (void*)TEXT$1, 0, 0 );
	FBSTRING* vr$0 = fb_TRIM( (FBSTRING*)&S$1 );
	fb_StrAssign( (void*)&S$1, -1, (void*)vr$0, -1, 0 );
	int32 vr$1 = fb_StrLen( (void*)&S$1, -1 );
	LENGTH$1 = vr$1;
	if( LENGTH$1 <= 0 ) goto label$1042;
	{
		FBSTRING TMP$595$2;
		FBSTRING TMP$596$2;
		if( (uint32)(int32)*(uint8*)((uint8*)((uint8*)*(uint8**)&S$1 + LENGTH$1) + -1) != 92u ) goto label$1044;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"not_an_escape", 14, 0 );
		}
		label$1044:;
		label$1043:;
		__builtin_memset( &TMP$596$2, 0, 12 );
		__builtin_memset( &TMP$595$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$595$2, (void*)"// ", 4, (void*)&S$1, -1 );
		fb_StrAssign( (void*)&TMP$596$2, -1, (void*)vr$7, -1, 0 );
		HWRITELINE( &TMP$596$2, -1 );
		fb_StrDelete( (FBSTRING*)&TMP$596$2 );
	}
	label$1042:;
	label$1041:;
	label$1040:;
}

static int32 HFINDLABELINSEENLIST( struct $5TLIST* LABELLIST$1, struct $8FBSYMBOL* LABELSYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1045:;
	struct $8FBSYMBOL** SYMNODE$1;
	void* vr$1 = LISTGETHEAD( LABELLIST$1 );
	SYMNODE$1 = (struct $8FBSYMBOL**)vr$1;
	int32 INDEX$1;
	INDEX$1 = -1;
	int32 CURINDEX$1;
	CURINDEX$1 = 0;
	label$1047:;
	{
		if( SYMNODE$1 != (struct $8FBSYMBOL**)0u ) goto label$1051;
		{
			goto label$1048;
			label$1051:;
		}
		if( *SYMNODE$1 != LABELSYM$1 ) goto label$1053;
		{
			INDEX$1 = CURINDEX$1;
			goto label$1048;
		}
		label$1053:;
		label$1052:;
		void* vr$3 = LISTGETNEXT( (void*)SYMNODE$1 );
		SYMNODE$1 = (struct $8FBSYMBOL**)vr$3;
		CURINDEX$1 = CURINDEX$1 + 1;
	}
	label$1049:;
	goto label$1047;
	label$1048:;
	fb$result$1 = INDEX$1;
	goto label$1046;
	label$1046:;
	return fb$result$1;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$1054:;
	int32 USES_LABEL$1;
	__builtin_memset( &USES_LABEL$1, 0, 4 );
	int32 LABELINDEX$1;
	__builtin_memset( &LABELINDEX$1, 0, 4 );
	int32 LABELINDEXBASE$1;
	__builtin_memset( &LABELINDEXBASE$1, 0, 4 );
	struct $5TLIST SEENLABELLIST$1;
	__builtin_memset( &SEENLABELLIST$1, 0, 32 );
	LISTINIT( &SEENLABELLIST$1, 8, 4, -1 );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$1056:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$1057;
	{
		if( *(int32*)N$1 != 1 ) goto label$1059;
		{
			{
				$12FB_SYMBCLASS TMP$597$4;
				TMP$597$4 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4);
				if( TMP$597$4 != 7 ) goto label$1061;
				label$1062:;
				{
					USES_LABEL$1 = -1;
				}
				goto label$1060;
				label$1061:;
				if( TMP$597$4 != 1 ) goto label$1063;
				label$1064:;
				{
					LABELINDEX$1 = LABELINDEX$1 + 1;
				}
				label$1063:;
				label$1060:;
			}
		}
		label$1059:;
		label$1058:;
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$1056;
	label$1057:;
	LABELINDEXBASE$1 = LABELINDEX$1;
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1, (void*)"__asm__", 8, 0 );
	int32 vr$11 = SECTIONINSIDEPROC(  );
	if( vr$11 == 0 ) goto label$1066;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" __volatile__", 14, 0 );
	}
	label$1066:;
	label$1065:;
	if( USES_LABEL$1 == 0 ) goto label$1068;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" goto", 6, 0 );
	}
	label$1068:;
	label$1067:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"( ", 3, 0 );
	FBSTRING ASMCODE$1;
	__builtin_memset( &ASMCODE$1, 0, 12 );
	int32 OPERANDINDEX$1;
	__builtin_memset( &OPERANDINDEX$1, 0, 4 );
	FBSTRING OUTPUTCONSTRAINTS$1;
	__builtin_memset( &OUTPUTCONSTRAINTS$1, 0, 12 );
	FBSTRING INPUTCONSTRAINTS$1;
	__builtin_memset( &INPUTCONSTRAINTS$1, 0, 12 );
	FBSTRING LABELLIST$1;
	__builtin_memset( &LABELLIST$1, 0, 12 );
	N$1 = ASMTOKENHEAD$1;
	label$1069:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$1070;
	{
		{
			$14AST_ASMTOKTYPE TMP$601$3;
			TMP$601$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$601$3 != 0 ) goto label$1072;
			label$1073:;
			{
				FBSTRING TMP$602$4;
				__builtin_memset( &TMP$602$4, 0, 12 );
				FBSTRING* vr$25 = fb_StrConcat( &TMP$602$4, (void*)&ASMCODE$1, -1, *(void**)((uint8*)N$1 + 4), 0 );
				fb_StrAssign( (void*)&ASMCODE$1, -1, (void*)vr$25, -1, 0 );
			}
			goto label$1071;
			label$1072:;
			if( TMP$601$3 != 1 ) goto label$1074;
			label$1075:;
			{
				if( *(int32*)((uint8*)&ENV$ + 132) != 0 ) goto label$1077;
				{
					int32 vr$27 = SECTIONINSIDEPROC(  );
					if( vr$27 == 0 ) goto label$1079;
					{
						{
							$12FB_SYMBCLASS TMP$603$7;
							TMP$603$7 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4);
							if( TMP$603$7 != 1 ) goto label$1081;
							label$1082:;
							{
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1, (void*)"%", 2, 0 );
								FBSTRING* vr$31 = fb_IntToStr( OPERANDINDEX$1 );
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1, (void*)vr$31, -1, 0 );
								OPERANDINDEX$1 = OPERANDINDEX$1 + 1;
								if( USES_LABEL$1 == 0 ) goto label$1084;
								{
									FBSTRING TMP$606$9;
									FBSTRING TMP$607$9;
									FBSTRING TMP$608$9;
									int32 vr$35 = fb_StrLen( (void*)&INPUTCONSTRAINTS$1, -1 );
									if( vr$35 <= 0 ) goto label$1086;
									{
										fb_StrConcatAssign( (void*)&INPUTCONSTRAINTS$1, -1, (void*)", ", 3, 0 );
									}
									label$1086:;
									label$1085:;
									uint8* vr$38 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
									__builtin_memset( &TMP$606$9, 0, 12 );
									FBSTRING* vr$41 = fb_StrConcat( &TMP$606$9, (void*)"\x22m\x22 (", 6, (void*)vr$38, 0 );
									__builtin_memset( &TMP$607$9, 0, 12 );
									FBSTRING* vr$44 = fb_StrConcat( &TMP$607$9, (void*)vr$41, -1, (void*)")", 2 );
									__builtin_memset( &TMP$608$9, 0, 12 );
									FBSTRING* vr$48 = fb_StrConcat( &TMP$608$9, (void*)&INPUTCONSTRAINTS$1, -1, (void*)vr$44, -1 );
									fb_StrAssign( (void*)&INPUTCONSTRAINTS$1, -1, (void*)vr$48, -1, 0 );
								}
								goto label$1083;
								label$1084:;
								{
									FBSTRING TMP$610$9;
									FBSTRING TMP$611$9;
									FBSTRING TMP$612$9;
									int32 vr$51 = fb_StrLen( (void*)&OUTPUTCONSTRAINTS$1, -1 );
									if( vr$51 <= 0 ) goto label$1088;
									{
										fb_StrConcatAssign( (void*)&OUTPUTCONSTRAINTS$1, -1, (void*)", ", 3, 0 );
									}
									label$1088:;
									label$1087:;
									uint8* vr$54 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
									__builtin_memset( &TMP$610$9, 0, 12 );
									FBSTRING* vr$57 = fb_StrConcat( &TMP$610$9, (void*)"\x22+m\x22 (", 7, (void*)vr$54, 0 );
									__builtin_memset( &TMP$611$9, 0, 12 );
									FBSTRING* vr$60 = fb_StrConcat( &TMP$611$9, (void*)vr$57, -1, (void*)")", 2 );
									__builtin_memset( &TMP$612$9, 0, 12 );
									FBSTRING* vr$64 = fb_StrConcat( &TMP$612$9, (void*)&OUTPUTCONSTRAINTS$1, -1, (void*)vr$60, -1 );
									fb_StrAssign( (void*)&OUTPUTCONSTRAINTS$1, -1, (void*)vr$64, -1, 0 );
								}
								label$1083:;
							}
							goto label$1080;
							label$1081:;
							if( TMP$603$7 != 7 ) goto label$1089;
							label$1090:;
							{
								int32 LABELNUM$8;
								struct $8FBSYMBOL* LABELSYM$8;
								LABELSYM$8 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 4);
								int32 SEENLABELINDEX$8;
								int32 vr$68 = HFINDLABELINSEENLIST( &SEENLABELLIST$1, LABELSYM$8 );
								SEENLABELINDEX$8 = vr$68;
								if( SEENLABELINDEX$8 == -1 ) goto label$1092;
								{
									LABELNUM$8 = SEENLABELINDEX$8 + LABELINDEXBASE$1;
								}
								goto label$1091;
								label$1092:;
								{
									FBSTRING TMP$613$9;
									LABELNUM$8 = LABELINDEX$1;
									LABELINDEX$1 = LABELINDEX$1 + 1;
									void* vr$72 = LISTNEWNODE( &SEENLABELLIST$1 );
									*(struct $8FBSYMBOL**)vr$72 = LABELSYM$8;
									int32 vr$74 = fb_StrLen( (void*)&LABELLIST$1, -1 );
									if( vr$74 <= 0 ) goto label$1094;
									{
										fb_StrConcatAssign( (void*)&LABELLIST$1, -1, (void*)", ", 3, 0 );
									}
									label$1094:;
									label$1093:;
									uint8* vr$76 = SYMBGETMANGLEDNAME( LABELSYM$8 );
									__builtin_memset( &TMP$613$9, 0, 12 );
									FBSTRING* vr$80 = fb_StrConcat( &TMP$613$9, (void*)&LABELLIST$1, -1, (void*)vr$76, 0 );
									fb_StrAssign( (void*)&LABELLIST$1, -1, (void*)vr$80, -1, 0 );
								}
								label$1091:;
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1, (void*)"%l", 3, 0 );
								FBSTRING* vr$83 = fb_IntToStr( LABELNUM$8 );
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1, (void*)vr$83, -1, 0 );
							}
							goto label$1080;
							label$1089:;
							{
								FBSTRING TMP$615$8;
								FBSTRING* vr$86 = HGETMANGLEDNAMEFORASM( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4), -1 );
								__builtin_memset( &TMP$615$8, 0, 12 );
								FBSTRING* vr$90 = fb_StrConcat( &TMP$615$8, (void*)&ASMCODE$1, -1, (void*)vr$86, -1 );
								fb_StrAssign( (void*)&ASMCODE$1, -1, (void*)vr$90, -1, 0 );
							}
							label$1095:;
							label$1080:;
						}
					}
					goto label$1078;
					label$1079:;
					{
						FBSTRING TMP$616$6;
						FBSTRING* vr$93 = HGETMANGLEDNAMEFORASM( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4), -1 );
						__builtin_memset( &TMP$616$6, 0, 12 );
						FBSTRING* vr$97 = fb_StrConcat( &TMP$616$6, (void*)&ASMCODE$1, -1, (void*)vr$93, -1 );
						fb_StrAssign( (void*)&ASMCODE$1, -1, (void*)vr$97, -1, 0 );
					}
					label$1078:;
				}
				goto label$1076;
				label$1077:;
				{
					FBSTRING TMP$617$5;
					uint8* vr$100 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
					__builtin_memset( &TMP$617$5, 0, 12 );
					FBSTRING* vr$104 = fb_StrConcat( &TMP$617$5, (void*)&ASMCODE$1, -1, (void*)vr$100, 0 );
					fb_StrAssign( (void*)&ASMCODE$1, -1, (void*)vr$104, -1, 0 );
				}
				label$1076:;
			}
			label$1074:;
			label$1071:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$1069;
	label$1070:;
	LISTEND( &SEENLABELLIST$1 );
	if( *(int32*)((uint8*)&ENV$ + 132) != 0 ) goto label$1097;
	{
		int32 vr$109 = fb_StrLen( (void*)&ASMCODE$1, -1 );
		HBUILDSTRLIT( &LN$1, (uint8*)*(uint8**)&ASMCODE$1, (int64)(vr$109 + 1) );
		int32 vr$113 = SECTIONINSIDEPROC(  );
		if( vr$113 == 0 ) goto label$1099;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" : ", 4, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&OUTPUTCONSTRAINTS$1, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" : ", 4, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&INPUTCONSTRAINTS$1, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" : \x22" "cc\x22, \x22memory\x22", 18, 0 );
			{
				int32 TMP$620$4;
				int32 vr$121 = FBGETCPUFAMILY(  );
				TMP$620$4 = vr$121;
				if( TMP$620$4 == 0 ) goto label$1102;
				label$1103:;
				if( TMP$620$4 != 1 ) goto label$1101;
				label$1102:;
				{
					int32 vr$122 = FBGETCPUFAMILY(  );
					if( vr$122 != 0 ) goto label$1105;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22" "eax\x22, \x22" "ebx\x22, \x22" "ecx\x22, \x22" "edx\x22, \x22" "edi\x22, \x22" "esi\x22", 43, 0 );
					}
					goto label$1104;
					label$1105:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22rax\x22, \x22rbx\x22, \x22rcx\x22, \x22rdx\x22, \x22rdi\x22, \x22rsi\x22", 43, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22r8\x22, \x22r9\x22, \x22r10\x22, \x22r11\x22, \x22r12\x22, \x22r13\x22, \x22r14\x22, \x22r15\x22", 55, 0 );
					}
					label$1104:;
					if( *(int32*)((uint8*)&ENV$ + 116) != 1 ) goto label$1107;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22mm0\x22, \x22mm1\x22, \x22mm2\x22, \x22mm3\x22, \x22mm4\x22, \x22mm5\x22, \x22mm6\x22, \x22mm7\x22", 57, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22xmm0\x22, \x22xmm1\x22, \x22xmm2\x22, \x22xmm3\x22, \x22xmm4\x22, \x22xmm5\x22, \x22xmm6\x22, \x22xmm7\x22", 65, 0 );
						int32 vr$128 = FBGETCPUFAMILY(  );
						if( vr$128 != 1 ) goto label$1109;
						{
							fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22xmm8\x22, \x22xmm9\x22, \x22xmm10\x22, \x22xmm11\x22, \x22xmm12\x22, \x22xmm13\x22, \x22xmm14\x22, \x22xmm15\x22", 71, 0 );
						}
						label$1109:;
						label$1108:;
					}
					label$1107:;
					label$1106:;
				}
				goto label$1100;
				label$1101:;
				if( TMP$620$4 == 2 ) goto label$1111;
				label$1112:;
				if( TMP$620$4 != 3 ) goto label$1110;
				label$1111:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22r0\x22, \x22r1\x22, \x22r2\x22, \x22r3\x22, \x22r4\x22, \x22r5\x22, \x22r6\x22", 43, 0 );
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22r8\x22, \x22r9\x22, \x22r10\x22, \x22r11\x22, \x22r12\x22, \x22r13\x22, \x22r14\x22, \x22r15\x22", 55, 0 );
					int32 vr$132 = FBGETCPUFAMILY(  );
					if( vr$132 != 3 ) goto label$1114;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22r16\x22, \x22r17\x22, \x22r18\x22, \x22r19\x22", 29, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22r20\x22, \x22r21\x22, \x22r22\x22, \x22r23\x22, \x22r24\x22, \x22r25\x22, \x22r26\x22, \x22r27\x22, \x22r28\x22", 64, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)", \x22r30\x22", 8, 0 );
					}
					label$1114:;
					label$1113:;
				}
				label$1110:;
				label$1100:;
			}
			if( USES_LABEL$1 == 0 ) goto label$1116;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" : ", 4, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&LABELLIST$1, -1, 0 );
			}
			label$1116:;
			label$1115:;
		}
		label$1099:;
		label$1098:;
	}
	goto label$1096;
	label$1097:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&ASMCODE$1, -1, 0 );
	}
	label$1096:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" );", 4, 0 );
	HWRITELINE( &LN$1, 0 );
	fb_StrDelete( (FBSTRING*)&LABELLIST$1 );
	fb_StrDelete( (FBSTRING*)&INPUTCONSTRAINTS$1 );
	fb_StrDelete( (FBSTRING*)&OUTPUTCONSTRAINTS$1 );
	fb_StrDelete( (FBSTRING*)&ASMCODE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1055:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$1117:;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 2652) = 0;
	label$1118:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$1119:;
	HEMITVARDECL( 0, SYM$1, (uint8*)*(uint8**)((uint8*)&CTX$ + 2640) );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"", 1, 0 );
	label$1120:;
}

static void HVARINISEPARATOR( void )
{
	label$1121:;
	if( *(int32*)((uint8*)&CTX$ + 2652) <= 0 ) goto label$1124;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)", ", 3, 0 );
	}
	label$1124:;
	label$1123:;
	label$1122:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	label$1125:;
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (-(DTYPE$1 == 1) & -(VALUE$1 != 0ll)) == 0 ) goto label$1128;
	{
		VALUE$1 = 1ll;
	}
	label$1128:;
	label$1127:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$5 = EXPRNEWIMMI( VALUE$1, DTYPE$1 );
	L$1 = vr$5;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$1130;
	{
		DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
	}
	label$1130:;
	label$1129:;
	struct $8EXPRNODE* vr$18 = EXPRNEWCAST( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), L$1 );
	L$1 = vr$18;
	FBSTRING* vr$19 = EXPRFLUSH( L$1, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)vr$19, -1, 0 );
	HVARINISEPARATOR(  );
	label$1126:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	label$1131:;
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$2 = EXPRNEWIMMF( VALUE$1, DTYPE$1 );
	L$1 = vr$2;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$1134;
	{
		DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
	}
	label$1134:;
	label$1133:;
	struct $8EXPRNODE* vr$15 = EXPRNEWCAST( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), L$1 );
	L$1 = vr$15;
	FBSTRING* vr$16 = EXPRFLUSH( L$1, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)vr$16, -1, 0 );
	HVARINISEPARATOR(  );
	label$1132:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$1135:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWOFFSET( RHS$1, OFS$1 );
	L$1 = vr$0;
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$1138;
	{
		DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
	}
	label$1138:;
	label$1137:;
	struct $8EXPRNODE* vr$15 = EXPRNEWCAST( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), L$1 );
	L$1 = vr$15;
	FBSTRING* vr$16 = EXPRFLUSH( L$1, 0 );
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)vr$16, -1, 0 );
	HVARINISEPARATOR(  );
	label$1136:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	int32 TMP$631$1;
	label$1139:;
	if( LITLENGTH$1 <= VARLENGTH$1 ) goto label$1142;
	{
		LITLENGTH$1 = VARLENGTH$1;
	}
	label$1142:;
	label$1141:;
	TMP$631$1 = 0;
	uint8* vr$2 = HUNESCAPE( LITERAL$1, &TMP$631$1 );
	HBUILDSTRLIT( (FBSTRING*)((uint8*)&CTX$ + 2640), vr$2, LITLENGTH$1 + 1ll );
	HVARINISEPARATOR(  );
	label$1140:;
}

static void _EMITVARINIWSTR( int64 VARLENGTH$1, uint32* LITERAL$1, int64 LITLENGTH$1 )
{
	int32 TMP$633$1;
	label$1143:;
	uint32 CH$1;
	int32 WCHARSIZE$1;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"{ ", 3, 0 );
	TMP$633$1 = 0;
	uint32* vr$2 = HUNESCAPEW( LITERAL$1, &TMP$633$1 );
	LITERAL$1 = vr$2;
	WCHARSIZE$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	if( LITLENGTH$1 <= VARLENGTH$1 ) goto label$1146;
	{
		LITLENGTH$1 = VARLENGTH$1;
	}
	label$1146:;
	label$1145:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$634$2;
		TMP$634$2 = (int32)(LITLENGTH$1 + -1ll);
		goto label$1147;
		label$1150:;
		{
			if( I$2 <= 0 ) goto label$1152;
			{
				fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)", ", 3, 0 );
			}
			label$1152:;
			label$1151:;
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"L'", 3, 0 );
			CH$1 = *(uint32*)((uint8*)LITERAL$1 + (I$2 << (2 & 31)));
			int32 vr$9 = HCHARNEEDSESCAPING( (int32)CH$1, 39 );
			if( vr$9 == 0 ) goto label$1154;
			{
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"\x5Cx", 3, 0 );
				FBSTRING* vr$12 = fb_HEXEx_i( CH$1, WCHARSIZE$1 << (1 & 31) );
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 2640), -1, (void*)vr$12, -1, 0 );
			}
			goto label$1153;
			label$1154:;
			{
				FBSTRING* vr$14 = fb_CHR( 1, (int32)CH$1 );
				fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)vr$14, -1, 0 );
			}
			label$1153:;
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"'", 2, 0 );
		}
		label$1148:;
		I$2 = I$2 + 1;
		label$1147:;
		if( I$2 <= TMP$634$2 ) goto label$1150;
		label$1149:;
	}
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)" }", 3, 0 );
	HVARINISEPARATOR(  );
	label$1144:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	label$1155:;
	label$1156:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	label$1157:;
	*(int32*)((uint8*)&CTX$ + 2652) = *(int32*)((uint8*)&CTX$ + 2652) + 1;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)"{ ", 3, 0 );
	label$1158:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$1159:;
	FBSTRING* vr$1 = fb_RIGHT( (FBSTRING*)((uint8*)&CTX$ + 2640), 2 );
	int32 vr$2 = fb_StrCompare( (void*)vr$1, -1, (void*)", ", 3 );
	if( vr$2 != 0 ) goto label$1162;
	{
		int32 vr$4 = fb_StrLen( (void*)((uint8*)&CTX$ + 2640), -1 );
		fb_LEFTSELF( (FBSTRING*)((uint8*)&CTX$ + 2640), vr$4 + -2 );
	}
	label$1162:;
	label$1161:;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2640), -1, (void*)" }", 3, 0 );
	*(int32*)((uint8*)&CTX$ + 2652) = *(int32*)((uint8*)&CTX$ + 2652) + -1;
	HVARINISEPARATOR(  );
	label$1160:;
}

static void _EMITFBCTINFBEGIN( void )
{
	FBSTRING TMP$637$1;
	label$1163:;
	__builtin_memset( &TMP$637$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$637$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$637$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$637$1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 2656), -1, (void*)"static const char ", 19, 0 );
	int32 vr$5 = FBGETOPTION( 3 );
	if( vr$5 != 9 ) goto label$1166;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2656), -1, (void*)"__attribute__((used, section(\x22__DATA,fbctinf\x22))) ", 50, 0 );
	}
	goto label$1165;
	label$1166:;
	{
		fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2656), -1, (void*)"__attribute__((used, section(\x22.fbctinf\x22))) ", 44, 0 );
	}
	label$1165:;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2656), -1, (void*)"__fbctinf[] = \x22", 16, 0 );
	label$1164:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$648$1;
	FBSTRING TMP$649$1;
	label$1167:;
	__builtin_memset( &TMP$648$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$648$1, (void*)S$1, 0, (void*)"\x5C" "0", 3 );
	__builtin_memset( &TMP$649$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$649$1, (void*)((uint8*)&CTX$ + 2656), -1, (void*)vr$2, -1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 2656), -1, (void*)vr$6, -1, 0 );
	label$1168:;
}

static void _EMITFBCTINFEND( void )
{
	label$1169:;
	FBSTRING* vr$1 = fb_RIGHT( (FBSTRING*)((uint8*)&CTX$ + 2656), 2 );
	int32 vr$2 = fb_StrCompare( (void*)vr$1, -1, (void*)"\x5C" "0", 3 );
	if( vr$2 != 0 ) goto label$1172;
	{
		int32 vr$4 = fb_StrLen( (void*)((uint8*)&CTX$ + 2656), -1 );
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)((uint8*)&CTX$ + 2656), vr$4 + -2 );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 2656), -1, (void*)vr$7, -1, 0 );
	}
	label$1172:;
	label$1171:;
	fb_StrConcatByref( (void*)((uint8*)&CTX$ + 2656), -1, (void*)"\x22;", 3, 0 );
	HWRITELINE( (FBSTRING*)((uint8*)&CTX$ + 2656), -1 );
	label$1170:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$651$1;
	FBSTRING TMP$665$1;
	FBSTRING TMP$666$1;
	label$1173:;
	HUPDATECURRENTFILENAME( *(uint8**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 24) );
	IRHLEMITPROCBEGIN(  );
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 12 );
	__builtin_memset( &TMP$651$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$651$1, -1, (void*)"", 1, 0 );
	HWRITELINE( &TMP$651$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$651$1 );
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$1176;
	{
		_EMITDBG( 113, PROC$1, *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16), (uint8*)0u );
	}
	label$1176:;
	label$1175:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) == 0 ) goto label$1178;
	{
		FBSTRING TMP$652$2;
		FBSTRING TMP$655$2;
		FBSTRING TMP$656$2;
		FBSTRING TMP$657$2;
		FBSTRING TMP$660$2;
		FBSTRING TMP$661$2;
		FBSTRING TMP$662$2;
		FBSTRING* vr$11 = HGETMANGLEDNAMEFORASM( PROC$1, -1 );
		fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$11, -1, 0 );
		__builtin_memset( &TMP$652$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$652$2, -1, (void*)"__asm__( \x22.text\x22 );", 20, 0 );
		HWRITELINE( &TMP$652$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$652$2 );
		__builtin_memset( &TMP$657$2, 0, 12 );
		__builtin_memset( &TMP$655$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$655$2, (void*)"__asm__( \x22.globl ", 18, (void*)&MANGLED$1, -1 );
		__builtin_memset( &TMP$656$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$656$2, (void*)vr$21, -1, (void*)"\x22 );", 5 );
		fb_StrAssign( (void*)&TMP$657$2, -1, (void*)vr$24, -1, 0 );
		HWRITELINE( &TMP$657$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$657$2 );
		__builtin_memset( &TMP$662$2, 0, 12 );
		__builtin_memset( &TMP$660$2, 0, 12 );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$660$2, (void*)"__asm__( \x22", 11, (void*)&MANGLED$1, -1 );
		__builtin_memset( &TMP$661$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$661$2, (void*)vr$32, -1, (void*)":\x22 );", 6 );
		fb_StrAssign( (void*)&TMP$662$2, -1, (void*)vr$35, -1, 0 );
		HWRITELINE( &TMP$662$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$662$2 );
		fb_StrDelete( (FBSTRING*)&MANGLED$1 );
		goto label$1174;
	}
	label$1178:;
	label$1177:;
	SECTIONBEGIN(  );
	int32 vr$40 = HNEEDALIAS( PROC$1 );
	if( vr$40 == 0 ) goto label$1180;
	{
		FBSTRING TMP$663$2;
		FBSTRING TMP$664$2;
		__builtin_memset( &TMP$664$2, 0, 12 );
		FBSTRING* vr$42 = HEMITPROCHEADER( PROC$1, 1 );
		__builtin_memset( &TMP$663$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$663$2, (void*)vr$42, -1, (void*)";", 2 );
		fb_StrAssign( (void*)&TMP$664$2, -1, (void*)vr$45, -1, 0 );
		HWRITELINE( &TMP$664$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$664$2 );
	}
	label$1180:;
	label$1179:;
	__builtin_memset( &TMP$665$1, 0, 12 );
	FBSTRING* vr$50 = HEMITPROCHEADER( PROC$1, 0 );
	fb_StrAssign( (void*)&TMP$665$1, -1, (void*)vr$50, -1, 0 );
	HWRITELINE( &TMP$665$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$665$1 );
	__builtin_memset( &TMP$666$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$666$1, -1, (void*)"{", 2, 0 );
	HWRITELINE( &TMP$666$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$666$1 );
	SECTIONINDENT(  );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$1174:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$674$1;
	label$1181:;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 12 );
	struct $13EXPRCACHENODE* CACHENODE$1;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) == 0 ) goto label$1184;
	{
		if( *(int32*)((uint8*)&ENV$ + 108) != 2 ) goto label$1186;
		{
			FBSTRING TMP$669$3;
			FBSTRING TMP$670$3;
			FBSTRING TMP$671$3;
			FBSTRING TMP$672$3;
			FBSTRING TMP$673$3;
			FBSTRING* vr$3 = HGETMANGLEDNAMEFORASM( PROC$1, -1 );
			fb_StrAssign( (void*)&MANGLED$1, -1, (void*)vr$3, -1, 0 );
			__builtin_memset( &TMP$673$3, 0, 12 );
			__builtin_memset( &TMP$669$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$669$3, (void*)"__asm__( \x22.size ", 17, (void*)&MANGLED$1, -1 );
			__builtin_memset( &TMP$670$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$670$3, (void*)vr$10, -1, (void*)", .-", 5 );
			__builtin_memset( &TMP$671$3, 0, 12 );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$671$3, (void*)vr$13, -1, (void*)&MANGLED$1, -1 );
			__builtin_memset( &TMP$672$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$672$3, (void*)vr$16, -1, (void*)"\x22 );", 5 );
			fb_StrAssign( (void*)&TMP$673$3, -1, (void*)vr$19, -1, 0 );
			HWRITELINE( &TMP$673$3, -1 );
			fb_StrDelete( (FBSTRING*)&TMP$673$3 );
		}
		label$1186:;
		label$1185:;
		fb_StrDelete( (FBSTRING*)&MANGLED$1 );
		goto label$1182;
	}
	label$1184:;
	label$1183:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$674$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$674$1, -1, (void*)"}", 2, 0 );
	HWRITELINE( &TMP$674$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$674$1 );
	SECTIONEND(  );
	label$1187:;
	{
		void* vr$29 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&CTX$ + 2724) );
		CACHENODE$1 = (struct $13EXPRCACHENODE*)vr$29;
		if( CACHENODE$1 != (struct $13EXPRCACHENODE*)0u ) goto label$1191;
		{
			goto label$1188;
		}
		label$1191:;
		label$1190:;
		EXPRFREETREE( *(struct $8EXPRNODE**)((uint8*)CACHENODE$1 + 4) );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 2724), (void*)CACHENODE$1 );
	}
	label$1189:;
	goto label$1187;
	label$1188:;
	IRHLEMITPROCEND(  );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$1182:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$675$1;
	label$1192:;
	SECTIONBEGIN(  );
	__builtin_memset( &TMP$675$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$675$1, -1, (void*)"{", 2, 0 );
	HWRITELINE( &TMP$675$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$675$1 );
	SECTIONINDENT(  );
	label$1193:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$676$1;
	label$1194:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$676$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$676$1, -1, (void*)"}", 2, 0 );
	HWRITELINE( &TMP$676$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$676$1 );
	SECTIONEND(  );
	label$1195:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$1197:;
	_ZN8IRHLCCTXC1Ev( &CTX$ );
	label$1198:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$1200:;
	_ZN8IRHLCCTXD1Ev( &CTX$ );
	label$1201:;
}
