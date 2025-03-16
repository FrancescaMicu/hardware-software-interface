// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mirror.h"

void mirror(char *s)
{
	/* TODO */
	int lung = strlen(s);
	for ( int i = 0; i < lung / 2; i++ ) {
		char aux = *(s+i);
		*(s+i) = *(s+ lung - i -1);
		*(s+ lung - i -1)= aux;
	}
	(void) s;
}
