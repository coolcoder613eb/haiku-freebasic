	CU_ASSERT( bin( b     ) = "10000000" )
	CU_ASSERT( bin( b,  1 ) = "0" )
	CU_ASSERT( bin( b,  8 ) = "10000000" )
	CU_ASSERT( bin( b, 16 ) = "0000000010000000" )
	CU_ASSERT( bin( b, 32 ) = "00000000000000000000000010000000" )
	CU_ASSERT( bin( b, 64 ) = "0000000000000000000000000000000000000000000000000000000010000000" )
	CU_ASSERT( bin( s     ) = "1000000000000000" )
	CU_ASSERT( bin( s,  1 ) = "0" )
	CU_ASSERT( bin( s, 16 ) = "1000000000000000" )
	CU_ASSERT( bin( s, 32 ) = "00000000000000001000000000000000" )
	CU_ASSERT( bin( s, 64 ) = "0000000000000000000000000000000000000000000000001000000000000000" )
	CU_ASSERT( bin( l     ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( l,  1 ) = "0" )
	CU_ASSERT( bin( l, 32 ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( l, 64 ) = "0000000000000000000000000000000010000000000000000000000000000000" )
	CU_ASSERT( bin( ll     ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( ll,  1 ) = "0" )
	CU_ASSERT( bin( ll, 64 ) = "1000000000000000000000000000000000000000000000000000000000000000" )
#ifdef __FB_64BIT__
	CU_ASSERT( bin( i     ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( i,  1 ) = "0" )
	CU_ASSERT( bin( i, 64 ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( p     ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( p,  1 ) = "0" )
	CU_ASSERT( bin( p, 64 ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( pt     ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( pt,  1 ) = "0" )
	CU_ASSERT( bin( pt, 64 ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( pconst     ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( pconst,  1 ) = "0" )
	CU_ASSERT( bin( pconst, 64 ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( pconstt     ) = "1000000000000000000000000000000000000000000000000000000000000000" )
	CU_ASSERT( bin( pconstt,  1 ) = "0" )
	CU_ASSERT( bin( pconstt, 64 ) = "1000000000000000000000000000000000000000000000000000000000000000" )
#else
	CU_ASSERT( bin( i     ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( i,  1 ) = "0" )
	CU_ASSERT( bin( i, 32 ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( i, 64 ) = "0000000000000000000000000000000010000000000000000000000000000000" )
	CU_ASSERT( bin( p     ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( p,  1 ) = "0" )
	CU_ASSERT( bin( p, 32 ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( p, 64 ) = "0000000000000000000000000000000010000000000000000000000000000000" )
	CU_ASSERT( bin( pt     ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( pt,  1 ) = "0" )
	CU_ASSERT( bin( pt, 32 ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( pt, 64 ) = "0000000000000000000000000000000010000000000000000000000000000000" )
	CU_ASSERT( bin( pconst     ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( pconst,  1 ) = "0" )
	CU_ASSERT( bin( pconst, 32 ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( pconst, 64 ) = "0000000000000000000000000000000010000000000000000000000000000000" )
	CU_ASSERT( bin( pconstt     ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( pconstt,  1 ) = "0" )
	CU_ASSERT( bin( pconstt, 32 ) = "10000000000000000000000000000000" )
	CU_ASSERT( bin( pconstt, 64 ) = "0000000000000000000000000000000010000000000000000000000000000000" )
#endif

	CU_ASSERT( bin( &b10 ) = "10" )
	CU_ASSERT( bin( &b11011 ) = "11011" )
	CU_ASSERT( bin( &b1010 ) = "1010" )
	CU_ASSERT( bin( &b11110000 ) = "11110000" )
	CU_ASSERT( bin( 255 ) = "11111111" )

	CU_ASSERT( hex( b     ) = "80" )
	CU_ASSERT( hex( b,  1 ) = "0" )
	CU_ASSERT( hex( b,  2 ) = "80" )
	CU_ASSERT( hex( b,  4 ) = "0080" )
	CU_ASSERT( hex( b,  8 ) = "00000080" )
	CU_ASSERT( hex( b, 16 ) = "0000000000000080" )
	CU_ASSERT( hex( s     ) = "8000" )
	CU_ASSERT( hex( s,  1 ) = "0" )
	CU_ASSERT( hex( s,  4 ) = "8000" )
	CU_ASSERT( hex( s,  8 ) = "00008000" )
	CU_ASSERT( hex( s, 16 ) = "0000000000008000" )
	CU_ASSERT( hex( l     ) = "80000000" )
	CU_ASSERT( hex( l,  1 ) = "0" )
	CU_ASSERT( hex( l,  8 ) = "80000000" )
	CU_ASSERT( hex( l, 16 ) = "0000000080000000" )
	CU_ASSERT( hex( ll     ) = "8000000000000000" )
	CU_ASSERT( hex( ll,  1 ) = "0" )
	CU_ASSERT( hex( ll, 16 ) = "8000000000000000" )
#ifdef __FB_64BIT__
	CU_ASSERT( hex( i     ) = "8000000000000000" )
	CU_ASSERT( hex( i,  1 ) = "0" )
	CU_ASSERT( hex( i, 16 ) = "8000000000000000" )
	CU_ASSERT( hex( p     ) = "8000000000000000" )
	CU_ASSERT( hex( p,  1 ) = "0" )
	CU_ASSERT( hex( p, 16 ) = "8000000000000000" )
	CU_ASSERT( hex( pt     ) = "8000000000000000" )
	CU_ASSERT( hex( pt,  1 ) = "0" )
	CU_ASSERT( hex( pt, 16 ) = "8000000000000000" )
	CU_ASSERT( hex( pconst     ) = "8000000000000000" )
	CU_ASSERT( hex( pconst,  1 ) = "0" )
	CU_ASSERT( hex( pconst, 16 ) = "8000000000000000" )
	CU_ASSERT( hex( pconstt     ) = "8000000000000000" )
	CU_ASSERT( hex( pconstt,  1 ) = "0" )
	CU_ASSERT( hex( pconstt, 16 ) = "8000000000000000" )
#else
	CU_ASSERT( hex( i     ) = "80000000" )
	CU_ASSERT( hex( i,  1 ) = "0" )
	CU_ASSERT( hex( i,  8 ) = "80000000" )
	CU_ASSERT( hex( i, 16 ) = "0000000080000000" )
	CU_ASSERT( hex( p     ) = "80000000" )
	CU_ASSERT( hex( p,  1 ) = "0" )
	CU_ASSERT( hex( p,  8 ) = "80000000" )
	CU_ASSERT( hex( p, 16 ) = "0000000080000000" )
	CU_ASSERT( hex( pt    ) = "80000000" )
	CU_ASSERT( hex( pt, 1 ) = "0" )
	CU_ASSERT( hex( pt, 8 ) = "80000000" )
	CU_ASSERT( hex( pt, 16 ) = "0000000080000000" )
	CU_ASSERT( hex( pconst     ) = "80000000" )
	CU_ASSERT( hex( pconst,  1 ) = "0" )
	CU_ASSERT( hex( pconst,  8 ) = "80000000" )
	CU_ASSERT( hex( pconst, 16 ) = "0000000080000000" )
	CU_ASSERT( hex( pconstt    ) = "80000000" )
	CU_ASSERT( hex( pconstt, 1 ) = "0" )
	CU_ASSERT( hex( pconstt, 8 ) = "80000000" )
	CU_ASSERT( hex( pconstt, 16 ) = "0000000080000000" )
#endif

	CU_ASSERT( hex( &h10 ) = "10" )
	CU_ASSERT( hex( &h11110011 ) = "11110011" )
	CU_ASSERT( hex( &hAA00BB00 ) = "AA00BB00" )
	CU_ASSERT( hex( &h38333733 ) = "38333733" )
	CU_ASSERT( hex( &hABCDEF ) = "ABCDEF" )
	CU_ASSERT( hex( 255 ) = "FF" )

	CU_ASSERT( oct( b     ) = "200" )
	CU_ASSERT( oct( b,  1 ) = "0" )
	CU_ASSERT( oct( b,  3 ) = "200" )
	CU_ASSERT( oct( b,  6 ) = "000200" )
	CU_ASSERT( oct( b, 11 ) = "00000000200" )
	CU_ASSERT( oct( b, 22 ) = "0000000000000000000200" )
	CU_ASSERT( oct( s     ) = "100000" )
	CU_ASSERT( oct( s,  1 ) = "0" )
	CU_ASSERT( oct( s,  6 ) = "100000" )
	CU_ASSERT( oct( s, 11 ) = "00000100000" )
	CU_ASSERT( oct( s, 22 ) = "0000000000000000100000" )
	CU_ASSERT( oct( l     ) = "20000000000" )
	CU_ASSERT( oct( l,  1 ) = "0" )
	CU_ASSERT( oct( l, 11 ) = "20000000000" )
	CU_ASSERT( oct( l, 22 ) = "0000000000020000000000" )
	CU_ASSERT( oct( ll     ) = "1000000000000000000000" )
	CU_ASSERT( oct( ll,  1 ) = "0" )
	CU_ASSERT( oct( ll, 22 ) = "1000000000000000000000" )
#ifdef __FB_64BIT__
	CU_ASSERT( oct( i     ) = "1000000000000000000000" )
	CU_ASSERT( oct( i,  1 ) = "0" )
	CU_ASSERT( oct( i, 22 ) = "1000000000000000000000" )
	CU_ASSERT( oct( p     ) = "1000000000000000000000" )
	CU_ASSERT( oct( p,  1 ) = "0" )
	CU_ASSERT( oct( p, 22 ) = "1000000000000000000000" )
	CU_ASSERT( oct( pt     ) = "1000000000000000000000" )
	CU_ASSERT( oct( pt,  1 ) = "0" )
	CU_ASSERT( oct( pt, 22 ) = "1000000000000000000000" )
	CU_ASSERT( oct( pconst     ) = "1000000000000000000000" )
	CU_ASSERT( oct( pconst,  1 ) = "0" )
	CU_ASSERT( oct( pconst, 22 ) = "1000000000000000000000" )
	CU_ASSERT( oct( pconstt     ) = "1000000000000000000000" )
	CU_ASSERT( oct( pconstt,  1 ) = "0" )
	CU_ASSERT( oct( pconstt, 22 ) = "1000000000000000000000" )
#else
	CU_ASSERT( oct( i     ) = "20000000000" )
	CU_ASSERT( oct( i,  1 ) = "0" )
	CU_ASSERT( oct( i, 11 ) = "20000000000" )
	CU_ASSERT( oct( i, 22 ) = "0000000000020000000000" )
	CU_ASSERT( oct( p     ) = "20000000000" )
	CU_ASSERT( oct( p,  1 ) = "0" )
	CU_ASSERT( oct( p, 11 ) = "20000000000" )
	CU_ASSERT( oct( p, 22 ) = "0000000000020000000000" )
	CU_ASSERT( oct( pt     ) = "20000000000" )
	CU_ASSERT( oct( pt,  1 ) = "0" )
	CU_ASSERT( oct( pt, 11 ) = "20000000000" )
	CU_ASSERT( oct( pt, 22 ) = "0000000000020000000000" )
	CU_ASSERT( oct( pconst     ) = "20000000000" )
	CU_ASSERT( oct( pconst,  1 ) = "0" )
	CU_ASSERT( oct( pconst, 11 ) = "20000000000" )
	CU_ASSERT( oct( pconst, 22 ) = "0000000000020000000000" )
	CU_ASSERT( oct( pconstt     ) = "20000000000" )
	CU_ASSERT( oct( pconstt,  1 ) = "0" )
	CU_ASSERT( oct( pconstt, 11 ) = "20000000000" )
	CU_ASSERT( oct( pconstt, 22 ) = "0000000000020000000000" )
#endif

	CU_ASSERT( oct( &o10 ) = "10" )
	CU_ASSERT( oct( &o11110000 ) = "11110000" )
	CU_ASSERT( oct( &o77773333 ) = "77773333" )
	CU_ASSERT( oct( 255 ) = "377" )

	''
	'' wstring versions
	''

	CU_ASSERT( wbin( b     ) = wstr( "10000000" ) )
	CU_ASSERT( wbin( b,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( b,  8 ) = wstr( "10000000" ) )
	CU_ASSERT( wbin( b, 16 ) = wstr( "0000000010000000" ) )
	CU_ASSERT( wbin( b, 32 ) = wstr( "00000000000000000000000010000000" ) )
	CU_ASSERT( wbin( b, 64 ) = wstr( "0000000000000000000000000000000000000000000000000000000010000000" ) )
	CU_ASSERT( wbin( s     ) = wstr( "1000000000000000" ) )
	CU_ASSERT( wbin( s,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( s, 16 ) = wstr( "1000000000000000" ) )
	CU_ASSERT( wbin( s, 32 ) = wstr( "00000000000000001000000000000000" ) )
	CU_ASSERT( wbin( s, 64 ) = wstr( "0000000000000000000000000000000000000000000000001000000000000000" ) )
	CU_ASSERT( wbin( l     ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( l,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( l, 32 ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( l, 64 ) = wstr( "0000000000000000000000000000000010000000000000000000000000000000" ) )
	CU_ASSERT( wbin( ll     ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( ll,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( ll, 64 ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
#ifdef __FB_64BIT__
	CU_ASSERT( wbin( i     ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( i,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( i, 64 ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( p     ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( p,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( p, 64 ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pt     ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pt,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( pt, 64 ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconst     ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconst,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( pconst, 64 ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconstt     ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconstt,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( pconstt, 64 ) = wstr( "1000000000000000000000000000000000000000000000000000000000000000" ) )
#else
	CU_ASSERT( wbin( i     ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( i,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( i, 32 ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( i, 64 ) = wstr( "0000000000000000000000000000000010000000000000000000000000000000" ) )
	CU_ASSERT( wbin( p     ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( p,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( p, 32 ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( p, 64 ) = wstr( "0000000000000000000000000000000010000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pt     ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pt,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( pt, 32 ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pt, 64 ) = wstr( "0000000000000000000000000000000010000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconst     ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconst,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( pconst, 32 ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconst, 64 ) = wstr( "0000000000000000000000000000000010000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconstt     ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconstt,  1 ) = wstr( "0" ) )
	CU_ASSERT( wbin( pconstt, 32 ) = wstr( "10000000000000000000000000000000" ) )
	CU_ASSERT( wbin( pconstt, 64 ) = wstr( "0000000000000000000000000000000010000000000000000000000000000000" ) )
#endif

	CU_ASSERT( wbin( &b10 ) = wstr( "10" ) )
	CU_ASSERT( wbin( &b11011 ) = wstr( "11011" ) )
	CU_ASSERT( wbin( &b1010 ) = wstr( "1010" ) )
	CU_ASSERT( wbin( &b11110000 ) = wstr( "11110000" ) )
	CU_ASSERT( wbin( 255 ) = wstr( "11111111" ) )

	CU_ASSERT( whex( b     ) = wstr( "80" ) )
	CU_ASSERT( whex( b,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( b,  2 ) = wstr( "80" ) )
	CU_ASSERT( whex( b,  4 ) = wstr( "0080" ) )
	CU_ASSERT( whex( b,  8 ) = wstr( "00000080" ) )
	CU_ASSERT( whex( b, 16 ) = wstr( "0000000000000080" ) )
	CU_ASSERT( whex( s     ) = wstr( "8000" ) )
	CU_ASSERT( whex( s,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( s,  4 ) = wstr( "8000" ) )
	CU_ASSERT( whex( s,  8 ) = wstr( "00008000" ) )
	CU_ASSERT( whex( s, 16 ) = wstr( "0000000000008000" ) )
	CU_ASSERT( whex( l     ) = wstr( "80000000" ) )
	CU_ASSERT( whex( l,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( l,  8 ) = wstr( "80000000" ) )
	CU_ASSERT( whex( l, 16 ) = wstr( "0000000080000000" ) )
	CU_ASSERT( whex( ll     ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( ll,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( ll, 16 ) = wstr( "8000000000000000" ) )
#ifdef __FB_64BIT__
	CU_ASSERT( whex( i     ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( i,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( i, 16 ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( p     ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( p,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( p, 16 ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( pt     ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( pt,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( pt, 16 ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( pconst     ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( pconst,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( pconst, 16 ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( pconstt     ) = wstr( "8000000000000000" ) )
	CU_ASSERT( whex( pconstt,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( pconstt, 16 ) = wstr( "8000000000000000" ) )
#else
	CU_ASSERT( whex( i     ) = wstr( "80000000" ) )
	CU_ASSERT( whex( i,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( i,  8 ) = wstr( "80000000" ) )
	CU_ASSERT( whex( i, 16 ) = wstr( "0000000080000000" ) )
	CU_ASSERT( whex( p     ) = wstr( "80000000" ) )
	CU_ASSERT( whex( p,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( p,  8 ) = wstr( "80000000" ) )
	CU_ASSERT( whex( p, 16 ) = wstr( "0000000080000000" ) )
	CU_ASSERT( whex( pt    ) = wstr( "80000000" ) )
	CU_ASSERT( whex( pt, 1 ) = wstr( "0" ) )
	CU_ASSERT( whex( pt, 8 ) = wstr( "80000000" ) )
	CU_ASSERT( whex( pt, 16 ) = wstr( "0000000080000000" ) )
	CU_ASSERT( whex( pconst     ) = wstr( "80000000" ) )
	CU_ASSERT( whex( pconst,  1 ) = wstr( "0" ) )
	CU_ASSERT( whex( pconst,  8 ) = wstr( "80000000" ) )
	CU_ASSERT( whex( pconst, 16 ) = wstr( "0000000080000000" ) )
	CU_ASSERT( whex( pconstt    ) = wstr( "80000000" ) )
	CU_ASSERT( whex( pconstt, 1 ) = wstr( "0" ) )
	CU_ASSERT( whex( pconstt, 8 ) = wstr( "80000000" ) )
	CU_ASSERT( whex( pconstt, 16 ) = wstr( "0000000080000000" ) )
#endif

	CU_ASSERT( whex( &h10 ) = wstr( "10" ) )
	CU_ASSERT( whex( &h11110011 ) = wstr( "11110011" ) )
	CU_ASSERT( whex( &hAA00BB00 ) = wstr( "AA00BB00" ) )
	CU_ASSERT( whex( &h38333733 ) = wstr( "38333733" ) )
	CU_ASSERT( whex( &hABCDEF ) = wstr( "ABCDEF" ) )
	CU_ASSERT( whex( 255 ) = wstr( "FF" ) )

	CU_ASSERT( woct( b     ) = wstr( "200" ) )
	CU_ASSERT( woct( b,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( b,  3 ) = wstr( "200" ) )
	CU_ASSERT( woct( b,  6 ) = wstr( "000200" ) )
	CU_ASSERT( woct( b, 11 ) = wstr( "00000000200" ) )
	CU_ASSERT( woct( b, 22 ) = wstr( "0000000000000000000200" ) )
	CU_ASSERT( woct( s     ) = wstr( "100000" ) )
	CU_ASSERT( woct( s,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( s,  6 ) = wstr( "100000" ) )
	CU_ASSERT( woct( s, 11 ) = wstr( "00000100000" ) )
	CU_ASSERT( woct( s, 22 ) = wstr( "0000000000000000100000" ) )
	CU_ASSERT( woct( l     ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( l,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( l, 11 ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( l, 22 ) = wstr( "0000000000020000000000" ) )
	CU_ASSERT( woct( ll     ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( ll,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( ll, 22 ) = wstr( "1000000000000000000000" ) )
#ifdef __FB_64BIT__
	CU_ASSERT( woct( i     ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( i,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( i, 22 ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( p     ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( p,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( p, 22 ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( pt     ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( pt,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( pt, 22 ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( pconst     ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( pconst,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( pconst, 22 ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( pconstt     ) = wstr( "1000000000000000000000" ) )
	CU_ASSERT( woct( pconstt,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( pconstt, 22 ) = wstr( "1000000000000000000000" ) )
#else
	CU_ASSERT( woct( i     ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( i,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( i, 11 ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( i, 22 ) = wstr( "0000000000020000000000" ) )
	CU_ASSERT( woct( p     ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( p,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( p, 11 ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( p, 22 ) = wstr( "0000000000020000000000" ) )
	CU_ASSERT( woct( pt     ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( pt,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( pt, 11 ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( pt, 22 ) = wstr( "0000000000020000000000" ) )
	CU_ASSERT( woct( pconst     ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( pconst,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( pconst, 11 ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( pconst, 22 ) = wstr( "0000000000020000000000" ) )
	CU_ASSERT( woct( pconstt     ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( pconstt,  1 ) = wstr( "0" ) )
	CU_ASSERT( woct( pconstt, 11 ) = wstr( "20000000000" ) )
	CU_ASSERT( woct( pconstt, 22 ) = wstr( "0000000000020000000000" ) )
#endif

	CU_ASSERT( woct( &o10 ) = wstr( "10" ) )
	CU_ASSERT( woct( &o11110000 ) = wstr( "11110000" ) )
	CU_ASSERT( woct( &o77773333 ) = wstr( "77773333" ) )
	CU_ASSERT( woct( 255 ) = wstr( "377" ) )
