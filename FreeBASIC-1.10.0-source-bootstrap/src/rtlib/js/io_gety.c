#include "../fb.h"
#include "fb_private_console.h"

int fb_ConsoleGetY( void )
{
	int res = EM_ASM_INT(
        return __fb_rtlib.console.pos_get();
    ,NULL);

    return 1+((res >> 8) & 0xFF);
}
