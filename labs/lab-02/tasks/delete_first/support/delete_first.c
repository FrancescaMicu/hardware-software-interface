// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "delete_first.h"

char *delete_first(char *s, char *pattern)
{
	// TODO: Implement this function
	(void) s;
	(void) pattern;
	if ( strstr(s, pattern) == 0 ) {
		printf("Nu s-a gasit");
		return NULL;
	}
	
	char *prim_rec = strstr(s, pattern);
	char *del = malloc(strlen(s) + strlen(pattern));

	int nr = strstr(s, pattern) - s;
	strncpy(del, s, nr);
	strcat(del + nr, prim_rec + strlen(pattern));
	return del;
	// return NULL;
}
