#include "fbcunit.bi"
#include once "uzstring-fixed.bi"
#include once "chk-zstring.bi"

#define ustring UZSTRING_FIXED

SUITE( fbc_tests.udt_zstring_.instr_ )

	'' INSTR( zstring, zstring )
	#macro check_0( result, text, pattern )
		scope
			dim st as zstring * 50 = text
			dim ut as ustring = st
			dim sp as zstring * 50 = pattern
			dim up as ustring = sp
			
			CU_ASSERT_EQUAL( result, instr( st, sp ) )
			CU_ASSERT_EQUAL( result, instr( st, up ) )
			CU_ASSERT_EQUAL( result, instr( ut, sp ) )
			CU_ASSERT_EQUAL( result, instr( ut, up ) )
		end scope
	#endmacro

		'' INSTR( index, zstring, zstring )
	#macro check_x( result, index, text, pattern )
		scope
			dim st as zstring * 50 = text
			dim ut as ustring = st
			dim sp as zstring * 50 = pattern
			dim up as ustring = sp
			
			CU_ASSERT_EQUAL( result, instr( index, st, sp ) )
			CU_ASSERT_EQUAL( result, instr( index, st, up ) )
			CU_ASSERT_EQUAL( result, instr( index, ut, sp ) )
			CU_ASSERT_EQUAL( result, instr( index, ut, up ) )
		end scope
	#endmacro

		'' INSTR( zstring, zstring )
	#macro check_0_any( result, text, pattern )
		scope
			dim st as zstring * 50 = text
			dim ut as ustring = st
			dim sp as zstring * 50 = pattern
			dim up as ustring = sp
			
			CU_ASSERT_EQUAL( result, instr( st, any sp ) )
			CU_ASSERT_EQUAL( result, instr( st, any up ) )
			CU_ASSERT_EQUAL( result, instr( ut, any sp ) )
			CU_ASSERT_EQUAL( result, instr( ut, any up ) )
		end scope
	#endmacro

		'' INSTR( index, zstring, zstring )
	#macro check_x_any( result, index, text, pattern )
		scope
			dim st as zstring * 50 = text
			dim ut as ustring = st
			dim sp as zstring * 50 = pattern
			dim up as ustring = sp
			
			CU_ASSERT_EQUAL( result, instr( index, st, any sp ) )
			CU_ASSERT_EQUAL( result, instr( index, st, any up ) )
			CU_ASSERT_EQUAL( result, instr( index, ut, any sp ) )
			CU_ASSERT_EQUAL( result, instr( index, ut, any up ) )
		end scope
	#endmacro

	TEST( instr_0 )
		check_0( 0, !"", !"" )
		check_0( 0, !"x", !"" )
		check_0( 0, !"", !"x" )
		check_0( 1, !"x", !"x" )
		check_0( 2, !"yx", !"x" )

		check_0( 1, !"13579", !"13" )
		check_0( 2, !"13579", !"35" )
		check_0( 3, !"13579", !"57" )
		check_0( 4, !"13579", !"79" )
	END_TEST

	TEST( instr_x )
		check_x( 0, -1, !"", !"" )
		check_x( 0,  0, !"", !"" )
		check_x( 0,  1, !"", !"" )
		check_x( 0,  2, !"", !"" )

		check_x( 0, -1, !"x", !"" )
		check_x( 0,  0, !"x", !"" )
		check_x( 0,  1, !"x", !"" )
		check_x( 0,  2, !"x", !"" )

		check_x( 0, -1, !"", !"x" )
		check_x( 0,  0, !"", !"x" )
		check_x( 0,  1, !"", !"x" )
		check_x( 0,  2, !"", !"x" )

		check_x( 0, -1, !"x", !"x" )
		check_x( 0,  0, !"x", !"x" )
		check_x( 1,  1, !"x", !"x" )
		check_x( 0,  2, !"x", !"x" )
		check_x( 0,  3, !"x", !"x" )

		check_x( 0, -1, !"xy", !"x" )
		check_x( 0,  0, !"xy", !"x" )
		check_x( 1,  1, !"xy", !"x" )
		check_x( 0,  2, !"xy", !"x" )
		check_x( 0,  3, !"xy", !"x" )

		check_x( 0, -1, !"yx", !"x" )
		check_x( 0,  0, !"yx", !"x" )
		check_x( 2,  1, !"yx", !"x" )
		check_x( 2,  2, !"yx", !"x" )
		check_x( 0,  3, !"yx", !"x" )

		check_x( 0,  0, !"13579", !"13" )
		check_x( 1,  1, !"13579", !"13" )
		check_x( 0,  2, !"13579", !"13" )

		check_x( 2,  1, !"13579", !"35" )
		check_x( 2,  2, !"13579", !"35" )
		check_x( 0,  3, !"13579", !"35" )

		check_x( 3,  2, !"13579", !"57" )
		check_x( 3,  3, !"13579", !"57" )
		check_x( 0,  4, !"13579", !"57" )

		check_x( 4,  3, !"13579", !"79" )
		check_x( 4,  4, !"13579", !"79" )
		check_x( 0,  5, !"13579", !"79" )
	END_TEST

	TEST( instr_0_any )
		check_0_any( 0, !"", !"" )
		check_0_any( 0, !"x", !"" )
		check_0_any( 0, !"", !"x" )
		check_0_any( 1, !"x", !"x" )
		check_0_any( 1, !"xy", !"x" )
		check_0_any( 2, !"yx", !"x" )

		check_0_any( 1, !"13579", !"13" )
		check_0_any( 2, !"13579", !"35" )
		check_0_any( 3, !"13579", !"57" )
		check_0_any( 4, !"13579", !"79" )
	END_TEST

	TEST( instr_x_any )
		check_x_any( 0, -1, !"", !"" )
		check_x_any( 0,  0, !"", !"" )
		check_x_any( 0,  1, !"", !"" )
		check_x_any( 0,  2, !"", !"" )

		check_x_any( 0, -1, !"x", !"" )
		check_x_any( 0,  0, !"x", !"" )
		check_x_any( 0,  1, !"x", !"" )
		check_x_any( 0,  2, !"x", !"" )

		check_x_any( 0, -1, !"", !"x" )
		check_x_any( 0,  0, !"", !"x" )
		check_x_any( 0,  1, !"", !"x" )
		check_x_any( 0,  2, !"", !"x" )

		check_x_any( 0, -1, !"x", !"x" )
		check_x_any( 0,  0, !"x", !"x" )
		check_x_any( 1,  1, !"x", !"x" )
		check_x_any( 0,  2, !"x", !"x" )

		check_x_any( 0, -1, !"xy", !"x" )
		check_x_any( 0,  0, !"xy", !"x" )
		check_x_any( 1,  1, !"xy", !"x" )
		check_x_any( 0,  2, !"xy", !"x" )
		check_x_any( 0,  3, !"xy", !"x" )

		check_x_any( 0, -1, !"yx", !"x" )
		check_x_any( 0,  0, !"yx", !"x" )
		check_x_any( 2,  1, !"yx", !"x" )
		check_x_any( 2,  2, !"yx", !"x" )
		check_x_any( 0,  3, !"yx", !"x" )

		check_x_any( 0,  0, !"13579", !"13" )
		check_x_any( 1,  1, !"13579", !"13" )
		check_x_any( 2,  2, !"13579", !"13" )
		check_x_any( 0,  3, !"13579", !"13" )

		check_x_any( 2,  1, !"13579", !"35" )
		check_x_any( 2,  2, !"13579", !"35" )
		check_x_any( 3,  3, !"13579", !"35" )
		check_x_any( 0,  4, !"13579", !"35" )

		check_x_any( 3,  2, !"13579", !"57" )
		check_x_any( 3,  3, !"13579", !"57" )
		check_x_any( 4,  4, !"13579", !"57" )
		check_x_any( 0,  5, !"13579", !"57" )

		check_x_any( 4,  3, !"13579", !"79" )
		check_x_any( 4,  4, !"13579", !"79" )
		check_x_any( 5,  5, !"13579", !"79" )
		check_x_any( 0,  6, !"13579", !"79" )
	END_TEST

END_SUITE
