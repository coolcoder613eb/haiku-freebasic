' TEST_MODE : COMPILE_ONLY_FAIL

type UDT
	as integer i
	declare constructor( )
	private:
	declare constructor( byref as UDT )
end type

constructor UDT( )
end constructor

constructor UDT( byref rhs as UDT )
end constructor

dim x1 as UDT
dim as UDT ptr p = new UDT( x1 )
