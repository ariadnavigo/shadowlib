/* See LICENSE file for copyright and license details. */

#include <stdio.h>

#include "my_print.h"
#include "slib_print.h"

void
slib_print(const char *str)
{
	printf("This is slib_print():\n");
	my_print(str);
}
