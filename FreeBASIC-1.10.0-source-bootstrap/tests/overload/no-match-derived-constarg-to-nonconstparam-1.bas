' TEST_MODE : COMPILE_ONLY_FAIL

type T1 extends object
end type

type T2 extends T1
end type

type T3 extends T2
end type

function a overload( byref x as T1 ) as integer : function = &h01 : end function

dim cx1 as const T1 = T1( )
a( cx1 )
