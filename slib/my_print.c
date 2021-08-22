/* See LICENSE file for copyright and license details. */

#include <stdio.h>

#include "my_print.h"

void
my_print(const char *str)
{
	/* This version isn't ever going to be called by shadowlib */

	printf("%s (from the stat lib version)\n", str);
}
