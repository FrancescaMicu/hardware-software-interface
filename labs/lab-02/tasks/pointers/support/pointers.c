// SPDX-License-Identifier: BSD-3-Clause

#include <stddef.h>

#include "pointers.h"

int my_strcmp(const char *s1, const char *s2)
{
	/**
	 * TODO: implement function
	 */
	(void) s1;
	(void) s2;
	int n_s1 = strlen(s1);
	int n_s2 = strlen(s2);
	int i;
	for ( i = 0; i < n_s1 && i < n_s2; i++ ) {
		if ( *(s1 + i) < *(s2 + i) ) {
			return -1;
		}
		if ( *(s1 + i) > *(s2 + i) ) {
			return 1;
		}
	}
	
	return 0;

	// return 0x420;
}

void *my_memcpy(void *dest, const void *src, size_t n)
{
	/**
	 * TODO: implement function
	 */
	(void) dest;
	(void) src;
	(void) n;

	unsigned char *d = (unsigned char *) dest;
	const unsigned char *s = (const unsigned char *) src;

	if (s < d && d < s + n) {
		s += n;
		d += n;

		/* Copy n bytes */
		while (n--)
			*(--d) = *(--s);
	} else {
		while (n--)
			*d++ = *s++;
	}

}

char *my_strcpy(char *dest, const char *src)
{
	/**
	 * TODO: implement function
	 */
	(void) dest;
	(void) src;
	int nr = strlen(src);
	for ( int i = 0; i < nr; i++ ) {
		dest[i] = *(src + i); 
	}
	return dest;
}
