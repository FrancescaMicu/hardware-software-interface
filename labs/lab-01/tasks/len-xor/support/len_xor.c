// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "len_xor.h"


int my_strlen(const char *str)
{
	/* TODO */

	/**
	 * The cast to (void) is used to avoid a compiler warning. Remove the line
	 * below to find out what the warning is.
	 *
	 * Remove this cast when implementing the function.
	 */
	 int lung = 0;
	while ( (*str) != NULL ) {
		lung++;
		str++;
	}
	
	return lung;
}

void equality_check(const char *str)
{
	/* TODO */
	int lung = my_strlen(str);
	for ( int i = 0; i < lung; i++ ) {
		if (!(*(str + i) ^ *(str + ((i + (1 << i)) % lung))))
			printf("Address of %c: %p\n", *(str + i), str + i);
	}
}
