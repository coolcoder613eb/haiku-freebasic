' TEST_MODE : COMPILE_ONLY_FAIL

type UDT
	i as integer
end type

with cptr(UDT ptr, 0)
end with
